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
	<24.262978, 35.137035, 34.914532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647799, 35.137554, 35.023678>,  <24.878691, 35.137867, 35.089165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647799, 35.137554, 35.023678>,  <24.262978, 35.137035, 34.914532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647799, 35.137554, 35.023678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170444, -0.778050, 0.604638,
		0.213090, -0.628201, -0.748302,
		0.962050, 0.001298, 0.272868,
		24.936413, 35.137943, 35.105537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823591, 34.981037, 34.488972>,  <24.262978, 35.137035, 34.914532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823591, 34.981037, 34.488972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054047, 34.863598, 34.794090>,  <25.192320, 34.793133, 34.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054047, 34.863598, 34.794090>,  <24.823591, 34.981037, 34.488972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054047, 34.863598, 34.794090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445966, 0.895017, 0.007652,
		-0.684965, 0.335774, 0.646590,
		0.576139, -0.293599, 0.762800,
		25.226889, 34.775517, 35.022930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610655, 34.715389, 34.209492>,  <24.823591, 34.981037, 34.488972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610655, 34.715389, 34.209492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785433, 34.442776, 33.974682>,  <25.890301, 34.279209, 33.833797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785433, 34.442776, 33.974682>,  <25.610655, 34.715389, 34.209492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785433, 34.442776, 33.974682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853902, -0.109168, -0.508856,
		0.282717, 0.723600, -0.629661,
		0.436947, -0.681531, -0.587020,
		25.916517, 34.238316, 33.798576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998703, 35.074036, 33.779675>,  <25.610655, 34.715389, 34.209492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998703, 35.074036, 33.779675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167290, 35.089863, 33.417282>,  <26.268442, 35.099361, 33.199848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167290, 35.089863, 33.417282>,  <25.998703, 35.074036, 33.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167290, 35.089863, 33.417282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214166, -0.975130, 0.057040,
		-0.881192, -0.218070, -0.419459,
		0.421466, 0.039571, -0.905980,
		26.293730, 35.101734, 33.145489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755478, 34.516388, 33.361530>,  <25.998703, 35.074036, 33.779675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755478, 34.516388, 33.361530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124804, 34.597588, 33.231125>,  <26.346399, 34.646305, 33.152882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124804, 34.597588, 33.231125>,  <25.755478, 34.516388, 33.361530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124804, 34.597588, 33.231125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206992, -0.978078, -0.022780,
		-0.323492, -0.046449, -0.945090,
		0.923313, 0.202995, -0.326015,
		26.401798, 34.658485, 33.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837090, 34.117008, 32.742256>,  <25.755478, 34.516388, 33.361530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837090, 34.117008, 32.742256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185768, 34.176411, 32.929058>,  <26.394976, 34.212051, 33.041138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185768, 34.176411, 32.929058>,  <25.837090, 34.117008, 32.742256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185768, 34.176411, 32.929058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206191, -0.975662, -0.074623,
		0.444554, 0.161341, -0.881102,
		0.871698, 0.148502, 0.467001,
		26.447277, 34.220963, 33.069157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372568, 33.814831, 32.312111>,  <25.837090, 34.117008, 32.742256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372568, 33.814831, 32.312111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495367, 33.824825, 32.692665>,  <26.569046, 33.830822, 32.920998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495367, 33.824825, 32.692665>,  <26.372568, 33.814831, 32.312111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495367, 33.824825, 32.692665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333815, -0.938973, -0.083056,
		0.891247, 0.343083, -0.296602,
		0.306996, 0.024987, 0.951382,
		26.587465, 33.832321, 32.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070238, 33.541149, 32.417976>,  <26.372568, 33.814831, 32.312111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070238, 33.541149, 32.417976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871738, 33.510372, 32.763882>,  <26.752640, 33.491905, 32.971424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871738, 33.510372, 32.763882>,  <27.070238, 33.541149, 32.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871738, 33.510372, 32.763882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149404, -0.988774, -0.002237,
		0.855229, 0.128090, 0.502172,
		-0.496248, -0.076940, 0.864765,
		26.722864, 33.487289, 33.023312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434780, 33.007553, 32.742729>,  <27.070238, 33.541149, 32.417976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434780, 33.007553, 32.742729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072332, 33.022980, 32.911232>,  <26.854864, 33.032234, 33.012333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072332, 33.022980, 32.911232>,  <27.434780, 33.007553, 32.742729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072332, 33.022980, 32.911232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000968, -0.996022, 0.089105,
		0.423021, 0.080332, 0.902552,
		-0.906119, 0.038567, 0.421260,
		26.800497, 33.034550, 33.037609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508242, 32.550270, 33.200581>,  <27.434780, 33.007553, 32.742729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508242, 32.550270, 33.200581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111586, 32.586704, 33.164028>,  <26.873592, 32.608562, 33.142097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111586, 32.586704, 33.164028>,  <27.508242, 32.550270, 33.200581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111586, 32.586704, 33.164028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096123, -0.993992, 0.052347,
		-0.086059, 0.060693, 0.994440,
		-0.991642, 0.091083, -0.091376,
		26.814093, 32.614029, 33.136616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200504, 32.066322, 33.769459>,  <27.508242, 32.550270, 33.200581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200504, 32.066322, 33.769459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935942, 32.145123, 33.479980>,  <26.777205, 32.192402, 33.306293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935942, 32.145123, 33.479980>,  <27.200504, 32.066322, 33.769459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935942, 32.145123, 33.479980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116607, -0.980165, -0.160251,
		-0.740909, -0.021603, 0.671258,
		-0.661405, 0.197005, -0.723694,
		26.737520, 32.204224, 33.262871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513863, 31.733835, 34.016644>,  <27.200504, 32.066322, 33.769459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513863, 31.733835, 34.016644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446932, 31.791832, 33.626572>,  <26.406773, 31.826630, 33.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446932, 31.791832, 33.626572>,  <26.513863, 31.733835, 34.016644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446932, 31.791832, 33.626572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426466, -0.902444, -0.061003,
		-0.888891, 0.405674, 0.212839,
		-0.167328, 0.144994, -0.975181,
		26.396732, 31.835331, 33.334019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715225, 31.499760, 33.845657>,  <26.513863, 31.733835, 34.016644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715225, 31.499760, 33.845657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971037, 31.475788, 33.539085>,  <26.124523, 31.461405, 33.355141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971037, 31.475788, 33.539085>,  <25.715225, 31.499760, 33.845657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971037, 31.475788, 33.539085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362352, -0.902766, -0.231764,
		-0.678016, 0.425936, -0.599059,
		0.639527, -0.059931, -0.766429,
		26.162895, 31.457809, 33.309158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327389, 31.204353, 33.348083>,  <25.715225, 31.499760, 33.845657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327389, 31.204353, 33.348083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697760, 31.129328, 33.216949>,  <25.919983, 31.084312, 33.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697760, 31.129328, 33.216949>,  <25.327389, 31.204353, 33.348083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697760, 31.129328, 33.216949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270144, -0.935493, -0.227761,
		-0.263968, 0.299454, -0.916868,
		0.925928, -0.187565, -0.327836,
		25.975538, 31.073059, 33.118599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325464, 30.815712, 32.757046>,  <25.327389, 31.204353, 33.348083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325464, 30.815712, 32.757046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700912, 30.751741, 32.879299>,  <25.926182, 30.713360, 32.952652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700912, 30.751741, 32.879299>,  <25.325464, 30.815712, 32.757046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700912, 30.751741, 32.879299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095922, -0.972097, -0.214071,
		0.331345, 0.171614, -0.927771,
		0.938621, -0.159925, 0.305638,
		25.982498, 30.703764, 32.970989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669344, 30.459980, 32.156940>,  <25.325464, 30.815712, 32.757046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669344, 30.459980, 32.156940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883425, 30.396370, 32.488789>,  <26.011873, 30.358204, 32.687897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883425, 30.396370, 32.488789>,  <25.669344, 30.459980, 32.156940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883425, 30.396370, 32.488789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038912, -0.976436, -0.212271,
		0.843828, 0.145889, -0.516401,
		0.535201, -0.159026, 0.829621,
		26.043985, 30.348661, 32.737675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075886, 29.940956, 31.947838>,  <25.669344, 30.459980, 32.156940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075886, 29.940956, 31.947838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090086, 29.914795, 32.346729>,  <26.098606, 29.899097, 32.586063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090086, 29.914795, 32.346729>,  <26.075886, 29.940956, 31.947838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090086, 29.914795, 32.346729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035757, -0.997134, -0.066670,
		0.998730, 0.038025, -0.033063,
		0.035503, -0.065403, 0.997227,
		26.100737, 29.895174, 32.645897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.713596, 29.512894, 32.058899>,  <26.075886, 29.940956, 31.947838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.713596, 29.512894, 32.058899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454529, 29.505995, 32.363590>,  <26.299088, 29.501856, 32.546406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454529, 29.505995, 32.363590>,  <26.713596, 29.512894, 32.058899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454529, 29.505995, 32.363590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024937, -0.999688, -0.001435,
		0.761513, 0.018066, 0.647898,
		-0.647670, -0.017249, 0.761726,
		26.260227, 29.500820, 32.592110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919416, 29.004492, 32.474926>,  <26.713596, 29.512894, 32.058899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919416, 29.004492, 32.474926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541931, 29.024836, 32.605659>,  <26.315439, 29.037043, 32.684101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541931, 29.024836, 32.605659>,  <26.919416, 29.004492, 32.474926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541931, 29.024836, 32.605659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030468, -0.997273, 0.067213,
		0.329360, 0.053472, 0.942689,
		-0.943713, 0.050859, 0.326833,
		26.258818, 29.040092, 32.703709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845961, 28.472219, 33.075321>,  <26.919416, 29.004492, 32.474926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845961, 28.472219, 33.075321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467470, 28.570782, 32.991470>,  <26.240376, 28.629919, 32.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467470, 28.570782, 32.991470>,  <26.845961, 28.472219, 33.075321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467470, 28.570782, 32.991470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294757, -0.923708, 0.244706,
		-0.133337, 0.293336, 0.946665,
		-0.946224, 0.246408, -0.209628,
		26.183603, 28.644705, 32.928581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319328, 28.264772, 33.650082>,  <26.845961, 28.472219, 33.075321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319328, 28.264772, 33.650082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132244, 28.292141, 33.297588>,  <26.019993, 28.308561, 33.086094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132244, 28.292141, 33.297588>,  <26.319328, 28.264772, 33.650082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132244, 28.292141, 33.297588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503951, -0.839714, 0.202273,
		-0.726140, 0.538701, 0.427225,
		-0.467712, 0.068422, -0.881229,
		25.991930, 28.312668, 33.033218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568291, 28.186228, 33.745697>,  <26.319328, 28.264772, 33.650082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568291, 28.186228, 33.745697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613579, 28.115007, 33.354702>,  <25.640753, 28.072275, 33.120106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613579, 28.115007, 33.354702>,  <25.568291, 28.186228, 33.745697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613579, 28.115007, 33.354702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686703, -0.725037, 0.052527,
		-0.718066, 0.665295, -0.204360,
		0.113222, -0.178053, -0.977486,
		25.647545, 28.061592, 33.061455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935984, 28.056053, 33.520222>,  <25.568291, 28.186228, 33.745697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935984, 28.056053, 33.520222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160814, 27.888578, 33.234909>,  <25.295713, 27.788094, 33.063721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160814, 27.888578, 33.234909>,  <24.935984, 28.056053, 33.520222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160814, 27.888578, 33.234909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693099, -0.709026, -0.129983,
		-0.451313, 0.567435, -0.688719,
		0.562077, -0.418688, -0.713281,
		25.329437, 27.762972, 33.020924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437731, 27.828634, 32.935867>,  <24.935984, 28.056053, 33.520222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437731, 27.828634, 32.935867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774076, 27.612530, 32.948959>,  <24.975883, 27.482868, 32.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774076, 27.612530, 32.948959>,  <24.437731, 27.828634, 32.935867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774076, 27.612530, 32.948959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540139, -0.833731, 0.114638,
		-0.034650, -0.114071, -0.992868,
		0.840862, -0.540259, 0.032726,
		25.026335, 27.450453, 32.958778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.263309, 27.195557, 32.511303>,  <24.437731, 27.828634, 32.935867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.263309, 27.195557, 32.511303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563232, 27.141869, 32.770462>,  <24.743187, 27.109655, 32.925957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563232, 27.141869, 32.770462>,  <24.263309, 27.195557, 32.511303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563232, 27.141869, 32.770462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196627, -0.980172, 0.024498,
		0.631763, -0.145763, -0.761333,
		0.749809, -0.134222, 0.647898,
		24.788176, 27.101603, 32.964832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780220, 26.648989, 32.313831>,  <24.263309, 27.195557, 32.511303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780220, 26.648989, 32.313831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802567, 26.701101, 32.709793>,  <24.815973, 26.732368, 32.947369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802567, 26.701101, 32.709793>,  <24.780220, 26.648989, 32.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802567, 26.701101, 32.709793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075349, -0.988073, 0.134293,
		0.995591, -0.082091, -0.045382,
		0.055865, 0.130281, 0.989902,
		24.819326, 26.740185, 33.006763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.427158, 26.209106, 32.622612>,  <24.780220, 26.648989, 32.313831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.427158, 26.209106, 32.622612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120502, 26.267960, 32.872608>,  <24.936508, 26.303272, 33.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120502, 26.267960, 32.872608>,  <25.427158, 26.209106, 32.622612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120502, 26.267960, 32.872608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140127, -0.911585, 0.386492,
		0.626598, 0.383879, 0.678241,
		-0.766641, 0.147135, 0.624990,
		24.890511, 26.312099, 33.060104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633690, 26.062996, 33.356075>,  <25.427158, 26.209106, 32.622612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633690, 26.062996, 33.356075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260843, 25.973324, 33.242306>,  <25.037134, 25.919521, 33.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.260843, 25.973324, 33.242306>,  <25.633690, 26.062996, 33.356075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.260843, 25.973324, 33.242306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181870, -0.968923, 0.167663,
		-0.313175, 0.104553, 0.943923,
		-0.932118, -0.224179, -0.284427,
		24.981207, 25.906071, 33.156979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.666430, 25.686447, 34.022724>,  <25.633690, 26.062996, 33.356075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.666430, 25.686447, 34.022724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431795, 25.378761, 34.124092>,  <25.291014, 25.194149, 34.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431795, 25.378761, 34.124092>,  <25.666430, 25.686447, 34.022724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431795, 25.378761, 34.124092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641460, -0.250243, 0.725195,
		-0.494414, 0.587951, 0.640210,
		-0.586587, -0.769215, 0.253424,
		25.255819, 25.147997, 34.200119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.359016, 25.781679, 34.613911>,  <25.666430, 25.686447, 34.022724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.359016, 25.781679, 34.613911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468121, 25.412518, 34.505207>,  <25.533583, 25.191021, 34.439987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468121, 25.412518, 34.505207>,  <25.359016, 25.781679, 34.613911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468121, 25.412518, 34.505207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571257, -0.071922, 0.817614,
		-0.774124, -0.378255, 0.507598,
		0.272759, -0.922904, -0.271757,
		25.549948, 25.135647, 34.423679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529352, 25.715111, 35.396412>,  <25.359016, 25.781679, 34.613911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529352, 25.715111, 35.396412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915440, 25.802563, 35.339069>,  <26.147093, 25.855034, 35.304665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915440, 25.802563, 35.339069>,  <25.529352, 25.715111, 35.396412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915440, 25.802563, 35.339069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009346, -0.519124, -0.854648,
		-0.261271, 0.826263, -0.499026,
		0.965220, 0.218631, -0.143354,
		26.205006, 25.868153, 35.296062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070421, 25.221346, 35.307468>,  <25.529352, 25.715111, 35.396412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070421, 25.221346, 35.307468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124834, 25.123297, 35.691429>,  <26.157482, 25.064466, 35.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.124834, 25.123297, 35.691429>,  <26.070421, 25.221346, 35.307468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.124834, 25.123297, 35.691429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990694, -0.038173, 0.130647,
		0.004617, -0.968740, -0.248037,
		0.136031, -0.245125, 0.959900,
		26.165644, 25.049759, 35.979401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301521, 24.620798, 35.624939>,  <26.070421, 25.221346, 35.307468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301521, 24.620798, 35.624939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618391, 24.440414, 35.789425>,  <26.808514, 24.332184, 35.888119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618391, 24.440414, 35.789425>,  <26.301521, 24.620798, 35.624939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618391, 24.440414, 35.789425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599073, 0.703206, -0.382899,
		-0.116499, 0.549671, 0.827218,
		0.792174, -0.450957, 0.411216,
		26.856043, 24.305128, 35.912788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773355, 25.151464, 35.962063>,  <26.301521, 24.620798, 35.624939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773355, 25.151464, 35.962063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030924, 24.850161, 35.908447>,  <27.185465, 24.669378, 35.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030924, 24.850161, 35.908447>,  <26.773355, 25.151464, 35.962063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030924, 24.850161, 35.908447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752947, 0.654991, -0.063701,
		0.135778, -0.059907, 0.988926,
		0.643922, -0.753258, -0.134040,
		27.224100, 24.624184, 35.868237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216175, 25.056219, 36.524624>,  <26.773355, 25.151464, 35.962063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216175, 25.056219, 36.524624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422392, 24.961285, 36.195290>,  <27.546122, 24.904324, 35.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422392, 24.961285, 36.195290>,  <27.216175, 25.056219, 36.524624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422392, 24.961285, 36.195290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545551, 0.831871, 0.101806,
		0.660749, -0.501659, 0.558345,
		0.515543, -0.237337, -0.823339,
		27.577055, 24.890083, 35.948288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962751, 25.043997, 36.735424>,  <27.216175, 25.056219, 36.524624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962751, 25.043997, 36.735424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874434, 25.156076, 36.361744>,  <27.821442, 25.223324, 36.137535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874434, 25.156076, 36.361744>,  <27.962751, 25.043997, 36.735424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874434, 25.156076, 36.361744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440515, 0.883228, 0.160798,
		0.870170, -0.376027, -0.318446,
		-0.220796, 0.280201, -0.934204,
		27.808195, 25.240137, 36.081482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522875, 25.493811, 36.417156>,  <27.962751, 25.043997, 36.735424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522875, 25.493811, 36.417156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204205, 25.603815, 36.201870>,  <28.013002, 25.669817, 36.072697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204205, 25.603815, 36.201870>,  <28.522875, 25.493811, 36.417156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204205, 25.603815, 36.201870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369449, 0.926337, -0.073539,
		0.478344, -0.257430, -0.839593,
		-0.796677, 0.275010, -0.538215,
		27.965202, 25.686317, 36.040405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870497, 25.942442, 36.008656>,  <28.522875, 25.493811, 36.417156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870497, 25.942442, 36.008656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479008, 26.023829, 35.998035>,  <28.244114, 26.072660, 35.991661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479008, 26.023829, 35.998035>,  <28.870497, 25.942442, 36.008656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479008, 26.023829, 35.998035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203072, 0.979019, 0.016866,
		0.029426, 0.011115, -0.999505,
		-0.978721, 0.203468, -0.026552,
		28.185390, 26.084869, 35.990070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810951, 26.513029, 35.610874>,  <28.870497, 25.942442, 36.008656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810951, 26.513029, 35.610874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463665, 26.525328, 35.808968>,  <28.255293, 26.532707, 35.927826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463665, 26.525328, 35.808968>,  <28.810951, 26.513029, 35.610874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463665, 26.525328, 35.808968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098275, 0.988961, 0.110892,
		-0.486360, 0.144947, -0.861652,
		-0.868214, 0.030746, 0.495236,
		28.203201, 26.534552, 35.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477728, 27.047800, 35.269161>,  <28.810951, 26.513029, 35.610874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477728, 27.047800, 35.269161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311831, 26.990963, 35.628670>,  <28.212292, 26.956861, 35.844376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311831, 26.990963, 35.628670>,  <28.477728, 27.047800, 35.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311831, 26.990963, 35.628670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045117, 0.989729, 0.135652,
		-0.908818, 0.015711, -0.416896,
		-0.414745, -0.142093, 0.898775,
		28.187407, 26.948336, 35.898304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910772, 27.493364, 35.194908>,  <28.477728, 27.047800, 35.269161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910772, 27.493364, 35.194908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980257, 27.426586, 35.583126>,  <28.021948, 27.386518, 35.816055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980257, 27.426586, 35.583126>,  <27.910772, 27.493364, 35.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980257, 27.426586, 35.583126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176870, 0.964212, 0.197516,
		-0.968784, -0.205971, 0.137966,
		0.173711, -0.166948, 0.970543,
		28.032370, 27.376501, 35.874290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475153, 27.883051, 35.517155>,  <27.910772, 27.493364, 35.194908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475153, 27.883051, 35.517155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742880, 27.843136, 35.811653>,  <27.903517, 27.819187, 35.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742880, 27.843136, 35.811653>,  <27.475153, 27.883051, 35.517155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742880, 27.843136, 35.811653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034822, 0.985638, 0.165243,
		-0.742159, -0.136238, 0.656231,
		0.669319, -0.099786, 0.736244,
		27.943676, 27.813200, 36.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190962, 28.142061, 36.078457>,  <27.475153, 27.883051, 35.517155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190962, 28.142061, 36.078457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588331, 28.172173, 36.112972>,  <27.826752, 28.190239, 36.133682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588331, 28.172173, 36.112972>,  <27.190962, 28.142061, 36.078457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588331, 28.172173, 36.112972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091169, 0.975905, 0.198238,
		-0.069283, -0.204801, 0.976349,
		0.993422, 0.075278, 0.086285,
		27.886358, 28.194756, 36.138859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333019, 28.726055, 36.642330>,  <27.190962, 28.142061, 36.078457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333019, 28.726055, 36.642330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696161, 28.691765, 36.478161>,  <27.914047, 28.671190, 36.379658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696161, 28.691765, 36.478161>,  <27.333019, 28.726055, 36.642330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696161, 28.691765, 36.478161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128421, 0.988682, 0.077559,
		0.399133, -0.123119, 0.908589,
		0.907855, -0.085726, -0.410427,
		27.968517, 28.666048, 36.355034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719309, 29.137974, 37.066254>,  <27.333019, 28.726055, 36.642330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719309, 29.137974, 37.066254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928530, 29.078041, 36.730640>,  <28.054062, 29.042082, 36.529274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928530, 29.078041, 36.730640>,  <27.719309, 29.137974, 37.066254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928530, 29.078041, 36.730640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292995, 0.956040, 0.011924,
		0.800358, -0.252068, 0.543957,
		0.523050, -0.149833, -0.839028,
		28.085445, 29.033091, 36.478931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355173, 29.601669, 37.146667>,  <27.719309, 29.137974, 37.066254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355173, 29.601669, 37.146667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347794, 29.544971, 36.750774>,  <28.343367, 29.510952, 36.513237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347794, 29.544971, 36.750774>,  <28.355173, 29.601669, 37.146667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347794, 29.544971, 36.750774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130065, 0.981148, -0.142939,
		0.991334, -0.131366, 0.000335,
		-0.018449, -0.141744, -0.989731,
		28.342258, 29.502449, 36.453854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932314, 30.032871, 36.782944>,  <28.355173, 29.601669, 37.146667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932314, 30.032871, 36.782944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731279, 29.926765, 36.453812>,  <28.610659, 29.863102, 36.256332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731279, 29.926765, 36.453812>,  <28.932314, 30.032871, 36.782944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731279, 29.926765, 36.453812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253070, 0.864932, -0.433414,
		0.826657, -0.426060, -0.367574,
		-0.502587, -0.265263, -0.822826,
		28.580503, 29.847187, 36.206963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401903, 30.025234, 36.211624>,  <28.932314, 30.032871, 36.782944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401903, 30.025234, 36.211624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036829, 30.103796, 36.068275>,  <28.817783, 30.150934, 35.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036829, 30.103796, 36.068275>,  <29.401903, 30.025234, 36.211624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036829, 30.103796, 36.068275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343421, 0.843947, -0.412086,
		0.221508, -0.499177, -0.837709,
		-0.912686, 0.196407, -0.358369,
		28.763023, 30.162718, 35.960766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368422, 30.229210, 35.473633>,  <29.401903, 30.025234, 36.211624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368422, 30.229210, 35.473633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068007, 30.387510, 35.685040>,  <28.887758, 30.482491, 35.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068007, 30.387510, 35.685040>,  <29.368422, 30.229210, 35.473633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068007, 30.387510, 35.685040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197719, 0.898532, -0.391853,
		-0.629961, -0.189799, -0.753078,
		-0.751037, 0.395749, 0.528513,
		28.842695, 30.506235, 35.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199825, 30.605305, 34.814938>,  <29.368422, 30.229210, 35.473633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199825, 30.605305, 34.814938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945410, 30.735891, 35.094616>,  <28.792761, 30.814243, 35.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.945410, 30.735891, 35.094616>,  <29.199825, 30.605305, 34.814938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945410, 30.735891, 35.094616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086238, 0.930494, -0.356012,
		-0.766825, -0.166139, -0.619982,
		-0.636037, 0.326464, 0.699198,
		28.754599, 30.833830, 35.304375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876032, 31.098373, 34.414795>,  <29.199825, 30.605305, 34.814938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876032, 31.098373, 34.414795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769056, 31.208836, 34.784058>,  <28.704870, 31.275114, 35.005615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769056, 31.208836, 34.784058>,  <28.876032, 31.098373, 34.414795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769056, 31.208836, 34.784058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151979, 0.933971, -0.323421,
		-0.951514, -0.226795, -0.207811,
		-0.267439, 0.276157, 0.923154,
		28.688824, 31.291683, 35.061005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175329, 31.424183, 34.428410>,  <28.876032, 31.098373, 34.414795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175329, 31.424183, 34.428410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360682, 31.541765, 34.762802>,  <28.471893, 31.612314, 34.963440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360682, 31.541765, 34.762802>,  <28.175329, 31.424183, 34.428410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360682, 31.541765, 34.762802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161518, 0.955592, -0.246486,
		-0.871315, -0.020810, 0.490283,
		0.463381, 0.293957, 0.835983,
		28.499695, 31.629951, 35.013596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713436, 31.959387, 34.721077>,  <28.175329, 31.424183, 34.428410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713436, 31.959387, 34.721077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092051, 32.003952, 34.842178>,  <28.319220, 32.030693, 34.914837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092051, 32.003952, 34.842178>,  <27.713436, 31.959387, 34.721077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092051, 32.003952, 34.842178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068610, 0.986523, -0.148543,
		-0.315219, 0.119829, 0.941423,
		0.946536, 0.111414, 0.302750,
		28.376011, 32.037376, 34.933002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711937, 32.357948, 35.326984>,  <27.713436, 31.959387, 34.721077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711937, 32.357948, 35.326984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069792, 32.399277, 35.153111>,  <28.284504, 32.424072, 35.048786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069792, 32.399277, 35.153111>,  <27.711937, 32.357948, 35.326984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069792, 32.399277, 35.153111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066770, 0.992887, 0.098570,
		0.441780, -0.059160, 0.895171,
		0.894635, 0.103317, -0.434687,
		28.338182, 32.430271, 35.022705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718426, 33.002872, 35.530399>,  <27.711937, 32.357948, 35.326984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718426, 33.002872, 35.530399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004427, 32.925571, 35.261646>,  <28.176027, 32.879192, 35.100395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004427, 32.925571, 35.261646>,  <27.718426, 33.002872, 35.530399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004427, 32.925571, 35.261646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083192, 0.930691, -0.356220,
		0.694155, 0.310594, 0.649369,
		0.715002, -0.193250, -0.671883,
		28.218927, 32.867596, 35.060081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131998, 33.618877, 35.644421>,  <27.718426, 33.002872, 35.530399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131998, 33.618877, 35.644421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200325, 33.445370, 35.290546>,  <28.241322, 33.341267, 35.078220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200325, 33.445370, 35.290546>,  <28.131998, 33.618877, 35.644421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200325, 33.445370, 35.290546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041863, 0.900265, -0.433324,
		0.984413, 0.036984, 0.171940,
		0.170818, -0.433768, -0.884685,
		28.251570, 33.315239, 35.025143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781038, 33.930969, 35.333389>,  <28.131998, 33.618877, 35.644421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781038, 33.930969, 35.333389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553724, 33.773903, 35.044151>,  <28.417336, 33.679661, 34.870609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553724, 33.773903, 35.044151>,  <28.781038, 33.930969, 35.333389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553724, 33.773903, 35.044151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060394, 0.896321, -0.439273,
		0.820612, -0.205962, -0.533081,
		-0.568286, -0.392668, -0.723093,
		28.383238, 33.656101, 34.827225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052629, 34.090767, 34.619392>,  <28.781038, 33.930969, 35.333389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052629, 34.090767, 34.619392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656445, 34.036411, 34.610264>,  <28.418734, 34.003799, 34.604786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656445, 34.036411, 34.610264>,  <29.052629, 34.090767, 34.619392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656445, 34.036411, 34.610264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096313, 0.801201, -0.590594,
		0.098538, -0.582763, -0.806646,
		-0.990462, -0.135886, -0.022821,
		28.359306, 33.995644, 34.603416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674276, 34.559429, 34.560867>,  <29.052629, 34.090767, 34.619392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674276, 34.559429, 34.560867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791975, 34.177319, 34.572670>,  <29.862595, 33.948051, 34.579754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791975, 34.177319, 34.572670>,  <29.674276, 34.559429, 34.560867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791975, 34.177319, 34.572670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322332, 0.070122, -0.944026,
		0.899734, 0.287287, 0.328549,
		0.294245, -0.955274, 0.029511,
		29.880249, 33.890736, 34.581524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159864, 34.646843, 34.148495>,  <29.674276, 34.559429, 34.560867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159864, 34.646843, 34.148495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114559, 34.249702, 34.163593>,  <30.087376, 34.011417, 34.172653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114559, 34.249702, 34.163593>,  <30.159864, 34.646843, 34.148495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114559, 34.249702, 34.163593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688255, -0.105799, -0.717713,
		0.716573, -0.055313, 0.695315,
		-0.113262, -0.992848, 0.037743,
		30.080580, 33.951847, 34.174915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811520, 34.958973, 34.240082>,  <30.159864, 34.646843, 34.148495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811520, 34.958973, 34.240082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561790, 35.258572, 34.328827>,  <30.411953, 35.438332, 34.382072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561790, 35.258572, 34.328827>,  <30.811520, 34.958973, 34.240082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561790, 35.258572, 34.328827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380912, 0.043937, 0.923566,
		0.682000, 0.661116, -0.312733,
		-0.624325, 0.748996, 0.221862,
		30.374493, 35.483269, 34.395386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187668, 35.507946, 34.522827>,  <30.811520, 34.958973, 34.240082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187668, 35.507946, 34.522827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810518, 35.544846, 34.650879>,  <30.584229, 35.566986, 34.727711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810518, 35.544846, 34.650879>,  <31.187668, 35.507946, 34.522827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810518, 35.544846, 34.650879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323521, 0.024103, 0.945914,
		0.079545, 0.995444, -0.052572,
		-0.942872, 0.092251, 0.320129,
		30.527657, 35.572521, 34.746918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134619, 36.110668, 34.859337>,  <31.187668, 35.507946, 34.522827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134619, 36.110668, 34.859337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877943, 35.832378, 34.988461>,  <30.723938, 35.665405, 35.065933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877943, 35.832378, 34.988461>,  <31.134619, 36.110668, 34.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877943, 35.832378, 34.988461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368323, 0.089643, 0.925366,
		-0.672736, 0.712694, 0.198728,
		-0.641688, -0.695724, 0.322808,
		30.685436, 35.623661, 35.085304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593094, 36.359737, 35.436626>,  <31.134619, 36.110668, 34.859337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593094, 36.359737, 35.436626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755985, 35.999905, 35.499760>,  <30.853720, 35.784004, 35.537640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755985, 35.999905, 35.499760>,  <30.593094, 36.359737, 35.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755985, 35.999905, 35.499760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185488, 0.250668, 0.950137,
		-0.894292, -0.357649, 0.268942,
		0.407230, -0.899585, 0.157831,
		30.878155, 35.730030, 35.547108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366652, 36.093266, 36.105133>,  <30.593094, 36.359737, 35.436626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366652, 36.093266, 36.105133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723515, 35.923943, 36.042053>,  <30.937632, 35.822350, 36.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723515, 35.923943, 36.042053>,  <30.366652, 36.093266, 36.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723515, 35.923943, 36.042053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344476, 0.411692, 0.843710,
		-0.292223, -0.807045, 0.513112,
		0.892156, -0.423306, -0.157702,
		30.991161, 35.796951, 35.994743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527405, 35.746098, 36.703491>,  <30.366652, 36.093266, 36.105133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527405, 35.746098, 36.703491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871553, 35.801693, 36.507351>,  <31.078043, 35.835049, 36.389668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871553, 35.801693, 36.507351>,  <30.527405, 35.746098, 36.703491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871553, 35.801693, 36.507351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418057, 0.357867, 0.834961,
		0.291526, -0.923371, 0.249796,
		0.860372, 0.138984, -0.490349,
		31.129665, 35.843388, 36.360245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084217, 35.605034, 37.234287>,  <30.527405, 35.746098, 36.703491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084217, 35.605034, 37.234287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303652, 35.798115, 36.961216>,  <31.435312, 35.913963, 36.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303652, 35.798115, 36.961216>,  <31.084217, 35.605034, 37.234287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303652, 35.798115, 36.961216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336951, 0.619629, 0.708889,
		0.765191, -0.618916, 0.177272,
		0.548586, 0.482703, -0.682679,
		31.468227, 35.942924, 36.756413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780308, 35.550404, 37.472744>,  <31.084217, 35.605034, 37.234287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780308, 35.550404, 37.472744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760960, 35.857716, 37.217430>,  <31.749352, 36.042103, 37.064243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760960, 35.857716, 37.217430>,  <31.780308, 35.550404, 37.472744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760960, 35.857716, 37.217430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446451, 0.588274, 0.674251,
		0.893500, -0.252349, -0.371454,
		-0.048370, 0.768280, -0.638284,
		31.746449, 36.088200, 37.025944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422474, 35.763710, 37.512371>,  <31.780308, 35.550404, 37.472744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422474, 35.763710, 37.512371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180378, 36.053768, 37.381008>,  <32.035122, 36.227802, 37.302189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180378, 36.053768, 37.381008>,  <32.422474, 35.763710, 37.512371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180378, 36.053768, 37.381008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451240, 0.652389, 0.608910,
		0.655797, 0.220345, -0.722065,
		-0.605238, 0.725146, -0.328406,
		31.998806, 36.271313, 37.282486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828758, 36.372314, 37.505409>,  <32.422474, 35.763710, 37.512371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828758, 36.372314, 37.505409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447338, 36.492783, 37.507668>,  <32.218487, 36.565063, 37.509022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447338, 36.492783, 37.507668>,  <32.828758, 36.372314, 37.505409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447338, 36.492783, 37.507668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207728, 0.643905, 0.736367,
		0.218134, 0.703339, -0.676559,
		-0.953555, 0.301167, 0.005646,
		32.161270, 36.583134, 37.509361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897770, 37.004421, 37.456318>,  <32.828758, 36.372314, 37.505409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897770, 37.004421, 37.456318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527847, 36.961868, 37.602425>,  <32.305893, 36.936337, 37.690090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527847, 36.961868, 37.602425>,  <32.897770, 37.004421, 37.456318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527847, 36.961868, 37.602425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239645, 0.582792, 0.776482,
		-0.295475, 0.805628, -0.513475,
		-0.924805, -0.106379, 0.365265,
		32.250404, 36.929955, 37.712006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509010, 37.674511, 37.490810>,  <32.897770, 37.004421, 37.456318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509010, 37.674511, 37.490810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348873, 37.431625, 37.765331>,  <32.252789, 37.285892, 37.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348873, 37.431625, 37.765331>,  <32.509010, 37.674511, 37.490810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348873, 37.431625, 37.765331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304008, 0.618519, 0.724578,
		-0.864467, 0.498724, -0.063023,
		-0.400345, -0.607214, 0.686305,
		32.228771, 37.249462, 37.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393517, 38.108147, 37.938503>,  <32.509010, 37.674511, 37.490810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393517, 38.108147, 37.938503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312233, 37.780025, 38.152348>,  <32.263462, 37.583153, 38.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312233, 37.780025, 38.152348>,  <32.393517, 38.108147, 37.938503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312233, 37.780025, 38.152348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328231, 0.457335, 0.826504,
		-0.922481, 0.343428, 0.176315,
		-0.203209, -0.820306, 0.534606,
		32.251270, 37.533936, 38.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944101, 38.330704, 38.473316>,  <32.393517, 38.108147, 37.938503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944101, 38.330704, 38.473316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102596, 37.984745, 38.596573>,  <32.197693, 37.777168, 38.670528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102596, 37.984745, 38.596573>,  <31.944101, 38.330704, 38.473316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102596, 37.984745, 38.596573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144857, 0.390298, 0.909222,
		-0.906650, -0.315630, 0.279936,
		0.396236, -0.864896, 0.308142,
		32.221466, 37.725277, 38.689014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655600, 38.232628, 39.152229>,  <31.944101, 38.330704, 38.473316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655600, 38.232628, 39.152229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983389, 38.004658, 39.128067>,  <32.180061, 37.867878, 39.113571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983389, 38.004658, 39.128067>,  <31.655600, 38.232628, 39.152229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983389, 38.004658, 39.128067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224999, 0.222994, 0.948499,
		-0.527102, -0.790861, 0.310970,
		0.819475, -0.569923, -0.060403,
		32.229233, 37.833679, 39.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568810, 37.854805, 39.756298>,  <31.655600, 38.232628, 39.152229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568810, 37.854805, 39.756298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951813, 37.855286, 39.640938>,  <32.181614, 37.855572, 39.571724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951813, 37.855286, 39.640938>,  <31.568810, 37.854805, 39.756298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951813, 37.855286, 39.640938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286545, -0.117245, 0.950866,
		-0.032671, -0.993102, -0.112607,
		0.957510, 0.001201, -0.288399,
		32.239067, 37.855644, 39.554417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858402, 37.264637, 40.000622>,  <31.568810, 37.854805, 39.756298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858402, 37.264637, 40.000622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140060, 37.545269, 39.956860>,  <32.309055, 37.713646, 39.930603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140060, 37.545269, 39.956860>,  <31.858402, 37.264637, 40.000622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140060, 37.545269, 39.956860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381828, -0.244219, 0.891383,
		0.598654, -0.669438, -0.439847,
		0.704145, 0.701577, -0.109408,
		32.351303, 37.755741, 39.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552258, 36.986767, 40.179420>,  <31.858402, 37.264637, 40.000622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552258, 36.986767, 40.179420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570786, 37.382111, 40.237373>,  <32.581902, 37.619316, 40.272144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570786, 37.382111, 40.237373>,  <32.552258, 36.986767, 40.179420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570786, 37.382111, 40.237373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455781, -0.149972, 0.877366,
		0.888886, 0.025394, -0.457425,
		0.046321, 0.988364, 0.144882,
		32.584682, 37.678619, 40.280838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140930, 37.022469, 40.589588>,  <32.552258, 36.986767, 40.179420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140930, 37.022469, 40.589588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946426, 37.367260, 40.646923>,  <32.829723, 37.574135, 40.681324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946426, 37.367260, 40.646923>,  <33.140930, 37.022469, 40.589588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946426, 37.367260, 40.646923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201451, -0.049033, 0.978270,
		0.850276, 0.504569, -0.149804,
		-0.486260, 0.861978, 0.143338,
		32.800549, 37.625854, 40.689926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544662, 37.384594, 41.019882>,  <33.140930, 37.022469, 40.589588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544662, 37.384594, 41.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161087, 37.491722, 41.057224>,  <32.930943, 37.556000, 41.079628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161087, 37.491722, 41.057224>,  <33.544662, 37.384594, 41.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161087, 37.491722, 41.057224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128957, 0.118555, 0.984538,
		0.252610, 0.956147, -0.148223,
		-0.958936, 0.267819, 0.093354,
		32.873405, 37.572067, 41.085232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576748, 37.843094, 41.493271>,  <33.544662, 37.384594, 41.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576748, 37.843094, 41.493271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182564, 37.780693, 41.520206>,  <32.946053, 37.743252, 41.536369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182564, 37.780693, 41.520206>,  <33.576748, 37.843094, 41.493271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182564, 37.780693, 41.520206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042189, 0.159278, 0.986332,
		-0.164596, 0.974830, -0.150380,
		-0.985458, -0.156002, 0.067343,
		32.886925, 37.733891, 41.540409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437756, 38.325356, 41.904045>,  <33.576748, 37.843094, 41.493271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437756, 38.325356, 41.904045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145226, 38.052940, 41.918701>,  <32.969707, 37.889488, 41.927494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145226, 38.052940, 41.918701>,  <33.437756, 38.325356, 41.904045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145226, 38.052940, 41.918701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008292, 0.062600, 0.998004,
		-0.681977, 0.729563, -0.051428,
		-0.731326, -0.681043, 0.036642,
		32.925827, 37.848629, 41.929695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811028, 38.605206, 42.480793>,  <33.437756, 38.325356, 41.904045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811028, 38.605206, 42.480793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765587, 38.213745, 42.412273>,  <32.738323, 37.978870, 42.371162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765587, 38.213745, 42.412273>,  <32.811028, 38.605206, 42.480793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765587, 38.213745, 42.412273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286761, -0.132782, 0.948756,
		-0.951242, 0.156908, -0.265553,
		-0.113607, -0.978646, -0.171303,
		32.731506, 37.920151, 42.360882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223545, 38.386795, 42.802685>,  <32.811028, 38.605206, 42.480793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223545, 38.386795, 42.802685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387539, 38.022560, 42.781731>,  <32.485935, 37.804020, 42.769157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387539, 38.022560, 42.781731>,  <32.223545, 38.386795, 42.802685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387539, 38.022560, 42.781731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107316, -0.105197, 0.988644,
		-0.905756, -0.399708, -0.140850,
		0.409986, -0.910586, -0.052388,
		32.510536, 37.749386, 42.766014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965668, 38.062618, 43.335457>,  <32.223545, 38.386795, 42.802685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965668, 38.062618, 43.335457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253914, 37.800243, 43.245598>,  <32.426861, 37.642818, 43.191681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253914, 37.800243, 43.245598>,  <31.965668, 38.062618, 43.335457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253914, 37.800243, 43.245598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008149, -0.315974, 0.948733,
		-0.693290, -0.685500, -0.222350,
		0.720613, -0.655935, -0.224647,
		32.470097, 37.603462, 43.178204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766068, 37.415855, 43.524288>,  <31.965668, 38.062618, 43.335457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766068, 37.415855, 43.524288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165699, 37.411434, 43.507694>,  <32.405479, 37.408783, 43.497738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165699, 37.411434, 43.507694>,  <31.766068, 37.415855, 43.524288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165699, 37.411434, 43.507694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039571, -0.137695, 0.989684,
		-0.016646, -0.990413, -0.137131,
		0.999078, -0.011048, -0.041483,
		32.465424, 37.408119, 43.495251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944622, 36.895020, 43.942562>,  <31.766068, 37.415855, 43.524288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944622, 36.895020, 43.942562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270855, 37.123219, 43.903873>,  <32.466595, 37.260139, 43.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270855, 37.123219, 43.903873>,  <31.944622, 36.895020, 43.942562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270855, 37.123219, 43.903873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207739, -0.132668, 0.969146,
		0.540067, -0.810511, -0.226717,
		0.815581, 0.570501, -0.096725,
		32.515530, 37.294369, 43.874855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303459, 36.684856, 44.494987>,  <31.944622, 36.895020, 43.942562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303459, 36.684856, 44.494987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493286, 37.021969, 44.393402>,  <32.607182, 37.224236, 44.332451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493286, 37.021969, 44.393402>,  <32.303459, 36.684856, 44.494987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493286, 37.021969, 44.393402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117818, 0.225104, 0.967185,
		0.872296, -0.488920, 0.007533,
		0.474572, 0.842785, -0.253961,
		32.635658, 37.274803, 44.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860474, 36.642281, 44.879208>,  <32.303459, 36.684856, 44.494987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860474, 36.642281, 44.879208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841236, 37.030903, 44.786453>,  <32.829693, 37.264076, 44.730801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841236, 37.030903, 44.786453>,  <32.860474, 36.642281, 44.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841236, 37.030903, 44.786453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122304, 0.236139, 0.963992,
		0.991327, 0.018000, -0.130182,
		-0.048093, 0.971552, -0.231889,
		32.826809, 37.322369, 44.716885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425499, 36.905792, 45.277763>,  <32.860474, 36.642281, 44.879208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425499, 36.905792, 45.277763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187080, 37.214493, 45.189106>,  <33.044029, 37.399715, 45.135914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187080, 37.214493, 45.189106>,  <33.425499, 36.905792, 45.277763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187080, 37.214493, 45.189106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029501, 0.296893, 0.954455,
		0.802410, 0.562359, -0.199729,
		-0.596044, 0.771756, -0.221640,
		33.008266, 37.446018, 45.122616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770092, 37.514622, 45.616970>,  <33.425499, 36.905792, 45.277763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770092, 37.514622, 45.616970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407761, 37.671871, 45.553822>,  <33.190361, 37.766220, 45.515934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407761, 37.671871, 45.553822>,  <33.770092, 37.514622, 45.616970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407761, 37.671871, 45.553822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014424, 0.401060, 0.915938,
		0.423393, 0.827408, -0.368963,
		-0.905831, 0.393124, -0.157871,
		33.136013, 37.789810, 45.506458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703255, 38.289738, 45.660530>,  <33.770092, 37.514622, 45.616970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703255, 38.289738, 45.660530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332779, 38.163967, 45.743771>,  <33.110493, 38.088505, 45.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332779, 38.163967, 45.743771>,  <33.703255, 38.289738, 45.660530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332779, 38.163967, 45.743771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079848, 0.375840, 0.923238,
		-0.368505, 0.871711, -0.322993,
		-0.926190, -0.314427, 0.208103,
		33.054920, 38.069637, 45.806202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298138, 38.925343, 45.860092>,  <33.703255, 38.289738, 45.660530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298138, 38.925343, 45.860092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162418, 38.579659, 46.008694>,  <33.080986, 38.372246, 46.097855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162418, 38.579659, 46.008694>,  <33.298138, 38.925343, 45.860092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162418, 38.579659, 46.008694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004197, 0.393535, 0.919300,
		-0.940669, 0.313477, -0.129899,
		-0.339299, -0.864212, 0.371502,
		33.060627, 38.320396, 46.120144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906086, 39.158340, 46.446041>,  <33.298138, 38.925343, 45.860092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906086, 39.158340, 46.446041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937813, 38.769115, 46.532635>,  <32.956848, 38.535580, 46.584591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937813, 38.769115, 46.532635>,  <32.906086, 39.158340, 46.446041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937813, 38.769115, 46.532635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006625, 0.216651, 0.976227,
		-0.996827, -0.078865, 0.010737,
		0.079317, -0.973058, 0.216486,
		32.961609, 38.477200, 46.597580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454174, 39.056725, 46.995724>,  <32.906086, 39.158340, 46.446041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454174, 39.056725, 46.995724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715141, 38.754463, 47.018818>,  <32.871723, 38.573105, 47.032677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715141, 38.754463, 47.018818>,  <32.454174, 39.056725, 46.995724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715141, 38.754463, 47.018818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174960, 0.224309, 0.958684,
		-0.737386, -0.615361, 0.278553,
		0.652419, -0.755656, 0.057739,
		32.910866, 38.527767, 47.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260254, 38.846172, 47.598457>,  <32.454174, 39.056725, 46.995724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260254, 38.846172, 47.598457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620243, 38.691471, 47.517998>,  <32.836239, 38.598648, 47.469723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620243, 38.691471, 47.517998>,  <32.260254, 38.846172, 47.598457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620243, 38.691471, 47.517998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250516, 0.081216, 0.964700,
		-0.356768, -0.918598, 0.169981,
		0.899976, -0.386757, -0.201148,
		32.890236, 38.575443, 47.457653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379738, 38.218300, 48.135700>,  <32.260254, 38.846172, 47.598457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379738, 38.218300, 48.135700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715023, 38.369881, 47.978836>,  <32.916195, 38.460831, 47.884716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715023, 38.369881, 47.978836>,  <32.379738, 38.218300, 48.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715023, 38.369881, 47.978836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455754, -0.091885, 0.885351,
		0.299474, -0.920842, -0.249729,
		0.838215, 0.378955, -0.392160,
		32.966488, 38.483566, 47.861187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763519, 37.756180, 48.319775>,  <32.379738, 38.218300, 48.135700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763519, 37.756180, 48.319775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976173, 38.090279, 48.263592>,  <33.103767, 38.290737, 48.229881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976173, 38.090279, 48.263592>,  <32.763519, 37.756180, 48.319775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976173, 38.090279, 48.263592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315552, -0.041428, 0.948003,
		0.785996, -0.548315, -0.285588,
		0.531636, 0.835245, -0.140459,
		33.135666, 38.340851, 48.221455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380043, 37.554867, 48.712234>,  <32.763519, 37.756180, 48.319775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380043, 37.554867, 48.712234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452457, 37.938690, 48.626003>,  <33.495907, 38.168983, 48.574265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452457, 37.938690, 48.626003>,  <33.380043, 37.554867, 48.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452457, 37.938690, 48.626003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616530, 0.060053, 0.785038,
		0.766236, -0.275030, -0.580725,
		0.181034, 0.959558, -0.215579,
		33.506767, 38.226559, 48.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050797, 37.672169, 48.745968>,  <33.380043, 37.554867, 48.712234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050797, 37.672169, 48.745968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889362, 38.030979, 48.818027>,  <33.792503, 38.246265, 48.861263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889362, 38.030979, 48.818027>,  <34.050797, 37.672169, 48.745968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889362, 38.030979, 48.818027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492723, 0.047181, 0.868906,
		0.770936, 0.439443, -0.461029,
		-0.403587, 0.897030, 0.180150,
		33.768288, 38.300087, 48.872074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555687, 38.086235, 49.052040>,  <34.050797, 37.672169, 48.745968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555687, 38.086235, 49.052040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235889, 38.304668, 49.152122>,  <34.044010, 38.435730, 49.212170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235889, 38.304668, 49.152122>,  <34.555687, 38.086235, 49.052040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235889, 38.304668, 49.152122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446075, 0.260808, 0.856152,
		0.402275, 0.796099, -0.452108,
		-0.799495, 0.546083, 0.250203,
		33.996040, 38.468494, 49.227184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888092, 38.724739, 49.411255>,  <34.555687, 38.086235, 49.052040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888092, 38.724739, 49.411255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500854, 38.664856, 49.491627>,  <34.268513, 38.628925, 49.539848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500854, 38.664856, 49.491627>,  <34.888092, 38.724739, 49.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500854, 38.664856, 49.491627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149820, 0.296929, 0.943073,
		-0.200848, 0.943091, -0.265027,
		-0.968098, -0.149708, 0.200931,
		34.210426, 38.619946, 49.551907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737843, 39.321793, 49.693874>,  <34.888092, 38.724739, 49.411255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737843, 39.321793, 49.693874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456112, 39.067997, 49.821213>,  <34.287075, 38.915718, 49.897617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456112, 39.067997, 49.821213>,  <34.737843, 39.321793, 49.693874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456112, 39.067997, 49.821213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129150, 0.326437, 0.936354,
		-0.698028, 0.700615, -0.147974,
		-0.704328, -0.634491, 0.318346,
		34.244812, 38.877651, 49.916718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418129, 39.610035, 50.313366>,  <34.737843, 39.321793, 49.693874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418129, 39.610035, 50.313366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295109, 39.230675, 50.344234>,  <34.221298, 39.003059, 50.362755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295109, 39.230675, 50.344234>,  <34.418129, 39.610035, 50.313366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295109, 39.230675, 50.344234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051056, 0.064536, 0.996608,
		-0.950162, 0.310444, 0.028573,
		-0.307547, -0.948398, 0.077170,
		34.202847, 38.946156, 50.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915630, 39.617790, 50.970688>,  <34.418129, 39.610035, 50.313366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915630, 39.617790, 50.970688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033234, 39.237389, 50.932442>,  <34.103794, 39.009148, 50.909492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033234, 39.237389, 50.932442>,  <33.915630, 39.617790, 50.970688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033234, 39.237389, 50.932442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320736, 0.003925, 0.947161,
		-0.900382, -0.309140, 0.306176,
		0.294007, -0.951008, -0.095619,
		34.121437, 38.952087, 50.903755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541515, 39.210011, 51.447647>,  <33.915630, 39.617790, 50.970688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541515, 39.210011, 51.447647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923084, 39.103962, 51.391445>,  <34.152027, 39.040333, 51.357723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923084, 39.103962, 51.391445>,  <33.541515, 39.210011, 51.447647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923084, 39.103962, 51.391445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182410, 0.140618, 0.973115,
		-0.238235, -0.953907, 0.182499,
		0.953924, -0.265120, -0.140502,
		34.209263, 39.024426, 51.349297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717194, 38.586376, 51.693539>,  <33.541515, 39.210011, 51.447647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717194, 38.586376, 51.693539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075180, 38.764736, 51.699253>,  <34.289970, 38.871754, 51.702682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075180, 38.764736, 51.699253>,  <33.717194, 38.586376, 51.693539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075180, 38.764736, 51.699253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063969, -0.159951, 0.985050,
		0.441523, -0.880673, -0.171674,
		0.894967, 0.445904, 0.014287,
		34.343670, 38.898506, 51.703541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243061, 38.177643, 51.880997>,  <33.717194, 38.586376, 51.693539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243061, 38.177643, 51.880997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385544, 38.534328, 51.992683>,  <34.471035, 38.748341, 52.059696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385544, 38.534328, 51.992683>,  <34.243061, 38.177643, 51.880997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385544, 38.534328, 51.992683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511866, -0.436205, 0.740080,
		0.781734, -0.120703, -0.611819,
		0.356208, 0.891715, 0.279213,
		34.492405, 38.801842, 52.076447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604847, 38.051701, 52.554882>,  <34.243061, 38.177643, 51.880997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604847, 38.051701, 52.554882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686184, 38.428391, 52.447693>,  <34.734985, 38.654404, 52.383381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686184, 38.428391, 52.447693>,  <34.604847, 38.051701, 52.554882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686184, 38.428391, 52.447693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828272, -0.019497, 0.559986,
		0.522129, -0.335819, -0.783969,
		0.203339, 0.941725, -0.267970,
		34.747185, 38.710907, 52.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239849, 38.043087, 52.237709>,  <34.604847, 38.051701, 52.554882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239849, 38.043087, 52.237709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173042, 38.417336, 52.362114>,  <35.132957, 38.641884, 52.436756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173042, 38.417336, 52.362114>,  <35.239849, 38.043087, 52.237709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173042, 38.417336, 52.362114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913433, 0.028096, 0.406017,
		0.371138, 0.351897, -0.859316,
		-0.167020, 0.935617, 0.311008,
		35.122936, 38.698021, 52.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741997, 38.484573, 51.876488>,  <35.239849, 38.043087, 52.237709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741997, 38.484573, 51.876488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617165, 38.602425, 52.237774>,  <35.542267, 38.673134, 52.454544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617165, 38.602425, 52.237774>,  <35.741997, 38.484573, 51.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617165, 38.602425, 52.237774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933917, -0.079349, 0.348571,
		0.174369, 0.952312, -0.250395,
		-0.312080, 0.294628, 0.903217,
		35.523540, 38.690811, 52.508739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163948, 38.972820, 52.059288>,  <35.741997, 38.484573, 51.876488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163948, 38.972820, 52.059288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010612, 38.812424, 52.392097>,  <35.918610, 38.716187, 52.591782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010612, 38.812424, 52.392097>,  <36.163948, 38.972820, 52.059288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010612, 38.812424, 52.392097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913754, -0.033429, 0.404889,
		-0.134543, 0.915472, 0.379221,
		-0.383342, -0.400990, 0.832019,
		35.895611, 38.692127, 52.641705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598240, 38.308353, 52.109875>,  <36.163948, 38.972820, 52.059288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598240, 38.308353, 52.109875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824551, 38.054695, 51.899063>,  <36.960335, 37.902500, 51.772575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824551, 38.054695, 51.899063>,  <36.598240, 38.308353, 52.109875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824551, 38.054695, 51.899063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793704, -0.245625, -0.556509,
		0.223458, 0.733161, -0.642294,
		0.565774, -0.634147, -0.527026,
		36.994282, 37.864452, 51.740955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600155, 38.444305, 51.309963>,  <36.598240, 38.308353, 52.109875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600155, 38.444305, 51.309963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685184, 38.062275, 51.392570>,  <36.736202, 37.833057, 51.442135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685184, 38.062275, 51.392570>,  <36.600155, 38.444305, 51.309963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685184, 38.062275, 51.392570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672172, -0.296321, -0.678512,
		0.709224, 0.005417, -0.704963,
		0.212571, -0.955073, 0.206517,
		36.748955, 37.775753, 51.454525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805054, 37.917671, 50.777828>,  <36.600155, 38.444305, 51.309963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805054, 37.917671, 50.777828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573021, 37.738136, 51.049728>,  <36.433804, 37.630417, 51.212868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573021, 37.738136, 51.049728>,  <36.805054, 37.917671, 50.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573021, 37.738136, 51.049728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524165, -0.433082, -0.733274,
		0.623505, -0.781656, 0.015959,
		-0.580080, -0.448835, 0.679746,
		36.398998, 37.603485, 51.253651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972275, 37.231476, 50.792175>,  <36.805054, 37.917671, 50.777828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972275, 37.231476, 50.792175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590477, 37.298336, 50.890968>,  <36.361397, 37.338451, 50.950245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590477, 37.298336, 50.890968>,  <36.972275, 37.231476, 50.792175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590477, 37.298336, 50.890968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297699, -0.484901, -0.822342,
		-0.017695, -0.858447, 0.512597,
		-0.954495, 0.167151, 0.246979,
		36.304127, 37.348480, 50.965061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628521, 36.591377, 50.922462>,  <36.972275, 37.231476, 50.792175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628521, 36.591377, 50.922462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332928, 36.843357, 50.826904>,  <36.155571, 36.994545, 50.769569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332928, 36.843357, 50.826904>,  <36.628521, 36.591377, 50.922462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332928, 36.843357, 50.826904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185953, -0.531529, -0.826377,
		-0.647555, -0.566254, 0.509931,
		-0.738982, 0.629948, -0.238898,
		36.111233, 37.032341, 50.755234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051838, 36.228649, 50.516384>,  <36.628521, 36.591377, 50.922462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051838, 36.228649, 50.516384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971745, 36.613979, 50.444931>,  <35.923691, 36.845177, 50.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971745, 36.613979, 50.444931>,  <36.051838, 36.228649, 50.516384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971745, 36.613979, 50.444931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211640, -0.220548, -0.952138,
		-0.956617, -0.152840, 0.248039,
		-0.200230, 0.963327, -0.178633,
		35.911674, 36.902977, 50.391342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354481, 36.224491, 50.207405>,  <36.051838, 36.228649, 50.516384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354481, 36.224491, 50.207405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499699, 36.581642, 50.100838>,  <35.586830, 36.795933, 50.036896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499699, 36.581642, 50.100838>,  <35.354481, 36.224491, 50.207405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499699, 36.581642, 50.100838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209671, -0.200311, -0.957034,
		-0.907877, 0.403302, 0.114488,
		0.363040, 0.892873, -0.266418,
		35.608612, 36.849503, 50.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805115, 36.672215, 49.899845>,  <35.354481, 36.224491, 50.207405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805115, 36.672215, 49.899845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159214, 36.805519, 49.770058>,  <35.371674, 36.885502, 49.692184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159214, 36.805519, 49.770058>,  <34.805115, 36.672215, 49.899845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159214, 36.805519, 49.770058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308697, -0.100849, -0.945799,
		-0.347917, 0.937427, 0.013600,
		0.885245, 0.333258, -0.324468,
		35.424789, 36.905495, 49.672718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678898, 37.055004, 49.243248>,  <34.805115, 36.672215, 49.899845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678898, 37.055004, 49.243248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075039, 37.005646, 49.218002>,  <35.312721, 36.976032, 49.202854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075039, 37.005646, 49.218002>,  <34.678898, 37.055004, 49.243248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075039, 37.005646, 49.218002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068614, -0.040819, -0.996808,
		0.120426, 0.991518, -0.048891,
		0.990348, -0.123396, -0.063117,
		35.372143, 36.968628, 49.199066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916878, 37.469105, 48.726349>,  <34.678898, 37.055004, 49.243248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916878, 37.469105, 48.726349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217098, 37.205635, 48.747570>,  <35.397232, 37.047554, 48.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217098, 37.205635, 48.747570>,  <34.916878, 37.469105, 48.726349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217098, 37.205635, 48.747570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025267, -0.108839, -0.993738,
		0.660326, 0.744513, -0.098332,
		0.750554, -0.658676, 0.053057,
		35.442265, 37.008034, 48.763489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422108, 37.682671, 48.236637>,  <34.916878, 37.469105, 48.726349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422108, 37.682671, 48.236637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493160, 37.292210, 48.286541>,  <35.535789, 37.057930, 48.316483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493160, 37.292210, 48.286541>,  <35.422108, 37.682671, 48.236637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493160, 37.292210, 48.286541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031770, -0.121021, -0.992142,
		0.983584, 0.180198, 0.009516,
		0.177630, -0.976157, 0.124759,
		35.546448, 36.999363, 48.323967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826603, 37.567837, 47.764942>,  <35.422108, 37.682671, 48.236637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826603, 37.567837, 47.764942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709103, 37.196198, 47.854828>,  <35.638603, 36.973213, 47.908760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709103, 37.196198, 47.854828>,  <35.826603, 37.567837, 47.764942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709103, 37.196198, 47.854828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071067, -0.255661, -0.964151,
		0.953238, -0.267246, 0.141127,
		-0.293747, -0.929095, 0.224714,
		35.620979, 36.917469, 47.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303535, 37.136368, 47.379917>,  <35.826603, 37.567837, 47.764942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303535, 37.136368, 47.379917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991077, 36.905849, 47.475998>,  <35.803604, 36.767536, 47.533646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991077, 36.905849, 47.475998>,  <36.303535, 37.136368, 47.379917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991077, 36.905849, 47.475998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106754, -0.255766, -0.960827,
		0.615157, -0.776185, 0.138267,
		-0.781143, -0.576299, 0.240197,
		35.756733, 36.732960, 47.548058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473846, 36.543060, 46.991879>,  <36.303535, 37.136368, 47.379917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473846, 36.543060, 46.991879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083626, 36.531853, 47.079071>,  <35.849495, 36.525127, 47.131386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083626, 36.531853, 47.079071>,  <36.473846, 36.543060, 46.991879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083626, 36.531853, 47.079071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189354, -0.396360, -0.898356,
		0.111571, -0.917667, 0.381364,
		-0.975550, -0.028018, 0.217986,
		35.790962, 36.523449, 47.144466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273014, 35.822941, 46.999516>,  <36.473846, 36.543060, 46.991879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273014, 35.822941, 46.999516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992687, 36.090706, 46.900932>,  <35.824490, 36.251366, 46.841782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992687, 36.090706, 46.900932>,  <36.273014, 35.822941, 46.999516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992687, 36.090706, 46.900932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139008, -0.467031, -0.873246,
		-0.699667, -0.577725, 0.420357,
		-0.700816, 0.669414, -0.246458,
		35.782444, 36.291531, 46.826996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779587, 35.459919, 46.465942>,  <36.273014, 35.822941, 46.999516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779587, 35.459919, 46.465942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660698, 35.838989, 46.419346>,  <35.589367, 36.066433, 46.391388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660698, 35.838989, 46.419346>,  <35.779587, 35.459919, 46.465942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660698, 35.838989, 46.419346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237415, -0.191526, -0.952340,
		-0.924821, -0.255398, 0.281918,
		-0.297220, 0.947676, -0.116493,
		35.571533, 36.123291, 46.384399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081676, 35.507999, 46.192955>,  <35.779587, 35.459919, 46.465942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081676, 35.507999, 46.192955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232788, 35.864204, 46.091545>,  <35.323456, 36.077927, 46.030701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232788, 35.864204, 46.091545>,  <35.081676, 35.507999, 46.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232788, 35.864204, 46.091545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324954, -0.128879, -0.936907,
		-0.866998, 0.436330, 0.240687,
		0.377781, 0.890509, -0.253525,
		35.346123, 36.131355, 46.015488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537048, 35.837551, 45.798634>,  <35.081676, 35.507999, 46.192955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537048, 35.837551, 45.798634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863895, 36.044193, 45.696308>,  <35.060001, 36.168179, 45.634914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863895, 36.044193, 45.696308>,  <34.537048, 35.837551, 45.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863895, 36.044193, 45.696308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250276, -0.081839, -0.964709,
		-0.519313, 0.852301, 0.062423,
		0.817114, 0.516609, -0.255811,
		35.109028, 36.199177, 45.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271725, 36.207645, 45.304337>,  <34.537048, 35.837551, 45.798634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271725, 36.207645, 45.304337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669144, 36.223106, 45.261696>,  <34.907597, 36.232384, 45.236111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669144, 36.223106, 45.261696>,  <34.271725, 36.207645, 45.304337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669144, 36.223106, 45.261696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101451, -0.116887, -0.987950,
		-0.050642, 0.992393, -0.112212,
		0.993551, 0.038648, -0.106598,
		34.967209, 36.234699, 45.229717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268955, 36.596619, 44.813240>,  <34.271725, 36.207645, 45.304337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268955, 36.596619, 44.813240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637676, 36.443100, 44.791405>,  <34.858910, 36.350990, 44.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637676, 36.443100, 44.791405>,  <34.268955, 36.596619, 44.813240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637676, 36.443100, 44.791405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089188, -0.072918, -0.993342,
		0.377258, 0.920535, -0.101446,
		0.921804, -0.383794, -0.054592,
		34.914219, 36.327961, 44.775028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696693, 37.006252, 44.175140>,  <34.268955, 36.596619, 44.813240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696693, 37.006252, 44.175140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838455, 36.641266, 44.256920>,  <34.923512, 36.422272, 44.305988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838455, 36.641266, 44.256920>,  <34.696693, 37.006252, 44.175140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838455, 36.641266, 44.256920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063773, -0.241712, -0.968250,
		0.932915, 0.330114, -0.143855,
		0.354404, -0.912469, 0.204445,
		34.944775, 36.367523, 44.318253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137600, 36.781075, 43.644024>,  <34.696693, 37.006252, 44.175140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137600, 36.781075, 43.644024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003525, 36.432152, 43.786423>,  <34.923080, 36.222797, 43.871861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003525, 36.432152, 43.786423>,  <35.137600, 36.781075, 43.644024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003525, 36.432152, 43.786423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143755, -0.326080, -0.934348,
		0.931120, -0.364358, -0.016100,
		-0.335187, -0.872305, 0.355998,
		34.902969, 36.170460, 43.893223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304165, 36.319553, 43.183025>,  <35.137600, 36.781075, 43.644024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304165, 36.319553, 43.183025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075409, 36.061768, 43.386044>,  <34.938156, 35.907097, 43.507854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075409, 36.061768, 43.386044>,  <35.304165, 36.319553, 43.183025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075409, 36.061768, 43.386044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309926, -0.403107, -0.861075,
		0.759528, -0.649745, 0.030798,
		-0.571894, -0.644466, 0.507544,
		34.903839, 35.868427, 43.538307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478848, 35.693573, 42.851822>,  <35.304165, 36.319553, 43.183025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478848, 35.693573, 42.851822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118420, 35.664131, 43.022774>,  <34.902161, 35.646465, 43.125343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118420, 35.664131, 43.022774>,  <35.478848, 35.693573, 42.851822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118420, 35.664131, 43.022774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404094, -0.215177, -0.889048,
		0.157403, -0.973797, 0.164145,
		-0.901073, -0.073609, 0.427375,
		34.848099, 35.642048, 43.150986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202156, 35.010998, 42.563137>,  <35.478848, 35.693573, 42.851822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202156, 35.010998, 42.563137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867229, 35.155487, 42.727295>,  <34.666275, 35.242180, 42.825790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867229, 35.155487, 42.727295>,  <35.202156, 35.010998, 42.563137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867229, 35.155487, 42.727295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510337, -0.247120, -0.823703,
		-0.196122, -0.899139, 0.391262,
		-0.837312, 0.361222, 0.410398,
		34.616035, 35.263851, 42.850414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747784, 34.460281, 42.678555>,  <35.202156, 35.010998, 42.563137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747784, 34.460281, 42.678555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528336, 34.793468, 42.649757>,  <34.396667, 34.993382, 42.632481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528336, 34.793468, 42.649757>,  <34.747784, 34.460281, 42.678555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528336, 34.793468, 42.649757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581108, -0.441806, -0.683463,
		-0.601108, -0.333126, 0.726427,
		-0.548619, 0.832968, -0.071991,
		34.363750, 35.043358, 42.628159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062283, 34.195026, 42.405861>,  <34.747784, 34.460281, 42.678555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062283, 34.195026, 42.405861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023586, 34.584652, 42.324047>,  <34.000370, 34.818428, 42.274960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023586, 34.584652, 42.324047>,  <34.062283, 34.195026, 42.405861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023586, 34.584652, 42.324047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404858, -0.226234, -0.885950,
		-0.909248, -0.002898, 0.416244,
		-0.096736, 0.974069, -0.204530,
		33.994564, 34.876873, 42.262688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363575, 34.215076, 42.150764>,  <34.062283, 34.195026, 42.405861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363575, 34.215076, 42.150764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552334, 34.552181, 42.047180>,  <33.665588, 34.754444, 41.985031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552334, 34.552181, 42.047180>,  <33.363575, 34.215076, 42.150764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552334, 34.552181, 42.047180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440490, -0.029065, -0.897287,
		-0.763728, 0.537498, 0.357513,
		0.471899, 0.842764, -0.258960,
		33.693905, 34.805012, 41.969494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870708, 34.500340, 41.825268>,  <33.363575, 34.215076, 42.150764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870708, 34.500340, 41.825268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206131, 34.681465, 41.704082>,  <33.407383, 34.790142, 41.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206131, 34.681465, 41.704082>,  <32.870708, 34.500340, 41.825268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206131, 34.681465, 41.704082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394492, 0.121103, -0.910884,
		-0.375771, 0.883343, 0.280182,
		0.838554, 0.452814, -0.302965,
		33.457699, 34.817310, 41.613194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683155, 35.059654, 41.399792>,  <32.870708, 34.500340, 41.825268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683155, 35.059654, 41.399792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054199, 34.971577, 41.279087>,  <33.276825, 34.918732, 41.206665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054199, 34.971577, 41.279087>,  <32.683155, 35.059654, 41.399792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054199, 34.971577, 41.279087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306049, 0.015202, -0.951894,
		0.214188, 0.975338, -0.053288,
		0.927608, -0.220193, -0.301757,
		33.332481, 34.905518, 41.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846676, 35.510262, 40.786140>,  <32.683155, 35.059654, 41.399792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846676, 35.510262, 40.786140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081982, 35.186798, 40.787827>,  <33.223164, 34.992722, 40.788837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081982, 35.186798, 40.787827>,  <32.846676, 35.510262, 40.786140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081982, 35.186798, 40.787827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175294, -0.132598, -0.975546,
		0.789442, 0.573139, -0.219756,
		0.588262, -0.808659, 0.004211,
		33.258461, 34.944199, 40.789089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187767, 35.632126, 40.140457>,  <32.846676, 35.510262, 40.786140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187767, 35.632126, 40.140457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250511, 35.249302, 40.237976>,  <33.288158, 35.019608, 40.296490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250511, 35.249302, 40.237976>,  <33.187767, 35.632126, 40.140457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250511, 35.249302, 40.237976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175333, -0.269922, -0.946784,
		0.971932, 0.105769, -0.210144,
		0.156862, -0.957055, 0.243802,
		33.297569, 34.962185, 40.311115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788555, 35.365017, 39.774559>,  <33.187767, 35.632126, 40.140457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788555, 35.365017, 39.774559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562176, 35.050129, 39.872536>,  <33.426350, 34.861198, 39.931320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562176, 35.050129, 39.872536>,  <33.788555, 35.365017, 39.774559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562176, 35.050129, 39.872536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019831, -0.284016, -0.958614,
		0.824205, -0.547379, 0.145126,
		-0.565944, -0.787217, 0.244943,
		33.392391, 34.813965, 39.946018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047718, 34.840649, 39.450943>,  <33.788555, 35.365017, 39.774559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047718, 34.840649, 39.450943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684696, 34.687943, 39.520912>,  <33.466881, 34.596321, 39.562893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684696, 34.687943, 39.520912>,  <34.047718, 34.840649, 39.450943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684696, 34.687943, 39.520912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028478, -0.359642, -0.932656,
		0.418962, -0.851420, 0.315524,
		-0.907557, -0.381762, 0.174923,
		33.412430, 34.573414, 39.573391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117531, 34.096180, 39.188461>,  <34.047718, 34.840649, 39.450943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117531, 34.096180, 39.188461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731167, 34.199284, 39.198093>,  <33.499348, 34.261147, 39.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731167, 34.199284, 39.198093>,  <34.117531, 34.096180, 39.188461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731167, 34.199284, 39.198093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092188, -0.255539, -0.962393,
		-0.241912, -0.931804, 0.270590,
		-0.965909, 0.257760, 0.024083,
		33.441395, 34.276611, 39.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879871, 33.633083, 38.692528>,  <34.117531, 34.096180, 39.188461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879871, 33.633083, 38.692528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599358, 33.911003, 38.756348>,  <33.431049, 34.077755, 38.794640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599358, 33.911003, 38.756348>,  <33.879871, 33.633083, 38.692528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599358, 33.911003, 38.756348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167153, 0.057306, -0.984264,
		-0.693008, -0.716918, 0.075949,
		-0.701285, 0.694798, 0.159549,
		33.388973, 34.119442, 38.804211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416977, 33.405563, 38.216080>,  <33.879871, 33.633083, 38.692528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416977, 33.405563, 38.216080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298897, 33.779713, 38.293995>,  <33.228050, 34.004200, 38.340744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298897, 33.779713, 38.293995>,  <33.416977, 33.405563, 38.216080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298897, 33.779713, 38.293995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147734, 0.156739, -0.976529,
		-0.943946, -0.317045, 0.091917,
		-0.295196, 0.935369, 0.194791,
		33.210339, 34.060322, 38.352432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718605, 33.551758, 37.854752>,  <33.416977, 33.405563, 38.216080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718605, 33.551758, 37.854752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909447, 33.900505, 37.898983>,  <33.023952, 34.109753, 37.925522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909447, 33.900505, 37.898983>,  <32.718605, 33.551758, 37.854752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909447, 33.900505, 37.898983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259514, 0.259970, -0.930090,
		-0.839658, 0.415052, 0.350293,
		0.477102, 0.871864, 0.110574,
		33.052578, 34.162064, 37.932156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366341, 33.983578, 37.409672>,  <32.718605, 33.551758, 37.854752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366341, 33.983578, 37.409672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696365, 34.199051, 37.477901>,  <32.894379, 34.328335, 37.518841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696365, 34.199051, 37.477901>,  <32.366341, 33.983578, 37.409672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696365, 34.199051, 37.477901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080685, 0.186468, -0.979142,
		-0.559257, 0.821613, 0.110383,
		0.825059, 0.538686, 0.170575,
		32.943882, 34.360657, 37.529076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238564, 34.492020, 36.918747>,  <32.366341, 33.983578, 37.409672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238564, 34.492020, 36.918747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625702, 34.488087, 37.019287>,  <32.857986, 34.485729, 37.079613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625702, 34.488087, 37.019287>,  <32.238564, 34.492020, 36.918747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625702, 34.488087, 37.019287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249074, 0.177148, -0.952145,
		-0.035167, 0.984135, 0.173900,
		0.967846, -0.009830, 0.251352,
		32.916054, 34.485138, 37.094692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543800, 35.078209, 36.808128>,  <32.238564, 34.492020, 36.918747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543800, 35.078209, 36.808128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857346, 34.830322, 36.792553>,  <33.045471, 34.681591, 36.783207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857346, 34.830322, 36.792553>,  <32.543800, 35.078209, 36.808128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857346, 34.830322, 36.792553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145665, 0.244478, -0.958651,
		0.603612, 0.745775, 0.281907,
		0.783859, -0.619717, -0.038936,
		33.092503, 34.644405, 36.780872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998211, 35.473484, 36.410076>,  <32.543800, 35.078209, 36.808128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998211, 35.473484, 36.410076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136837, 35.099133, 36.384735>,  <33.220013, 34.874519, 36.369530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136837, 35.099133, 36.384735>,  <32.998211, 35.473484, 36.410076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136837, 35.099133, 36.384735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271118, 0.164591, -0.948369,
		0.897989, 0.311501, 0.310777,
		0.346569, -0.935883, -0.063348,
		33.240807, 34.818367, 36.365730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641998, 35.591537, 36.177567>,  <32.998211, 35.473484, 36.410076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641998, 35.591537, 36.177567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543133, 35.217789, 36.074917>,  <33.483814, 34.993538, 36.013329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543133, 35.217789, 36.074917>,  <33.641998, 35.591537, 36.177567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543133, 35.217789, 36.074917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127331, 0.231223, -0.964532,
		0.960571, -0.271072, 0.061826,
		-0.247163, -0.934374, -0.256622,
		33.468983, 34.937477, 35.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391029, 35.819389, 36.895885>,  <33.641998, 35.591537, 36.177567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391029, 35.819389, 36.895885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708916, 35.947193, 36.689453>,  <33.899647, 36.023876, 36.565594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708916, 35.947193, 36.689453>,  <33.391029, 35.819389, 36.895885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708916, 35.947193, 36.689453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592338, -0.222601, 0.774329,
		0.132526, -0.921066, -0.366163,
		0.794716, 0.319511, -0.516081,
		33.947330, 36.043045, 36.534630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879841, 35.277554, 36.940613>,  <33.391029, 35.819389, 36.895885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879841, 35.277554, 36.940613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085354, 35.612179, 36.864513>,  <34.208660, 35.812954, 36.818855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085354, 35.612179, 36.864513>,  <33.879841, 35.277554, 36.940613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085354, 35.612179, 36.864513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549003, -0.150192, 0.822215,
		0.659262, -0.526882, -0.536441,
		0.513780, 0.836563, -0.190244,
		34.239487, 35.863148, 36.807442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550911, 35.117138, 37.100986>,  <33.879841, 35.277554, 36.940613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550911, 35.117138, 37.100986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562927, 35.516953, 37.098701>,  <34.570137, 35.756840, 37.097328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562927, 35.516953, 37.098701>,  <34.550911, 35.117138, 37.100986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562927, 35.516953, 37.098701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647958, -0.015122, 0.761526,
		0.761083, -0.026584, -0.648109,
		0.030045, 0.999532, -0.005716,
		34.571941, 35.816811, 37.096985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082329, 35.190304, 37.455147>,  <34.550911, 35.117138, 37.100986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082329, 35.190304, 37.455147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978199, 35.575584, 37.428364>,  <34.915722, 35.806751, 37.412292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978199, 35.575584, 37.428364>,  <35.082329, 35.190304, 37.455147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978199, 35.575584, 37.428364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709440, 0.237858, 0.663415,
		0.654925, 0.125200, -0.745250,
		-0.260323, 0.963197, -0.066958,
		34.900101, 35.864544, 37.408276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741222, 35.689289, 37.260082>,  <35.082329, 35.190304, 37.455147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741222, 35.689289, 37.260082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460674, 35.903324, 37.448444>,  <35.292343, 36.031746, 37.561462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460674, 35.903324, 37.448444>,  <35.741222, 35.689289, 37.260082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460674, 35.903324, 37.448444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665563, 0.255148, 0.701374,
		0.255148, 0.805343, -0.535091,
		-0.701374, 0.535091, 0.470906,
		35.250263, 36.063850, 37.589718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989746, 36.447361, 37.299828>,  <35.741222, 35.689289, 37.260082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989746, 36.447361, 37.299828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732414, 36.382378, 37.599087>,  <35.578014, 36.343388, 37.778645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732414, 36.382378, 37.599087>,  <35.989746, 36.447361, 37.299828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732414, 36.382378, 37.599087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656460, 0.385774, 0.648258,
		-0.393931, 0.908177, -0.141535,
		-0.643333, -0.162457, 0.748151,
		35.539413, 36.333641, 37.823532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027954, 37.070995, 37.710575>,  <35.989746, 36.447361, 37.299828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027954, 37.070995, 37.710575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881870, 36.768261, 37.927395>,  <35.794220, 36.586620, 38.057487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881870, 36.768261, 37.927395>,  <36.027954, 37.070995, 37.710575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881870, 36.768261, 37.927395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651651, 0.207985, 0.729447,
		-0.664813, 0.619626, 0.417238,
		-0.365205, -0.756840, 0.542051,
		35.772308, 36.541210, 38.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062763, 37.327805, 38.357708>,  <36.027954, 37.070995, 37.710575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062763, 37.327805, 38.357708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989674, 36.945007, 38.447838>,  <35.945820, 36.715328, 38.501915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989674, 36.945007, 38.447838>,  <36.062763, 37.327805, 38.357708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989674, 36.945007, 38.447838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615066, 0.067526, 0.785579,
		-0.767011, 0.282135, 0.576277,
		-0.182725, -0.956996, 0.225325,
		35.934856, 36.657909, 38.515434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855843, 37.263184, 39.144035>,  <36.062763, 37.327805, 38.357708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855843, 37.263184, 39.144035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984844, 36.905964, 39.018524>,  <36.062244, 36.691631, 38.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984844, 36.905964, 39.018524>,  <35.855843, 37.263184, 39.144035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984844, 36.905964, 39.018524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607118, -0.059168, 0.792405,
		-0.726223, -0.446050, 0.523105,
		0.322501, -0.893050, -0.313774,
		36.081596, 36.638050, 38.924393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847538, 36.818829, 39.740395>,  <35.855843, 37.263184, 39.144035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847538, 36.818829, 39.740395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103321, 36.655426, 39.479870>,  <36.256790, 36.557384, 39.323555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103321, 36.655426, 39.479870>,  <35.847538, 36.818829, 39.740395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103321, 36.655426, 39.479870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620223, -0.226518, 0.751008,
		-0.454327, -0.884201, 0.108515,
		0.639461, -0.408507, -0.651315,
		36.295158, 36.532875, 39.284473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933048, 36.139458, 39.971165>,  <35.847538, 36.818829, 39.740395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933048, 36.139458, 39.971165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255718, 36.237259, 39.755943>,  <36.449318, 36.295940, 39.626812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255718, 36.237259, 39.755943>,  <35.933048, 36.139458, 39.971165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255718, 36.237259, 39.755943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590965, -0.323654, 0.738924,
		0.006523, -0.914039, -0.405573,
		0.806671, 0.244500, -0.538054,
		36.497719, 36.310608, 39.594528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414536, 35.638309, 40.155842>,  <35.933048, 36.139458, 39.971165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414536, 35.638309, 40.155842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647350, 35.913872, 39.983032>,  <36.787041, 36.079208, 39.879349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647350, 35.913872, 39.983032>,  <36.414536, 35.638309, 40.155842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647350, 35.913872, 39.983032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603665, -0.010103, 0.797174,
		0.544812, -0.724782, -0.421747,
		0.582038, 0.688904, -0.432021,
		36.821960, 36.120544, 39.853424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122910, 35.435982, 40.266296>,  <36.414536, 35.638309, 40.155842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122910, 35.435982, 40.266296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117840, 35.829342, 40.193890>,  <37.114796, 36.065357, 40.150444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117840, 35.829342, 40.193890>,  <37.122910, 35.435982, 40.266296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117840, 35.829342, 40.193890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527089, 0.160411, 0.834533,
		0.849715, -0.084833, -0.520372,
		-0.012678, 0.983398, -0.181018,
		37.114037, 36.124363, 40.139584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903378, 35.761486, 40.440590>,  <37.122910, 35.435982, 40.266296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903378, 35.761486, 40.440590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635620, 36.058529, 40.449078>,  <37.474964, 36.236755, 40.454170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635620, 36.058529, 40.449078>,  <37.903378, 35.761486, 40.440590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635620, 36.058529, 40.449078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334889, 0.276138, 0.900887,
		0.663143, 0.610154, -0.433535,
		-0.669396, 0.742603, 0.021215,
		37.434803, 36.281311, 40.455441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197239, 36.217907, 40.876251>,  <37.903378, 35.761486, 40.440590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197239, 36.217907, 40.876251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829891, 36.374554, 40.853477>,  <37.609482, 36.468544, 40.839813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829891, 36.374554, 40.853477>,  <38.197239, 36.217907, 40.876251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829891, 36.374554, 40.853477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105691, 0.381361, 0.918365,
		0.381361, 0.837376, -0.391619,
		-0.918365, 0.391619, -0.056933,
		37.554382, 36.492039, 40.836399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244305, 36.895275, 41.201775>,  <38.197239, 36.217907, 40.876251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244305, 36.895275, 41.201775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863831, 36.773331, 41.221016>,  <37.635548, 36.700165, 41.232563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863831, 36.773331, 41.221016>,  <38.244305, 36.895275, 41.201775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863831, 36.773331, 41.221016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095303, 0.438376, 0.893725,
		-0.293551, 0.845509, -0.446029,
		-0.951181, -0.304861, 0.048106,
		37.578476, 36.681873, 41.235447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918133, 37.440269, 41.581367>,  <38.244305, 36.895275, 41.201775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918133, 37.440269, 41.581367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677399, 37.122471, 41.613781>,  <37.532959, 36.931789, 41.633228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677399, 37.122471, 41.613781>,  <37.918133, 37.440269, 41.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677399, 37.122471, 41.613781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343745, 0.349289, 0.871686,
		-0.720857, 0.496758, -0.483319,
		-0.601835, -0.794499, 0.081029,
		37.496849, 36.884121, 41.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344765, 37.700413, 41.867516>,  <37.918133, 37.440269, 41.581367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344765, 37.700413, 41.867516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306198, 37.309467, 41.942833>,  <37.283058, 37.074898, 41.988026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306198, 37.309467, 41.942833>,  <37.344765, 37.700413, 41.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306198, 37.309467, 41.942833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313895, 0.209383, 0.926082,
		-0.944549, 0.030187, -0.326980,
		-0.096420, -0.977368, 0.188296,
		37.277271, 37.016258, 41.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845734, 37.572578, 42.334385>,  <37.344765, 37.700413, 41.867516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845734, 37.572578, 42.334385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044022, 37.229176, 42.386883>,  <37.162994, 37.023132, 42.418381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044022, 37.229176, 42.386883>,  <36.845734, 37.572578, 42.334385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044022, 37.229176, 42.386883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116539, 0.083992, 0.989628,
		-0.860630, -0.505869, -0.058414,
		0.495716, -0.858511, 0.131240,
		37.192738, 36.971622, 42.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418613, 37.122135, 42.762329>,  <36.845734, 37.572578, 42.334385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418613, 37.122135, 42.762329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805984, 37.026806, 42.791603>,  <37.038406, 36.969608, 42.809166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805984, 37.026806, 42.791603>,  <36.418613, 37.122135, 42.762329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805984, 37.026806, 42.791603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032549, 0.170162, 0.984878,
		-0.247175, -0.956162, 0.157032,
		0.968424, -0.238326, 0.073182,
		37.096512, 36.955307, 42.813557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391609, 36.623871, 43.224869>,  <36.418613, 37.122135, 42.762329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391609, 36.623871, 43.224869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771828, 36.748085, 43.222969>,  <36.999958, 36.822613, 43.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771828, 36.748085, 43.222969>,  <36.391609, 36.623871, 43.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771828, 36.748085, 43.222969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012507, 0.053564, 0.998486,
		0.310321, -0.949051, 0.054799,
		0.950550, 0.310536, -0.004752,
		37.056992, 36.841248, 43.221542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736172, 36.325970, 43.780334>,  <36.391609, 36.623871, 43.224869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736172, 36.325970, 43.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979858, 36.633236, 43.701569>,  <37.126068, 36.817596, 43.654308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979858, 36.633236, 43.701569>,  <36.736172, 36.325970, 43.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979858, 36.633236, 43.701569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147020, 0.134607, 0.979932,
		0.779259, -0.625938, -0.030932,
		0.609212, 0.768169, -0.196919,
		37.162621, 36.863686, 43.642494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175095, 36.273441, 44.294205>,  <36.736172, 36.325970, 43.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175095, 36.273441, 44.294205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199913, 36.646645, 44.152416>,  <37.214806, 36.870567, 44.067345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199913, 36.646645, 44.152416>,  <37.175095, 36.273441, 44.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199913, 36.646645, 44.152416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076926, 0.349626, 0.933726,
		0.995104, -0.085205, -0.050078,
		0.062050, 0.933007, -0.354469,
		37.218529, 36.926548, 44.046074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727257, 36.586872, 44.684364>,  <37.175095, 36.273441, 44.294205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727257, 36.586872, 44.684364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494755, 36.886227, 44.556576>,  <37.355255, 37.065842, 44.479904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494755, 36.886227, 44.556576>,  <37.727257, 36.586872, 44.684364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494755, 36.886227, 44.556576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050439, 0.424986, 0.903794,
		0.812160, 0.509217, -0.284771,
		-0.581251, 0.748388, -0.319472,
		37.320381, 37.110744, 44.460735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060535, 37.104424, 44.929379>,  <37.727257, 36.586872, 44.684364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060535, 37.104424, 44.929379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697315, 37.251583, 44.849281>,  <37.479382, 37.339878, 44.801224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697315, 37.251583, 44.849281>,  <38.060535, 37.104424, 44.929379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697315, 37.251583, 44.849281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050800, 0.377807, 0.924490,
		0.415772, 0.849654, -0.324378,
		-0.908049, 0.367898, -0.200244,
		37.424900, 37.361954, 44.789207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121197, 37.786701, 45.231926>,  <38.060535, 37.104424, 44.929379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121197, 37.786701, 45.231926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725475, 37.742649, 45.193684>,  <37.488041, 37.716217, 45.170738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725475, 37.742649, 45.193684>,  <38.121197, 37.786701, 45.231926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725475, 37.742649, 45.193684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141268, 0.560727, 0.815861,
		-0.036240, 0.820644, -0.570289,
		-0.989308, -0.110130, -0.095611,
		37.428684, 37.709610, 45.165001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818588, 38.569248, 45.249027>,  <38.121197, 37.786701, 45.231926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818588, 38.569248, 45.249027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555096, 38.285622, 45.349667>,  <37.396999, 38.115448, 45.410049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555096, 38.285622, 45.349667>,  <37.818588, 38.569248, 45.249027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555096, 38.285622, 45.349667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192778, 0.482308, 0.854526,
		-0.727261, 0.514401, -0.454404,
		-0.658732, -0.709063, 0.251599,
		37.357475, 38.072903, 45.425148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257992, 38.951069, 45.514400>,  <37.818588, 38.569248, 45.249027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257992, 38.951069, 45.514400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187248, 38.581970, 45.651375>,  <37.144802, 38.360512, 45.733559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187248, 38.581970, 45.651375>,  <37.257992, 38.951069, 45.514400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187248, 38.581970, 45.651375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228805, 0.376936, 0.897534,
		-0.957272, 0.080388, -0.277794,
		-0.176862, -0.922745, 0.342437,
		37.134190, 38.305145, 45.754105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753883, 39.057617, 45.846436>,  <37.257992, 38.951069, 45.514400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753883, 39.057617, 45.846436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915390, 38.727577, 46.004517>,  <37.012295, 38.529552, 46.099365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915390, 38.727577, 46.004517>,  <36.753883, 39.057617, 45.846436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915390, 38.727577, 46.004517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038505, 0.416266, 0.908427,
		-0.914053, -0.382007, 0.136303,
		0.403763, -0.825102, 0.395198,
		37.036518, 38.480045, 46.123077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419750, 38.914028, 46.458515>,  <36.753883, 39.057617, 45.846436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419750, 38.914028, 46.458515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760880, 38.710602, 46.505939>,  <36.965557, 38.588547, 46.534393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760880, 38.710602, 46.505939>,  <36.419750, 38.914028, 46.458515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760880, 38.710602, 46.505939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026973, 0.269639, 0.962584,
		-0.521505, -0.817714, 0.243672,
		0.852822, -0.508565, 0.118562,
		37.016727, 38.558033, 46.541508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282276, 38.548832, 46.987995>,  <36.419750, 38.914028, 46.458515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282276, 38.548832, 46.987995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678070, 38.594208, 46.952087>,  <36.915546, 38.621433, 46.930542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678070, 38.594208, 46.952087>,  <36.282276, 38.548832, 46.987995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678070, 38.594208, 46.952087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034561, 0.417208, 0.908154,
		0.140471, -0.901704, 0.408899,
		0.989481, 0.113437, -0.089769,
		36.974915, 38.628239, 46.925156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449535, 38.411064, 47.676483>,  <36.282276, 38.548832, 46.987995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449535, 38.411064, 47.676483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784534, 38.570721, 47.527203>,  <36.985535, 38.666515, 47.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784534, 38.570721, 47.527203>,  <36.449535, 38.411064, 47.676483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784534, 38.570721, 47.527203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203067, 0.406720, 0.890698,
		0.507304, -0.821744, 0.259575,
		0.837500, 0.399143, -0.373200,
		37.035786, 38.690464, 47.415241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959934, 38.176682, 48.121433>,  <36.449535, 38.411064, 47.676483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959934, 38.176682, 48.121433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096706, 38.498661, 47.927467>,  <37.178768, 38.691849, 47.811089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096706, 38.498661, 47.927467>,  <36.959934, 38.176682, 48.121433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096706, 38.498661, 47.927467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280972, 0.404838, 0.870150,
		0.896739, -0.433774, -0.087743,
		0.341927, 0.804951, -0.484913,
		37.199284, 38.740147, 47.781994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586857, 38.140408, 48.423332>,  <36.959934, 38.176682, 48.121433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586857, 38.140408, 48.423332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563732, 38.507645, 48.266479>,  <37.549858, 38.727985, 48.172367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563732, 38.507645, 48.266479>,  <37.586857, 38.140408, 48.423332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563732, 38.507645, 48.266479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214941, 0.395026, 0.893171,
		0.974914, -0.032653, -0.220171,
		-0.057809, 0.918090, -0.392135,
		37.546391, 38.783073, 48.148838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161175, 38.401905, 48.680950>,  <37.586857, 38.140408, 48.423332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161175, 38.401905, 48.680950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937443, 38.720734, 48.589890>,  <37.803204, 38.912029, 48.535252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937443, 38.720734, 48.589890>,  <38.161175, 38.401905, 48.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937443, 38.720734, 48.589890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197646, 0.394944, 0.897193,
		0.805038, 0.456832, -0.378443,
		-0.559330, 0.797072, -0.227654,
		37.769646, 38.959854, 48.521595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580097, 38.887943, 49.073204>,  <38.161175, 38.401905, 48.680950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580097, 38.887943, 49.073204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239513, 39.071800, 48.972214>,  <38.035164, 39.182114, 48.911617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239513, 39.071800, 48.972214>,  <38.580097, 38.887943, 49.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239513, 39.071800, 48.972214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012445, 0.499021, 0.866501,
		0.524271, 0.734649, -0.430616,
		-0.851461, 0.459640, -0.252479,
		37.984074, 39.209694, 48.896469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620106, 39.429333, 49.413578>,  <38.580097, 38.887943, 49.073204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620106, 39.429333, 49.413578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227570, 39.447155, 49.338764>,  <37.992046, 39.457848, 49.293877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227570, 39.447155, 49.338764>,  <38.620106, 39.429333, 49.413578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227570, 39.447155, 49.338764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138757, 0.509252, 0.849358,
		0.133092, 0.859464, -0.493568,
		-0.981342, 0.044556, -0.187034,
		37.933167, 39.460522, 49.282654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796623, 40.169395, 49.375454>,  <38.620106, 39.429333, 49.413578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796623, 40.169395, 49.375454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887970, 40.557796, 49.347187>,  <38.942780, 40.790836, 49.330227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887970, 40.557796, 49.347187>,  <38.796623, 40.169395, 49.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887970, 40.557796, 49.347187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016527, -0.076443, -0.996937,
		-0.973434, 0.226503, -0.033505,
		0.228370, 0.971006, -0.070669,
		38.956482, 40.849098, 49.325985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320004, 40.653629, 48.967506>,  <38.796623, 40.169395, 49.375454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320004, 40.653629, 48.967506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661263, 40.861938, 48.979767>,  <38.866016, 40.986923, 48.987125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661263, 40.861938, 48.979767>,  <38.320004, 40.653629, 48.967506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661263, 40.861938, 48.979767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029025, 0.011283, -0.999515,
		-0.520868, 0.853620, -0.005489,
		0.853144, 0.520774, 0.030654,
		38.917206, 41.018169, 48.988964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243454, 41.156391, 48.549015>,  <38.320004, 40.653629, 48.967506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243454, 41.156391, 48.549015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642117, 41.125183, 48.558788>,  <38.881313, 41.106457, 48.564651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.642117, 41.125183, 48.558788>,  <38.243454, 41.156391, 48.549015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642117, 41.125183, 48.558788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020393, -0.052176, -0.998430,
		0.079176, 0.995585, -0.050410,
		0.996652, -0.078024, 0.024434,
		38.941113, 41.101776, 48.566120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536911, 41.607929, 48.045250>,  <38.243454, 41.156391, 48.549015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536911, 41.607929, 48.045250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840942, 41.352749, 48.094711>,  <39.023361, 41.199638, 48.124390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840942, 41.352749, 48.094711>,  <38.536911, 41.607929, 48.045250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840942, 41.352749, 48.094711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068230, -0.110893, -0.991488,
		0.646236, 0.762048, -0.040761,
		0.760082, -0.637954, 0.123657,
		39.068966, 41.161362, 48.131809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870037, 41.893761, 47.595970>,  <38.536911, 41.607929, 48.045250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870037, 41.893761, 47.595970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038822, 41.537998, 47.666279>,  <39.140095, 41.324539, 47.708466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038822, 41.537998, 47.666279>,  <38.870037, 41.893761, 47.595970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038822, 41.537998, 47.666279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118332, -0.138188, -0.983312,
		0.898856, 0.435723, 0.046935,
		0.421966, -0.889409, 0.175771,
		39.165413, 41.271175, 47.719009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360630, 41.842449, 47.132790>,  <38.870037, 41.893761, 47.595970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360630, 41.842449, 47.132790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297516, 41.460327, 47.232792>,  <39.259647, 41.231056, 47.292793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297516, 41.460327, 47.232792>,  <39.360630, 41.842449, 47.132790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297516, 41.460327, 47.232792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160641, -0.274634, -0.948035,
		0.974320, -0.109425, 0.196793,
		-0.157785, -0.955302, 0.250003,
		39.250179, 41.173737, 47.307793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724758, 41.507843, 46.615601>,  <39.360630, 41.842449, 47.132790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724758, 41.507843, 46.615601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509762, 41.209606, 46.773182>,  <39.380764, 41.030663, 46.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509762, 41.209606, 46.773182>,  <39.724758, 41.507843, 46.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509762, 41.209606, 46.773182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069775, -0.426248, -0.901911,
		0.840379, -0.512256, 0.177081,
		-0.537490, -0.745591, 0.393953,
		39.348515, 40.985928, 46.891369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987312, 40.861317, 46.148750>,  <39.724758, 41.507843, 46.615601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987312, 40.861317, 46.148750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659557, 40.737385, 46.341663>,  <39.462902, 40.663025, 46.457413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659557, 40.737385, 46.341663>,  <39.987312, 40.861317, 46.148750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659557, 40.737385, 46.341663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263782, -0.543174, -0.797108,
		0.508937, -0.780362, 0.363343,
		-0.819391, -0.309835, 0.482287,
		39.413738, 40.644436, 46.486351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023304, 40.175377, 46.081970>,  <39.987312, 40.861317, 46.148750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023304, 40.175377, 46.081970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638367, 40.267200, 46.140221>,  <39.407406, 40.322296, 46.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638367, 40.267200, 46.140221>,  <40.023304, 40.175377, 46.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638367, 40.267200, 46.140221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235576, -0.436847, -0.868141,
		-0.135675, -0.869751, 0.474474,
		-0.962339, 0.229560, 0.145623,
		39.349667, 40.336067, 46.183907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570160, 39.533451, 45.821014>,  <40.023304, 40.175377, 46.081970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570160, 39.533451, 45.821014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328461, 39.851879, 45.834614>,  <39.183441, 40.042938, 45.842773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328461, 39.851879, 45.834614>,  <39.570160, 39.533451, 45.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328461, 39.851879, 45.834614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387334, -0.256179, -0.885633,
		-0.696319, -0.548307, 0.463141,
		-0.604246, 0.796073, 0.033996,
		39.147186, 40.090702, 45.844814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789650, 39.288280, 45.922470>,  <39.570160, 39.533451, 45.821014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789650, 39.288280, 45.922470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821316, 39.645927, 45.746155>,  <38.840313, 39.860516, 45.640366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821316, 39.645927, 45.746155>,  <38.789650, 39.288280, 45.922470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821316, 39.645927, 45.746155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546872, -0.330744, -0.769116,
		-0.833465, 0.301939, 0.462784,
		0.079163, 0.894115, -0.440786,
		38.845066, 39.914162, 45.613918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236740, 39.308777, 45.475201>,  <38.789650, 39.288280, 45.922470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236740, 39.308777, 45.475201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458427, 39.611946, 45.337563>,  <38.591438, 39.793846, 45.254978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458427, 39.611946, 45.337563>,  <38.236740, 39.308777, 45.475201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458427, 39.611946, 45.337563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350778, -0.162227, -0.922300,
		-0.754851, 0.631855, 0.175953,
		0.554216, 0.757919, -0.344099,
		38.624691, 39.839321, 45.234333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786648, 39.648731, 44.968002>,  <38.236740, 39.308777, 45.475201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786648, 39.648731, 44.968002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156120, 39.775398, 44.881710>,  <38.377804, 39.851398, 44.829933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156120, 39.775398, 44.881710>,  <37.786648, 39.648731, 44.968002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156120, 39.775398, 44.881710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164822, -0.179898, -0.969779,
		-0.345907, 0.931321, -0.113975,
		0.923679, 0.316668, -0.215730,
		38.433224, 39.870399, 44.816990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744377, 40.102837, 44.357544>,  <37.786648, 39.648731, 44.968002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744377, 40.102837, 44.357544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 39.982365, 44.371204>,  <38.354271, 39.910084, 44.379402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 39.982365, 44.371204>,  <37.744377, 40.102837, 44.357544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125561, 39.982365, 44.371204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038977, -0.233499, -0.971575,
		0.300591, 0.924538, -0.234253,
		0.952956, -0.301177, 0.034152,
		38.411449, 39.892010, 44.381451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223053, 40.430931, 43.818909>,  <37.744377, 40.102837, 44.357544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223053, 40.430931, 43.818909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434662, 40.097580, 43.882919>,  <38.561626, 39.897568, 43.921326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434662, 40.097580, 43.882919>,  <38.223053, 40.430931, 43.818909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434662, 40.097580, 43.882919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014859, -0.197644, -0.980161,
		0.848478, 0.516150, -0.116941,
		0.529023, -0.833383, 0.160027,
		38.593369, 39.847565, 43.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633335, 40.486134, 43.255962>,  <38.223053, 40.430931, 43.818909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633335, 40.486134, 43.255962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690079, 40.104305, 43.360786>,  <38.724125, 39.875210, 43.423679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690079, 40.104305, 43.360786>,  <38.633335, 40.486134, 43.255962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690079, 40.104305, 43.360786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096674, -0.250109, -0.963379,
		0.985154, 0.162001, 0.056801,
		0.141863, -0.954568, 0.262057,
		38.732639, 39.817936, 43.439404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085655, 40.290451, 42.772488>,  <38.633335, 40.486134, 43.255962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085655, 40.290451, 42.772488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955086, 39.937771, 42.908752>,  <38.876743, 39.726162, 42.990513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955086, 39.937771, 42.908752>,  <39.085655, 40.290451, 42.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955086, 39.937771, 42.908752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164083, -0.302074, -0.939057,
		0.930874, -0.362424, -0.046070,
		-0.326420, -0.881703, 0.340660,
		38.857159, 39.673260, 43.010952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439594, 39.813061, 42.488510>,  <39.085655, 40.290451, 42.772488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439594, 39.813061, 42.488510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090748, 39.654163, 42.602776>,  <38.881439, 39.558826, 42.671337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090748, 39.654163, 42.602776>,  <39.439594, 39.813061, 42.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090748, 39.654163, 42.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104918, -0.418427, -0.902170,
		0.477912, -0.816772, 0.323240,
		-0.872119, -0.397244, 0.285666,
		38.829113, 39.534988, 42.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497059, 39.162918, 42.169964>,  <39.439594, 39.813061, 42.488510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497059, 39.162918, 42.169964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 39.228428, 42.248409>,  <38.878304, 39.267735, 42.295475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 39.228428, 42.248409>,  <39.497059, 39.162918, 42.169964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110336, 39.228428, 42.248409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244858, -0.374691, -0.894232,
		-0.072969, -0.912571, 0.402355,
		-0.966809, 0.163771, 0.196110,
		38.820293, 39.277561, 42.307243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169056, 38.458294, 42.031921>,  <39.497059, 39.162918, 42.169964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169056, 38.458294, 42.031921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875523, 38.729996, 42.027973>,  <38.699402, 38.893017, 42.025604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875523, 38.729996, 42.027973>,  <39.169056, 38.458294, 42.031921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875523, 38.729996, 42.027973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214207, -0.245152, -0.945524,
		-0.644674, -0.691744, 0.325402,
		-0.733833, 0.679258, -0.009867,
		38.655373, 38.933773, 42.025013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658161, 38.178383, 41.696747>,  <39.169056, 38.458294, 42.031921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658161, 38.178383, 41.696747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543049, 38.560585, 41.670856>,  <38.473980, 38.789906, 41.655323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543049, 38.560585, 41.670856>,  <38.658161, 38.178383, 41.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543049, 38.560585, 41.670856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363133, -0.171412, -0.915834,
		-0.886181, -0.240054, 0.396305,
		-0.287781, 0.955506, -0.064730,
		38.456715, 38.847237, 41.651436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951469, 38.158554, 41.385777>,  <38.658161, 38.178383, 41.696747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951469, 38.158554, 41.385777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114765, 38.519886, 41.333107>,  <38.212742, 38.736687, 41.301506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114765, 38.519886, 41.333107>,  <37.951469, 38.158554, 41.385777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114765, 38.519886, 41.333107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145185, -0.078159, -0.986313,
		-0.901256, 0.421767, 0.099242,
		0.408238, 0.903329, -0.131675,
		38.237236, 38.790886, 41.293606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409637, 38.604740, 41.018322>,  <37.951469, 38.158554, 41.385777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409637, 38.604740, 41.018322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770870, 38.752808, 40.931225>,  <37.987610, 38.841648, 40.878967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770870, 38.752808, 40.931225>,  <37.409637, 38.604740, 41.018322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770870, 38.752808, 40.931225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180975, -0.131785, -0.974618,
		-0.389470, 0.919569, -0.052022,
		0.903084, 0.370170, -0.217745,
		38.041794, 38.863857, 40.865902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348164, 38.848515, 40.427227>,  <37.409637, 38.604740, 41.018322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348164, 38.848515, 40.427227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746269, 38.826809, 40.459488>,  <37.985134, 38.813786, 40.478844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746269, 38.826809, 40.459488>,  <37.348164, 38.848515, 40.427227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746269, 38.826809, 40.459488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075134, -0.096956, -0.992449,
		0.061678, 0.993808, -0.092420,
		0.995264, -0.054269, 0.080649,
		38.044849, 38.810528, 40.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506573, 39.241550, 39.802414>,  <37.348164, 38.848515, 40.427227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506573, 39.241550, 39.802414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826187, 39.025345, 39.907772>,  <38.017956, 38.895622, 39.970989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826187, 39.025345, 39.907772>,  <37.506573, 39.241550, 39.802414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826187, 39.025345, 39.907772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236318, -0.120507, -0.964174,
		0.552892, 0.832659, 0.031444,
		0.799040, -0.540515, 0.263400,
		38.065899, 38.863190, 39.986794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154068, 39.472168, 39.372391>,  <37.506573, 39.241550, 39.802414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154068, 39.472168, 39.372391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255646, 39.108112, 39.503326>,  <38.316593, 38.889679, 39.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255646, 39.108112, 39.503326>,  <38.154068, 39.472168, 39.372391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255646, 39.108112, 39.503326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421399, -0.200514, -0.884431,
		0.870594, 0.362538, 0.332614,
		0.253946, -0.910143, 0.327339,
		38.331829, 38.835068, 39.601528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861855, 39.253384, 39.101887>,  <38.154068, 39.472168, 39.372391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861855, 39.253384, 39.101887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680271, 38.911968, 39.204170>,  <38.571323, 38.707119, 39.265541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680271, 38.911968, 39.204170>,  <38.861855, 39.253384, 39.101887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680271, 38.911968, 39.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312185, -0.421156, -0.851568,
		0.834545, -0.306744, 0.457650,
		-0.453955, -0.853543, 0.255713,
		38.544083, 38.655907, 39.280884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307304, 38.837223, 38.966770>,  <38.861855, 39.253384, 39.101887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307304, 38.837223, 38.966770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979630, 38.607819, 38.964848>,  <38.783024, 38.470177, 38.963696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979630, 38.607819, 38.964848>,  <39.307304, 38.837223, 38.966770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979630, 38.607819, 38.964848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242426, -0.338653, -0.909145,
		0.519777, -0.745921, 0.416453,
		-0.819184, -0.573511, -0.004806,
		38.733875, 38.435764, 38.963406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538994, 38.117058, 38.690060>,  <39.307304, 38.837223, 38.966770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538994, 38.117058, 38.690060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141476, 38.131348, 38.647919>,  <38.902966, 38.139923, 38.622635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141476, 38.131348, 38.647919>,  <39.538994, 38.117058, 38.690060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141476, 38.131348, 38.647919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089700, -0.302808, -0.948821,
		-0.065798, -0.952382, 0.297724,
		-0.993793, 0.035725, -0.105353,
		38.843338, 38.142067, 38.616314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354877, 37.453396, 38.361275>,  <39.538994, 38.117058, 38.690060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354877, 37.453396, 38.361275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079475, 37.734909, 38.291248>,  <38.914234, 37.903816, 38.249233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079475, 37.734909, 38.291248>,  <39.354877, 37.453396, 38.361275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079475, 37.734909, 38.291248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039761, -0.277665, -0.959855,
		-0.724142, -0.653902, 0.219157,
		-0.688504, 0.703785, -0.175070,
		38.872925, 37.946045, 38.238728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879688, 37.151031, 37.889938>,  <39.354877, 37.453396, 38.361275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879688, 37.151031, 37.889938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761810, 37.530556, 37.844498>,  <38.691082, 37.758270, 37.817234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761810, 37.530556, 37.844498>,  <38.879688, 37.151031, 37.889938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761810, 37.530556, 37.844498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175190, -0.170513, -0.969656,
		-0.939396, -0.265849, 0.216472,
		-0.294693, 0.948815, -0.113605,
		38.673401, 37.815201, 37.810417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268169, 37.081173, 37.406033>,  <38.879688, 37.151031, 37.889938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268169, 37.081173, 37.406033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356461, 37.471043, 37.391647>,  <38.409435, 37.704964, 37.383015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356461, 37.471043, 37.391647>,  <38.268169, 37.081173, 37.406033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356461, 37.471043, 37.391647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149979, -0.002516, -0.988686,
		-0.963734, 0.223628, 0.145625,
		0.220731, 0.974671, -0.035965,
		38.422680, 37.763443, 37.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775124, 37.356659, 37.079887>,  <38.268169, 37.081173, 37.406033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775124, 37.356659, 37.079887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064606, 37.631050, 37.049747>,  <38.238297, 37.795685, 37.031662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064606, 37.631050, 37.049747>,  <37.775124, 37.356659, 37.079887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064606, 37.631050, 37.049747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174368, 0.076115, -0.981734,
		-0.667716, 0.723627, 0.174698,
		0.723707, 0.685981, -0.075354,
		38.281719, 37.836845, 37.027142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453793, 37.987446, 36.751331>,  <37.775124, 37.356659, 37.079887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453793, 37.987446, 36.751331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848969, 37.980946, 36.689739>,  <38.086075, 37.977047, 36.652782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848969, 37.980946, 36.689739>,  <37.453793, 37.987446, 36.751331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848969, 37.980946, 36.689739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153923, 0.004994, -0.988070,
		0.016826, 0.999855, 0.002432,
		0.987940, -0.016251, -0.153985,
		38.145351, 37.976070, 36.643543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597080, 38.450672, 36.205830>,  <37.453793, 37.987446, 36.751331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597080, 38.450672, 36.205830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943005, 38.250381, 36.220673>,  <38.150558, 38.130207, 36.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943005, 38.250381, 36.220673>,  <37.597080, 38.450672, 36.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943005, 38.250381, 36.220673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068192, 0.043916, -0.996705,
		0.497446, 0.864491, 0.072125,
		0.864810, -0.500726, 0.037105,
		38.202446, 38.100163, 36.231804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092690, 38.881252, 35.833054>,  <37.597080, 38.450672, 36.205830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092690, 38.881252, 35.833054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212421, 38.499752, 35.844109>,  <38.284260, 38.270851, 35.850742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212421, 38.499752, 35.844109>,  <38.092690, 38.881252, 35.833054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212421, 38.499752, 35.844109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016383, -0.023829, -0.999582,
		0.954008, 0.299661, 0.008493,
		0.299333, -0.953748, 0.027642,
		38.302219, 38.213627, 35.852402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682087, 38.864510, 35.413212>,  <38.092690, 38.881252, 35.833054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682087, 38.864510, 35.413212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562546, 38.484165, 35.445587>,  <38.490822, 38.255959, 35.465012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562546, 38.484165, 35.445587>,  <38.682087, 38.864510, 35.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562546, 38.484165, 35.445587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305604, -0.175708, -0.935806,
		0.904041, -0.254938, 0.343098,
		-0.298857, -0.950860, 0.080937,
		38.472889, 38.198906, 35.469868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272755, 38.425488, 35.074245>,  <38.682087, 38.864510, 35.413212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272755, 38.425488, 35.074245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935966, 38.210087, 35.087502>,  <38.733894, 38.080845, 35.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935966, 38.210087, 35.087502>,  <39.272755, 38.425488, 35.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935966, 38.210087, 35.087502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072311, -0.173505, -0.982175,
		0.534653, -0.824567, 0.185026,
		-0.841972, -0.538503, 0.033139,
		38.683376, 38.048534, 35.097443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477314, 37.763271, 34.927071>,  <39.272755, 38.425488, 35.074245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477314, 37.763271, 34.927071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091648, 37.727993, 34.826981>,  <38.860249, 37.706825, 34.766926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091648, 37.727993, 34.826981>,  <39.477314, 37.763271, 34.927071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091648, 37.727993, 34.826981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263860, -0.220265, -0.939075,
		0.027705, -0.971445, 0.235641,
		-0.964163, -0.088193, -0.250223,
		38.802399, 37.701534, 34.751915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419998, 37.152416, 34.508327>,  <39.477314, 37.763271, 34.927071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419998, 37.152416, 34.508327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098892, 37.375622, 34.424240>,  <38.906227, 37.509544, 34.373787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098892, 37.375622, 34.424240>,  <39.419998, 37.152416, 34.508327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098892, 37.375622, 34.424240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094410, -0.229157, -0.968800,
		-0.588774, -0.797566, 0.131278,
		-0.802765, 0.558011, -0.210220,
		38.858063, 37.543026, 34.361176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676147, 36.835194, 35.056572>,  <39.419998, 37.152416, 34.508327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676147, 36.835194, 35.056572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608070, 36.466919, 35.197067>,  <39.567226, 36.245953, 35.281364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608070, 36.466919, 35.197067>,  <39.676147, 36.835194, 35.056572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608070, 36.466919, 35.197067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758477, -0.349945, -0.549774,
		0.629085, 0.172844, 0.757877,
		-0.170190, -0.920687, 0.351243,
		39.557014, 36.190712, 35.302441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308075, 36.533642, 35.215897>,  <39.676147, 36.835194, 35.056572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308075, 36.533642, 35.215897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034527, 36.256824, 35.123463>,  <39.870399, 36.090733, 35.068001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034527, 36.256824, 35.123463>,  <40.308075, 36.533642, 35.215897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034527, 36.256824, 35.123463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551273, -0.282636, -0.784993,
		0.477937, -0.664222, 0.574791,
		-0.683867, -0.692045, -0.231085,
		39.829369, 36.049210, 35.054138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548645, 35.944813, 35.137329>,  <40.308075, 36.533642, 35.215897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548645, 35.944813, 35.137329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261734, 35.967869, 34.859570>,  <40.089588, 35.981701, 34.692913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261734, 35.967869, 34.859570>,  <40.548645, 35.944813, 35.137329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261734, 35.967869, 34.859570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683529, -0.135278, -0.717278,
		-0.135278, -0.989130, 0.057636,
		0.717278, -0.057636, 0.694399,
		40.046551, 35.985161, 34.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816925, 35.477791, 34.787125>,  <40.548645, 35.944813, 35.137329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816925, 35.477791, 34.787125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580051, 35.729908, 34.586311>,  <40.437927, 35.881180, 34.465824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580051, 35.729908, 34.586311>,  <40.816925, 35.477791, 34.787125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580051, 35.729908, 34.586311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626741, -0.031313, -0.778598,
		-0.506469, -0.775722, -0.376490,
		-0.592187, 0.630297, -0.502036,
		40.402397, 35.918999, 34.435699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721142, 35.180042, 34.062096>,  <40.816925, 35.477791, 34.787125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721142, 35.180042, 34.062096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741180, 35.575256, 34.120434>,  <40.753204, 35.812386, 34.155437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741180, 35.575256, 34.120434>,  <40.721142, 35.180042, 34.062096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741180, 35.575256, 34.120434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763120, 0.056335, -0.643797,
		-0.644312, 0.143549, -0.751170,
		0.050099, 0.988038, 0.145842,
		40.756210, 35.871670, 34.164185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601322, 35.583809, 33.357079>,  <40.721142, 35.180042, 34.062096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601322, 35.583809, 33.357079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830627, 35.766979, 33.628864>,  <40.968212, 35.876881, 33.791935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830627, 35.766979, 33.628864>,  <40.601322, 35.583809, 33.357079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830627, 35.766979, 33.628864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739804, 0.067199, -0.669459,
		-0.352223, 0.886446, -0.300253,
		0.573263, 0.457927, 0.679465,
		41.002605, 35.904358, 33.832703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950108, 36.246269, 33.044270>,  <40.601322, 35.583809, 33.357079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950108, 36.246269, 33.044270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150688, 36.063602, 33.338207>,  <41.271038, 35.954002, 33.514572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150688, 36.063602, 33.338207>,  <40.950108, 36.246269, 33.044270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150688, 36.063602, 33.338207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846088, 0.081374, -0.526795,
		0.180773, 0.885908, 0.427186,
		0.501454, -0.456667, 0.734846,
		41.301125, 35.926601, 33.558662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547459, 36.640202, 33.167900>,  <40.950108, 36.246269, 33.044270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547459, 36.640202, 33.167900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606636, 36.264568, 33.291992>,  <41.642143, 36.039188, 33.366447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606636, 36.264568, 33.291992>,  <41.547459, 36.640202, 33.167900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606636, 36.264568, 33.291992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912018, 0.008208, -0.410068,
		0.382541, 0.343598, 0.857673,
		0.147939, -0.939081, 0.310228,
		41.651016, 35.982845, 33.385059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190678, 36.515648, 32.736774>,  <41.547459, 36.640202, 33.167900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190678, 36.515648, 32.736774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563095, 36.369682, 32.737328>,  <42.786545, 36.282101, 32.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563095, 36.369682, 32.737328>,  <42.190678, 36.515648, 32.736774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563095, 36.369682, 32.737328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159265, 0.409749, 0.898188,
		-0.328330, -0.836027, 0.439610,
		0.931039, -0.364917, 0.001383,
		42.842407, 36.260208, 32.737743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238079, 36.262463, 33.381172>,  <42.190678, 36.515648, 32.736774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238079, 36.262463, 33.381172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613655, 36.316528, 33.254604>,  <42.839001, 36.348969, 33.178665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613655, 36.316528, 33.254604>,  <42.238079, 36.262463, 33.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613655, 36.316528, 33.254604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225151, 0.454033, 0.862068,
		0.260184, -0.880673, 0.395879,
		0.938942, 0.135164, -0.316416,
		42.895336, 36.357079, 33.159679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609150, 36.069656, 33.961483>,  <42.238079, 36.262463, 33.381172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609150, 36.069656, 33.961483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845360, 36.292721, 33.728142>,  <42.987083, 36.426559, 33.588139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845360, 36.292721, 33.728142>,  <42.609150, 36.069656, 33.961483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845360, 36.292721, 33.728142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255435, 0.556520, 0.790593,
		0.765532, -0.615869, 0.186190,
		0.590520, 0.557665, -0.583348,
		43.022514, 36.460022, 33.553139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260086, 36.036140, 34.303631>,  <42.609150, 36.069656, 33.961483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260086, 36.036140, 34.303631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257332, 36.340710, 34.044342>,  <43.255680, 36.523449, 33.888767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257332, 36.340710, 34.044342>,  <43.260086, 36.036140, 34.303631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257332, 36.340710, 34.044342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315077, 0.616871, 0.721247,
		0.949041, -0.199271, -0.244155,
		-0.006889, 0.761421, -0.648221,
		43.255264, 36.569138, 33.849876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974163, 36.337532, 34.298233>,  <43.260086, 36.036140, 34.303631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974163, 36.337532, 34.298233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715237, 36.622593, 34.190075>,  <43.559883, 36.793629, 34.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715237, 36.622593, 34.190075>,  <43.974163, 36.337532, 34.298233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715237, 36.622593, 34.190075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372682, 0.605366, 0.703307,
		0.664901, 0.354488, -0.657454,
		-0.647314, 0.712650, -0.270397,
		43.521042, 36.836388, 34.108955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276592, 36.829891, 34.439705>,  <43.974163, 36.337532, 34.298233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276592, 36.829891, 34.439705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900894, 36.966099, 34.422443>,  <43.675476, 37.047821, 34.412086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900894, 36.966099, 34.422443>,  <44.276592, 36.829891, 34.439705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900894, 36.966099, 34.422443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197221, 0.638296, 0.744098,
		0.280920, 0.690382, -0.666675,
		-0.939249, 0.340514, -0.043153,
		43.619118, 37.068253, 34.409496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386406, 37.529919, 34.628689>,  <44.276592, 36.829891, 34.439705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386406, 37.529919, 34.628689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992386, 37.466187, 34.654911>,  <43.755974, 37.427948, 34.670643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.992386, 37.466187, 34.654911>,  <44.386406, 37.529919, 34.628689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.992386, 37.466187, 34.654911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023158, 0.499484, 0.866013,
		-0.170728, 0.851545, -0.495705,
		-0.985046, -0.159332, 0.065556,
		43.696873, 37.418388, 34.674580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054474, 38.147518, 34.759090>,  <44.386406, 37.529919, 34.628689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054474, 38.147518, 34.759090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824810, 37.854965, 34.906284>,  <43.687012, 37.679432, 34.994602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824810, 37.854965, 34.906284>,  <44.054474, 38.147518, 34.759090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824810, 37.854965, 34.906284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027015, 0.466134, 0.884302,
		-0.818295, 0.497792, -0.287395,
		-0.574163, -0.731384, 0.367987,
		43.652561, 37.635551, 35.016682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585690, 38.512314, 35.169041>,  <44.054474, 38.147518, 34.759090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585690, 38.512314, 35.169041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607121, 38.125401, 35.268230>,  <43.619980, 37.893253, 35.327744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607121, 38.125401, 35.268230>,  <43.585690, 38.512314, 35.169041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607121, 38.125401, 35.268230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005686, 0.248032, 0.968735,
		-0.998547, -0.053312, 0.007789,
		0.053577, -0.967284, 0.247975,
		43.623196, 37.835217, 35.342625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338058, 38.535213, 35.797981>,  <43.585690, 38.512314, 35.169041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338058, 38.535213, 35.797981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475735, 38.160526, 35.823547>,  <43.558338, 37.935715, 35.838886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475735, 38.160526, 35.823547>,  <43.338058, 38.535213, 35.797981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475735, 38.160526, 35.823547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046310, 0.051052, 0.997622,
		-0.937758, -0.346330, -0.025808,
		0.344189, -0.936723, 0.063913,
		43.578991, 37.879509, 35.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857582, 38.212631, 36.257889>,  <43.338058, 38.535213, 35.797981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857582, 38.212631, 36.257889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 37.980099, 36.250420>,  <43.378193, 37.840580, 36.245937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 37.980099, 36.250420>,  <42.857582, 38.212631, 36.257889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182964, 37.980099, 36.250420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065212, 0.059253, 0.996111,
		-0.577965, -0.811506, 0.086110,
		0.813452, -0.581332, -0.018673,
		43.426998, 37.805698, 36.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748058, 37.622482, 36.672440>,  <42.857582, 38.212631, 36.257889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748058, 37.622482, 36.672440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146225, 37.633629, 36.635841>,  <43.385124, 37.640316, 36.613880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146225, 37.633629, 36.635841>,  <42.748058, 37.622482, 36.672440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146225, 37.633629, 36.635841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093478, -0.080869, 0.992332,
		0.020253, -0.996335, -0.083103,
		0.995416, 0.027866, -0.091497,
		43.444851, 37.641987, 36.608391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051144, 37.087036, 36.997372>,  <42.748058, 37.622482, 36.672440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051144, 37.087036, 36.997372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348225, 37.354816, 36.991276>,  <43.526474, 37.515484, 36.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348225, 37.354816, 36.991276>,  <43.051144, 37.087036, 36.997372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348225, 37.354816, 36.991276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196197, -0.195797, 0.960818,
		0.640237, -0.716589, -0.276762,
		0.742700, 0.669451, -0.015236,
		43.571033, 37.555653, 36.986706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428440, 36.867516, 37.441490>,  <43.051144, 37.087036, 36.997372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428440, 36.867516, 37.441490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631786, 37.210033, 37.405006>,  <43.753796, 37.415546, 37.383118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631786, 37.210033, 37.405006>,  <43.428440, 36.867516, 37.441490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631786, 37.210033, 37.405006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214010, -0.023034, 0.976560,
		0.834125, -0.515968, -0.194966,
		0.508365, 0.856298, -0.091209,
		43.784294, 37.466923, 37.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057018, 36.758205, 37.759235>,  <43.428440, 36.867516, 37.441490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057018, 36.758205, 37.759235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010113, 37.155441, 37.757317>,  <43.981968, 37.393784, 37.756165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010113, 37.155441, 37.757317>,  <44.057018, 36.758205, 37.759235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010113, 37.155441, 37.757317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187945, 0.026931, 0.981811,
		0.975155, 0.114229, -0.189804,
		-0.117263, 0.993089, -0.004793,
		43.974934, 37.453369, 37.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669876, 37.139866, 38.048012>,  <44.057018, 36.758205, 37.759235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669876, 37.139866, 38.048012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370518, 37.402950, 38.082218>,  <44.190903, 37.560802, 38.102741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370518, 37.402950, 38.082218>,  <44.669876, 37.139866, 38.048012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370518, 37.402950, 38.082218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224793, 0.130227, 0.965665,
		0.623995, 0.741925, -0.245311,
		-0.748397, 0.657715, 0.085518,
		44.146000, 37.600266, 38.107872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936813, 37.678417, 38.361790>,  <44.669876, 37.139866, 38.048012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936813, 37.678417, 38.361790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542606, 37.674606, 38.429508>,  <44.306080, 37.672321, 38.470139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542606, 37.674606, 38.429508>,  <44.936813, 37.678417, 38.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542606, 37.674606, 38.429508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167583, 0.097383, 0.981036,
		-0.025828, 0.995201, -0.094377,
		-0.985520, -0.009523, 0.169294,
		44.246952, 37.671749, 38.480297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958511, 37.994503, 38.994991>,  <44.936813, 37.678417, 38.361790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958511, 37.994503, 38.994991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579895, 37.869102, 38.964577>,  <44.352726, 37.793861, 38.946327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579895, 37.869102, 38.964577>,  <44.958511, 37.994503, 38.994991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579895, 37.869102, 38.964577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168135, 0.278267, 0.945673,
		-0.275312, 0.907901, -0.316101,
		-0.946538, -0.313503, -0.076039,
		44.295933, 37.775051, 38.941765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568836, 38.407604, 39.527920>,  <44.958511, 37.994503, 38.994991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568836, 38.407604, 39.527920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344398, 38.087826, 39.442078>,  <44.209736, 37.895958, 39.390572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344398, 38.087826, 39.442078>,  <44.568836, 38.407604, 39.527920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344398, 38.087826, 39.442078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049520, -0.226376, 0.972780,
		-0.826268, 0.556451, 0.087430,
		-0.561097, -0.799447, -0.214603,
		44.176071, 37.847992, 39.377697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044289, 38.403500, 39.970810>,  <44.568836, 38.407604, 39.527920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044289, 38.403500, 39.970810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060452, 38.021191, 39.854275>,  <44.070148, 37.791805, 39.784355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060452, 38.021191, 39.854275>,  <44.044289, 38.403500, 39.970810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060452, 38.021191, 39.854275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002996, -0.291687, 0.956509,
		-0.999179, -0.037773, -0.014649,
		0.040403, -0.955768, -0.291334,
		44.072571, 37.734459, 39.766876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667618, 37.991879, 40.449123>,  <44.044289, 38.403500, 39.970810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667618, 37.991879, 40.449123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910633, 37.714027, 40.295040>,  <44.056442, 37.547318, 40.202591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910633, 37.714027, 40.295040>,  <43.667618, 37.991879, 40.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910633, 37.714027, 40.295040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151909, -0.374403, 0.914738,
		-0.779626, -0.614258, -0.121945,
		0.607541, -0.694629, -0.385205,
		44.092896, 37.505638, 40.179478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576923, 37.289005, 40.717670>,  <43.667618, 37.991879, 40.449123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576923, 37.289005, 40.717670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955616, 37.326599, 40.594467>,  <44.182831, 37.349155, 40.520546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.955616, 37.326599, 40.594467>,  <43.576923, 37.289005, 40.717670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955616, 37.326599, 40.594467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317019, -0.440002, 0.840177,
		-0.056557, -0.893065, -0.446359,
		0.946731, 0.093986, -0.308004,
		44.239635, 37.354794, 40.502068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996151, 36.584400, 40.890549>,  <43.576923, 37.289005, 40.717670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996151, 36.584400, 40.890549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239498, 36.900898, 40.865826>,  <44.385506, 37.090797, 40.850990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.239498, 36.900898, 40.865826>,  <43.996151, 36.584400, 40.890549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.239498, 36.900898, 40.865826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395460, -0.234691, 0.887993,
		0.688111, -0.564673, -0.455684,
		0.608371, 0.791242, -0.061812,
		44.422009, 37.138271, 40.847282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671497, 36.509876, 40.714996>,  <43.996151, 36.584400, 40.890549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671497, 36.509876, 40.714996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641682, 36.815327, 40.971535>,  <44.623791, 36.998596, 41.125458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641682, 36.815327, 40.971535>,  <44.671497, 36.509876, 40.714996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641682, 36.815327, 40.971535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432319, -0.554809, 0.710836,
		0.898634, 0.330253, -0.288773,
		-0.074542, 0.763623, 0.641345,
		44.619320, 37.044415, 41.163937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387653, 36.731388, 40.999023>,  <44.671497, 36.509876, 40.714996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387653, 36.731388, 40.999023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052563, 36.772762, 41.213509>,  <44.851509, 36.797588, 41.342197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052563, 36.772762, 41.213509>,  <45.387653, 36.731388, 40.999023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052563, 36.772762, 41.213509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235518, -0.817456, 0.525639,
		0.492696, 0.566627, 0.660442,
		-0.837724, 0.103434, 0.536208,
		44.801247, 36.803791, 41.374371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509945, 36.629234, 41.779518>,  <45.387653, 36.731388, 40.999023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509945, 36.629234, 41.779518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129879, 36.546364, 41.686340>,  <44.901840, 36.496643, 41.630432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129879, 36.546364, 41.686340>,  <45.509945, 36.629234, 41.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129879, 36.546364, 41.686340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035622, -0.814490, 0.579083,
		-0.309707, 0.541927, 0.781280,
		-0.950165, -0.207176, -0.232949,
		44.844830, 36.484211, 41.616455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154385, 36.701550, 42.427181>,  <45.509945, 36.629234, 41.779518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154385, 36.701550, 42.427181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023273, 36.452438, 42.143009>,  <44.944607, 36.302971, 41.972507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023273, 36.452438, 42.143009>,  <45.154385, 36.701550, 42.427181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023273, 36.452438, 42.143009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201271, -0.780740, 0.591553,
		-0.923066, 0.050910, 0.381258,
		-0.327779, -0.622779, -0.710428,
		44.924938, 36.265606, 41.929882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334404, 36.070423, 42.746529>,  <45.154385, 36.701550, 42.427181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334404, 36.070423, 42.746529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180000, 35.967915, 42.392056>,  <45.087360, 35.906410, 42.179371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.180000, 35.967915, 42.392056>,  <45.334404, 36.070423, 42.746529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180000, 35.967915, 42.392056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204384, -0.960523, 0.188741,
		-0.899570, -0.108267, 0.423145,
		-0.386006, -0.256270, -0.886186,
		45.064198, 35.891033, 42.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702293, 35.625893, 42.778469>,  <45.334404, 36.070423, 42.746529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702293, 35.625893, 42.778469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978390, 35.571346, 42.494225>,  <45.144047, 35.538620, 42.323677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978390, 35.571346, 42.494225>,  <44.702293, 35.625893, 42.778469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978390, 35.571346, 42.494225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294565, -0.844065, 0.448090,
		-0.660908, -0.518612, -0.542440,
		0.690240, -0.136363, -0.710615,
		45.185463, 35.530437, 42.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308804, 35.261051, 42.251232>,  <44.702293, 35.625893, 42.778469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308804, 35.261051, 42.251232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034264, 35.038513, 42.063869>,  <43.869541, 34.904991, 41.951450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034264, 35.038513, 42.063869>,  <44.308804, 35.261051, 42.251232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034264, 35.038513, 42.063869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108674, 0.558379, -0.822437,
		0.719109, -0.615382, -0.322782,
		-0.686348, -0.556344, -0.468411,
		43.828358, 34.871609, 41.923347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647575, 34.917599, 41.619350>,  <44.308804, 35.261051, 42.251232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647575, 34.917599, 41.619350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256226, 34.991940, 41.583012>,  <44.021416, 35.036545, 41.561211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.256226, 34.991940, 41.583012>,  <44.647575, 34.917599, 41.619350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256226, 34.991940, 41.583012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190375, 0.637122, -0.746882,
		-0.080928, -0.748021, -0.658722,
		-0.978370, 0.185848, -0.090844,
		43.962715, 35.047695, 41.555759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203457, 34.591175, 41.130074>,  <44.647575, 34.917599, 41.619350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203457, 34.591175, 41.130074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862961, 34.798882, 41.160400>,  <43.658661, 34.923504, 41.178596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862961, 34.798882, 41.160400>,  <44.203457, 34.591175, 41.130074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862961, 34.798882, 41.160400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204074, -0.194458, -0.959448,
		-0.483465, -0.832196, 0.271500,
		-0.851243, 0.519265, 0.075816,
		43.607586, 34.954662, 41.183144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620773, 34.175503, 40.937572>,  <44.203457, 34.591175, 41.130074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620773, 34.175503, 40.937572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498669, 34.551201, 40.874805>,  <43.425404, 34.776619, 40.837143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498669, 34.551201, 40.874805>,  <43.620773, 34.175503, 40.937572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498669, 34.551201, 40.874805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064628, -0.184840, -0.980641,
		-0.950071, -0.289215, 0.117127,
		-0.305266, 0.939249, -0.156920,
		43.407089, 34.832977, 40.827728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016460, 34.189297, 40.535271>,  <43.620773, 34.175503, 40.937572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016460, 34.189297, 40.535271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206894, 34.537567, 40.485855>,  <43.321156, 34.746529, 40.456207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206894, 34.537567, 40.485855>,  <43.016460, 34.189297, 40.535271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206894, 34.537567, 40.485855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079308, -0.097398, -0.992081,
		-0.875817, 0.482110, 0.022682,
		0.476082, 0.870680, -0.123538,
		43.349720, 34.798771, 40.448795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630875, 34.579201, 39.991203>,  <43.016460, 34.189297, 40.535271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630875, 34.579201, 39.991203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996071, 34.741161, 39.971165>,  <43.215187, 34.838337, 39.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996071, 34.741161, 39.971165>,  <42.630875, 34.579201, 39.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996071, 34.741161, 39.971165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033123, -0.048833, -0.998258,
		-0.406641, 0.913056, -0.031173,
		0.912988, 0.404900, -0.050100,
		43.269966, 34.862633, 39.956135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568478, 34.983459, 39.389042>,  <42.630875, 34.579201, 39.991203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568478, 34.983459, 39.389042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960293, 34.996799, 39.468437>,  <43.195381, 35.004803, 39.516075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960293, 34.996799, 39.468437>,  <42.568478, 34.983459, 39.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960293, 34.996799, 39.468437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199657, -0.036474, -0.979187,
		-0.025417, 0.998778, -0.042386,
		0.979536, 0.033351, 0.198486,
		43.254154, 35.006805, 39.527985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808701, 35.489910, 39.020588>,  <42.568478, 34.983459, 39.389042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808701, 35.489910, 39.020588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138577, 35.275883, 39.093899>,  <43.336502, 35.147465, 39.137886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138577, 35.275883, 39.093899>,  <42.808701, 35.489910, 39.020588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138577, 35.275883, 39.093899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141242, -0.118940, -0.982804,
		0.547665, 0.836395, -0.022514,
		0.824690, -0.535067, 0.183273,
		43.385983, 35.115364, 39.148880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378986, 35.765858, 38.660976>,  <42.808701, 35.489910, 39.020588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378986, 35.765858, 38.660976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481552, 35.380737, 38.695091>,  <43.543091, 35.149666, 38.715561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481552, 35.380737, 38.695091>,  <43.378986, 35.765858, 38.660976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481552, 35.380737, 38.695091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236722, -0.022996, -0.971305,
		0.937132, 0.269242, 0.222020,
		0.256411, -0.962798, 0.085286,
		43.558475, 35.091896, 38.720676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893463, 35.663811, 38.211720>,  <43.378986, 35.765858, 38.660976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893463, 35.663811, 38.211720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811428, 35.276703, 38.270187>,  <43.762207, 35.044437, 38.305267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811428, 35.276703, 38.270187>,  <43.893463, 35.663811, 38.211720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811428, 35.276703, 38.270187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181721, -0.184397, -0.965906,
		0.961727, -0.171529, 0.213681,
		-0.205084, -0.967768, 0.146169,
		43.749905, 34.986374, 38.314037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460697, 35.254768, 37.955795>,  <43.893463, 35.663811, 38.211720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460697, 35.254768, 37.955795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152676, 35.000496, 37.977409>,  <43.967861, 34.847931, 37.990376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152676, 35.000496, 37.977409>,  <44.460697, 35.254768, 37.955795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152676, 35.000496, 37.977409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154240, -0.267686, -0.951081,
		0.619048, -0.724053, 0.304181,
		-0.770058, -0.635682, 0.054032,
		43.921658, 34.809792, 37.993618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708080, 34.633701, 37.694939>,  <44.460697, 35.254768, 37.955795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.708080, 34.633701, 37.694939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309067, 34.612709, 37.676311>,  <44.069656, 34.600113, 37.665134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.309067, 34.612709, 37.676311>,  <44.708080, 34.633701, 37.694939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309067, 34.612709, 37.676311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050514, -0.076581, -0.995783,
		0.048694, -0.995681, 0.079043,
		-0.997535, -0.052481, -0.046567,
		44.009808, 34.596966, 37.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542801, 34.035049, 37.323986>,  <44.708080, 34.633701, 37.694939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542801, 34.035049, 37.323986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208549, 34.252716, 37.294022>,  <44.007999, 34.383316, 37.276043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208549, 34.252716, 37.294022>,  <44.542801, 34.035049, 37.323986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208549, 34.252716, 37.294022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044505, -0.203008, -0.978165,
		-0.547489, -0.814048, 0.193857,
		-0.835628, 0.544163, -0.074916,
		43.957859, 34.415966, 37.271545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138222, 33.708771, 36.843838>,  <44.542801, 34.035049, 37.323986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138222, 33.708771, 36.843838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994740, 34.082092, 36.850414>,  <43.908649, 34.306087, 36.854359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994740, 34.082092, 36.850414>,  <44.138222, 33.708771, 36.843838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994740, 34.082092, 36.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080585, -0.013418, -0.996658,
		-0.929966, -0.358831, 0.080023,
		-0.358706, 0.933306, 0.016438,
		43.887127, 34.362083, 36.855347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555145, 33.680016, 36.409977>,  <44.138222, 33.708771, 36.843838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555145, 33.680016, 36.409977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676300, 34.061218, 36.407795>,  <43.748993, 34.289940, 36.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676300, 34.061218, 36.407795>,  <43.555145, 33.680016, 36.409977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676300, 34.061218, 36.407795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186320, 0.053604, -0.981026,
		-0.934636, 0.298155, 0.193801,
		0.302886, 0.953011, -0.005452,
		43.767166, 34.347122, 36.406158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330627, 33.841946, 35.670277>,  <43.555145, 33.680016, 36.409977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330627, 33.841946, 35.670277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459652, 34.192730, 35.812767>,  <43.537067, 34.403202, 35.898262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.459652, 34.192730, 35.812767>,  <43.330627, 33.841946, 35.670277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.459652, 34.192730, 35.812767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223936, 0.294956, -0.928899,
		-0.919678, 0.379396, -0.101242,
		0.322559, 0.876960, 0.356225,
		43.556419, 34.455818, 35.919636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039291, 34.427578, 35.278172>,  <43.330627, 33.841946, 35.670277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039291, 34.427578, 35.278172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408585, 34.480053, 35.422634>,  <43.630161, 34.511539, 35.509312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408585, 34.480053, 35.422634>,  <43.039291, 34.427578, 35.278172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408585, 34.480053, 35.422634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352662, 0.083864, -0.931985,
		-0.152552, 0.987804, 0.031161,
		0.923232, 0.131187, 0.361155,
		43.685555, 34.519409, 35.530979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304516, 34.997604, 34.896229>,  <43.039291, 34.427578, 35.278172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304516, 34.997604, 34.896229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648136, 34.830261, 35.014217>,  <43.854309, 34.729855, 35.085011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648136, 34.830261, 35.014217>,  <43.304516, 34.997604, 34.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648136, 34.830261, 35.014217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417319, 0.238654, -0.876863,
		0.296448, 0.876367, 0.379605,
		0.859048, -0.418361, 0.294976,
		43.905849, 34.704754, 35.102711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994175, 35.466682, 34.803623>,  <43.304516, 34.997604, 34.896229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994175, 35.466682, 34.803623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132423, 35.092247, 34.829823>,  <44.215370, 34.867588, 34.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132423, 35.092247, 34.829823>,  <43.994175, 35.466682, 34.803623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132423, 35.092247, 34.829823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557917, 0.148864, -0.816436,
		0.754504, 0.318720, 0.573709,
		0.345619, -0.936086, 0.065501,
		44.236111, 34.811420, 34.849472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792377, 35.524731, 34.847927>,  <43.994175, 35.466682, 34.803623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792377, 35.524731, 34.847927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666397, 35.162327, 34.734818>,  <44.590809, 34.944885, 34.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666397, 35.162327, 34.734818>,  <44.792377, 35.524731, 34.847927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666397, 35.162327, 34.734818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554830, 0.065974, -0.829344,
		0.770046, -0.418092, 0.481900,
		-0.314949, -0.906006, -0.282773,
		44.571911, 34.890526, 34.649986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370853, 35.176666, 34.693920>,  <44.792377, 35.524731, 34.847927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370853, 35.176666, 34.693920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078690, 34.991016, 34.493481>,  <44.903393, 34.879627, 34.373219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.078690, 34.991016, 34.493481>,  <45.370853, 35.176666, 34.693920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078690, 34.991016, 34.493481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579139, -0.031912, -0.814604,
		0.362084, -0.885197, 0.292099,
		-0.730406, -0.464121, -0.501097,
		44.859570, 34.851780, 34.343151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759521, 34.855495, 34.169849>,  <45.370853, 35.176666, 34.693920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759521, 34.855495, 34.169849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389946, 34.778133, 34.037834>,  <45.168201, 34.731716, 33.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389946, 34.778133, 34.037834>,  <45.759521, 34.855495, 34.169849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389946, 34.778133, 34.037834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365785, -0.194202, -0.910213,
		0.111944, -0.961708, 0.250175,
		-0.923943, -0.193403, -0.330038,
		45.112762, 34.720112, 33.938824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832539, 34.295311, 33.616318>,  <45.759521, 34.855495, 34.169849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832539, 34.295311, 33.616318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486305, 34.493538, 33.587521>,  <45.278564, 34.612473, 33.570244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.486305, 34.493538, 33.587521>,  <45.832539, 34.295311, 33.616318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486305, 34.493538, 33.587521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011890, -0.123380, -0.992288,
		-0.500624, -0.859764, 0.100903,
		-0.865583, 0.495564, -0.071989,
		45.226631, 34.642208, 33.565926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289150, 34.082203, 34.205532>,  <45.832539, 34.295311, 33.616318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289150, 34.082203, 34.205532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662643, 33.946854, 34.158794>,  <46.886738, 33.865646, 34.130753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662643, 33.946854, 34.158794>,  <46.289150, 34.082203, 34.205532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662643, 33.946854, 34.158794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356345, 0.847448, 0.393511,
		-0.034133, -0.409070, 0.911864,
		0.933731, -0.338370, -0.116844,
		46.942764, 33.845345, 34.123741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626179, 34.144985, 34.886597>,  <46.289150, 34.082203, 34.205532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626179, 34.144985, 34.886597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894924, 34.154930, 34.590496>,  <47.056171, 34.160896, 34.412834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.894924, 34.154930, 34.590496>,  <46.626179, 34.144985, 34.886597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894924, 34.154930, 34.590496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429110, 0.801552, 0.416388,
		0.603704, -0.597408, 0.527869,
		0.671868, 0.024862, -0.740254,
		47.096485, 34.162388, 34.368420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265820, 34.325817, 35.196373>,  <46.626179, 34.144985, 34.886597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265820, 34.325817, 35.196373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275257, 34.463749, 34.821026>,  <47.280918, 34.546509, 34.595818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275257, 34.463749, 34.821026>,  <47.265820, 34.325817, 35.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275257, 34.463749, 34.821026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579657, 0.760025, 0.293869,
		0.814519, -0.550865, -0.181953,
		0.023593, 0.344832, -0.938368,
		47.282333, 34.567200, 34.539516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.907505, 34.480942, 35.055927>,  <47.265820, 34.325817, 35.196373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.907505, 34.480942, 35.055927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696636, 34.724232, 34.818554>,  <47.570114, 34.870205, 34.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.696636, 34.724232, 34.818554>,  <47.907505, 34.480942, 35.055927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.696636, 34.724232, 34.818554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645139, 0.740991, 0.186354,
		0.553070, -0.284604, -0.783016,
		-0.527171, 0.608220, -0.593430,
		47.538486, 34.906696, 34.640526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.396824, 41.127014, 43.145744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.073803, 40.948368, 43.299828>,  <33.879990, 40.841179, 43.392277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.073803, 40.948368, 43.299828>,  <34.396824, 41.127014, 43.145744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073803, 40.948368, 43.299828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224844, -0.370681, -0.901133,
		0.545254, -0.814326, 0.198926,
		-0.807554, -0.446618, 0.385212,
		33.831535, 40.814384, 43.415390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391212, 40.440411, 42.805492>,  <34.396824, 41.127014, 43.145744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391212, 40.440411, 42.805492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020100, 40.532707, 42.922779>,  <33.797432, 40.588085, 42.993153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.020100, 40.532707, 42.922779>,  <34.391212, 40.440411, 42.805492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020100, 40.532707, 42.922779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358836, -0.336433, -0.870660,
		-0.102252, -0.913000, 0.394937,
		-0.927783, 0.230744, 0.293217,
		33.741764, 40.601929, 43.010746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052448, 39.779392, 42.677540>,  <34.391212, 40.440411, 42.805492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052448, 39.779392, 42.677540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756481, 40.047161, 42.704067>,  <33.578899, 40.207821, 42.719986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.756481, 40.047161, 42.704067>,  <34.052448, 39.779392, 42.677540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756481, 40.047161, 42.704067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344784, -0.292731, -0.891870,
		-0.577622, -0.682777, 0.447402,
		-0.739917, 0.669421, 0.066323,
		33.534508, 40.247986, 42.723965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434948, 39.476894, 42.553391>,  <34.052448, 39.779392, 42.677540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434948, 39.476894, 42.553391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358219, 39.861233, 42.473412>,  <33.312183, 40.091835, 42.425426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.358219, 39.861233, 42.473412>,  <33.434948, 39.476894, 42.553391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358219, 39.861233, 42.473412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208092, -0.238915, -0.948482,
		-0.959116, -0.140331, 0.245774,
		-0.191821, 0.960847, -0.199946,
		33.300674, 40.149487, 42.413429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787067, 39.461441, 42.158237>,  <33.434948, 39.476894, 42.553391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787067, 39.461441, 42.158237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962120, 39.814968, 42.092091>,  <33.067150, 40.027084, 42.052402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962120, 39.814968, 42.092091>,  <32.787067, 39.461441, 42.158237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962120, 39.814968, 42.092091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024019, -0.195341, -0.980441,
		-0.898834, 0.425099, -0.106715,
		0.437630, 0.883817, -0.165369,
		33.093410, 40.080112, 42.042480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499054, 39.587849, 41.496872>,  <32.787067, 39.461441, 42.158237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499054, 39.587849, 41.496872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.788162, 39.859592, 41.547585>,  <32.961628, 40.022636, 41.578011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.788162, 39.859592, 41.547585>,  <32.499054, 39.587849, 41.496872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788162, 39.859592, 41.547585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158674, 0.015417, -0.987210,
		-0.672623, 0.733645, -0.096654,
		0.722772, 0.679357, 0.126781,
		33.004993, 40.063400, 41.585617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417042, 40.156876, 41.053490>,  <32.499054, 39.587849, 41.496872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417042, 40.156876, 41.053490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.807346, 40.118668, 41.132248>,  <33.041531, 40.095741, 41.179501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.807346, 40.118668, 41.132248>,  <32.417042, 40.156876, 41.053490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807346, 40.118668, 41.132248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204162, 0.073381, -0.976183,
		0.078801, 0.992719, 0.091105,
		0.975760, -0.095524, 0.196893,
		33.100075, 40.090012, 41.191315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737373, 40.519363, 40.535378>,  <32.417042, 40.156876, 41.053490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737373, 40.519363, 40.535378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044384, 40.303944, 40.674442>,  <33.228592, 40.174694, 40.757881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.044384, 40.303944, 40.674442>,  <32.737373, 40.519363, 40.535378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044384, 40.303944, 40.674442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380060, -0.054416, -0.923360,
		0.516192, 0.840836, 0.162914,
		0.767529, -0.538548, 0.347657,
		33.274643, 40.142380, 40.778740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265823, 40.751423, 40.162312>,  <32.737373, 40.519363, 40.535378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265823, 40.751423, 40.162312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.411709, 40.423748, 40.339359>,  <33.499241, 40.227142, 40.445587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.411709, 40.423748, 40.339359>,  <33.265823, 40.751423, 40.162312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411709, 40.423748, 40.339359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564780, -0.183304, -0.804626,
		0.740274, 0.543443, 0.395808,
		0.364715, -0.819188, 0.442621,
		33.521122, 40.177990, 40.472145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919170, 40.761177, 39.928211>,  <33.265823, 40.751423, 40.162312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919170, 40.761177, 39.928211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847233, 40.384396, 40.041615>,  <33.804070, 40.158325, 40.109657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847233, 40.384396, 40.041615>,  <33.919170, 40.761177, 39.928211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847233, 40.384396, 40.041615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411422, -0.333819, -0.848113,
		0.893526, -0.035884, 0.447576,
		-0.179843, -0.941954, 0.283512,
		33.793282, 40.101810, 40.126667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541061, 40.321438, 39.785278>,  <33.919170, 40.761177, 39.928211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541061, 40.321438, 39.785278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246624, 40.054699, 39.831730>,  <34.069962, 39.894657, 39.859600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.246624, 40.054699, 39.831730>,  <34.541061, 40.321438, 39.785278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246624, 40.054699, 39.831730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312701, -0.487171, -0.815403,
		0.600319, -0.563902, 0.567126,
		-0.736095, -0.666843, 0.116126,
		34.025795, 39.854645, 39.866566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757088, 39.620762, 39.889381>,  <34.541061, 40.321438, 39.785278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757088, 39.620762, 39.889381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397774, 39.631458, 39.713943>,  <34.182186, 39.637875, 39.608681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397774, 39.631458, 39.713943>,  <34.757088, 39.620762, 39.889381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397774, 39.631458, 39.713943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368530, -0.497755, -0.785128,
		-0.239306, -0.866905, 0.437273,
		-0.898286, 0.026738, -0.438596,
		34.128288, 39.639481, 39.582363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728794, 38.954124, 39.585606>,  <34.757088, 39.620762, 39.889381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728794, 38.954124, 39.585606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477802, 39.212589, 39.411827>,  <34.327206, 39.367668, 39.307560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477802, 39.212589, 39.411827>,  <34.728794, 38.954124, 39.585606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477802, 39.212589, 39.411827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271444, -0.341425, -0.899860,
		-0.729787, -0.682571, 0.038840,
		-0.627479, 0.646163, -0.434447,
		34.289558, 39.406437, 39.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481724, 38.584595, 39.037453>,  <34.728794, 38.954124, 39.585606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481724, 38.584595, 39.037453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369453, 38.951145, 38.923283>,  <34.302090, 39.171078, 38.854782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369453, 38.951145, 38.923283>,  <34.481724, 38.584595, 39.037453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369453, 38.951145, 38.923283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125288, -0.259853, -0.957486,
		-0.951590, -0.304506, -0.041876,
		-0.280678, 0.916380, -0.285424,
		34.285252, 39.226059, 38.837654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082012, 38.477924, 38.538265>,  <34.481724, 38.584595, 39.037453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082012, 38.477924, 38.538265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186550, 38.861885, 38.497677>,  <34.249271, 39.092262, 38.473324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186550, 38.861885, 38.497677>,  <34.082012, 38.477924, 38.538265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186550, 38.861885, 38.497677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191483, -0.154590, -0.969245,
		-0.946062, 0.233878, -0.224205,
		0.261345, 0.959897, -0.101468,
		34.264954, 39.149853, 38.467236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776581, 38.742569, 37.995941>,  <34.082012, 38.477924, 38.538265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776581, 38.742569, 37.995941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091904, 38.986454, 38.028988>,  <34.281097, 39.132786, 38.048817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.091904, 38.986454, 38.028988>,  <33.776581, 38.742569, 37.995941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091904, 38.986454, 38.028988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165609, -0.080941, -0.982864,
		-0.592580, 0.788477, -0.164780,
		0.788304, 0.609715, 0.082615,
		34.328396, 39.169369, 38.053772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700977, 39.095104, 37.437450>,  <33.776581, 38.742569, 37.995941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700977, 39.095104, 37.437450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076275, 39.204304, 37.522465>,  <34.301453, 39.269825, 37.573471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076275, 39.204304, 37.522465>,  <33.700977, 39.095104, 37.437450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076275, 39.204304, 37.522465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190114, 0.106426, -0.975977,
		-0.289060, 0.956109, 0.047953,
		0.938244, 0.272999, 0.212533,
		34.357746, 39.286205, 37.586224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855595, 39.673485, 36.961971>,  <33.700977, 39.095104, 37.437450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855595, 39.673485, 36.961971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219849, 39.540501, 37.060120>,  <34.438400, 39.460709, 37.119011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219849, 39.540501, 37.060120>,  <33.855595, 39.673485, 36.961971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219849, 39.540501, 37.060120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251246, -0.025936, -0.967576,
		0.328046, 0.942760, 0.059911,
		0.910638, -0.332462, 0.245373,
		34.493038, 39.440762, 37.133732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218987, 40.061104, 36.421391>,  <33.855595, 39.673485, 36.961971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218987, 40.061104, 36.421391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467587, 39.783825, 36.567390>,  <34.616745, 39.617458, 36.654991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467587, 39.783825, 36.567390>,  <34.218987, 40.061104, 36.421391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467587, 39.783825, 36.567390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441218, -0.075273, -0.894237,
		0.647356, 0.716809, 0.259068,
		0.621496, -0.693195, 0.364998,
		34.654034, 39.575867, 36.676891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877228, 40.156376, 36.034378>,  <34.218987, 40.061104, 36.421391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877228, 40.156376, 36.034378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880280, 39.784351, 36.181305>,  <34.882111, 39.561134, 36.269463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.880280, 39.784351, 36.181305>,  <34.877228, 40.156376, 36.034378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880280, 39.784351, 36.181305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327577, -0.344735, -0.879688,
		0.944794, 0.127033, 0.302039,
		0.007626, -0.930064, 0.367317,
		34.882568, 39.505333, 36.291500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455978, 39.781132, 35.650646>,  <34.877228, 40.156376, 36.034378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455978, 39.781132, 35.650646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245869, 39.477161, 35.803799>,  <35.119804, 39.294777, 35.895691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245869, 39.477161, 35.803799>,  <35.455978, 39.781132, 35.650646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245869, 39.477161, 35.803799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093004, -0.498527, -0.861871,
		0.845837, -0.417107, 0.332539,
		-0.525272, -0.759929, 0.382879,
		35.088287, 39.249184, 35.918663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743790, 39.219200, 35.442940>,  <35.455978, 39.781132, 35.650646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743790, 39.219200, 35.442940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364166, 39.109497, 35.504993>,  <35.136391, 39.043674, 35.542225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364166, 39.109497, 35.504993>,  <35.743790, 39.219200, 35.442940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364166, 39.109497, 35.504993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030566, -0.570157, -0.820967,
		0.313612, -0.774404, 0.549496,
		-0.949059, -0.274261, 0.155137,
		35.079449, 39.027218, 35.551533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414005, 39.041012, 34.937134>,  <35.743790, 39.219200, 35.442940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414005, 39.041012, 34.937134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692974, 39.292160, 34.798931>,  <36.860355, 39.442848, 34.716011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692974, 39.292160, 34.798931>,  <36.414005, 39.041012, 34.937134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692974, 39.292160, 34.798931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036671, 0.450209, 0.892170,
		0.715718, -0.634893, 0.290963,
		0.697427, 0.627872, -0.345505,
		36.902203, 39.480522, 34.695278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988552, 39.112343, 35.447529>,  <36.414005, 39.041012, 34.937134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988552, 39.112343, 35.447529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003139, 39.441929, 35.221340>,  <37.011894, 39.639679, 35.085629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.003139, 39.441929, 35.221340>,  <36.988552, 39.112343, 35.447529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003139, 39.441929, 35.221340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018085, 0.565209, 0.824750,
		0.999171, -0.040306, 0.005712,
		0.036471, 0.823963, -0.565469,
		37.014080, 39.689117, 35.051701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444492, 39.521530, 35.802464>,  <36.988552, 39.112343, 35.447529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444492, 39.521530, 35.802464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267216, 39.791790, 35.566811>,  <37.160851, 39.953945, 35.425419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267216, 39.791790, 35.566811>,  <37.444492, 39.521530, 35.802464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267216, 39.791790, 35.566811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031969, 0.644871, 0.763622,
		0.895857, 0.357264, -0.264201,
		-0.443191, 0.675650, -0.589134,
		37.134258, 39.994484, 35.390072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739868, 40.142868, 35.943264>,  <37.444492, 39.521530, 35.802464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739868, 40.142868, 35.943264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391312, 40.263496, 35.788483>,  <37.182178, 40.335873, 35.695614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391312, 40.263496, 35.788483>,  <37.739868, 40.142868, 35.943264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391312, 40.263496, 35.788483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101601, 0.660717, 0.743727,
		0.479949, 0.687394, -0.545105,
		-0.871393, 0.301568, -0.386950,
		37.129894, 40.353966, 35.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698044, 40.841972, 36.168514>,  <37.739868, 40.142868, 35.943264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698044, 40.841972, 36.168514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315704, 40.777962, 36.069923>,  <37.086300, 40.739555, 36.010769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315704, 40.777962, 36.069923>,  <37.698044, 40.841972, 36.168514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315704, 40.777962, 36.069923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287853, 0.678675, 0.675678,
		0.059149, 0.716793, -0.694773,
		-0.955846, -0.160027, -0.246474,
		37.028950, 40.729954, 35.995979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485790, 41.513859, 36.135834>,  <37.698044, 40.841972, 36.168514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485790, 41.513859, 36.135834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181587, 41.258808, 36.184914>,  <36.999065, 41.105778, 36.214363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181587, 41.258808, 36.184914>,  <37.485790, 41.513859, 36.135834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181587, 41.258808, 36.184914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242146, 0.453835, 0.857554,
		-0.602486, 0.622468, -0.499545,
		-0.760511, -0.637627, 0.122701,
		36.953434, 41.067520, 36.221725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964428, 41.922131, 36.173939>,  <37.485790, 41.513859, 36.135834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964428, 41.922131, 36.173939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856209, 41.581795, 36.354107>,  <36.791275, 41.377594, 36.462208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856209, 41.581795, 36.354107>,  <36.964428, 41.922131, 36.173939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856209, 41.581795, 36.354107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205497, 0.508127, 0.836408,
		-0.940517, 0.133732, -0.312319,
		-0.270552, -0.850836, 0.450421,
		36.775043, 41.326546, 36.489235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494839, 42.180668, 36.645378>,  <36.964428, 41.922131, 36.173939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494839, 42.180668, 36.645378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549461, 41.807095, 36.777515>,  <36.582237, 41.582951, 36.856796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549461, 41.807095, 36.777515>,  <36.494839, 42.180668, 36.645378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549461, 41.807095, 36.777515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199099, 0.300786, 0.932678,
		-0.970418, -0.193138, -0.144869,
		0.136561, -0.933930, 0.330341,
		36.590431, 41.526917, 36.876617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862587, 41.954792, 37.149059>,  <36.494839, 42.180668, 36.645378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862587, 41.954792, 37.149059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192307, 41.739258, 37.218552>,  <36.390141, 41.609936, 37.260246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.192307, 41.739258, 37.218552>,  <35.862587, 41.954792, 37.149059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192307, 41.739258, 37.218552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134608, 0.111530, 0.984602,
		-0.549916, -0.834995, 0.019403,
		0.824301, -0.538837, 0.173729,
		36.439598, 41.577606, 37.270672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548599, 41.543045, 37.592072>,  <35.862587, 41.954792, 37.149059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548599, 41.543045, 37.592072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944572, 41.529274, 37.646992>,  <36.182156, 41.521011, 37.679943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944572, 41.529274, 37.646992>,  <35.548599, 41.543045, 37.592072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944572, 41.529274, 37.646992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139411, -0.068931, 0.987833,
		-0.024542, -0.997027, -0.073037,
		0.989931, -0.034425, 0.137305,
		36.241550, 41.518948, 37.688183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668556, 41.040497, 38.151760>,  <35.548599, 41.543045, 37.592072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668556, 41.040497, 38.151760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022949, 41.225983, 38.151562>,  <36.235584, 41.337273, 38.151443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022949, 41.225983, 38.151562>,  <35.668556, 41.040497, 38.151760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022949, 41.225983, 38.151562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041340, 0.080060, 0.995932,
		0.461866, -0.882361, 0.090102,
		0.885986, 0.463712, -0.000500,
		36.288746, 41.365097, 38.151413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993511, 40.814697, 38.809174>,  <35.668556, 41.040497, 38.151760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993511, 40.814697, 38.809174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176025, 41.148434, 38.685444>,  <36.285534, 41.348675, 38.611206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.176025, 41.148434, 38.685444>,  <35.993511, 40.814697, 38.809174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176025, 41.148434, 38.685444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025075, 0.335429, 0.941732,
		0.889480, -0.437456, 0.132130,
		0.456287, 0.834338, -0.309326,
		36.312912, 41.398735, 38.592648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657425, 40.847309, 39.137508>,  <35.993511, 40.814697, 38.809174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657425, 40.847309, 39.137508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505974, 41.205410, 39.043556>,  <36.415104, 41.420269, 38.987183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505974, 41.205410, 39.043556>,  <36.657425, 40.847309, 39.137508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505974, 41.205410, 39.043556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075757, 0.222951, 0.971882,
		0.922443, 0.385776, -0.016594,
		-0.378628, 0.895249, -0.234884,
		36.392384, 41.473984, 38.973091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007935, 41.408539, 39.579922>,  <36.657425, 40.847309, 39.137508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007935, 41.408539, 39.579922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651649, 41.531090, 39.445602>,  <36.437878, 41.604622, 39.365009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651649, 41.531090, 39.445602>,  <37.007935, 41.408539, 39.579922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651649, 41.531090, 39.445602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258814, 0.265474, 0.928730,
		0.373687, 0.914142, -0.157167,
		-0.890715, 0.306377, -0.335797,
		36.384434, 41.623001, 39.344864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875740, 42.055996, 39.803135>,  <37.007935, 41.408539, 39.579922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875740, 42.055996, 39.803135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494492, 41.960011, 39.729393>,  <36.265743, 41.902420, 39.685146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494492, 41.960011, 39.729393>,  <36.875740, 42.055996, 39.803135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494492, 41.960011, 39.729393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265148, 0.368665, 0.890945,
		-0.145825, 0.898057, -0.415006,
		-0.953117, -0.239960, -0.184357,
		36.208557, 41.888023, 39.674088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528473, 42.644905, 40.107647>,  <36.875740, 42.055996, 39.803135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528473, 42.644905, 40.107647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272404, 42.337612, 40.107201>,  <36.118763, 42.153236, 40.106934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272404, 42.337612, 40.107201>,  <36.528473, 42.644905, 40.107647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272404, 42.337612, 40.107201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336343, 0.278972, 0.899471,
		-0.690691, 0.576190, -0.436979,
		-0.640172, -0.768231, -0.001114,
		36.080353, 42.107143, 40.106865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979717, 42.982662, 40.490700>,  <36.528473, 42.644905, 40.107647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979717, 42.982662, 40.490700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893433, 42.592148, 40.483490>,  <35.841663, 42.357838, 40.479164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893433, 42.592148, 40.483490>,  <35.979717, 42.982662, 40.490700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893433, 42.592148, 40.483490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050909, -0.007193, 0.998677,
		-0.975129, 0.216345, -0.048151,
		-0.215712, -0.976290, -0.018028,
		35.828720, 42.299259, 40.478081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499977, 42.950390, 40.874325>,  <35.979717, 42.982662, 40.490700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499977, 42.950390, 40.874325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601105, 42.564835, 40.907818>,  <35.661781, 42.333504, 40.927914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601105, 42.564835, 40.907818>,  <35.499977, 42.950390, 40.874325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601105, 42.564835, 40.907818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077301, 0.066147, 0.994811,
		-0.964422, -0.257976, -0.057786,
		0.252815, -0.963884, 0.083736,
		35.676949, 42.275669, 40.932938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.904804, 42.532326, 41.289295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238655, 42.312004, 41.290134>,  <35.438965, 42.179810, 41.290638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.238655, 42.312004, 41.290134>,  <34.904804, 42.532326, 41.289295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238655, 42.312004, 41.290134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169257, -0.252841, 0.952588,
		-0.524159, -0.795415, -0.304257,
		0.834631, -0.550805, 0.002101,
		35.489044, 42.146763, 41.290764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794342, 41.869408, 41.773533>,  <34.904804, 42.532326, 41.289295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794342, 41.869408, 41.773533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191605, 41.892780, 41.733082>,  <35.429962, 41.906803, 41.708813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191605, 41.892780, 41.733082>,  <34.794342, 41.869408, 41.773533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191605, 41.892780, 41.733082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116234, -0.409708, 0.904781,
		0.011440, -0.910343, -0.413696,
		0.993156, 0.058436, -0.101126,
		35.489552, 41.910313, 41.702744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111282, 41.298840, 42.103863>,  <34.794342, 41.869408, 41.773533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111282, 41.298840, 42.103863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393890, 41.581909, 42.101948>,  <35.563454, 41.751751, 42.100800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393890, 41.581909, 42.101948>,  <35.111282, 41.298840, 42.103863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393890, 41.581909, 42.101948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176102, -0.169254, 0.969712,
		0.685432, -0.685964, -0.244205,
		0.706520, 0.707677, -0.004788,
		35.605846, 41.794212, 42.100510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628845, 40.969894, 42.413658>,  <35.111282, 41.298840, 42.103863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628845, 40.969894, 42.413658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739872, 41.352737, 42.446873>,  <35.806488, 41.582443, 42.466801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.739872, 41.352737, 42.446873>,  <35.628845, 40.969894, 42.413658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739872, 41.352737, 42.446873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135534, -0.124584, 0.982909,
		0.951098, -0.261568, -0.164302,
		0.277566, 0.957111, 0.083040,
		35.823143, 41.639870, 42.471786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321819, 41.065845, 42.690258>,  <35.628845, 40.969894, 42.413658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321819, 41.065845, 42.690258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151020, 41.419540, 42.765942>,  <36.048538, 41.631756, 42.811352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151020, 41.419540, 42.765942>,  <36.321819, 41.065845, 42.690258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151020, 41.419540, 42.765942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223307, -0.099646, 0.969641,
		0.876245, 0.456289, -0.154907,
		-0.427001, 0.884235, 0.189207,
		36.022919, 41.684811, 42.822704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800240, 41.403419, 43.204624>,  <36.321819, 41.065845, 42.690258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800240, 41.403419, 43.204624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451401, 41.592155, 43.256493>,  <36.242096, 41.705395, 43.287613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451401, 41.592155, 43.256493>,  <36.800240, 41.403419, 43.204624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451401, 41.592155, 43.256493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158611, 0.021891, 0.987098,
		0.462912, 0.881413, -0.093930,
		-0.872098, 0.471838, 0.129669,
		36.189770, 41.733707, 43.295395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980137, 41.920746, 43.638844>,  <36.800240, 41.403419, 43.204624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980137, 41.920746, 43.638844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583874, 41.926216, 43.693111>,  <36.346115, 41.929497, 43.725674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583874, 41.926216, 43.693111>,  <36.980137, 41.920746, 43.638844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583874, 41.926216, 43.693111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136346, 0.085602, 0.986956,
		0.001885, 0.996236, -0.086668,
		-0.990659, 0.013677, 0.135672,
		36.286674, 41.930321, 43.733814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839596, 42.488625, 44.033585>,  <36.980137, 41.920746, 43.638844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839596, 42.488625, 44.033585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501442, 42.281338, 44.085388>,  <36.298550, 42.156967, 44.116470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501442, 42.281338, 44.085388>,  <36.839596, 42.488625, 44.033585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501442, 42.281338, 44.085388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027722, 0.284699, 0.958216,
		-0.533433, 0.806474, -0.255047,
		-0.845388, -0.518215, 0.129510,
		36.247826, 42.125874, 44.124241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446388, 42.981789, 44.335506>,  <36.839596, 42.488625, 44.033585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446388, 42.981789, 44.335506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282864, 42.630508, 44.434818>,  <36.184750, 42.419743, 44.494404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282864, 42.630508, 44.434818>,  <36.446388, 42.981789, 44.335506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282864, 42.630508, 44.434818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194373, 0.349592, 0.916518,
		-0.891679, 0.326426, -0.313615,
		-0.408812, -0.878198, 0.248276,
		36.160221, 42.367050, 44.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004040, 43.125561, 44.850822>,  <36.446388, 42.981789, 44.335506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004040, 43.125561, 44.850822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037094, 42.731300, 44.909702>,  <36.056927, 42.494743, 44.945030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.037094, 42.731300, 44.909702>,  <36.004040, 43.125561, 44.850822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037094, 42.731300, 44.909702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137875, 0.157591, 0.977832,
		-0.986996, -0.060509, 0.148919,
		0.082636, -0.985649, 0.147199,
		36.061886, 42.435604, 44.953861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511826, 42.839859, 45.369507>,  <36.004040, 43.125561, 44.850822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511826, 42.839859, 45.369507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829365, 42.597717, 45.346336>,  <36.019890, 42.452435, 45.332436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829365, 42.597717, 45.346336>,  <35.511826, 42.839859, 45.369507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829365, 42.597717, 45.346336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184974, 0.149629, 0.971286,
		-0.579302, -0.781767, 0.230757,
		0.793847, -0.605352, -0.057926,
		36.067520, 42.416111, 45.328960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462242, 42.431358, 45.903660>,  <35.511826, 42.839859, 45.369507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462242, 42.431358, 45.903660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842922, 42.350452, 45.811264>,  <36.071331, 42.301907, 45.755829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.842922, 42.350452, 45.811264>,  <35.462242, 42.431358, 45.903660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842922, 42.350452, 45.811264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247003, 0.057548, 0.967304,
		-0.182363, -0.977638, 0.104730,
		0.951700, -0.202269, -0.230985,
		36.128433, 42.289772, 45.741970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670971, 41.938202, 46.400948>,  <35.462242, 42.431358, 45.903660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670971, 41.938202, 46.400948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014709, 42.077744, 46.251377>,  <36.220955, 42.161469, 46.161636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014709, 42.077744, 46.251377>,  <35.670971, 41.938202, 46.400948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014709, 42.077744, 46.251377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373500, 0.071290, 0.924887,
		0.349307, -0.934462, -0.069034,
		0.859349, 0.348854, -0.373924,
		36.272514, 42.182400, 46.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215069, 41.576035, 46.693737>,  <35.670971, 41.938202, 46.400948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215069, 41.576035, 46.693737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395504, 41.917213, 46.588669>,  <36.503765, 42.121922, 46.525627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395504, 41.917213, 46.588669>,  <36.215069, 41.576035, 46.693737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395504, 41.917213, 46.588669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488341, 0.010460, 0.872590,
		0.747024, -0.521886, -0.411813,
		0.451085, 0.852951, -0.262672,
		36.530830, 42.173100, 46.509869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817932, 41.477482, 47.102688>,  <36.215069, 41.576035, 46.693737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817932, 41.477482, 47.102688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811405, 41.861980, 46.992607>,  <36.807487, 42.092682, 46.926559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811405, 41.861980, 46.992607>,  <36.817932, 41.477482, 47.102688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811405, 41.861980, 46.992607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628556, 0.223913, 0.744835,
		0.777593, -0.160823, -0.607853,
		-0.016319, 0.961249, -0.275200,
		36.806511, 42.150356, 46.910046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493580, 41.647121, 47.081810>,  <36.817932, 41.477482, 47.102688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493580, 41.647121, 47.081810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304081, 41.994549, 47.139996>,  <37.190384, 42.203003, 47.174908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.304081, 41.994549, 47.139996>,  <37.493580, 41.647121, 47.081810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304081, 41.994549, 47.139996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583957, 0.186180, 0.790146,
		0.659212, 0.459272, -0.595407,
		-0.473745, 0.868566, 0.145463,
		37.161957, 42.255119, 47.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935966, 42.161640, 47.244877>,  <37.493580, 41.647121, 47.081810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935966, 42.161640, 47.244877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605366, 42.349499, 47.369030>,  <37.407005, 42.462212, 47.443523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605366, 42.349499, 47.369030>,  <37.935966, 42.161640, 47.244877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605366, 42.349499, 47.369030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439350, 0.193425, 0.877245,
		0.351956, 0.861407, -0.366203,
		-0.826497, 0.469643, 0.310382,
		37.357418, 42.490391, 47.462143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208630, 42.772484, 47.708759>,  <37.935966, 42.161640, 47.244877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208630, 42.772484, 47.708759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821114, 42.706421, 47.782696>,  <37.588604, 42.666782, 47.827057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821114, 42.706421, 47.782696>,  <38.208630, 42.772484, 47.708759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821114, 42.706421, 47.782696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190383, -0.018235, 0.981541,
		-0.158739, 0.986098, 0.049110,
		-0.968791, -0.165159, 0.184841,
		37.530476, 42.656872, 47.838150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089085, 43.228455, 48.245716>,  <38.208630, 42.772484, 47.708759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089085, 43.228455, 48.245716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809345, 42.943455, 48.268528>,  <37.641502, 42.772453, 48.282215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809345, 42.943455, 48.268528>,  <38.089085, 43.228455, 48.245716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809345, 42.943455, 48.268528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067343, 0.013758, 0.997635,
		-0.711603, 0.701534, 0.038360,
		-0.699347, -0.712503, 0.057034,
		37.599541, 42.729702, 48.285637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574352, 43.460255, 48.727055>,  <38.089085, 43.228455, 48.245716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574352, 43.460255, 48.727055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468906, 43.074554, 48.716248>,  <37.405640, 42.843136, 48.709763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.468906, 43.074554, 48.716248>,  <37.574352, 43.460255, 48.727055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468906, 43.074554, 48.716248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085860, -0.051352, 0.994983,
		-0.960800, 0.259971, 0.096327,
		-0.263613, -0.964250, -0.027018,
		37.389824, 42.785278, 48.708141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925179, 43.395260, 49.225708>,  <37.574352, 43.460255, 48.727055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925179, 43.395260, 49.225708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132339, 43.054947, 49.190060>,  <37.256638, 42.850758, 49.168671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132339, 43.054947, 49.190060>,  <36.925179, 43.395260, 49.225708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132339, 43.054947, 49.190060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077962, -0.056803, 0.995337,
		-0.851878, -0.522438, 0.036910,
		0.517905, -0.850783, -0.089119,
		37.287712, 42.799713, 49.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612556, 42.818672, 49.571823>,  <36.925179, 43.395260, 49.225708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612556, 42.818672, 49.571823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998661, 42.715420, 49.555630>,  <37.230324, 42.653469, 49.545914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.998661, 42.715420, 49.555630>,  <36.612556, 42.818672, 49.571823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998661, 42.715420, 49.555630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005186, -0.173848, 0.984759,
		-0.261235, -0.950340, -0.169147,
		0.965261, -0.258131, -0.040487,
		37.288239, 42.637981, 49.543484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713345, 42.483391, 50.242157>,  <36.612556, 42.818672, 49.571823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713345, 42.483391, 50.242157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402885, 42.581280, 50.474609>,  <36.216610, 42.640011, 50.614079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.402885, 42.581280, 50.474609>,  <36.713345, 42.483391, 50.242157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402885, 42.581280, 50.474609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286346, -0.957897, 0.020941,
		0.561785, -0.150150, 0.813543,
		-0.776146, 0.244719, 0.581128,
		36.170040, 42.654694, 50.648949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594097, 42.143673, 50.870571>,  <36.713345, 42.483391, 50.242157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594097, 42.143673, 50.870571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207115, 42.225445, 50.810909>,  <35.974926, 42.274509, 50.775112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207115, 42.225445, 50.810909>,  <36.594097, 42.143673, 50.870571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207115, 42.225445, 50.810909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238666, -0.933038, 0.269220,
		-0.084133, 0.296055, 0.951458,
		-0.967451, 0.204430, -0.149157,
		35.916882, 42.286774, 50.766163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262680, 41.611588, 51.276642>,  <36.594097, 42.143673, 50.870571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262680, 41.611588, 51.276642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868271, 41.607342, 51.343143>,  <35.631626, 41.604794, 51.383045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868271, 41.607342, 51.343143>,  <36.262680, 41.611588, 51.276642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868271, 41.607342, 51.343143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163504, -0.129685, -0.977982,
		0.031946, -0.991498, 0.126137,
		-0.986025, -0.010618, 0.166257,
		35.572464, 41.604156, 51.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998371, 41.066055, 50.908913>,  <36.262680, 41.611588, 51.276642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998371, 41.066055, 50.908913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658226, 41.268749, 50.965622>,  <35.454140, 41.390366, 50.999645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658226, 41.268749, 50.965622>,  <35.998371, 41.066055, 50.908913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658226, 41.268749, 50.965622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299918, -0.245390, -0.921864,
		-0.432354, -0.826439, 0.360650,
		-0.850365, 0.506737, 0.141768,
		35.403118, 41.420769, 51.008152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436523, 40.687847, 50.551010>,  <35.998371, 41.066055, 50.908913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436523, 40.687847, 50.551010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290207, 41.059708, 50.568645>,  <35.202415, 41.282825, 50.579227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.290207, 41.059708, 50.568645>,  <35.436523, 40.687847, 50.551010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290207, 41.059708, 50.568645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532958, -0.170399, -0.828806,
		-0.762988, -0.326669, 0.557796,
		-0.365794, 0.929651, 0.044088,
		35.180470, 41.338604, 50.581871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705105, 40.635658, 50.433056>,  <35.436523, 40.687847, 50.551010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705105, 40.635658, 50.433056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788616, 41.010635, 50.321621>,  <34.838722, 41.235622, 50.254761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.788616, 41.010635, 50.321621>,  <34.705105, 40.635658, 50.433056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788616, 41.010635, 50.321621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511742, -0.138031, -0.847978,
		-0.833385, 0.319606, 0.450911,
		0.208780, 0.937443, -0.278589,
		34.851250, 41.291870, 50.238045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074356, 40.927628, 50.297237>,  <34.705105, 40.635658, 50.433056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074356, 40.927628, 50.297237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302731, 41.175179, 50.081451>,  <34.439754, 41.323708, 49.951981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.302731, 41.175179, 50.081451>,  <34.074356, 40.927628, 50.297237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302731, 41.175179, 50.081451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645220, -0.068073, -0.760958,
		-0.507664, 0.782531, 0.360448,
		0.570936, 0.618879, -0.539463,
		34.474010, 41.360844, 49.919613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643127, 41.295540, 49.730900>,  <34.074356, 40.927628, 50.297237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643127, 41.295540, 49.730900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009861, 41.358799, 49.584251>,  <34.229900, 41.396755, 49.496262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009861, 41.358799, 49.584251>,  <33.643127, 41.295540, 49.730900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009861, 41.358799, 49.584251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343120, -0.157490, -0.925995,
		-0.204184, 0.974775, -0.090128,
		0.916830, 0.158148, -0.366621,
		34.284908, 41.406242, 49.474266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572250, 41.791103, 49.206856>,  <33.643127, 41.295540, 49.730900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572250, 41.791103, 49.206856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902779, 41.584263, 49.117592>,  <34.101097, 41.460159, 49.064034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902779, 41.584263, 49.117592>,  <33.572250, 41.791103, 49.206856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902779, 41.584263, 49.117592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382388, -0.224198, -0.896390,
		0.413490, 0.826041, -0.382992,
		0.826321, -0.517100, -0.223164,
		34.150673, 41.429134, 49.050644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806889, 42.070328, 48.577003>,  <33.572250, 41.791103, 49.206856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806889, 42.070328, 48.577003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002476, 41.721966, 48.596722>,  <34.119827, 41.512947, 48.608551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.002476, 41.721966, 48.596722>,  <33.806889, 42.070328, 48.577003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002476, 41.721966, 48.596722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064384, -0.092386, -0.993639,
		0.869923, 0.482684, -0.101246,
		0.488967, -0.870908, 0.049292,
		34.149166, 41.460693, 48.611507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198071, 42.050804, 47.985191>,  <33.806889, 42.070328, 48.577003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198071, 42.050804, 47.985191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203941, 41.662651, 48.081642>,  <34.207462, 41.429760, 48.139515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203941, 41.662651, 48.081642>,  <34.198071, 42.050804, 47.985191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203941, 41.662651, 48.081642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052457, -0.241572, -0.968964,
		0.998515, 0.001571, -0.054448,
		0.014676, -0.970381, 0.241131,
		34.208344, 41.371536, 48.153980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806431, 41.769032, 47.637527>,  <34.198071, 42.050804, 47.985191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806431, 41.769032, 47.637527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548042, 41.469193, 47.695244>,  <34.393009, 41.289288, 47.729874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548042, 41.469193, 47.695244>,  <34.806431, 41.769032, 47.637527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548042, 41.469193, 47.695244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056605, -0.235540, -0.970215,
		0.761260, -0.618563, 0.194583,
		-0.645971, -0.749600, 0.144293,
		34.354252, 41.244312, 47.738533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133614, 41.323399, 47.239006>,  <34.806431, 41.769032, 47.637527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133614, 41.323399, 47.239006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774784, 41.157230, 47.299259>,  <34.559486, 41.057529, 47.335411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774784, 41.157230, 47.299259>,  <35.133614, 41.323399, 47.239006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774784, 41.157230, 47.299259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033727, -0.404256, -0.914024,
		0.440601, -0.814862, 0.376657,
		-0.897069, -0.415423, 0.150632,
		34.505665, 41.032604, 47.344448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198380, 40.704773, 46.965126>,  <35.133614, 41.323399, 47.239006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198380, 40.704773, 46.965126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809860, 40.799435, 46.974705>,  <34.576748, 40.856232, 46.980450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809860, 40.799435, 46.974705>,  <35.198380, 40.704773, 46.965126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809860, 40.799435, 46.974705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108227, -0.350049, -0.930458,
		-0.211818, -0.906344, 0.365614,
		-0.971298, 0.236657, 0.023945,
		34.518471, 40.870430, 46.981888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867863, 40.223763, 46.565525>,  <35.198380, 40.704773, 46.965126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867863, 40.223763, 46.565525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577652, 40.498566, 46.581726>,  <34.403526, 40.663448, 46.591446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577652, 40.498566, 46.581726>,  <34.867863, 40.223763, 46.565525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577652, 40.498566, 46.581726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307185, -0.270617, -0.912362,
		-0.615836, -0.674381, 0.407377,
		-0.725523, 0.687005, 0.040504,
		34.359997, 40.704666, 46.593876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360733, 39.910568, 46.222939>,  <34.867863, 40.223763, 46.565525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360733, 39.910568, 46.222939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269943, 40.299725, 46.205208>,  <34.215469, 40.533218, 46.194569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269943, 40.299725, 46.205208>,  <34.360733, 39.910568, 46.222939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269943, 40.299725, 46.205208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368614, -0.127954, -0.920734,
		-0.901445, -0.192646, 0.387664,
		-0.226979, 0.972890, -0.044331,
		34.201851, 40.591591, 46.191910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769749, 39.938866, 45.856552>,  <34.360733, 39.910568, 46.222939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769749, 39.938866, 45.856552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911060, 40.312061, 45.829067>,  <33.995846, 40.535980, 45.812576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911060, 40.312061, 45.829067>,  <33.769749, 39.938866, 45.856552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911060, 40.312061, 45.829067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376815, 0.074684, -0.923273,
		-0.856274, 0.352065, 0.377949,
		0.353279, 0.932991, -0.068713,
		34.017044, 40.591957, 45.808453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259453, 40.418343, 45.640072>,  <33.769749, 39.938866, 45.856552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259453, 40.418343, 45.640072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604988, 40.592777, 45.539181>,  <33.812309, 40.697437, 45.478645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604988, 40.592777, 45.539181>,  <33.259453, 40.418343, 45.640072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604988, 40.592777, 45.539181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389489, 0.260588, -0.883398,
		-0.319515, 0.861347, 0.394957,
		0.863833, 0.436090, -0.252224,
		33.864140, 40.723606, 45.463512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117714, 40.982227, 45.329456>,  <33.259453, 40.418343, 45.640072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117714, 40.982227, 45.329456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494198, 40.936565, 45.202282>,  <33.720089, 40.909168, 45.125977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494198, 40.936565, 45.202282>,  <33.117714, 40.982227, 45.329456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494198, 40.936565, 45.202282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310556, 0.077946, -0.947354,
		0.132931, 0.990400, 0.037911,
		0.941214, -0.114159, -0.317936,
		33.776562, 40.902317, 45.106899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154789, 41.548328, 44.844200>,  <33.117714, 40.982227, 45.329456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154789, 41.548328, 44.844200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465649, 41.305061, 44.779488>,  <33.652164, 41.159100, 44.740662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.465649, 41.305061, 44.779488>,  <33.154789, 41.548328, 44.844200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465649, 41.305061, 44.779488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280151, -0.104136, -0.954291,
		0.563522, 0.786948, -0.251308,
		0.777147, -0.608168, -0.161781,
		33.698792, 41.122612, 44.730953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504158, 41.847717, 44.299698>,  <33.154789, 41.548328, 44.844200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504158, 41.847717, 44.299698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593056, 41.457722, 44.300594>,  <33.646393, 41.223724, 44.301132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593056, 41.457722, 44.300594>,  <33.504158, 41.847717, 44.299698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593056, 41.457722, 44.300594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233153, -0.055379, -0.970862,
		0.946704, 0.215244, -0.239629,
		0.222243, -0.974989, 0.002242,
		33.659729, 41.165226, 44.301266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926144, 41.736954, 43.646248>,  <33.504158, 41.847717, 44.299698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926144, 41.736954, 43.646248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789845, 41.373432, 43.742558>,  <33.708065, 41.155319, 43.800343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789845, 41.373432, 43.742558>,  <33.926144, 41.736954, 43.646248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789845, 41.373432, 43.742558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166990, -0.193525, -0.966779,
		0.925206, -0.369634, -0.085817,
		-0.340747, -0.908800, 0.240776,
		33.687622, 41.100792, 43.814789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.741505, 36.503120, 39.590538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541985, 36.802757, 39.764919>,  <44.422272, 36.982540, 39.869549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.541985, 36.802757, 39.764919>,  <44.741505, 36.503120, 39.590538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541985, 36.802757, 39.764919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287215, 0.331715, -0.898595,
		-0.817747, -0.573428, 0.049693,
		-0.498795, 0.749096, 0.435956,
		44.392345, 37.027485, 39.895706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096516, 36.535995, 39.415596>,  <44.741505, 36.503120, 39.590538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096516, 36.535995, 39.415596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130203, 36.921562, 39.516609>,  <44.150417, 37.152901, 39.577217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130203, 36.921562, 39.516609>,  <44.096516, 36.535995, 39.415596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130203, 36.921562, 39.516609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342899, 0.265988, -0.900928,
		-0.935589, -0.010713, 0.352929,
		0.084223, 0.963917, 0.252529,
		44.155472, 37.210739, 39.592369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466805, 36.800648, 39.229591>,  <44.096516, 36.535995, 39.415596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466805, 36.800648, 39.229591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709209, 37.118355, 39.246937>,  <43.854652, 37.308979, 39.257343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709209, 37.118355, 39.246937>,  <43.466805, 36.800648, 39.229591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709209, 37.118355, 39.246937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307590, 0.284258, -0.908067,
		-0.733577, 0.536964, 0.416574,
		0.606014, 0.794272, 0.043361,
		43.891014, 37.356636, 39.259945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076088, 37.352848, 38.967812>,  <43.466805, 36.800648, 39.229591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076088, 37.352848, 38.967812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457031, 37.473618, 38.950535>,  <43.685596, 37.546078, 38.940170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457031, 37.473618, 38.950535>,  <43.076088, 37.352848, 38.967812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457031, 37.473618, 38.950535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144120, 0.320683, -0.936158,
		-0.268795, 0.897779, 0.348916,
		0.952354, 0.301920, -0.043190,
		43.742737, 37.564194, 38.937576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974541, 37.971035, 38.659679>,  <43.076088, 37.352848, 38.967812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974541, 37.971035, 38.659679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361897, 37.884296, 38.610367>,  <43.594311, 37.832253, 38.580780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361897, 37.884296, 38.610367>,  <42.974541, 37.971035, 38.659679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361897, 37.884296, 38.610367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054712, 0.297551, -0.953137,
		0.243372, 0.929752, 0.276281,
		0.968389, -0.216851, -0.123284,
		43.652412, 37.819241, 38.573383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253838, 38.502945, 38.205242>,  <42.974541, 37.971035, 38.659679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253838, 38.502945, 38.205242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522774, 38.209656, 38.164574>,  <43.684135, 38.033684, 38.140171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522774, 38.209656, 38.164574>,  <43.253838, 38.502945, 38.205242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522774, 38.209656, 38.164574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056793, 0.188042, -0.980518,
		0.738057, 0.653471, 0.168071,
		0.672344, -0.733223, -0.101673,
		43.724476, 37.989689, 38.134071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717922, 38.762600, 37.701672>,  <43.253838, 38.502945, 38.205242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717922, 38.762600, 37.701672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789589, 38.369930, 37.727661>,  <43.832588, 38.134331, 37.743256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.789589, 38.369930, 37.727661>,  <43.717922, 38.762600, 37.701672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789589, 38.369930, 37.727661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086725, -0.050027, -0.994976,
		0.979989, 0.183903, 0.076172,
		0.179168, -0.981671, 0.064975,
		43.843338, 38.075428, 37.747154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307453, 38.685268, 37.312958>,  <43.717922, 38.762600, 37.701672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307453, 38.685268, 37.312958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136299, 38.324158, 37.330448>,  <44.033607, 38.107491, 37.340942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136299, 38.324158, 37.330448>,  <44.307453, 38.685268, 37.312958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136299, 38.324158, 37.330448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137679, -0.112914, -0.984020,
		0.893287, -0.415024, 0.172607,
		-0.427882, -0.902777, 0.043725,
		44.007935, 38.053326, 37.343567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617374, 38.346355, 36.818909>,  <44.307453, 38.685268, 37.312958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617374, 38.346355, 36.818909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295341, 38.119995, 36.890022>,  <44.102123, 37.984180, 36.932690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.295341, 38.119995, 36.890022>,  <44.617374, 38.346355, 36.818909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295341, 38.119995, 36.890022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019431, -0.324723, -0.945609,
		0.592849, -0.757836, 0.272424,
		-0.805079, -0.565897, 0.177786,
		44.053818, 37.950226, 36.943359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776188, 37.723179, 36.560860>,  <44.617374, 38.346355, 36.818909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776188, 37.723179, 36.560860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376232, 37.727917, 36.564274>,  <44.136257, 37.730759, 36.566322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376232, 37.727917, 36.564274>,  <44.776188, 37.723179, 36.560860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376232, 37.727917, 36.564274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011338, -0.261708, -0.965081,
		-0.009196, -0.965075, 0.261814,
		-0.999893, 0.011843, 0.008535,
		44.076263, 37.731468, 36.566833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520077, 37.059040, 36.234825>,  <44.776188, 37.723179, 36.560860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520077, 37.059040, 36.234825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181553, 37.272110, 36.232834>,  <43.978439, 37.399952, 36.231640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181553, 37.272110, 36.232834>,  <44.520077, 37.059040, 36.234825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181553, 37.272110, 36.232834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085218, -0.144599, -0.985814,
		-0.525836, -0.833877, 0.167768,
		-0.846306, 0.532673, -0.004974,
		43.927662, 37.431911, 36.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940125, 36.696621, 35.930542>,  <44.520077, 37.059040, 36.234825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940125, 36.696621, 35.930542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830624, 37.079544, 35.893410>,  <43.764923, 37.309299, 35.871132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830624, 37.079544, 35.893410>,  <43.940125, 36.696621, 35.930542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830624, 37.079544, 35.893410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318113, -0.181205, -0.930574,
		-0.907670, -0.225213, 0.354138,
		-0.273749, 0.957311, -0.092831,
		43.748497, 37.366737, 35.865559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254307, 36.813747, 35.976112>,  <43.940125, 36.696621, 35.930542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254307, 36.813747, 35.976112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386261, 37.101395, 35.731476>,  <43.465435, 37.273983, 35.584694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.386261, 37.101395, 35.731476>,  <43.254307, 36.813747, 35.976112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386261, 37.101395, 35.731476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325259, -0.521609, -0.788753,
		-0.886218, 0.459124, 0.061828,
		0.329885, 0.719117, -0.611594,
		43.485226, 37.317131, 35.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793903, 36.717567, 35.440708>,  <43.254307, 36.813747, 35.976112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793903, 36.717567, 35.440708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043896, 37.004101, 35.316605>,  <43.193893, 37.176022, 35.242142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.043896, 37.004101, 35.316605>,  <42.793903, 36.717567, 35.440708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043896, 37.004101, 35.316605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195677, -0.240998, -0.950595,
		-0.755714, 0.654818, -0.010450,
		0.624985, 0.716333, -0.310259,
		43.231392, 37.219002, 35.223526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440067, 37.198250, 34.861691>,  <42.793903, 36.717567, 35.440708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440067, 37.198250, 34.861691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830944, 37.264721, 34.808792>,  <43.065468, 37.304604, 34.777054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.830944, 37.264721, 34.808792>,  <42.440067, 37.198250, 34.861691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830944, 37.264721, 34.808792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090222, -0.238868, -0.966852,
		-0.192260, 0.956727, -0.218426,
		0.977188, 0.166180, -0.132243,
		43.124100, 37.314575, 34.769119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432472, 37.516842, 34.207256>,  <42.440067, 37.198250, 34.861691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432472, 37.516842, 34.207256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803059, 37.378761, 34.267242>,  <43.025410, 37.295914, 34.303234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.803059, 37.378761, 34.267242>,  <42.432472, 37.516842, 34.207256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.803059, 37.378761, 34.267242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003393, -0.406087, -0.913828,
		0.376355, 0.846125, -0.377399,
		0.926469, -0.345204, 0.149963,
		43.081001, 37.275200, 34.312233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889027, 37.811352, 33.603428>,  <42.432472, 37.516842, 34.207256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889027, 37.811352, 33.603428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056267, 37.490192, 33.773388>,  <43.156612, 37.297497, 33.875362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056267, 37.490192, 33.773388>,  <42.889027, 37.811352, 33.603428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056267, 37.490192, 33.773388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109433, -0.508855, -0.853868,
		0.901784, 0.310506, -0.300617,
		0.418102, -0.802903, 0.424898,
		43.181698, 37.249321, 33.900856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293900, 37.620529, 33.089153>,  <42.889027, 37.811352, 33.603428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293900, 37.620529, 33.089153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301517, 37.299149, 33.327183>,  <43.306087, 37.106319, 33.470001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.301517, 37.299149, 33.327183>,  <43.293900, 37.620529, 33.089153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301517, 37.299149, 33.327183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092192, -0.594053, -0.799125,
		0.995559, -0.039643, -0.085384,
		0.019043, -0.803448, 0.595070,
		43.307232, 37.058113, 33.505703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852734, 37.178635, 32.810413>,  <43.293900, 37.620529, 33.089153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852734, 37.178635, 32.810413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651573, 36.928471, 33.049061>,  <43.530876, 36.778374, 33.192249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651573, 36.928471, 33.049061>,  <43.852734, 37.178635, 32.810413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651573, 36.928471, 33.049061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183307, -0.597387, -0.780722,
		0.844684, -0.501989, 0.185783,
		-0.502899, -0.625409, 0.596621,
		43.500702, 36.740849, 33.228046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150932, 36.482113, 32.909264>,  <43.852734, 37.178635, 32.810413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150932, 36.482113, 32.909264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755947, 36.443493, 32.959213>,  <43.518955, 36.420322, 32.989185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.755947, 36.443493, 32.959213>,  <44.150932, 36.482113, 32.909264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755947, 36.443493, 32.959213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037219, -0.626411, -0.778604,
		0.153398, -0.773490, 0.614965,
		-0.987463, -0.096547, 0.124879,
		43.459709, 36.414528, 32.996677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048012, 35.818314, 32.728493>,  <44.150932, 36.482113, 32.909264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048012, 35.818314, 32.728493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676075, 35.962162, 32.759659>,  <43.452915, 36.048470, 32.778358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.676075, 35.962162, 32.759659>,  <44.048012, 35.818314, 32.728493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676075, 35.962162, 32.759659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270511, -0.524543, -0.807266,
		-0.249442, -0.771704, 0.585022,
		-0.929840, 0.359621, 0.077911,
		43.397121, 36.070049, 32.783031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137409, 35.339218, 33.362278>,  <44.048012, 35.818314, 32.728493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137409, 35.339218, 33.362278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468155, 35.117317, 33.399269>,  <44.666603, 34.984177, 33.421463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.468155, 35.117317, 33.399269>,  <44.137409, 35.339218, 33.362278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468155, 35.117317, 33.399269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192531, -0.124712, 0.973334,
		-0.528423, -0.822618, -0.209926,
		0.826862, -0.554749, 0.092479,
		44.716213, 34.950893, 33.427013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915764, 34.681980, 33.545181>,  <44.137409, 35.339218, 33.362278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915764, 34.681980, 33.545181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299160, 34.673653, 33.658932>,  <44.529198, 34.668655, 33.727184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299160, 34.673653, 33.658932>,  <43.915764, 34.681980, 33.545181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299160, 34.673653, 33.658932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275184, -0.328793, 0.903421,
		0.074691, -0.944172, -0.320873,
		0.958486, -0.020822, 0.284379,
		44.586704, 34.667404, 33.744244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004150, 34.005215, 33.782642>,  <43.915764, 34.681980, 33.545181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004150, 34.005215, 33.782642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263245, 34.263348, 33.944622>,  <44.418701, 34.418228, 34.041809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263245, 34.263348, 33.944622>,  <44.004150, 34.005215, 33.782642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263245, 34.263348, 33.944622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426718, -0.133034, 0.894547,
		0.631155, -0.752226, 0.189206,
		0.647731, 0.645336, 0.404953,
		44.457565, 34.456947, 34.066109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344318, 33.609467, 34.270008>,  <44.004150, 34.005215, 33.782642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344318, 33.609467, 34.270008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401306, 33.989315, 34.381672>,  <44.435497, 34.217224, 34.448669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401306, 33.989315, 34.381672>,  <44.344318, 33.609467, 34.270008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401306, 33.989315, 34.381672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331765, -0.219908, 0.917373,
		0.932542, -0.223311, 0.283720,
		0.142468, 0.949617, 0.279160,
		44.444046, 34.274200, 34.465420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645218, 33.626686, 35.026901>,  <44.344318, 33.609467, 34.270008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645218, 33.626686, 35.026901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505112, 33.994934, 34.957882>,  <44.421047, 34.215881, 34.916470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.505112, 33.994934, 34.957882>,  <44.645218, 33.626686, 35.026901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505112, 33.994934, 34.957882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300702, 0.063938, 0.951572,
		0.887068, 0.385192, 0.254436,
		-0.350270, 0.920619, -0.172546,
		44.400032, 34.271118, 34.906116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964668, 34.128666, 35.510155>,  <44.645218, 33.626686, 35.026901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964668, 34.128666, 35.510155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638424, 34.326256, 35.389645>,  <44.442677, 34.444809, 35.317341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.638424, 34.326256, 35.389645>,  <44.964668, 34.128666, 35.510155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638424, 34.326256, 35.389645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209605, 0.233072, 0.949601,
		0.539299, 0.837654, -0.086556,
		-0.815611, 0.493977, -0.301273,
		44.393742, 34.474449, 35.299263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857479, 34.713577, 35.967144>,  <44.964668, 34.128666, 35.510155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857479, 34.713577, 35.967144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480686, 34.666172, 35.841530>,  <44.254612, 34.637730, 35.766159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.480686, 34.666172, 35.841530>,  <44.857479, 34.713577, 35.967144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480686, 34.666172, 35.841530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326203, 0.102714, 0.939703,
		-0.079115, 0.987625, -0.135416,
		-0.941983, -0.118517, -0.314040,
		44.198090, 34.630615, 35.747318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530338, 35.294212, 36.272442>,  <44.857479, 34.713577, 35.967144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530338, 35.294212, 36.272442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245670, 35.036331, 36.160820>,  <44.074867, 34.881603, 36.093845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.245670, 35.036331, 36.160820>,  <44.530338, 35.294212, 36.272442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245670, 35.036331, 36.160820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485077, 0.163641, 0.859024,
		-0.508154, 0.746709, -0.429192,
		-0.711674, -0.644707, -0.279057,
		44.032169, 34.842918, 36.077103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875462, 35.604221, 36.426491>,  <44.530338, 35.294212, 36.272442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875462, 35.604221, 36.426491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.864594, 35.204380, 36.423450>,  <43.858070, 34.964474, 36.421627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.864594, 35.204380, 36.423450>,  <43.875462, 35.604221, 36.426491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864594, 35.204380, 36.423450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386939, 0.003505, 0.922099,
		-0.921705, 0.027998, -0.386880,
		-0.027173, -0.999602, -0.007603,
		43.856441, 34.904499, 36.421169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254551, 35.475689, 36.743771>,  <43.875462, 35.604221, 36.426491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254551, 35.475689, 36.743771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461391, 35.137299, 36.795818>,  <43.585495, 34.934265, 36.827049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.461391, 35.137299, 36.795818>,  <43.254551, 35.475689, 36.743771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461391, 35.137299, 36.795818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346238, -0.067711, 0.935700,
		-0.782771, -0.528901, -0.327922,
		0.517097, -0.845978, 0.130124,
		43.616520, 34.883507, 36.834854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824982, 35.012268, 37.097660>,  <43.254551, 35.475689, 36.743771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824982, 35.012268, 37.097660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175667, 34.828510, 37.154686>,  <43.386078, 34.718254, 37.188904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.175667, 34.828510, 37.154686>,  <42.824982, 35.012268, 37.097660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175667, 34.828510, 37.154686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253714, -0.189850, 0.948465,
		-0.408652, -0.867707, -0.282999,
		0.876717, -0.459394, 0.142567,
		43.438683, 34.690693, 37.197456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720795, 34.489407, 37.583225>,  <42.824982, 35.012268, 37.097660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720795, 34.489407, 37.583225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119686, 34.513294, 37.600971>,  <43.359020, 34.527626, 37.611618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119686, 34.513294, 37.600971>,  <42.720795, 34.489407, 37.583225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119686, 34.513294, 37.600971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031656, -0.199091, 0.979470,
		0.067328, -0.978160, -0.196649,
		0.997228, 0.059720, 0.044369,
		43.418854, 34.531212, 37.614281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940601, 33.917603, 37.986317>,  <42.720795, 34.489407, 37.583225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940601, 33.917603, 37.986317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219376, 34.203403, 38.010868>,  <43.386639, 34.374886, 38.025597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.219376, 34.203403, 38.010868>,  <42.940601, 33.917603, 37.986317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219376, 34.203403, 38.010868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016161, -0.069913, 0.997422,
		0.716953, -0.696130, -0.037178,
		0.696935, 0.714504, 0.061374,
		43.428455, 34.417755, 38.029282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374851, 33.743908, 38.502388>,  <42.940601, 33.917603, 37.986317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374851, 33.743908, 38.502388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467075, 34.130413, 38.456463>,  <43.522411, 34.362316, 38.428909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467075, 34.130413, 38.456463>,  <43.374851, 33.743908, 38.502388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467075, 34.130413, 38.456463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162507, 0.078093, 0.983612,
		0.959391, -0.245442, -0.139019,
		0.230564, 0.966261, -0.114808,
		43.536243, 34.420292, 38.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883209, 33.852108, 38.864231>,  <43.374851, 33.743908, 38.502388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883209, 33.852108, 38.864231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782681, 34.238762, 38.844414>,  <43.722363, 34.470753, 38.832523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782681, 34.238762, 38.844414>,  <43.883209, 33.852108, 38.864231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782681, 34.238762, 38.844414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207041, 0.103687, 0.972822,
		0.945501, 0.234234, -0.226192,
		-0.251322, 0.966635, -0.049540,
		43.707283, 34.528751, 38.829552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376106, 34.350166, 39.300755>,  <43.883209, 33.852108, 38.864231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376106, 34.350166, 39.300755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054161, 34.583969, 39.259682>,  <43.860992, 34.724251, 39.235039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.054161, 34.583969, 39.259682>,  <44.376106, 34.350166, 39.300755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054161, 34.583969, 39.259682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090468, 0.291855, 0.952174,
		0.586518, 0.757085, -0.287783,
		-0.804868, 0.584503, -0.102686,
		43.812702, 34.759319, 39.228874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556633, 35.022346, 39.692181>,  <44.376106, 34.350166, 39.300755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556633, 35.022346, 39.692181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160023, 35.018970, 39.640327>,  <43.922058, 35.016945, 39.609215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.160023, 35.018970, 39.640327>,  <44.556633, 35.022346, 39.692181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160023, 35.018970, 39.640327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126218, 0.298651, 0.945979,
		0.030732, 0.954325, -0.297185,
		-0.991526, -0.008439, -0.129631,
		43.862564, 35.016438, 39.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300797, 35.607983, 40.116459>,  <44.556633, 35.022346, 39.692181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300797, 35.607983, 40.116459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973610, 35.388443, 40.047523>,  <43.777298, 35.256721, 40.006165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973610, 35.388443, 40.047523>,  <44.300797, 35.607983, 40.116459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973610, 35.388443, 40.047523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297691, 0.147501, 0.943198,
		-0.492250, 0.822807, -0.284037,
		-0.817967, -0.548845, -0.172335,
		43.728218, 35.223789, 39.995823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733391, 36.060795, 40.372032>,  <44.300797, 35.607983, 40.116459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733391, 36.060795, 40.372032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.617264, 35.678028, 40.374256>,  <43.547588, 35.448368, 40.375591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.617264, 35.678028, 40.374256>,  <43.733391, 36.060795, 40.372032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617264, 35.678028, 40.374256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320637, 0.102751, 0.941613,
		-0.901614, 0.271585, -0.336652,
		-0.290319, -0.956914, 0.005562,
		43.530167, 35.390953, 40.375923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145454, 36.075043, 40.560043>,  <43.733391, 36.060795, 40.372032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145454, 36.075043, 40.560043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255020, 35.701283, 40.651138>,  <43.320759, 35.477028, 40.705795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255020, 35.701283, 40.651138>,  <43.145454, 36.075043, 40.560043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255020, 35.701283, 40.651138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317513, 0.135655, 0.938500,
		-0.907830, -0.329379, -0.259527,
		0.273916, -0.934402, 0.227734,
		43.337196, 35.420963, 40.719460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606426, 35.871040, 41.084728>,  <43.145454, 36.075043, 40.560043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606426, 35.871040, 41.084728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902107, 35.605679, 41.131172>,  <43.079514, 35.446461, 41.159039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.902107, 35.605679, 41.131172>,  <42.606426, 35.871040, 41.084728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902107, 35.605679, 41.131172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208964, -0.062033, 0.975954,
		-0.640247, -0.745687, -0.184482,
		0.739201, -0.663402, 0.116105,
		43.123867, 35.406658, 41.166004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.806255, 42.547066, 38.307964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675255, 42.179558, 38.396156>,  <36.596653, 41.959053, 38.449070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675255, 42.179558, 38.396156>,  <36.806255, 42.547066, 38.307964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675255, 42.179558, 38.396156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236880, -0.305734, -0.922179,
		0.914675, -0.249788, 0.317766,
		-0.327501, -0.918767, 0.220477,
		36.577003, 41.903927, 38.462299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346321, 42.097523, 38.103439>,  <36.806255, 42.547066, 38.307964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346321, 42.097523, 38.103439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009644, 41.881977, 38.117195>,  <36.807636, 41.752651, 38.125450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009644, 41.881977, 38.117195>,  <37.346321, 42.097523, 38.103439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009644, 41.881977, 38.117195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133811, -0.269871, -0.953553,
		0.523113, -0.797997, 0.299254,
		-0.841693, -0.538860, 0.034392,
		36.757137, 41.720318, 38.127514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555214, 41.443428, 37.868717>,  <37.346321, 42.097523, 38.103439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555214, 41.443428, 37.868717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159584, 41.487617, 37.829662>,  <36.922207, 41.514133, 37.806229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159584, 41.487617, 37.829662>,  <37.555214, 41.443428, 37.868717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159584, 41.487617, 37.829662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054423, -0.341894, -0.938161,
		-0.137026, -0.933222, 0.332145,
		-0.989071, 0.110476, -0.097637,
		36.862862, 41.520760, 37.800373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433151, 40.844975, 37.591614>,  <37.555214, 41.443428, 37.868717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433151, 40.844975, 37.591614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132622, 41.089645, 37.492531>,  <36.952305, 41.236446, 37.433083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132622, 41.089645, 37.492531>,  <37.433151, 40.844975, 37.591614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132622, 41.089645, 37.492531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004204, -0.370911, -0.928659,
		-0.659919, -0.698766, 0.276103,
		-0.751325, 0.611679, -0.247708,
		36.907223, 41.273148, 37.418217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033283, 40.369377, 37.305164>,  <37.433151, 40.844975, 37.591614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033283, 40.369377, 37.305164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883793, 40.717724, 37.177464>,  <36.794098, 40.926731, 37.100842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883793, 40.717724, 37.177464>,  <37.033283, 40.369377, 37.305164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883793, 40.717724, 37.177464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198651, -0.411357, -0.889563,
		-0.906018, -0.269032, 0.326733,
		-0.373725, 0.870866, -0.319253,
		36.771675, 40.978985, 37.081688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310001, 40.273338, 37.033222>,  <37.033283, 40.369377, 37.305164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310001, 40.273338, 37.033222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469654, 40.599190, 36.864902>,  <36.565445, 40.794701, 36.763908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469654, 40.599190, 36.864902>,  <36.310001, 40.273338, 37.033222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469654, 40.599190, 36.864902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124486, -0.406550, -0.905108,
		-0.908403, 0.413642, -0.060857,
		0.399132, 0.814627, -0.420804,
		36.589394, 40.843578, 36.738663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852966, 40.410759, 36.427391>,  <36.310001, 40.273338, 37.033222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852966, 40.410759, 36.427391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203911, 40.587589, 36.352768>,  <36.414478, 40.693687, 36.307995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203911, 40.587589, 36.352768>,  <35.852966, 40.410759, 36.427391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203911, 40.587589, 36.352768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010780, -0.406868, -0.913423,
		-0.479708, 0.799392, -0.361736,
		0.877362, 0.442076, -0.186561,
		36.467121, 40.720211, 36.296799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768166, 40.482494, 35.759441>,  <35.852966, 40.410759, 36.427391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768166, 40.482494, 35.759441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156860, 40.568558, 35.798290>,  <36.390079, 40.620193, 35.821598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156860, 40.568558, 35.798290>,  <35.768166, 40.482494, 35.759441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156860, 40.568558, 35.798290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176928, -0.391468, -0.903022,
		-0.156271, 0.894685, -0.418471,
		0.971739, 0.215156, 0.097119,
		36.448383, 40.633106, 35.827427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030769, 40.730247, 35.104332>,  <35.768166, 40.482494, 35.759441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030769, 40.730247, 35.104332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378471, 40.620037, 35.268520>,  <36.587093, 40.553909, 35.367035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378471, 40.620037, 35.268520>,  <36.030769, 40.730247, 35.104332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378471, 40.620037, 35.268520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276412, -0.417509, -0.865611,
		0.409876, 0.865893, -0.286761,
		0.869252, -0.275528, 0.410470,
		36.639248, 40.537380, 35.391663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612400, 40.942371, 34.672234>,  <36.030769, 40.730247, 35.104332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612400, 40.942371, 34.672234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753822, 40.639633, 34.892120>,  <36.838676, 40.457993, 35.024052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753822, 40.639633, 34.892120>,  <36.612400, 40.942371, 34.672234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753822, 40.639633, 34.892120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365112, -0.429402, -0.826019,
		0.861215, 0.492752, 0.124514,
		0.353556, -0.756841, 0.549717,
		36.859890, 40.412582, 35.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143845, 40.722614, 34.244171>,  <36.612400, 40.942371, 34.672234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143845, 40.722614, 34.244171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095642, 40.422493, 34.504181>,  <37.066723, 40.242420, 34.660187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095642, 40.422493, 34.504181>,  <37.143845, 40.722614, 34.244171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095642, 40.422493, 34.504181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308590, -0.650664, -0.693836,
		0.943532, 0.116982, 0.309941,
		-0.120501, -0.750301, 0.650022,
		37.059490, 40.197403, 34.699188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762352, 40.363049, 34.201286>,  <37.143845, 40.722614, 34.244171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762352, 40.363049, 34.201286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460701, 40.128399, 34.319382>,  <37.279709, 39.987610, 34.390240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460701, 40.128399, 34.319382>,  <37.762352, 40.363049, 34.201286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460701, 40.128399, 34.319382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217849, -0.647563, -0.730208,
		0.619542, -0.486353, 0.616140,
		-0.754128, -0.586620, 0.295241,
		37.234463, 39.952412, 34.407955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957260, 39.555946, 34.254978>,  <37.762352, 40.363049, 34.201286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957260, 39.555946, 34.254978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576935, 39.618641, 34.148106>,  <37.348740, 39.656258, 34.083984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576935, 39.618641, 34.148106>,  <37.957260, 39.555946, 34.254978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576935, 39.618641, 34.148106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140539, -0.550377, -0.823003,
		-0.276040, -0.820074, 0.501280,
		-0.950816, 0.156732, -0.267178,
		37.291691, 39.665661, 34.067951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729610, 38.922710, 34.299240>,  <37.957260, 39.555946, 34.254978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729610, 38.922710, 34.299240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589710, 39.185768, 34.032352>,  <37.505772, 39.343605, 33.872219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589710, 39.185768, 34.032352>,  <37.729610, 38.922710, 34.299240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589710, 39.185768, 34.032352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165081, -0.657788, -0.734890,
		-0.922185, -0.367171, 0.121494,
		-0.349747, 0.657648, -0.667215,
		37.484787, 39.383064, 33.832188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269444, 38.621025, 33.923649>,  <37.729610, 38.922710, 34.299240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269444, 38.621025, 33.923649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339619, 38.227772, 33.944336>,  <38.381725, 37.991821, 33.956749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339619, 38.227772, 33.944336>,  <38.269444, 38.621025, 33.923649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339619, 38.227772, 33.944336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255233, 0.005313, 0.966865,
		-0.950830, -0.182823, -0.249995,
		0.175437, -0.983132, 0.051714,
		38.392250, 37.932831, 33.959850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768841, 38.177105, 34.240410>,  <38.269444, 38.621025, 33.923649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768841, 38.177105, 34.240410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101112, 37.957714, 34.278664>,  <38.300476, 37.826080, 34.301617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101112, 37.957714, 34.278664>,  <37.768841, 38.177105, 34.240410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101112, 37.957714, 34.278664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084096, 0.046199, 0.995386,
		-0.550362, -0.834890, -0.007748,
		0.830680, -0.548474, 0.095638,
		38.350315, 37.793171, 34.307354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576992, 37.639301, 34.624592>,  <37.768841, 38.177105, 34.240410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576992, 37.639301, 34.624592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973133, 37.686680, 34.653381>,  <38.210815, 37.715107, 34.670654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973133, 37.686680, 34.653381>,  <37.576992, 37.639301, 34.624592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973133, 37.686680, 34.653381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056968, -0.125504, 0.990456,
		0.126353, -0.984996, -0.117544,
		0.990348, 0.118451, 0.071971,
		38.270237, 37.722214, 34.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709419, 37.180183, 35.118614>,  <37.576992, 37.639301, 34.624592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709419, 37.180183, 35.118614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008926, 37.444965, 35.104919>,  <38.188629, 37.603832, 35.096703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008926, 37.444965, 35.104919>,  <37.709419, 37.180183, 35.118614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008926, 37.444965, 35.104919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165948, -0.137200, 0.976544,
		0.641728, -0.736882, -0.212580,
		0.748764, 0.661952, -0.034239,
		38.233555, 37.643551, 35.094646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202744, 36.896004, 35.532520>,  <37.709419, 37.180183, 35.118614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202744, 36.896004, 35.532520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287094, 37.286697, 35.516876>,  <38.337704, 37.521114, 35.507492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287094, 37.286697, 35.516876>,  <38.202744, 36.896004, 35.532520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287094, 37.286697, 35.516876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238805, -0.012683, 0.970985,
		0.947894, -0.214099, -0.235922,
		0.210879, 0.976730, -0.039105,
		38.350357, 37.579716, 35.505146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827080, 37.004200, 35.946445>,  <38.202744, 36.896004, 35.532520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827080, 37.004200, 35.946445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670151, 37.370857, 35.915852>,  <38.575993, 37.590851, 35.897495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670151, 37.370857, 35.915852>,  <38.827080, 37.004200, 35.946445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670151, 37.370857, 35.915852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284941, 0.200170, 0.937412,
		0.874581, 0.345975, -0.339720,
		-0.392323, 0.916642, -0.076483,
		38.552452, 37.645851, 35.892906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354412, 37.473991, 36.294239>,  <38.827080, 37.004200, 35.946445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354412, 37.473991, 36.294239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999447, 37.657463, 36.275860>,  <38.786469, 37.767548, 36.264832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999447, 37.657463, 36.275860>,  <39.354412, 37.473991, 36.294239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999447, 37.657463, 36.275860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114750, 0.316340, 0.941680,
		0.446466, 0.830386, -0.333358,
		-0.887412, 0.458681, -0.045948,
		38.733223, 37.795067, 36.262077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438194, 38.084419, 36.642399>,  <39.354412, 37.473991, 36.294239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438194, 38.084419, 36.642399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038570, 38.067139, 36.640747>,  <38.798798, 38.056770, 36.639755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038570, 38.067139, 36.640747>,  <39.438194, 38.084419, 36.642399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038570, 38.067139, 36.640747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011469, 0.171049, 0.985196,
		-0.041852, 0.984315, -0.171383,
		-0.999058, -0.043198, -0.004131,
		38.738853, 38.054180, 36.639507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220272, 38.701756, 36.867931>,  <39.438194, 38.084419, 36.642399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220272, 38.701756, 36.867931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949623, 38.414448, 36.932758>,  <38.787231, 38.242062, 36.971657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949623, 38.414448, 36.932758>,  <39.220272, 38.701756, 36.867931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949623, 38.414448, 36.932758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106178, 0.122629, 0.986757,
		-0.728631, 0.684873, -0.006710,
		-0.676626, -0.718269, 0.162070,
		38.746635, 38.198967, 36.981380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994926, 38.981644, 37.426350>,  <39.220272, 38.701756, 36.867931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994926, 38.981644, 37.426350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826035, 38.619133, 37.418434>,  <38.724701, 38.401627, 37.413685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826035, 38.619133, 37.418434>,  <38.994926, 38.981644, 37.426350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826035, 38.619133, 37.418434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031231, -0.007278, 0.999486,
		-0.905951, 0.422630, -0.025230,
		-0.422229, -0.906273, -0.019793,
		38.699368, 38.347252, 37.412495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317413, 39.029644, 37.723434>,  <38.994926, 38.981644, 37.426350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317413, 39.029644, 37.723434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415428, 38.643124, 37.754963>,  <38.474239, 38.411209, 37.773880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415428, 38.643124, 37.754963>,  <38.317413, 39.029644, 37.723434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415428, 38.643124, 37.754963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176444, 0.035491, 0.983671,
		-0.953322, -0.254947, -0.161802,
		0.245041, -0.966304, 0.078818,
		38.488941, 38.353233, 37.778606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856945, 38.729492, 38.078308>,  <38.317413, 39.029644, 37.723434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856945, 38.729492, 38.078308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170898, 38.483849, 38.111366>,  <38.359268, 38.336464, 38.131199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170898, 38.483849, 38.111366>,  <37.856945, 38.729492, 38.078308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170898, 38.483849, 38.111366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183226, -0.102605, 0.977702,
		-0.591937, -0.782522, -0.193054,
		0.784882, -0.614110, 0.082642,
		38.406364, 38.299614, 38.136158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556332, 38.194931, 38.430950>,  <37.856945, 38.729492, 38.078308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556332, 38.194931, 38.430950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951706, 38.173454, 38.487682>,  <38.188931, 38.160568, 38.521721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951706, 38.173454, 38.487682>,  <37.556332, 38.194931, 38.430950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951706, 38.173454, 38.487682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138915, 0.054566, 0.988800,
		-0.060832, -0.997066, 0.046476,
		0.988434, -0.053694, 0.141826,
		38.248238, 38.157345, 38.530231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615746, 37.772442, 38.992004>,  <37.556332, 38.194931, 38.430950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615746, 37.772442, 38.992004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960537, 37.974751, 38.978260>,  <38.167412, 38.096138, 38.970013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960537, 37.974751, 38.978260>,  <37.615746, 37.772442, 38.992004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960537, 37.974751, 38.978260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012462, 0.046624, 0.998835,
		0.506788, -0.861404, 0.033886,
		0.861980, 0.505776, -0.034363,
		38.219131, 38.126484, 38.967953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535198, 37.056770, 39.297947>,  <37.615746, 37.772442, 38.992004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535198, 37.056770, 39.297947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326389, 36.757431, 39.461636>,  <37.201103, 36.577827, 39.559849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326389, 36.757431, 39.461636>,  <37.535198, 37.056770, 39.297947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326389, 36.757431, 39.461636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463652, -0.153732, -0.872579,
		0.715906, -0.645242, -0.266723,
		-0.522021, -0.748351, 0.409225,
		37.169785, 36.532925, 39.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463032, 36.537743, 38.776302>,  <37.535198, 37.056770, 39.297947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463032, 36.537743, 38.776302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176529, 36.468269, 39.046650>,  <37.004627, 36.426586, 39.208858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176529, 36.468269, 39.046650>,  <37.463032, 36.537743, 38.776302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176529, 36.468269, 39.046650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688050, 0.014168, -0.725525,
		0.116441, -0.984698, -0.129655,
		-0.716260, -0.173690, 0.675872,
		36.961651, 36.416164, 39.249413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064449, 35.939678, 38.452408>,  <37.463032, 36.537743, 38.776302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064449, 35.939678, 38.452408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820515, 36.126450, 38.708557>,  <36.674152, 36.238514, 38.862247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820515, 36.126450, 38.708557>,  <37.064449, 35.939678, 38.452408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820515, 36.126450, 38.708557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735905, -0.033702, -0.676246,
		-0.294178, -0.883652, 0.364169,
		-0.609839, 0.466930, 0.640370,
		36.637562, 36.266529, 38.900669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398296, 35.471550, 38.498444>,  <37.064449, 35.939678, 38.452408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398296, 35.471550, 38.498444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314339, 35.838543, 38.633598>,  <36.263966, 36.058739, 38.714691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314339, 35.838543, 38.633598>,  <36.398296, 35.471550, 38.498444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314339, 35.838543, 38.633598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860324, -0.009114, -0.509666,
		-0.464531, -0.397670, 0.791246,
		-0.209890, 0.917483, 0.337891,
		36.251373, 36.113789, 38.734966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746658, 35.477764, 38.941750>,  <36.398296, 35.471550, 38.498444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746658, 35.477764, 38.941750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802177, 35.837135, 38.775108>,  <35.835487, 36.052757, 38.675125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802177, 35.837135, 38.775108>,  <35.746658, 35.477764, 38.941750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802177, 35.837135, 38.775108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804411, -0.143087, -0.576584,
		-0.577631, 0.415148, 0.702848,
		0.138799, 0.898431, -0.416601,
		35.843819, 36.106667, 38.650127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144371, 35.739067, 38.971684>,  <35.746658, 35.477764, 38.941750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144371, 35.739067, 38.971684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337269, 35.979630, 38.716888>,  <35.453007, 36.123966, 38.564011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337269, 35.979630, 38.716888>,  <35.144371, 35.739067, 38.971684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337269, 35.979630, 38.716888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805978, 0.019654, -0.591620,
		-0.343283, 0.798703, 0.494196,
		0.482241, 0.601404, -0.636990,
		35.481941, 36.160049, 38.525791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683563, 36.204231, 38.779217>,  <35.144371, 35.739067, 38.971684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683563, 36.204231, 38.779217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960461, 36.198452, 38.490608>,  <35.126598, 36.194984, 38.317444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960461, 36.198452, 38.490608>,  <34.683563, 36.204231, 38.779217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960461, 36.198452, 38.490608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712835, 0.142241, -0.686756,
		0.112549, 0.989727, 0.088169,
		0.692242, -0.014444, -0.721521,
		35.168133, 36.194118, 38.274151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311531, 36.647934, 38.384445>,  <34.683563, 36.204231, 38.779217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311531, 36.647934, 38.384445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581932, 36.469940, 38.149498>,  <34.744175, 36.363144, 38.008530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581932, 36.469940, 38.149498>,  <34.311531, 36.647934, 38.384445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581932, 36.469940, 38.149498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594237, 0.142181, -0.791623,
		0.435775, 0.884178, -0.168313,
		0.676005, -0.444987, -0.587371,
		34.784733, 36.336445, 37.973286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500797, 37.070911, 37.753662>,  <34.311531, 36.647934, 38.384445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500797, 37.070911, 37.753662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589146, 36.697205, 37.641697>,  <34.642155, 36.472980, 37.574520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589146, 36.697205, 37.641697>,  <34.500797, 37.070911, 37.753662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589146, 36.697205, 37.641697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441263, 0.160217, -0.882960,
		0.869771, 0.318539, -0.376871,
		0.220876, -0.934272, -0.279911,
		34.655407, 36.416924, 37.557724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760067, 37.095509, 37.026104>,  <34.500797, 37.070911, 37.753662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760067, 37.095509, 37.026104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690777, 36.701675, 37.035892>,  <34.649204, 36.465378, 37.041763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690777, 36.701675, 37.035892>,  <34.760067, 37.095509, 37.026104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690777, 36.701675, 37.035892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356947, 0.039606, -0.933285,
		0.917923, -0.170401, -0.358303,
		-0.173224, -0.984578, 0.024468,
		34.638809, 36.406303, 37.043232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105640, 36.774250, 36.444408>,  <34.760067, 37.095509, 37.026104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105640, 36.774250, 36.444408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808167, 36.526611, 36.545326>,  <34.629681, 36.378029, 36.605877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808167, 36.526611, 36.545326>,  <35.105640, 36.774250, 36.444408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808167, 36.526611, 36.545326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399925, 0.109579, -0.909974,
		0.535716, -0.777632, -0.329085,
		-0.743685, -0.619097, 0.252292,
		34.585060, 36.340881, 36.621014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992077, 36.366421, 35.859638>,  <35.105640, 36.774250, 36.444408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992077, 36.366421, 35.859638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666172, 36.324642, 36.087765>,  <34.470631, 36.299576, 36.224640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666172, 36.324642, 36.087765>,  <34.992077, 36.366421, 35.859638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666172, 36.324642, 36.087765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574340, 0.010682, -0.818548,
		0.079404, -0.994473, -0.068693,
		-0.814757, -0.104449, 0.570317,
		34.421745, 36.293308, 36.258862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.342625, 37.246098, 43.213249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955284, 37.146439, 43.207199>,  <37.722881, 37.086643, 43.203568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955284, 37.146439, 43.207199>,  <38.342625, 37.246098, 43.213249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955284, 37.146439, 43.207199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143169, -0.504767, -0.851301,
		0.204467, -0.826520, 0.524460,
		-0.968347, -0.249150, -0.015124,
		37.664780, 37.071693, 43.202663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354282, 36.611938, 42.866295>,  <38.342625, 37.246098, 43.213249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354282, 36.611938, 42.866295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.965858, 36.707237, 42.873104>,  <37.732803, 36.764416, 42.877190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.965858, 36.707237, 42.873104>,  <38.354282, 36.611938, 42.866295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965858, 36.707237, 42.873104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098466, -0.334352, -0.937290,
		-0.217608, -0.911839, 0.348134,
		-0.971057, 0.238241, 0.017027,
		37.674541, 36.778709, 42.878212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951721, 35.977814, 42.729431>,  <38.354282, 36.611938, 42.866295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951721, 35.977814, 42.729431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734257, 36.296684, 42.624401>,  <37.603779, 36.488007, 42.561382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734257, 36.296684, 42.624401>,  <37.951721, 35.977814, 42.729431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734257, 36.296684, 42.624401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026115, -0.328763, -0.944051,
		-0.838900, -0.506385, 0.199553,
		-0.543659, 0.797175, -0.262575,
		37.571159, 36.535835, 42.545628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364029, 35.764942, 42.229954>,  <37.951721, 35.977814, 42.729431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364029, 35.764942, 42.229954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324860, 36.156445, 42.157890>,  <37.301357, 36.391346, 42.114655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324860, 36.156445, 42.157890>,  <37.364029, 35.764942, 42.229954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324860, 36.156445, 42.157890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033339, -0.184150, -0.982333,
		-0.994635, -0.090188, 0.050663,
		-0.097924, 0.978752, -0.180155,
		37.295483, 36.450069, 42.103844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737499, 35.836967, 41.683769>,  <37.364029, 35.764942, 42.229954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737499, 35.836967, 41.683769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964035, 36.166618, 41.680367>,  <37.099957, 36.364410, 41.678326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964035, 36.166618, 41.680367>,  <36.737499, 35.836967, 41.683769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964035, 36.166618, 41.680367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029559, 0.009999, -0.999513,
		-0.823644, 0.566312, 0.030023,
		0.566337, 0.824130, -0.008504,
		37.133938, 36.413857, 41.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326385, 36.510796, 41.452522>,  <36.737499, 35.836967, 41.683769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326385, 36.510796, 41.452522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717567, 36.524719, 41.370167>,  <36.952278, 36.533073, 41.320755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717567, 36.524719, 41.370167>,  <36.326385, 36.510796, 41.452522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717567, 36.524719, 41.370167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204360, -0.042865, -0.977957,
		-0.042865, 0.998474, -0.034807,
		0.977957, 0.034807, -0.205886,
		37.010956, 36.535160, 41.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360069, 36.996445, 40.930244>,  <36.326385, 36.510796, 41.452522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360069, 36.996445, 40.930244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726700, 36.843353, 40.883915>,  <36.946678, 36.751499, 40.856117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726700, 36.843353, 40.883915>,  <36.360069, 36.996445, 40.930244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726700, 36.843353, 40.883915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238659, -0.291188, -0.926419,
		0.320837, 0.876773, -0.358236,
		0.916573, -0.382726, -0.115826,
		37.001671, 36.728535, 40.849167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599640, 37.247517, 40.317974>,  <36.360069, 36.996445, 40.930244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599640, 37.247517, 40.317974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852863, 36.941883, 40.367634>,  <37.004799, 36.758503, 40.397430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852863, 36.941883, 40.367634>,  <36.599640, 37.247517, 40.317974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852863, 36.941883, 40.367634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031447, -0.185627, -0.982117,
		0.773463, 0.617835, -0.141541,
		0.633060, -0.764083, 0.124147,
		37.042782, 36.712658, 40.404877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125431, 37.394482, 39.813332>,  <36.599640, 37.247517, 40.317974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125431, 37.394482, 39.813332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146538, 37.009277, 39.919025>,  <37.159203, 36.778152, 39.982441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146538, 37.009277, 39.919025>,  <37.125431, 37.394482, 39.813332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146538, 37.009277, 39.919025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080757, -0.259619, -0.962328,
		0.995336, 0.072114, 0.064071,
		0.052763, -0.963015, 0.264232,
		37.162365, 36.720371, 39.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891491, 37.622787, 39.727074>,  <37.125431, 37.394482, 39.813332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891491, 37.622787, 39.727074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130512, 37.919353, 39.604935>,  <38.273926, 38.097294, 39.531651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.130512, 37.919353, 39.604935>,  <37.891491, 37.622787, 39.727074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130512, 37.919353, 39.604935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069133, 0.331752, 0.940830,
		0.798845, -0.583303, 0.146982,
		0.597551, 0.741416, -0.305345,
		38.309776, 38.141777, 39.513332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489128, 37.650249, 40.138588>,  <37.891491, 37.622787, 39.727074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489128, 37.650249, 40.138588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454254, 38.013653, 39.975124>,  <38.433331, 38.231697, 39.877045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.454254, 38.013653, 39.975124>,  <38.489128, 37.650249, 40.138588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454254, 38.013653, 39.975124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171869, 0.417790, 0.892139,
		0.981255, 0.007541, -0.192569,
		-0.087180, 0.908512, -0.408662,
		38.428101, 38.286205, 39.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054924, 38.063053, 40.382687>,  <38.489128, 37.650249, 40.138588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054924, 38.063053, 40.382687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768013, 38.316849, 40.267490>,  <38.595867, 38.469128, 40.198372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768013, 38.316849, 40.267490>,  <39.054924, 38.063053, 40.382687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768013, 38.316849, 40.267490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104625, 0.506693, 0.855754,
		0.688891, 0.583679, -0.429822,
		-0.717274, 0.634492, -0.287989,
		38.552830, 38.507195, 40.181095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342552, 38.770126, 40.494152>,  <39.054924, 38.063053, 40.382687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342552, 38.770126, 40.494152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943310, 38.787331, 40.511787>,  <38.703766, 38.797653, 40.522369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943310, 38.787331, 40.511787>,  <39.342552, 38.770126, 40.494152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943310, 38.787331, 40.511787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060123, 0.525007, 0.848971,
		0.013372, 0.850010, -0.526597,
		-0.998101, 0.043014, 0.044085,
		38.643879, 38.800236, 40.525013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230148, 39.421432, 40.695175>,  <39.342552, 38.770126, 40.494152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230148, 39.421432, 40.695175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867176, 39.265438, 40.757771>,  <38.649395, 39.171841, 40.795326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.867176, 39.265438, 40.757771>,  <39.230148, 39.421432, 40.695175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867176, 39.265438, 40.757771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007327, 0.387021, 0.922042,
		-0.420148, 0.835538, -0.354051,
		-0.907426, -0.389988, 0.156484,
		38.594948, 39.148441, 40.804714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781979, 39.958187, 41.048901>,  <39.230148, 39.421432, 40.695175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781979, 39.958187, 41.048901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.630672, 39.594589, 41.118919>,  <38.539890, 39.376431, 41.160931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.630672, 39.594589, 41.118919>,  <38.781979, 39.958187, 41.048901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630672, 39.594589, 41.118919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040568, 0.172639, 0.984149,
		-0.924809, 0.379368, -0.028427,
		-0.378263, -0.908997, 0.175048,
		38.517193, 39.321892, 41.171432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125549, 40.069111, 41.509407>,  <38.781979, 39.958187, 41.048901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125549, 40.069111, 41.509407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214642, 39.681885, 41.555424>,  <38.268097, 39.449547, 41.583035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214642, 39.681885, 41.555424>,  <38.125549, 40.069111, 41.509407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214642, 39.681885, 41.555424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150668, 0.082409, 0.985144,
		-0.963168, -0.236753, -0.127502,
		0.222728, -0.968069, 0.115044,
		38.281460, 39.391464, 41.589935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681248, 39.821465, 42.003498>,  <38.125549, 40.069111, 41.509407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681248, 39.821465, 42.003498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970860, 39.545574, 42.000488>,  <38.144627, 39.380039, 41.998684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.970860, 39.545574, 42.000488>,  <37.681248, 39.821465, 42.003498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970860, 39.545574, 42.000488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032948, 0.023690, 0.999176,
		-0.688981, -0.723682, 0.039877,
		0.724031, -0.689727, -0.007522,
		38.188068, 39.338657, 41.998230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573978, 39.469929, 42.625362>,  <37.681248, 39.821465, 42.003498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573978, 39.469929, 42.625362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959251, 39.421986, 42.529095>,  <38.190414, 39.393219, 42.471333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.959251, 39.421986, 42.529095>,  <37.573978, 39.469929, 42.625362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959251, 39.421986, 42.529095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256814, 0.145163, 0.955497,
		-0.079587, -0.982121, 0.170599,
		0.963178, -0.119858, -0.240669,
		38.248203, 39.386028, 42.456894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759163, 38.922279, 43.103462>,  <37.573978, 39.469929, 42.625362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759163, 38.922279, 43.103462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093006, 39.096436, 42.968491>,  <38.293312, 39.200932, 42.887508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093006, 39.096436, 42.968491>,  <37.759163, 38.922279, 43.103462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093006, 39.096436, 42.968491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376914, -0.004681, 0.926236,
		0.401697, -0.900228, -0.168013,
		0.834610, 0.435393, -0.337428,
		38.343388, 39.227055, 42.867264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336411, 38.551846, 43.514656>,  <37.759163, 38.922279, 43.103462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336411, 38.551846, 43.514656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478359, 38.892017, 43.359310>,  <38.563530, 39.096123, 43.266102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478359, 38.892017, 43.359310>,  <38.336411, 38.551846, 43.514656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478359, 38.892017, 43.359310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481418, 0.189874, 0.855678,
		0.801437, -0.490625, -0.342032,
		0.354873, 0.850433, -0.388368,
		38.584820, 39.147148, 43.242802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021774, 38.508400, 43.712296>,  <38.336411, 38.551846, 43.514656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021774, 38.508400, 43.712296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923492, 38.888687, 43.636639>,  <38.864525, 39.116859, 43.591244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923492, 38.888687, 43.636639>,  <39.021774, 38.508400, 43.712296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923492, 38.888687, 43.636639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396090, 0.276555, 0.875574,
		0.884728, 0.140213, -0.444518,
		-0.245701, 0.950714, -0.189139,
		38.849781, 39.173901, 43.579899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416328, 38.927742, 44.070312>,  <39.021774, 38.508400, 43.712296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416328, 38.927742, 44.070312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170227, 39.239670, 44.024094>,  <39.022568, 39.426826, 43.996365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170227, 39.239670, 44.024094>,  <39.416328, 38.927742, 44.070312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170227, 39.239670, 44.024094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303576, 0.369635, 0.878187,
		0.727533, 0.505230, -0.464153,
		-0.615254, 0.779816, -0.115546,
		38.985649, 39.473614, 43.989429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689209, 39.553337, 44.422184>,  <39.416328, 38.927742, 44.070312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689209, 39.553337, 44.422184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298172, 39.635571, 44.404049>,  <39.063549, 39.684910, 44.393166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298172, 39.635571, 44.404049>,  <39.689209, 39.553337, 44.422184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298172, 39.635571, 44.404049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008714, 0.254710, 0.966978,
		0.210340, 0.944912, -0.250794,
		-0.977589, 0.205579, -0.045341,
		39.004894, 39.697243, 44.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.946867, 38.224983, 45.537865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.323658, 38.091660, 45.521950>,  <32.549732, 38.011665, 45.512402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.323658, 38.091660, 45.521950>,  <31.946867, 38.224983, 45.537865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323658, 38.091660, 45.521950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114638, -0.208042, -0.971379,
		0.315489, 0.919579, -0.234180,
		0.941979, -0.333305, -0.039783,
		32.606251, 37.991669, 45.510014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209415, 38.428249, 44.869930>,  <31.946867, 38.224983, 45.537865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209415, 38.428249, 44.869930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449272, 38.117035, 44.944851>,  <32.593185, 37.930305, 44.989803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.449272, 38.117035, 44.944851>,  <32.209415, 38.428249, 44.869930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449272, 38.117035, 44.944851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175361, -0.100606, -0.979350,
		0.780816, 0.620108, 0.076110,
		0.599646, -0.778039, 0.187297,
		32.629166, 37.883625, 45.001041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738598, 38.561501, 44.427052>,  <32.209415, 38.428249, 44.869930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738598, 38.561501, 44.427052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782761, 38.174381, 44.517536>,  <32.809258, 37.942108, 44.571827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782761, 38.174381, 44.517536>,  <32.738598, 38.561501, 44.427052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782761, 38.174381, 44.517536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105304, -0.214934, -0.970935,
		0.988292, 0.131018, 0.078184,
		0.110405, -0.967801, 0.226214,
		32.815884, 37.884041, 44.585400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429523, 38.279270, 44.106895>,  <32.738598, 38.561501, 44.427052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429523, 38.279270, 44.106895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.203850, 37.955299, 44.171047>,  <33.068447, 37.760918, 44.209538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.203850, 37.955299, 44.171047>,  <33.429523, 38.279270, 44.106895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203850, 37.955299, 44.171047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184316, -0.312890, -0.931734,
		0.804814, -0.496108, 0.325809,
		-0.564183, -0.809924, 0.160378,
		33.034595, 37.712322, 44.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721443, 37.661648, 43.760273>,  <33.429523, 38.279270, 44.106895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721443, 37.661648, 43.760273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332771, 37.575172, 43.798424>,  <33.099567, 37.523289, 43.821316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332771, 37.575172, 43.798424>,  <33.721443, 37.661648, 43.760273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332771, 37.575172, 43.798424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030248, -0.286526, -0.957595,
		0.234348, -0.933363, 0.271873,
		-0.971682, -0.216187, 0.095380,
		33.041267, 37.510315, 43.827038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700851, 37.039623, 43.408852>,  <33.721443, 37.661648, 43.760273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700851, 37.039623, 43.408852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326645, 37.179798, 43.426754>,  <33.102119, 37.263905, 43.437496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326645, 37.179798, 43.426754>,  <33.700851, 37.039623, 43.408852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326645, 37.179798, 43.426754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080986, -0.089428, -0.992695,
		-0.343878, -0.932306, 0.112042,
		-0.935515, 0.350440, 0.044752,
		33.045990, 37.284931, 43.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611237, 37.137753, 42.792248>,  <33.700851, 37.039623, 43.408852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611237, 37.137753, 42.792248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245125, 37.183128, 42.946857>,  <33.025459, 37.210354, 43.039623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.245125, 37.183128, 42.946857>,  <33.611237, 37.137753, 42.792248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245125, 37.183128, 42.946857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395805, -0.074884, -0.915276,
		-0.074884, -0.990719, 0.113440,
		0.915276, -0.113440, -0.386524,
		32.970543, 37.217159, 43.062813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117077, 36.614113, 42.620369>,  <33.611237, 37.137753, 42.792248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117077, 36.614113, 42.620369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918724, 36.958908, 42.662464>,  <32.799713, 37.165787, 42.687721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918724, 36.958908, 42.662464>,  <33.117077, 36.614113, 42.620369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918724, 36.958908, 42.662464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129563, 0.046396, -0.990485,
		-0.858668, -0.504802, 0.088675,
		-0.495885, 0.861987, 0.105242,
		32.769958, 37.217503, 42.694038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571358, 36.595692, 42.199715>,  <33.117077, 36.614113, 42.620369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571358, 36.595692, 42.199715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640236, 36.986115, 42.252880>,  <32.681564, 37.220367, 42.284779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.640236, 36.986115, 42.252880>,  <32.571358, 36.595692, 42.199715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640236, 36.986115, 42.252880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156984, 0.160399, -0.974489,
		-0.972473, 0.146939, 0.180845,
		0.172198, 0.976054, 0.132917,
		32.691895, 37.278931, 42.292755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002296, 36.939198, 41.852974>,  <32.571358, 36.595692, 42.199715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002296, 36.939198, 41.852974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288666, 37.215622, 41.892727>,  <32.460487, 37.381477, 41.916580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288666, 37.215622, 41.892727>,  <32.002296, 36.939198, 41.852974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288666, 37.215622, 41.892727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130089, 0.271893, -0.953494,
		-0.685949, 0.669703, 0.284556,
		0.715927, 0.691066, 0.099384,
		32.503445, 37.422943, 41.922543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641964, 37.458149, 41.669437>,  <32.002296, 36.939198, 41.852974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641964, 37.458149, 41.669437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026299, 37.558681, 41.622749>,  <32.256901, 37.618999, 41.594738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.026299, 37.558681, 41.622749>,  <31.641964, 37.458149, 41.669437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026299, 37.558681, 41.622749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184276, 0.264935, -0.946494,
		-0.206959, 0.930937, 0.300874,
		0.960838, 0.251330, -0.116718,
		32.314548, 37.634079, 41.587734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630480, 38.101521, 41.236504>,  <31.641964, 37.458149, 41.669437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630480, 38.101521, 41.236504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003971, 37.962643, 41.201607>,  <32.228065, 37.879314, 41.180668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003971, 37.962643, 41.201607>,  <31.630480, 38.101521, 41.236504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003971, 37.962643, 41.201607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038474, 0.339625, -0.939774,
		0.355914, 0.874135, 0.330474,
		0.933726, -0.347193, -0.087246,
		32.284088, 37.858486, 41.175434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024876, 38.647945, 40.841095>,  <31.630480, 38.101521, 41.236504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024876, 38.647945, 40.841095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248089, 38.318996, 40.796726>,  <32.382015, 38.121628, 40.770103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.248089, 38.318996, 40.796726>,  <32.024876, 38.647945, 40.841095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248089, 38.318996, 40.796726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016942, 0.144936, -0.989296,
		0.829647, 0.550178, 0.094812,
		0.558031, -0.822373, -0.110925,
		32.415497, 38.072285, 40.763451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588764, 38.949284, 40.547699>,  <32.024876, 38.647945, 40.841095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588764, 38.949284, 40.547699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568443, 38.556751, 40.473499>,  <32.556252, 38.321232, 40.428978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.568443, 38.556751, 40.473499>,  <32.588764, 38.949284, 40.547699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568443, 38.556751, 40.473499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313492, 0.160686, -0.935897,
		0.948231, -0.105696, 0.299476,
		-0.050799, -0.981330, -0.185503,
		32.553204, 38.262352, 40.417847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357960, 38.897915, 40.350590>,  <32.588764, 38.949284, 40.547699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357960, 38.897915, 40.350590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518929, 39.261448, 40.306637>,  <33.615509, 39.479568, 40.280266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518929, 39.261448, 40.306637>,  <33.357960, 38.897915, 40.350590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518929, 39.261448, 40.306637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065195, 0.148179, 0.986809,
		0.913131, -0.389948, 0.118882,
		0.402420, 0.908836, -0.109884,
		33.639656, 39.534100, 40.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822563, 39.042976, 40.946510>,  <33.357960, 38.897915, 40.350590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822563, 39.042976, 40.946510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728001, 39.398582, 40.789658>,  <33.671261, 39.611946, 40.695545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728001, 39.398582, 40.789658>,  <33.822563, 39.042976, 40.946510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728001, 39.398582, 40.789658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141814, 0.367677, 0.919077,
		0.961249, 0.272889, 0.039151,
		-0.236411, 0.889014, -0.392128,
		33.657078, 39.665287, 40.672020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252602, 39.533325, 41.370052>,  <33.822563, 39.042976, 40.946510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252602, 39.533325, 41.370052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945808, 39.726032, 41.200512>,  <33.761734, 39.841656, 41.098789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945808, 39.726032, 41.200512>,  <34.252602, 39.533325, 41.370052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945808, 39.726032, 41.200512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257171, 0.374377, 0.890901,
		0.587882, 0.792304, -0.163245,
		-0.766980, 0.481763, -0.423847,
		33.715714, 39.870560, 41.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352959, 40.193737, 41.539703>,  <34.252602, 39.533325, 41.370052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352959, 40.193737, 41.539703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967636, 40.156586, 41.438969>,  <33.736443, 40.134293, 41.378529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.967636, 40.156586, 41.438969>,  <34.352959, 40.193737, 41.539703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967636, 40.156586, 41.438969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268278, 0.302873, 0.914492,
		-0.008666, 0.948494, -0.316677,
		-0.963303, -0.092882, -0.251836,
		33.678646, 40.128719, 41.363419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074268, 40.865509, 41.660858>,  <34.352959, 40.193737, 41.539703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074268, 40.865509, 41.660858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.737316, 40.650719, 41.642754>,  <33.535145, 40.521847, 41.631893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.737316, 40.650719, 41.642754>,  <34.074268, 40.865509, 41.660858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737316, 40.650719, 41.642754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336244, 0.458134, 0.822833,
		-0.421103, 0.708360, -0.566479,
		-0.842385, -0.536972, -0.045260,
		33.484600, 40.489628, 41.629177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375175, 41.268307, 41.722370>,  <34.074268, 40.865509, 41.660858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375175, 41.268307, 41.722370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295784, 40.892555, 41.834209>,  <33.248150, 40.667107, 41.901314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.295784, 40.892555, 41.834209>,  <33.375175, 41.268307, 41.722370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295784, 40.892555, 41.834209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249298, 0.324283, 0.912519,
		-0.947869, 0.111414, -0.298549,
		-0.198482, -0.939376, 0.279602,
		33.236240, 40.610741, 41.918091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035046, 41.396774, 42.201912>,  <33.375175, 41.268307, 41.722370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035046, 41.396774, 42.201912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108536, 41.008675, 42.264980>,  <33.152630, 40.775814, 42.302822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108536, 41.008675, 42.264980>,  <33.035046, 41.396774, 42.201912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108536, 41.008675, 42.264980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095894, 0.141943, 0.985219,
		-0.978289, -0.196131, -0.066962,
		0.183727, -0.970250, 0.157669,
		33.163654, 40.717598, 42.312283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594593, 41.170998, 42.765064>,  <33.035046, 41.396774, 42.201912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594593, 41.170998, 42.765064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879490, 40.890518, 42.752235>,  <33.050430, 40.722229, 42.744537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879490, 40.890518, 42.752235>,  <32.594593, 41.170998, 42.765064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879490, 40.890518, 42.752235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103073, 0.059280, 0.992906,
		-0.694322, -0.710498, 0.114497,
		0.712245, -0.701198, -0.032074,
		33.093163, 40.680161, 42.742615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509628, 40.756927, 43.338200>,  <32.594593, 41.170998, 42.765064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509628, 40.756927, 43.338200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899574, 40.705307, 43.265556>,  <33.133541, 40.674335, 43.221970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.899574, 40.705307, 43.265556>,  <32.509628, 40.756927, 43.338200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899574, 40.705307, 43.265556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192148, 0.074475, 0.978536,
		-0.112755, -0.988838, 0.097400,
		0.974867, -0.129050, -0.181606,
		33.192036, 40.666592, 43.211075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693062, 40.338562, 43.835037>,  <32.509628, 40.756927, 43.338200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693062, 40.338562, 43.835037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042683, 40.479305, 43.701038>,  <33.252457, 40.563751, 43.620640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042683, 40.479305, 43.701038>,  <32.693062, 40.338562, 43.835037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042683, 40.479305, 43.701038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328744, 0.079337, 0.941081,
		0.357708, -0.932684, -0.046327,
		0.874055, 0.351861, -0.334994,
		33.304901, 40.584862, 43.600540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293682, 39.902546, 44.161304>,  <32.693062, 40.338562, 43.835037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293682, 39.902546, 44.161304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401184, 40.274235, 44.059860>,  <33.465683, 40.497250, 43.998993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.401184, 40.274235, 44.059860>,  <33.293682, 39.902546, 44.161304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401184, 40.274235, 44.059860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522550, 0.080531, 0.848797,
		0.809144, -0.360642, -0.463922,
		0.268752, 0.929221, -0.253615,
		33.481812, 40.553001, 43.983776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929962, 39.915569, 44.265560>,  <33.293682, 39.902546, 44.161304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929962, 39.915569, 44.265560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 40.303574, 44.284149>,  <33.777264, 40.536377, 44.295303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 40.303574, 44.284149>,  <33.929962, 39.915569, 44.265560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834526, 40.303574, 44.284149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512942, 0.085243, 0.854180,
		0.824601, 0.227633, -0.517896,
		-0.238587, 0.970008, 0.046471,
		33.762951, 40.594578, 44.298092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595276, 40.212940, 44.418858>,  <33.929962, 39.915569, 44.265560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595276, 40.212940, 44.418858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325844, 40.490116, 44.521721>,  <34.164185, 40.656422, 44.583439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325844, 40.490116, 44.521721>,  <34.595276, 40.212940, 44.418858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325844, 40.490116, 44.521721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419529, 0.071995, 0.904882,
		0.608515, 0.717392, -0.339203,
		-0.673576, 0.692940, 0.257157,
		34.123772, 40.697998, 44.598869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005520, 40.780167, 44.720776>,  <34.595276, 40.212940, 44.418858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005520, 40.780167, 44.720776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630207, 40.845306, 44.842831>,  <34.405018, 40.884392, 44.916065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630207, 40.845306, 44.842831>,  <35.005520, 40.780167, 44.720776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630207, 40.845306, 44.842831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321523, 0.085497, 0.943034,
		0.127487, 0.982939, -0.132581,
		-0.938281, 0.162852, 0.305137,
		34.348724, 40.894161, 44.934372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163235, 41.350586, 44.290405>,  <35.005520, 40.780167, 44.720776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163235, 41.350586, 44.290405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479351, 41.589008, 44.233597>,  <35.669022, 41.732059, 44.199512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479351, 41.589008, 44.233597>,  <35.163235, 41.350586, 44.290405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479351, 41.589008, 44.233597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184600, 0.010598, -0.982757,
		-0.584269, 0.802876, 0.118407,
		0.790286, 0.596052, -0.142019,
		35.716438, 41.767822, 44.190990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013214, 41.780674, 43.732124>,  <35.163235, 41.350586, 44.290405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013214, 41.780674, 43.732124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408512, 41.841770, 43.734558>,  <35.645691, 41.878429, 43.736019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408512, 41.841770, 43.734558>,  <35.013214, 41.780674, 43.732124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408512, 41.841770, 43.734558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026444, 0.210044, -0.977334,
		-0.150557, 0.965687, 0.211614,
		0.988248, 0.152740, 0.006087,
		35.704987, 41.887592, 43.736385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123264, 42.457424, 43.434879>,  <35.013214, 41.780674, 43.732124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123264, 42.457424, 43.434879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457767, 42.241318, 43.397400>,  <35.658470, 42.111656, 43.374912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.457767, 42.241318, 43.397400>,  <35.123264, 42.457424, 43.434879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457767, 42.241318, 43.397400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036008, 0.224618, -0.973781,
		0.547145, 0.810963, 0.207294,
		0.836263, -0.540264, -0.093697,
		35.708645, 42.079239, 43.369289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645958, 42.873856, 43.097912>,  <35.123264, 42.457424, 43.434879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645958, 42.873856, 43.097912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732365, 42.491661, 43.017529>,  <35.784206, 42.262344, 42.969299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732365, 42.491661, 43.017529>,  <35.645958, 42.873856, 43.097912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732365, 42.491661, 43.017529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038245, 0.197384, -0.979580,
		0.975641, 0.219290, 0.006095,
		0.216015, -0.955485, -0.200962,
		35.797169, 42.205017, 42.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130486, 42.886658, 42.569294>,  <35.645958, 42.873856, 43.097912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130486, 42.886658, 42.569294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023720, 42.501637, 42.550304>,  <35.959660, 42.270626, 42.538910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.023720, 42.501637, 42.550304>,  <36.130486, 42.886658, 42.569294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023720, 42.501637, 42.550304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119573, 0.015805, -0.992700,
		0.956274, -0.270642, 0.110876,
		-0.266914, -0.962550, -0.047476,
		35.943645, 42.212872, 42.536060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608765, 42.620094, 42.116730>,  <36.130486, 42.886658, 42.569294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608765, 42.620094, 42.116730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304371, 42.360619, 42.112453>,  <36.121735, 42.204933, 42.109890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.304371, 42.360619, 42.112453>,  <36.608765, 42.620094, 42.116730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304371, 42.360619, 42.112453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082264, -0.080139, -0.993383,
		0.643538, -0.756824, 0.114348,
		-0.760980, -0.648687, -0.010687,
		36.076077, 42.166012, 42.109249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781116, 42.096928, 41.629471>,  <36.608765, 42.620094, 42.116730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781116, 42.096928, 41.629471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388298, 42.029488, 41.663315>,  <36.152607, 41.989025, 41.683620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.388298, 42.029488, 41.663315>,  <36.781116, 42.096928, 41.629471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388298, 42.029488, 41.663315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091587, 0.034002, -0.995217,
		0.164916, -0.985098, -0.048833,
		-0.982046, -0.168600, 0.084614,
		36.093685, 41.978909, 41.688698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616646, 41.498421, 41.171600>,  <36.781116, 42.096928, 41.629471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616646, 41.498421, 41.171600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258217, 41.663868, 41.236057>,  <36.043159, 41.763138, 41.274731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258217, 41.663868, 41.236057>,  <36.616646, 41.498421, 41.171600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258217, 41.663868, 41.236057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217876, -0.093529, -0.971485,
		-0.386755, -0.905632, 0.173927,
		-0.896075, 0.413621, 0.161143,
		35.989395, 41.787952, 41.284401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096172, 41.036118, 41.015667>,  <36.616646, 41.498421, 41.171600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096172, 41.036118, 41.015667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999958, 41.422775, 40.980469>,  <35.942230, 41.654770, 40.959351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999958, 41.422775, 40.980469>,  <36.096172, 41.036118, 41.015667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999958, 41.422775, 40.980469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313497, -0.163168, -0.935466,
		-0.918619, -0.197429, 0.342288,
		-0.240538, 0.966643, -0.087996,
		35.927795, 41.712769, 40.954071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371601, 41.067669, 40.729279>,  <36.096172, 41.036118, 41.015667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371601, 41.067669, 40.729279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546181, 41.407070, 40.609573>,  <35.650928, 41.610710, 40.537750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546181, 41.407070, 40.609573>,  <35.371601, 41.067669, 40.729279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546181, 41.407070, 40.609573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300841, -0.175845, -0.937322,
		-0.847944, 0.499121, 0.178518,
		0.436446, 0.848503, -0.299263,
		35.677113, 41.661621, 40.519794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006050, 41.355270, 40.116825>,  <35.371601, 41.067669, 40.729279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006050, 41.355270, 40.116825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342957, 41.570885, 40.114971>,  <35.545101, 41.700253, 40.113857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342957, 41.570885, 40.114971>,  <35.006050, 41.355270, 40.116825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342957, 41.570885, 40.114971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019018, -0.038304, -0.999085,
		-0.538723, 0.841410, -0.042514,
		0.842268, 0.539039, -0.004634,
		35.595638, 41.732597, 40.113583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943188, 41.782494, 39.586777>,  <35.006050, 41.355270, 40.116825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943188, 41.782494, 39.586777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341190, 41.771034, 39.625031>,  <35.579990, 41.764160, 39.647984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.341190, 41.771034, 39.625031>,  <34.943188, 41.782494, 39.586777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341190, 41.771034, 39.625031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095489, -0.006483, -0.995409,
		0.029133, 0.999569, -0.003716,
		0.995004, -0.028645, 0.095636,
		35.639690, 41.762440, 39.653721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162201, 41.962933, 38.992859>,  <34.943188, 41.782494, 39.586777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162201, 41.962933, 38.992859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536877, 41.891285, 39.113213>,  <35.761681, 41.848297, 39.185425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536877, 41.891285, 39.113213>,  <35.162201, 41.962933, 38.992859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536877, 41.891285, 39.113213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300695, -0.028849, -0.953284,
		0.179433, 0.983404, 0.026839,
		0.936689, -0.179121, 0.300881,
		35.817883, 41.837547, 39.203476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670101, 42.456764, 38.596420>,  <35.162201, 41.962933, 38.992859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670101, 42.456764, 38.596420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876041, 42.141228, 38.730679>,  <35.999607, 41.951908, 38.811234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876041, 42.141228, 38.730679>,  <35.670101, 42.456764, 38.596420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876041, 42.141228, 38.730679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460282, -0.075947, -0.884518,
		0.723232, 0.609892, 0.323986,
		0.514855, -0.788837, 0.335650,
		36.030499, 41.904575, 38.831375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.665058, 27.022142, 33.551815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445257, 26.918064, 33.234238>,  <25.313375, 26.855618, 33.043694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.445257, 26.918064, 33.234238>,  <25.665058, 27.022142, 33.551815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.445257, 26.918064, 33.234238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159578, 0.900089, -0.405432,
		0.820110, -0.349482, -0.453080,
		-0.549504, -0.260197, -0.793941,
		25.280407, 26.840004, 32.996056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052038, 26.980915, 32.859539>,  <25.665058, 27.022142, 33.551815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052038, 26.980915, 32.859539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690216, 27.130613, 32.777840>,  <25.473122, 27.220432, 32.728821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690216, 27.130613, 32.777840>,  <26.052038, 26.980915, 32.859539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690216, 27.130613, 32.777840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409624, 0.895729, -0.172849,
		0.118260, -0.240015, -0.963539,
		-0.904557, 0.374247, -0.204245,
		25.418850, 27.242887, 32.716564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132122, 27.371317, 32.158863>,  <26.052038, 26.980915, 32.859539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132122, 27.371317, 32.158863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826832, 27.495163, 32.385712>,  <25.643658, 27.569469, 32.521820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.826832, 27.495163, 32.385712>,  <26.132122, 27.371317, 32.158863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826832, 27.495163, 32.385712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308052, 0.945904, -0.101833,
		-0.567971, 0.096981, -0.817315,
		-0.763225, 0.309614, 0.567121,
		25.597864, 27.588047, 32.555847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814663, 27.948603, 31.809961>,  <26.132122, 27.371317, 32.158863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814663, 27.948603, 31.809961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735107, 27.985552, 32.200226>,  <25.687374, 28.007721, 32.434383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.735107, 27.985552, 32.200226>,  <25.814663, 27.948603, 31.809961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.735107, 27.985552, 32.200226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160196, 0.985222, -0.060624,
		-0.966841, 0.144239, -0.210747,
		-0.198888, 0.092374, 0.975659,
		25.675442, 28.013264, 32.492924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353788, 28.527950, 31.935871>,  <25.814663, 27.948603, 31.809961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353788, 28.527950, 31.935871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.539473, 28.459209, 32.283428>,  <25.650883, 28.417965, 32.491962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.539473, 28.459209, 32.283428>,  <25.353788, 28.527950, 31.935871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539473, 28.459209, 32.283428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146025, 0.982422, 0.116289,
		-0.873604, 0.072897, 0.481147,
		0.464212, -0.171850, 0.868893,
		25.678736, 28.407654, 32.544098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068518, 28.926147, 32.447121>,  <25.353788, 28.527950, 31.935871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068518, 28.926147, 32.447121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432829, 28.834360, 32.584423>,  <25.651417, 28.779287, 32.666805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.432829, 28.834360, 32.584423>,  <25.068518, 28.926147, 32.447121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432829, 28.834360, 32.584423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116269, 0.940237, 0.320057,
		-0.396184, -0.251592, 0.883029,
		0.910780, -0.229470, 0.343254,
		25.706062, 28.765518, 32.687401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060200, 29.319256, 33.088997>,  <25.068518, 28.926147, 32.447121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060200, 29.319256, 33.088997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440125, 29.219820, 33.013035>,  <25.668079, 29.160158, 32.967457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440125, 29.219820, 33.013035>,  <25.060200, 29.319256, 33.088997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440125, 29.219820, 33.013035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283042, 0.941430, 0.183293,
		0.133221, -0.227845, 0.964541,
		0.949810, -0.248588, -0.189908,
		25.725067, 29.145245, 32.956062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469126, 29.634684, 33.671684>,  <25.060200, 29.319256, 33.088997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469126, 29.634684, 33.671684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.698370, 29.587124, 33.347363>,  <25.835917, 29.558588, 33.152767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.698370, 29.587124, 33.347363>,  <25.469126, 29.634684, 33.671684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698370, 29.587124, 33.347363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311409, 0.946794, 0.081278,
		0.758002, -0.299074, 0.579644,
		0.573111, -0.118898, -0.810806,
		25.870304, 29.551455, 33.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105995, 29.852449, 33.908737>,  <25.469126, 29.634684, 33.671684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105995, 29.852449, 33.908737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.111713, 29.855562, 33.508789>,  <26.115145, 29.857430, 33.268822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.111713, 29.855562, 33.508789>,  <26.105995, 29.852449, 33.908737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111713, 29.855562, 33.508789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492578, 0.870159, 0.013817,
		0.870151, -0.492710, 0.008614,
		0.014303, 0.007780, -0.999867,
		26.116003, 29.857897, 33.208828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830822, 30.073799, 33.735226>,  <26.105995, 29.852449, 33.908737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830822, 30.073799, 33.735226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595953, 30.161369, 33.423508>,  <26.455032, 30.213911, 33.236477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595953, 30.161369, 33.423508>,  <26.830822, 30.073799, 33.735226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595953, 30.161369, 33.423508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293509, 0.954796, 0.047079,
		0.754374, -0.201087, -0.624887,
		-0.587173, 0.218925, -0.779294,
		26.419802, 30.227047, 33.189720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245169, 30.497995, 33.273029>,  <26.830822, 30.073799, 33.735226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245169, 30.497995, 33.273029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856714, 30.559767, 33.200314>,  <26.623642, 30.596830, 33.156685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856714, 30.559767, 33.200314>,  <27.245169, 30.497995, 33.273029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856714, 30.559767, 33.200314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182536, 0.971746, -0.149633,
		0.153544, -0.178497, -0.971886,
		-0.971136, 0.154429, -0.181787,
		26.565374, 30.606096, 33.145779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196964, 30.918755, 32.686348>,  <27.245169, 30.497995, 33.273029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196964, 30.918755, 32.686348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816860, 30.980175, 32.794739>,  <26.588799, 31.017027, 32.859772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816860, 30.980175, 32.794739>,  <27.196964, 30.918755, 32.686348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816860, 30.980175, 32.794739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158193, 0.987397, -0.004770,
		-0.268295, 0.038334, -0.962574,
		-0.950259, 0.153552, 0.270978,
		26.531782, 31.026241, 32.876034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864418, 31.496735, 32.215382>,  <27.196964, 30.918755, 32.686348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864418, 31.496735, 32.215382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663044, 31.493330, 32.560978>,  <26.542219, 31.491287, 32.768337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663044, 31.493330, 32.560978>,  <26.864418, 31.496735, 32.215382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663044, 31.493330, 32.560978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040951, 0.998593, 0.033698,
		-0.863063, 0.052346, -0.502377,
		-0.503434, -0.008511, 0.863992,
		26.512014, 31.490776, 32.820175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357534, 32.014748, 32.060013>,  <26.864418, 31.496735, 32.215382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357534, 32.014748, 32.060013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377371, 31.943298, 32.453079>,  <26.389273, 31.900429, 32.688919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377371, 31.943298, 32.453079>,  <26.357534, 32.014748, 32.060013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377371, 31.943298, 32.453079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031978, 0.983658, 0.177186,
		-0.998257, 0.022637, 0.054494,
		0.049592, -0.178620, 0.982667,
		26.392248, 31.889713, 32.747879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842796, 32.479469, 32.315140>,  <26.357534, 32.014748, 32.060013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842796, 32.479469, 32.315140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.090935, 32.389851, 32.615799>,  <26.239817, 32.336079, 32.796196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.090935, 32.389851, 32.615799>,  <25.842796, 32.479469, 32.315140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090935, 32.389851, 32.615799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025718, 0.963628, 0.266007,
		-0.783908, -0.145685, 0.603543,
		0.620344, -0.224047, 0.751649,
		26.277039, 32.322636, 32.841293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538534, 32.755890, 32.935314>,  <25.842796, 32.479469, 32.315140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538534, 32.755890, 32.935314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929663, 32.711296, 33.006237>,  <26.164339, 32.684540, 33.048790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.929663, 32.711296, 33.006237>,  <25.538534, 32.755890, 32.935314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929663, 32.711296, 33.006237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054558, 0.952916, 0.298285,
		-0.202212, -0.281996, 0.937864,
		0.977821, -0.111485, 0.177306,
		26.223009, 32.677849, 33.059429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601963, 33.056694, 33.587242>,  <25.538534, 32.755890, 32.935314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601963, 33.056694, 33.587242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.961885, 33.052734, 33.412773>,  <26.177839, 33.050358, 33.308090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.961885, 33.052734, 33.412773>,  <25.601963, 33.056694, 33.587242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.961885, 33.052734, 33.412773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075233, 0.988286, 0.132777,
		0.429752, -0.152289, 0.890012,
		0.899807, -0.009897, -0.436175,
		26.231827, 33.049767, 33.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880524, 33.512344, 34.009857>,  <25.601963, 33.056694, 33.587242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880524, 33.512344, 34.009857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146090, 33.474701, 33.713112>,  <26.305429, 33.452114, 33.535065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146090, 33.474701, 33.713112>,  <25.880524, 33.512344, 34.009857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146090, 33.474701, 33.713112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257329, 0.960216, 0.108481,
		0.702137, -0.262924, 0.661721,
		0.663917, -0.094111, -0.741861,
		26.345264, 33.446468, 33.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499496, 33.814266, 34.263008>,  <25.880524, 33.512344, 34.009857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499496, 33.814266, 34.263008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534977, 33.815403, 33.864586>,  <26.556265, 33.816086, 33.625534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.534977, 33.815403, 33.864586>,  <26.499496, 33.814266, 34.263008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534977, 33.815403, 33.864586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394222, 0.918240, 0.037725,
		0.914725, -0.396013, 0.080328,
		0.088700, 0.002841, -0.996054,
		26.561586, 33.816254, 33.565769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230030, 33.507820, 34.362476>,  <26.499496, 33.814266, 34.263008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230030, 33.507820, 34.362476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603958, 33.649456, 34.373283>,  <27.828316, 33.734440, 34.379768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603958, 33.649456, 34.373283>,  <27.230030, 33.507820, 34.362476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603958, 33.649456, 34.373283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305421, -0.840480, 0.447562,
		0.181189, -0.410137, -0.893845,
		0.934820, 0.354092, 0.027021,
		27.884403, 33.755684, 34.381390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738733, 33.081066, 33.829468>,  <27.230030, 33.507820, 34.362476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738733, 33.081066, 33.829468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942606, 33.247589, 34.130642>,  <28.064930, 33.347504, 34.311348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942606, 33.247589, 34.130642>,  <27.738733, 33.081066, 33.829468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942606, 33.247589, 34.130642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344012, -0.900746, 0.265167,
		0.788595, 0.123869, -0.602307,
		0.509679, 0.416310, 0.752936,
		28.095510, 33.372482, 34.356522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446415, 32.778805, 33.831787>,  <27.738733, 33.081066, 33.829468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446415, 32.778805, 33.831787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399137, 32.949795, 34.190296>,  <28.370771, 33.052387, 34.405399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399137, 32.949795, 34.190296>,  <28.446415, 32.778805, 33.831787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399137, 32.949795, 34.190296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394353, -0.808160, 0.437451,
		0.911327, 0.405149, -0.073057,
		-0.118192, 0.427471, 0.896270,
		28.363680, 33.078037, 34.459179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149410, 32.737789, 34.220757>,  <28.446415, 32.778805, 33.831787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149410, 32.737789, 34.220757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869400, 32.774509, 34.504032>,  <28.701393, 32.796543, 34.674000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869400, 32.774509, 34.504032>,  <29.149410, 32.737789, 34.220757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869400, 32.774509, 34.504032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210543, -0.921090, 0.327513,
		0.682374, 0.378373, 0.625460,
		-0.700027, 0.091800, 0.708191,
		28.659391, 32.802048, 34.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544441, 32.524319, 34.808926>,  <29.149410, 32.737789, 34.220757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544441, 32.524319, 34.808926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147301, 32.516556, 34.856033>,  <28.909016, 32.511898, 34.884300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147301, 32.516556, 34.856033>,  <29.544441, 32.524319, 34.808926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147301, 32.516556, 34.856033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066376, -0.909819, 0.409662,
		0.099201, 0.414551, 0.904603,
		-0.992851, -0.019405, 0.117771,
		28.849445, 32.510735, 34.891365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497736, 32.285229, 35.501492>,  <29.544441, 32.524319, 34.808926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497736, 32.285229, 35.501492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152702, 32.199909, 35.317989>,  <28.945683, 32.148716, 35.207890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.152702, 32.199909, 35.317989>,  <29.497736, 32.285229, 35.501492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152702, 32.199909, 35.317989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039066, -0.875988, 0.480749,
		-0.504404, 0.432607, 0.747280,
		-0.862583, -0.213299, -0.458752,
		28.893927, 32.135918, 35.180363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107330, 32.114422, 36.072624>,  <29.497736, 32.285229, 35.501492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107330, 32.114422, 36.072624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934492, 31.970865, 35.741688>,  <28.830790, 31.884731, 35.543125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934492, 31.970865, 35.741688>,  <29.107330, 32.114422, 36.072624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934492, 31.970865, 35.741688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302204, -0.806737, 0.507787,
		-0.849686, 0.469437, 0.240128,
		-0.432094, -0.358892, -0.827340,
		28.804863, 31.863197, 35.493484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591780, 31.795923, 36.254841>,  <29.107330, 32.114422, 36.072624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591780, 31.795923, 36.254841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630722, 31.633249, 35.891495>,  <28.654087, 31.535645, 35.673489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630722, 31.633249, 35.891495>,  <28.591780, 31.795923, 36.254841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630722, 31.633249, 35.891495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456851, -0.829124, 0.322243,
		-0.884200, 0.383615, -0.266516,
		0.097358, -0.406685, -0.908366,
		28.659929, 31.511244, 35.618984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937620, 31.317062, 36.185947>,  <28.591780, 31.795923, 36.254841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937620, 31.317062, 36.185947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193729, 31.146467, 35.930397>,  <28.347395, 31.044109, 35.777069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193729, 31.146467, 35.930397>,  <27.937620, 31.317062, 36.185947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193729, 31.146467, 35.930397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336271, -0.903399, 0.266068,
		-0.690633, 0.044479, -0.721837,
		0.640272, -0.426488, -0.638873,
		28.385811, 31.018520, 35.738735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636309, 30.734846, 36.255768>,  <27.937620, 31.317062, 36.185947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636309, 30.734846, 36.255768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967438, 30.668344, 36.041451>,  <28.166115, 30.628445, 35.912861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967438, 30.668344, 36.041451>,  <27.636309, 30.734846, 36.255768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967438, 30.668344, 36.041451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074516, -0.979202, 0.188708,
		-0.556022, -0.116291, -0.822992,
		0.827821, -0.166252, -0.535792,
		28.215784, 30.618469, 35.880714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558903, 30.323492, 35.558731>,  <27.636309, 30.734846, 36.255768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558903, 30.323492, 35.558731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930895, 30.264631, 35.693478>,  <28.154091, 30.229315, 35.774326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930895, 30.264631, 35.693478>,  <27.558903, 30.323492, 35.558731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930895, 30.264631, 35.693478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215475, -0.960661, 0.175219,
		0.297835, -0.235538, -0.925103,
		0.929981, -0.147150, 0.336870,
		28.209888, 30.220486, 35.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724609, 29.633297, 35.297474>,  <27.558903, 30.323492, 35.558731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724609, 29.633297, 35.297474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983324, 29.709843, 35.592781>,  <28.138554, 29.755770, 35.769966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983324, 29.709843, 35.592781>,  <27.724609, 29.633297, 35.297474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983324, 29.709843, 35.592781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183442, -0.978625, 0.092958,
		0.740280, 0.075306, -0.668068,
		0.646788, 0.191366, 0.738271,
		28.177361, 29.767252, 35.814262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348257, 29.207018, 35.162273>,  <27.724609, 29.633297, 35.297474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348257, 29.207018, 35.162273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337782, 29.296114, 35.552082>,  <28.331497, 29.349571, 35.785969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337782, 29.296114, 35.552082>,  <28.348257, 29.207018, 35.162273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337782, 29.296114, 35.552082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019412, -0.974564, 0.223269,
		0.999469, 0.024765, 0.021198,
		-0.026188, 0.222739, 0.974526,
		28.329926, 29.362936, 35.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808180, 28.791656, 35.416477>,  <28.348257, 29.207018, 35.162273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808180, 28.791656, 35.416477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599194, 28.888714, 35.743439>,  <28.473803, 28.946947, 35.939617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599194, 28.888714, 35.743439>,  <28.808180, 28.791656, 35.416477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599194, 28.888714, 35.743439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028909, -0.953063, 0.301387,
		0.852170, 0.181095, 0.490928,
		-0.522466, 0.242641, 0.817407,
		28.442453, 28.961506, 35.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156824, 28.427996, 35.868660>,  <28.808180, 28.791656, 35.416477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156824, 28.427996, 35.868660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787647, 28.492649, 36.008408>,  <28.566141, 28.531441, 36.092255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787647, 28.492649, 36.008408>,  <29.156824, 28.427996, 35.868660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787647, 28.492649, 36.008408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039614, -0.942637, 0.331462,
		0.382899, 0.292080, 0.876400,
		-0.922940, 0.161634, 0.349365,
		28.510765, 28.541140, 36.113216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089701, 28.122292, 36.543449>,  <29.156824, 28.427996, 35.868660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089701, 28.122292, 36.543449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720232, 28.168365, 36.397266>,  <28.498550, 28.196011, 36.309555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720232, 28.168365, 36.397266>,  <29.089701, 28.122292, 36.543449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720232, 28.168365, 36.397266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200918, -0.957713, 0.205956,
		-0.326284, 0.263663, 0.907755,
		-0.923672, 0.115185, -0.365462,
		28.443130, 28.202921, 36.287628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746227, 27.728521, 37.061150>,  <29.089701, 28.122292, 36.543449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746227, 27.728521, 37.061150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515963, 27.755768, 36.735210>,  <28.377804, 27.772116, 36.539646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.515963, 27.755768, 36.735210>,  <28.746227, 27.728521, 37.061150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515963, 27.755768, 36.735210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158502, -0.986919, 0.029474,
		-0.802178, 0.146122, 0.578930,
		-0.575663, 0.068118, -0.814845,
		28.343264, 27.776203, 36.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198523, 27.196644, 37.204342>,  <28.746227, 27.728521, 37.061150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198523, 27.196644, 37.204342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137398, 27.231546, 36.810585>,  <28.100723, 27.252489, 36.574329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137398, 27.231546, 36.810585>,  <28.198523, 27.196644, 37.204342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137398, 27.231546, 36.810585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227712, -0.972400, -0.050846,
		-0.961663, 0.216389, 0.168464,
		-0.152812, 0.087257, -0.984395,
		28.091555, 27.257723, 36.515266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621563, 26.776283, 37.093098>,  <28.198523, 27.196644, 37.204342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621563, 26.776283, 37.093098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777552, 26.842243, 36.730721>,  <27.871145, 26.881819, 36.513294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.777552, 26.842243, 36.730721>,  <27.621563, 26.776283, 37.093098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777552, 26.842243, 36.730721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309474, -0.903138, -0.297603,
		-0.867265, 0.396423, -0.301165,
		0.389970, 0.164898, -0.905942,
		27.894543, 26.891712, 36.458939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088726, 26.550339, 36.553600>,  <27.621563, 26.776283, 37.093098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088726, 26.550339, 36.553600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444073, 26.565714, 36.370590>,  <27.657280, 26.574938, 36.260784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.444073, 26.565714, 36.370590>,  <27.088726, 26.550339, 36.553600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444073, 26.565714, 36.370590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108224, -0.950882, -0.290018,
		-0.446200, 0.307157, -0.840571,
		0.888365, 0.038436, -0.457526,
		27.710583, 26.577244, 36.233334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919291, 26.377089, 35.860847>,  <27.088726, 26.550339, 36.553600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919291, 26.377089, 35.860847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304008, 26.281286, 35.913898>,  <27.534840, 26.223804, 35.945728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.304008, 26.281286, 35.913898>,  <26.919291, 26.377089, 35.860847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304008, 26.281286, 35.913898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212035, -0.958106, -0.192544,
		0.173188, 0.157066, -0.972284,
		0.961794, -0.239505, 0.132629,
		27.592546, 26.209435, 35.953686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062689, 25.984425, 35.236435>,  <26.919291, 26.377089, 35.860847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062689, 25.984425, 35.236435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345659, 25.865526, 35.492931>,  <27.515442, 25.794188, 35.646828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345659, 25.865526, 35.492931>,  <27.062689, 25.984425, 35.236435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345659, 25.865526, 35.492931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110999, -0.942731, -0.314544,
		0.698016, 0.151340, -0.699908,
		0.707427, -0.297246, 0.641242,
		27.557888, 25.776352, 35.685303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454103, 25.475292, 34.874023>,  <27.062689, 25.984425, 35.236435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454103, 25.475292, 34.874023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543463, 25.414392, 35.259129>,  <27.597078, 25.377853, 35.490192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543463, 25.414392, 35.259129>,  <27.454103, 25.475292, 34.874023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543463, 25.414392, 35.259129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375590, -0.924899, -0.059108,
		0.899458, -0.348399, -0.263805,
		0.223400, -0.152248, 0.962763,
		27.610483, 25.368719, 35.547958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.656727, 40.245342, 44.719055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280426, 40.109776, 44.723328>,  <39.054646, 40.028435, 44.725891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280426, 40.109776, 44.723328>,  <39.656727, 40.245342, 44.719055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280426, 40.109776, 44.723328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193380, 0.562127, 0.804125,
		-0.278538, 0.754419, -0.594364,
		-0.940755, -0.338917, 0.010684,
		38.998199, 40.008099, 44.726532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158020, 40.868473, 44.737507>,  <39.656727, 40.245342, 44.719055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158020, 40.868473, 44.737507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.987648, 40.550533, 44.910385>,  <38.885426, 40.359768, 45.014114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.987648, 40.550533, 44.910385>,  <39.158020, 40.868473, 44.737507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987648, 40.550533, 44.910385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148415, 0.532607, 0.833248,
		-0.892499, 0.290762, -0.344822,
		-0.425932, -0.794850, 0.432198,
		38.859867, 40.312077, 45.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730541, 41.197662, 45.252628>,  <39.158020, 40.868473, 44.737507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730541, 41.197662, 45.252628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761322, 40.811794, 45.353413>,  <38.779789, 40.580273, 45.413883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.761322, 40.811794, 45.353413>,  <38.730541, 41.197662, 45.252628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761322, 40.811794, 45.353413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123691, 0.259997, 0.957654,
		-0.989333, -0.042525, 0.139328,
		0.076950, -0.964673, 0.251964,
		38.784409, 40.522392, 45.429001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367733, 41.122967, 45.855747>,  <38.730541, 41.197662, 45.252628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367733, 41.122967, 45.855747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622334, 40.814693, 45.867775>,  <38.775093, 40.629730, 45.874992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622334, 40.814693, 45.867775>,  <38.367733, 41.122967, 45.855747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622334, 40.814693, 45.867775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058817, 0.087371, 0.994438,
		-0.769028, -0.631195, 0.100941,
		0.636504, -0.770687, 0.030066,
		38.813286, 40.583488, 45.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125664, 40.593185, 46.283150>,  <38.367733, 41.122967, 45.855747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125664, 40.593185, 46.283150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519268, 40.522533, 46.274029>,  <38.755432, 40.480141, 46.268555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519268, 40.522533, 46.274029>,  <38.125664, 40.593185, 46.283150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519268, 40.522533, 46.274029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013518, -0.053588, 0.998472,
		-0.177584, -0.982817, -0.050344,
		0.984013, -0.176632, -0.022802,
		38.814472, 40.469543, 46.267189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184929, 40.493801, 47.022346>,  <38.125664, 40.593185, 46.283150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184929, 40.493801, 47.022346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535713, 40.516659, 46.831486>,  <38.746185, 40.530373, 46.716969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535713, 40.516659, 46.831486>,  <38.184929, 40.493801, 47.022346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535713, 40.516659, 46.831486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455367, 0.218466, 0.863084,
		0.153558, -0.974170, 0.165566,
		0.876961, 0.057140, -0.477152,
		38.798801, 40.533802, 46.688339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645145, 39.929966, 47.268997>,  <38.184929, 40.493801, 47.022346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645145, 39.929966, 47.268997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852940, 40.255543, 47.164967>,  <38.977615, 40.450890, 47.102547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.852940, 40.255543, 47.164967>,  <38.645145, 39.929966, 47.268997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852940, 40.255543, 47.164967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322543, 0.095068, 0.941768,
		0.791266, -0.573121, -0.213143,
		0.519484, 0.813938, -0.260080,
		39.008785, 40.499725, 47.086941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142731, 39.923050, 47.742161>,  <38.645145, 39.929966, 47.268997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142731, 39.923050, 47.742161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.187332, 40.295776, 47.604008>,  <39.214092, 40.519413, 47.521114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.187332, 40.295776, 47.604008>,  <39.142731, 39.923050, 47.742161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187332, 40.295776, 47.604008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274713, 0.305104, 0.911836,
		0.955039, -0.196556, -0.221961,
		0.111505, 0.931814, -0.345383,
		39.220783, 40.575321, 47.500393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793121, 40.109962, 47.920769>,  <39.142731, 39.923050, 47.742161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793121, 40.109962, 47.920769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605591, 40.457447, 47.856834>,  <39.493073, 40.665936, 47.818474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605591, 40.457447, 47.856834>,  <39.793121, 40.109962, 47.920769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605591, 40.457447, 47.856834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134981, 0.249292, 0.958975,
		0.872916, 0.428017, -0.234133,
		-0.468825, 0.868709, -0.159836,
		39.464943, 40.718060, 47.808884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080696, 40.424637, 48.450764>,  <39.793121, 40.109962, 47.920769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080696, 40.424637, 48.450764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783890, 40.664364, 48.330608>,  <39.605808, 40.808201, 48.258514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783890, 40.664364, 48.330608>,  <40.080696, 40.424637, 48.450764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783890, 40.664364, 48.330608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029114, 0.418849, 0.907589,
		0.669752, 0.682189, -0.293343,
		-0.742014, 0.599319, -0.300386,
		39.561287, 40.844158, 48.240494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244038, 41.037022, 48.761002>,  <40.080696, 40.424637, 48.450764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244038, 41.037022, 48.761002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850929, 41.052635, 48.688728>,  <39.615067, 41.062004, 48.645363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850929, 41.052635, 48.688728>,  <40.244038, 41.037022, 48.761002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850929, 41.052635, 48.688728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153446, 0.372756, 0.915154,
		0.103071, 0.927108, -0.360342,
		-0.982767, 0.039033, -0.180682,
		39.556099, 41.064346, 48.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057499, 41.639896, 49.091774>,  <40.244038, 41.037022, 48.761002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057499, 41.639896, 49.091774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.704643, 41.455284, 49.054230>,  <39.492928, 41.344517, 49.031704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.704643, 41.455284, 49.054230>,  <40.057499, 41.639896, 49.091774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704643, 41.455284, 49.054230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239422, 0.267818, 0.933247,
		-0.405585, 0.845731, -0.346755,
		-0.882144, -0.461532, -0.093863,
		39.439999, 41.316826, 49.026070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505775, 42.083656, 49.351891>,  <40.057499, 41.639896, 49.091774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505775, 42.083656, 49.351891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397690, 41.699467, 49.378651>,  <39.332836, 41.468952, 49.394707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397690, 41.699467, 49.378651>,  <39.505775, 42.083656, 49.351891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397690, 41.699467, 49.378651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266588, 0.141409, 0.953380,
		-0.925156, 0.239785, -0.294262,
		-0.270218, -0.960472, 0.066902,
		39.316624, 41.411324, 49.398720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789070, 42.119545, 49.638512>,  <39.505775, 42.083656, 49.351891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789070, 42.119545, 49.638512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975006, 41.776031, 49.724678>,  <39.086567, 41.569923, 49.776379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975006, 41.776031, 49.724678>,  <38.789070, 42.119545, 49.638512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975006, 41.776031, 49.724678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403886, 0.010841, 0.914745,
		-0.787906, -0.512219, -0.341812,
		0.464844, -0.858786, 0.215420,
		39.114460, 41.518394, 49.789303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153095, 41.852863, 49.486912>,  <38.789070, 42.119545, 49.638512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153095, 41.852863, 49.486912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807793, 42.054592, 49.495468>,  <37.600613, 42.175629, 49.500603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.807793, 42.054592, 49.495468>,  <38.153095, 41.852863, 49.486912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807793, 42.054592, 49.495468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162588, -0.237692, -0.957636,
		-0.477872, -0.830159, 0.287185,
		-0.863252, 0.504320, 0.021388,
		37.548817, 42.205887, 49.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751507, 41.570362, 49.030453>,  <38.153095, 41.852863, 49.486912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751507, 41.570362, 49.030453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565758, 41.924480, 49.040367>,  <37.454308, 42.136951, 49.046314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.565758, 41.924480, 49.040367>,  <37.751507, 41.570362, 49.030453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565758, 41.924480, 49.040367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234878, -0.096121, -0.967261,
		-0.853928, -0.454988, 0.252572,
		-0.464369, 0.885295, 0.024786,
		37.426445, 42.190067, 49.047802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151505, 41.502148, 48.660378>,  <37.751507, 41.570362, 49.030453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151505, 41.502148, 48.660378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210571, 41.897762, 48.660416>,  <37.246010, 42.135132, 48.660439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210571, 41.897762, 48.660416>,  <37.151505, 41.502148, 48.660378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210571, 41.897762, 48.660416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392799, 0.058731, -0.917747,
		-0.907692, 0.135482, 0.397166,
		0.147664, 0.989038, 0.000093,
		37.254871, 42.194473, 48.660442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595123, 41.817574, 48.406216>,  <37.151505, 41.502148, 48.660378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595123, 41.817574, 48.406216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872131, 42.103226, 48.365364>,  <37.038338, 42.274616, 48.340855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.872131, 42.103226, 48.365364>,  <36.595123, 41.817574, 48.406216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872131, 42.103226, 48.365364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244860, 0.099526, -0.964437,
		-0.678568, 0.692903, 0.243786,
		0.692524, 0.714129, -0.102129,
		37.079887, 42.317463, 48.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295307, 42.368805, 48.070942>,  <36.595123, 41.817574, 48.406216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295307, 42.368805, 48.070942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676933, 42.478554, 48.022827>,  <36.905910, 42.544403, 47.993958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676933, 42.478554, 48.022827>,  <36.295307, 42.368805, 48.070942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676933, 42.478554, 48.022827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159213, 0.124267, -0.979392,
		-0.253775, 0.953559, 0.162244,
		0.954070, 0.274377, -0.120283,
		36.963154, 42.560867, 47.986744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296272, 43.096600, 47.804882>,  <36.295307, 42.368805, 48.070942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296272, 43.096600, 47.804882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630550, 42.898449, 47.710037>,  <36.831116, 42.779560, 47.653130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.630550, 42.898449, 47.710037>,  <36.296272, 43.096600, 47.804882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630550, 42.898449, 47.710037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196176, 0.134003, -0.971369,
		0.512963, 0.858283, 0.014806,
		0.835694, -0.495372, -0.237113,
		36.881260, 42.749836, 47.638905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594036, 43.392689, 47.274548>,  <36.296272, 43.096600, 47.804882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594036, 43.392689, 47.274548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781830, 43.040405, 47.249462>,  <36.894508, 42.829037, 47.234409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781830, 43.040405, 47.249462>,  <36.594036, 43.392689, 47.274548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781830, 43.040405, 47.249462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261760, -0.070998, -0.962518,
		0.843245, 0.468308, -0.263867,
		0.469489, -0.880708, -0.062716,
		36.922676, 42.776192, 47.230648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755192, 43.418034, 46.622837>,  <36.594036, 43.392689, 47.274548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755192, 43.418034, 46.622837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775867, 43.026924, 46.704117>,  <36.788273, 42.792259, 46.752884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.775867, 43.026924, 46.704117>,  <36.755192, 43.418034, 46.622837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775867, 43.026924, 46.704117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209114, -0.209559, -0.955173,
		0.976524, 0.006885, -0.215299,
		0.051694, -0.977772, 0.203200,
		36.791374, 42.733593, 46.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247501, 43.171143, 46.117477>,  <36.755192, 43.418034, 46.622837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247501, 43.171143, 46.117477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996819, 42.881844, 46.233509>,  <36.846409, 42.708263, 46.303127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996819, 42.881844, 46.233509>,  <37.247501, 43.171143, 46.117477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996819, 42.881844, 46.233509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096576, -0.297299, -0.949887,
		0.773247, -0.623317, 0.116471,
		-0.626708, -0.723249, 0.290083,
		36.808807, 42.664867, 46.320534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393581, 42.589191, 45.626869>,  <37.247501, 43.171143, 46.117477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393581, 42.589191, 45.626869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065536, 42.425865, 45.787220>,  <36.868710, 42.327869, 45.883430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065536, 42.425865, 45.787220>,  <37.393581, 42.589191, 45.626869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065536, 42.425865, 45.787220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323299, -0.247396, -0.913386,
		0.472121, -0.878679, 0.070885,
		-0.820110, -0.408312, 0.400877,
		36.819504, 42.303371, 45.907482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334858, 41.954498, 45.321209>,  <37.393581, 42.589191, 45.626869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334858, 41.954498, 45.321209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974998, 42.077183, 45.445507>,  <36.759083, 42.150791, 45.520088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.974998, 42.077183, 45.445507>,  <37.334858, 41.954498, 45.321209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974998, 42.077183, 45.445507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375671, -0.181062, -0.908894,
		-0.222500, -0.934423, 0.278114,
		-0.899647, 0.306708, 0.310750,
		36.705105, 42.169197, 45.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853130, 41.358887, 45.315495>,  <37.334858, 41.954498, 45.321209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853130, 41.358887, 45.315495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650814, 41.702057, 45.279392>,  <36.529427, 41.907959, 45.257732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650814, 41.702057, 45.279392>,  <36.853130, 41.358887, 45.315495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650814, 41.702057, 45.279392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385720, -0.318492, -0.865900,
		-0.771621, -0.403150, 0.492008,
		-0.505788, 0.857924, -0.090252,
		36.499077, 41.959435, 45.252316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205616, 41.154987, 45.143940>,  <36.853130, 41.358887, 45.315495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205616, 41.154987, 45.143940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189842, 41.543564, 45.050346>,  <36.180378, 41.776711, 44.994190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.189842, 41.543564, 45.050346>,  <36.205616, 41.154987, 45.143940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189842, 41.543564, 45.050346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402554, -0.229768, -0.886091,
		-0.914547, 0.059251, 0.400117,
		-0.039433, 0.971440, -0.233985,
		36.178013, 41.834995, 44.980152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588631, 41.173561, 44.879635>,  <36.205616, 41.154987, 45.143940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588631, 41.173561, 44.879635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753799, 41.517929, 44.760765>,  <35.852901, 41.724548, 44.689442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753799, 41.517929, 44.760765>,  <35.588631, 41.173561, 44.879635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753799, 41.517929, 44.760765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346476, -0.153275, -0.925452,
		-0.842290, 0.485101, 0.234998,
		0.412919, 0.860920, -0.297178,
		35.877674, 41.776207, 44.671612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983852, 41.341049, 45.239979>,  <35.588631, 41.173561, 44.879635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983852, 41.341049, 45.239979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638004, 41.152828, 45.310429>,  <34.430496, 41.039898, 45.352699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638004, 41.152828, 45.310429>,  <34.983852, 41.341049, 45.239979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638004, 41.152828, 45.310429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172720, 0.050817, 0.983659,
		-0.471811, 0.880909, 0.037336,
		-0.864617, -0.470550, 0.176126,
		34.378620, 41.011662, 45.363266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512424, 41.712589, 45.638687>,  <34.983852, 41.341049, 45.239979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512424, 41.712589, 45.638687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352795, 41.355240, 45.721272>,  <34.257015, 41.140831, 45.770824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352795, 41.355240, 45.721272>,  <34.512424, 41.712589, 45.638687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352795, 41.355240, 45.721272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107816, 0.269331, 0.956993,
		-0.910556, 0.359654, -0.203803,
		-0.399078, -0.893370, 0.206465,
		34.233070, 41.087231, 45.783211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123158, 41.845848, 46.150482>,  <34.512424, 41.712589, 45.638687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123158, 41.845848, 46.150482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082012, 41.448441, 46.169796>,  <34.057327, 41.209995, 46.181385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082012, 41.448441, 46.169796>,  <34.123158, 41.845848, 46.150482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082012, 41.448441, 46.169796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049863, 0.053632, 0.997315,
		-0.993445, 0.100175, -0.055057,
		-0.102859, -0.993523, 0.048285,
		34.051155, 41.150383, 46.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479954, 41.664619, 46.500378>,  <34.123158, 41.845848, 46.150482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479954, 41.664619, 46.500378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749619, 41.370964, 46.532772>,  <33.911415, 41.194771, 46.552208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749619, 41.370964, 46.532772>,  <33.479954, 41.664619, 46.500378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749619, 41.370964, 46.532772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076313, 0.039822, 0.996288,
		-0.734635, -0.677835, -0.029178,
		0.674158, -0.734135, 0.080982,
		33.951866, 41.150723, 46.557068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221779, 41.202999, 47.129223>,  <33.479954, 41.664619, 46.500378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221779, 41.202999, 47.129223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603405, 41.094448, 47.078449>,  <33.832382, 41.029316, 47.047985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603405, 41.094448, 47.078449>,  <33.221779, 41.202999, 47.129223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603405, 41.094448, 47.078449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121363, -0.037292, 0.991907,
		-0.273916, -0.961750, -0.002644,
		0.954066, -0.271378, -0.126935,
		33.889626, 41.013035, 47.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312538, 40.701237, 47.638016>,  <33.221779, 41.202999, 47.129223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312538, 40.701237, 47.638016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689636, 40.794506, 47.542625>,  <33.915894, 40.850468, 47.485390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689636, 40.794506, 47.542625>,  <33.312538, 40.701237, 47.638016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689636, 40.794506, 47.542625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243732, 0.006449, 0.969821,
		0.227673, -0.972414, -0.050752,
		0.942741, 0.233172, -0.238477,
		33.972458, 40.864456, 47.471081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735176, 40.157448, 47.972134>,  <33.312538, 40.701237, 47.638016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735176, 40.157448, 47.972134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936184, 40.499794, 47.923210>,  <34.056789, 40.705204, 47.893856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936184, 40.499794, 47.923210>,  <33.735176, 40.157448, 47.972134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936184, 40.499794, 47.923210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056827, 0.108464, 0.992475,
		0.862694, -0.505692, 0.005869,
		0.502523, 0.855868, -0.122309,
		34.086941, 40.756554, 47.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924717, 39.331741, 47.894035>,  <33.735176, 40.157448, 47.972134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924717, 39.331741, 47.894035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693607, 39.023056, 48.000343>,  <33.554943, 38.837845, 48.064129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693607, 39.023056, 48.000343>,  <33.924717, 39.331741, 47.894035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693607, 39.023056, 48.000343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078283, -0.271728, -0.959185,
		0.812434, -0.574997, 0.096585,
		-0.577773, -0.771714, 0.265774,
		33.520275, 38.791542, 48.080074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128304, 38.843300, 47.474995>,  <33.924717, 39.331741, 47.894035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128304, 38.843300, 47.474995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767891, 38.716042, 47.592926>,  <33.551643, 38.639687, 47.663685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767891, 38.716042, 47.592926>,  <34.128304, 38.843300, 47.474995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767891, 38.716042, 47.592926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181721, -0.340313, -0.922586,
		0.393855, -0.884855, 0.248818,
		-0.901030, -0.318150, 0.294830,
		33.497581, 38.620598, 47.681374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069382, 38.172333, 47.175316>,  <34.128304, 38.843300, 47.474995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069382, 38.172333, 47.175316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.695915, 38.288853, 47.258652>,  <33.471836, 38.358765, 47.308655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.695915, 38.288853, 47.258652>,  <34.069382, 38.172333, 47.175316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695915, 38.288853, 47.258652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321064, -0.423081, -0.847302,
		-0.158671, -0.857992, 0.488543,
		-0.933671, 0.291296, 0.208339,
		33.415813, 38.376244, 47.321152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659805, 37.491932, 47.055775>,  <34.069382, 38.172333, 47.175316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659805, 37.491932, 47.055775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416588, 37.809494, 47.055737>,  <33.270657, 38.000031, 47.055714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416588, 37.809494, 47.055737>,  <33.659805, 37.491932, 47.055775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416588, 37.809494, 47.055737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397730, -0.304724, -0.865421,
		-0.687094, -0.526171, 0.501045,
		-0.608040, 0.793907, -0.000100,
		33.234177, 38.047665, 47.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056812, 37.245445, 46.805569>,  <33.659805, 37.491932, 47.055775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056812, 37.245445, 46.805569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019268, 37.638374, 46.740788>,  <32.996742, 37.874134, 46.701920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019268, 37.638374, 46.740788>,  <33.056812, 37.245445, 46.805569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019268, 37.638374, 46.740788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380675, -0.185718, -0.905867,
		-0.919933, -0.023377, 0.391378,
		-0.093862, 0.982325, -0.161949,
		32.991108, 37.933071, 46.692204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449409, 37.248249, 46.444897>,  <33.056812, 37.245445, 46.805569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449409, 37.248249, 46.444897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614288, 37.602722, 46.360260>,  <32.713215, 37.815407, 46.309479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614288, 37.602722, 46.360260>,  <32.449409, 37.248249, 46.444897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614288, 37.602722, 46.360260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321170, -0.075997, -0.943967,
		-0.852610, 0.457057, 0.253290,
		0.412198, 0.886185, -0.211589,
		32.737949, 37.868576, 46.296783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896894, 37.625336, 45.975979>,  <32.449409, 37.248249, 46.444897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896894, 37.625336, 45.975979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274734, 37.746105, 45.924496>,  <32.501438, 37.818569, 45.893604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.274734, 37.746105, 45.924496>,  <31.896894, 37.625336, 45.975979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274734, 37.746105, 45.924496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071088, -0.194634, -0.978297,
		-0.320426, 0.933251, -0.162388,
		0.944602, 0.301928, -0.128709,
		32.558117, 37.836685, 45.885883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.317635, 38.834602, 49.681953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.360325, 39.227505, 49.620258>,  <37.385941, 39.463245, 49.583241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.360325, 39.227505, 49.620258>,  <37.317635, 38.834602, 49.681953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360325, 39.227505, 49.620258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029217, -0.158156, -0.986982,
		-0.993859, 0.100832, -0.045578,
		0.106727, 0.982252, -0.154239,
		37.392342, 39.522179, 49.573986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781250, 39.183430, 49.252647>,  <37.317635, 38.834602, 49.681953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781250, 39.183430, 49.252647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.139313, 39.358490, 49.218815>,  <37.354153, 39.463524, 49.198513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.139313, 39.358490, 49.218815>,  <36.781250, 39.183430, 49.252647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139313, 39.358490, 49.218815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025940, -0.240584, -0.970282,
		-0.444991, 0.866362, -0.226714,
		0.895159, 0.437647, -0.084584,
		37.407860, 39.489784, 49.193439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739052, 39.741535, 48.793835>,  <36.781250, 39.183430, 49.252647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739052, 39.741535, 48.793835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.100758, 39.570938, 48.801918>,  <37.317780, 39.468578, 48.806767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.100758, 39.570938, 48.801918>,  <36.739052, 39.741535, 48.793835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100758, 39.570938, 48.801918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059905, -0.173582, -0.982996,
		0.422752, 0.887677, -0.182513,
		0.904263, -0.426497, 0.020206,
		37.372036, 39.442989, 48.807980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094128, 40.046970, 48.282925>,  <36.739052, 39.741535, 48.793835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094128, 40.046970, 48.282925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.315224, 39.719933, 48.347450>,  <37.447880, 39.523712, 48.386166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.315224, 39.719933, 48.347450>,  <37.094128, 40.046970, 48.282925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315224, 39.719933, 48.347450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009333, -0.187488, -0.982223,
		0.833302, 0.544418, -0.096001,
		0.552739, -0.817593, 0.161315,
		37.481045, 39.474655, 48.395844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459564, 40.041969, 47.668564>,  <37.094128, 40.046970, 48.282925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459564, 40.041969, 47.668564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.479389, 39.671097, 47.817097>,  <37.491283, 39.448574, 47.906216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.479389, 39.671097, 47.817097>,  <37.459564, 40.041969, 47.668564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479389, 39.671097, 47.817097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095074, -0.374477, -0.922349,
		0.994236, 0.010409, -0.106711,
		0.049562, -0.927178, 0.371328,
		37.494259, 39.392944, 47.928493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809608, 39.716309, 47.155830>,  <37.459564, 40.041969, 47.668564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809608, 39.716309, 47.155830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.634224, 39.418633, 47.357395>,  <37.528992, 39.240025, 47.478333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.634224, 39.418633, 47.357395>,  <37.809608, 39.716309, 47.155830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634224, 39.418633, 47.357395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147519, -0.493484, -0.857153,
		0.886559, -0.450168, 0.106593,
		-0.438464, -0.744192, 0.503911,
		37.502686, 39.195374, 47.508568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971581, 39.266212, 46.770500>,  <37.809608, 39.716309, 47.155830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971581, 39.266212, 46.770500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.696697, 39.084972, 46.997639>,  <37.531769, 38.976231, 47.133923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.696697, 39.084972, 46.997639>,  <37.971581, 39.266212, 46.770500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696697, 39.084972, 46.997639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075550, -0.732849, -0.676184,
		0.722525, -0.507578, 0.469386,
		-0.687204, -0.453098, 0.567849,
		37.490536, 38.949043, 47.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257511, 38.600513, 46.735470>,  <37.971581, 39.266212, 46.770500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257511, 38.600513, 46.735470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.868759, 38.601799, 46.829651>,  <37.635509, 38.602570, 46.886158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.868759, 38.601799, 46.829651>,  <38.257511, 38.600513, 46.735470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868759, 38.601799, 46.829651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169149, -0.705169, -0.688568,
		0.163817, -0.709032, 0.685884,
		-0.971881, 0.003217, 0.235451,
		37.577194, 38.602764, 46.900288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103394, 37.933334, 46.774876>,  <38.257511, 38.600513, 46.735470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103394, 37.933334, 46.774876> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.754131, 38.117985, 46.712265>,  <37.544575, 38.228775, 46.674698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.754131, 38.117985, 46.712265>,  <38.103394, 37.933334, 46.774876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754131, 38.117985, 46.712265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167204, -0.585284, -0.793401,
		-0.457862, -0.666594, 0.588231,
		-0.873158, 0.461622, -0.156522,
		37.492184, 38.256474, 46.665310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635124, 37.419094, 46.629612>,  <38.103394, 37.933334, 46.774876>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635124, 37.419094, 46.629612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465229, 37.749191, 46.480709>,  <37.363293, 37.947250, 46.391369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.465229, 37.749191, 46.480709>,  <37.635124, 37.419094, 46.629612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465229, 37.749191, 46.480709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269445, -0.507782, -0.818264,
		-0.864292, -0.247242, 0.438030,
		-0.424733, 0.825245, -0.372254,
		37.337811, 37.996765, 46.369034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016678, 37.178108, 46.374084>,  <37.635124, 37.419094, 46.629612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016678, 37.178108, 46.374084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072887, 37.524837, 46.182720>,  <37.106613, 37.732876, 46.067902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072887, 37.524837, 46.182720>,  <37.016678, 37.178108, 46.374084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072887, 37.524837, 46.182720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393485, -0.394509, -0.830381,
		-0.908528, 0.304936, 0.285643,
		0.140524, 0.866820, -0.478410,
		37.115044, 37.784882, 46.039196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484520, 37.295898, 45.887627>,  <37.016678, 37.178108, 46.374084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484520, 37.295898, 45.887627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758453, 37.547901, 45.741154>,  <36.922813, 37.699100, 45.653271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.758453, 37.547901, 45.741154>,  <36.484520, 37.295898, 45.887627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758453, 37.547901, 45.741154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310664, -0.202143, -0.928777,
		-0.659155, 0.749822, 0.057284,
		0.684838, 0.630004, -0.366186,
		36.963905, 37.736904, 45.631298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776035, 37.337261, 45.795925>,  <36.484520, 37.295898, 45.887627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776035, 37.337261, 45.795925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661068, 36.956436, 45.837811>,  <35.592087, 36.727940, 45.862942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661068, 36.956436, 45.837811>,  <35.776035, 37.337261, 45.795925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661068, 36.956436, 45.837811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083358, 0.133771, 0.987500,
		-0.954171, 0.275096, -0.117810,
		-0.287417, -0.952065, 0.104709,
		35.574844, 36.670818, 45.869225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152367, 37.363499, 46.248322>,  <35.776035, 37.337261, 45.795925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152367, 37.363499, 46.248322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283649, 36.986839, 46.278187>,  <35.362419, 36.760841, 46.296104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283649, 36.986839, 46.278187>,  <35.152367, 37.363499, 46.248322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283649, 36.986839, 46.278187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143630, 0.028369, 0.989225,
		-0.933623, -0.335393, -0.125938,
		0.328206, -0.941651, 0.074658,
		35.382111, 36.704346, 46.300583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680096, 36.974400, 46.621784>,  <35.152367, 37.363499, 46.248322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680096, 36.974400, 46.621784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016312, 36.770359, 46.694771>,  <35.218040, 36.647934, 46.738564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016312, 36.770359, 46.694771>,  <34.680096, 36.974400, 46.621784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016312, 36.770359, 46.694771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102003, 0.181776, 0.978035,
		-0.532067, -0.840686, 0.100757,
		0.840535, -0.510103, 0.182470,
		35.268471, 36.617329, 46.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535446, 36.482075, 47.219662>,  <34.680096, 36.974400, 46.621784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535446, 36.482075, 47.219662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935379, 36.488251, 47.215763>,  <35.175339, 36.491955, 47.213425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935379, 36.488251, 47.215763>,  <34.535446, 36.482075, 47.219662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935379, 36.488251, 47.215763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007109, 0.162679, 0.986653,
		0.016821, -0.986558, 0.162543,
		0.999833, 0.015441, -0.009750,
		35.235329, 36.492882, 47.212837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711941, 35.960670, 47.625416>,  <34.535446, 36.482075, 47.219662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711941, 35.960670, 47.625416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034515, 36.197201, 47.624447>,  <35.228058, 36.339119, 47.623867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.034515, 36.197201, 47.624447>,  <34.711941, 35.960670, 47.625416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034515, 36.197201, 47.624447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057360, 0.082296, 0.994956,
		0.588538, -0.802226, 0.100284,
		0.806432, 0.591322, -0.002419,
		35.276443, 36.374596, 47.623722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182228, 35.722446, 48.190479>,  <34.711941, 35.960670, 47.625416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182228, 35.722446, 48.190479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338642, 36.080715, 48.105759>,  <35.432491, 36.295677, 48.054924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.338642, 36.080715, 48.105759>,  <35.182228, 35.722446, 48.190479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338642, 36.080715, 48.105759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209830, 0.137313, 0.968048,
		0.896136, -0.422987, -0.134245,
		0.391038, 0.895671, -0.211806,
		35.455952, 36.349415, 48.042217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780502, 35.760540, 48.626083>,  <35.182228, 35.722446, 48.190479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780502, 35.760540, 48.626083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723541, 36.140671, 48.515377>,  <35.689365, 36.368748, 48.448952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723541, 36.140671, 48.515377>,  <35.780502, 35.760540, 48.626083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723541, 36.140671, 48.515377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168268, 0.298792, 0.939366,
		0.975401, 0.087200, -0.202459,
		-0.142406, 0.950326, -0.276769,
		35.680820, 36.425770, 48.432346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469536, 36.183296, 48.799362>,  <35.780502, 35.760540, 48.626083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469536, 36.183296, 48.799362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146355, 36.418884, 48.806557>,  <35.952446, 36.560238, 48.810871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146355, 36.418884, 48.806557>,  <36.469536, 36.183296, 48.799362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146355, 36.418884, 48.806557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260130, 0.329136, 0.907746,
		0.528713, 0.738097, -0.419136,
		-0.807957, 0.588967, 0.017982,
		35.903969, 36.595573, 48.811951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632263, 36.753307, 49.130096>,  <36.469536, 36.183296, 48.799362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632263, 36.753307, 49.130096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234692, 36.786648, 49.158813>,  <35.996147, 36.806652, 49.176044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234692, 36.786648, 49.158813>,  <36.632263, 36.753307, 49.130096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234692, 36.786648, 49.158813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099554, 0.403822, 0.909405,
		0.046808, 0.911033, -0.409669,
		-0.993931, 0.083352, 0.071795,
		35.936512, 36.811653, 49.180351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601418, 37.402615, 49.373936>,  <36.632263, 36.753307, 49.130096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601418, 37.402615, 49.373936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235111, 37.261177, 49.450184>,  <36.015327, 37.176315, 49.495934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.235111, 37.261177, 49.450184>,  <36.601418, 37.402615, 49.373936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235111, 37.261177, 49.450184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021473, 0.430762, 0.902210,
		-0.401129, 0.830310, -0.386886,
		-0.915770, -0.353595, 0.190620,
		35.960381, 37.155098, 49.507370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114754, 37.977688, 49.606659>,  <36.601418, 37.402615, 49.373936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114754, 37.977688, 49.606659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967930, 37.631546, 49.743149>,  <35.879837, 37.423862, 49.825043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967930, 37.631546, 49.743149>,  <36.114754, 37.977688, 49.606659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967930, 37.631546, 49.743149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100672, 0.401628, 0.910253,
		-0.924735, 0.299763, -0.234537,
		-0.367056, -0.865354, 0.341222,
		35.857815, 37.371941, 49.845516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796509, 38.168461, 50.085094>,  <36.114754, 37.977688, 49.606659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796509, 38.168461, 50.085094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817253, 37.781731, 50.185135>,  <35.829700, 37.549690, 50.245159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.817253, 37.781731, 50.185135>,  <35.796509, 38.168461, 50.085094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817253, 37.781731, 50.185135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093009, 0.244673, 0.965134,
		-0.994314, -0.073316, -0.077234,
		0.051863, -0.966830, 0.250100,
		35.832813, 37.491680, 50.260166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265579, 38.027107, 50.607349>,  <35.796509, 38.168461, 50.085094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265579, 38.027107, 50.607349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516045, 37.718613, 50.653137>,  <35.666325, 37.533516, 50.680611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516045, 37.718613, 50.653137>,  <35.265579, 38.027107, 50.607349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516045, 37.718613, 50.653137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078922, 0.083370, 0.993388,
		-0.775684, -0.631062, -0.008664,
		0.626167, -0.771239, 0.114473,
		35.703896, 37.487240, 50.687481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010170, 37.622288, 51.187737>,  <35.265579, 38.027107, 50.607349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010170, 37.622288, 51.187737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393780, 37.531185, 51.120331>,  <35.623947, 37.476524, 51.079887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.393780, 37.531185, 51.120331>,  <35.010170, 37.622288, 51.187737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393780, 37.531185, 51.120331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173659, 0.002594, 0.984802,
		-0.223857, -0.973715, 0.042039,
		0.959026, -0.227755, -0.168513,
		35.681488, 37.462860, 51.069778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390476, 37.669014, 50.810795>,  <35.010170, 37.622288, 51.187737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390476, 37.669014, 50.810795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332993, 38.064163, 50.834320>,  <34.298500, 38.301250, 50.848434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332993, 38.064163, 50.834320>,  <34.390476, 37.669014, 50.810795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332993, 38.064163, 50.834320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374029, 0.000804, -0.927417,
		-0.916215, -0.155280, 0.369376,
		-0.143712, 0.987870, 0.058816,
		34.289879, 38.360523, 50.851963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774216, 37.711338, 50.424202>,  <34.390476, 37.669014, 50.810795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774216, 37.711338, 50.424202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895653, 38.092457, 50.423820>,  <33.968513, 38.321129, 50.423592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895653, 38.092457, 50.423820>,  <33.774216, 37.711338, 50.424202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895653, 38.092457, 50.423820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534644, 0.169530, -0.827898,
		-0.788662, 0.251851, 0.560878,
		0.303592, 0.952802, -0.000949,
		33.986729, 38.378296, 50.423534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218403, 38.120548, 50.217960>,  <33.774216, 37.711338, 50.424202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218403, 38.120548, 50.217960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532158, 38.356541, 50.141369>,  <33.720409, 38.498135, 50.095413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.532158, 38.356541, 50.141369>,  <33.218403, 38.120548, 50.217960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532158, 38.356541, 50.141369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323949, 0.126404, -0.937592,
		-0.528957, 0.797463, 0.290273,
		0.784386, 0.589979, -0.191475,
		33.767475, 38.533535, 50.083927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903294, 38.608467, 49.836624>,  <33.218403, 38.120548, 50.217960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903294, 38.608467, 49.836624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295242, 38.603153, 49.756958>,  <33.530411, 38.599964, 49.709156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295242, 38.603153, 49.756958>,  <32.903294, 38.608467, 49.836624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295242, 38.603153, 49.756958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199505, -0.032738, -0.979350,
		0.006491, 0.999376, -0.034730,
		0.979875, -0.013286, -0.199167,
		33.589207, 38.599167, 49.697208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015244, 39.234386, 49.520824>,  <32.903294, 38.608467, 49.836624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015244, 39.234386, 49.520824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303772, 38.976425, 49.419800>,  <33.476891, 38.821648, 49.359184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303772, 38.976425, 49.419800>,  <33.015244, 39.234386, 49.520824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303772, 38.976425, 49.419800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114161, 0.248959, -0.961763,
		0.683123, 0.722577, 0.105957,
		0.721326, -0.644905, -0.252559,
		33.520168, 38.782955, 49.344032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155338, 39.484921, 48.912025>,  <33.015244, 39.234386, 49.520824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155338, 39.484921, 48.912025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366894, 39.145535, 48.904148>,  <33.493828, 38.941902, 48.899422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.366894, 39.145535, 48.904148>,  <33.155338, 39.484921, 48.912025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366894, 39.145535, 48.904148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116522, -0.049609, -0.991948,
		0.840653, 0.526928, -0.125102,
		0.528891, -0.848461, -0.019694,
		33.525562, 38.890995, 48.898239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651005, 39.633015, 48.510349>,  <33.155338, 39.484921, 48.912025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651005, 39.633015, 48.510349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579742, 39.239452, 48.504944>,  <33.536983, 39.003315, 48.501701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.579742, 39.239452, 48.504944>,  <33.651005, 39.633015, 48.510349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579742, 39.239452, 48.504944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071604, 0.026663, -0.997077,
		0.981393, -0.176670, -0.075202,
		-0.178159, -0.983909, -0.013517,
		33.526295, 38.944279, 48.500889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263096, 40.135670, 48.488338>,  <33.651005, 39.633015, 48.510349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263096, 40.135670, 48.488338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256565, 40.523670, 48.391319>,  <34.252647, 40.756470, 48.333107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.256565, 40.523670, 48.391319>,  <34.263096, 40.135670, 48.488338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256565, 40.523670, 48.391319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326076, 0.234481, 0.915802,
		0.945203, -0.064132, -0.320124,
		-0.016331, 0.970003, -0.242544,
		34.251667, 40.814671, 48.318558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857498, 40.431042, 48.766331>,  <34.263096, 40.135670, 48.488338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857498, 40.431042, 48.766331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.655483, 40.769848, 48.699986>,  <34.534275, 40.973129, 48.660179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.655483, 40.769848, 48.699986>,  <34.857498, 40.431042, 48.766331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655483, 40.769848, 48.699986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323915, 0.364128, 0.873207,
		0.800010, 0.387277, -0.458258,
		-0.505037, 0.847011, -0.165861,
		34.503971, 41.023952, 48.650227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330608, 40.948093, 48.762325>,  <34.857498, 40.431042, 48.766331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330608, 40.948093, 48.762325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971893, 41.099232, 48.854420>,  <34.756664, 41.189915, 48.909676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971893, 41.099232, 48.854420>,  <35.330608, 40.948093, 48.762325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971893, 41.099232, 48.854420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355937, 0.306933, 0.882667,
		0.262843, 0.873513, -0.409742,
		-0.896785, 0.377845, 0.230240,
		34.702858, 41.212585, 48.923492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546967, 41.492817, 49.125034>,  <35.330608, 40.948093, 48.762325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546967, 41.492817, 49.125034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.159294, 41.489544, 49.223515>,  <34.926689, 41.487579, 49.282600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.159294, 41.489544, 49.223515>,  <35.546967, 41.492817, 49.125034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159294, 41.489544, 49.223515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221600, 0.407524, 0.885899,
		-0.107578, 0.913158, -0.393153,
		-0.969185, -0.008180, 0.246196,
		34.868538, 41.487091, 49.297375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303326, 42.165501, 49.374146>,  <35.546967, 41.492817, 49.125034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303326, 42.165501, 49.374146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043808, 41.916794, 49.549629>,  <34.888096, 41.767570, 49.654919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.043808, 41.916794, 49.549629>,  <35.303326, 42.165501, 49.374146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043808, 41.916794, 49.549629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381373, 0.233205, 0.894522,
		-0.658496, 0.747675, 0.085823,
		-0.648797, -0.621770, 0.438708,
		34.849171, 41.730263, 49.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115284, 42.527954, 50.052429>,  <35.303326, 42.165501, 49.374146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115284, 42.527954, 50.052429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022850, 42.141655, 50.099636>,  <34.967392, 41.909874, 50.127960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.022850, 42.141655, 50.099636>,  <35.115284, 42.527954, 50.052429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022850, 42.141655, 50.099636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321720, 0.038633, 0.946046,
		-0.918203, 0.256584, 0.301773,
		-0.231082, -0.965750, 0.118021,
		34.953526, 41.851929, 50.135044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668770, 42.482727, 50.702530>,  <35.115284, 42.527954, 50.052429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668770, 42.482727, 50.702530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807117, 42.111416, 50.647865>,  <34.890125, 41.888630, 50.615067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807117, 42.111416, 50.647865>,  <34.668770, 42.482727, 50.702530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807117, 42.111416, 50.647865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029781, -0.134712, 0.990437,
		-0.937811, -0.346630, -0.018947,
		0.345867, -0.928278, -0.136658,
		34.910877, 41.832932, 50.606869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361504, 42.099438, 51.317234>,  <34.668770, 42.482727, 50.702530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361504, 42.099438, 51.317234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.676411, 41.890862, 51.185600>,  <34.865356, 41.765717, 51.106621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.676411, 41.890862, 51.185600>,  <34.361504, 42.099438, 51.317234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676411, 41.890862, 51.185600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308417, -0.129140, 0.942444,
		-0.533930, -0.843457, 0.059154,
		0.787272, -0.521444, -0.329088,
		34.912594, 41.734428, 51.086872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301949, 41.571056, 51.741238>,  <34.361504, 42.099438, 51.317234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301949, 41.571056, 51.741238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689365, 41.577667, 51.641914>,  <34.921814, 41.581635, 51.582321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689365, 41.577667, 51.641914>,  <34.301949, 41.571056, 51.741238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689365, 41.577667, 51.641914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246709, 0.067201, 0.966757,
		0.032664, -0.997603, 0.061010,
		0.968539, 0.016526, -0.248313,
		34.979927, 41.582626, 51.567421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.025833, 38.630489, 35.736050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425816, 38.632984, 35.739059>,  <34.665806, 38.634480, 35.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425816, 38.632984, 35.739059>,  <34.025833, 38.630489, 35.736050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425816, 38.632984, 35.739059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009670, 0.520026, 0.854096,
		0.001414, -0.854128, 0.520062,
		0.999952, 0.006237, 0.007525,
		34.725800, 38.634853, 35.741318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324650, 38.321644, 36.492870>,  <34.025833, 38.630489, 35.736050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324650, 38.321644, 36.492870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581032, 38.573627, 36.317448>,  <34.734859, 38.724815, 36.212193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581032, 38.573627, 36.317448>,  <34.324650, 38.321644, 36.492870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581032, 38.573627, 36.317448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103136, 0.495492, 0.862468,
		0.760621, -0.598031, 0.252615,
		0.640952, 0.629957, -0.438560,
		34.773319, 38.762615, 36.185879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869057, 38.276005, 36.798737>,  <34.324650, 38.321644, 36.492870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869057, 38.276005, 36.798737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866489, 38.647511, 36.650486>,  <34.864948, 38.870415, 36.561535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866489, 38.647511, 36.650486>,  <34.869057, 38.276005, 36.798737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866489, 38.647511, 36.650486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012446, 0.370527, 0.928738,
		0.999902, 0.010569, 0.009182,
		-0.006414, 0.928761, -0.370622,
		34.864567, 38.926140, 36.539299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469936, 38.623131, 37.132748>,  <34.869057, 38.276005, 36.798737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469936, 38.623131, 37.132748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225029, 38.907513, 36.994370>,  <35.078083, 39.078140, 36.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225029, 38.907513, 36.994370>,  <35.469936, 38.623131, 37.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225029, 38.907513, 36.994370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090261, 0.371829, 0.923903,
		0.785480, 0.596903, -0.163489,
		-0.612270, 0.710950, -0.345941,
		35.041348, 39.120796, 36.890587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729259, 39.289108, 37.342098>,  <35.469936, 38.623131, 37.132748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729259, 39.289108, 37.342098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334976, 39.332268, 37.290356>,  <35.098404, 39.358166, 37.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334976, 39.332268, 37.290356>,  <35.729259, 39.289108, 37.342098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334976, 39.332268, 37.290356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105031, 0.206707, 0.972749,
		0.131699, 0.972435, -0.192420,
		-0.985710, 0.107900, -0.129359,
		35.039265, 39.364639, 37.251549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558533, 39.525711, 37.989349>,  <35.729259, 39.289108, 37.342098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558533, 39.525711, 37.989349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185917, 39.496418, 37.846870>,  <34.962349, 39.478840, 37.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185917, 39.496418, 37.846870>,  <35.558533, 39.525711, 37.989349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185917, 39.496418, 37.846870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361058, 0.069630, 0.929940,
		-0.043304, 0.994881, -0.091305,
		-0.931537, -0.073236, -0.356194,
		34.906456, 39.474445, 37.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208637, 40.102180, 38.209717>,  <35.558533, 39.525711, 37.989349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208637, 40.102180, 38.209717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939915, 39.813030, 38.145050>,  <34.778683, 39.639542, 38.106251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939915, 39.813030, 38.145050>,  <35.208637, 40.102180, 38.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939915, 39.813030, 38.145050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443923, 0.218197, 0.869093,
		-0.592969, 0.655626, -0.467485,
		-0.671804, -0.722872, -0.161664,
		34.738373, 39.596169, 38.096550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692699, 40.392601, 38.400715>,  <35.208637, 40.102180, 38.209717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692699, 40.392601, 38.400715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555046, 40.017044, 38.403603>,  <34.472454, 39.791710, 38.405334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555046, 40.017044, 38.403603>,  <34.692699, 40.392601, 38.400715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555046, 40.017044, 38.403603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496278, 0.188416, 0.847472,
		-0.797045, 0.288060, -0.530792,
		-0.344132, -0.938894, 0.007219,
		34.451805, 39.735374, 38.405769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013783, 40.511818, 38.572632>,  <34.692699, 40.392601, 38.400715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013783, 40.511818, 38.572632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083233, 40.123928, 38.641327>,  <34.124901, 39.891193, 38.682545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083233, 40.123928, 38.641327>,  <34.013783, 40.511818, 38.572632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083233, 40.123928, 38.641327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477435, 0.069639, 0.875903,
		-0.861342, -0.234071, -0.450889,
		0.173624, -0.969722, 0.171737,
		34.135319, 39.833012, 38.692848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371784, 40.194107, 38.755436>,  <34.013783, 40.511818, 38.572632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371784, 40.194107, 38.755436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648746, 39.949162, 38.908062>,  <33.814922, 39.802197, 38.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648746, 39.949162, 38.908062>,  <33.371784, 40.194107, 38.755436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648746, 39.949162, 38.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496264, -0.020322, 0.867934,
		-0.523733, -0.790318, -0.317963,
		0.692405, -0.612360, 0.381563,
		33.856468, 39.765453, 39.022530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955818, 39.569191, 39.055832>,  <33.371784, 40.194107, 38.755436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955818, 39.569191, 39.055832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316994, 39.569183, 39.227741>,  <33.533699, 39.569180, 39.330887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316994, 39.569183, 39.227741>,  <32.955818, 39.569191, 39.055832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316994, 39.569183, 39.227741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428785, -0.067970, 0.900846,
		0.029194, -0.997687, -0.061381,
		0.902935, -0.000019, 0.429778,
		33.587875, 39.569176, 39.356674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912498, 39.239784, 39.744926>,  <32.955818, 39.569191, 39.055832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912498, 39.239784, 39.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254486, 39.444675, 39.777569>,  <33.459679, 39.567608, 39.797153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254486, 39.444675, 39.777569>,  <32.912498, 39.239784, 39.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254486, 39.444675, 39.777569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229743, 0.232917, 0.944970,
		0.465029, -0.826665, 0.316816,
		0.854965, 0.512225, 0.081607,
		33.510975, 39.598343, 39.802052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329739, 38.641994, 39.553791>,  <32.912498, 39.239784, 39.744926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329739, 38.641994, 39.553791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063335, 38.373749, 39.684456>,  <32.903492, 38.212803, 39.762856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063335, 38.373749, 39.684456>,  <33.329739, 38.641994, 39.553791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063335, 38.373749, 39.684456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043600, -0.402174, -0.914524,
		0.744667, -0.623325, 0.238614,
		-0.666010, -0.670613, 0.326663,
		32.863533, 38.172565, 39.782455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482616, 37.907749, 39.309776>,  <33.329739, 38.641994, 39.553791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482616, 37.907749, 39.309776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087837, 37.898178, 39.373474>,  <32.850967, 37.892433, 39.411694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087837, 37.898178, 39.373474>,  <33.482616, 37.907749, 39.309776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087837, 37.898178, 39.373474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138347, -0.380024, -0.914572,
		0.082403, -0.924667, 0.371754,
		-0.986950, -0.023932, 0.159240,
		32.791752, 37.890999, 39.421246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344101, 37.197861, 39.132896>,  <33.482616, 37.907749, 39.309776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344101, 37.197861, 39.132896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003517, 37.407501, 39.140190>,  <32.799168, 37.533283, 39.144566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003517, 37.407501, 39.140190>,  <33.344101, 37.197861, 39.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003517, 37.407501, 39.140190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343208, -0.530621, -0.775016,
		-0.396506, -0.666157, 0.631678,
		-0.851464, 0.524096, 0.018236,
		32.748077, 37.564732, 39.145660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784081, 36.699142, 39.143272>,  <33.344101, 37.197861, 39.132896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784081, 36.699142, 39.143272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596279, 37.023018, 39.002434>,  <32.483597, 37.217342, 38.917931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596279, 37.023018, 39.002434>,  <32.784081, 36.699142, 39.143272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596279, 37.023018, 39.002434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413650, -0.554027, -0.722459,
		-0.780037, -0.193554, 0.595046,
		-0.469506, 0.809685, -0.352098,
		32.455425, 37.265923, 38.896805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128300, 36.371647, 38.881020>,  <32.784081, 36.699142, 39.143272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128300, 36.371647, 38.881020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153805, 36.737667, 38.721710>,  <32.169109, 36.957279, 38.626125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153805, 36.737667, 38.721710>,  <32.128300, 36.371647, 38.881020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153805, 36.737667, 38.721710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388867, -0.344765, -0.854354,
		-0.919085, 0.209352, 0.333848,
		0.063761, 0.915046, -0.398278,
		32.172932, 37.012180, 38.602226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447952, 36.474197, 38.627090>,  <32.128300, 36.371647, 38.881020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447952, 36.474197, 38.627090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692949, 36.729355, 38.440357>,  <31.839949, 36.882450, 38.328316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692949, 36.729355, 38.440357>,  <31.447952, 36.474197, 38.627090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692949, 36.729355, 38.440357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430291, -0.226360, -0.873848,
		-0.663099, 0.736103, 0.135838,
		0.612494, 0.637897, -0.466838,
		31.876698, 36.920723, 38.300304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015446, 36.858612, 38.148499>,  <31.447952, 36.474197, 38.627090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015446, 36.858612, 38.148499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391920, 36.884594, 38.015862>,  <31.617804, 36.900185, 37.936279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391920, 36.884594, 38.015862>,  <31.015446, 36.858612, 38.148499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391920, 36.884594, 38.015862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325277, -0.091468, -0.941185,
		-0.091468, 0.993687, -0.064959,
		0.941185, 0.064959, -0.331590,
		31.674276, 36.904083, 37.916386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927574, 37.046455, 37.435390>,  <31.015446, 36.858612, 38.148499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927574, 37.046455, 37.435390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310125, 36.929859, 37.443184>,  <31.539656, 36.859901, 37.447861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310125, 36.929859, 37.443184>,  <30.927574, 37.046455, 37.435390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310125, 36.929859, 37.443184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110318, -0.422103, -0.899810,
		0.270506, 0.858408, -0.435846,
		0.956377, -0.291486, 0.019484,
		31.597038, 36.842415, 37.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257956, 37.306171, 36.827389>,  <30.927574, 37.046455, 37.435390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257956, 37.306171, 36.827389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497158, 37.006611, 36.941605>,  <31.640680, 36.826874, 37.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497158, 37.006611, 36.941605>,  <31.257956, 37.306171, 36.827389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497158, 37.006611, 36.941605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118415, -0.434904, -0.892657,
		0.792694, 0.500004, -0.348757,
		0.598008, -0.748902, 0.285538,
		31.676559, 36.781940, 37.027267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596720, 37.149014, 36.286999>,  <31.257956, 37.306171, 36.827389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596720, 37.149014, 36.286999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628002, 36.822990, 36.516628>,  <31.646770, 36.627377, 36.654404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628002, 36.822990, 36.516628>,  <31.596720, 37.149014, 36.286999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628002, 36.822990, 36.516628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214965, -0.576075, -0.788624,
		0.973485, -0.061731, -0.220262,
		0.078205, -0.815063, 0.574071,
		31.651464, 36.578472, 36.688850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009453, 36.674206, 35.800228>,  <31.596720, 37.149014, 36.286999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009453, 36.674206, 35.800228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845171, 36.456455, 36.092796>,  <31.746603, 36.325806, 36.268337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845171, 36.456455, 36.092796>,  <32.009453, 36.674206, 35.800228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845171, 36.456455, 36.092796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326823, -0.660997, -0.675478,
		0.851182, -0.516465, 0.093558,
		-0.410702, -0.544377, 0.731421,
		31.721960, 36.293140, 36.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201618, 35.879684, 35.627419>,  <32.009453, 36.674206, 35.800228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201618, 35.879684, 35.627419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888630, 35.877087, 35.876480>,  <31.700836, 35.875530, 36.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888630, 35.877087, 35.876480>,  <32.201618, 35.879684, 35.627419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888630, 35.877087, 35.876480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411950, -0.744445, -0.525451,
		0.466942, -0.667652, 0.579833,
		-0.782472, -0.006493, 0.622651,
		31.653889, 35.875137, 36.063274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142452, 35.189667, 35.733212>,  <32.201618, 35.879684, 35.627419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142452, 35.189667, 35.733212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798712, 35.380894, 35.805847>,  <31.592468, 35.495628, 35.849430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798712, 35.380894, 35.805847>,  <32.142452, 35.189667, 35.733212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798712, 35.380894, 35.805847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470770, -0.600844, -0.646035,
		-0.199738, -0.640658, 0.741392,
		-0.859348, 0.478063, 0.181591,
		31.540907, 35.524311, 35.860325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811993, 34.843678, 35.248894>,  <32.142452, 35.189667, 35.733212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811993, 34.843678, 35.248894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543922, 34.970146, 35.517490>,  <31.383080, 35.046028, 35.678650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543922, 34.970146, 35.517490>,  <31.811993, 34.843678, 35.248894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543922, 34.970146, 35.517490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568623, -0.800176, -0.190753,
		0.477001, -0.509663, 0.716040,
		-0.670178, 0.316167, 0.671491,
		31.342869, 35.064995, 35.718937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844084, 34.298618, 35.638783>,  <31.811993, 34.843678, 35.248894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844084, 34.298618, 35.638783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497475, 34.498238, 35.635063>,  <31.289509, 34.618011, 35.632832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497475, 34.498238, 35.635063>,  <31.844084, 34.298618, 35.638783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497475, 34.498238, 35.635063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497588, -0.865150, -0.062633,
		-0.039305, -0.049644, 0.997993,
		-0.866523, 0.499051, -0.009302,
		31.237518, 34.647953, 35.632271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563080, 34.199680, 35.640289>,  <31.844084, 34.298618, 35.638783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563080, 34.199680, 35.640289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936798, 34.331184, 35.585140>,  <33.161030, 34.410088, 35.552052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936798, 34.331184, 35.585140>,  <32.563080, 34.199680, 35.640289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936798, 34.331184, 35.585140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199200, -0.160687, 0.966695,
		0.295653, -0.930644, -0.215618,
		0.934296, 0.328757, -0.137877,
		33.217087, 34.429810, 35.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073772, 33.670803, 35.807995>,  <32.563080, 34.199680, 35.640289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073772, 33.670803, 35.807995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231003, 34.034313, 35.864006>,  <33.325340, 34.252419, 35.897614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231003, 34.034313, 35.864006>,  <33.073772, 33.670803, 35.807995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231003, 34.034313, 35.864006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152994, -0.214805, 0.964599,
		0.906687, -0.357740, -0.223473,
		0.393078, 0.908780, 0.140029,
		33.348927, 34.306946, 35.906013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728477, 33.581539, 36.333675>,  <33.073772, 33.670803, 35.807995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728477, 33.581539, 36.333675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611767, 33.963966, 36.344978>,  <33.541740, 34.193424, 36.351761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611767, 33.963966, 36.344978>,  <33.728477, 33.581539, 36.333675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611767, 33.963966, 36.344978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199712, 0.032003, 0.979332,
		0.935406, 0.291385, -0.200277,
		-0.291772, 0.956070, 0.028257,
		33.524235, 34.250786, 36.353455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212059, 34.001160, 36.714119>,  <33.728477, 33.581539, 36.333675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212059, 34.001160, 36.714119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849701, 34.169846, 36.729698>,  <33.632286, 34.271057, 36.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849701, 34.169846, 36.729698>,  <34.212059, 34.001160, 36.714119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849701, 34.169846, 36.729698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033301, -0.020762, 0.999230,
		0.422197, 0.906491, 0.004765,
		-0.905892, 0.421713, 0.038953,
		33.577934, 34.296360, 36.741383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246338, 34.384243, 37.288784>,  <34.212059, 34.001160, 36.714119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246338, 34.384243, 37.288784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851936, 34.429790, 37.240086>,  <33.615295, 34.457119, 37.210865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851936, 34.429790, 37.240086>,  <34.246338, 34.384243, 37.288784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851936, 34.429790, 37.240086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087676, 0.266956, 0.959712,
		0.141779, 0.956959, -0.253238,
		-0.986008, 0.113864, -0.121751,
		33.556133, 34.463951, 37.203560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080582, 34.970650, 37.724026>,  <34.246338, 34.384243, 37.288784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080582, 34.970650, 37.724026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730804, 34.787609, 37.659595>,  <33.520939, 34.677784, 37.620937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730804, 34.787609, 37.659595>,  <34.080582, 34.970650, 37.724026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730804, 34.787609, 37.659595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203509, 0.044614, 0.978056,
		-0.440373, 0.888038, -0.132138,
		-0.874446, -0.457601, -0.161076,
		33.468472, 34.650330, 37.611271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497356, 35.412312, 37.977833>,  <34.080582, 34.970650, 37.724026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497356, 35.412312, 37.977833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402519, 35.023815, 37.969036>,  <33.345615, 34.790718, 37.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402519, 35.023815, 37.969036>,  <33.497356, 35.412312, 37.977833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402519, 35.023815, 37.969036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256178, 0.040672, 0.965774,
		-0.937101, 0.234614, -0.258453,
		-0.237096, -0.971237, -0.021989,
		33.331390, 34.732445, 37.962440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952927, 35.365482, 38.479221>,  <33.497356, 35.412312, 37.977833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952927, 35.365482, 38.479221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049168, 34.978924, 38.443043>,  <33.106911, 34.746986, 38.421333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049168, 34.978924, 38.443043>,  <32.952927, 35.365482, 38.479221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049168, 34.978924, 38.443043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161815, -0.131820, 0.977977,
		-0.957041, -0.220666, -0.188094,
		0.240601, -0.966400, -0.090450,
		33.121349, 34.689003, 38.415909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474339, 35.009033, 38.921646>,  <32.952927, 35.365482, 38.479221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474339, 35.009033, 38.921646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773212, 34.745846, 38.884155>,  <32.952538, 34.587933, 38.861660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773212, 34.745846, 38.884155>,  <32.474339, 35.009033, 38.921646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773212, 34.745846, 38.884155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080325, -0.229396, 0.970013,
		-0.659744, -0.717251, -0.224253,
		0.747185, -0.657973, -0.093730,
		32.997368, 34.548454, 38.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203812, 34.461906, 39.277187>,  <32.474339, 35.009033, 38.921646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203812, 34.461906, 39.277187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601280, 34.433582, 39.242310>,  <32.839760, 34.416588, 39.221382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601280, 34.433582, 39.242310>,  <32.203812, 34.461906, 39.277187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601280, 34.433582, 39.242310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079282, -0.107799, 0.991006,
		-0.079568, -0.991648, -0.101504,
		0.993672, -0.070805, -0.087198,
		32.899380, 34.412338, 39.216148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290466, 33.991062, 39.716007>,  <32.203812, 34.461906, 39.277187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290466, 33.991062, 39.716007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626122, 34.207066, 39.689991>,  <32.827515, 34.336670, 39.674381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626122, 34.207066, 39.689991>,  <32.290466, 33.991062, 39.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626122, 34.207066, 39.689991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030713, 0.072339, 0.996907,
		0.543048, -0.838542, 0.044118,
		0.839140, 0.540013, -0.065038,
		32.877865, 34.369068, 39.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713196, 33.785713, 40.245991>,  <32.290466, 33.991062, 39.716007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713196, 33.785713, 40.245991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870770, 34.141834, 40.154625>,  <32.965313, 34.355507, 40.099804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870770, 34.141834, 40.154625>,  <32.713196, 33.785713, 40.245991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870770, 34.141834, 40.154625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306580, 0.107004, 0.945811,
		0.866502, -0.442613, -0.230797,
		0.393933, 0.890305, -0.228416,
		32.988949, 34.408924, 40.086102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389496, 33.714561, 40.646450>,  <32.713196, 33.785713, 40.245991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389496, 33.714561, 40.646450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395237, 34.096985, 40.529324>,  <33.398682, 34.326439, 40.459049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395237, 34.096985, 40.529324>,  <33.389496, 33.714561, 40.646450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395237, 34.096985, 40.529324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396532, 0.263391, 0.879425,
		0.917909, -0.128733, -0.375329,
		0.014353, 0.956061, -0.292815,
		33.399544, 34.383804, 40.441479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077713, 33.954754, 40.804054>,  <33.389496, 33.714561, 40.646450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077713, 33.954754, 40.804054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818878, 34.259666, 40.798389>,  <33.663578, 34.442616, 40.794991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818878, 34.259666, 40.798389>,  <34.077713, 33.954754, 40.804054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818878, 34.259666, 40.798389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442321, 0.390475, 0.807392,
		0.620991, 0.516190, -0.589846,
		-0.647088, 0.762284, -0.014160,
		33.624752, 34.488350, 40.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519630, 34.539627, 40.921204>,  <34.077713, 33.954754, 40.804054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519630, 34.539627, 40.921204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154003, 34.687386, 40.988163>,  <33.934628, 34.776039, 41.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154003, 34.687386, 40.988163>,  <34.519630, 34.539627, 40.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154003, 34.687386, 40.988163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319634, 0.402116, 0.857984,
		0.249619, 0.837765, -0.485633,
		-0.914070, 0.369394, 0.167403,
		33.879784, 34.798203, 41.038383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547619, 35.339287, 41.072254>,  <34.519630, 34.539627, 40.921204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547619, 35.339287, 41.072254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235569, 35.157600, 41.244347>,  <34.048340, 35.048588, 41.347603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235569, 35.157600, 41.244347>,  <34.547619, 35.339287, 41.072254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235569, 35.157600, 41.244347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229527, 0.431936, 0.872209,
		-0.582001, 0.779180, -0.232709,
		-0.780123, -0.454214, 0.430230,
		34.001534, 35.021336, 41.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282124, 35.878128, 41.450493>,  <34.547619, 35.339287, 41.072254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282124, 35.878128, 41.450493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122047, 35.551174, 41.616249>,  <34.026001, 35.355000, 41.715702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122047, 35.551174, 41.616249>,  <34.282124, 35.878128, 41.450493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122047, 35.551174, 41.616249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108769, 0.406617, 0.907101,
		-0.909952, 0.408090, -0.073819,
		-0.400195, -0.817389, 0.414390,
		34.001987, 35.305958, 41.740566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882175, 36.126831, 41.991013>,  <34.282124, 35.878128, 41.450493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882175, 36.126831, 41.991013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926270, 35.744118, 42.098648>,  <33.952724, 35.514488, 42.163231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926270, 35.744118, 42.098648>,  <33.882175, 36.126831, 41.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926270, 35.744118, 42.098648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268524, 0.289340, 0.918791,
		-0.956945, -0.029026, 0.288815,
		0.110235, -0.956786, 0.269089,
		33.959339, 35.457081, 42.179375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712204, 36.119968, 42.631645>,  <33.882175, 36.126831, 41.991013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712204, 36.119968, 42.631645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905621, 35.770054, 42.619423>,  <34.021671, 35.560104, 42.612091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905621, 35.770054, 42.619423>,  <33.712204, 36.119968, 42.631645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905621, 35.770054, 42.619423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275608, 0.119029, 0.953872,
		-0.830801, -0.469654, 0.298654,
		0.483539, -0.874789, -0.030551,
		34.050682, 35.507618, 42.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518642, 35.811764, 43.236897>,  <33.712204, 36.119968, 42.631645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518642, 35.811764, 43.236897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860619, 35.641159, 43.118805>,  <34.065804, 35.538795, 43.047951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860619, 35.641159, 43.118805>,  <33.518642, 35.811764, 43.236897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860619, 35.641159, 43.118805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392140, 0.158858, 0.906085,
		-0.339555, -0.890424, 0.303066,
		0.854944, -0.426510, -0.295230,
		34.117104, 35.513206, 43.030235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686180, 35.402405, 43.734745>,  <33.518642, 35.811764, 43.236897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686180, 35.402405, 43.734745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027077, 35.502121, 43.550770>,  <34.231613, 35.561951, 43.440384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027077, 35.502121, 43.550770>,  <33.686180, 35.402405, 43.734745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027077, 35.502121, 43.550770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403376, 0.246711, 0.881148,
		0.333137, -0.936476, 0.109697,
		0.852237, 0.249294, -0.459940,
		34.282749, 35.576908, 43.412788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153305, 35.004025, 44.119999>,  <33.686180, 35.402405, 43.734745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153305, 35.004025, 44.119999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375603, 35.292824, 43.955135>,  <34.508980, 35.466103, 43.856216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375603, 35.292824, 43.955135>,  <34.153305, 35.004025, 44.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375603, 35.292824, 43.955135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427657, 0.176867, 0.886469,
		0.712923, -0.668911, -0.210473,
		0.555743, 0.721995, -0.412158,
		34.542324, 35.509422, 43.831490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888027, 34.930805, 44.398586>,  <34.153305, 35.004025, 44.119999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888027, 34.930805, 44.398586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868477, 35.305408, 44.259697>,  <34.856747, 35.530170, 44.176361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868477, 35.305408, 44.259697>,  <34.888027, 34.930805, 44.398586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868477, 35.305408, 44.259697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509576, 0.322376, 0.797751,
		0.859036, -0.137944, -0.492979,
		-0.048879, 0.936507, -0.347226,
		34.853813, 35.586361, 44.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561428, 35.277863, 44.595993>,  <34.888027, 34.930805, 44.398586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561428, 35.277863, 44.595993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378662, 35.624420, 44.515404>,  <35.269005, 35.832355, 44.467049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378662, 35.624420, 44.515404>,  <35.561428, 35.277863, 44.595993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378662, 35.624420, 44.515404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379106, 0.394576, 0.837012,
		0.804679, 0.306060, -0.508742,
		-0.456913, 0.866393, -0.201478,
		35.241589, 35.884338, 44.454960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039734, 35.650276, 44.756317>,  <35.561428, 35.277863, 44.595993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039734, 35.650276, 44.756317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706009, 35.870571, 44.766151>,  <35.505772, 36.002750, 44.772053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706009, 35.870571, 44.766151>,  <36.039734, 35.650276, 44.756317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706009, 35.870571, 44.766151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240461, 0.323422, 0.915192,
		0.496082, 0.769469, -0.402268,
		-0.834315, 0.550740, 0.024584,
		35.455715, 36.035793, 44.773525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282673, 36.281139, 45.012299>,  <36.039734, 35.650276, 44.756317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282673, 36.281139, 45.012299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886768, 36.276257, 45.069187>,  <35.649227, 36.273327, 45.103321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886768, 36.276257, 45.069187>,  <36.282673, 36.281139, 45.012299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886768, 36.276257, 45.069187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133587, 0.271990, 0.952983,
		-0.050315, 0.962223, -0.267574,
		-0.989759, -0.012205, 0.142225,
		35.589840, 36.272594, 45.111855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181690, 36.885399, 45.340260>,  <36.282673, 36.281139, 45.012299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181690, 36.885399, 45.340260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864254, 36.657352, 45.425285>,  <35.673794, 36.520523, 45.476299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864254, 36.657352, 45.425285>,  <36.181690, 36.885399, 45.340260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864254, 36.657352, 45.425285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081562, 0.246517, 0.965700,
		-0.602961, 0.783707, -0.149134,
		-0.793590, -0.570116, 0.212561,
		35.626179, 36.486317, 45.489052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173790, 37.502384, 45.010250>,  <36.181690, 36.885399, 45.340260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173790, 37.502384, 45.010250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561882, 37.591724, 45.047703>,  <36.794739, 37.645329, 45.070175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561882, 37.591724, 45.047703>,  <36.173790, 37.502384, 45.010250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561882, 37.591724, 45.047703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145904, -0.230465, -0.962080,
		-0.193305, 0.947100, -0.256192,
		0.970230, 0.223354, 0.093635,
		36.852951, 37.658730, 45.075794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320656, 37.998550, 44.534008>,  <36.173790, 37.502384, 45.010250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320656, 37.998550, 44.534008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655327, 37.792683, 44.608936>,  <36.856129, 37.669163, 44.653893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655327, 37.792683, 44.608936>,  <36.320656, 37.998550, 44.534008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655327, 37.792683, 44.608936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074131, -0.232446, -0.969780,
		0.542659, 0.825277, -0.156329,
		0.836675, -0.514672, 0.187318,
		36.906330, 37.638283, 44.665131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637394, 38.044136, 43.918537>,  <36.320656, 37.998550, 44.534008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637394, 38.044136, 43.918537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872131, 37.774441, 44.097878>,  <37.012974, 37.612621, 44.205482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872131, 37.774441, 44.097878>,  <36.637394, 38.044136, 43.918537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872131, 37.774441, 44.097878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201037, -0.415051, -0.887309,
		0.784346, 0.610846, -0.108022,
		0.586843, -0.674241, 0.448346,
		37.048183, 37.572170, 44.232380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205009, 38.106876, 43.528511>,  <36.637394, 38.044136, 43.918537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205009, 38.106876, 43.528511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236847, 37.746426, 43.698982>,  <37.255951, 37.530155, 43.801266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236847, 37.746426, 43.698982>,  <37.205009, 38.106876, 43.528511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236847, 37.746426, 43.698982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237238, -0.398126, -0.886123,
		0.968186, 0.171635, 0.182094,
		0.079593, -0.901131, 0.426178,
		37.260723, 37.476086, 43.826836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930702, 37.845093, 43.486668>,  <37.205009, 38.106876, 43.528511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930702, 37.845093, 43.486668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681664, 37.532658, 43.505737>,  <37.532238, 37.345196, 43.517178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681664, 37.532658, 43.505737>,  <37.930702, 37.845093, 43.486668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681664, 37.532658, 43.505737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368420, -0.346323, -0.862743,
		0.690387, -0.519582, 0.503389,
		-0.622601, -0.781086, 0.047673,
		37.494884, 37.298332, 43.520039>
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
