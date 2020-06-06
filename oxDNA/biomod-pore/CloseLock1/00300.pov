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
	<23.972754, 35.008556, 34.794327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207109, 34.716515, 34.934998>,  <24.347723, 34.541290, 35.019402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207109, 34.716515, 34.934998>,  <23.972754, 35.008556, 34.794327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207109, 34.716515, 34.934998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742471, 0.657517, 0.128097,
		-0.324759, 0.186060, 0.927315,
		0.585892, -0.730105, 0.351679,
		24.382877, 34.497482, 35.040501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508595, 35.430573, 34.885372>,  <23.972754, 35.008556, 34.794327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508595, 35.430573, 34.885372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629665, 35.068218, 35.003864>,  <24.702307, 34.850803, 35.074959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629665, 35.068218, 35.003864>,  <24.508595, 35.430573, 34.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629665, 35.068218, 35.003864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866550, 0.390974, 0.310209,
		-0.396835, 0.162809, 0.903336,
		0.302676, -0.905888, 0.296234,
		24.720469, 34.796452, 35.092735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936686, 35.457989, 35.575260>,  <24.508595, 35.430573, 34.885372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936686, 35.457989, 35.575260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017096, 35.122723, 35.372456>,  <25.065342, 34.921562, 35.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017096, 35.122723, 35.372456>,  <24.936686, 35.457989, 35.575260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017096, 35.122723, 35.372456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979578, 0.170031, 0.107309,
		-0.003736, -0.518228, 0.855234,
		0.201027, -0.838170, -0.507010,
		25.077404, 34.871273, 35.220352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302301, 35.504799, 36.198994>,  <24.936686, 35.457989, 35.575260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302301, 35.504799, 36.198994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321146, 35.504715, 36.598549>,  <25.332453, 35.504665, 36.838284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321146, 35.504715, 36.598549>,  <25.302301, 35.504799, 36.198994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321146, 35.504715, 36.598549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435308, -0.900052, 0.020339,
		0.899048, -0.435783, -0.042494,
		0.047110, -0.000213, 0.998890,
		25.335279, 35.504650, 36.898216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595240, 34.819962, 36.456741>,  <25.302301, 35.504799, 36.198994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595240, 34.819962, 36.456741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357351, 34.977924, 36.736843>,  <25.214619, 35.072701, 36.904903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357351, 34.977924, 36.736843>,  <25.595240, 34.819962, 36.456741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357351, 34.977924, 36.736843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401479, -0.900536, 0.166884,
		0.696507, -0.181887, 0.694115,
		-0.594721, 0.394909, 0.700253,
		25.178936, 35.096397, 36.946918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310274, 35.162449, 36.699726>,  <25.595240, 34.819962, 36.456741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310274, 35.162449, 36.699726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602640, 34.891006, 36.728745>,  <26.778059, 34.728142, 36.746155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602640, 34.891006, 36.728745>,  <26.310274, 35.162449, 36.699726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602640, 34.891006, 36.728745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423958, -0.534774, -0.730942,
		0.534814, 0.503501, -0.678573,
		0.730913, -0.678604, 0.072541,
		26.821915, 34.687424, 36.750507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559259, 35.038315, 36.027729>,  <26.310274, 35.162449, 36.699726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559259, 35.038315, 36.027729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708162, 34.723503, 36.224510>,  <26.797504, 34.534618, 36.342579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708162, 34.723503, 36.224510>,  <26.559259, 35.038315, 36.027729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708162, 34.723503, 36.224510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272443, -0.599354, -0.752695,
		0.887243, 0.146167, -0.437533,
		0.372256, -0.787026, 0.491950,
		26.819839, 34.487396, 36.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935249, 34.659466, 35.551075>,  <26.559259, 35.038315, 36.027729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935249, 34.659466, 35.551075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915493, 34.359161, 35.814568>,  <26.903639, 34.178978, 35.972664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915493, 34.359161, 35.814568>,  <26.935249, 34.659466, 35.551075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915493, 34.359161, 35.814568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206707, -0.637569, -0.742144,
		0.977155, -0.172819, -0.123697,
		-0.049391, -0.750759, 0.658727,
		26.900675, 34.133934, 36.012184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340063, 34.121010, 35.341988>,  <26.935249, 34.659466, 35.551075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340063, 34.121010, 35.341988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116446, 33.915310, 35.602146>,  <26.982275, 33.791889, 35.758244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116446, 33.915310, 35.602146>,  <27.340063, 34.121010, 35.341988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116446, 33.915310, 35.602146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280453, -0.620911, -0.731994,
		0.780266, -0.591624, 0.202894,
		-0.559044, -0.514248, 0.650399,
		26.948732, 33.761036, 35.797264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468609, 33.402164, 35.148937>,  <27.340063, 34.121010, 35.341988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468609, 33.402164, 35.148937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130646, 33.432823, 35.360695>,  <26.927868, 33.451218, 35.487751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130646, 33.432823, 35.360695>,  <27.468609, 33.402164, 35.148937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130646, 33.432823, 35.360695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424006, -0.699334, -0.575457,
		0.326116, -0.710674, 0.623371,
		-0.844906, 0.076647, 0.529394,
		26.877174, 33.455818, 35.519512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359470, 32.798378, 34.929279>,  <27.468609, 33.402164, 35.148937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359470, 32.798378, 34.929279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018379, 32.937111, 35.085518>,  <26.813725, 33.020351, 35.179260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.018379, 32.937111, 35.085518>,  <27.359470, 32.798378, 34.929279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018379, 32.937111, 35.085518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522355, -0.563376, -0.640119,
		-0.001957, -0.749878, 0.661573,
		-0.852726, 0.346829, 0.390600,
		26.762562, 33.041161, 35.202698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977880, 32.248699, 35.278801>,  <27.359470, 32.798378, 34.929279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977880, 32.248699, 35.278801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688604, 32.510029, 35.189213>,  <26.515038, 32.666828, 35.135460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688604, 32.510029, 35.189213>,  <26.977880, 32.248699, 35.278801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688604, 32.510029, 35.189213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439958, -0.685766, -0.579795,
		-0.532383, -0.320767, 0.783375,
		-0.723191, 0.653325, -0.223966,
		26.471647, 32.706028, 35.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448313, 31.810804, 35.269859>,  <26.977880, 32.248699, 35.278801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448313, 31.810804, 35.269859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302784, 32.130779, 35.078976>,  <26.215467, 32.322765, 34.964443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302784, 32.130779, 35.078976>,  <26.448313, 31.810804, 35.269859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302784, 32.130779, 35.078976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316799, -0.588046, -0.744204,
		-0.875941, -0.119576, 0.467363,
		-0.363820, 0.799939, -0.477213,
		26.193638, 32.370762, 34.935810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717712, 31.695562, 35.188969>,  <26.448313, 31.810804, 35.269859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717712, 31.695562, 35.188969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852964, 31.954559, 34.915791>,  <25.934116, 32.109959, 34.751884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852964, 31.954559, 34.915791>,  <25.717712, 31.695562, 35.188969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852964, 31.954559, 34.915791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477570, -0.507257, -0.717368,
		-0.810922, 0.568720, 0.137704,
		0.338131, 0.647493, -0.682950,
		25.954403, 32.148808, 34.710907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182978, 31.669281, 34.836857>,  <25.717712, 31.695562, 35.188969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182978, 31.669281, 34.836857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467705, 31.834045, 34.609299>,  <25.638540, 31.932903, 34.472763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467705, 31.834045, 34.609299>,  <25.182978, 31.669281, 34.836857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467705, 31.834045, 34.609299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435532, -0.376586, -0.817615,
		-0.551024, 0.829766, -0.088660,
		0.711818, 0.411911, -0.568898,
		25.681250, 31.957619, 34.438629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845314, 31.842068, 34.228943>,  <25.182978, 31.669281, 34.836857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845314, 31.842068, 34.228943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231535, 31.878576, 34.131477>,  <25.463268, 31.900482, 34.072998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231535, 31.878576, 34.131477>,  <24.845314, 31.842068, 34.228943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231535, 31.878576, 34.131477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200012, -0.338643, -0.919411,
		-0.166434, 0.936478, -0.308722,
		0.965554, 0.091273, -0.243668,
		25.521202, 31.905958, 34.058376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.895761, 32.151688, 33.524849>,  <24.845314, 31.842068, 34.228943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.895761, 32.151688, 33.524849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242870, 31.969904, 33.605293>,  <25.451136, 31.860834, 33.653561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242870, 31.969904, 33.605293>,  <24.895761, 32.151688, 33.524849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242870, 31.969904, 33.605293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057097, -0.310831, -0.948749,
		0.493675, 0.834778, -0.243782,
		0.867770, -0.454455, 0.201112,
		25.503201, 31.833567, 33.665627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417732, 32.342945, 33.018238>,  <24.895761, 32.151688, 33.524849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417732, 32.342945, 33.018238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532135, 31.994326, 33.177532>,  <25.600777, 31.785152, 33.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532135, 31.994326, 33.177532>,  <25.417732, 32.342945, 33.018238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532135, 31.994326, 33.177532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212340, -0.347623, -0.913274,
		0.934404, 0.345765, 0.085643,
		0.286007, -0.871553, 0.398240,
		25.617937, 31.732861, 33.297005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108955, 32.282478, 32.882305>,  <25.417732, 32.342945, 33.018238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108955, 32.282478, 32.882305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977402, 31.906464, 32.918472>,  <25.898470, 31.680857, 32.940174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977402, 31.906464, 32.918472>,  <26.108955, 32.282478, 32.882305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977402, 31.906464, 32.918472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097386, -0.128994, -0.986852,
		0.939336, -0.315753, 0.133970,
		-0.328883, -0.940032, 0.090419,
		25.878736, 31.624454, 32.945599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539747, 31.899525, 32.490047>,  <26.108955, 32.282478, 32.882305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539747, 31.899525, 32.490047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218647, 31.664454, 32.530499>,  <26.025988, 31.523411, 32.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218647, 31.664454, 32.530499>,  <26.539747, 31.899525, 32.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218647, 31.664454, 32.530499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096976, -0.295984, -0.950257,
		0.588379, -0.753011, 0.294592,
		-0.802749, -0.587680, 0.101126,
		25.977821, 31.488150, 32.560837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708847, 31.585876, 31.919855>,  <26.539747, 31.899525, 32.490047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708847, 31.585876, 31.919855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367123, 31.431856, 32.059505>,  <26.162088, 31.339443, 32.143295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.367123, 31.431856, 32.059505>,  <26.708847, 31.585876, 31.919855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367123, 31.431856, 32.059505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087350, -0.555784, -0.826725,
		0.512370, -0.736776, 0.441178,
		-0.854311, -0.385052, 0.349125,
		26.110828, 31.316341, 32.164242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707901, 30.918060, 31.616062>,  <26.708847, 31.585876, 31.919855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707901, 30.918060, 31.616062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325768, 30.958555, 31.727123>,  <26.096487, 30.982853, 31.793760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325768, 30.958555, 31.727123>,  <26.707901, 30.918060, 31.616062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325768, 30.958555, 31.727123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286989, -0.542074, -0.789806,
		0.070550, -0.834210, 0.546915,
		-0.955333, 0.101238, 0.277652,
		26.039167, 30.988926, 31.810419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475742, 30.216831, 31.743483>,  <26.707901, 30.918060, 31.616062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475742, 30.216831, 31.743483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188862, 30.470083, 31.627020>,  <26.016733, 30.622034, 31.557142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188862, 30.470083, 31.627020>,  <26.475742, 30.216831, 31.743483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188862, 30.470083, 31.627020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117830, -0.521969, -0.844787,
		-0.686836, -0.571572, 0.448957,
		-0.717198, 0.633130, -0.291159,
		25.973701, 30.660023, 31.539673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019297, 29.790443, 31.413769>,  <26.475742, 30.216831, 31.743483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019297, 29.790443, 31.413769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909231, 30.154381, 31.289534>,  <25.843191, 30.372744, 31.214993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909231, 30.154381, 31.289534>,  <26.019297, 29.790443, 31.413769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909231, 30.154381, 31.289534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063488, -0.339552, -0.938442,
		-0.959299, -0.238507, 0.151196,
		-0.275165, 0.909845, -0.310590,
		25.826681, 30.427334, 31.196356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.510885, 29.662323, 31.022415>,  <26.019297, 29.790443, 31.413769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.510885, 29.662323, 31.022415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650063, 30.013386, 30.890564>,  <25.733570, 30.224024, 30.811453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650063, 30.013386, 30.890564>,  <25.510885, 29.662323, 31.022415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650063, 30.013386, 30.890564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004594, -0.353188, -0.935541,
		-0.937503, 0.324003, -0.126922,
		0.347945, 0.877656, -0.329627,
		25.754446, 30.276682, 30.791676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031235, 30.066118, 30.628166>,  <25.510885, 29.662323, 31.022415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031235, 30.066118, 30.628166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407146, 30.158096, 30.527018>,  <25.632692, 30.213284, 30.466328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407146, 30.158096, 30.527018>,  <25.031235, 30.066118, 30.628166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407146, 30.158096, 30.527018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113807, -0.487109, -0.865894,
		-0.322283, 0.842527, -0.431605,
		0.939777, 0.229943, -0.252873,
		25.689079, 30.227079, 30.451157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074482, 30.113102, 29.810524>,  <25.031235, 30.066118, 30.628166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074482, 30.113102, 29.810524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451900, 30.049995, 29.927025>,  <25.678352, 30.012133, 29.996925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451900, 30.049995, 29.927025>,  <25.074482, 30.113102, 29.810524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451900, 30.049995, 29.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226792, -0.333161, -0.915188,
		0.241417, 0.929577, -0.278574,
		0.943548, -0.157764, 0.291252,
		25.734964, 30.002666, 30.014400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518080, 30.135071, 29.262709>,  <25.074482, 30.113102, 29.810524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518080, 30.135071, 29.262709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765953, 29.963474, 29.525602>,  <25.914677, 29.860516, 29.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765953, 29.963474, 29.525602>,  <25.518080, 30.135071, 29.262709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765953, 29.963474, 29.525602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456434, -0.484252, -0.746437,
		0.638482, 0.762540, -0.104277,
		0.619684, -0.428991, 0.657235,
		25.951859, 29.834778, 29.722773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261484, 30.288853, 29.177998>,  <25.518080, 30.135071, 29.262709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261484, 30.288853, 29.177998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180859, 29.926191, 29.326242>,  <26.132483, 29.708595, 29.415190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180859, 29.926191, 29.326242>,  <26.261484, 30.288853, 29.177998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180859, 29.926191, 29.326242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358530, -0.420416, -0.833491,
		0.911498, -0.035126, 0.409802,
		-0.201564, -0.906652, 0.370614,
		26.120390, 29.654196, 29.437428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884024, 29.949440, 29.426893>,  <26.261484, 30.288853, 29.177998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884024, 29.949440, 29.426893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588423, 29.772926, 29.223269>,  <26.411062, 29.667017, 29.101093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588423, 29.772926, 29.223269>,  <26.884024, 29.949440, 29.426893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588423, 29.772926, 29.223269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631735, -0.191377, -0.751189,
		0.234067, -0.876722, 0.420204,
		-0.739001, -0.441286, -0.509061,
		26.366722, 29.640541, 29.070551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978407, 29.197989, 29.179356>,  <26.884024, 29.949440, 29.426893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978407, 29.197989, 29.179356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740898, 29.390148, 28.921162>,  <26.598392, 29.505444, 28.766245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740898, 29.390148, 28.921162>,  <26.978407, 29.197989, 29.179356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740898, 29.390148, 28.921162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714419, -0.054315, -0.697607,
		-0.370191, -0.875366, -0.310957,
		-0.593772, 0.480401, -0.645484,
		26.562767, 29.534269, 28.727516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583651, 28.625010, 29.461866>,  <26.978407, 29.197989, 29.179356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583651, 28.625010, 29.461866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593479, 28.596329, 29.063017>,  <26.599377, 28.579121, 28.823708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593479, 28.596329, 29.063017>,  <26.583651, 28.625010, 29.461866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593479, 28.596329, 29.063017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387252, -0.920233, 0.056631,
		-0.921646, 0.384747, -0.050381,
		0.024574, -0.071704, -0.997123,
		26.600851, 28.574818, 28.763880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709282, 27.943567, 29.761301>,  <26.583651, 28.625010, 29.461866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709282, 27.943567, 29.761301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977785, 27.652058, 29.815414>,  <27.138887, 27.477152, 29.847883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977785, 27.652058, 29.815414>,  <26.709282, 27.943567, 29.761301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977785, 27.652058, 29.815414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274574, -0.074950, 0.958641,
		-0.688492, -0.680642, -0.250412,
		0.671259, -0.728773, 0.135284,
		27.179163, 27.433426, 29.855999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363890, 27.513529, 30.179691>,  <26.709282, 27.943567, 29.761301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363890, 27.513529, 30.179691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758547, 27.482048, 30.236734>,  <26.995342, 27.463160, 30.270960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758547, 27.482048, 30.236734>,  <26.363890, 27.513529, 30.179691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758547, 27.482048, 30.236734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140634, 0.030131, 0.989603,
		-0.082179, -0.996443, 0.018661,
		0.986645, -0.078701, 0.142610,
		27.054541, 27.458437, 30.279518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435354, 27.073311, 30.773212>,  <26.363890, 27.513529, 30.179691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435354, 27.073311, 30.773212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756989, 27.302572, 30.710043>,  <26.949970, 27.440128, 30.672140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756989, 27.302572, 30.710043>,  <26.435354, 27.073311, 30.773212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756989, 27.302572, 30.710043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006277, 0.257440, 0.966274,
		0.594479, -0.777959, 0.203406,
		0.804087, 0.573153, -0.157926,
		26.998215, 27.474518, 30.662664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064447, 26.761143, 31.168619>,  <26.435354, 27.073311, 30.773212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064447, 26.761143, 31.168619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093771, 27.153225, 31.095053>,  <27.111364, 27.388474, 31.050913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093771, 27.153225, 31.095053>,  <27.064447, 26.761143, 31.168619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093771, 27.153225, 31.095053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122296, 0.174185, 0.977089,
		0.989783, -0.094121, -0.107106,
		0.073308, 0.980205, -0.183915,
		27.115763, 27.447287, 31.039879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677570, 27.140551, 31.415712>,  <27.064447, 26.761143, 31.168619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677570, 27.140551, 31.415712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402855, 27.431192, 31.408051>,  <27.238026, 27.605577, 31.403454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402855, 27.431192, 31.408051>,  <27.677570, 27.140551, 31.415712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402855, 27.431192, 31.408051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259595, 0.269812, 0.927261,
		0.678922, 0.631858, -0.373926,
		-0.686787, 0.726606, -0.019154,
		27.196819, 27.649174, 31.402304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027403, 27.646032, 31.589931>,  <27.677570, 27.140551, 31.415712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027403, 27.646032, 31.589931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656841, 27.761965, 31.686075>,  <27.434504, 27.831524, 31.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656841, 27.761965, 31.686075>,  <28.027403, 27.646032, 31.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656841, 27.761965, 31.686075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341401, 0.377311, 0.860861,
		0.158815, 0.879564, -0.448492,
		-0.926403, 0.289833, 0.240362,
		27.378920, 27.848915, 31.758184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115398, 28.250696, 31.877422>,  <28.027403, 27.646032, 31.589931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115398, 28.250696, 31.877422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764528, 28.128729, 32.025795>,  <27.554007, 28.055548, 32.114819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764528, 28.128729, 32.025795>,  <28.115398, 28.250696, 31.877422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764528, 28.128729, 32.025795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246034, 0.377971, 0.892527,
		-0.412348, 0.874164, -0.256527,
		-0.877175, -0.304918, 0.370930,
		27.501375, 28.037254, 32.137074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847286, 28.831146, 32.259846>,  <28.115398, 28.250696, 31.877422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847286, 28.831146, 32.259846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603273, 28.551550, 32.409122>,  <27.456865, 28.383791, 32.498688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603273, 28.551550, 32.409122>,  <27.847286, 28.831146, 32.259846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603273, 28.551550, 32.409122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035635, 0.446300, 0.894173,
		-0.791576, 0.558772, -0.247348,
		-0.610031, -0.698992, 0.373192,
		27.420263, 28.341852, 32.521080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379583, 29.222519, 32.619453>,  <27.847286, 28.831146, 32.259846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379583, 29.222519, 32.619453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382750, 28.846422, 32.755623>,  <27.384649, 28.620764, 32.837322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382750, 28.846422, 32.755623>,  <27.379583, 29.222519, 32.619453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382750, 28.846422, 32.755623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099252, 0.338012, 0.935894,
		-0.995031, -0.041194, -0.090646,
		0.007914, -0.940240, 0.340421,
		27.385124, 28.564350, 32.857750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774897, 29.106277, 33.094467>,  <27.379583, 29.222519, 32.619453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774897, 29.106277, 33.094467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060789, 28.843809, 33.191296>,  <27.232325, 28.686329, 33.249393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060789, 28.843809, 33.191296>,  <26.774897, 29.106277, 33.094467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060789, 28.843809, 33.191296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006797, 0.339576, 0.940554,
		-0.699365, -0.673890, 0.238247,
		0.714733, -0.656171, 0.242068,
		27.275209, 28.646957, 33.263916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591183, 28.905563, 33.774151>,  <26.774897, 29.106277, 33.094467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591183, 28.905563, 33.774151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978769, 28.817350, 33.729481>,  <27.211321, 28.764423, 33.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978769, 28.817350, 33.729481>,  <26.591183, 28.905563, 33.774151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978769, 28.817350, 33.729481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198061, 0.422321, 0.884543,
		-0.147908, -0.879210, 0.452894,
		0.968966, -0.220532, -0.111673,
		27.269459, 28.751190, 33.695980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790152, 28.646374, 34.340649>,  <26.591183, 28.905563, 33.774151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790152, 28.646374, 34.340649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138186, 28.761305, 34.180450>,  <27.347006, 28.830263, 34.084332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138186, 28.761305, 34.180450>,  <26.790152, 28.646374, 34.340649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138186, 28.761305, 34.180450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190680, 0.553044, 0.811038,
		0.454524, -0.782038, 0.426408,
		0.870086, 0.287329, -0.400491,
		27.399212, 28.847504, 34.060303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358410, 28.466040, 34.827747>,  <26.790152, 28.646374, 34.340649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358410, 28.466040, 34.827747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464127, 28.768763, 34.588619>,  <27.527555, 28.950397, 34.445141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464127, 28.768763, 34.588619>,  <27.358410, 28.466040, 34.827747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464127, 28.768763, 34.588619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117232, 0.590057, 0.798805,
		0.957292, -0.281200, 0.067224,
		0.264290, 0.756809, -0.597822,
		27.543413, 28.995806, 34.409271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760786, 28.776752, 35.201351>,  <27.358410, 28.466040, 34.827747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760786, 28.776752, 35.201351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752916, 29.053196, 34.912357>,  <27.748196, 29.219061, 34.738960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752916, 29.053196, 34.912357>,  <27.760786, 28.776752, 35.201351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752916, 29.053196, 34.912357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317513, 0.689535, 0.650943,
		0.948050, -0.216592, -0.233001,
		-0.019673, 0.691108, -0.722484,
		27.747015, 29.260529, 34.695614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406214, 29.087687, 35.170883>,  <27.760786, 28.776752, 35.201351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406214, 29.087687, 35.170883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130493, 29.344275, 35.036198>,  <27.965061, 29.498228, 34.955387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130493, 29.344275, 35.036198>,  <28.406214, 29.087687, 35.170883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130493, 29.344275, 35.036198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380163, 0.715909, 0.585619,
		0.616718, 0.275660, -0.737340,
		-0.689300, 0.641471, -0.336718,
		27.923702, 29.536716, 34.935181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739595, 29.710852, 35.193054>,  <28.406214, 29.087687, 35.170883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739595, 29.710852, 35.193054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361712, 29.825201, 35.128807>,  <28.134981, 29.893810, 35.090260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361712, 29.825201, 35.128807>,  <28.739595, 29.710852, 35.193054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361712, 29.825201, 35.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127474, 0.771486, 0.623345,
		0.302111, 0.568407, -0.765273,
		-0.944711, 0.285872, -0.160617,
		28.078299, 29.910963, 35.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846401, 30.311771, 34.836952>,  <28.739595, 29.710852, 35.193054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846401, 30.311771, 34.836952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495356, 30.307554, 35.028652>,  <28.284727, 30.305023, 35.143673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495356, 30.307554, 35.028652>,  <28.846401, 30.311771, 34.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495356, 30.307554, 35.028652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253152, 0.838782, 0.482037,
		-0.407067, 0.544366, -0.733459,
		-0.877616, -0.010545, 0.479248,
		28.232071, 30.304390, 35.172428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683989, 30.949129, 34.863365>,  <28.846401, 30.311771, 34.836952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683989, 30.949129, 34.863365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455515, 30.816957, 35.163914>,  <28.318432, 30.737654, 35.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455515, 30.816957, 35.163914>,  <28.683989, 30.949129, 34.863365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455515, 30.816957, 35.163914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166656, 0.849643, 0.500333,
		-0.803726, 0.411003, -0.430233,
		-0.571183, -0.330430, 0.751376,
		28.284161, 30.717829, 35.389328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449848, 31.565828, 35.116909>,  <28.683989, 30.949129, 34.863365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449848, 31.565828, 35.116909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304838, 31.335199, 35.409798>,  <28.217833, 31.196823, 35.585529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304838, 31.335199, 35.409798>,  <28.449848, 31.565828, 35.116909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304838, 31.335199, 35.409798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040437, 0.775192, 0.630430,
		-0.931096, 0.258156, -0.257712,
		-0.362525, -0.576570, 0.732217,
		28.196081, 31.162228, 35.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955997, 32.022442, 35.522514>,  <28.449848, 31.565828, 35.116909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955997, 32.022442, 35.522514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090107, 31.732458, 35.763187>,  <28.170572, 31.558468, 35.907593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090107, 31.732458, 35.763187>,  <27.955997, 32.022442, 35.522514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090107, 31.732458, 35.763187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054704, 0.652550, 0.755768,
		-0.940532, -0.220473, 0.258440,
		0.335272, -0.724962, 0.601683,
		28.190689, 31.514969, 35.943691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538570, 32.041847, 36.125340>,  <27.955997, 32.022442, 35.522514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538570, 32.041847, 36.125340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867571, 31.841566, 36.233257>,  <28.064972, 31.721399, 36.298008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867571, 31.841566, 36.233257>,  <27.538570, 32.041847, 36.125340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867571, 31.841566, 36.233257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142152, 0.278337, 0.949906,
		-0.550712, -0.819652, 0.157757,
		0.822502, -0.500699, 0.269799,
		28.114321, 31.691357, 36.314198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374081, 31.867260, 36.765690>,  <27.538570, 32.041847, 36.125340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374081, 31.867260, 36.765690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771830, 31.830042, 36.745426>,  <28.010479, 31.807711, 36.733269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771830, 31.830042, 36.745426>,  <27.374081, 31.867260, 36.765690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771830, 31.830042, 36.745426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086706, 0.439976, 0.893814,
		-0.060875, -0.893176, 0.445567,
		0.994372, -0.093044, -0.050661,
		28.070141, 31.802128, 36.730228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557428, 31.721029, 37.486443>,  <27.374081, 31.867260, 36.765690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557428, 31.721029, 37.486443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891127, 31.848391, 37.306374>,  <28.091345, 31.924807, 37.198330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891127, 31.848391, 37.306374>,  <27.557428, 31.721029, 37.486443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891127, 31.848391, 37.306374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248408, 0.511862, 0.822369,
		0.492273, -0.797883, 0.347923,
		0.834243, 0.318404, -0.450176,
		28.141399, 31.943911, 37.171322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146048, 31.626650, 37.957146>,  <27.557428, 31.721029, 37.486443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146048, 31.626650, 37.957146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234489, 31.923250, 37.703754>,  <28.287554, 32.101212, 37.551720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234489, 31.923250, 37.703754>,  <28.146048, 31.626650, 37.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234489, 31.923250, 37.703754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617700, 0.396175, 0.679332,
		0.754692, -0.541499, -0.370429,
		0.221103, 0.741501, -0.633474,
		28.300819, 32.145702, 37.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861330, 31.644865, 38.013134>,  <28.146048, 31.626650, 37.957146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861330, 31.644865, 38.013134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776445, 31.986984, 37.824059>,  <28.725515, 32.192257, 37.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776445, 31.986984, 37.824059>,  <28.861330, 31.644865, 38.013134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776445, 31.986984, 37.824059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774003, 0.442393, 0.452998,
		0.596561, -0.269729, -0.755884,
		-0.212211, 0.855298, -0.472685,
		28.712782, 32.243572, 37.682255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301783, 32.180248, 38.078850>,  <28.861330, 31.644865, 38.013134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301783, 32.180248, 38.078850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059975, 32.456757, 37.920509>,  <28.914890, 32.622662, 37.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059975, 32.456757, 37.920509>,  <29.301783, 32.180248, 38.078850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059975, 32.456757, 37.920509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570773, 0.722527, 0.390092,
		0.555673, 0.009878, -0.831342,
		-0.604521, 0.691272, -0.395851,
		28.878618, 32.664139, 37.801754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179005, 32.551548, 38.749104>,  <29.301783, 32.180248, 38.078850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179005, 32.551548, 38.749104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980324, 32.507870, 39.093513>,  <28.861115, 32.481663, 39.300159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.980324, 32.507870, 39.093513>,  <29.179005, 32.551548, 38.749104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980324, 32.507870, 39.093513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372321, -0.869328, -0.325032,
		0.784004, -0.482022, 0.391143,
		-0.496704, -0.109195, 0.861023,
		28.831312, 32.475113, 39.351822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917990, 31.802315, 38.805893>,  <29.179005, 32.551548, 38.749104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917990, 31.802315, 38.805893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188128, 31.690134, 38.533054>,  <29.350210, 31.622826, 38.369350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188128, 31.690134, 38.533054>,  <28.917990, 31.802315, 38.805893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188128, 31.690134, 38.533054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733568, 0.350832, 0.582061,
		0.076061, -0.893456, 0.442664,
		0.675347, -0.280452, -0.682096,
		29.390732, 31.605999, 38.328426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412693, 31.306391, 39.118656>,  <28.917990, 31.802315, 38.805893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412693, 31.306391, 39.118656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596666, 31.482891, 38.810432>,  <29.707050, 31.588791, 38.625500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596666, 31.482891, 38.810432>,  <29.412693, 31.306391, 39.118656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596666, 31.482891, 38.810432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664257, 0.404904, 0.628343,
		0.589259, -0.800844, -0.106874,
		0.459932, 0.441249, -0.770560,
		29.734646, 31.615265, 38.579266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125763, 31.213747, 39.258785>,  <29.412693, 31.306391, 39.118656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125763, 31.213747, 39.258785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102779, 31.506851, 38.987564>,  <30.088989, 31.682714, 38.824829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102779, 31.506851, 38.987564>,  <30.125763, 31.213747, 39.258785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102779, 31.506851, 38.987564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847858, 0.394404, 0.354375,
		0.527100, -0.554532, -0.643941,
		-0.057460, 0.732762, -0.678055,
		30.085541, 31.726681, 38.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951757, 31.925774, 39.240097>,  <30.125763, 31.213747, 39.258785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951757, 31.925774, 39.240097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819679, 32.016388, 39.606628>,  <29.740433, 32.070755, 39.826546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819679, 32.016388, 39.606628>,  <29.951757, 31.925774, 39.240097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819679, 32.016388, 39.606628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712113, 0.696985, 0.084297,
		-0.619570, 0.680362, -0.391459,
		-0.330193, 0.226535, 0.916327,
		29.720621, 32.084347, 39.881527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811710, 32.732632, 39.434391>,  <29.951757, 31.925774, 39.240097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811710, 32.732632, 39.434391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943062, 32.514996, 39.743229>,  <30.021872, 32.384415, 39.928532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943062, 32.514996, 39.743229>,  <29.811710, 32.732632, 39.434391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943062, 32.514996, 39.743229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670183, 0.710232, 0.215465,
		-0.665600, 0.446692, 0.597865,
		0.328377, -0.544093, 0.772096,
		30.041574, 32.351768, 39.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812815, 33.134830, 40.191452>,  <29.811710, 32.732632, 39.434391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812815, 33.134830, 40.191452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099926, 32.856319, 40.191647>,  <30.272192, 32.689213, 40.191765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099926, 32.856319, 40.191647>,  <29.812815, 33.134830, 40.191452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099926, 32.856319, 40.191647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625576, 0.645204, 0.438596,
		-0.305700, -0.314507, 0.898684,
		0.717776, -0.696274, 0.000491,
		30.315258, 32.647438, 40.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114925, 33.221493, 40.726021>,  <29.812815, 33.134830, 40.191452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114925, 33.221493, 40.726021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407999, 32.998425, 40.569981>,  <30.583843, 32.864582, 40.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407999, 32.998425, 40.569981>,  <30.114925, 33.221493, 40.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407999, 32.998425, 40.569981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678074, 0.549139, 0.488530,
		-0.058218, -0.622456, 0.780487,
		0.732684, -0.557669, -0.390102,
		30.627804, 32.831123, 40.452950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618965, 33.146244, 41.279518>,  <30.114925, 33.221493, 40.726021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618965, 33.146244, 41.279518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823473, 33.085953, 40.941078>,  <30.946178, 33.049778, 40.738014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823473, 33.085953, 40.941078>,  <30.618965, 33.146244, 41.279518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823473, 33.085953, 40.941078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764096, 0.530371, 0.367237,
		0.393393, -0.834258, 0.386336,
		0.511272, -0.150730, -0.846098,
		30.976854, 33.040733, 40.687248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263039, 32.863571, 41.513531>,  <30.618965, 33.146244, 41.279518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263039, 32.863571, 41.513531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331572, 33.029022, 41.155861>,  <31.372692, 33.128292, 40.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331572, 33.029022, 41.155861>,  <31.263039, 32.863571, 41.513531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331572, 33.029022, 41.155861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878468, 0.346749, 0.328722,
		0.446025, -0.841828, -0.303953,
		0.171333, 0.413631, -0.894178,
		31.382971, 33.153111, 40.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863823, 32.582832, 41.347134>,  <31.263039, 32.863571, 41.513531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863823, 32.582832, 41.347134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804701, 32.916592, 41.134747>,  <31.769228, 33.116848, 41.007313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804701, 32.916592, 41.134747>,  <31.863823, 32.582832, 41.347134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804701, 32.916592, 41.134747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858002, 0.375207, 0.350787,
		0.491920, -0.403724, -0.771376,
		-0.147805, 0.834402, -0.530968,
		31.760359, 33.166912, 40.975456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463882, 32.679909, 40.947823>,  <31.863823, 32.582832, 41.347134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463882, 32.679909, 40.947823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266415, 33.024307, 40.996765>,  <32.147934, 33.230946, 41.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266415, 33.024307, 40.996765>,  <32.463882, 32.679909, 40.947823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266415, 33.024307, 40.996765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803911, 0.398152, 0.441817,
		0.331685, 0.316479, -0.888721,
		-0.493672, 0.860997, 0.122360,
		32.118313, 33.282608, 41.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007851, 33.026978, 40.945732>,  <32.463882, 32.679909, 40.947823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007851, 33.026978, 40.945732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726585, 33.291069, 41.051308>,  <32.557827, 33.449524, 41.114655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726585, 33.291069, 41.051308>,  <33.007851, 33.026978, 40.945732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726585, 33.291069, 41.051308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695969, 0.563099, 0.445586,
		0.145564, 0.497012, -0.855447,
		-0.703163, 0.660226, 0.263938,
		32.515636, 33.489136, 41.130489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272266, 33.759869, 40.810844>,  <33.007851, 33.026978, 40.945732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272266, 33.759869, 40.810844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972923, 33.787495, 41.074718>,  <32.793316, 33.804070, 41.233044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972923, 33.787495, 41.074718>,  <33.272266, 33.759869, 40.810844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972923, 33.787495, 41.074718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614835, 0.445388, 0.650851,
		-0.248862, 0.892670, -0.375777,
		-0.748362, 0.069069, 0.659685,
		32.748413, 33.808216, 41.272625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340332, 34.427944, 41.018269>,  <33.272266, 33.759869, 40.810844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340332, 34.427944, 41.018269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133034, 34.222363, 41.291698>,  <33.008656, 34.099014, 41.455757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133034, 34.222363, 41.291698>,  <33.340332, 34.427944, 41.018269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133034, 34.222363, 41.291698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561959, 0.397868, 0.725192,
		-0.644689, 0.759966, 0.082630,
		-0.518246, -0.513957, 0.683571,
		32.977562, 34.068176, 41.496769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193787, 34.987453, 41.555534>,  <33.340332, 34.427944, 41.018269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193787, 34.987453, 41.555534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154308, 34.626808, 41.723984>,  <33.130623, 34.410419, 41.825054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154308, 34.626808, 41.723984>,  <33.193787, 34.987453, 41.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154308, 34.626808, 41.723984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520632, 0.313867, 0.793996,
		-0.848057, 0.297616, 0.438433,
		-0.098696, -0.901617, 0.421125,
		33.124699, 34.356323, 41.850323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965675, 35.128281, 42.316456>,  <33.193787, 34.987453, 41.555534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965675, 35.128281, 42.316456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109978, 34.757397, 42.276188>,  <33.196560, 34.534866, 42.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109978, 34.757397, 42.276188>,  <32.965675, 35.128281, 42.316456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109978, 34.757397, 42.276188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334664, 0.027938, 0.941923,
		-0.870551, -0.373492, 0.320383,
		0.360752, -0.927213, -0.100673,
		33.218204, 34.479233, 42.245987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682697, 34.692329, 42.816624>,  <32.965675, 35.128281, 42.316456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682697, 34.692329, 42.816624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060658, 34.615948, 42.710266>,  <33.287434, 34.570118, 42.646450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060658, 34.615948, 42.710266>,  <32.682697, 34.692329, 42.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060658, 34.615948, 42.710266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292978, 0.130920, 0.947113,
		-0.146044, -0.972829, 0.179652,
		0.944899, -0.190954, -0.265898,
		33.344128, 34.558662, 42.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950039, 34.302429, 43.341740>,  <32.682697, 34.692329, 42.816624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950039, 34.302429, 43.341740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277817, 34.360008, 43.119827>,  <33.474483, 34.394554, 42.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277817, 34.360008, 43.119827>,  <32.950039, 34.302429, 43.341740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277817, 34.360008, 43.119827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557294, 0.026032, 0.829907,
		0.133907, -0.989242, -0.058891,
		0.819446, 0.143950, -0.554785,
		33.523651, 34.403194, 42.953392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337761, 33.906960, 43.637325>,  <32.950039, 34.302429, 43.341740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337761, 33.906960, 43.637325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592499, 34.145313, 43.441631>,  <33.745342, 34.288326, 43.324215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592499, 34.145313, 43.441631>,  <33.337761, 33.906960, 43.637325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592499, 34.145313, 43.441631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531723, 0.120048, 0.838367,
		0.558298, -0.794050, -0.240391,
		0.636847, 0.595880, -0.489237,
		33.783554, 34.324078, 43.294861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048504, 33.757484, 43.760483>,  <33.337761, 33.906960, 43.637325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048504, 33.757484, 43.760483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096481, 34.127926, 43.617405>,  <34.125267, 34.350189, 43.531559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096481, 34.127926, 43.617405>,  <34.048504, 33.757484, 43.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096481, 34.127926, 43.617405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612469, 0.214537, 0.760826,
		0.781342, -0.310331, -0.541478,
		0.119941, 0.926104, -0.357695,
		34.132465, 34.405758, 43.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747177, 33.850121, 43.702557>,  <34.048504, 33.757484, 43.760483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747177, 33.850121, 43.702557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562157, 34.202866, 43.739140>,  <34.451145, 34.414513, 43.761089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562157, 34.202866, 43.739140>,  <34.747177, 33.850121, 43.702557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562157, 34.202866, 43.739140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529270, 0.191897, 0.826468,
		0.711281, 0.430689, -0.555505,
		-0.462550, 0.881863, 0.091458,
		34.423393, 34.467426, 43.766579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184875, 34.262875, 44.206161>,  <34.747177, 33.850121, 43.702557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184875, 34.262875, 44.206161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898403, 34.541519, 44.189106>,  <34.726521, 34.708706, 44.178871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898403, 34.541519, 44.189106>,  <35.184875, 34.262875, 44.206161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898403, 34.541519, 44.189106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348590, 0.409973, 0.842857,
		0.604629, 0.588769, -0.536446,
		-0.716177, 0.696615, -0.042643,
		34.683552, 34.750504, 44.176311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474659, 35.073719, 44.187317>,  <35.184875, 34.262875, 44.206161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474659, 35.073719, 44.187317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112217, 35.000626, 44.339939>,  <34.894753, 34.956772, 44.431515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112217, 35.000626, 44.339939>,  <35.474659, 35.073719, 44.187317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112217, 35.000626, 44.339939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254329, 0.485450, 0.836454,
		-0.338074, 0.854954, -0.393394,
		-0.906103, -0.182731, 0.381558,
		34.840385, 34.945805, 44.454407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130783, 35.715607, 44.493553>,  <35.474659, 35.073719, 44.187317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130783, 35.715607, 44.493553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982491, 35.384560, 44.662128>,  <34.893517, 35.185932, 44.763275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982491, 35.384560, 44.662128>,  <35.130783, 35.715607, 44.493553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982491, 35.384560, 44.662128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167152, 0.386907, 0.906843,
		-0.913576, 0.406635, -0.005099,
		-0.370727, -0.827618, 0.421439,
		34.871273, 35.136272, 44.788559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727623, 35.974243, 45.149292>,  <35.130783, 35.715607, 44.493553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727623, 35.974243, 45.149292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747311, 35.579361, 45.209953>,  <34.759125, 35.342430, 45.246349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747311, 35.579361, 45.209953>,  <34.727623, 35.974243, 45.149292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747311, 35.579361, 45.209953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227187, 0.158925, 0.960796,
		-0.972607, -0.012834, 0.232102,
		0.049218, -0.987207, 0.151656,
		34.762077, 35.283199, 45.255451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211639, 35.875481, 45.721519>,  <34.727623, 35.974243, 45.149292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211639, 35.875481, 45.721519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458527, 35.560848, 45.714195>,  <34.606659, 35.372070, 45.709801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458527, 35.560848, 45.714195>,  <34.211639, 35.875481, 45.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458527, 35.560848, 45.714195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112403, 0.065119, 0.991527,
		-0.778723, -0.614045, 0.128606,
		0.617217, -0.786580, -0.018311,
		34.643692, 35.324875, 45.708702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095940, 35.556316, 46.406067>,  <34.211639, 35.875481, 45.721519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095940, 35.556316, 46.406067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420494, 35.368507, 46.266811>,  <34.615227, 35.255821, 46.183258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420494, 35.368507, 46.266811>,  <34.095940, 35.556316, 46.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420494, 35.368507, 46.266811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418183, 0.050159, 0.906977,
		-0.408384, -0.881495, 0.237045,
		0.811385, -0.469523, -0.348142,
		34.663910, 35.227650, 46.162369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297947, 35.152134, 46.951023>,  <34.095940, 35.556316, 46.406067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297947, 35.152134, 46.951023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625900, 35.150593, 46.722015>,  <34.822670, 35.149670, 46.584610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625900, 35.150593, 46.722015>,  <34.297947, 35.152134, 46.951023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625900, 35.150593, 46.722015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572523, -0.001273, 0.819888,
		-0.003931, -0.999992, 0.001193,
		0.819879, -0.003906, -0.572523,
		34.871864, 35.149437, 46.550259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681698, 34.526623, 47.054195>,  <34.297947, 35.152134, 46.951023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681698, 34.526623, 47.054195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938576, 34.823074, 46.975906>,  <35.092705, 35.000946, 46.928932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938576, 34.823074, 46.975906>,  <34.681698, 34.526623, 47.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938576, 34.823074, 46.975906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475679, -0.185086, 0.859926,
		0.601093, -0.645342, -0.471402,
		0.642197, 0.741132, -0.195722,
		35.131233, 35.045414, 46.917191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335896, 34.438705, 47.381290>,  <34.681698, 34.526623, 47.054195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335896, 34.438705, 47.381290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410965, 34.818935, 47.282345>,  <35.456009, 35.047073, 47.222977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410965, 34.818935, 47.282345>,  <35.335896, 34.438705, 47.381290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410965, 34.818935, 47.282345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631795, 0.075996, 0.771402,
		0.752072, -0.301056, -0.586304,
		0.187678, 0.950573, -0.247360,
		35.467270, 35.104107, 47.208138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026993, 34.528797, 47.283543>,  <35.335896, 34.438705, 47.381290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026993, 34.528797, 47.283543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911419, 34.900471, 47.375748>,  <35.842075, 35.123474, 47.431068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911419, 34.900471, 47.375748>,  <36.026993, 34.528797, 47.283543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911419, 34.900471, 47.375748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575352, -0.023907, 0.817557,
		0.765170, 0.368849, -0.527699,
		-0.288939, 0.929182, 0.230511,
		35.824738, 35.179226, 47.444901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616894, 34.814556, 47.611847>,  <36.026993, 34.528797, 47.283543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616894, 34.814556, 47.611847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328369, 35.075550, 47.704777>,  <36.155254, 35.232147, 47.760536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328369, 35.075550, 47.704777>,  <36.616894, 34.814556, 47.611847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328369, 35.075550, 47.704777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463941, 0.206108, 0.861555,
		0.514269, 0.729233, -0.451383,
		-0.721309, 0.652486, 0.232327,
		36.111977, 35.271297, 47.774475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994900, 35.439499, 47.791420>,  <36.616894, 34.814556, 47.611847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994900, 35.439499, 47.791420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648045, 35.427238, 47.990273>,  <36.439930, 35.419880, 48.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648045, 35.427238, 47.990273>,  <36.994900, 35.439499, 47.791420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648045, 35.427238, 47.990273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486615, 0.160691, 0.858711,
		-0.106207, 0.986529, -0.124424,
		-0.867136, -0.030655, 0.497127,
		36.387905, 35.418041, 48.139412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800262, 36.125336, 48.028580>,  <36.994900, 35.439499, 47.791420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800262, 36.125336, 48.028580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604675, 35.859154, 48.254177>,  <36.487324, 35.699444, 48.389534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604675, 35.859154, 48.254177>,  <36.800262, 36.125336, 48.028580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604675, 35.859154, 48.254177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445782, 0.365121, 0.817291,
		-0.749792, 0.651046, 0.118114,
		-0.488969, -0.665451, 0.563990,
		36.457985, 35.659519, 48.423374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871677, 36.491028, 48.580448>,  <36.800262, 36.125336, 48.028580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871677, 36.491028, 48.580448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755108, 36.124939, 48.691769>,  <36.685165, 35.905285, 48.758560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755108, 36.124939, 48.691769>,  <36.871677, 36.491028, 48.580448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755108, 36.124939, 48.691769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583142, 0.060653, 0.810103,
		-0.758301, 0.398368, 0.516026,
		-0.291420, -0.915218, 0.278298,
		36.667683, 35.850372, 48.775257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564522, 36.575573, 49.200249>,  <36.871677, 36.491028, 48.580448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564522, 36.575573, 49.200249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672718, 36.190487, 49.201736>,  <36.737637, 35.959435, 49.202629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672718, 36.190487, 49.201736>,  <36.564522, 36.575573, 49.200249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672718, 36.190487, 49.201736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588571, 0.168424, 0.790707,
		-0.761852, -0.211692, 0.612183,
		0.270493, -0.962715, 0.003719,
		36.753864, 35.901672, 49.202850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533787, 36.286110, 49.963726>,  <36.564522, 36.575573, 49.200249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533787, 36.286110, 49.963726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786545, 36.049217, 49.763737>,  <36.938198, 35.907082, 49.643745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786545, 36.049217, 49.763737>,  <36.533787, 36.286110, 49.963726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786545, 36.049217, 49.763737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693997, 0.145134, 0.705198,
		-0.345080, -0.792588, 0.502717,
		0.631893, -0.592233, -0.499971,
		36.976112, 35.871548, 49.613747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806709, 35.848137, 50.438320>,  <36.533787, 36.286110, 49.963726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806709, 35.848137, 50.438320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080837, 35.829678, 50.147610>,  <37.245316, 35.818600, 49.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080837, 35.829678, 50.147610>,  <36.806709, 35.848137, 50.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080837, 35.829678, 50.147610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727347, -0.006125, 0.686243,
		-0.036126, -0.998916, 0.029375,
		0.685318, -0.046158, -0.726779,
		37.286434, 35.815830, 49.929577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307011, 35.316277, 50.717415>,  <36.806709, 35.848137, 50.438320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307011, 35.316277, 50.717415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509449, 35.499428, 50.425056>,  <37.630913, 35.609318, 50.249641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509449, 35.499428, 50.425056>,  <37.307011, 35.316277, 50.717415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509449, 35.499428, 50.425056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808437, 0.043408, 0.586980,
		0.300492, -0.887955, -0.348196,
		0.506097, 0.457877, -0.730900,
		37.661278, 35.636791, 50.205788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966297, 34.886124, 50.734573>,  <37.307011, 35.316277, 50.717415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966297, 34.886124, 50.734573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043354, 35.223335, 50.533699>,  <38.089588, 35.425663, 50.413174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043354, 35.223335, 50.533699>,  <37.966297, 34.886124, 50.734573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043354, 35.223335, 50.533699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918889, 0.024577, 0.393750,
		0.344284, -0.537310, -0.769914,
		0.192643, 0.843027, -0.502189,
		38.101147, 35.476242, 50.383041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591938, 34.761158, 50.245773>,  <37.966297, 34.886124, 50.734573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591938, 34.761158, 50.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539848, 35.146927, 50.337799>,  <38.508595, 35.378387, 50.393013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539848, 35.146927, 50.337799>,  <38.591938, 34.761158, 50.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539848, 35.146927, 50.337799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899812, 0.017509, 0.435927,
		0.416390, 0.263781, -0.870080,
		-0.130224, 0.964424, 0.230063,
		38.500782, 35.436253, 50.406818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275600, 35.121323, 50.182903>,  <38.591938, 34.761158, 50.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275600, 35.121323, 50.182903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087181, 35.374676, 50.428486>,  <38.974129, 35.526688, 50.575836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087181, 35.374676, 50.428486>,  <39.275600, 35.121323, 50.182903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087181, 35.374676, 50.428486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852966, 0.149630, 0.500059,
		0.224863, 0.759234, -0.610737,
		-0.471047, 0.633383, 0.613955,
		38.945866, 35.564690, 50.612671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742928, 35.683403, 50.269920>,  <39.275600, 35.121323, 50.182903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742928, 35.683403, 50.269920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491631, 35.736012, 50.576649>,  <39.340855, 35.767578, 50.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491631, 35.736012, 50.576649>,  <39.742928, 35.683403, 50.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491631, 35.736012, 50.576649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775884, 0.178891, 0.604981,
		-0.057609, 0.975039, -0.214432,
		-0.628240, 0.131522, 0.766823,
		39.303158, 35.775467, 50.806694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068630, 36.094543, 50.675205>,  <39.742928, 35.683403, 50.269920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068630, 36.094543, 50.675205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804768, 36.003319, 50.961658>,  <39.646450, 35.948582, 51.133530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804768, 36.003319, 50.961658>,  <40.068630, 36.094543, 50.675205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804768, 36.003319, 50.961658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665298, 0.266059, 0.697561,
		-0.349621, 0.936590, -0.023777,
		-0.659655, -0.228063, 0.716130,
		39.606873, 35.934898, 51.176498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975033, 36.696095, 51.101841>,  <40.068630, 36.094543, 50.675205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975033, 36.696095, 51.101841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894444, 36.383129, 51.337547>,  <39.846092, 36.195351, 51.478973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894444, 36.383129, 51.337547>,  <39.975033, 36.696095, 51.101841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894444, 36.383129, 51.337547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678735, 0.322234, 0.659912,
		-0.706207, 0.532909, 0.466133,
		-0.201469, -0.782415, 0.589268,
		39.834003, 36.148403, 51.514328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034561, 37.009918, 51.781132>,  <39.975033, 36.696095, 51.101841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034561, 37.009918, 51.781132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032082, 36.611458, 51.816101>,  <40.030594, 36.372383, 51.837082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032082, 36.611458, 51.816101>,  <40.034561, 37.009918, 51.781132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032082, 36.611458, 51.816101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684700, 0.059489, 0.726394,
		-0.728799, 0.064360, 0.681696,
		-0.006198, -0.996152, 0.087423,
		40.030224, 36.312611, 51.842327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035820, 36.785198, 52.524506>,  <40.034561, 37.009918, 51.781132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035820, 36.785198, 52.524506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194714, 36.523842, 52.266739>,  <40.290051, 36.367027, 52.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194714, 36.523842, 52.266739>,  <40.035820, 36.785198, 52.524506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194714, 36.523842, 52.266739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790412, -0.113218, 0.602022,
		-0.466319, -0.748502, 0.471478,
		0.397235, -0.653396, -0.644421,
		40.313885, 36.327824, 52.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285862, 36.130341, 52.912361>,  <40.035820, 36.785198, 52.524506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285862, 36.130341, 52.912361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503437, 36.186966, 52.581520>,  <40.633980, 36.220940, 52.383015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503437, 36.186966, 52.581520>,  <40.285862, 36.130341, 52.912361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503437, 36.186966, 52.581520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835466, 0.000623, 0.549541,
		0.078310, -0.989929, -0.117933,
		0.543933, 0.141564, -0.827101,
		40.666618, 36.229435, 52.333389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978737, 35.870865, 53.013889>,  <40.285862, 36.130341, 52.912361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978737, 35.870865, 53.013889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032154, 36.119350, 52.705017>,  <41.064205, 36.268440, 52.519695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032154, 36.119350, 52.705017>,  <40.978737, 35.870865, 53.013889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032154, 36.119350, 52.705017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934451, 0.180598, 0.306896,
		0.330102, -0.762547, -0.556377,
		0.133542, 0.621214, -0.772179,
		41.072216, 36.305714, 52.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585171, 35.657589, 52.753006>,  <40.978737, 35.870865, 53.013889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585171, 35.657589, 52.753006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536369, 36.038090, 52.639709>,  <41.507088, 36.266392, 52.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536369, 36.038090, 52.639709>,  <41.585171, 35.657589, 52.753006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536369, 36.038090, 52.639709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980173, 0.160365, 0.116379,
		0.156129, -0.263430, -0.951960,
		-0.122003, 0.951256, -0.283245,
		41.499767, 36.323467, 52.554737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115864, 35.889278, 52.224503>,  <41.585171, 35.657589, 52.753006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115864, 35.889278, 52.224503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992897, 36.212650, 52.425278>,  <41.919117, 36.406673, 52.545742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992897, 36.212650, 52.425278>,  <42.115864, 35.889278, 52.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992897, 36.212650, 52.425278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948493, 0.302742, 0.093313,
		-0.076520, 0.504767, -0.859857,
		-0.307417, 0.808429, 0.501934,
		41.900673, 36.455177, 52.575859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358192, 35.800056, 52.964680>,  <42.115864, 35.889278, 52.224503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358192, 35.800056, 52.964680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080959, 35.804741, 53.252983>,  <41.914619, 35.807552, 53.425964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080959, 35.804741, 53.252983>,  <42.358192, 35.800056, 52.964680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080959, 35.804741, 53.252983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402792, -0.835502, -0.373758,
		0.597819, -0.549363, 0.583791,
		-0.693087, 0.011707, 0.720759,
		41.873032, 35.808254, 53.469212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199074, 35.138783, 52.563374>,  <42.358192, 35.800056, 52.964680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199074, 35.138783, 52.563374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001472, 35.197632, 52.906143>,  <41.882912, 35.232941, 53.111805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001472, 35.197632, 52.906143>,  <42.199074, 35.138783, 52.563374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001472, 35.197632, 52.906143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573113, -0.796258, -0.193688,
		0.653835, -0.586795, 0.477673,
		-0.494007, 0.147120, 0.856921,
		41.853271, 35.241768, 53.163219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176914, 34.455803, 52.937618>,  <42.199074, 35.138783, 52.563374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176914, 34.455803, 52.937618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866318, 34.689064, 53.033119>,  <41.679962, 34.829021, 53.090420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866318, 34.689064, 53.033119>,  <42.176914, 34.455803, 52.937618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866318, 34.689064, 53.033119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614407, -0.784777, -0.081418,
		0.139887, -0.209910, 0.967662,
		-0.776489, 0.583149, 0.238750,
		41.633369, 34.864010, 53.104744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830956, 34.297195, 53.682743>,  <42.176914, 34.455803, 52.937618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830956, 34.297195, 53.682743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648575, 34.399395, 53.341724>,  <41.539146, 34.460716, 53.137115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648575, 34.399395, 53.341724>,  <41.830956, 34.297195, 53.682743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648575, 34.399395, 53.341724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431599, -0.901210, -0.039264,
		-0.778352, 0.350054, 0.521182,
		-0.455950, 0.255503, -0.852542,
		41.511791, 34.476048, 53.085960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072426, 34.138058, 53.800476>,  <41.830956, 34.297195, 53.682743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072426, 34.138058, 53.800476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735832, 34.309677, 53.669132>,  <40.533875, 34.412651, 53.590324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735832, 34.309677, 53.669132>,  <41.072426, 34.138058, 53.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735832, 34.309677, 53.669132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107512, -0.462629, -0.880009,
		-0.529478, -0.775815, 0.343167,
		-0.841484, 0.429051, -0.328361,
		40.483387, 34.438393, 53.570625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768303, 33.574291, 53.375519>,  <41.072426, 34.138058, 53.800476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768303, 33.574291, 53.375519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625999, 33.928200, 53.255104>,  <40.540619, 34.140545, 53.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625999, 33.928200, 53.255104>,  <40.768303, 33.574291, 53.375519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625999, 33.928200, 53.255104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088152, -0.288903, -0.953291,
		-0.930411, -0.365679, 0.024786,
		-0.355759, 0.884768, -0.301034,
		40.519272, 34.193630, 53.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223186, 33.404732, 52.989223>,  <40.768303, 33.574291, 53.375519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223186, 33.404732, 52.989223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370865, 33.759163, 52.877110>,  <40.459473, 33.971821, 52.809841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370865, 33.759163, 52.877110>,  <40.223186, 33.404732, 52.989223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370865, 33.759163, 52.877110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005168, -0.299628, -0.954042,
		-0.929336, 0.353679, -0.106043,
		0.369198, 0.886078, -0.280283,
		40.481625, 34.024986, 52.793026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769260, 33.711243, 52.580849>,  <40.223186, 33.404732, 52.989223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769260, 33.711243, 52.580849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114437, 33.884853, 52.477348>,  <40.321545, 33.989021, 52.415249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114437, 33.884853, 52.477348>,  <39.769260, 33.711243, 52.580849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114437, 33.884853, 52.477348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191052, -0.193812, -0.962256,
		-0.467793, 0.879806, -0.084327,
		0.862942, 0.434026, -0.258752,
		40.373322, 34.015060, 52.399723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626244, 34.021313, 51.973137>,  <39.769260, 33.711243, 52.580849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626244, 34.021313, 51.973137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023697, 34.057625, 51.946445>,  <40.262169, 34.079411, 51.930431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023697, 34.057625, 51.946445>,  <39.626244, 34.021313, 51.973137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023697, 34.057625, 51.946445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062991, -0.043443, -0.997068,
		-0.093410, 0.994923, -0.037449,
		0.993633, 0.090778, -0.066729,
		40.321785, 34.084858, 51.926426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836254, 34.703674, 51.599991>,  <39.626244, 34.021313, 51.973137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836254, 34.703674, 51.599991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138290, 34.442257, 51.579163>,  <40.319511, 34.285404, 51.566666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138290, 34.442257, 51.579163>,  <39.836254, 34.703674, 51.599991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138290, 34.442257, 51.579163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064755, 0.004693, -0.997890,
		0.652413, 0.756871, -0.038777,
		0.755092, -0.653547, -0.052073,
		40.364819, 34.246193, 51.563541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235638, 34.900799, 51.002972>,  <39.836254, 34.703674, 51.599991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235638, 34.900799, 51.002972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334782, 34.515060, 51.040077>,  <40.394268, 34.283619, 51.062340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334782, 34.515060, 51.040077>,  <40.235638, 34.900799, 51.002972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334782, 34.515060, 51.040077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045799, -0.107304, -0.993171,
		0.967712, 0.241921, -0.070763,
		0.247863, -0.964344, 0.092760,
		40.409142, 34.225758, 51.067905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630138, 34.874439, 50.485855>,  <40.235638, 34.900799, 51.002972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630138, 34.874439, 50.485855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547512, 34.493908, 50.577343>,  <40.497936, 34.265591, 50.632236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547512, 34.493908, 50.577343>,  <40.630138, 34.874439, 50.485855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547512, 34.493908, 50.577343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017636, -0.230102, -0.973007,
		0.978274, -0.205024, 0.030754,
		-0.206566, -0.951325, 0.228719,
		40.485542, 34.208511, 50.645958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140556, 34.357361, 50.226337>,  <40.630138, 34.874439, 50.485855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140556, 34.357361, 50.226337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792507, 34.163250, 50.260742>,  <40.583679, 34.046783, 50.281384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792507, 34.163250, 50.260742>,  <41.140556, 34.357361, 50.226337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792507, 34.163250, 50.260742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027464, -0.221996, -0.974661,
		0.492076, -0.845709, 0.206490,
		-0.870119, -0.485278, 0.086012,
		40.531471, 34.017666, 50.286545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201637, 33.827206, 49.633720>,  <41.140556, 34.357361, 50.226337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201637, 33.827206, 49.633720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820618, 33.801224, 49.752674>,  <40.592007, 33.785633, 49.824047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820618, 33.801224, 49.752674>,  <41.201637, 33.827206, 49.633720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820618, 33.801224, 49.752674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258862, -0.341138, -0.903668,
		0.160150, -0.937766, 0.308134,
		-0.952546, -0.064958, 0.297385,
		40.534855, 33.781738, 49.841888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923828, 33.156052, 49.360645>,  <41.201637, 33.827206, 49.633720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923828, 33.156052, 49.360645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590641, 33.366726, 49.428497>,  <40.390728, 33.493130, 49.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590641, 33.366726, 49.428497>,  <40.923828, 33.156052, 49.360645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590641, 33.366726, 49.428497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400052, -0.361450, -0.842207,
		-0.382270, -0.769385, 0.511777,
		-0.832964, 0.526688, 0.169623,
		40.340752, 33.524731, 49.479385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272320, 32.689693, 49.230988>,  <40.923828, 33.156052, 49.360645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272320, 32.689693, 49.230988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142063, 33.066803, 49.202343>,  <40.063908, 33.293068, 49.185158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142063, 33.066803, 49.202343>,  <40.272320, 32.689693, 49.230988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142063, 33.066803, 49.202343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580742, -0.259208, -0.771718,
		-0.746120, -0.209718, 0.631920,
		-0.325642, 0.942778, -0.071608,
		40.044369, 33.349636, 49.180862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567123, 32.618416, 49.029076>,  <40.272320, 32.689693, 49.230988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567123, 32.618416, 49.029076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643425, 33.002232, 48.946232>,  <39.689205, 33.232521, 48.896526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643425, 33.002232, 48.946232>,  <39.567123, 32.618416, 49.029076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643425, 33.002232, 48.946232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405250, -0.115186, -0.906920,
		-0.894084, 0.256928, 0.366882,
		0.190754, 0.959542, -0.207106,
		39.700649, 33.290092, 48.884098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873714, 32.873905, 48.860931>,  <39.567123, 32.618416, 49.029076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873714, 32.873905, 48.860931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148281, 33.112839, 48.695030>,  <39.313023, 33.256199, 48.595490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148281, 33.112839, 48.695030>,  <38.873714, 32.873905, 48.860931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148281, 33.112839, 48.695030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486409, -0.046851, -0.872474,
		-0.540592, 0.800622, 0.258391,
		0.686416, 0.597336, -0.414757,
		39.354206, 33.292038, 48.570602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475525, 33.462635, 48.638458>,  <38.873714, 32.873905, 48.860931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475525, 33.462635, 48.638458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816231, 33.415684, 48.434219>,  <39.020657, 33.387512, 48.311676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816231, 33.415684, 48.434219>,  <38.475525, 33.462635, 48.638458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816231, 33.415684, 48.434219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521464, -0.095692, -0.847891,
		0.050660, 0.988466, -0.142714,
		0.851768, -0.117374, -0.510602,
		39.071762, 33.380470, 48.281040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425987, 33.894726, 48.139503>,  <38.475525, 33.462635, 48.638458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425987, 33.894726, 48.139503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716751, 33.652611, 48.009739>,  <38.891209, 33.507343, 47.931881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716751, 33.652611, 48.009739>,  <38.425987, 33.894726, 48.139503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716751, 33.652611, 48.009739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337223, 0.096908, -0.936424,
		0.598239, 0.790090, -0.133672,
		0.726905, -0.605283, -0.324410,
		38.934822, 33.471027, 47.912415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657951, 34.105625, 47.572773>,  <38.425987, 33.894726, 48.139503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657951, 34.105625, 47.572773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768307, 33.725163, 47.517368>,  <38.834518, 33.496883, 47.484127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768307, 33.725163, 47.517368>,  <38.657951, 34.105625, 47.572773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768307, 33.725163, 47.517368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400870, 0.017113, -0.915975,
		0.873607, 0.308232, -0.376569,
		0.275889, -0.951157, -0.138511,
		38.851074, 33.439816, 47.475815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774231, 34.094311, 46.915676>,  <38.657951, 34.105625, 47.572773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774231, 34.094311, 46.915676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745598, 33.705841, 47.006626>,  <38.728416, 33.472759, 47.061195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.745598, 33.705841, 47.006626>,  <38.774231, 34.094311, 46.915676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745598, 33.705841, 47.006626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458626, -0.170383, -0.872142,
		0.885742, -0.166709, -0.433209,
		-0.071582, -0.971173, 0.227372,
		38.724125, 33.414490, 47.074837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885044, 33.720745, 46.283207>,  <38.774231, 34.094311, 46.915676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885044, 33.720745, 46.283207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712387, 33.428616, 46.494984>,  <38.608791, 33.253338, 46.622051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712387, 33.428616, 46.494984>,  <38.885044, 33.720745, 46.283207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712387, 33.428616, 46.494984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700092, -0.098887, -0.707172,
		0.568819, -0.675907, -0.468609,
		-0.431643, -0.730322, 0.529446,
		38.582893, 33.209518, 46.653816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563461, 33.224495, 45.789429>,  <38.885044, 33.720745, 46.283207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563461, 33.224495, 45.789429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357262, 33.130867, 46.119148>,  <38.233540, 33.074692, 46.316978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357262, 33.130867, 46.119148>,  <38.563461, 33.224495, 45.789429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357262, 33.130867, 46.119148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741834, -0.359569, -0.566032,
		0.428882, -0.903285, 0.011721,
		-0.515502, -0.234066, 0.824300,
		38.202610, 33.060646, 46.366440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292126, 32.618736, 45.602962>,  <38.563461, 33.224495, 45.789429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292126, 32.618736, 45.602962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052032, 32.710602, 45.909420>,  <37.907978, 32.765720, 46.093296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052032, 32.710602, 45.909420>,  <38.292126, 32.618736, 45.602962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052032, 32.710602, 45.909420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769608, -0.426646, -0.475055,
		0.217771, -0.874774, 0.432835,
		-0.600233, 0.229660, 0.766144,
		37.871964, 32.779499, 46.139263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046982, 31.965235, 45.794083>,  <38.292126, 32.618736, 45.602962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046982, 31.965235, 45.794083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825413, 32.281490, 45.898434>,  <37.692471, 32.471245, 45.961044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825413, 32.281490, 45.898434>,  <38.046982, 31.965235, 45.794083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825413, 32.281490, 45.898434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796123, -0.411316, -0.443855,
		-0.243626, -0.453553, 0.857284,
		-0.553926, 0.790638, 0.260877,
		37.659233, 32.518681, 45.976696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361992, 31.716499, 46.005592>,  <38.046982, 31.965235, 45.794083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361992, 31.716499, 46.005592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297150, 32.108955, 45.963482>,  <37.258244, 32.344429, 45.938213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297150, 32.108955, 45.963482>,  <37.361992, 31.716499, 46.005592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297150, 32.108955, 45.963482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918562, -0.189016, -0.347156,
		-0.360509, 0.040430, 0.931879,
		-0.162104, 0.981141, -0.105280,
		37.248520, 32.403297, 45.931896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667488, 31.832579, 46.246113>,  <37.361992, 31.716499, 46.005592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667488, 31.832579, 46.246113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773750, 32.141766, 46.015652>,  <36.837505, 32.327278, 45.877377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773750, 32.141766, 46.015652>,  <36.667488, 31.832579, 46.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773750, 32.141766, 46.015652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933257, 0.056307, -0.354768,
		-0.241784, 0.631941, 0.736336,
		0.265653, 0.772968, -0.576150,
		36.853447, 32.373657, 45.842808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195641, 32.460648, 46.319454>,  <36.667488, 31.832579, 46.246113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195641, 32.460648, 46.319454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349491, 32.504021, 45.952782>,  <36.441803, 32.530045, 45.732780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349491, 32.504021, 45.952782>,  <36.195641, 32.460648, 46.319454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349491, 32.504021, 45.952782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892039, -0.211664, -0.399330,
		-0.237329, 0.971308, 0.015317,
		0.384631, 0.108436, -0.916679,
		36.464882, 32.536552, 45.677776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608753, 32.729198, 46.056473>,  <36.195641, 32.460648, 46.319454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608753, 32.729198, 46.056473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826801, 32.602673, 45.745914>,  <35.957630, 32.526756, 45.559578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826801, 32.602673, 45.745914>,  <35.608753, 32.729198, 46.056473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826801, 32.602673, 45.745914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836504, -0.266818, -0.478612,
		-0.055763, 0.910358, -0.410048,
		0.545116, -0.316318, -0.776396,
		35.990337, 32.507778, 45.512997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314827, 33.101173, 45.398689>,  <35.608753, 32.729198, 46.056473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314827, 33.101173, 45.398689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531841, 32.791271, 45.268818>,  <35.662048, 32.605331, 45.190895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531841, 32.791271, 45.268818>,  <35.314827, 33.101173, 45.398689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531841, 32.791271, 45.268818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752696, -0.276740, -0.597381,
		0.372970, 0.568484, -0.733294,
		0.542533, -0.774752, -0.324680,
		35.694603, 32.558846, 45.171413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017052, 32.898987, 44.863560>,  <35.314827, 33.101173, 45.398689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017052, 32.898987, 44.863560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246235, 32.572601, 44.894341>,  <35.383743, 32.376770, 44.912811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246235, 32.572601, 44.894341>,  <35.017052, 32.898987, 44.863560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246235, 32.572601, 44.894341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469713, -0.403862, -0.785025,
		0.671632, 0.413639, -0.614665,
		0.572957, -0.815965, 0.076955,
		35.418121, 32.327812, 44.917427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320843, 32.853008, 44.239288>,  <35.017052, 32.898987, 44.863560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320843, 32.853008, 44.239288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316376, 32.500549, 44.428371>,  <35.313698, 32.289074, 44.541821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316376, 32.500549, 44.428371>,  <35.320843, 32.853008, 44.239288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316376, 32.500549, 44.428371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477260, -0.410724, -0.776871,
		0.878691, -0.234279, -0.415951,
		-0.011164, -0.881146, 0.472712,
		35.313026, 32.236206, 44.570187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489849, 32.344151, 43.735889>,  <35.320843, 32.853008, 44.239288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489849, 32.344151, 43.735889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291077, 32.143799, 44.019348>,  <35.171814, 32.023586, 44.189423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291077, 32.143799, 44.019348>,  <35.489849, 32.344151, 43.735889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291077, 32.143799, 44.019348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530531, -0.470874, -0.704850,
		0.686731, -0.726218, -0.031744,
		-0.496927, -0.500884, 0.708645,
		35.141998, 31.993534, 44.231941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431694, 31.738297, 43.418236>,  <35.489849, 32.344151, 43.735889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431694, 31.738297, 43.418236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175529, 31.725971, 43.725204>,  <35.021832, 31.718576, 43.909386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175529, 31.725971, 43.725204>,  <35.431694, 31.738297, 43.418236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175529, 31.725971, 43.725204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617202, -0.574028, -0.538101,
		0.457100, -0.818256, 0.348593,
		-0.640407, -0.030814, 0.767418,
		34.983406, 31.716726, 43.955429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331745, 31.004789, 43.580936>,  <35.431694, 31.738297, 43.418236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331745, 31.004789, 43.580936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016544, 31.214100, 43.710693>,  <34.827423, 31.339685, 43.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016544, 31.214100, 43.710693>,  <35.331745, 31.004789, 43.580936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016544, 31.214100, 43.710693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613355, -0.621580, -0.487273,
		-0.053343, -0.582941, 0.810761,
		-0.788004, 0.523277, 0.324393,
		34.780144, 31.371082, 43.808010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718719, 30.545549, 43.703159>,  <35.331745, 31.004789, 43.580936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718719, 30.545549, 43.703159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532532, 30.895912, 43.652367>,  <34.420818, 31.106129, 43.621891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532532, 30.895912, 43.652367>,  <34.718719, 30.545549, 43.703159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532532, 30.895912, 43.652367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610069, -0.421469, -0.670954,
		-0.641210, -0.234845, 0.730546,
		-0.465473, 0.875906, -0.126979,
		34.392891, 31.158684, 43.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087727, 30.531113, 43.896996>,  <34.718719, 30.545549, 43.703159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087727, 30.531113, 43.896996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060833, 30.839828, 43.644070>,  <34.044697, 31.025057, 43.492313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060833, 30.839828, 43.644070>,  <34.087727, 30.531113, 43.896996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060833, 30.839828, 43.644070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732594, -0.468424, -0.493847,
		-0.677337, 0.430025, 0.596903,
		-0.067237, 0.771788, -0.632315,
		34.040661, 31.071365, 43.454376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414307, 30.546230, 43.706966>,  <34.087727, 30.531113, 43.896996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414307, 30.546230, 43.706966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559032, 30.809067, 43.442444>,  <33.645866, 30.966768, 43.283730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559032, 30.809067, 43.442444>,  <33.414307, 30.546230, 43.706966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559032, 30.809067, 43.442444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695639, -0.281947, -0.660752,
		-0.620626, 0.699098, 0.355084,
		0.361815, 0.657090, -0.661304,
		33.667576, 31.006193, 43.244053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811913, 30.947237, 43.505058>,  <33.414307, 30.546230, 43.706966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811913, 30.947237, 43.505058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089962, 30.943327, 43.217529>,  <33.256790, 30.940981, 43.045010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089962, 30.943327, 43.217529>,  <32.811913, 30.947237, 43.505058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089962, 30.943327, 43.217529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706740, -0.192360, -0.680821,
		-0.131617, 0.981276, -0.140624,
		0.695123, -0.009776, -0.718824,
		33.298500, 30.940393, 43.001881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353699, 31.213203, 43.003075>,  <32.811913, 30.947237, 43.505058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353699, 31.213203, 43.003075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672783, 31.108259, 42.785881>,  <32.864231, 31.045292, 42.655563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672783, 31.108259, 42.785881>,  <32.353699, 31.213203, 43.003075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672783, 31.108259, 42.785881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583674, -0.109508, -0.804570,
		0.151626, 0.958736, -0.240488,
		0.797706, -0.262360, -0.542985,
		32.912094, 31.029551, 42.622986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296612, 31.545830, 42.449924>,  <32.353699, 31.213203, 43.003075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296612, 31.545830, 42.449924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533115, 31.236839, 42.357235>,  <32.675018, 31.051445, 42.301620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533115, 31.236839, 42.357235>,  <32.296612, 31.545830, 42.449924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533115, 31.236839, 42.357235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519159, -0.144687, -0.842342,
		0.617163, 0.618340, -0.486585,
		0.591256, -0.772477, -0.231722,
		32.710491, 31.005096, 42.287720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735592, 31.658878, 41.749355>,  <32.296612, 31.545830, 42.449924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735592, 31.658878, 41.749355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674385, 31.270105, 41.820835>,  <32.637661, 31.036840, 41.863724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674385, 31.270105, 41.820835>,  <32.735592, 31.658878, 41.749355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674385, 31.270105, 41.820835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383230, -0.108315, -0.917280,
		0.910891, -0.208838, -0.355900,
		-0.153014, -0.971933, 0.178696,
		32.628479, 30.978525, 41.874443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756351, 31.366901, 41.060051>,  <32.735592, 31.658878, 41.749355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756351, 31.366901, 41.060051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642895, 31.054926, 41.283207>,  <32.574821, 30.867741, 41.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642895, 31.054926, 41.283207>,  <32.756351, 31.366901, 41.060051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642895, 31.054926, 41.283207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404946, -0.429943, -0.806949,
		0.869233, -0.454801, -0.193884,
		-0.283642, -0.779939, 0.557890,
		32.557800, 30.820944, 41.450573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063744, 30.830645, 40.776234>,  <32.756351, 31.366901, 41.060051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063744, 30.830645, 40.776234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723850, 30.713724, 40.951736>,  <32.519913, 30.643572, 41.057037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723850, 30.713724, 40.951736>,  <33.063744, 30.830645, 40.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723850, 30.713724, 40.951736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282020, -0.451122, -0.846731,
		0.445434, -0.843237, 0.300900,
		-0.849737, -0.292303, 0.438755,
		32.468929, 30.626034, 41.083363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695988, 31.272137, 40.465912>,  <33.063744, 30.830645, 40.776234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695988, 31.272137, 40.465912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870094, 31.322268, 40.109299>,  <33.974560, 31.352346, 39.895329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870094, 31.322268, 40.109299>,  <33.695988, 31.272137, 40.465912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870094, 31.322268, 40.109299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883251, 0.132365, 0.449829,
		0.174383, -0.983246, -0.053081,
		0.435267, 0.125327, -0.891536,
		34.000675, 31.359865, 39.841839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277225, 30.918947, 40.443264>,  <33.695988, 31.272137, 40.465912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277225, 30.918947, 40.443264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352539, 31.202438, 40.171307>,  <34.397728, 31.372534, 40.008133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352539, 31.202438, 40.171307>,  <34.277225, 30.918947, 40.443264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352539, 31.202438, 40.171307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887837, 0.173135, 0.426345,
		0.419877, -0.683906, -0.596638,
		0.188281, 0.708729, -0.679892,
		34.409023, 31.415056, 39.967339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037495, 30.799276, 40.252258>,  <34.277225, 30.918947, 40.443264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037495, 30.799276, 40.252258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945179, 31.177082, 40.158772>,  <34.889790, 31.403767, 40.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945179, 31.177082, 40.158772>,  <35.037495, 30.799276, 40.252258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945179, 31.177082, 40.158772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956557, 0.264223, 0.123227,
		0.178145, -0.195129, -0.964463,
		-0.230788, 0.944516, -0.233722,
		34.875942, 31.460438, 40.088654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599976, 31.047697, 39.908852>,  <35.037495, 30.799276, 40.252258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599976, 31.047697, 39.908852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437428, 31.396936, 40.016598>,  <35.339897, 31.606480, 40.081245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437428, 31.396936, 40.016598>,  <35.599976, 31.047697, 39.908852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437428, 31.396936, 40.016598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888572, 0.308955, 0.339097,
		0.212843, 0.377152, -0.901362,
		-0.406371, 0.873100, 0.269368,
		35.315517, 31.658867, 40.097408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089397, 31.691313, 39.654778>,  <35.599976, 31.047697, 39.908852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089397, 31.691313, 39.654778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833874, 31.843849, 39.922058>,  <35.680561, 31.935371, 40.082428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833874, 31.843849, 39.922058>,  <36.089397, 31.691313, 39.654778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833874, 31.843849, 39.922058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767467, 0.376805, 0.518664,
		-0.053995, 0.844154, -0.533374,
		-0.638810, 0.381342, 0.668206,
		35.642231, 31.958252, 40.122520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251122, 32.373848, 39.848057>,  <36.089397, 31.691313, 39.654778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251122, 32.373848, 39.848057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052498, 32.245750, 40.170765>,  <35.933323, 32.168892, 40.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.052498, 32.245750, 40.170765>,  <36.251122, 32.373848, 39.848057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052498, 32.245750, 40.170765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733937, 0.341327, 0.587224,
		-0.463425, 0.883708, 0.065548,
		-0.496562, -0.320243, 0.806766,
		35.903530, 32.149677, 40.412796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296303, 32.968613, 40.386940>,  <36.251122, 32.373848, 39.848057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296303, 32.968613, 40.386940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203739, 32.637024, 40.590611>,  <36.148201, 32.438072, 40.712814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203739, 32.637024, 40.590611>,  <36.296303, 32.968613, 40.386940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203739, 32.637024, 40.590611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692763, 0.227045, 0.684492,
		-0.683027, 0.511140, 0.521737,
		-0.231414, -0.828967, 0.509177,
		36.134315, 32.388332, 40.743362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391121, 33.151772, 41.031570>,  <36.296303, 32.968613, 40.386940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391121, 33.151772, 41.031570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374329, 32.754070, 41.070961>,  <36.364254, 32.515450, 41.094597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374329, 32.754070, 41.070961>,  <36.391121, 33.151772, 41.031570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374329, 32.754070, 41.070961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707542, 0.040004, 0.705538,
		-0.705423, 0.099296, 0.701797,
		-0.041982, -0.994253, 0.098476,
		36.361732, 32.455795, 41.100502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332863, 32.963219, 41.787598>,  <36.391121, 33.151772, 41.031570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332863, 32.963219, 41.787598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464821, 32.645664, 41.583279>,  <36.543995, 32.455132, 41.460686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464821, 32.645664, 41.583279>,  <36.332863, 32.963219, 41.787598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464821, 32.645664, 41.583279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668785, -0.185341, 0.719983,
		-0.666256, -0.579133, 0.469796,
		0.329893, -0.793885, -0.510800,
		36.563789, 32.407497, 41.430038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344879, 32.401627, 42.287792>,  <36.332863, 32.963219, 41.787598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344879, 32.401627, 42.287792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596924, 32.279686, 42.002125>,  <36.748150, 32.206524, 41.830727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596924, 32.279686, 42.002125>,  <36.344879, 32.401627, 42.287792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596924, 32.279686, 42.002125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648198, -0.299910, 0.699924,
		-0.427557, -0.903947, 0.008627,
		0.630107, -0.304849, -0.714165,
		36.785957, 32.188232, 41.787876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655853, 31.801920, 42.495968>,  <36.344879, 32.401627, 42.287792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655853, 31.801920, 42.495968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919281, 31.903734, 42.212704>,  <37.077339, 31.964823, 42.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919281, 31.903734, 42.212704>,  <36.655853, 31.801920, 42.495968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919281, 31.903734, 42.212704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751601, -0.176037, 0.635693,
		0.037144, -0.950906, -0.307243,
		0.658571, 0.254537, -0.708163,
		37.116852, 31.980095, 42.000256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181118, 31.262716, 42.452007>,  <36.655853, 31.801920, 42.495968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181118, 31.262716, 42.452007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346855, 31.596783, 42.307335>,  <37.446297, 31.797222, 42.220531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346855, 31.596783, 42.307335>,  <37.181118, 31.262716, 42.452007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346855, 31.596783, 42.307335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809030, -0.155958, 0.566698,
		0.416880, -0.527422, -0.740295,
		0.414344, 0.835166, -0.361685,
		37.471157, 31.847332, 42.198830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918125, 31.103813, 42.410114>,  <37.181118, 31.262716, 42.452007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918125, 31.103813, 42.410114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936886, 31.501270, 42.369186>,  <37.948143, 31.739744, 42.344631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936886, 31.501270, 42.369186>,  <37.918125, 31.103813, 42.410114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936886, 31.501270, 42.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522803, 0.062865, 0.850133,
		0.851162, -0.093367, -0.516532,
		0.046903, 0.993645, -0.102321,
		37.950958, 31.799364, 42.338490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646503, 31.309256, 42.491791>,  <37.918125, 31.103813, 42.410114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646503, 31.309256, 42.491791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471466, 31.665337, 42.542477>,  <38.366444, 31.878984, 42.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471466, 31.665337, 42.542477>,  <38.646503, 31.309256, 42.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471466, 31.665337, 42.542477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640836, 0.209908, 0.738422,
		0.630746, 0.404329, -0.662327,
		-0.437593, 0.890200, 0.126710,
		38.340187, 31.932396, 42.580490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172131, 31.688232, 42.631058>,  <38.646503, 31.309256, 42.491791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172131, 31.688232, 42.631058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860867, 31.860426, 42.813992>,  <38.674110, 31.963741, 42.923752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860867, 31.860426, 42.813992>,  <39.172131, 31.688232, 42.631058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860867, 31.860426, 42.813992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604765, 0.317060, 0.730569,
		0.169497, 0.845077, -0.507065,
		-0.778158, 0.430484, 0.457333,
		38.627419, 31.989571, 42.951191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404800, 32.318256, 42.804939>,  <39.172131, 31.688232, 42.631058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404800, 32.318256, 42.804939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089657, 32.273705, 43.047222>,  <38.900570, 32.246975, 43.192593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089657, 32.273705, 43.047222>,  <39.404800, 32.318256, 42.804939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089657, 32.273705, 43.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470160, 0.526475, 0.708360,
		-0.397787, 0.842863, -0.362419,
		-0.787855, -0.111381, 0.605705,
		38.853302, 32.240292, 43.228935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304317, 33.002377, 43.064236>,  <39.404800, 32.318256, 42.804939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304317, 33.002377, 43.064236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156731, 32.708447, 43.291882>,  <39.068180, 32.532089, 43.428471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156731, 32.708447, 43.291882>,  <39.304317, 33.002377, 43.064236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156731, 32.708447, 43.291882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497559, 0.361029, 0.788729,
		-0.785047, 0.574182, 0.232413,
		-0.368966, -0.734829, 0.569114,
		39.046040, 32.487999, 43.462616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327114, 33.393215, 43.626648>,  <39.304317, 33.002377, 43.064236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327114, 33.393215, 43.626648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255508, 33.026051, 43.768295>,  <39.212543, 32.805752, 43.853283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255508, 33.026051, 43.768295>,  <39.327114, 33.393215, 43.626648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255508, 33.026051, 43.768295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387762, 0.264971, 0.882854,
		-0.904209, 0.295358, 0.308496,
		-0.179016, -0.917908, 0.354117,
		39.201805, 32.750679, 43.874531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944618, 33.496975, 44.330856>,  <39.327114, 33.393215, 43.626648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944618, 33.496975, 44.330856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139683, 33.147793, 44.326012>,  <39.256721, 32.938286, 44.323105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139683, 33.147793, 44.326012>,  <38.944618, 33.496975, 44.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139683, 33.147793, 44.326012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370189, 0.194192, 0.908433,
		-0.790665, -0.447488, 0.417856,
		0.487657, -0.872952, -0.012114,
		39.285980, 32.885906, 44.322376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810085, 33.134880, 44.986717>,  <38.944618, 33.496975, 44.330856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810085, 33.134880, 44.986717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154861, 32.979866, 44.855953>,  <39.361729, 32.886856, 44.777496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154861, 32.979866, 44.855953>,  <38.810085, 33.134880, 44.986717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154861, 32.979866, 44.855953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421583, 0.189661, 0.886734,
		-0.281640, -0.902133, 0.326856,
		0.861944, -0.387537, -0.326908,
		39.413445, 32.863605, 44.757881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190781, 32.836819, 45.581230>,  <38.810085, 33.134880, 44.986717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190781, 32.836819, 45.581230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466805, 32.850716, 45.292065>,  <39.632420, 32.859055, 45.118565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466805, 32.850716, 45.292065>,  <39.190781, 32.836819, 45.581230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466805, 32.850716, 45.292065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692257, 0.259766, 0.673278,
		0.211181, -0.965047, 0.155203,
		0.690060, 0.034744, -0.722917,
		39.673824, 32.861141, 45.075188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686535, 32.475739, 45.781532>,  <39.190781, 32.836819, 45.581230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686535, 32.475739, 45.781532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870388, 32.706985, 45.511860>,  <39.980698, 32.845734, 45.350056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870388, 32.706985, 45.511860>,  <39.686535, 32.475739, 45.781532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870388, 32.706985, 45.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663214, 0.281444, 0.693496,
		0.590667, -0.765877, -0.254056,
		0.459630, 0.578119, -0.674180,
		40.008278, 32.880421, 45.309605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436050, 32.391876, 45.911285>,  <39.686535, 32.475739, 45.781532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436050, 32.391876, 45.911285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432182, 32.724178, 45.688660>,  <40.429859, 32.923557, 45.555084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432182, 32.724178, 45.688660>,  <40.436050, 32.391876, 45.911285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432182, 32.724178, 45.688660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583423, 0.456719, 0.671584,
		0.812111, -0.318214, -0.489097,
		-0.009672, 0.830751, -0.556560,
		40.429279, 32.973404, 45.521690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072918, 32.598900, 45.893143>,  <40.436050, 32.391876, 45.911285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072918, 32.598900, 45.893143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900021, 32.939686, 45.774948>,  <40.796280, 33.144157, 45.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900021, 32.939686, 45.774948>,  <41.072918, 32.598900, 45.893143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900021, 32.939686, 45.774948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515588, 0.502331, 0.694141,
		0.739818, 0.147691, -0.656396,
		-0.432247, 0.851969, -0.295486,
		40.770348, 33.195278, 45.686302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567345, 33.124950, 45.655056>,  <41.072918, 32.598900, 45.893143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567345, 33.124950, 45.655056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245148, 33.323956, 45.783848>,  <41.051830, 33.443359, 45.861122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245148, 33.323956, 45.783848>,  <41.567345, 33.124950, 45.655056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245148, 33.323956, 45.783848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585837, 0.586581, 0.559212,
		0.089346, 0.639067, -0.763944,
		-0.805489, 0.497510, 0.321980,
		41.003502, 33.473209, 45.880444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744812, 33.868057, 45.642639>,  <41.567345, 33.124950, 45.655056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744812, 33.868057, 45.642639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417034, 33.841564, 45.870365>,  <41.220367, 33.825668, 46.007000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417034, 33.841564, 45.870365>,  <41.744812, 33.868057, 45.642639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417034, 33.841564, 45.870365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353065, 0.724130, 0.592437,
		-0.451497, 0.686476, -0.570001,
		-0.819448, -0.066236, 0.569313,
		41.171200, 33.821693, 46.041161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311584, 34.575809, 45.670605>,  <41.744812, 33.868057, 45.642639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311584, 34.575809, 45.670605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214798, 34.372704, 46.001331>,  <41.156727, 34.250839, 46.199768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214798, 34.372704, 46.001331>,  <41.311584, 34.575809, 45.670605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214798, 34.372704, 46.001331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282526, 0.778348, 0.560673,
		-0.928242, 0.369261, -0.044877,
		-0.241964, -0.507761, 0.826820,
		41.142208, 34.220375, 46.249378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864090, 35.042465, 46.070927>,  <41.311584, 34.575809, 45.670605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864090, 35.042465, 46.070927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002048, 34.772415, 46.331772>,  <41.084824, 34.610386, 46.488277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002048, 34.772415, 46.331772>,  <40.864090, 35.042465, 46.070927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002048, 34.772415, 46.331772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250957, 0.735775, 0.629012,
		-0.904471, -0.053292, 0.423194,
		0.344896, -0.675126, 0.652113,
		41.105518, 34.569878, 46.527405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493523, 35.104267, 46.697536>,  <40.864090, 35.042465, 46.070927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493523, 35.104267, 46.697536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830349, 34.918163, 46.806686>,  <41.032444, 34.806499, 46.872177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830349, 34.918163, 46.806686>,  <40.493523, 35.104267, 46.697536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830349, 34.918163, 46.806686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169275, 0.708301, 0.685314,
		-0.512129, -0.530886, 0.675192,
		0.842063, -0.465263, 0.272876,
		41.082970, 34.778584, 46.888550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501171, 35.066570, 47.500465>,  <40.493523, 35.104267, 46.697536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501171, 35.066570, 47.500465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881611, 34.973198, 47.419559>,  <41.109875, 34.917175, 47.371014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881611, 34.973198, 47.419559>,  <40.501171, 35.066570, 47.500465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881611, 34.973198, 47.419559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307550, 0.655169, 0.690048,
		-0.028559, -0.718515, 0.694925,
		0.951103, -0.233431, -0.202268,
		41.166943, 34.903168, 47.358879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946819, 34.969120, 48.163021>,  <40.501171, 35.066570, 47.500465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946819, 34.969120, 48.163021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204807, 35.060352, 47.871269>,  <41.359600, 35.115093, 47.696220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204807, 35.060352, 47.871269>,  <40.946819, 34.969120, 48.163021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204807, 35.060352, 47.871269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434974, 0.675171, 0.595770,
		0.628335, -0.701516, 0.336261,
		0.644975, 0.228078, -0.729375,
		41.398300, 35.128777, 47.652458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553291, 35.013714, 48.420631>,  <40.946819, 34.969120, 48.163021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553291, 35.013714, 48.420631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676765, 35.208336, 48.093712>,  <41.750851, 35.325108, 47.897560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676765, 35.208336, 48.093712>,  <41.553291, 35.013714, 48.420631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676765, 35.208336, 48.093712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341083, 0.745492, 0.572629,
		0.887905, -0.455529, 0.064167,
		0.308685, 0.486554, -0.817299,
		41.769371, 35.354301, 47.848522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303902, 35.228695, 48.541035>,  <41.553291, 35.013714, 48.420631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303902, 35.228695, 48.541035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144039, 35.475277, 48.269665>,  <42.048122, 35.623226, 48.106842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144039, 35.475277, 48.269665>,  <42.303902, 35.228695, 48.541035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144039, 35.475277, 48.269665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371630, 0.785511, 0.494837,
		0.837954, -0.054359, -0.543027,
		-0.399654, 0.616456, -0.678424,
		42.024143, 35.660213, 48.066139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819271, 35.712193, 48.302204>,  <42.303902, 35.228695, 48.541035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819271, 35.712193, 48.302204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457340, 35.869591, 48.237160>,  <42.240181, 35.964031, 48.198132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457340, 35.869591, 48.237160>,  <42.819271, 35.712193, 48.302204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457340, 35.869591, 48.237160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257827, 0.810321, 0.526218,
		0.338832, 0.434213, -0.834657,
		-0.904831, 0.393496, -0.162611,
		42.185890, 35.987640, 48.188377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017731, 36.402355, 48.425404>,  <42.819271, 35.712193, 48.302204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017731, 36.402355, 48.425404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618881, 36.429794, 48.412544>,  <42.379570, 36.446259, 48.404831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618881, 36.429794, 48.412544>,  <43.017731, 36.402355, 48.425404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618881, 36.429794, 48.412544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021521, 0.663327, 0.748020,
		0.072639, 0.745178, -0.662897,
		-0.997126, 0.068602, -0.032147,
		42.319744, 36.450375, 48.402901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963047, 37.081852, 48.651188>,  <43.017731, 36.402355, 48.425404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963047, 37.081852, 48.651188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581192, 36.963039, 48.659523>,  <42.352077, 36.891750, 48.664524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581192, 36.963039, 48.659523>,  <42.963047, 37.081852, 48.651188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581192, 36.963039, 48.659523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198667, 0.687509, 0.698472,
		-0.221799, 0.662648, -0.715334,
		-0.954639, -0.297034, 0.020843,
		42.294800, 36.873928, 48.665775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519672, 37.530815, 48.313133>,  <42.963047, 37.081852, 48.651188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519672, 37.530815, 48.313133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327728, 37.331375, 48.601891>,  <42.212563, 37.211712, 48.775146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327728, 37.331375, 48.601891>,  <42.519672, 37.530815, 48.313133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327728, 37.331375, 48.601891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030937, 0.831923, 0.554028,
		-0.876799, 0.243523, -0.414633,
		-0.479861, -0.498598, 0.721895,
		42.183769, 37.181797, 48.818459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102932, 38.072765, 48.588043>,  <42.519672, 37.530815, 48.313133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102932, 38.072765, 48.588043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032665, 37.783894, 48.855656>,  <41.990505, 37.610573, 49.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032665, 37.783894, 48.855656>,  <42.102932, 38.072765, 48.588043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032665, 37.783894, 48.855656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134663, 0.690840, 0.710357,
		-0.975197, 0.034690, -0.218605,
		-0.175664, -0.722175, 0.669033,
		41.979965, 37.567242, 49.056366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355865, 38.700062, 48.775944>,  <42.102932, 38.072765, 48.588043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355865, 38.700062, 48.775944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324940, 39.085903, 48.675098>,  <42.306385, 39.317410, 48.614594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324940, 39.085903, 48.675098>,  <42.355865, 38.700062, 48.775944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324940, 39.085903, 48.675098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216394, -0.263076, -0.940194,
		-0.973240, -0.018139, 0.229075,
		-0.077319, 0.964605, -0.252111,
		42.301743, 39.375286, 48.599464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690212, 38.806721, 48.384987>,  <42.355865, 38.700062, 48.775944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690212, 38.806721, 48.384987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949421, 39.092308, 48.278915>,  <42.104946, 39.263660, 48.215271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949421, 39.092308, 48.278915>,  <41.690212, 38.806721, 48.384987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949421, 39.092308, 48.278915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171630, -0.202333, -0.964160,
		-0.742033, 0.670309, -0.008578,
		0.648020, 0.713966, -0.265183,
		42.143826, 39.306499, 48.199360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340107, 39.242077, 47.804340>,  <41.690212, 38.806721, 48.384987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340107, 39.242077, 47.804340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735817, 39.285290, 47.765026>,  <41.973244, 39.311218, 47.741436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735817, 39.285290, 47.765026>,  <41.340107, 39.242077, 47.804340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735817, 39.285290, 47.765026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087166, -0.103257, -0.990828,
		-0.117193, 0.988770, -0.092732,
		0.989276, 0.108035, -0.098288,
		42.032600, 39.317699, 47.735538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392048, 39.318474, 47.070705>,  <41.340107, 39.242077, 47.804340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392048, 39.318474, 47.070705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770916, 39.267460, 47.188416>,  <41.998238, 39.236851, 47.259041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770916, 39.267460, 47.188416>,  <41.392048, 39.318474, 47.070705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770916, 39.267460, 47.188416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237271, -0.338721, -0.910478,
		0.215797, 0.932203, -0.290566,
		0.947172, -0.127535, 0.294280,
		42.055069, 39.229198, 47.276699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844879, 39.694580, 46.629269>,  <41.392048, 39.318474, 47.070705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844879, 39.694580, 46.629269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053261, 39.389347, 46.782276>,  <42.178288, 39.206207, 46.874081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053261, 39.389347, 46.782276>,  <41.844879, 39.694580, 46.629269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053261, 39.389347, 46.782276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186959, -0.335248, -0.923393,
		0.832860, 0.552559, -0.031984,
		0.520952, -0.763078, 0.382520,
		42.209545, 39.160423, 46.897034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539341, 39.640461, 46.295509>,  <41.844879, 39.694580, 46.629269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539341, 39.640461, 46.295509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423340, 39.290962, 46.451694>,  <42.353741, 39.081261, 46.545406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423340, 39.290962, 46.451694>,  <42.539341, 39.640461, 46.295509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423340, 39.290962, 46.451694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048270, -0.420832, -0.905854,
		0.955809, -0.243849, 0.164217,
		-0.289999, -0.873750, 0.390464,
		42.336342, 39.028839, 46.568832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010353, 39.085381, 46.022694>,  <42.539341, 39.640461, 46.295509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010353, 39.085381, 46.022694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719288, 38.875874, 46.199856>,  <42.544647, 38.750168, 46.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.719288, 38.875874, 46.199856>,  <43.010353, 39.085381, 46.022694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719288, 38.875874, 46.199856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124724, -0.533905, -0.836295,
		0.674497, -0.663785, 0.323178,
		-0.727666, -0.523770, 0.442907,
		42.500988, 38.718742, 46.332729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144211, 38.440704, 45.840458>,  <43.010353, 39.085381, 46.022694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144211, 38.440704, 45.840458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760269, 38.427494, 45.951881>,  <42.529903, 38.419567, 46.018738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760269, 38.427494, 45.951881>,  <43.144211, 38.440704, 45.840458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760269, 38.427494, 45.951881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189915, -0.654332, -0.731971,
		0.206444, -0.755486, 0.621789,
		-0.959851, -0.033024, 0.278561,
		42.472313, 38.417587, 46.035450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913021, 37.675461, 45.750408>,  <43.144211, 38.440704, 45.840458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913021, 37.675461, 45.750408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572296, 37.880337, 45.794376>,  <42.367863, 38.003262, 45.820759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572296, 37.880337, 45.794376>,  <42.913021, 37.675461, 45.750408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572296, 37.880337, 45.794376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477424, -0.672668, -0.565317,
		-0.215608, -0.534022, 0.817517,
		-0.851809, 0.512189, 0.109923,
		42.316753, 38.033993, 45.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460365, 37.124043, 45.959114>,  <42.913021, 37.675461, 45.750408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460365, 37.124043, 45.959114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250175, 37.427486, 45.805031>,  <42.124062, 37.609554, 45.712582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250175, 37.427486, 45.805031>,  <42.460365, 37.124043, 45.959114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250175, 37.427486, 45.805031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445144, -0.630982, -0.635381,
		-0.725067, -0.162403, 0.669256,
		-0.525476, 0.758608, -0.385211,
		42.092533, 37.655067, 45.689468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732655, 36.895031, 45.772144>,  <42.460365, 37.124043, 45.959114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732655, 36.895031, 45.772144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 37.213711, 45.540176>,  <41.841576, 37.404919, 45.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 37.213711, 45.540176>,  <41.732655, 36.895031, 45.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800732, 37.213711, 45.540176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542529, -0.415524, -0.730070,
		-0.822617, 0.438871, 0.361515,
		0.170189, 0.796700, -0.579918,
		41.851788, 37.452721, 45.366199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114647, 37.187000, 45.546185>,  <41.732655, 36.895031, 45.772144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114647, 37.187000, 45.546185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402454, 37.275433, 45.282845>,  <41.575138, 37.328491, 45.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402454, 37.275433, 45.282845>,  <41.114647, 37.187000, 45.546185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402454, 37.275433, 45.282845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506035, -0.482345, -0.715032,
		-0.475631, 0.847624, -0.235180,
		0.719516, 0.221082, -0.658346,
		41.618309, 37.341759, 45.085342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784843, 37.449707, 44.957291>,  <41.114647, 37.187000, 45.546185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784843, 37.449707, 44.957291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128620, 37.276276, 44.848942>,  <41.334885, 37.172218, 44.783932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128620, 37.276276, 44.848942>,  <40.784843, 37.449707, 44.957291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128620, 37.276276, 44.848942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471234, -0.466395, -0.748608,
		0.198243, 0.771031, -0.605154,
		0.859441, -0.433576, -0.270876,
		41.386452, 37.146202, 44.767677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854469, 37.598816, 44.221970>,  <40.784843, 37.449707, 44.957291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854469, 37.598816, 44.221970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070591, 37.272507, 44.304520>,  <41.200264, 37.076721, 44.354050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070591, 37.272507, 44.304520>,  <40.854469, 37.598816, 44.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070591, 37.272507, 44.304520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359077, -0.445327, -0.820212,
		0.761011, 0.369055, -0.533535,
		0.540301, -0.815771, 0.206380,
		41.232681, 37.027775, 44.366432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053989, 37.329628, 43.582039>,  <40.854469, 37.598816, 44.221970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053989, 37.329628, 43.582039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076878, 37.009407, 43.820648>,  <41.090611, 36.817272, 43.963814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076878, 37.009407, 43.820648>,  <41.053989, 37.329628, 43.582039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076878, 37.009407, 43.820648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316741, -0.581189, -0.749596,
		0.946785, -0.146052, -0.286823,
		0.057218, -0.800555, 0.596522,
		41.094044, 36.769241, 43.999603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354687, 36.833641, 43.112625>,  <41.053989, 37.329628, 43.582039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354687, 36.833641, 43.112625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172829, 36.652954, 43.419674>,  <41.063713, 36.544540, 43.603905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172829, 36.652954, 43.419674>,  <41.354687, 36.833641, 43.112625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172829, 36.652954, 43.419674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434673, -0.639716, -0.633895,
		0.777406, -0.621861, 0.094490,
		-0.454641, -0.451722, 0.767626,
		41.036438, 36.517437, 43.649963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395195, 36.151024, 42.884064>,  <41.354687, 36.833641, 43.112625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395195, 36.151024, 42.884064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144211, 36.133125, 43.195007>,  <40.993622, 36.122387, 43.381573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.144211, 36.133125, 43.195007>,  <41.395195, 36.151024, 42.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144211, 36.133125, 43.195007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488623, -0.754682, -0.437838,
		0.606251, -0.654563, 0.451671,
		-0.627461, -0.044742, 0.777362,
		40.955971, 36.119701, 43.428215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334667, 35.443623, 43.150108>,  <41.395195, 36.151024, 42.884064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334667, 35.443623, 43.150108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989948, 35.627522, 43.235847>,  <40.783119, 35.737862, 43.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989948, 35.627522, 43.235847>,  <41.334667, 35.443623, 43.150108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989948, 35.627522, 43.235847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501263, -0.707082, -0.498768,
		-0.077745, -0.537280, 0.839813,
		-0.861795, 0.459744, 0.214346,
		40.731411, 35.765446, 43.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857708, 34.960918, 43.343529>,  <41.334667, 35.443623, 43.150108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857708, 34.960918, 43.343529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610413, 35.260536, 43.248280>,  <40.462036, 35.440308, 43.191132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610413, 35.260536, 43.248280>,  <40.857708, 34.960918, 43.343529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610413, 35.260536, 43.248280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601691, -0.645963, -0.469787,
		-0.505711, -0.147168, 0.850058,
		-0.618243, 0.749048, -0.238121,
		40.424938, 35.485252, 43.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215157, 34.707981, 43.608242>,  <40.857708, 34.960918, 43.343529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215157, 34.707981, 43.608242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146065, 35.010773, 43.356167>,  <40.104610, 35.192448, 43.204922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146065, 35.010773, 43.356167>,  <40.215157, 34.707981, 43.608242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146065, 35.010773, 43.356167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642074, -0.571719, -0.510763,
		-0.746932, 0.316407, 0.584790,
		-0.172727, 0.756984, -0.630192,
		40.094246, 35.237869, 43.167110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481926, 34.866642, 43.593781>,  <40.215157, 34.707981, 43.608242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481926, 34.866642, 43.593781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608082, 34.999271, 43.238121>,  <39.683777, 35.078850, 43.024727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608082, 34.999271, 43.238121>,  <39.481926, 34.866642, 43.593781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608082, 34.999271, 43.238121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731239, -0.512269, -0.450411,
		-0.604827, 0.792238, 0.080891,
		0.315394, 0.331572, -0.889150,
		39.702702, 35.098743, 42.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878979, 34.663322, 43.123089>,  <39.481926, 34.866642, 43.593781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878979, 34.663322, 43.123089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153046, 34.781509, 42.856785>,  <39.317486, 34.852421, 42.697002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153046, 34.781509, 42.856785>,  <38.878979, 34.663322, 43.123089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153046, 34.781509, 42.856785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485164, -0.496622, -0.719710,
		-0.543287, 0.816127, -0.196917,
		0.685168, 0.295472, -0.665764,
		39.358597, 34.870152, 42.657055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531837, 35.137867, 42.573975>,  <38.878979, 34.663322, 43.123089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531837, 35.137867, 42.573975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853352, 34.933800, 42.451557>,  <39.046261, 34.811359, 42.378109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853352, 34.933800, 42.451557>,  <38.531837, 35.137867, 42.573975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853352, 34.933800, 42.451557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558370, -0.469389, -0.684030,
		0.205320, 0.720695, -0.662150,
		0.803783, -0.510170, -0.306039,
		39.094486, 34.780750, 42.359745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564873, 35.395538, 41.773735>,  <38.531837, 35.137867, 42.573975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564873, 35.395538, 41.773735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781372, 35.062065, 41.817585>,  <38.911274, 34.861980, 41.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781372, 35.062065, 41.817585>,  <38.564873, 35.395538, 41.773735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781372, 35.062065, 41.817585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357979, -0.346429, -0.867086,
		0.760853, 0.430068, -0.485947,
		0.541252, -0.833684, 0.109626,
		38.943748, 34.811958, 41.850471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857658, 35.234203, 41.197525>,  <38.564873, 35.395538, 41.773735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857658, 35.234203, 41.197525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874310, 34.870415, 41.362995>,  <38.884300, 34.652142, 41.462276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874310, 34.870415, 41.362995>,  <38.857658, 35.234203, 41.197525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874310, 34.870415, 41.362995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114547, -0.415650, -0.902283,
		0.992545, -0.009828, -0.121479,
		0.041625, -0.909472, 0.413677,
		38.886799, 34.597572, 41.487099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289452, 34.828945, 40.806679>,  <38.857658, 35.234203, 41.197525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289452, 34.828945, 40.806679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097393, 34.527630, 40.986465>,  <38.982159, 34.346840, 41.094337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097393, 34.527630, 40.986465>,  <39.289452, 34.828945, 40.806679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097393, 34.527630, 40.986465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126657, -0.447488, -0.885275,
		0.867995, -0.481992, 0.119452,
		-0.480149, -0.753285, 0.449465,
		38.953350, 34.301643, 41.121304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657421, 34.295147, 40.635895>,  <39.289452, 34.828945, 40.806679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657421, 34.295147, 40.635895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305450, 34.147980, 40.756138>,  <39.094269, 34.059677, 40.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305450, 34.147980, 40.756138>,  <39.657421, 34.295147, 40.635895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305450, 34.147980, 40.756138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044993, -0.565335, -0.823633,
		0.472976, -0.738261, 0.480899,
		-0.879926, -0.367922, 0.300606,
		39.041473, 34.037601, 40.846321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678833, 33.502602, 40.586861>,  <39.657421, 34.295147, 40.635895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678833, 33.502602, 40.586861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285233, 33.573429, 40.594810>,  <39.049072, 33.615925, 40.599579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285233, 33.573429, 40.594810>,  <39.678833, 33.502602, 40.586861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285233, 33.573429, 40.594810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106995, -0.497998, -0.860552,
		-0.142481, -0.848908, 0.508974,
		-0.983997, 0.177070, 0.019874,
		38.990032, 33.626549, 40.600773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415901, 32.966328, 40.322487>,  <39.678833, 33.502602, 40.586861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415901, 32.966328, 40.322487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110741, 33.223179, 40.292416>,  <38.927643, 33.377289, 40.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110741, 33.223179, 40.292416>,  <39.415901, 32.966328, 40.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110741, 33.223179, 40.292416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119333, -0.254142, -0.959777,
		-0.635402, -0.723248, 0.270513,
		-0.762905, 0.642125, -0.075175,
		38.881870, 33.415817, 40.269863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753593, 32.598259, 40.070354>,  <39.415901, 32.966328, 40.322487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753593, 32.598259, 40.070354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734993, 32.986614, 39.976360>,  <38.723831, 33.219627, 39.919964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734993, 32.986614, 39.976360>,  <38.753593, 32.598259, 40.070354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734993, 32.986614, 39.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133668, -0.239175, -0.961732,
		-0.989934, -0.013314, 0.140899,
		-0.046504, 0.970885, -0.234988,
		38.721043, 33.277882, 39.905865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496819, 32.548248, 39.434200>,  <38.753593, 32.598259, 40.070354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496819, 32.548248, 39.434200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597965, 32.934929, 39.449928>,  <38.658653, 33.166939, 39.459366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597965, 32.934929, 39.449928>,  <38.496819, 32.548248, 39.434200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597965, 32.934929, 39.449928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000789, 0.040850, -0.999165,
		-0.967500, 0.252628, 0.011093,
		0.252870, 0.966701, 0.039323,
		38.673824, 33.224937, 39.461727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986073, 32.866447, 39.080162>,  <38.496819, 32.548248, 39.434200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986073, 32.866447, 39.080162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307652, 33.104328, 39.080311>,  <38.500599, 33.247055, 39.080399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307652, 33.104328, 39.080311>,  <37.986073, 32.866447, 39.080162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307652, 33.104328, 39.080311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042277, 0.057774, -0.997434,
		-0.593198, 0.801867, 0.071589,
		0.803946, 0.594703, 0.000371,
		38.548836, 33.282738, 39.080421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771347, 33.374294, 38.477795>,  <37.986073, 32.866447, 39.080162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771347, 33.374294, 38.477795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168774, 33.397163, 38.516888>,  <38.407230, 33.410885, 38.540344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168774, 33.397163, 38.516888>,  <37.771347, 33.374294, 38.477795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168774, 33.397163, 38.516888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099254, -0.024420, -0.994763,
		-0.054484, 0.998066, -0.029938,
		0.993569, 0.057170, 0.097731,
		38.466843, 33.414314, 38.546207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027279, 33.929749, 38.082890>,  <37.771347, 33.374294, 38.477795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027279, 33.929749, 38.082890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352600, 33.697510, 38.098057>,  <38.547794, 33.558167, 38.107159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352600, 33.697510, 38.098057>,  <38.027279, 33.929749, 38.082890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352600, 33.697510, 38.098057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067070, 0.028815, -0.997332,
		0.577960, 0.813678, 0.062376,
		0.813305, -0.580601, 0.037919,
		38.596592, 33.523331, 38.109432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441116, 34.167122, 37.575874>,  <38.027279, 33.929749, 38.082890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441116, 34.167122, 37.575874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616158, 33.814613, 37.647282>,  <38.721180, 33.603107, 37.690125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616158, 33.814613, 37.647282>,  <38.441116, 34.167122, 37.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616158, 33.814613, 37.647282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196975, -0.099762, -0.975320,
		0.877330, 0.461963, 0.129932,
		0.437599, -0.881271, 0.178519,
		38.747437, 33.550232, 37.700836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064003, 34.203785, 37.330097>,  <38.441116, 34.167122, 37.575874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064003, 34.203785, 37.330097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013557, 33.808258, 37.361950>,  <38.983292, 33.570942, 37.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013557, 33.808258, 37.361950>,  <39.064003, 34.203785, 37.330097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013557, 33.808258, 37.361950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374171, -0.121755, -0.919332,
		0.918745, -0.086142, 0.385341,
		-0.126110, -0.988815, 0.079630,
		38.975723, 33.511612, 37.385838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695866, 33.925537, 37.146362>,  <39.064003, 34.203785, 37.330097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695866, 33.925537, 37.146362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427837, 33.634281, 37.088661>,  <39.267021, 33.459526, 37.054039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427837, 33.634281, 37.088661>,  <39.695866, 33.925537, 37.146362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427837, 33.634281, 37.088661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365285, -0.154286, -0.918021,
		0.646194, -0.667836, 0.369362,
		-0.670075, -0.728142, -0.144251,
		39.226814, 33.415840, 37.045387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983059, 33.483521, 36.783493>,  <39.695866, 33.925537, 37.146362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983059, 33.483521, 36.783493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613850, 33.358963, 36.693104>,  <39.392323, 33.284229, 36.638870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613850, 33.358963, 36.693104>,  <39.983059, 33.483521, 36.783493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613850, 33.358963, 36.693104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308552, -0.248247, -0.918242,
		0.229837, -0.917283, 0.325218,
		-0.923022, -0.311393, -0.225973,
		39.336945, 33.265545, 36.625313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058182, 32.857868, 36.443066>,  <39.983059, 33.483521, 36.783493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058182, 32.857868, 36.443066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676750, 32.940563, 36.355469>,  <39.447891, 32.990181, 36.302910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676750, 32.940563, 36.355469>,  <40.058182, 32.857868, 36.443066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676750, 32.940563, 36.355469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208522, -0.071424, -0.975406,
		-0.217292, -0.975786, 0.025000,
		-0.953574, 0.206735, -0.218993,
		39.390678, 33.002583, 36.289772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834724, 32.289356, 35.936131>,  <40.058182, 32.857868, 36.443066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834724, 32.289356, 35.936131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578030, 32.593166, 35.893616>,  <39.424015, 32.775452, 35.868107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578030, 32.593166, 35.893616>,  <39.834724, 32.289356, 35.936131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578030, 32.593166, 35.893616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162810, -0.000511, -0.986657,
		-0.749448, -0.650474, -0.123331,
		-0.641732, 0.759528, -0.106287,
		39.385509, 32.821026, 35.861729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233158, 32.174931, 35.388309>,  <39.834724, 32.289356, 35.936131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233158, 32.174931, 35.388309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313835, 32.563778, 35.436153>,  <39.362240, 32.797085, 35.464859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313835, 32.563778, 35.436153>,  <39.233158, 32.174931, 35.388309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313835, 32.563778, 35.436153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208062, 0.076811, -0.975095,
		-0.957094, 0.221557, -0.186769,
		0.201693, 0.972117, 0.119613,
		39.374344, 32.855412, 35.472038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760807, 32.619053, 34.906357>,  <39.233158, 32.174931, 35.388309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760807, 32.619053, 34.906357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147133, 32.678219, 34.991516>,  <39.378929, 32.713718, 35.042614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147133, 32.678219, 34.991516>,  <38.760807, 32.619053, 34.906357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147133, 32.678219, 34.991516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205451, 0.064124, -0.976564,
		-0.158099, 0.986919, 0.031543,
		0.965813, 0.147913, 0.212902,
		39.436878, 32.722591, 35.055386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043770, 33.267624, 34.606083>,  <38.760807, 32.619053, 34.906357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043770, 33.267624, 34.606083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359444, 33.022182, 34.616528>,  <39.548847, 32.874916, 34.622795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359444, 33.022182, 34.616528>,  <39.043770, 33.267624, 34.606083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359444, 33.022182, 34.616528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134115, 0.130690, -0.982310,
		0.599338, 0.778722, 0.185432,
		0.789181, -0.613605, 0.026111,
		39.596199, 32.838100, 34.624359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829243, 33.365170, 34.405720>,  <39.043770, 33.267624, 34.606083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829243, 33.365170, 34.405720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687824, 33.004044, 34.307800>,  <39.602974, 32.787369, 34.249050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687824, 33.004044, 34.307800>,  <39.829243, 33.365170, 34.405720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687824, 33.004044, 34.307800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085732, 0.291872, -0.952607,
		0.931481, -0.315800, -0.180590,
		-0.353543, -0.902818, -0.244799,
		39.581760, 32.733196, 34.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234627, 32.909561, 33.861019>,  <39.829243, 33.365170, 34.405720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234627, 32.909561, 33.861019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838024, 32.868702, 33.828835>,  <39.600063, 32.844185, 33.809525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838024, 32.868702, 33.828835>,  <40.234627, 32.909561, 33.861019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838024, 32.868702, 33.828835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025524, 0.453871, -0.890702,
		0.127505, -0.885193, -0.447410,
		-0.991509, -0.102149, -0.080465,
		39.540573, 32.838058, 33.804695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919491, 33.213001, 33.920605>,  <40.234627, 32.909561, 33.861019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919491, 33.213001, 33.920605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205872, 33.207439, 33.641399>,  <41.377701, 33.204102, 33.473877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205872, 33.207439, 33.641399>,  <40.919491, 33.213001, 33.920605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205872, 33.207439, 33.641399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573973, 0.580911, 0.577146,
		0.397456, -0.813848, 0.423886,
		0.715950, -0.013909, -0.698013,
		41.420658, 33.203266, 33.431995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506413, 32.800957, 34.152306>,  <40.919491, 33.213001, 33.920605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506413, 32.800957, 34.152306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605099, 33.101799, 33.907860>,  <41.664310, 33.282303, 33.761192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605099, 33.101799, 33.907860>,  <41.506413, 32.800957, 34.152306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605099, 33.101799, 33.907860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448325, 0.470489, 0.760029,
		0.859147, -0.461494, -0.221110,
		0.246719, 0.752106, -0.611118,
		41.679115, 33.327431, 33.724525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094536, 32.973515, 34.584621>,  <41.506413, 32.800957, 34.152306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094536, 32.973515, 34.584621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356152, 33.160458, 34.346691>,  <42.513119, 33.272621, 34.203934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356152, 33.160458, 34.346691>,  <42.094536, 32.973515, 34.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356152, 33.160458, 34.346691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031989, 0.802707, 0.595514,
		0.755784, -0.370462, 0.539952,
		0.654039, 0.467353, -0.594823,
		42.552361, 33.300663, 34.168243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677025, 33.138702, 35.035168>,  <42.094536, 32.973515, 34.584621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677025, 33.138702, 35.035168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722805, 33.389153, 34.726658>,  <42.750275, 33.539421, 34.541550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722805, 33.389153, 34.726658>,  <42.677025, 33.138702, 35.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722805, 33.389153, 34.726658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225339, 0.739782, 0.633992,
		0.967534, -0.246360, -0.056422,
		0.114451, 0.626123, -0.771279,
		42.757141, 33.576988, 34.495274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199924, 33.608028, 35.220188>,  <42.677025, 33.138702, 35.035168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199924, 33.608028, 35.220188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995148, 33.794876, 34.931824>,  <42.872280, 33.906986, 34.758804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995148, 33.794876, 34.931824>,  <43.199924, 33.608028, 35.220188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995148, 33.794876, 34.931824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112857, 0.795378, 0.595514,
		0.851572, 0.386230, -0.354472,
		-0.511945, 0.467119, -0.720911,
		42.841564, 33.935013, 34.715549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392059, 34.252872, 35.348953>,  <43.199924, 33.608028, 35.220188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392059, 34.252872, 35.348953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065273, 34.290260, 35.121330>,  <42.869202, 34.312695, 34.984756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.065273, 34.290260, 35.121330>,  <43.392059, 34.252872, 35.348953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065273, 34.290260, 35.121330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179516, 0.896529, 0.404981,
		0.548036, 0.433011, -0.715653,
		-0.816964, 0.093473, -0.569062,
		42.820183, 34.318302, 34.950611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436359, 34.929081, 35.150158>,  <43.392059, 34.252872, 35.348953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436359, 34.929081, 35.150158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059017, 34.816254, 35.080276>,  <42.832611, 34.748558, 35.038349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059017, 34.816254, 35.080276>,  <43.436359, 34.929081, 35.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059017, 34.816254, 35.080276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330376, 0.847110, 0.416240,
		0.030586, 0.450380, -0.892313,
		-0.943354, -0.282067, -0.174705,
		42.776012, 34.731632, 35.027866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066532, 35.455711, 34.706005>,  <43.436359, 34.929081, 35.150158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066532, 35.455711, 34.706005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746994, 35.269726, 34.858665>,  <42.555271, 35.158134, 34.950260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746994, 35.269726, 34.858665>,  <43.066532, 35.455711, 34.706005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746994, 35.269726, 34.858665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470599, 0.878249, 0.084944,
		-0.374677, -0.111745, -0.920397,
		-0.798845, -0.464965, 0.381646,
		42.507339, 35.130238, 34.973160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473202, 35.764889, 34.421234>,  <43.066532, 35.455711, 34.706005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473202, 35.764889, 34.421234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338383, 35.605709, 34.762535>,  <42.257492, 35.510201, 34.967316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338383, 35.605709, 34.762535>,  <42.473202, 35.764889, 34.421234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338383, 35.605709, 34.762535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467063, 0.857571, 0.215464,
		-0.817464, -0.325898, -0.474913,
		-0.337052, -0.397949, 0.853248,
		42.237267, 35.486324, 35.018509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835564, 35.974545, 34.487343>,  <42.473202, 35.764889, 34.421234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835564, 35.974545, 34.487343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924759, 35.868370, 34.862537>,  <41.978275, 35.804665, 35.087654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924759, 35.868370, 34.862537>,  <41.835564, 35.974545, 34.487343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924759, 35.868370, 34.862537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318891, 0.889411, 0.327502,
		-0.921188, -0.372144, 0.113679,
		0.222985, -0.265439, 0.937987,
		41.991653, 35.788738, 35.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264927, 35.992558, 34.798183>,  <41.835564, 35.974545, 34.487343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264927, 35.992558, 34.798183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522457, 36.010841, 35.103706>,  <41.676975, 36.021812, 35.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522457, 36.010841, 35.103706>,  <41.264927, 35.992558, 34.798183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522457, 36.010841, 35.103706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511119, 0.768541, 0.384841,
		-0.569428, -0.638166, 0.518166,
		0.643824, 0.045705, 0.763807,
		41.715603, 36.024551, 35.332848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901390, 36.134464, 35.366230>,  <41.264927, 35.992558, 34.798183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901390, 36.134464, 35.366230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256393, 36.217525, 35.530769>,  <41.469395, 36.267365, 35.629494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256393, 36.217525, 35.530769>,  <40.901390, 36.134464, 35.366230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256393, 36.217525, 35.530769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394685, 0.803290, 0.446037,
		-0.237813, -0.558216, 0.794884,
		0.887507, 0.207655, 0.411352,
		41.522644, 36.279823, 35.654175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809429, 36.267502, 36.066616>,  <40.901390, 36.134464, 35.366230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809429, 36.267502, 36.066616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159424, 36.445499, 35.990322>,  <41.369419, 36.552299, 35.944546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159424, 36.445499, 35.990322>,  <40.809429, 36.267502, 36.066616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159424, 36.445499, 35.990322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334129, 0.840121, 0.427264,
		0.350373, -0.310119, 0.883779,
		0.874984, 0.444998, -0.190736,
		41.421921, 36.578999, 35.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052662, 36.628510, 36.730820>,  <40.809429, 36.267502, 36.066616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052662, 36.628510, 36.730820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232536, 36.805473, 36.420452>,  <41.340462, 36.911652, 36.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232536, 36.805473, 36.420452>,  <41.052662, 36.628510, 36.730820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232536, 36.805473, 36.420452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483731, 0.850913, 0.204820,
		0.750857, 0.283233, 0.596652,
		0.449687, 0.442409, -0.775922,
		41.367443, 36.938194, 36.187675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330978, 37.246693, 36.986546>,  <41.052662, 36.628510, 36.730820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330978, 37.246693, 36.986546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302982, 37.317642, 36.593884>,  <41.286186, 37.360210, 36.358288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302982, 37.317642, 36.593884>,  <41.330978, 37.246693, 36.986546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302982, 37.317642, 36.593884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447666, 0.873824, 0.189805,
		0.891458, 0.452736, 0.018247,
		-0.069987, 0.177371, -0.981652,
		41.281986, 37.370853, 36.299389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564663, 37.994560, 36.866886>,  <41.330978, 37.246693, 36.986546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564663, 37.994560, 36.866886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356468, 37.878605, 36.545624>,  <41.231552, 37.809032, 36.352867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356468, 37.878605, 36.545624>,  <41.564663, 37.994560, 36.866886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356468, 37.878605, 36.545624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429311, 0.901916, -0.047323,
		0.738095, 0.320172, -0.593890,
		-0.520487, -0.289893, -0.803154,
		41.200321, 37.791637, 36.304676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621994, 38.610573, 36.454391>,  <41.564663, 37.994560, 36.866886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621994, 38.610573, 36.454391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298969, 38.414192, 36.323662>,  <41.105156, 38.296364, 36.245224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298969, 38.414192, 36.323662>,  <41.621994, 38.610573, 36.454391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298969, 38.414192, 36.323662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467134, 0.870718, -0.153741,
		0.360050, 0.028515, -0.932497,
		-0.807558, -0.490956, -0.326823,
		41.056702, 38.266907, 36.225616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391560, 39.094673, 35.863354>,  <41.621994, 38.610573, 36.454391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391560, 39.094673, 35.863354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092716, 38.840557, 35.941578>,  <40.913410, 38.688087, 35.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092716, 38.840557, 35.941578>,  <41.391560, 39.094673, 35.863354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092716, 38.840557, 35.941578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662764, 0.689480, -0.292166,
		0.050774, -0.347890, -0.936159,
		-0.747105, -0.635287, 0.195562,
		40.868584, 38.649971, 36.000248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872841, 38.960896, 35.303013>,  <41.391560, 39.094673, 35.863354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872841, 38.960896, 35.303013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678783, 38.888248, 35.645161>,  <40.562347, 38.844658, 35.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678783, 38.888248, 35.645161>,  <40.872841, 38.960896, 35.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678783, 38.888248, 35.645161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541937, 0.830128, -0.131113,
		-0.686251, -0.527163, -0.501157,
		-0.485142, -0.181619, 0.855366,
		40.533241, 38.833763, 35.901772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245846, 39.289558, 35.223713>,  <40.872841, 38.960896, 35.303013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245846, 39.289558, 35.223713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191566, 39.204575, 35.610794>,  <40.159000, 39.153584, 35.843044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191566, 39.204575, 35.610794>,  <40.245846, 39.289558, 35.223713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191566, 39.204575, 35.610794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701198, 0.710628, 0.057695,
		-0.699935, -0.670722, -0.245404,
		-0.135694, -0.212459, 0.967702,
		40.150860, 39.140839, 35.901104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492516, 39.135712, 35.319717>,  <40.245846, 39.289558, 35.223713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492516, 39.135712, 35.319717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616013, 39.206509, 35.693531>,  <39.690113, 39.248985, 35.917820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616013, 39.206509, 35.693531>,  <39.492516, 39.135712, 35.319717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616013, 39.206509, 35.693531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718987, 0.686661, 0.107490,
		-0.622682, -0.705104, 0.339259,
		0.308747, 0.176991, 0.934532,
		39.708637, 39.259605, 35.973892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931828, 39.079609, 35.753582>,  <39.492516, 39.135712, 35.319717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931828, 39.079609, 35.753582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190468, 39.314041, 35.948895>,  <39.345650, 39.454700, 36.066082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190468, 39.314041, 35.948895>,  <38.931828, 39.079609, 35.753582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190468, 39.314041, 35.948895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670204, 0.742170, -0.003319,
		-0.364331, -0.325100, 0.872681,
		0.646599, 0.586084, 0.488279,
		39.384449, 39.489864, 36.095379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534416, 39.428818, 36.157162>,  <38.931828, 39.079609, 35.753582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534416, 39.428818, 36.157162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863754, 39.653854, 36.187061>,  <39.061359, 39.788876, 36.205002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863754, 39.653854, 36.187061>,  <38.534416, 39.428818, 36.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863754, 39.653854, 36.187061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551240, 0.824073, -0.130526,
		-0.135030, 0.066265, 0.988623,
		0.823348, 0.562594, 0.074747,
		39.110760, 39.822632, 36.209484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534199, 39.914391, 36.791374>,  <38.534416, 39.428818, 36.157162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534199, 39.914391, 36.791374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748421, 40.016510, 36.469379>,  <38.876953, 40.077782, 36.276184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748421, 40.016510, 36.469379>,  <38.534199, 39.914391, 36.791374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748421, 40.016510, 36.469379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593372, 0.792018, -0.143586,
		0.600904, 0.554554, 0.575659,
		0.535558, 0.255299, -0.804984,
		38.909088, 40.093102, 36.227882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306221, 40.714489, 36.843376>,  <38.534199, 39.914391, 36.791374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306221, 40.714489, 36.843376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475033, 40.523647, 36.535023>,  <38.576321, 40.409142, 36.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475033, 40.523647, 36.535023>,  <38.306221, 40.714489, 36.843376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475033, 40.523647, 36.535023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890082, -0.379547, -0.252383,
		-0.172173, 0.792662, -0.584845,
		0.422031, -0.477107, -0.770882,
		38.601643, 40.380516, 36.303757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137585, 40.936531, 36.037594>,  <38.306221, 40.714489, 36.843376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137585, 40.936531, 36.037594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182919, 40.544086, 36.100304>,  <38.210121, 40.308620, 36.137932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182919, 40.544086, 36.100304>,  <38.137585, 40.936531, 36.037594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182919, 40.544086, 36.100304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913543, -0.164944, -0.371796,
		0.390632, -0.101085, -0.914980,
		0.113338, -0.981109, 0.156778,
		38.216919, 40.249752, 36.147339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778782, 40.727314, 35.415222>,  <38.137585, 40.936531, 36.037594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778782, 40.727314, 35.415222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650219, 40.562012, 35.074417>,  <37.573082, 40.462830, 34.869934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650219, 40.562012, 35.074417>,  <37.778782, 40.727314, 35.415222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650219, 40.562012, 35.074417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733146, -0.678057, 0.052309,
		-0.599327, -0.607833, 0.520909,
		-0.321411, -0.413252, -0.852008,
		37.553795, 40.438038, 34.818813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729362, 39.973164, 35.396976>,  <37.778782, 40.727314, 35.415222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729362, 39.973164, 35.396976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796947, 40.097408, 35.022816>,  <37.837498, 40.171955, 34.798321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796947, 40.097408, 35.022816>,  <37.729362, 39.973164, 35.396976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796947, 40.097408, 35.022816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800412, -0.597043, -0.053673,
		-0.575145, -0.739635, -0.349497,
		0.168966, 0.310611, -0.935399,
		37.847637, 40.190590, 34.742195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866516, 39.321228, 34.983044>,  <37.729362, 39.973164, 35.396976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866516, 39.321228, 34.983044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036194, 39.669041, 34.881878>,  <38.138000, 39.877728, 34.821178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036194, 39.669041, 34.881878>,  <37.866516, 39.321228, 34.983044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036194, 39.669041, 34.881878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900361, -0.375067, 0.220623,
		0.096978, -0.321303, -0.941997,
		0.424199, 0.869534, -0.252916,
		38.163452, 39.929901, 34.806004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601814, 39.551609, 35.278549>,  <37.866516, 39.321228, 34.983044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601814, 39.551609, 35.278549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641113, 39.930859, 35.399483>,  <38.664692, 40.158409, 35.472042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641113, 39.930859, 35.399483>,  <38.601814, 39.551609, 35.278549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641113, 39.930859, 35.399483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947168, 0.004122, -0.320711,
		-0.305321, 0.317872, -0.897628,
		0.098246, 0.948125, 0.302337,
		38.670586, 40.215298, 35.490185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857544, 40.008797, 34.667515>,  <38.601814, 39.551609, 35.278549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857544, 40.008797, 34.667515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949497, 40.131771, 35.036869>,  <39.004669, 40.205555, 35.258480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949497, 40.131771, 35.036869>,  <38.857544, 40.008797, 34.667515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949497, 40.131771, 35.036869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950641, 0.132247, -0.280700,
		-0.208411, 0.942336, -0.261856,
		0.229884, 0.307432, 0.923385,
		39.018463, 40.223999, 35.313885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236206, 40.686050, 34.666988>,  <38.857544, 40.008797, 34.667515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236206, 40.686050, 34.666988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402176, 40.480396, 34.967255>,  <39.501759, 40.357002, 35.147415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402176, 40.480396, 34.967255>,  <39.236206, 40.686050, 34.666988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402176, 40.480396, 34.967255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905534, 0.313671, -0.285691,
		-0.088578, 0.798293, 0.595720,
		0.414925, -0.514138, 0.750666,
		39.526653, 40.326157, 35.192455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655304, 40.812817, 33.989635>,  <39.236206, 40.686050, 34.666988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655304, 40.812817, 33.989635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561260, 40.583294, 33.675827>,  <39.504833, 40.445580, 33.487541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561260, 40.583294, 33.675827>,  <39.655304, 40.812817, 33.989635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561260, 40.583294, 33.675827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842620, -0.522644, 0.129751,
		-0.484476, -0.630546, 0.606378,
		-0.235105, -0.573808, -0.784519,
		39.490730, 40.411152, 33.440472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625629, 40.082615, 34.108826>,  <39.655304, 40.812817, 33.989635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625629, 40.082615, 34.108826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741772, 40.134205, 33.729549>,  <39.811455, 40.165161, 33.501984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741772, 40.134205, 33.729549>,  <39.625629, 40.082615, 34.108826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741772, 40.134205, 33.729549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811462, -0.558356, 0.172535,
		-0.507173, -0.819514, -0.266780,
		0.290353, 0.128977, -0.948188,
		39.828876, 40.172897, 33.445091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935257, 39.578289, 34.041531>,  <39.625629, 40.082615, 34.108826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935257, 39.578289, 34.041531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078537, 39.812801, 33.750885>,  <40.164505, 39.953506, 33.576496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078537, 39.812801, 33.750885>,  <39.935257, 39.578289, 34.041531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078537, 39.812801, 33.750885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879776, -0.472483, 0.052478,
		-0.312547, -0.658057, -0.685037,
		0.358202, 0.586277, -0.726616,
		40.185997, 39.988686, 33.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159019, 39.150131, 33.599766>,  <39.935257, 39.578289, 34.041531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159019, 39.150131, 33.599766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359169, 39.489502, 33.530716>,  <40.479259, 39.693123, 33.489285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359169, 39.489502, 33.530716>,  <40.159019, 39.150131, 33.599766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359169, 39.489502, 33.530716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865807, -0.490523, 0.098818,
		-0.000837, -0.198907, -0.980018,
		0.500377, 0.848424, -0.172626,
		40.509281, 39.744030, 33.478928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643051, 38.886925, 33.178619>,  <40.159019, 39.150131, 33.599766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643051, 38.886925, 33.178619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792976, 39.230057, 33.319275>,  <40.882931, 39.435936, 33.403667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.792976, 39.230057, 33.319275>,  <40.643051, 38.886925, 33.178619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792976, 39.230057, 33.319275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889516, -0.439648, 0.124384,
		0.261297, 0.266167, -0.927836,
		0.374815, 0.857826, 0.351638,
		40.905422, 39.487404, 33.424767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120220, 39.074837, 32.734131>,  <40.643051, 38.886925, 33.178619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120220, 39.074837, 32.734131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240341, 39.283966, 33.053249>,  <41.312412, 39.409443, 33.244720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240341, 39.283966, 33.053249>,  <41.120220, 39.074837, 32.734131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240341, 39.283966, 33.053249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934215, -0.330021, -0.135380,
		0.192509, 0.785968, -0.587533,
		0.300303, 0.522821, 0.797795,
		41.330433, 39.440811, 33.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832817, 39.328754, 32.552494>,  <41.120220, 39.074837, 32.734131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832817, 39.328754, 32.552494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783283, 39.307251, 32.948833>,  <41.753563, 39.294350, 33.186638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783283, 39.307251, 32.948833>,  <41.832817, 39.328754, 32.552494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783283, 39.307251, 32.948833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879081, -0.469139, 0.084409,
		0.460307, 0.881486, 0.105354,
		-0.123831, -0.053761, 0.990846,
		41.746136, 39.291122, 33.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577961, 39.460033, 32.818588>,  <41.832817, 39.328754, 32.552494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577961, 39.460033, 32.818588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385269, 39.342037, 33.148659>,  <42.269653, 39.271240, 33.346703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.385269, 39.342037, 33.148659>,  <42.577961, 39.460033, 32.818588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385269, 39.342037, 33.148659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817504, -0.490441, 0.301920,
		0.315639, 0.820030, 0.477412,
		-0.481726, -0.294988, 0.825180,
		42.240753, 39.253540, 33.396214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103561, 39.479885, 33.244122>,  <42.577961, 39.460033, 32.818588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103561, 39.479885, 33.244122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825882, 39.229797, 33.386776>,  <42.659275, 39.079742, 33.472366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825882, 39.229797, 33.386776>,  <43.103561, 39.479885, 33.244122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825882, 39.229797, 33.386776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716218, -0.649278, 0.255871,
		0.071577, 0.433051, 0.898523,
		-0.694197, -0.625223, 0.356633,
		42.617622, 39.042229, 33.493767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436253, 39.203362, 33.734940>,  <43.103561, 39.479885, 33.244122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436253, 39.203362, 33.734940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111340, 38.970715, 33.717438>,  <42.916389, 38.831127, 33.706936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111340, 38.970715, 33.717438>,  <43.436253, 39.203362, 33.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111340, 38.970715, 33.717438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519612, -0.755681, 0.398685,
		-0.264947, 0.301110, 0.916044,
		-0.812285, -0.581618, -0.043755,
		42.867653, 38.796230, 33.704311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219517, 38.872417, 34.432636>,  <43.436253, 39.203362, 33.734940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219517, 38.872417, 34.432636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070518, 38.629230, 34.152176>,  <42.981117, 38.483318, 33.983898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070518, 38.629230, 34.152176>,  <43.219517, 38.872417, 34.432636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070518, 38.629230, 34.152176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461155, -0.776908, 0.428661,
		-0.805346, -0.163666, 0.569764,
		-0.372497, -0.607970, -0.701155,
		42.958771, 38.446838, 33.941830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067272, 38.280659, 34.786221>,  <43.219517, 38.872417, 34.432636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067272, 38.280659, 34.786221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122757, 38.184372, 34.401966>,  <43.156048, 38.126598, 34.171413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122757, 38.184372, 34.401966>,  <43.067272, 38.280659, 34.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122757, 38.184372, 34.401966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575639, -0.769719, 0.275995,
		-0.805854, -0.591260, 0.031800,
		0.138708, -0.240717, -0.960633,
		43.164368, 38.112156, 34.113777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948486, 37.654583, 34.831448>,  <43.067272, 38.280659, 34.786221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948486, 37.654583, 34.831448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139717, 37.698578, 34.482887>,  <43.254456, 37.724976, 34.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139717, 37.698578, 34.482887>,  <42.948486, 37.654583, 34.831448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139717, 37.698578, 34.482887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471985, -0.868878, 0.149273,
		-0.740725, -0.482653, -0.467303,
		0.478076, 0.109989, -0.871405,
		43.283138, 37.731575, 34.221466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006203, 37.068142, 34.635254>,  <42.948486, 37.654583, 34.831448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006203, 37.068142, 34.635254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292896, 37.229504, 34.407722>,  <43.464912, 37.326321, 34.271206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292896, 37.229504, 34.407722>,  <43.006203, 37.068142, 34.635254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292896, 37.229504, 34.407722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526339, -0.848028, 0.061781,
		-0.457457, -0.343675, -0.820135,
		0.716730, 0.403406, -0.568825,
		43.507915, 37.350525, 34.237076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286640, 36.520367, 34.059269>,  <43.006203, 37.068142, 34.635254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286640, 36.520367, 34.059269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571636, 36.799294, 34.090542>,  <43.742634, 36.966648, 34.109306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571636, 36.799294, 34.090542>,  <43.286640, 36.520367, 34.059269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571636, 36.799294, 34.090542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658275, -0.702830, 0.269638,
		0.242974, -0.140646, -0.959783,
		0.712487, 0.697316, 0.078186,
		43.785381, 37.008488, 34.113998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826443, 36.276108, 33.733116>,  <43.286640, 36.520367, 34.059269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826443, 36.276108, 33.733116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994007, 36.554329, 33.966602>,  <44.094547, 36.721260, 34.106693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994007, 36.554329, 33.966602>,  <43.826443, 36.276108, 33.733116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994007, 36.554329, 33.966602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828091, -0.556371, 0.068674,
		0.372527, 0.454598, -0.809051,
		0.418914, 0.695551, 0.583712,
		44.119682, 36.762993, 34.141716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518852, 36.305660, 33.431217>,  <43.826443, 36.276108, 33.733116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518852, 36.305660, 33.431217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567535, 36.495613, 33.779854>,  <44.596745, 36.609585, 33.989037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567535, 36.495613, 33.779854>,  <44.518852, 36.305660, 33.431217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567535, 36.495613, 33.779854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914291, -0.395432, 0.087777,
		0.386340, 0.786209, -0.482303,
		0.121707, 0.474877, 0.871596,
		44.604046, 36.638077, 34.041332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205875, 36.775070, 33.419842>,  <44.518852, 36.305660, 33.431217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205875, 36.775070, 33.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083176, 36.636230, 33.774338>,  <45.009556, 36.552929, 33.987038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083176, 36.636230, 33.774338>,  <45.205875, 36.775070, 33.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083176, 36.636230, 33.774338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910723, -0.377601, 0.167338,
		0.276564, 0.858453, 0.431938,
		-0.306752, -0.347096, 0.886244,
		44.991150, 36.532101, 34.040211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743301, 36.921860, 33.735638>,  <45.205875, 36.775070, 33.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743301, 36.921860, 33.735638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559795, 36.661221, 33.977283>,  <45.449692, 36.504837, 34.122272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559795, 36.661221, 33.977283>,  <45.743301, 36.921860, 33.735638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559795, 36.661221, 33.977283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852288, -0.514956, 0.091795,
		0.251280, 0.556994, 0.791590,
		-0.458763, -0.651596, 0.604118,
		45.422165, 36.465740, 34.158520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073021, 36.905388, 34.287216>,  <45.743301, 36.921860, 33.735638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073021, 36.905388, 34.287216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866066, 36.563370, 34.301159>,  <45.741894, 36.358158, 34.309525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.866066, 36.563370, 34.301159>,  <46.073021, 36.905388, 34.287216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.866066, 36.563370, 34.301159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841140, -0.500631, 0.204581,
		-0.157474, 0.135169, 0.978229,
		-0.517384, -0.855043, 0.034860,
		45.710850, 36.306858, 34.311619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098217, 36.502911, 34.928440>,  <46.073021, 36.905388, 34.287216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098217, 36.502911, 34.928440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065502, 36.287636, 34.592899>,  <46.045872, 36.158470, 34.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065502, 36.287636, 34.592899>,  <46.098217, 36.502911, 34.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065502, 36.287636, 34.592899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941435, -0.317977, 0.112213,
		-0.327126, -0.780543, 0.532674,
		-0.081791, -0.538186, -0.838848,
		46.040966, 36.126179, 34.341244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072353, 35.749950, 34.947956>,  <46.098217, 36.502911, 34.928440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072353, 35.749950, 34.947956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277214, 35.851921, 34.619877>,  <46.400131, 35.913105, 34.423031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277214, 35.851921, 34.619877>,  <46.072353, 35.749950, 34.947956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277214, 35.851921, 34.619877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720487, -0.647343, 0.248687,
		-0.467550, -0.718303, -0.515206,
		0.512148, 0.254925, -0.820194,
		46.430859, 35.928398, 34.373817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344582, 35.215096, 34.516712>,  <46.072353, 35.749950, 34.947956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344582, 35.215096, 34.516712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573898, 35.542831, 34.515358>,  <46.711491, 35.739475, 34.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.573898, 35.542831, 34.515358>,  <46.344582, 35.215096, 34.516712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.573898, 35.542831, 34.515358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780899, -0.545137, 0.304996,
		0.248051, -0.177496, -0.952348,
		0.573295, 0.819342, -0.003385,
		46.745888, 35.788635, 34.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033211, 35.114498, 34.040672>,  <46.344582, 35.215096, 34.516712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033211, 35.114498, 34.040672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028347, 35.338974, 34.371712>,  <47.025429, 35.473660, 34.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028347, 35.338974, 34.371712>,  <47.033211, 35.114498, 34.040672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028347, 35.338974, 34.371712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668356, -0.611050, 0.424168,
		0.743742, 0.558291, -0.367640,
		-0.012163, 0.561186, 0.827600,
		47.024696, 35.507328, 34.619991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.689571, 35.443642, 34.284637>,  <47.033211, 35.114498, 34.040672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.689571, 35.443642, 34.284637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487934, 35.400192, 34.627354>,  <47.366951, 35.374123, 34.832985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.487934, 35.400192, 34.627354>,  <47.689571, 35.443642, 34.284637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487934, 35.400192, 34.627354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752392, -0.542303, 0.373917,
		0.424025, 0.833132, 0.355097,
		-0.504092, -0.108622, 0.856792,
		47.336708, 35.367607, 34.884392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.137787, 35.092354, 34.724457>,  <47.689571, 35.443642, 34.284637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.137787, 35.092354, 34.724457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790665, 35.081364, 34.922916>,  <47.582394, 35.074768, 35.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790665, 35.081364, 34.922916>,  <48.137787, 35.092354, 34.724457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790665, 35.081364, 34.922916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352947, -0.736920, 0.576522,
		0.349781, 0.675421, 0.649199,
		-0.867803, -0.027476, 0.496149,
		47.530323, 35.073120, 35.071762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.320686, 37.630047, 44.546177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009079, 37.443024, 44.713280>,  <36.822113, 37.330811, 44.813541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009079, 37.443024, 44.713280>,  <37.320686, 37.630047, 44.546177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009079, 37.443024, 44.713280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222226, -0.417139, -0.881255,
		0.586300, -0.779350, 0.221055,
		-0.779017, -0.467555, 0.417761,
		36.775375, 37.302757, 44.838608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389080, 37.002277, 44.438301>,  <37.320686, 37.630047, 44.546177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389080, 37.002277, 44.438301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999798, 37.034187, 44.524563>,  <36.766228, 37.053333, 44.576321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999798, 37.034187, 44.524563>,  <37.389080, 37.002277, 44.438301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999798, 37.034187, 44.524563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227918, -0.458603, -0.858916,
		0.030384, -0.885054, 0.464496,
		-0.973206, 0.079770, 0.215654,
		36.707836, 37.058117, 44.589260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144802, 36.382008, 44.326832>,  <37.389080, 37.002277, 44.438301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144802, 36.382008, 44.326832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801685, 36.587524, 44.332523>,  <36.595814, 36.710835, 44.335938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801685, 36.587524, 44.332523>,  <37.144802, 36.382008, 44.326832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801685, 36.587524, 44.332523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328011, -0.525898, -0.784755,
		-0.395721, -0.677825, 0.619644,
		-0.857796, 0.513794, 0.014225,
		36.544346, 36.741661, 44.336792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649731, 35.884159, 44.217903>,  <37.144802, 36.382008, 44.326832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649731, 35.884159, 44.217903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469532, 36.232327, 44.138481>,  <36.361412, 36.441227, 44.090828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469532, 36.232327, 44.138481>,  <36.649731, 35.884159, 44.217903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469532, 36.232327, 44.138481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346899, -0.375582, -0.859418,
		-0.822629, -0.318283, 0.471145,
		-0.450492, 0.870422, -0.198553,
		36.334385, 36.493454, 44.078915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006317, 35.705193, 43.969757>,  <36.649731, 35.884159, 44.217903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006317, 35.705193, 43.969757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081928, 36.075512, 43.838814>,  <36.127293, 36.297703, 43.760246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081928, 36.075512, 43.838814>,  <36.006317, 35.705193, 43.969757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081928, 36.075512, 43.838814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394425, -0.233714, -0.888710,
		-0.899276, 0.297108, 0.320981,
		0.189026, 0.925799, -0.327360,
		36.138638, 36.353252, 43.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339909, 36.132725, 43.763401>,  <36.006317, 35.705193, 43.969757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339909, 36.132725, 43.763401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649422, 36.260830, 43.544788>,  <35.835129, 36.337692, 43.413620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649422, 36.260830, 43.544788>,  <35.339909, 36.132725, 43.763401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649422, 36.260830, 43.544788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495314, -0.231947, -0.837176,
		-0.394881, 0.918496, -0.020847,
		0.773778, 0.320259, -0.546535,
		35.881554, 36.356907, 43.380829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050346, 36.192963, 43.149754>,  <35.339909, 36.132725, 43.763401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050346, 36.192963, 43.149754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423409, 36.282513, 43.036594>,  <35.647247, 36.336243, 42.968700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423409, 36.282513, 43.036594>,  <35.050346, 36.192963, 43.149754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423409, 36.282513, 43.036594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223295, -0.257675, -0.940076,
		-0.283359, 0.939937, -0.190331,
		0.932656, 0.223880, -0.282898,
		35.703205, 36.349678, 42.951725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988792, 36.689350, 42.560089>,  <35.050346, 36.192963, 43.149754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988792, 36.689350, 42.560089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318691, 36.463230, 42.566097>,  <35.516632, 36.327557, 42.569702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318691, 36.463230, 42.566097>,  <34.988792, 36.689350, 42.560089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318691, 36.463230, 42.566097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204788, -0.323333, -0.923860,
		0.527115, 0.758876, -0.382435,
		0.824749, -0.565299, 0.015025,
		35.566116, 36.293640, 42.570606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420677, 36.818462, 41.932236>,  <34.988792, 36.689350, 42.560089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420677, 36.818462, 41.932236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544216, 36.456924, 42.050682>,  <35.618340, 36.240002, 42.121750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544216, 36.456924, 42.050682>,  <35.420677, 36.818462, 41.932236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544216, 36.456924, 42.050682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101122, -0.340777, -0.934690,
		0.945720, 0.258734, -0.196647,
		0.308849, -0.903841, 0.296116,
		35.636871, 36.185772, 42.139515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937775, 36.609291, 41.400513>,  <35.420677, 36.818462, 41.932236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937775, 36.609291, 41.400513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833767, 36.274616, 41.593323>,  <35.771362, 36.073811, 41.709011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833767, 36.274616, 41.593323>,  <35.937775, 36.609291, 41.400513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833767, 36.274616, 41.593323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171163, -0.451357, -0.875774,
		0.950313, -0.310220, -0.025849,
		-0.260016, -0.836684, 0.482029,
		35.755764, 36.023613, 41.737930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325245, 36.074917, 41.076633>,  <35.937775, 36.609291, 41.400513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325245, 36.074917, 41.076633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012321, 35.914452, 41.267235>,  <35.824566, 35.818172, 41.381596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.012321, 35.914452, 41.267235>,  <36.325245, 36.074917, 41.076633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012321, 35.914452, 41.267235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206647, -0.554521, -0.806104,
		0.587610, -0.729093, 0.350910,
		-0.782311, -0.401160, 0.476507,
		35.777630, 35.794102, 41.410187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384731, 35.355309, 41.112823>,  <36.325245, 36.074917, 41.076633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384731, 35.355309, 41.112823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997036, 35.452812, 41.126423>,  <35.764420, 35.511314, 41.134583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997036, 35.452812, 41.126423>,  <36.384731, 35.355309, 41.112823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997036, 35.452812, 41.126423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135841, -0.414652, -0.899784,
		-0.205234, -0.876724, 0.435010,
		-0.969240, 0.243758, 0.033995,
		35.706264, 35.525940, 41.136620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006741, 34.781242, 40.888378>,  <36.384731, 35.355309, 41.112823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006741, 34.781242, 40.888378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745960, 35.080833, 40.841061>,  <35.589493, 35.260590, 40.812672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745960, 35.080833, 40.841061>,  <36.006741, 34.781242, 40.888378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745960, 35.080833, 40.841061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234304, -0.347356, -0.907990,
		-0.721156, -0.564245, 0.401947,
		-0.651948, 0.748980, -0.118293,
		35.550377, 35.305527, 40.805573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365177, 34.426846, 40.578087>,  <36.006741, 34.781242, 40.888378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365177, 34.426846, 40.578087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329029, 34.815594, 40.491089>,  <35.307343, 35.048843, 40.438889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329029, 34.815594, 40.491089>,  <35.365177, 34.426846, 40.578087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329029, 34.815594, 40.491089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372417, -0.235520, -0.897683,
		-0.923655, -0.000121, 0.383224,
		-0.090366, 0.971869, -0.217494,
		35.301918, 35.107155, 40.425842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703743, 34.475178, 40.284000>,  <35.365177, 34.426846, 40.578087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703743, 34.475178, 40.284000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893074, 34.808708, 40.170376>,  <35.006672, 35.008827, 40.102200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.893074, 34.808708, 40.170376>,  <34.703743, 34.475178, 40.284000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893074, 34.808708, 40.170376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406278, -0.079484, -0.910286,
		-0.781602, 0.546269, 0.301145,
		0.473325, 0.833830, -0.284062,
		35.035072, 35.058857, 40.085155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230965, 34.788425, 39.864426>,  <34.703743, 34.475178, 40.284000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230965, 34.788425, 39.864426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584332, 34.950493, 39.770271>,  <34.796352, 35.047733, 39.713779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584332, 34.950493, 39.770271>,  <34.230965, 34.788425, 39.864426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584332, 34.950493, 39.770271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201812, -0.124378, -0.971495,
		-0.422901, 0.905740, -0.028109,
		0.883418, 0.405173, -0.235389,
		34.849358, 35.072044, 39.699654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083755, 35.145874, 39.298328>,  <34.230965, 34.788425, 39.864426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083755, 35.145874, 39.298328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482811, 35.168137, 39.282276>,  <34.722244, 35.181496, 39.272644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482811, 35.168137, 39.282276>,  <34.083755, 35.145874, 39.298328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482811, 35.168137, 39.282276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026454, -0.227709, -0.973370,
		-0.063314, 0.972137, -0.225700,
		0.997643, 0.055657, -0.040134,
		34.782104, 35.184834, 39.270237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347713, 35.608437, 38.749886>,  <34.083755, 35.145874, 39.298328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347713, 35.608437, 38.749886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637451, 35.345089, 38.831738>,  <34.811295, 35.187080, 38.880848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637451, 35.345089, 38.831738>,  <34.347713, 35.608437, 38.749886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637451, 35.345089, 38.831738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101277, -0.191973, -0.976160,
		0.681959, 0.727801, -0.072377,
		0.724345, -0.658371, 0.204627,
		34.854755, 35.147579, 38.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913219, 35.780148, 38.340717>,  <34.347713, 35.608437, 38.749886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913219, 35.780148, 38.340717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006691, 35.401962, 38.431488>,  <35.062775, 35.175053, 38.485950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.006691, 35.401962, 38.431488>,  <34.913219, 35.780148, 38.340717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006691, 35.401962, 38.431488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090588, -0.211207, -0.973234,
		0.968084, 0.247983, 0.036292,
		0.233680, -0.945461, 0.226931,
		35.076794, 35.118324, 38.499569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540962, 35.707134, 38.027271>,  <34.913219, 35.780148, 38.340717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540962, 35.707134, 38.027271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366661, 35.348850, 38.062641>,  <35.262081, 35.133881, 38.083862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366661, 35.348850, 38.062641>,  <35.540962, 35.707134, 38.027271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366661, 35.348850, 38.062641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409079, -0.284603, -0.866981,
		0.801730, -0.341619, 0.490434,
		-0.435756, -0.895710, 0.088425,
		35.235935, 35.080135, 38.089169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118477, 35.229900, 37.797901>,  <35.540962, 35.707134, 38.027271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118477, 35.229900, 37.797901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757210, 35.058735, 37.784161>,  <35.540451, 34.956036, 37.775917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757210, 35.058735, 37.784161>,  <36.118477, 35.229900, 37.797901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757210, 35.058735, 37.784161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145457, -0.229751, -0.962318,
		0.403893, -0.874132, 0.269747,
		-0.903168, -0.427910, -0.034354,
		35.486259, 34.930363, 37.773853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250206, 34.592579, 37.491936>,  <36.118477, 35.229900, 37.797901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250206, 34.592579, 37.491936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861313, 34.666775, 37.434860>,  <35.627975, 34.711292, 37.400616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861313, 34.666775, 37.434860>,  <36.250206, 34.592579, 37.491936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861313, 34.666775, 37.434860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028993, -0.509546, -0.859955,
		-0.232216, -0.840213, 0.490019,
		-0.972232, 0.185488, -0.142685,
		35.569645, 34.722420, 37.392056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753414, 34.682140, 36.940086>,  <36.250206, 34.592579, 37.491936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753414, 34.682140, 36.940086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026146, 34.906605, 36.752380>,  <37.189785, 35.041283, 36.639759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026146, 34.906605, 36.752380>,  <36.753414, 34.682140, 36.940086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026146, 34.906605, 36.752380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004642, 0.638167, 0.769884,
		0.731496, -0.527108, 0.432516,
		0.681830, 0.561159, -0.469264,
		37.230694, 35.074951, 36.611603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246120, 34.981831, 37.494331>,  <36.753414, 34.682140, 36.940086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246120, 34.981831, 37.494331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332932, 35.200218, 37.170647>,  <37.385017, 35.331249, 36.976437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.332932, 35.200218, 37.170647>,  <37.246120, 34.981831, 37.494331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332932, 35.200218, 37.170647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043276, 0.822771, 0.566722,
		0.975205, -0.158016, 0.154939,
		0.217030, 0.545965, -0.809209,
		37.398041, 35.364006, 36.927883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870758, 35.349430, 37.642010>,  <37.246120, 34.981831, 37.494331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870758, 35.349430, 37.642010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657963, 35.556740, 37.374168>,  <37.530285, 35.681126, 37.213463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.657963, 35.556740, 37.374168>,  <37.870758, 35.349430, 37.642010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657963, 35.556740, 37.374168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203221, 0.845833, 0.493222,
		0.822001, 0.126312, -0.555301,
		-0.531992, 0.518278, -0.669606,
		37.498363, 35.712223, 37.173286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331455, 35.887218, 37.412926>,  <37.870758, 35.349430, 37.642010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331455, 35.887218, 37.412926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959755, 36.013050, 37.335426>,  <37.736736, 36.088547, 37.288925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959755, 36.013050, 37.335426>,  <38.331455, 35.887218, 37.412926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959755, 36.013050, 37.335426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119011, 0.751342, 0.649093,
		0.349764, 0.580109, -0.735621,
		-0.929248, 0.314576, -0.193753,
		37.680981, 36.107422, 37.277302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353218, 36.603539, 37.221165>,  <38.331455, 35.887218, 37.412926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353218, 36.603539, 37.221165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988358, 36.528511, 37.366924>,  <37.769440, 36.483494, 37.454380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988358, 36.528511, 37.366924>,  <38.353218, 36.603539, 37.221165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988358, 36.528511, 37.366924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156811, 0.661746, 0.733146,
		-0.378658, 0.725886, -0.574202,
		-0.912156, -0.187570, 0.364402,
		37.714710, 36.472240, 37.476246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121742, 37.245888, 37.486282>,  <38.353218, 36.603539, 37.221165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121742, 37.245888, 37.486282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838917, 36.999924, 37.625969>,  <37.669224, 36.852345, 37.709782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.838917, 36.999924, 37.625969>,  <38.121742, 37.245888, 37.486282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838917, 36.999924, 37.625969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171033, 0.627876, 0.759289,
		-0.686160, 0.477134, -0.549115,
		-0.707059, -0.614910, 0.349218,
		37.626801, 36.815449, 37.730736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490147, 37.675777, 37.591343>,  <38.121742, 37.245888, 37.486282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490147, 37.675777, 37.591343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486290, 37.355598, 37.831074>,  <37.483974, 37.163490, 37.974911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.486290, 37.355598, 37.831074>,  <37.490147, 37.675777, 37.591343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486290, 37.355598, 37.831074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182628, 0.590680, 0.785967,
		-0.983135, -0.101873, -0.151882,
		-0.009645, -0.800449, 0.599322,
		37.483395, 37.115463, 38.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839432, 37.706104, 37.946518>,  <37.490147, 37.675777, 37.591343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839432, 37.706104, 37.946518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061344, 37.474148, 38.185162>,  <37.194492, 37.334972, 38.328346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.061344, 37.474148, 38.185162>,  <36.839432, 37.706104, 37.946518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061344, 37.474148, 38.185162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291744, 0.535961, 0.792232,
		-0.779168, -0.613573, 0.128162,
		0.554782, -0.579891, 0.596610,
		37.227779, 37.300182, 38.364143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418957, 37.756737, 38.458878>,  <36.839432, 37.706104, 37.946518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418957, 37.756737, 38.458878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743973, 37.601582, 38.632919>,  <36.938984, 37.508488, 38.737343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743973, 37.601582, 38.632919>,  <36.418957, 37.756737, 38.458878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743973, 37.601582, 38.632919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143513, 0.590340, 0.794293,
		-0.564956, -0.707842, 0.424011,
		0.812545, -0.387889, 0.435101,
		36.987736, 37.485214, 38.763451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318230, 37.625916, 39.239471>,  <36.418957, 37.756737, 38.458878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318230, 37.625916, 39.239471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713509, 37.677525, 39.206451>,  <36.950676, 37.708492, 39.186638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713509, 37.677525, 39.206451>,  <36.318230, 37.625916, 39.239471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713509, 37.677525, 39.206451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002933, 0.522894, 0.852393,
		0.153144, -0.842576, 0.516345,
		0.988200, 0.129024, -0.082549,
		37.009968, 37.716232, 39.181686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355335, 37.654129, 39.827419>,  <36.318230, 37.625916, 39.239471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355335, 37.654129, 39.827419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724701, 37.744991, 39.703671>,  <36.946320, 37.799507, 39.629421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724701, 37.744991, 39.703671>,  <36.355335, 37.654129, 39.827419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724701, 37.744991, 39.703671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226546, 0.328080, 0.917082,
		0.309813, -0.916933, 0.251494,
		0.923413, 0.227149, -0.309371,
		37.001724, 37.813137, 39.610859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866718, 37.370571, 40.297573>,  <36.355335, 37.654129, 39.827419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866718, 37.370571, 40.297573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030090, 37.680050, 40.103840>,  <37.128113, 37.865738, 39.987598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030090, 37.680050, 40.103840>,  <36.866718, 37.370571, 40.297573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030090, 37.680050, 40.103840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414931, 0.315248, 0.853494,
		0.813029, -0.549560, -0.192272,
		0.408432, 0.773694, -0.484335,
		37.152618, 37.912159, 39.958538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470604, 37.407749, 40.558273>,  <36.866718, 37.370571, 40.297573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470604, 37.407749, 40.558273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423386, 37.772739, 40.401577>,  <37.395054, 37.991734, 40.307560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423386, 37.772739, 40.401577>,  <37.470604, 37.407749, 40.558273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423386, 37.772739, 40.401577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460986, 0.399766, 0.792262,
		0.879521, -0.087062, -0.467828,
		-0.118045, 0.912473, -0.391737,
		37.387974, 38.046482, 40.284058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154568, 37.717674, 40.642258>,  <37.470604, 37.407749, 40.558273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154568, 37.717674, 40.642258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885540, 38.010529, 40.599121>,  <37.724125, 38.186241, 40.573238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.885540, 38.010529, 40.599121>,  <38.154568, 37.717674, 40.642258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885540, 38.010529, 40.599121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299399, 0.402467, 0.865090,
		0.676764, 0.549547, -0.489887,
		-0.672571, 0.732133, -0.107841,
		37.683769, 38.230167, 40.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553661, 38.265953, 40.921352>,  <38.154568, 37.717674, 40.642258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553661, 38.265953, 40.921352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181946, 38.413666, 40.923981>,  <37.958916, 38.502293, 40.925556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.181946, 38.413666, 40.923981>,  <38.553661, 38.265953, 40.921352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181946, 38.413666, 40.923981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166117, 0.402007, 0.900442,
		0.329877, 0.837866, -0.434926,
		-0.929294, 0.369283, 0.006571,
		37.903156, 38.524452, 40.925953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620747, 38.926205, 41.085632>,  <38.553661, 38.265953, 40.921352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620747, 38.926205, 41.085632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235909, 38.893963, 41.189842>,  <38.005005, 38.874619, 41.252369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235909, 38.893963, 41.189842>,  <38.620747, 38.926205, 41.085632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235909, 38.893963, 41.189842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185315, 0.507644, 0.841401,
		-0.200072, 0.857789, -0.473466,
		-0.962096, -0.080600, 0.260526,
		37.947281, 38.869781, 41.268002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357384, 39.624699, 41.371273>,  <38.620747, 38.926205, 41.085632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357384, 39.624699, 41.371273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124176, 39.326000, 41.499310>,  <37.984249, 39.146782, 41.576130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124176, 39.326000, 41.499310>,  <38.357384, 39.624699, 41.371273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124176, 39.326000, 41.499310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100833, 0.324425, 0.940522,
		-0.806175, 0.580621, -0.113850,
		-0.583023, -0.746745, 0.320089,
		37.949268, 39.101978, 41.595337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066074, 39.931629, 41.912861>,  <38.357384, 39.624699, 41.371273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066074, 39.931629, 41.912861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992649, 39.542664, 41.970432>,  <37.948593, 39.309284, 42.004974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992649, 39.542664, 41.970432>,  <38.066074, 39.931629, 41.912861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992649, 39.542664, 41.970432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037641, 0.139360, 0.989526,
		-0.982286, 0.187062, 0.011020,
		-0.183567, -0.972413, 0.143933,
		37.937580, 39.250938, 42.013611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.880451, 38.916363, 43.082764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168774, 38.720974, 42.886059>,  <37.341766, 38.603741, 42.768036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.168774, 38.720974, 42.886059>,  <36.880451, 38.916363, 43.082764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168774, 38.720974, 42.886059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533209, -0.062533, 0.843669,
		-0.442858, -0.870338, 0.215381,
		0.720809, -0.488469, -0.491765,
		37.385017, 38.574432, 42.738529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009598, 38.181602, 43.270676>,  <36.880451, 38.916363, 43.082764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009598, 38.181602, 43.270676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322121, 38.402569, 43.154476>,  <37.509636, 38.535149, 43.084755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322121, 38.402569, 43.154476>,  <37.009598, 38.181602, 43.270676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322121, 38.402569, 43.154476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353539, -0.008134, 0.935384,
		0.514360, -0.833528, -0.201657,
		0.781309, 0.552418, -0.290500,
		37.556515, 38.568295, 43.067326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619068, 37.881195, 43.647064>,  <37.009598, 38.181602, 43.270676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619068, 37.881195, 43.647064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765362, 38.232159, 43.522877>,  <37.853138, 38.442738, 43.448364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765362, 38.232159, 43.522877>,  <37.619068, 37.881195, 43.647064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765362, 38.232159, 43.522877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493576, 0.099962, 0.863939,
		0.789065, -0.469207, -0.396511,
		0.365730, 0.877412, -0.310466,
		37.875080, 38.495384, 43.429737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307083, 37.852112, 43.904205>,  <37.619068, 37.881195, 43.647064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307083, 37.852112, 43.904205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221249, 38.236645, 43.835159>,  <38.169746, 38.467365, 43.793732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221249, 38.236645, 43.835159>,  <38.307083, 37.852112, 43.904205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221249, 38.236645, 43.835159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500586, 0.260008, 0.825718,
		0.838669, 0.090780, -0.537023,
		-0.214589, 0.961330, -0.172617,
		38.156872, 38.525043, 43.783375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911392, 38.200878, 43.988342>,  <38.307083, 37.852112, 43.904205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911392, 38.200878, 43.988342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632496, 38.482433, 44.042603>,  <38.465160, 38.651367, 44.075157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.632496, 38.482433, 44.042603>,  <38.911392, 38.200878, 43.988342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632496, 38.482433, 44.042603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457287, 0.291014, 0.840357,
		0.552042, 0.647959, -0.524785,
		-0.697236, 0.703889, 0.135651,
		38.423325, 38.693600, 44.083298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298485, 38.794754, 44.263245>,  <38.911392, 38.200878, 43.988342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298485, 38.794754, 44.263245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920616, 38.896423, 44.346188>,  <38.693893, 38.957424, 44.395954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920616, 38.896423, 44.346188>,  <39.298485, 38.794754, 44.263245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920616, 38.896423, 44.346188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285809, 0.327569, 0.900562,
		0.160971, 0.909998, -0.382089,
		-0.944670, 0.254168, 0.207356,
		38.637215, 38.972675, 44.408394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327721, 39.411579, 44.703873>,  <39.298485, 38.794754, 44.263245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327721, 39.411579, 44.703873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971527, 39.248192, 44.784058>,  <38.757809, 39.150158, 44.832169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971527, 39.248192, 44.784058>,  <39.327721, 39.411579, 44.703873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971527, 39.248192, 44.784058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045079, 0.359197, 0.932172,
		-0.452768, 0.839125, -0.301447,
		-0.890488, -0.408469, 0.200460,
		38.704380, 39.125652, 44.844196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877026, 39.958324, 44.820610>,  <39.327721, 39.411579, 44.703873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877026, 39.958324, 44.820610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730991, 39.639477, 45.012989>,  <38.643372, 39.448170, 45.128418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.730991, 39.639477, 45.012989>,  <38.877026, 39.958324, 44.820610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730991, 39.639477, 45.012989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048448, 0.532179, 0.845245,
		-0.929713, 0.285284, -0.232909,
		-0.365084, -0.797119, 0.480952,
		38.621468, 39.400341, 45.157276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493053, 40.203953, 45.274258>,  <38.877026, 39.958324, 44.820610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493053, 40.203953, 45.274258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513737, 39.837196, 45.432571>,  <38.526146, 39.617142, 45.527561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513737, 39.837196, 45.432571>,  <38.493053, 40.203953, 45.274258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513737, 39.837196, 45.432571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148196, 0.384881, 0.910991,
		-0.987605, -0.105763, -0.115976,
		0.051713, -0.916886, 0.395784,
		38.529251, 39.562130, 45.551308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005497, 40.250263, 45.824322>,  <38.493053, 40.203953, 45.274258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005497, 40.250263, 45.824322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261013, 39.951832, 45.899479>,  <38.414322, 39.772774, 45.944572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261013, 39.951832, 45.899479>,  <38.005497, 40.250263, 45.824322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261013, 39.951832, 45.899479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042114, 0.209942, 0.976807,
		-0.768225, -0.631890, 0.102689,
		0.638793, -0.746083, 0.187894,
		38.452652, 39.728008, 45.955849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747009, 39.988941, 46.399311>,  <38.005497, 40.250263, 45.824322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747009, 39.988941, 46.399311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131016, 39.881935, 46.366329>,  <38.361420, 39.817730, 46.346539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131016, 39.881935, 46.366329>,  <37.747009, 39.988941, 46.399311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131016, 39.881935, 46.366329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178792, 0.359298, 0.915936,
		-0.215400, -0.894058, 0.392763,
		0.960019, -0.267515, -0.082458,
		38.419022, 39.801682, 46.341591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775028, 39.629837, 46.956436>,  <37.747009, 39.988941, 46.399311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775028, 39.629837, 46.956436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.164234, 39.687943, 46.884720>,  <38.397758, 39.722805, 46.841690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.164234, 39.687943, 46.884720>,  <37.775028, 39.629837, 46.956436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164234, 39.687943, 46.884720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148109, 0.202670, 0.967982,
		0.176942, -0.968414, 0.175687,
		0.973014, 0.145256, -0.179291,
		38.456139, 39.731522, 46.830933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199734, 39.373634, 47.469635>,  <37.775028, 39.629837, 46.956436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199734, 39.373634, 47.469635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520885, 39.570301, 47.334785>,  <38.713577, 39.688301, 47.253876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520885, 39.570301, 47.334785>,  <38.199734, 39.373634, 47.469635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520885, 39.570301, 47.334785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387401, -0.000472, 0.921911,
		0.453113, -0.870784, -0.190850,
		0.802876, 0.491665, -0.337128,
		38.761749, 39.717800, 47.233646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805958, 39.121227, 47.730873>,  <38.199734, 39.373634, 47.469635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805958, 39.121227, 47.730873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901119, 39.494041, 47.621544>,  <38.958218, 39.717731, 47.555946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.901119, 39.494041, 47.621544>,  <38.805958, 39.121227, 47.730873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901119, 39.494041, 47.621544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473120, 0.134556, 0.870662,
		0.848268, -0.336447, -0.408955,
		0.237904, 0.932040, -0.273319,
		38.972492, 39.773655, 47.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452156, 39.196976, 47.854282>,  <38.805958, 39.121227, 47.730873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452156, 39.196976, 47.854282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343910, 39.581905, 47.843723>,  <39.278961, 39.812862, 47.837387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.343910, 39.581905, 47.843723>,  <39.452156, 39.196976, 47.854282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343910, 39.581905, 47.843723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660693, 0.205602, 0.721950,
		0.700178, 0.177931, -0.691441,
		-0.270619, 0.962324, -0.026400,
		39.262726, 39.870602, 47.835804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978004, 39.652622, 47.708332>,  <39.452156, 39.196976, 47.854282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978004, 39.652622, 47.708332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723587, 39.905563, 47.885227>,  <39.570938, 40.057327, 47.991364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723587, 39.905563, 47.885227>,  <39.978004, 39.652622, 47.708332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723587, 39.905563, 47.885227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691472, 0.212676, 0.690388,
		0.342517, 0.744913, -0.572527,
		-0.636041, 0.632356, 0.442241,
		39.532776, 40.095272, 48.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444546, 40.028862, 48.040421>,  <39.978004, 39.652622, 47.708332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444546, 40.028862, 48.040421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118809, 40.190384, 48.207169>,  <39.923367, 40.287296, 48.307217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118809, 40.190384, 48.207169>,  <40.444546, 40.028862, 48.040421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118809, 40.190384, 48.207169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567969, 0.406741, 0.715523,
		0.119372, 0.819454, -0.560576,
		-0.814347, 0.403804, 0.416871,
		39.874504, 40.311523, 48.332230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561401, 40.837288, 48.128967>,  <40.444546, 40.028862, 48.040421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561401, 40.837288, 48.128967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285419, 40.728100, 48.397129>,  <40.119831, 40.662586, 48.558029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285419, 40.728100, 48.397129>,  <40.561401, 40.837288, 48.128967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285419, 40.728100, 48.397129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508584, 0.476229, 0.717320,
		-0.515078, 0.835877, -0.189745,
		-0.689954, -0.272975, 0.670409,
		40.078434, 40.646206, 48.598251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335342, 41.384621, 48.543274>,  <40.561401, 40.837288, 48.128967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335342, 41.384621, 48.543274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254128, 41.066990, 48.772438>,  <40.205399, 40.876411, 48.909935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.254128, 41.066990, 48.772438>,  <40.335342, 41.384621, 48.543274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254128, 41.066990, 48.772438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405884, 0.464208, 0.787255,
		-0.891087, 0.392372, 0.228053,
		-0.203033, -0.794075, 0.572907,
		40.193218, 40.828766, 48.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996662, 41.570911, 49.108448>,  <40.335342, 41.384621, 48.543274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996662, 41.570911, 49.108448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165058, 41.227386, 49.225212>,  <40.266098, 41.021271, 49.295273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165058, 41.227386, 49.225212>,  <39.996662, 41.570911, 49.108448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165058, 41.227386, 49.225212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187582, 0.397296, 0.898314,
		-0.887456, -0.323426, 0.328356,
		0.420992, -0.858808, 0.291914,
		40.291355, 40.969746, 49.312786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648026, 41.415352, 49.790630>,  <39.996662, 41.570911, 49.108448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648026, 41.415352, 49.790630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992786, 41.212780, 49.780315>,  <40.199642, 41.091236, 49.774128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.992786, 41.212780, 49.780315>,  <39.648026, 41.415352, 49.790630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992786, 41.212780, 49.780315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227827, 0.341318, 0.911919,
		-0.453020, -0.791855, 0.409559,
		0.861898, -0.506426, -0.025783,
		40.251354, 41.060852, 49.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743412, 41.196770, 50.499992>,  <39.648026, 41.415352, 49.790630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743412, 41.196770, 50.499992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107468, 41.162212, 50.337914>,  <40.325901, 41.141476, 50.240665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.107468, 41.162212, 50.337914>,  <39.743412, 41.196770, 50.499992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107468, 41.162212, 50.337914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398969, 0.446417, 0.800959,
		0.111689, -0.890644, 0.440770,
		0.910137, -0.086396, -0.405199,
		40.380508, 41.136295, 50.216354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141888, 40.901852, 51.018898>,  <39.743412, 41.196770, 50.499992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141888, 40.901852, 51.018898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341599, 41.139462, 50.766594>,  <40.461426, 41.282028, 50.615211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341599, 41.139462, 50.766594>,  <40.141888, 40.901852, 51.018898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341599, 41.139462, 50.766594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263012, 0.589729, 0.763573,
		0.825557, -0.547134, 0.138204,
		0.499280, 0.594024, -0.630758,
		40.491383, 41.317669, 50.577366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768536, 40.446140, 51.267677>,  <40.141888, 40.901852, 51.018898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768536, 40.446140, 51.267677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835480, 40.160282, 51.539345>,  <39.875648, 39.988766, 51.702343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.835480, 40.160282, 51.539345>,  <39.768536, 40.446140, 51.267677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835480, 40.160282, 51.539345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498336, -0.655723, -0.567177,
		0.850677, -0.243528, -0.465879,
		0.167364, -0.714648, 0.679167,
		39.885689, 39.945889, 51.743095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142834, 39.843777, 51.037029>,  <39.768536, 40.446140, 51.267677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142834, 39.843777, 51.037029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892292, 39.728249, 51.326656>,  <39.741966, 39.658932, 51.500431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.892292, 39.728249, 51.326656>,  <40.142834, 39.843777, 51.037029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892292, 39.728249, 51.326656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528368, -0.525638, -0.666732,
		0.573160, -0.800181, 0.176631,
		-0.626350, -0.288818, 0.724064,
		39.704388, 39.641602, 51.543877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039440, 39.060707, 50.903019>,  <40.142834, 39.843777, 51.037029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039440, 39.060707, 50.903019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737309, 39.174950, 51.138954>,  <39.556030, 39.243496, 51.280514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.737309, 39.174950, 51.138954>,  <40.039440, 39.060707, 50.903019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737309, 39.174950, 51.138954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649759, -0.443616, -0.617267,
		0.085365, -0.849491, 0.520652,
		-0.755332, 0.285605, 0.589834,
		39.510708, 39.260632, 51.315903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522614, 38.494217, 50.795879>,  <40.039440, 39.060707, 50.903019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522614, 38.494217, 50.795879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329842, 38.807144, 50.953728>,  <39.214180, 38.994900, 51.048435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.329842, 38.807144, 50.953728>,  <39.522614, 38.494217, 50.795879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329842, 38.807144, 50.953728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850400, -0.309100, -0.425767,
		-0.211110, -0.540772, 0.814247,
		-0.481927, 0.782319, 0.394618,
		39.185265, 39.041840, 51.072113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980373, 38.183903, 51.295063>,  <39.522614, 38.494217, 50.795879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980373, 38.183903, 51.295063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899624, 38.544865, 51.142796>,  <38.851173, 38.761444, 51.051437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.899624, 38.544865, 51.142796>,  <38.980373, 38.183903, 51.295063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899624, 38.544865, 51.142796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790411, -0.379624, -0.480766,
		-0.578357, 0.203829, 0.789909,
		-0.201874, 0.902407, -0.380667,
		38.839062, 38.815586, 51.028595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319118, 38.207245, 51.313805>,  <38.980373, 38.183903, 51.295063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319118, 38.207245, 51.313805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.421558, 38.501003, 51.062386>,  <38.483025, 38.677258, 50.911533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.421558, 38.501003, 51.062386>,  <38.319118, 38.207245, 51.313805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421558, 38.501003, 51.062386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676113, -0.328629, -0.659450,
		-0.690856, 0.593859, 0.412370,
		0.256103, 0.734394, -0.628551,
		38.498390, 38.721321, 50.873821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660744, 38.335091, 50.927315>,  <38.319118, 38.207245, 51.313805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660744, 38.335091, 50.927315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933968, 38.517204, 50.698879>,  <38.097904, 38.626472, 50.561817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933968, 38.517204, 50.698879>,  <37.660744, 38.335091, 50.927315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933968, 38.517204, 50.698879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474838, -0.317282, -0.820890,
		-0.554935, 0.831894, -0.000537,
		0.683064, 0.455286, -0.571085,
		38.138885, 38.653790, 50.527554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275749, 38.615437, 50.428745>,  <37.660744, 38.335091, 50.927315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275749, 38.615437, 50.428745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650314, 38.571430, 50.295460>,  <37.875053, 38.545025, 50.215488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.650314, 38.571430, 50.295460>,  <37.275749, 38.615437, 50.428745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650314, 38.571430, 50.295460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350903, -0.290362, -0.890257,
		0.001189, 0.950572, -0.310502,
		0.936411, -0.110015, -0.333213,
		37.931236, 38.538425, 50.195496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183052, 38.702244, 49.651707>,  <37.275749, 38.615437, 50.428745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183052, 38.702244, 49.651707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565331, 38.586388, 49.672718>,  <37.794697, 38.516872, 49.685326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565331, 38.586388, 49.672718>,  <37.183052, 38.702244, 49.651707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565331, 38.586388, 49.672718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043421, -0.315205, -0.948030,
		0.291146, 0.903744, -0.313816,
		0.955693, -0.289641, 0.052529,
		37.852039, 38.499496, 49.688477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629135, 39.008728, 49.061836>,  <37.183052, 38.702244, 49.651707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629135, 39.008728, 49.061836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819675, 38.686718, 49.203270>,  <37.934002, 38.493511, 49.288132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819675, 38.686718, 49.203270>,  <37.629135, 39.008728, 49.061836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819675, 38.686718, 49.203270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018716, -0.392770, -0.919446,
		0.879054, 0.444600, -0.172031,
		0.476354, -0.805023, 0.353587,
		37.962582, 38.445210, 49.309345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287155, 38.959831, 48.766541>,  <37.629135, 39.008728, 49.061836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287155, 38.959831, 48.766541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179996, 38.584648, 48.854595>,  <38.115700, 38.359539, 48.907429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179996, 38.584648, 48.854595>,  <38.287155, 38.959831, 48.766541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179996, 38.584648, 48.854595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084152, -0.250398, -0.964479,
		0.959765, -0.239859, 0.146013,
		-0.267900, -0.937960, 0.220138,
		38.099628, 38.303261, 48.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753227, 38.500786, 48.368580>,  <38.287155, 38.959831, 48.766541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753227, 38.500786, 48.368580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433578, 38.288345, 48.481243>,  <38.241791, 38.160881, 48.548840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433578, 38.288345, 48.481243>,  <38.753227, 38.500786, 48.368580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433578, 38.288345, 48.481243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132113, -0.301912, -0.944137,
		0.586471, -0.791692, 0.171099,
		-0.799123, -0.531105, 0.281655,
		38.193840, 38.129013, 48.565739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843193, 37.905399, 48.029781>,  <38.753227, 38.500786, 48.368580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843193, 37.905399, 48.029781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457397, 37.906452, 48.135429>,  <38.225922, 37.907085, 48.198818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457397, 37.906452, 48.135429>,  <38.843193, 37.905399, 48.029781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457397, 37.906452, 48.135429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241682, -0.412272, -0.878420,
		0.106577, -0.911057, 0.398267,
		-0.964485, 0.002634, 0.264124,
		38.168053, 37.907242, 48.214668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682953, 37.334404, 47.706844>,  <38.843193, 37.905399, 48.029781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682953, 37.334404, 47.706844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334400, 37.516998, 47.778751>,  <38.125267, 37.626556, 47.821896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334400, 37.516998, 47.778751>,  <38.682953, 37.334404, 47.706844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334400, 37.516998, 47.778751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345606, -0.311089, -0.885314,
		-0.348217, -0.833570, 0.428843,
		-0.871379, 0.456492, 0.179760,
		38.072987, 37.653942, 47.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181396, 36.920197, 47.408813>,  <38.682953, 37.334404, 47.706844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181396, 36.920197, 47.408813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974636, 37.258003, 47.464817>,  <37.850578, 37.460690, 47.498417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974636, 37.258003, 47.464817>,  <38.181396, 36.920197, 47.408813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974636, 37.258003, 47.464817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428990, -0.114014, -0.896085,
		-0.740798, -0.523248, 0.421224,
		-0.516900, 0.844519, 0.140006,
		37.819565, 37.511360, 47.506821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323910, 36.868992, 47.367237>,  <38.181396, 36.920197, 47.408813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323910, 36.868992, 47.367237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426796, 37.238071, 47.252369>,  <37.488529, 37.459518, 47.183449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426796, 37.238071, 47.252369>,  <37.323910, 36.868992, 47.367237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426796, 37.238071, 47.252369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551283, -0.103957, -0.827816,
		-0.793679, 0.371240, 0.481929,
		0.257218, 0.922699, -0.287167,
		37.503960, 37.514881, 47.166218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755157, 37.154751, 47.151684>,  <37.323910, 36.868992, 47.367237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755157, 37.154751, 47.151684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015396, 37.396797, 46.968136>,  <37.171539, 37.542027, 46.858009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.015396, 37.396797, 46.968136>,  <36.755157, 37.154751, 47.151684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015396, 37.396797, 46.968136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623460, 0.080591, -0.777691,
		-0.433611, 0.792049, 0.429697,
		0.650599, 0.605115, -0.458866,
		37.210575, 37.578331, 46.830475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318207, 37.727158, 46.787823>,  <36.755157, 37.154751, 47.151684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318207, 37.727158, 46.787823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676273, 37.720837, 46.609638>,  <36.891113, 37.717045, 46.502728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676273, 37.720837, 46.609638>,  <36.318207, 37.727158, 46.787823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676273, 37.720837, 46.609638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445707, -0.043993, -0.894097,
		-0.005469, 0.998907, -0.046424,
		0.895162, -0.015802, -0.445460,
		36.944820, 37.716095, 46.476002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235119, 38.176556, 46.262375>,  <36.318207, 37.727158, 46.787823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235119, 38.176556, 46.262375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541798, 37.947300, 46.146660>,  <36.725807, 37.809746, 46.077232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541798, 37.947300, 46.146660>,  <36.235119, 38.176556, 46.262375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541798, 37.947300, 46.146660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407407, -0.086101, -0.909179,
		0.496178, 0.814923, -0.299514,
		0.766699, -0.573139, -0.289283,
		36.771809, 37.775360, 46.059875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464909, 38.444374, 45.545406>,  <36.235119, 38.176556, 46.262375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464909, 38.444374, 45.545406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.604279, 38.074562, 45.607166>,  <36.687901, 37.852673, 45.644222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.604279, 38.074562, 45.607166>,  <36.464909, 38.444374, 45.545406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604279, 38.074562, 45.607166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454612, -0.310729, -0.834730,
		0.819712, 0.220651, -0.528570,
		0.348426, -0.924533, 0.154398,
		36.708805, 37.797203, 45.653484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745129, 38.152992, 44.922859>,  <36.464909, 38.444374, 45.545406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745129, 38.152992, 44.922859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685467, 37.805988, 45.112675>,  <36.649670, 37.597786, 45.226562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685467, 37.805988, 45.112675>,  <36.745129, 38.152992, 44.922859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685467, 37.805988, 45.112675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307282, -0.415481, -0.856127,
		0.939857, -0.273513, -0.204598,
		-0.149155, -0.867506, 0.474538,
		36.640720, 37.545738, 45.255035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.101898, 40.608135, 36.196445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804573, 40.343708, 36.237370>,  <39.626179, 40.185051, 36.261925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804573, 40.343708, 36.237370>,  <40.101898, 40.608135, 36.196445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804573, 40.343708, 36.237370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668723, -0.730436, 0.138829,
		-0.017047, 0.171609, 0.985018,
		-0.743317, -0.661070, 0.102307,
		39.581577, 40.145386, 36.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361462, 40.208344, 36.616207>,  <40.101898, 40.608135, 36.196445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361462, 40.208344, 36.616207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044430, 39.997528, 36.493542>,  <39.854210, 39.871037, 36.419941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.044430, 39.997528, 36.493542>,  <40.361462, 40.208344, 36.616207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044430, 39.997528, 36.493542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499769, -0.849611, 0.168502,
		-0.349352, -0.019710, 0.936784,
		-0.792581, -0.527042, -0.306663,
		39.806656, 39.839417, 36.401543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170856, 39.662216, 37.097168>,  <40.361462, 40.208344, 36.616207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170856, 39.662216, 37.097168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060650, 39.545345, 36.730839>,  <39.994526, 39.475224, 36.511044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.060650, 39.545345, 36.730839>,  <40.170856, 39.662216, 37.097168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060650, 39.545345, 36.730839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524363, -0.844155, 0.111566,
		-0.805690, -0.449484, 0.385781,
		-0.275512, -0.292177, -0.915820,
		39.977997, 39.457691, 36.456093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991207, 38.964966, 37.174183>,  <40.170856, 39.662216, 37.097168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991207, 38.964966, 37.174183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055008, 39.019138, 36.783039>,  <40.093288, 39.051643, 36.548351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.055008, 39.019138, 36.783039>,  <39.991207, 38.964966, 37.174183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055008, 39.019138, 36.783039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457158, -0.888066, -0.048426,
		-0.874966, -0.439314, -0.203564,
		0.159504, 0.135432, -0.977863,
		40.102859, 39.059769, 36.489681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812344, 38.410908, 36.889500>,  <39.991207, 38.964966, 37.174183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812344, 38.410908, 36.889500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039089, 38.549473, 36.590527>,  <40.175137, 38.632610, 36.411140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039089, 38.549473, 36.590527>,  <39.812344, 38.410908, 36.889500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039089, 38.549473, 36.590527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447537, -0.891229, -0.073631,
		-0.691643, -0.292766, -0.660241,
		0.566869, 0.346409, -0.747436,
		40.209148, 38.653397, 36.366295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831951, 37.851273, 36.396111>,  <39.812344, 38.410908, 36.889500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831951, 37.851273, 36.396111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144295, 38.085526, 36.309120>,  <40.331699, 38.226078, 36.256924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.144295, 38.085526, 36.309120>,  <39.831951, 37.851273, 36.396111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144295, 38.085526, 36.309120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561269, -0.810530, -0.167383,
		-0.274297, 0.008639, -0.961606,
		0.780857, 0.585633, -0.217477,
		40.378551, 38.261215, 36.243877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187321, 37.493122, 35.732788>,  <39.831951, 37.851273, 36.396111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187321, 37.493122, 35.732788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443352, 37.759071, 35.886799>,  <40.596970, 37.918640, 35.979206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.443352, 37.759071, 35.886799>,  <40.187321, 37.493122, 35.732788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443352, 37.759071, 35.886799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766079, -0.590433, -0.253991,
		0.058460, 0.457534, -0.887268,
		0.640082, 0.664869, 0.385024,
		40.635376, 37.958530, 36.002308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723373, 37.806023, 35.157372>,  <40.187321, 37.493122, 35.732788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723373, 37.806023, 35.157372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864502, 37.781456, 35.530842>,  <40.949177, 37.766716, 35.754925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864502, 37.781456, 35.530842>,  <40.723373, 37.806023, 35.157372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864502, 37.781456, 35.530842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712131, -0.629640, -0.310520,
		0.606950, 0.774455, -0.178410,
		0.352818, -0.061419, 0.933674,
		40.970348, 37.763031, 35.810944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342365, 37.535255, 35.019302>,  <40.723373, 37.806023, 35.157372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342365, 37.535255, 35.019302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304581, 37.486431, 35.414509>,  <41.281910, 37.457134, 35.651634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304581, 37.486431, 35.414509>,  <41.342365, 37.535255, 35.019302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304581, 37.486431, 35.414509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638458, -0.768907, -0.033953,
		0.763838, 0.627600, 0.150564,
		-0.094461, -0.122063, 0.988017,
		41.276241, 37.449814, 35.710915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982765, 37.525768, 35.213020>,  <41.342365, 37.535255, 35.019302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982765, 37.525768, 35.213020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777248, 37.345642, 35.505112>,  <41.653938, 37.237568, 35.680367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.777248, 37.345642, 35.505112>,  <41.982765, 37.525768, 35.213020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777248, 37.345642, 35.505112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580549, -0.809178, -0.090524,
		0.631649, 0.377423, 0.677179,
		-0.513792, -0.450315, 0.730229,
		41.623112, 37.210548, 35.724182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480484, 37.235340, 35.552357>,  <41.982765, 37.525768, 35.213020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480484, 37.235340, 35.552357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152672, 37.041904, 35.675323>,  <41.955982, 36.925842, 35.749104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152672, 37.041904, 35.675323>,  <42.480484, 37.235340, 35.552357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152672, 37.041904, 35.675323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409192, -0.869437, -0.276841,
		0.401155, -0.101089, 0.910415,
		-0.819534, -0.483591, 0.307414,
		41.906811, 36.896828, 35.767548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743801, 36.644398, 35.929348>,  <42.480484, 37.235340, 35.552357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743801, 36.644398, 35.929348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370296, 36.550804, 35.821018>,  <42.146194, 36.494648, 35.756020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.370296, 36.550804, 35.821018>,  <42.743801, 36.644398, 35.929348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370296, 36.550804, 35.821018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295382, -0.931108, -0.213981,
		-0.202098, -0.279803, 0.938545,
		-0.933759, -0.233984, -0.270824,
		42.090168, 36.480610, 35.739769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572456, 36.062603, 36.311401>,  <42.743801, 36.644398, 35.929348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572456, 36.062603, 36.311401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294888, 36.045311, 36.023903>,  <42.128345, 36.034935, 35.851402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.294888, 36.045311, 36.023903>,  <42.572456, 36.062603, 36.311401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294888, 36.045311, 36.023903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160020, -0.982493, -0.095402,
		-0.702041, -0.181216, 0.688694,
		-0.693925, -0.043228, -0.718748,
		42.086708, 36.032341, 35.808277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215561, 35.417225, 36.392529>,  <42.572456, 36.062603, 36.311401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215561, 35.417225, 36.392529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.141037, 35.536873, 36.018188>,  <42.096321, 35.608662, 35.793583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.141037, 35.536873, 36.018188>,  <42.215561, 35.417225, 36.392529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141037, 35.536873, 36.018188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073228, -0.945652, -0.316827,
		-0.979758, -0.127560, 0.154283,
		-0.186312, 0.299116, -0.935851,
		42.085144, 35.626606, 35.737434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842525, 34.903923, 36.108616>,  <42.215561, 35.417225, 36.392529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842525, 34.903923, 36.108616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974606, 35.068455, 35.768787>,  <42.053852, 35.167175, 35.564892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974606, 35.068455, 35.768787>,  <41.842525, 34.903923, 36.108616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974606, 35.068455, 35.768787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186801, -0.910731, -0.368340,
		-0.925242, -0.037075, -0.377561,
		0.330201, 0.411332, -0.849572,
		42.073666, 35.191853, 35.513916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556816, 34.451252, 35.540974>,  <41.842525, 34.903923, 36.108616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556816, 34.451252, 35.540974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856140, 34.667244, 35.386860>,  <42.035736, 34.796841, 35.294392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856140, 34.667244, 35.386860>,  <41.556816, 34.451252, 35.540974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856140, 34.667244, 35.386860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250123, -0.767638, -0.590060,
		-0.614382, 0.345181, -0.709496,
		0.748314, 0.539984, -0.385285,
		42.080635, 34.829239, 35.271275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540489, 34.304878, 34.821190>,  <41.556816, 34.451252, 35.540974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540489, 34.304878, 34.821190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910633, 34.437317, 34.895027>,  <42.132721, 34.516781, 34.939331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.910633, 34.437317, 34.895027>,  <41.540489, 34.304878, 34.821190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910633, 34.437317, 34.895027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361204, -0.622336, -0.694428,
		-0.115044, 0.709275, -0.695481,
		0.925363, 0.331100, 0.184597,
		42.188240, 34.536648, 34.950405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805969, 34.489552, 34.161480>,  <41.540489, 34.304878, 34.821190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805969, 34.489552, 34.161480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111607, 34.418633, 34.409584>,  <42.294991, 34.376083, 34.558449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111607, 34.418633, 34.409584>,  <41.805969, 34.489552, 34.161480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111607, 34.418633, 34.409584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373906, -0.661803, -0.649778,
		0.525695, 0.728412, -0.439387,
		0.764093, -0.177295, 0.620264,
		42.340836, 34.365444, 34.595665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388020, 34.666954, 33.697319>,  <41.805969, 34.489552, 34.161480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388020, 34.666954, 33.697319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514702, 34.428139, 33.992138>,  <42.590714, 34.284851, 34.169029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514702, 34.428139, 33.992138>,  <42.388020, 34.666954, 33.697319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514702, 34.428139, 33.992138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412246, -0.613181, -0.673841,
		0.854254, 0.517256, 0.051928,
		0.316708, -0.597039, 0.737049,
		42.609715, 34.249027, 34.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903721, 34.283333, 33.445759>,  <42.388020, 34.666954, 33.697319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903721, 34.283333, 33.445759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872993, 34.067627, 33.781208>,  <42.854557, 33.938206, 33.982479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872993, 34.067627, 33.781208>,  <42.903721, 34.283333, 33.445759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872993, 34.067627, 33.781208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265356, -0.821834, -0.504158,
		0.961085, 0.183805, 0.206230,
		-0.076821, -0.539263, 0.838626,
		42.849949, 33.905849, 34.032795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584061, 33.982483, 33.547661>,  <42.903721, 34.283333, 33.445759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584061, 33.982483, 33.547661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280510, 33.784374, 33.716808>,  <43.098381, 33.665508, 33.818295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280510, 33.784374, 33.716808>,  <43.584061, 33.982483, 33.547661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280510, 33.784374, 33.716808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144884, -0.761452, -0.631823,
		0.634914, -0.418209, 0.649604,
		-0.758876, -0.495270, 0.422865,
		43.052849, 33.635792, 33.843666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818462, 34.606098, 33.566463>,  <43.584061, 33.982483, 33.547661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818462, 34.606098, 33.566463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590450, 34.658691, 33.242050>,  <43.453644, 34.690247, 33.047401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590450, 34.658691, 33.242050>,  <43.818462, 34.606098, 33.566463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590450, 34.658691, 33.242050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103414, -0.967780, -0.229580,
		-0.815091, -0.214740, 0.538064,
		-0.570028, 0.131485, -0.811036,
		43.419441, 34.698135, 32.998737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120026, 35.036659, 34.050125>,  <43.818462, 34.606098, 33.566463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120026, 35.036659, 34.050125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.115067, 35.402794, 33.889130>,  <44.112091, 35.622475, 33.792534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.115067, 35.402794, 33.889130>,  <44.120026, 35.036659, 34.050125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115067, 35.402794, 33.889130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736385, 0.280663, 0.615601,
		0.676449, -0.288756, -0.677523,
		-0.012397, 0.915340, -0.402490,
		44.111347, 35.677395, 33.768383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.865284, 35.320534, 34.346611>,  <44.120026, 35.036659, 34.050125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.865284, 35.320534, 34.346611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145370, 35.604961, 34.372173>,  <45.313423, 35.775620, 34.387508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145370, 35.604961, 34.372173>,  <44.865284, 35.320534, 34.346611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145370, 35.604961, 34.372173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711694, 0.688130, 0.141316,
		0.056513, -0.144429, 0.987900,
		0.700213, 0.711068, 0.063901,
		45.355434, 35.818283, 34.391342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705784, 35.673374, 34.888844>,  <44.865284, 35.320534, 34.346611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705784, 35.673374, 34.888844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949299, 35.935848, 34.710495>,  <45.095409, 36.093334, 34.603485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949299, 35.935848, 34.710495>,  <44.705784, 35.673374, 34.888844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949299, 35.935848, 34.710495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718931, 0.693949, 0.039659,
		0.335434, 0.296404, 0.894219,
		0.608788, 0.656185, -0.445868,
		45.131935, 36.132702, 34.576733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786457, 36.319721, 35.330620>,  <44.705784, 35.673374, 34.888844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786457, 36.319721, 35.330620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843136, 36.383770, 34.939869>,  <44.877144, 36.422199, 34.705418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843136, 36.383770, 34.939869>,  <44.786457, 36.319721, 35.330620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843136, 36.383770, 34.939869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760130, 0.649761, -0.003753,
		0.634134, 0.743083, 0.213782,
		0.141696, 0.160122, -0.976874,
		44.885643, 36.431808, 34.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669662, 37.069958, 35.262066>,  <44.786457, 36.319721, 35.330620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669662, 37.069958, 35.262066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639442, 36.932098, 34.887791>,  <44.621311, 36.849380, 34.663227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639442, 36.932098, 34.887791>,  <44.669662, 37.069958, 35.262066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639442, 36.932098, 34.887791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741237, 0.647076, -0.178492,
		0.666977, 0.680080, -0.304357,
		-0.075553, -0.344651, -0.935686,
		44.616776, 36.828705, 34.607086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671116, 37.708511, 34.868870>,  <44.669662, 37.069958, 35.262066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671116, 37.708511, 34.868870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499771, 37.412109, 34.662022>,  <44.396965, 37.234268, 34.537910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.499771, 37.412109, 34.662022>,  <44.671116, 37.708511, 34.868870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499771, 37.412109, 34.662022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735453, 0.618408, -0.276913,
		0.524987, 0.261701, -0.809877,
		-0.428366, -0.741003, -0.517125,
		44.371262, 37.189808, 34.506886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581333, 38.019344, 34.297840>,  <44.671116, 37.708511, 34.868870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581333, 38.019344, 34.297840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362629, 37.689301, 34.240936>,  <44.231407, 37.491272, 34.206795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.362629, 37.689301, 34.240936>,  <44.581333, 38.019344, 34.297840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362629, 37.689301, 34.240936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693488, 0.541482, -0.475259,
		0.469176, -0.161196, -0.868269,
		-0.546762, -0.825114, -0.142263,
		44.198601, 37.441765, 34.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400791, 37.916477, 33.528049>,  <44.581333, 38.019344, 34.297840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400791, 37.916477, 33.528049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.117462, 37.754112, 33.759052>,  <43.947464, 37.656693, 33.897652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.117462, 37.754112, 33.759052>,  <44.400791, 37.916477, 33.528049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117462, 37.754112, 33.759052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701859, 0.492295, -0.514821,
		-0.075328, -0.769985, -0.633599,
		-0.708322, -0.405917, 0.577504,
		43.904964, 37.632336, 33.932304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871880, 37.689129, 33.049339>,  <44.400791, 37.916477, 33.528049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871880, 37.689129, 33.049339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688835, 37.716656, 33.403934>,  <43.579010, 37.733173, 33.616692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.688835, 37.716656, 33.403934>,  <43.871880, 37.689129, 33.049339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688835, 37.716656, 33.403934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727127, 0.544848, -0.417645,
		-0.511741, -0.835706, -0.199289,
		-0.457611, 0.068818, 0.886486,
		43.551552, 37.737301, 33.669880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109474, 37.563961, 32.925949>,  <43.871880, 37.689129, 33.049339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109474, 37.563961, 32.925949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133572, 37.737846, 33.285370>,  <43.148029, 37.842178, 33.501022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133572, 37.737846, 33.285370>,  <43.109474, 37.563961, 32.925949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133572, 37.737846, 33.285370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649408, 0.700696, -0.295455,
		-0.758050, -0.565729, 0.324515,
		0.060239, 0.434713, 0.898552,
		43.151642, 37.868259, 33.554935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460011, 37.794380, 33.014874>,  <43.109474, 37.563961, 32.925949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460011, 37.794380, 33.014874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610580, 37.975586, 33.338127>,  <42.700924, 38.084309, 33.532078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.610580, 37.975586, 33.338127>,  <42.460011, 37.794380, 33.014874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610580, 37.975586, 33.338127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654123, 0.747681, -0.114438,
		-0.656070, -0.485542, 0.577773,
		0.376426, 0.453014, 0.808135,
		42.723507, 38.111488, 33.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947380, 37.887390, 33.516106>,  <42.460011, 37.794380, 33.014874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947380, 37.887390, 33.516106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222988, 38.163830, 33.603401>,  <42.388351, 38.329693, 33.655781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.222988, 38.163830, 33.603401>,  <41.947380, 37.887390, 33.516106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222988, 38.163830, 33.603401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695355, 0.715277, -0.069710,
		-0.204281, -0.103725, 0.973401,
		0.689021, 0.691100, 0.218243,
		42.429695, 38.371159, 33.668873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796478, 38.237995, 34.082401>,  <41.947380, 37.887390, 33.516106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796478, 38.237995, 34.082401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036816, 38.497677, 33.895840>,  <42.181019, 38.653484, 33.783905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.036816, 38.497677, 33.895840>,  <41.796478, 38.237995, 34.082401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036816, 38.497677, 33.895840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681646, 0.720876, 0.125287,
		0.417554, 0.242644, 0.875655,
		0.600839, 0.649201, -0.466402,
		42.217068, 38.692436, 33.755920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601585, 38.838223, 34.450478>,  <41.796478, 38.237995, 34.082401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601585, 38.838223, 34.450478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 38.975735, 34.131996>,  <41.920219, 39.058243, 33.940907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 38.975735, 34.131996>,  <41.601585, 38.838223, 34.450478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800732, 38.975735, 34.131996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726361, 0.666906, -0.166242,
		0.473845, 0.661100, 0.581737,
		0.497866, 0.343778, -0.796207,
		41.950092, 39.078869, 33.893135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759117, 39.504101, 34.534634>,  <41.601585, 38.838223, 34.450478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759117, 39.504101, 34.534634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736168, 39.440819, 34.140339>,  <41.722397, 39.402851, 33.903763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736168, 39.440819, 34.140339>,  <41.759117, 39.504101, 34.534634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736168, 39.440819, 34.140339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707983, 0.702595, -0.071551,
		0.703894, 0.693780, -0.152321,
		-0.057379, -0.158205, -0.985738,
		41.718956, 39.393360, 33.844616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611958, 40.146839, 34.312115>,  <41.759117, 39.504101, 34.534634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611958, 40.146839, 34.312115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507114, 39.907379, 34.009350>,  <41.444206, 39.763702, 33.827690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507114, 39.907379, 34.009350>,  <41.611958, 40.146839, 34.312115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507114, 39.907379, 34.009350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846156, 0.519702, -0.118026,
		0.464024, 0.609529, -0.642772,
		-0.262109, -0.598652, -0.756911,
		41.428482, 39.727783, 33.782276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491680, 40.580547, 33.749588>,  <41.611958, 40.146839, 34.312115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491680, 40.580547, 33.749588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292225, 40.237823, 33.697083>,  <41.172550, 40.032188, 33.665581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292225, 40.237823, 33.697083>,  <41.491680, 40.580547, 33.749588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292225, 40.237823, 33.697083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824791, 0.515572, -0.232176,
		0.266607, -0.007507, -0.963776,
		-0.498639, -0.856813, -0.131263,
		41.142632, 39.980778, 33.657703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146652, 40.830688, 33.162476>,  <41.491680, 40.580547, 33.749588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146652, 40.830688, 33.162476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.943127, 40.500347, 33.259701>,  <40.821011, 40.302143, 33.318035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.943127, 40.500347, 33.259701>,  <41.146652, 40.830688, 33.162476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943127, 40.500347, 33.259701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846317, 0.428147, -0.316918,
		0.157660, -0.366961, -0.916778,
		-0.508813, -0.825851, 0.243064,
		40.790482, 40.252590, 33.332619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681252, 40.803814, 32.667118>,  <41.146652, 40.830688, 33.162476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681252, 40.803814, 32.667118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 40.535477, 32.917053>,  <40.425617, 40.374474, 33.067013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.521481, 40.535477, 32.917053>,  <40.681252, 40.803814, 32.667118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521481, 40.535477, 32.917053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916246, 0.269211, -0.296680,
		0.030814, -0.691007, -0.722191,
		-0.399429, -0.670847, 0.624837,
		40.401653, 40.334221, 33.104504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363216, 40.366482, 32.290970>,  <40.681252, 40.803814, 32.667118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363216, 40.366482, 32.290970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188721, 40.316006, 32.647346>,  <40.084023, 40.285721, 32.861172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.188721, 40.316006, 32.647346>,  <40.363216, 40.366482, 32.290970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188721, 40.316006, 32.647346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895057, 0.162713, -0.415207,
		-0.092573, -0.978571, -0.183928,
		-0.436237, -0.126189, 0.890940,
		40.057850, 40.278149, 32.914627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.592220, 38.863289, 39.234165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526360, 38.554829, 39.480164>,  <37.486843, 38.369751, 39.627762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526360, 38.554829, 39.480164>,  <37.592220, 38.863289, 39.234165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526360, 38.554829, 39.480164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009343, -0.624695, -0.780813,
		0.986308, -0.122814, 0.110060,
		-0.164649, -0.771150, 0.614994,
		37.476963, 38.323483, 39.664661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158566, 38.354092, 39.119919>,  <37.592220, 38.863289, 39.234165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158566, 38.354092, 39.119919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844391, 38.166718, 39.281742>,  <37.655888, 38.054295, 39.378834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844391, 38.166718, 39.281742>,  <38.158566, 38.354092, 39.119919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844391, 38.166718, 39.281742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053808, -0.702823, -0.709327,
		0.616601, -0.535362, 0.577227,
		-0.785435, -0.468431, 0.404555,
		37.608761, 38.026188, 39.403107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302826, 37.663258, 39.035767>,  <38.158566, 38.354092, 39.119919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302826, 37.663258, 39.035767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908062, 37.659271, 39.100159>,  <37.671204, 37.656879, 39.138794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908062, 37.659271, 39.100159>,  <38.302826, 37.663258, 39.035767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908062, 37.659271, 39.100159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095503, -0.768177, -0.633075,
		0.129970, -0.640160, 0.757168,
		-0.986908, -0.009969, 0.160977,
		37.611988, 37.656281, 39.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080856, 36.960209, 39.366405>,  <38.302826, 37.663258, 39.035767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080856, 36.960209, 39.366405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765522, 37.119923, 39.179176>,  <37.576321, 37.215752, 39.066837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765522, 37.119923, 39.179176>,  <38.080856, 36.960209, 39.366405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765522, 37.119923, 39.179176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013046, -0.749780, -0.661559,
		-0.615105, -0.527638, 0.585870,
		-0.788337, 0.399285, -0.468077,
		37.529022, 37.239708, 39.038754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706459, 36.477642, 39.196667>,  <38.080856, 36.960209, 39.366405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706459, 36.477642, 39.196667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569881, 36.736618, 38.924129>,  <37.487934, 36.892002, 38.760605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569881, 36.736618, 38.924129>,  <37.706459, 36.477642, 39.196667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569881, 36.736618, 38.924129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015391, -0.728667, -0.684695,
		-0.939775, -0.223302, 0.258767,
		-0.341448, 0.647441, -0.681346,
		37.467445, 36.930851, 38.719727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260639, 36.083752, 38.839241>,  <37.706459, 36.477642, 39.196667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260639, 36.083752, 38.839241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328484, 36.382565, 38.582127>,  <37.369190, 36.561852, 38.427856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328484, 36.382565, 38.582127>,  <37.260639, 36.083752, 38.839241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328484, 36.382565, 38.582127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152092, -0.624580, -0.766007,
		-0.973703, 0.227690, 0.007679,
		0.169616, 0.747032, -0.642786,
		37.379368, 36.606674, 38.389290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755417, 36.064266, 38.286190>,  <37.260639, 36.083752, 38.839241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755417, 36.064266, 38.286190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037243, 36.294994, 38.120846>,  <37.206341, 36.433430, 38.021641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037243, 36.294994, 38.120846>,  <36.755417, 36.064266, 38.286190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037243, 36.294994, 38.120846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149586, -0.448683, -0.881083,
		-0.693693, 0.682615, -0.229843,
		0.704567, 0.576820, -0.413358,
		37.248611, 36.468040, 37.996838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478378, 36.363365, 37.702103>,  <36.755417, 36.064266, 38.286190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478378, 36.363365, 37.702103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873283, 36.375095, 37.639545>,  <37.110226, 36.382133, 37.602013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873283, 36.375095, 37.639545>,  <36.478378, 36.363365, 37.702103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873283, 36.375095, 37.639545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132666, -0.390960, -0.910796,
		-0.087855, 0.919940, -0.382088,
		0.987259, 0.029328, -0.156393,
		37.169460, 36.383892, 37.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461563, 36.498898, 37.034733>,  <36.478378, 36.363365, 37.702103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461563, 36.498898, 37.034733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844593, 36.393883, 37.082260>,  <37.074413, 36.330872, 37.110775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844593, 36.393883, 37.082260>,  <36.461563, 36.498898, 37.034733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844593, 36.393883, 37.082260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054586, -0.570093, -0.819765,
		0.282958, 0.778503, -0.560239,
		0.957578, -0.262540, 0.118818,
		37.131866, 36.315121, 37.117905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826027, 36.432251, 36.325260>,  <36.461563, 36.498898, 37.034733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826027, 36.432251, 36.325260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000668, 36.201408, 36.601326>,  <37.105450, 36.062904, 36.766968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000668, 36.201408, 36.601326>,  <36.826027, 36.432251, 36.325260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000668, 36.201408, 36.601326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167661, -0.701514, -0.692653,
		0.883896, 0.418126, -0.209523,
		0.436599, -0.577104, 0.690168,
		37.131649, 36.028278, 36.808376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388275, 36.156395, 35.935307>,  <36.826027, 36.432251, 36.325260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388275, 36.156395, 35.935307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416882, 35.915955, 36.253693>,  <37.434044, 35.771690, 36.444725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416882, 35.915955, 36.253693>,  <37.388275, 36.156395, 35.935307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416882, 35.915955, 36.253693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159753, -0.780808, -0.604002,
		0.984563, 0.170352, 0.040189,
		0.071513, -0.601099, 0.795969,
		37.438335, 35.735626, 36.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977882, 35.780624, 35.868435>,  <37.388275, 36.156395, 35.935307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977882, 35.780624, 35.868435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728554, 35.565117, 36.095131>,  <37.578957, 35.435810, 36.231148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728554, 35.565117, 36.095131>,  <37.977882, 35.780624, 35.868435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728554, 35.565117, 36.095131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016803, -0.733823, -0.679133,
		0.781782, -0.413798, 0.466463,
		-0.623325, -0.538772, 0.566737,
		37.541557, 35.403484, 36.265152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218685, 35.056973, 35.835701>,  <37.977882, 35.780624, 35.868435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218685, 35.056973, 35.835701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825134, 35.088963, 35.899685>,  <37.589005, 35.108158, 35.938076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825134, 35.088963, 35.899685>,  <38.218685, 35.056973, 35.835701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825134, 35.088963, 35.899685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166872, -0.732215, -0.660314,
		0.064317, -0.676361, 0.733756,
		-0.983879, 0.079974, 0.159960,
		37.529972, 35.112953, 35.947674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793579, 34.776775, 35.330940>,  <38.218685, 35.056973, 35.835701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793579, 34.776775, 35.330940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848660, 35.125492, 35.518990>,  <38.881710, 35.334721, 35.631821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848660, 35.125492, 35.518990>,  <38.793579, 34.776775, 35.330940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848660, 35.125492, 35.518990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896612, 0.091963, -0.433162,
		-0.420862, 0.481165, -0.768996,
		0.137703, 0.871793, 0.470122,
		38.889969, 35.387032, 35.660027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781132, 34.010403, 35.603855>,  <38.793579, 34.776775, 35.330940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781132, 34.010403, 35.603855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929913, 33.647236, 35.681141>,  <39.019180, 33.429337, 35.727512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929913, 33.647236, 35.681141>,  <38.781132, 34.010403, 35.603855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929913, 33.647236, 35.681141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489153, -0.014813, 0.872072,
		-0.788909, -0.418882, -0.449622,
		0.371955, -0.907920, 0.193211,
		39.041500, 33.374859, 35.739105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248779, 33.546513, 35.956928>,  <38.781132, 34.010403, 35.603855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248779, 33.546513, 35.956928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597282, 33.372513, 36.047874>,  <38.806385, 33.268112, 36.102444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597282, 33.372513, 36.047874>,  <38.248779, 33.546513, 35.956928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597282, 33.372513, 36.047874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244172, 0.017731, 0.969570,
		-0.425791, -0.900258, -0.090765,
		0.871253, -0.434996, 0.227367,
		38.858658, 33.242016, 36.116085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121189, 32.919476, 36.389595>,  <38.248779, 33.546513, 35.956928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121189, 32.919476, 36.389595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499954, 33.004894, 36.485729>,  <38.727211, 33.056145, 36.543407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499954, 33.004894, 36.485729>,  <38.121189, 32.919476, 36.389595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499954, 33.004894, 36.485729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253317, 0.035260, 0.966740,
		0.197977, -0.976295, 0.087485,
		0.946908, 0.213554, 0.240331,
		38.784027, 33.068958, 36.557827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310944, 32.533596, 36.992313>,  <38.121189, 32.919476, 36.389595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310944, 32.533596, 36.992313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596554, 32.813595, 36.997509>,  <38.767921, 32.981594, 37.000626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596554, 32.813595, 36.997509>,  <38.310944, 32.533596, 36.992313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596554, 32.813595, 36.997509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000132, -0.018415, 0.999830,
		0.700121, -0.713905, -0.013056,
		0.714024, 0.700001, 0.012987,
		38.810760, 33.023594, 37.001404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784134, 32.241299, 37.498337>,  <38.310944, 32.533596, 36.992313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784134, 32.241299, 37.498337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839344, 32.636940, 37.477852>,  <38.872471, 32.874325, 37.465561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839344, 32.636940, 37.477852>,  <38.784134, 32.241299, 37.498337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839344, 32.636940, 37.477852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070468, 0.041770, 0.996639,
		0.987919, -0.141170, -0.063935,
		0.138025, 0.989104, -0.051213,
		38.880753, 32.933670, 37.462486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339798, 32.335083, 37.946133>,  <38.784134, 32.241299, 37.498337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339798, 32.335083, 37.946133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164833, 32.691422, 37.897022>,  <39.059856, 32.905224, 37.867558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164833, 32.691422, 37.897022>,  <39.339798, 32.335083, 37.946133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164833, 32.691422, 37.897022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099888, 0.183812, 0.977873,
		0.893698, 0.415467, -0.169385,
		-0.437409, 0.890842, -0.122773,
		39.033611, 32.958675, 37.860191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645653, 32.838524, 38.284924>,  <39.339798, 32.335083, 37.946133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645653, 32.838524, 38.284924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311485, 33.052364, 38.233883>,  <39.110985, 33.180668, 38.203259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311485, 33.052364, 38.233883>,  <39.645653, 32.838524, 38.284924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311485, 33.052364, 38.233883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119603, 0.403427, 0.907161,
		0.536443, 0.742598, -0.400970,
		-0.835419, 0.534597, -0.127598,
		39.060860, 33.212742, 38.195602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719196, 33.164295, 38.751484>,  <39.645653, 32.838524, 38.284924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719196, 33.164295, 38.751484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334892, 33.252354, 38.683987>,  <39.104309, 33.305187, 38.643490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334892, 33.252354, 38.683987>,  <39.719196, 33.164295, 38.751484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334892, 33.252354, 38.683987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101447, 0.287314, 0.952449,
		0.258156, 0.932195, -0.253708,
		-0.960762, 0.220142, -0.168741,
		39.046665, 33.318398, 38.633366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637451, 33.917984, 39.071518>,  <39.719196, 33.164295, 38.751484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637451, 33.917984, 39.071518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267902, 33.767101, 39.045647>,  <39.046173, 33.676571, 39.030125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267902, 33.767101, 39.045647>,  <39.637451, 33.917984, 39.071518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267902, 33.767101, 39.045647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168359, 0.248800, 0.953810,
		-0.343688, 0.892085, -0.293364,
		-0.923869, -0.377203, -0.064681,
		38.990742, 33.653942, 39.026241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203770, 34.420326, 39.369892>,  <39.637451, 33.917984, 39.071518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203770, 34.420326, 39.369892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016907, 34.068634, 39.407234>,  <38.904789, 33.857620, 39.429642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016907, 34.068634, 39.407234>,  <39.203770, 34.420326, 39.369892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016907, 34.068634, 39.407234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292157, 0.253158, 0.922256,
		-0.834508, 0.403568, -0.375139,
		-0.467162, -0.879229, 0.093358,
		38.876759, 33.804867, 39.435242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515667, 34.534004, 39.695271>,  <39.203770, 34.420326, 39.369892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515667, 34.534004, 39.695271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594757, 34.146481, 39.755032>,  <38.642212, 33.913967, 39.790890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594757, 34.146481, 39.755032>,  <38.515667, 34.534004, 39.695271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594757, 34.146481, 39.755032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445478, 0.046956, 0.894061,
		-0.873186, -0.243337, -0.422296,
		0.197729, -0.968804, 0.149403,
		38.654076, 33.855839, 39.799854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019714, 34.377697, 40.143818>,  <38.515667, 34.534004, 39.695271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019714, 34.377697, 40.143818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272343, 34.069557, 40.178875>,  <38.423920, 33.884674, 40.199909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272343, 34.069557, 40.178875>,  <38.019714, 34.377697, 40.143818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272343, 34.069557, 40.178875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121410, 0.013379, 0.992512,
		-0.765752, -0.637484, -0.085078,
		0.631572, -0.770348, 0.087642,
		38.461815, 33.838451, 40.205166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735191, 33.765045, 40.736420>,  <38.019714, 34.377697, 40.143818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735191, 33.765045, 40.736420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132355, 33.768814, 40.689014>,  <38.370651, 33.771076, 40.660572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132355, 33.768814, 40.689014>,  <37.735191, 33.765045, 40.736420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132355, 33.768814, 40.689014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113793, 0.213257, 0.970347,
		0.034413, -0.976951, 0.210672,
		0.992908, 0.009420, -0.118509,
		38.430225, 33.771641, 40.653461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876114, 33.568287, 41.315514>,  <37.735191, 33.765045, 40.736420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876114, 33.568287, 41.315514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203819, 33.733624, 41.156536>,  <38.400444, 33.832825, 41.061150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203819, 33.733624, 41.156536>,  <37.876114, 33.568287, 41.315514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203819, 33.733624, 41.156536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307355, 0.268593, 0.912902,
		0.484088, -0.870063, 0.093006,
		0.819263, 0.413339, -0.397441,
		38.449600, 33.857624, 41.037304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926857, 32.906708, 41.622643>,  <37.876114, 33.568287, 41.315514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926857, 32.906708, 41.622643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802216, 32.571903, 41.802559>,  <37.727428, 32.371021, 41.910507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802216, 32.571903, 41.802559>,  <37.926857, 32.906708, 41.622643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802216, 32.571903, 41.802559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661594, -0.148658, -0.734979,
		0.682051, -0.526604, -0.507439,
		-0.311608, -0.837012, 0.449790,
		37.708733, 32.320801, 41.937496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952038, 32.398449, 41.103432>,  <37.926857, 32.906708, 41.622643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952038, 32.398449, 41.103432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699093, 32.255604, 41.378410>,  <37.547325, 32.169895, 41.543396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699093, 32.255604, 41.378410>,  <37.952038, 32.398449, 41.103432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699093, 32.255604, 41.378410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670766, -0.191518, -0.716515,
		0.387538, -0.914214, -0.118433,
		-0.632366, -0.357118, 0.687445,
		37.509384, 32.148468, 41.584644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584106, 31.851791, 40.818489>,  <37.952038, 32.398449, 41.103432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584106, 31.851791, 40.818489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350620, 31.970388, 41.120846>,  <37.210529, 32.041546, 41.302258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350620, 31.970388, 41.120846>,  <37.584106, 31.851791, 40.818489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350620, 31.970388, 41.120846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802370, -0.067995, -0.592941,
		-0.124408, -0.952611, 0.277589,
		-0.583717, 0.296495, 0.755887,
		37.175507, 32.059338, 41.347610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125660, 31.360792, 40.961281>,  <37.584106, 31.851791, 40.818489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125660, 31.360792, 40.961281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950451, 31.697723, 41.086895>,  <36.845325, 31.899881, 41.162262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950451, 31.697723, 41.086895>,  <37.125660, 31.360792, 40.961281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950451, 31.697723, 41.086895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800637, -0.206686, -0.562372,
		-0.408796, -0.497757, 0.764934,
		-0.438026, 0.842329, 0.314030,
		36.819042, 31.950422, 41.181103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368431, 31.153345, 41.243092>,  <37.125660, 31.360792, 40.961281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368431, 31.153345, 41.243092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364620, 31.549234, 41.186020>,  <36.362335, 31.786768, 41.151775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364620, 31.549234, 41.186020>,  <36.368431, 31.153345, 41.243092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364620, 31.549234, 41.186020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915359, -0.066068, -0.397183,
		-0.402527, 0.126818, 0.906581,
		-0.009526, 0.989724, -0.142678,
		36.361763, 31.846151, 41.143215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779778, 31.318829, 41.439850>,  <36.368431, 31.153345, 41.243092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779778, 31.318829, 41.439850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889446, 31.628510, 41.211658>,  <35.955246, 31.814318, 41.074745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889446, 31.628510, 41.211658>,  <35.779778, 31.318829, 41.439850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889446, 31.628510, 41.211658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916036, 0.029658, -0.399997,
		-0.292760, 0.632243, 0.717328,
		0.274170, 0.774202, -0.570475,
		35.971699, 31.860769, 41.040516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214180, 31.788418, 41.441662>,  <35.779778, 31.318829, 41.439850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214180, 31.788418, 41.441662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426483, 31.896475, 41.120335>,  <35.553867, 31.961309, 40.927540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426483, 31.896475, 41.120335>,  <35.214180, 31.788418, 41.441662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426483, 31.896475, 41.120335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847078, 0.138397, -0.513133,
		-0.027442, 0.952822, 0.302287,
		0.530760, 0.270142, -0.803316,
		35.585712, 31.977518, 40.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843166, 32.405048, 41.072098>,  <35.214180, 31.788418, 41.441662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843166, 32.405048, 41.072098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100349, 32.271332, 40.796459>,  <35.254658, 32.191101, 40.631077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100349, 32.271332, 40.796459>,  <34.843166, 32.405048, 41.072098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100349, 32.271332, 40.796459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765302, -0.244732, -0.595331,
		0.030371, 0.910140, -0.413187,
		0.642955, -0.334294, -0.689099,
		35.293236, 32.171043, 40.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632481, 32.702553, 40.554840>,  <34.843166, 32.405048, 41.072098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632481, 32.702553, 40.554840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849277, 32.399940, 40.408466>,  <34.979355, 32.218372, 40.320641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849277, 32.399940, 40.408466>,  <34.632481, 32.702553, 40.554840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849277, 32.399940, 40.408466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766140, -0.265859, -0.585105,
		0.345360, 0.597483, -0.723700,
		0.541992, -0.756527, -0.365939,
		35.011875, 32.172981, 40.298683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601112, 32.753208, 39.841274>,  <34.632481, 32.702553, 40.554840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601112, 32.753208, 39.841274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682770, 32.368057, 39.911926>,  <34.731762, 32.136967, 39.954315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682770, 32.368057, 39.911926>,  <34.601112, 32.753208, 39.841274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682770, 32.368057, 39.911926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746121, -0.269841, -0.608678,
		0.633743, -0.007530, -0.773508,
		0.204141, -0.962875, 0.176627,
		34.744011, 32.079193, 39.964916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767681, 32.369720, 39.162579>,  <34.601112, 32.753208, 39.841274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767681, 32.369720, 39.162579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630161, 32.107300, 39.431324>,  <34.547649, 31.949846, 39.592571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630161, 32.107300, 39.431324>,  <34.767681, 32.369720, 39.162579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630161, 32.107300, 39.431324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824640, -0.131311, -0.550205,
		0.449187, -0.743204, -0.495863,
		-0.343802, -0.656053, 0.671859,
		34.527020, 31.910484, 39.632881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656914, 31.565292, 38.959187>,  <34.767681, 32.369720, 39.162579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656914, 31.565292, 38.959187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387253, 31.697239, 39.223522>,  <34.225456, 31.776407, 39.382122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387253, 31.697239, 39.223522>,  <34.656914, 31.565292, 38.959187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387253, 31.697239, 39.223522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738589, -0.302927, -0.602264,
		0.001519, -0.894105, 0.447854,
		-0.674154, 0.329865, 0.660837,
		34.185005, 31.796198, 39.421772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.611603, 32.832561, 44.208977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318222, 32.843697, 44.480648>,  <40.142193, 32.850376, 44.643650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.318222, 32.843697, 44.480648>,  <40.611603, 32.832561, 44.208977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318222, 32.843697, 44.480648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566706, -0.576793, -0.588349,
		0.375366, -0.816416, 0.438822,
		-0.733447, 0.027837, 0.679176,
		40.098186, 32.852047, 44.684402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357445, 32.150436, 44.209614>,  <40.611603, 32.832561, 44.208977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357445, 32.150436, 44.209614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068542, 32.366066, 44.382931>,  <39.895199, 32.495445, 44.486919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.068542, 32.366066, 44.382931>,  <40.357445, 32.150436, 44.209614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068542, 32.366066, 44.382931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636042, -0.271649, -0.722259,
		-0.271649, -0.797248, 0.539076,
		0.722259, -0.539076, -0.433289,
		39.851864, 32.527790, 44.512917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829227, 31.650547, 44.285801>,  <40.357445, 32.150436, 44.209614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829227, 31.650547, 44.285801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671928, 32.018162, 44.296585>,  <39.577549, 32.238731, 44.303055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.671928, 32.018162, 44.296585>,  <39.829227, 31.650547, 44.285801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671928, 32.018162, 44.296585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667358, -0.265141, -0.695941,
		-0.632449, -0.291665, 0.717593,
		-0.393245, 0.919039, 0.026957,
		39.553955, 32.293873, 44.304672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132359, 31.552547, 44.392643>,  <39.829227, 31.650547, 44.285801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132359, 31.552547, 44.392643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163349, 31.912411, 44.220779>,  <39.181946, 32.128330, 44.117661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.163349, 31.912411, 44.220779>,  <39.132359, 31.552547, 44.392643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163349, 31.912411, 44.220779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703082, -0.256248, -0.663335,
		-0.706875, 0.353483, 0.612680,
		0.077480, 0.899659, -0.429663,
		39.186592, 32.182308, 44.091881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462761, 31.607494, 44.292736>,  <39.132359, 31.552547, 44.392643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462761, 31.607494, 44.292736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637356, 31.862619, 44.038910>,  <38.742111, 32.015694, 43.886612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.637356, 31.862619, 44.038910>,  <38.462761, 31.607494, 44.292736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637356, 31.862619, 44.038910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798943, -0.049559, -0.599361,
		-0.413730, 0.768594, 0.487945,
		0.436483, 0.637814, -0.634567,
		38.768299, 32.053963, 43.848541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979614, 32.151501, 44.117653>,  <38.462761, 31.607494, 44.292736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979614, 32.151501, 44.117653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242790, 32.175144, 43.817352>,  <38.400696, 32.189331, 43.637173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.242790, 32.175144, 43.817352>,  <37.979614, 32.151501, 44.117653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242790, 32.175144, 43.817352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741028, -0.126784, -0.659397,
		-0.134158, 0.990168, -0.039615,
		0.657936, 0.059108, -0.750751,
		38.440170, 32.192875, 43.592129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641994, 32.528111, 43.585991>,  <37.979614, 32.151501, 44.117653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641994, 32.528111, 43.585991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945465, 32.397675, 43.360397>,  <38.127548, 32.319412, 43.225040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945465, 32.397675, 43.360397>,  <37.641994, 32.528111, 43.585991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945465, 32.397675, 43.360397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622983, -0.109951, -0.774470,
		0.190536, 0.938923, -0.286566,
		0.758676, -0.326090, -0.563983,
		38.173069, 32.299847, 43.191204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745537, 33.008839, 43.005169>,  <37.641994, 32.528111, 43.585991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745537, 33.008839, 43.005169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916626, 32.670433, 42.877846>,  <38.019279, 32.467392, 42.801453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.916626, 32.670433, 42.877846>,  <37.745537, 33.008839, 43.005169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916626, 32.670433, 42.877846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461713, 0.098261, -0.881570,
		0.777094, 0.524035, -0.348586,
		0.427721, -0.846010, -0.318311,
		38.044941, 32.416630, 42.782352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965130, 33.142994, 42.368866>,  <37.745537, 33.008839, 43.005169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965130, 33.142994, 42.368866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957901, 32.743069, 42.366199>,  <37.953564, 32.503113, 42.364601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957901, 32.743069, 42.366199>,  <37.965130, 33.142994, 42.368866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957901, 32.743069, 42.366199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484292, 0.014585, -0.874785,
		0.874719, -0.012585, -0.484466,
		-0.018075, -0.999815, -0.006663,
		37.952480, 32.443123, 42.364201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395084, 33.441776, 41.856632>,  <37.965130, 33.142994, 42.368866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395084, 33.441776, 41.856632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549870, 33.717602, 41.611763>,  <38.642742, 33.883099, 41.464840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.549870, 33.717602, 41.611763>,  <38.395084, 33.441776, 41.856632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549870, 33.717602, 41.611763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511227, 0.392083, 0.764799,
		0.767402, -0.608911, -0.200801,
		0.386964, 0.689563, -0.612177,
		38.665958, 33.924469, 41.428108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100628, 33.509838, 42.087208>,  <38.395084, 33.441776, 41.856632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100628, 33.509838, 42.087208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030663, 33.847755, 41.884926>,  <38.988682, 34.050507, 41.763557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.030663, 33.847755, 41.884926>,  <39.100628, 33.509838, 42.087208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030663, 33.847755, 41.884926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493479, 0.519671, 0.697439,
		0.851988, -0.127559, -0.507785,
		-0.174917, 0.844791, -0.505701,
		38.978188, 34.101192, 41.733215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722008, 33.761593, 42.072723>,  <39.100628, 33.509838, 42.087208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722008, 33.761593, 42.072723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460159, 34.057899, 42.012413>,  <39.303051, 34.235683, 41.976227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.460159, 34.057899, 42.012413>,  <39.722008, 33.761593, 42.072723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460159, 34.057899, 42.012413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636365, 0.647648, 0.419037,
		0.408057, 0.178364, -0.895363,
		-0.654622, 0.740768, -0.150773,
		39.263771, 34.280128, 41.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108379, 34.295959, 41.728092>,  <39.722008, 33.761593, 42.072723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108379, 34.295959, 41.728092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793316, 34.438641, 41.929031>,  <39.604279, 34.524250, 42.049595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793316, 34.438641, 41.929031>,  <40.108379, 34.295959, 41.728092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793316, 34.438641, 41.929031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605505, 0.598792, 0.524225,
		-0.113810, 0.717086, -0.687630,
		-0.787661, 0.356702, 0.502348,
		39.557018, 34.545650, 42.079735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357132, 34.978237, 41.808792>,  <40.108379, 34.295959, 41.728092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357132, 34.978237, 41.808792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052296, 34.958828, 42.067055>,  <39.869396, 34.947182, 42.222012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052296, 34.958828, 42.067055>,  <40.357132, 34.978237, 41.808792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052296, 34.958828, 42.067055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356355, 0.801137, 0.480824,
		-0.540589, 0.596511, -0.593244,
		-0.762086, -0.048523, 0.645655,
		39.823669, 34.944271, 42.260750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054211, 35.677322, 41.867840>,  <40.357132, 34.978237, 41.808792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054211, 35.677322, 41.867840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975845, 35.476284, 42.204651>,  <39.928825, 35.355659, 42.406738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975845, 35.476284, 42.204651>,  <40.054211, 35.677322, 41.867840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975845, 35.476284, 42.204651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305524, 0.784647, 0.539430,
		-0.931812, 0.362942, -0.000166,
		-0.195912, -0.502596, 0.842031,
		39.917072, 35.325504, 42.457260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832024, 36.199242, 42.348679>,  <40.054211, 35.677322, 41.867840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832024, 36.199242, 42.348679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899113, 35.903965, 42.610039>,  <39.939365, 35.726799, 42.766857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.899113, 35.903965, 42.610039>,  <39.832024, 36.199242, 42.348679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899113, 35.903965, 42.610039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542061, 0.622665, 0.564321,
		-0.823430, 0.259533, 0.504584,
		0.167727, -0.738194, 0.653404,
		39.949432, 35.682507, 42.806061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680954, 36.501141, 43.052147>,  <39.832024, 36.199242, 42.348679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680954, 36.501141, 43.052147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904388, 36.172138, 43.094982>,  <40.038448, 35.974735, 43.120682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.904388, 36.172138, 43.094982>,  <39.680954, 36.501141, 43.052147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904388, 36.172138, 43.094982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622629, 0.501094, 0.601030,
		-0.548010, -0.269052, 0.792020,
		0.558585, -0.822506, 0.107085,
		40.071964, 35.925388, 43.127110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700298, 36.430519, 43.746620>,  <39.680954, 36.501141, 43.052147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700298, 36.430519, 43.746620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.009140, 36.225945, 43.595741>,  <40.194447, 36.103199, 43.505215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.009140, 36.225945, 43.595741>,  <39.700298, 36.430519, 43.746620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009140, 36.225945, 43.595741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615894, 0.455952, 0.642481,
		-0.156607, -0.728379, 0.667037,
		0.772107, -0.511441, -0.377199,
		40.240772, 36.072514, 43.482582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989700, 36.152229, 44.304813>,  <39.700298, 36.430519, 43.746620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989700, 36.152229, 44.304813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292599, 36.160347, 44.043686>,  <40.474339, 36.165218, 43.887009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292599, 36.160347, 44.043686>,  <39.989700, 36.152229, 44.304813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292599, 36.160347, 44.043686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594017, 0.394123, 0.701292,
		0.271522, -0.918833, 0.286392,
		0.757245, 0.020294, -0.652816,
		40.519772, 36.166435, 43.847839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580994, 35.781487, 44.611237>,  <39.989700, 36.152229, 44.304813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580994, 35.781487, 44.611237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.702007, 36.040970, 44.331905>,  <40.774616, 36.196659, 44.164307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.702007, 36.040970, 44.331905>,  <40.580994, 35.781487, 44.611237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702007, 36.040970, 44.331905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675050, 0.371409, 0.637466,
		0.672891, -0.664257, -0.325546,
		0.302530, 0.648705, -0.698325,
		40.792767, 36.235580, 44.122410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296432, 35.704353, 44.630390>,  <40.580994, 35.781487, 44.611237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296432, 35.704353, 44.630390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254951, 36.051197, 44.435509>,  <41.230061, 36.259304, 44.318581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254951, 36.051197, 44.435509>,  <41.296432, 35.704353, 44.630390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254951, 36.051197, 44.435509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690255, 0.415425, 0.592427,
		0.716095, -0.274858, -0.641608,
		-0.103707, 0.867107, -0.487206,
		41.223839, 36.311329, 44.289349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993759, 35.967899, 44.541306>,  <41.296432, 35.704353, 44.630390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993759, 35.967899, 44.541306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754700, 36.286583, 44.505379>,  <41.611263, 36.477795, 44.483822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754700, 36.286583, 44.505379>,  <41.993759, 35.967899, 44.541306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754700, 36.286583, 44.505379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656630, 0.550672, 0.515361,
		0.460054, 0.249028, -0.852253,
		-0.597652, 0.796709, -0.089820,
		41.575405, 36.525597, 44.478432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445477, 36.545612, 44.399239>,  <41.993759, 35.967899, 44.541306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445477, 36.545612, 44.399239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.100636, 36.703617, 44.526199>,  <41.893730, 36.798420, 44.602375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.100636, 36.703617, 44.526199>,  <42.445477, 36.545612, 44.399239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100636, 36.703617, 44.526199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505552, 0.713215, 0.485532,
		-0.034587, 0.579043, -0.814563,
		-0.862103, 0.395010, 0.317404,
		41.842003, 36.822121, 44.621422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.144466, 36.027725, 48.246887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465813, 35.842548, 48.097069>,  <35.658619, 35.731441, 48.007175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465813, 35.842548, 48.097069>,  <35.144466, 36.027725, 48.246887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465813, 35.842548, 48.097069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401873, 0.042657, -0.914701,
		0.439431, 0.885361, -0.151775,
		0.803367, -0.462942, -0.374548,
		35.706821, 35.703667, 47.984703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386738, 36.395042, 47.551006>,  <35.144466, 36.027725, 48.246887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386738, 36.395042, 47.551006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556458, 36.033527, 47.528622>,  <35.658291, 35.816616, 47.515190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.556458, 36.033527, 47.528622>,  <35.386738, 36.395042, 47.551006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556458, 36.033527, 47.528622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194610, -0.030653, -0.980402,
		0.884362, 0.426878, -0.188893,
		0.424302, -0.903790, -0.055966,
		35.683746, 35.762390, 47.511833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820229, 36.307896, 46.914898>,  <35.386738, 36.395042, 47.551006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820229, 36.307896, 46.914898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.682968, 35.945763, 47.014992>,  <35.600613, 35.728481, 47.075047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.682968, 35.945763, 47.014992>,  <35.820229, 36.307896, 46.914898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682968, 35.945763, 47.014992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351549, -0.123256, -0.928020,
		0.871013, -0.406416, -0.275975,
		-0.343146, -0.905337, 0.250232,
		35.580025, 35.674160, 47.090061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942238, 35.990025, 46.334587>,  <35.820229, 36.307896, 46.914898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942238, 35.990025, 46.334587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722374, 35.716663, 46.526764>,  <35.590454, 35.552647, 46.642071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722374, 35.716663, 46.526764>,  <35.942238, 35.990025, 46.334587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722374, 35.716663, 46.526764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361042, -0.324290, -0.874348,
		0.753339, -0.654056, -0.068488,
		-0.549663, -0.683408, 0.480442,
		35.557476, 35.511642, 46.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928680, 35.455769, 45.862648>,  <35.942238, 35.990025, 46.334587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928680, 35.455769, 45.862648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621246, 35.330418, 46.085743>,  <35.436787, 35.255207, 46.219601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621246, 35.330418, 46.085743>,  <35.928680, 35.455769, 45.862648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621246, 35.330418, 46.085743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421543, -0.407706, -0.809986,
		0.481223, -0.857654, 0.181256,
		-0.768587, -0.313377, 0.557736,
		35.390671, 35.236404, 46.253063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799053, 34.661507, 45.859882>,  <35.928680, 35.455769, 45.862648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799053, 34.661507, 45.859882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452412, 34.843613, 45.941589>,  <35.244427, 34.952877, 45.990612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452412, 34.843613, 45.941589>,  <35.799053, 34.661507, 45.859882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452412, 34.843613, 45.941589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376378, -0.327616, -0.866607,
		-0.327616, -0.827889, 0.455267,
		0.866607, -0.455267, -0.204267,
		35.192429, 34.980194, 46.002869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366749, 34.269524, 45.574806>,  <35.799053, 34.661507, 45.859882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366749, 34.269524, 45.574806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128567, 34.586811, 45.625778>,  <34.985657, 34.777184, 45.656361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128567, 34.586811, 45.625778>,  <35.366749, 34.269524, 45.574806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128567, 34.586811, 45.625778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372358, -0.131939, -0.918663,
		-0.711888, -0.594471, 0.373925,
		-0.595454, 0.793219, 0.127430,
		34.949932, 34.824776, 45.664009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717209, 34.003246, 45.373779>,  <35.366749, 34.269524, 45.574806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717209, 34.003246, 45.373779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730762, 34.401997, 45.345261>,  <34.738895, 34.641247, 45.328148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730762, 34.401997, 45.345261>,  <34.717209, 34.003246, 45.373779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730762, 34.401997, 45.345261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317024, -0.056934, -0.946707,
		-0.947812, 0.054682, 0.314106,
		0.033884, 0.996879, -0.071298,
		34.740929, 34.701061, 45.323872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049095, 34.257763, 45.199806>,  <34.717209, 34.003246, 45.373779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049095, 34.257763, 45.199806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315456, 34.527054, 45.071224>,  <34.475273, 34.688629, 44.994076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.315456, 34.527054, 45.071224>,  <34.049095, 34.257763, 45.199806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315456, 34.527054, 45.071224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399500, -0.042106, -0.915766,
		-0.630054, 0.738235, 0.240916,
		0.665906, 0.673228, -0.321453,
		34.515228, 34.729023, 44.974789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656456, 34.728653, 44.816246>,  <34.049095, 34.257763, 45.199806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656456, 34.728653, 44.816246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042755, 34.782608, 44.727570>,  <34.274532, 34.814980, 44.674366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042755, 34.782608, 44.727570>,  <33.656456, 34.728653, 44.816246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042755, 34.782608, 44.727570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231716, 0.063661, -0.970698,
		-0.116820, 0.988814, 0.092735,
		0.965744, 0.134885, -0.221687,
		34.332478, 34.823074, 44.661064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541710, 35.242245, 44.285595>,  <33.656456, 34.728653, 44.816246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541710, 35.242245, 44.285595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910484, 35.091637, 44.249245>,  <34.131748, 35.001270, 44.227432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.910484, 35.091637, 44.249245>,  <33.541710, 35.242245, 44.285595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910484, 35.091637, 44.249245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163309, -0.165109, -0.972661,
		0.351225, 0.911575, -0.213710,
		0.921939, -0.376523, -0.090878,
		34.187065, 34.978680, 44.221981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948162, 35.634338, 43.705776>,  <33.541710, 35.242245, 44.285595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948162, 35.634338, 43.705776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072262, 35.255383, 43.737289>,  <34.146721, 35.028011, 43.756195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072262, 35.255383, 43.737289>,  <33.948162, 35.634338, 43.705776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072262, 35.255383, 43.737289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164145, -0.135009, -0.977154,
		0.936377, 0.290229, -0.197395,
		0.310249, -0.947386, 0.078779,
		34.165337, 34.971169, 43.760921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295815, 35.595024, 43.136017>,  <33.948162, 35.634338, 43.705776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295815, 35.595024, 43.136017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239254, 35.220657, 43.265057>,  <34.205318, 34.996037, 43.342480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239254, 35.220657, 43.265057>,  <34.295815, 35.595024, 43.136017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239254, 35.220657, 43.265057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125965, -0.306213, -0.943592,
		0.981905, -0.174065, -0.074592,
		-0.141405, -0.935914, 0.322598,
		34.196831, 34.939884, 43.361835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660603, 35.146534, 42.725433>,  <34.295815, 35.595024, 43.136017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660603, 35.146534, 42.725433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396523, 34.893978, 42.888149>,  <34.238075, 34.742443, 42.985779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396523, 34.893978, 42.888149>,  <34.660603, 35.146534, 42.725433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396523, 34.893978, 42.888149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293943, -0.281209, -0.913520,
		0.691184, -0.722679, 0.000060,
		-0.660199, -0.631393, 0.406793,
		34.198463, 34.704559, 43.010189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279770, 34.944023, 42.364265>,  <34.660603, 35.146534, 42.725433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279770, 34.944023, 42.364265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416458, 35.274784, 42.185619>,  <35.498470, 35.473240, 42.078434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416458, 35.274784, 42.185619>,  <35.279770, 34.944023, 42.364265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416458, 35.274784, 42.185619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346200, 0.331040, 0.877814,
		0.873712, -0.454584, -0.173150,
		0.341721, 0.826901, -0.446611,
		35.518974, 35.522854, 42.051636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962395, 34.986523, 42.499218>,  <35.279770, 34.944023, 42.364265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962395, 34.986523, 42.499218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851788, 35.359074, 42.404495>,  <35.785423, 35.582603, 42.347660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851788, 35.359074, 42.404495>,  <35.962395, 34.986523, 42.499218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851788, 35.359074, 42.404495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383140, 0.332831, 0.861642,
		0.881329, 0.147528, -0.448881,
		-0.276518, 0.931375, -0.236810,
		35.768833, 35.638485, 42.333454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516350, 35.421959, 42.602825>,  <35.962395, 34.986523, 42.499218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516350, 35.421959, 42.602825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244751, 35.714542, 42.577721>,  <36.081791, 35.890091, 42.562660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244751, 35.714542, 42.577721>,  <36.516350, 35.421959, 42.602825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244751, 35.714542, 42.577721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512356, 0.533356, 0.673070,
		0.525794, 0.424856, -0.736911,
		-0.678993, 0.731457, -0.062758,
		36.041054, 35.933979, 42.558891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878628, 36.273655, 42.548218>,  <36.516350, 35.421959, 42.602825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878628, 36.273655, 42.548218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504021, 36.312679, 42.682930>,  <36.279259, 36.336094, 42.763760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.504021, 36.312679, 42.682930>,  <36.878628, 36.273655, 42.548218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504021, 36.312679, 42.682930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297113, 0.730855, 0.614472,
		-0.186189, 0.675524, -0.713443,
		-0.936514, 0.097565, 0.336784,
		36.223068, 36.341949, 42.783966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750591, 37.068012, 42.737976>,  <36.878628, 36.273655, 42.548218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750591, 37.068012, 42.737976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502880, 36.830627, 42.943619>,  <36.354256, 36.688198, 43.067005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502880, 36.830627, 42.943619>,  <36.750591, 37.068012, 42.737976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502880, 36.830627, 42.943619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241528, 0.479033, 0.843914,
		-0.747104, 0.646785, -0.153315,
		-0.619274, -0.593461, 0.514105,
		36.317097, 36.652588, 43.097851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408783, 37.489273, 43.253937>,  <36.750591, 37.068012, 42.737976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408783, 37.489273, 43.253937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.355705, 37.126755, 43.414444>,  <36.323860, 36.909245, 43.510750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.355705, 37.126755, 43.414444>,  <36.408783, 37.489273, 43.253937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355705, 37.126755, 43.414444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163383, 0.379310, 0.910730,
		-0.977598, 0.186407, 0.097743,
		-0.132692, -0.906298, 0.401269,
		36.315899, 36.854866, 43.534824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857784, 37.629372, 43.722206>,  <36.408783, 37.489273, 43.253937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857784, 37.629372, 43.722206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014301, 37.282848, 43.846394>,  <36.108212, 37.074932, 43.920906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.014301, 37.282848, 43.846394>,  <35.857784, 37.629372, 43.722206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014301, 37.282848, 43.846394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022533, 0.346291, 0.937857,
		-0.919990, -0.359981, 0.155022,
		0.391294, -0.866312, 0.310473,
		36.131691, 37.022953, 43.939537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426395, 37.404972, 44.291901>,  <35.857784, 37.629372, 43.722206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426395, 37.404972, 44.291901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.778385, 37.216606, 44.316845>,  <35.989578, 37.103584, 44.331810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.778385, 37.216606, 44.316845>,  <35.426395, 37.404972, 44.291901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778385, 37.216606, 44.316845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106257, 0.323085, 0.940386,
		-0.462993, -0.820885, 0.334344,
		0.879970, -0.470918, 0.062361,
		36.042377, 37.075329, 44.335552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481422, 37.148106, 44.932938>,  <35.426395, 37.404972, 44.291901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481422, 37.148106, 44.932938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864994, 37.125275, 44.821796>,  <36.095135, 37.111576, 44.755112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864994, 37.125275, 44.821796>,  <35.481422, 37.148106, 44.932938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864994, 37.125275, 44.821796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283655, 0.192358, 0.939435,
		-0.000175, -0.979663, 0.200648,
		0.958926, -0.057079, -0.277853,
		36.152672, 37.108150, 44.738441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881084, 36.598564, 45.348522>,  <35.481422, 37.148106, 44.932938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881084, 36.598564, 45.348522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144966, 36.856800, 45.194633>,  <36.303295, 37.011742, 45.102299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.144966, 36.856800, 45.194633>,  <35.881084, 36.598564, 45.348522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144966, 36.856800, 45.194633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447312, 0.074067, 0.891306,
		0.603910, -0.760088, -0.239916,
		0.659701, 0.645586, -0.384726,
		36.342876, 37.050476, 45.079216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415340, 36.443424, 45.843609>,  <35.881084, 36.598564, 45.348522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415340, 36.443424, 45.843609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502102, 36.789436, 45.662647>,  <36.554161, 36.997044, 45.554070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.502102, 36.789436, 45.662647>,  <36.415340, 36.443424, 45.843609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502102, 36.789436, 45.662647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581730, 0.257621, 0.771506,
		0.783927, -0.430522, -0.447336,
		0.216907, 0.865033, -0.452403,
		36.567173, 37.048946, 45.526928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129253, 36.585953, 45.919109>,  <36.415340, 36.443424, 45.843609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129253, 36.585953, 45.919109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991100, 36.952484, 45.838062>,  <36.908207, 37.172401, 45.789433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.991100, 36.952484, 45.838062>,  <37.129253, 36.585953, 45.919109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991100, 36.952484, 45.838062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491599, 0.360566, 0.792668,
		0.799401, 0.174168, -0.574999,
		-0.345382, 0.916328, -0.202616,
		36.887486, 37.227383, 45.777279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787563, 36.952618, 45.837791>,  <37.129253, 36.585953, 45.919109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787563, 36.952618, 45.837791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485126, 37.202343, 45.916348>,  <37.303665, 37.352177, 45.963482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.485126, 37.202343, 45.916348>,  <37.787563, 36.952618, 45.837791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485126, 37.202343, 45.916348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578405, 0.497014, 0.646858,
		0.306231, 0.602673, -0.736890,
		-0.756088, 0.624309, 0.196388,
		37.258301, 37.389637, 45.975266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128822, 37.593147, 45.956135>,  <37.787563, 36.952618, 45.837791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128822, 37.593147, 45.956135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760483, 37.611401, 46.111031>,  <37.539478, 37.622353, 46.203968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.760483, 37.611401, 46.111031>,  <38.128822, 37.593147, 45.956135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760483, 37.611401, 46.111031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368128, 0.429077, 0.824848,
		-0.128515, 0.902115, -0.411914,
		-0.920850, 0.045632, 0.387237,
		37.484226, 37.625092, 46.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078888, 38.335506, 45.667645>,  <38.128822, 37.593147, 45.956135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078888, 38.335506, 45.667645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244884, 38.669945, 45.524128>,  <38.344482, 38.870605, 45.438019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.244884, 38.669945, 45.524128>,  <38.078888, 38.335506, 45.667645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244884, 38.669945, 45.524128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367539, -0.206686, -0.906750,
		-0.832284, 0.508164, 0.221524,
		0.414992, 0.836092, -0.358792,
		38.369381, 38.920773, 45.416489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626255, 38.492542, 45.180206>,  <38.078888, 38.335506, 45.667645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626255, 38.492542, 45.180206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.945236, 38.704453, 45.064686>,  <38.136623, 38.831600, 44.995373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.945236, 38.704453, 45.064686>,  <37.626255, 38.492542, 45.180206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945236, 38.704453, 45.064686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305478, -0.058275, -0.950414,
		-0.520338, 0.846132, 0.115364,
		0.797453, 0.529778, -0.288798,
		38.184471, 38.863384, 44.978046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349239, 38.964844, 44.679874>,  <37.626255, 38.492542, 45.180206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349239, 38.964844, 44.679874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744629, 38.979420, 44.621101>,  <37.981861, 38.988167, 44.585838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.744629, 38.979420, 44.621101>,  <37.349239, 38.964844, 44.679874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744629, 38.979420, 44.621101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146162, -0.022979, -0.988994,
		-0.039417, 0.999071, -0.017388,
		0.988475, 0.036442, -0.146932,
		38.041172, 38.990353, 44.577023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439682, 39.567482, 44.254860>,  <37.349239, 38.964844, 44.679874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439682, 39.567482, 44.254860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738972, 39.308544, 44.196751>,  <37.918545, 39.153183, 44.161884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738972, 39.308544, 44.196751>,  <37.439682, 39.567482, 44.254860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738972, 39.308544, 44.196751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313646, -0.152192, -0.937264,
		0.584620, 0.746852, -0.316910,
		0.748229, -0.647341, -0.145273,
		37.963440, 39.114342, 44.153168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816765, 39.757877, 43.592804>,  <37.439682, 39.567482, 44.254860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816765, 39.757877, 43.592804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909893, 39.375004, 43.661610>,  <37.965771, 39.145279, 43.702892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909893, 39.375004, 43.661610>,  <37.816765, 39.757877, 43.592804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909893, 39.375004, 43.661610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261413, -0.231963, -0.936940,
		0.936727, 0.173173, -0.304227,
		0.232822, -0.957186, 0.172016,
		37.979740, 39.087849, 43.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363777, 39.628132, 43.147079>,  <37.816765, 39.757877, 43.592804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363777, 39.628132, 43.147079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187828, 39.275280, 43.214447>,  <38.082260, 39.063568, 43.254868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.187828, 39.275280, 43.214447>,  <38.363777, 39.628132, 43.147079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187828, 39.275280, 43.214447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180038, -0.097110, -0.978854,
		0.879828, -0.460894, -0.116101,
		-0.439873, -0.882126, 0.168418,
		38.055866, 39.010643, 43.264973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591709, 39.179527, 42.607296>,  <38.363777, 39.628132, 43.147079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591709, 39.179527, 42.607296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.264198, 39.002235, 42.753258>,  <38.067692, 38.895863, 42.840836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.264198, 39.002235, 42.753258>,  <38.591709, 39.179527, 42.607296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264198, 39.002235, 42.753258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338194, -0.141256, -0.930415,
		0.463929, -0.885211, -0.034239,
		-0.818777, -0.443226, 0.364905,
		38.018566, 38.869267, 42.862728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582344, 38.448830, 42.408833>,  <38.591709, 39.179527, 42.607296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582344, 38.448830, 42.408833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231133, 38.634312, 42.456238>,  <38.020405, 38.745602, 42.484680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231133, 38.634312, 42.456238>,  <38.582344, 38.448830, 42.408833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231133, 38.634312, 42.456238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260161, -0.254567, -0.931403,
		-0.401732, -0.848627, 0.344156,
		-0.878024, 0.463711, 0.118512,
		37.967724, 38.773426, 42.491791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012493, 37.996845, 42.229416>,  <38.582344, 38.448830, 42.408833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012493, 37.996845, 42.229416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924545, 38.380173, 42.156441>,  <37.871777, 38.610168, 42.112656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.924545, 38.380173, 42.156441>,  <38.012493, 37.996845, 42.229416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924545, 38.380173, 42.156441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090819, -0.206312, -0.974262,
		-0.971292, -0.197642, 0.132395,
		-0.219870, 0.958318, -0.182440,
		37.858585, 38.667667, 42.101707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201782, 38.134010, 41.991512>,  <38.012493, 37.996845, 42.229416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201782, 38.134010, 41.991512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451366, 38.421677, 41.869221>,  <37.601116, 38.594276, 41.795845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451366, 38.421677, 41.869221>,  <37.201782, 38.134010, 41.991512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451366, 38.421677, 41.869221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247054, -0.189620, -0.950268,
		-0.741375, 0.668460, 0.059358,
		0.623961, 0.719170, -0.305726,
		37.638554, 38.637428, 41.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702572, 38.477291, 41.497959>,  <37.201782, 38.134010, 41.991512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702572, 38.477291, 41.497959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084129, 38.580788, 41.437126>,  <37.313065, 38.642887, 41.400627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.084129, 38.580788, 41.437126>,  <36.702572, 38.477291, 41.497959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084129, 38.580788, 41.437126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168228, 0.041295, -0.984883,
		-0.248554, 0.965062, 0.082919,
		0.953897, 0.258746, -0.152086,
		37.370300, 38.658413, 41.391499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710987, 39.063534, 41.048878>,  <36.702572, 38.477291, 41.497959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710987, 39.063534, 41.048878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065544, 38.886040, 40.996117>,  <37.278278, 38.779541, 40.964458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.065544, 38.886040, 40.996117>,  <36.710987, 39.063534, 41.048878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065544, 38.886040, 40.996117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196786, -0.103267, -0.974993,
		0.419019, 0.890187, -0.178857,
		0.886396, -0.443738, -0.131905,
		37.331463, 38.752918, 40.956547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808846, 39.201820, 40.447300>,  <36.710987, 39.063534, 41.048878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808846, 39.201820, 40.447300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080307, 38.911682, 40.493416>,  <37.243183, 38.737598, 40.521084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080307, 38.911682, 40.493416>,  <36.808846, 39.201820, 40.447300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080307, 38.911682, 40.493416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200884, -0.334311, -0.920805,
		0.706448, 0.601752, -0.372594,
		0.678658, -0.725349, 0.115291,
		37.283905, 38.694077, 40.528004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028423, 39.181305, 39.784203>,  <36.808846, 39.201820, 40.447300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028423, 39.181305, 39.784203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154083, 38.838696, 39.947998>,  <37.229477, 38.633129, 40.046276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154083, 38.838696, 39.947998>,  <37.028423, 39.181305, 39.784203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154083, 38.838696, 39.947998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282765, -0.496168, -0.820891,
		0.906286, 0.142092, -0.398064,
		0.314148, -0.856521, 0.409492,
		37.248329, 38.581738, 40.070847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.146656, 31.402132, 30.265894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025673, 31.066551, 30.446859>,  <25.953083, 30.865204, 30.555439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.025673, 31.066551, 30.446859>,  <26.146656, 31.402132, 30.265894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025673, 31.066551, 30.446859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125034, 0.505467, 0.853739,
		-0.944926, 0.201653, -0.257780,
		-0.302459, -0.838951, 0.452415,
		25.934935, 30.814865, 30.582584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563194, 31.617107, 30.742737>,  <26.146656, 31.402132, 30.265894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563194, 31.617107, 30.742737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634287, 31.251148, 30.887718>,  <25.676943, 31.031572, 30.974707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634287, 31.251148, 30.887718>,  <25.563194, 31.617107, 30.742737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634287, 31.251148, 30.887718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148422, 0.339185, 0.928937,
		-0.972822, -0.218898, -0.075507,
		0.177732, -0.914897, 0.362456,
		25.687607, 30.976679, 30.996454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.009098, 31.506016, 31.223160>,  <25.563194, 31.617107, 30.742737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.009098, 31.506016, 31.223160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.296047, 31.249680, 31.332485>,  <25.468216, 31.095879, 31.398081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.296047, 31.249680, 31.332485>,  <25.009098, 31.506016, 31.223160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296047, 31.249680, 31.332485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153026, 0.237784, 0.959188,
		-0.679676, -0.729919, 0.072514,
		0.717372, -0.640841, 0.273313,
		25.511259, 31.057426, 31.414478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784166, 31.301943, 31.831236>,  <25.009098, 31.506016, 31.223160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784166, 31.301943, 31.831236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171923, 31.203857, 31.836187>,  <25.404577, 31.145006, 31.839159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.171923, 31.203857, 31.836187>,  <24.784166, 31.301943, 31.831236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171923, 31.203857, 31.836187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030081, 0.168660, 0.985215,
		-0.243674, -0.954686, 0.170874,
		0.969391, -0.245212, 0.012380,
		25.462740, 31.130295, 31.839901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791399, 31.340567, 32.439182>,  <24.784166, 31.301943, 31.831236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791399, 31.340567, 32.439182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166159, 31.247692, 32.334633>,  <25.391014, 31.191967, 32.271904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166159, 31.247692, 32.334633>,  <24.791399, 31.340567, 32.439182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166159, 31.247692, 32.334633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258799, -0.042024, 0.965017,
		-0.235047, -0.971763, 0.020717,
		0.936897, -0.232186, -0.261369,
		25.447227, 31.178038, 32.256222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004875, 30.653164, 32.702656>,  <24.791399, 31.340567, 32.439182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004875, 30.653164, 32.702656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.305294, 30.913284, 32.656979>,  <25.485544, 31.069357, 32.629574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.305294, 30.913284, 32.656979>,  <25.004875, 30.653164, 32.702656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305294, 30.913284, 32.656979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129343, 0.024691, 0.991292,
		0.647457, -0.759276, -0.065568,
		0.751046, 0.650300, -0.114194,
		25.530607, 31.108374, 32.622719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445145, 30.429966, 33.195892>,  <25.004875, 30.653164, 32.702656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445145, 30.429966, 33.195892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.574553, 30.799801, 33.115425>,  <25.652197, 31.021702, 33.067142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.574553, 30.799801, 33.115425>,  <25.445145, 30.429966, 33.195892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574553, 30.799801, 33.115425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293705, 0.103980, 0.950224,
		0.899484, -0.366502, -0.237916,
		0.323520, 0.924589, -0.201172,
		25.671608, 31.077177, 33.055073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013004, 30.598835, 33.685532>,  <25.445145, 30.429966, 33.195892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013004, 30.598835, 33.685532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.872955, 30.950741, 33.556889>,  <25.788927, 31.161884, 33.479702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.872955, 30.950741, 33.556889>,  <26.013004, 30.598835, 33.685532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872955, 30.950741, 33.556889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262915, 0.421833, 0.867717,
		0.899050, 0.219250, -0.378996,
		-0.350120, 0.879765, -0.321605,
		25.767920, 31.214670, 33.460407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512323, 31.067123, 33.789207>,  <26.013004, 30.598835, 33.685532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512323, 31.067123, 33.789207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.187273, 31.300196, 33.784779>,  <25.992243, 31.440039, 33.782124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.187273, 31.300196, 33.784779>,  <26.512323, 31.067123, 33.789207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187273, 31.300196, 33.784779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404293, 0.577318, 0.709402,
		0.419743, 0.572005, -0.704717,
		-0.812627, 0.582678, -0.011067,
		25.943485, 31.474998, 33.781460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823980, 31.741217, 33.799255>,  <26.512323, 31.067123, 33.789207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823980, 31.741217, 33.799255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439762, 31.779957, 33.903542>,  <26.209230, 31.803200, 33.966114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439762, 31.779957, 33.903542>,  <26.823980, 31.741217, 33.799255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439762, 31.779957, 33.903542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242059, 0.752757, 0.612180,
		-0.136966, 0.651135, -0.746501,
		-0.960546, 0.096849, 0.260715,
		26.151598, 31.809011, 33.981754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647404, 32.457508, 33.719978>,  <26.823980, 31.741217, 33.799255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647404, 32.457508, 33.719978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357397, 32.297729, 33.944405>,  <26.183393, 32.201862, 34.079060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357397, 32.297729, 33.944405>,  <26.647404, 32.457508, 33.719978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357397, 32.297729, 33.944405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105458, 0.740640, 0.663574,
		-0.680607, 0.540272, -0.494853,
		-0.725019, -0.399447, 0.561062,
		26.139891, 32.177895, 34.112724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252497, 32.999115, 33.803719>,  <26.647404, 32.457508, 33.719978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252497, 32.999115, 33.803719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196421, 32.732235, 34.096344>,  <26.162775, 32.572105, 34.271919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196421, 32.732235, 34.096344>,  <26.252497, 32.999115, 33.803719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196421, 32.732235, 34.096344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044323, 0.742352, 0.668543,
		-0.989132, 0.061299, -0.133643,
		-0.140191, -0.667201, 0.731567,
		26.154364, 32.532074, 34.315815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765160, 33.417015, 34.282196>,  <26.252497, 32.999115, 33.803719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765160, 33.417015, 34.282196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.928400, 33.117973, 34.491779>,  <26.026344, 32.938549, 34.617531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.928400, 33.117973, 34.491779>,  <25.765160, 33.417015, 34.282196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928400, 33.117973, 34.491779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113419, 0.611002, 0.783462,
		-0.905865, -0.260304, 0.334143,
		0.408100, -0.747609, 0.523961,
		26.050831, 32.893692, 34.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501877, 33.517654, 34.915981>,  <25.765160, 33.417015, 34.282196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501877, 33.517654, 34.915981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.816629, 33.281326, 34.987247>,  <26.005482, 33.139530, 35.030006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.816629, 33.281326, 34.987247>,  <25.501877, 33.517654, 34.915981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816629, 33.281326, 34.987247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197119, 0.514237, 0.834688,
		-0.584772, -0.621682, 0.521107,
		0.786883, -0.590823, 0.178166,
		26.052694, 33.104080, 35.040699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623682, 33.617359, 35.520267>,  <25.501877, 33.517654, 34.915981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623682, 33.617359, 35.520267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953318, 33.395390, 35.474762>,  <26.151098, 33.262207, 35.447460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953318, 33.395390, 35.474762>,  <25.623682, 33.617359, 35.520267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953318, 33.395390, 35.474762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386687, 0.404330, 0.828849,
		-0.413947, -0.727035, 0.547784,
		0.824088, -0.554921, -0.113764,
		26.200544, 33.228912, 35.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768040, 33.363663, 36.195210>,  <25.623682, 33.617359, 35.520267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768040, 33.363663, 36.195210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118284, 33.367710, 36.002045>,  <26.328432, 33.370136, 35.886147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.118284, 33.367710, 36.002045>,  <25.768040, 33.363663, 36.195210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118284, 33.367710, 36.002045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440860, 0.391737, 0.807579,
		0.197343, -0.920021, 0.338550,
		0.875613, 0.010116, -0.482907,
		26.380968, 33.370747, 35.857174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.179213, 33.153545, 36.709484>,  <25.768040, 33.363663, 36.195210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.179213, 33.153545, 36.709484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401674, 33.324902, 36.424618>,  <26.535151, 33.427715, 36.253700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401674, 33.324902, 36.424618>,  <26.179213, 33.153545, 36.709484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401674, 33.324902, 36.424618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516871, 0.492738, 0.700038,
		0.650797, -0.757426, 0.052619,
		0.556155, 0.428386, -0.712164,
		26.568521, 33.453419, 36.210968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836275, 33.180855, 36.926235>,  <26.179213, 33.153545, 36.709484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836275, 33.180855, 36.926235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825806, 33.470207, 36.650253>,  <26.819525, 33.643818, 36.484665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.825806, 33.470207, 36.650253>,  <26.836275, 33.180855, 36.926235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825806, 33.470207, 36.650253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493956, 0.609402, 0.620191,
		0.869093, -0.324575, -0.373268,
		-0.026172, 0.723381, -0.689953,
		26.817955, 33.687222, 36.443268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497705, 33.438484, 36.707760>,  <26.836275, 33.180855, 36.926235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497705, 33.438484, 36.707760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.264715, 33.760365, 36.661850>,  <27.124922, 33.953495, 36.634304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.264715, 33.760365, 36.661850>,  <27.497705, 33.438484, 36.707760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264715, 33.760365, 36.661850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540543, 0.488918, 0.684670,
		0.607072, 0.336763, -0.719760,
		-0.582475, 0.804705, -0.114774,
		27.089973, 34.001778, 36.627419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907227, 33.973396, 36.973625>,  <27.497705, 33.438484, 36.707760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907227, 33.973396, 36.973625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554083, 34.150276, 36.910351>,  <27.342197, 34.256405, 36.872387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.554083, 34.150276, 36.910351>,  <27.907227, 33.973396, 36.973625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554083, 34.150276, 36.910351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178741, 0.627855, 0.757529,
		0.434297, 0.640515, -0.633346,
		-0.882858, 0.442197, -0.158189,
		27.289225, 34.282936, 36.862896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221544, 33.296356, 37.165005>,  <27.907227, 33.973396, 36.973625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221544, 33.296356, 37.165005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413998, 32.977875, 37.311737>,  <28.529470, 32.786785, 37.399776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.413998, 32.977875, 37.311737>,  <28.221544, 33.296356, 37.165005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413998, 32.977875, 37.311737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431728, -0.579391, -0.691315,
		0.762969, 0.174243, -0.622509,
		0.481133, -0.796207, 0.366832,
		28.558338, 32.739014, 37.421787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719753, 32.980198, 36.639774>,  <28.221544, 33.296356, 37.165005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719753, 32.980198, 36.639774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594595, 32.704842, 36.901527>,  <28.519501, 32.539627, 37.058578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594595, 32.704842, 36.901527>,  <28.719753, 32.980198, 36.639774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594595, 32.704842, 36.901527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305525, -0.579404, -0.755610,
		0.899306, -0.436357, -0.029028,
		-0.312896, -0.688393, 0.654378,
		28.500727, 32.498325, 37.097839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067684, 32.446510, 36.437744>,  <28.719753, 32.980198, 36.639774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067684, 32.446510, 36.437744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774551, 32.297951, 36.665787>,  <28.598673, 32.208817, 36.802612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774551, 32.297951, 36.665787>,  <29.067684, 32.446510, 36.437744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774551, 32.297951, 36.665787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091354, -0.776593, -0.623344,
		0.674250, -0.508887, 0.535183,
		-0.732831, -0.371399, 0.570107,
		28.554703, 32.186531, 36.836819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367306, 31.793795, 36.650879>,  <29.067684, 32.446510, 36.437744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367306, 31.793795, 36.650879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967489, 31.794821, 36.662979>,  <28.727600, 31.795437, 36.670238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.967489, 31.794821, 36.662979>,  <29.367306, 31.793795, 36.650879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.967489, 31.794821, 36.662979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021477, -0.763997, -0.644862,
		0.021455, -0.645214, 0.763700,
		-0.999539, 0.002566, 0.030249,
		28.667627, 31.795591, 36.672054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209545, 31.158154, 36.677254>,  <29.367306, 31.793795, 36.650879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209545, 31.158154, 36.677254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856253, 31.319721, 36.581963>,  <28.644278, 31.416662, 36.524788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.856253, 31.319721, 36.581963>,  <29.209545, 31.158154, 36.677254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856253, 31.319721, 36.581963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160259, -0.737421, -0.656145,
		-0.440700, -0.541351, 0.716046,
		-0.883233, 0.403917, -0.238225,
		28.591284, 31.440897, 36.510494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699150, 30.659124, 36.799549>,  <29.209545, 31.158154, 36.677254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699150, 30.659124, 36.799549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550980, 30.909830, 36.525337>,  <28.462078, 31.060253, 36.360809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.550980, 30.909830, 36.525337>,  <28.699150, 30.659124, 36.799549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550980, 30.909830, 36.525337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244791, -0.777814, -0.578863,
		-0.896025, -0.046615, 0.441549,
		-0.370427, 0.626764, -0.685530,
		28.439852, 31.097858, 36.319679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002766, 30.458374, 36.698658>,  <28.699150, 30.659124, 36.799549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002766, 30.458374, 36.698658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060404, 30.663494, 36.360126>,  <28.094986, 30.786566, 36.157009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060404, 30.663494, 36.360126>,  <28.002766, 30.458374, 36.698658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060404, 30.663494, 36.360126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419750, -0.742826, -0.521555,
		-0.896129, 0.430399, 0.108212,
		0.144094, 0.512802, -0.846328,
		28.103632, 30.817335, 36.106228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418638, 30.394667, 36.314445>,  <28.002766, 30.458374, 36.698658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418638, 30.394667, 36.314445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693346, 30.495615, 36.041782>,  <27.858170, 30.556185, 35.878185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693346, 30.495615, 36.041782>,  <27.418638, 30.394667, 36.314445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693346, 30.495615, 36.041782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398763, -0.653263, -0.643611,
		-0.607732, 0.713832, -0.348003,
		0.686768, 0.252372, -0.681658,
		27.899376, 30.571327, 35.837284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067505, 30.515667, 35.669167>,  <27.418638, 30.394667, 36.314445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067505, 30.515667, 35.669167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426395, 30.423828, 35.518291>,  <27.641729, 30.368725, 35.427769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426395, 30.423828, 35.518291>,  <27.067505, 30.515667, 35.669167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426395, 30.423828, 35.518291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426890, -0.669410, -0.607993,
		-0.112898, 0.706524, -0.698626,
		0.897228, -0.229595, -0.377183,
		27.695564, 30.354950, 35.405136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860338, 30.387108, 34.996136>,  <27.067505, 30.515667, 35.669167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860338, 30.387108, 34.996136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230064, 30.235899, 35.017082>,  <27.451900, 30.145174, 35.029652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.230064, 30.235899, 35.017082>,  <26.860338, 30.387108, 34.996136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230064, 30.235899, 35.017082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233108, -0.667889, -0.706813,
		0.302167, 0.641110, -0.705459,
		0.924314, -0.378024, 0.052365,
		27.507359, 30.122492, 35.032791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127506, 30.376871, 34.319847>,  <26.860338, 30.387108, 34.996136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127506, 30.376871, 34.319847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362190, 30.132971, 34.533005>,  <27.503000, 29.986631, 34.660900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.362190, 30.132971, 34.533005>,  <27.127506, 30.376871, 34.319847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362190, 30.132971, 34.533005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090473, -0.703299, -0.705114,
		0.804729, 0.365483, -0.467796,
		0.586708, -0.609749, 0.532899,
		27.538202, 29.950047, 34.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680460, 30.221416, 33.842762>,  <27.127506, 30.376871, 34.319847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680460, 30.221416, 33.842762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685181, 29.930401, 34.117149>,  <27.688013, 29.755793, 34.281780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685181, 29.930401, 34.117149>,  <27.680460, 30.221416, 33.842762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685181, 29.930401, 34.117149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027933, -0.685507, -0.727530,
		0.999540, 0.027746, 0.012232,
		0.011801, -0.727537, 0.685967,
		27.688721, 29.712139, 34.322941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180359, 29.816292, 33.639965>,  <27.680460, 30.221416, 33.842762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180359, 29.816292, 33.639965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010801, 29.574032, 33.909336>,  <27.909067, 29.428675, 34.070957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010801, 29.574032, 33.909336>,  <28.180359, 29.816292, 33.639965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010801, 29.574032, 33.909336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052608, -0.758740, -0.649266,
		0.904182, -0.239793, 0.353488,
		-0.423894, -0.605651, 0.673424,
		27.883633, 29.392336, 34.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625788, 29.116478, 33.639015>,  <28.180359, 29.816292, 33.639965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625788, 29.116478, 33.639015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259506, 29.023262, 33.769970>,  <28.039738, 28.967333, 33.848541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259506, 29.023262, 33.769970>,  <28.625788, 29.116478, 33.639015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259506, 29.023262, 33.769970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092829, -0.669984, -0.736549,
		0.390990, -0.704850, 0.591872,
		-0.915702, -0.233040, 0.327388,
		27.984797, 28.953350, 33.868187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531910, 28.343660, 33.589157>,  <28.625788, 29.116478, 33.639015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531910, 28.343660, 33.589157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159899, 28.484850, 33.630070>,  <27.936693, 28.569563, 33.654617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.159899, 28.484850, 33.630070>,  <28.531910, 28.343660, 33.589157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159899, 28.484850, 33.630070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337466, -0.710100, -0.617961,
		-0.145493, -0.609236, 0.779528,
		-0.930026, 0.352973, 0.102282,
		27.880892, 28.590742, 33.660755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123709, 27.737799, 33.568768>,  <28.531910, 28.343660, 33.589157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123709, 27.737799, 33.568768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867868, 28.033451, 33.484295>,  <27.714365, 28.210842, 33.433613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867868, 28.033451, 33.484295>,  <28.123709, 27.737799, 33.568768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867868, 28.033451, 33.484295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348123, -0.523441, -0.777701,
		-0.685363, -0.423902, 0.592102,
		-0.639600, 0.739132, -0.211177,
		27.675989, 28.255190, 33.420940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479834, 27.395800, 33.398087>,  <28.123709, 27.737799, 33.568768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479834, 27.395800, 33.398087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458506, 27.751514, 33.216396>,  <27.445709, 27.964943, 33.107384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.458506, 27.751514, 33.216396>,  <27.479834, 27.395800, 33.398087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458506, 27.751514, 33.216396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478466, -0.422011, -0.770050,
		-0.876486, 0.176272, 0.447996,
		-0.053321, 0.889289, -0.454227,
		27.442509, 28.018301, 33.080128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815130, 27.370646, 33.026806>,  <27.479834, 27.395800, 33.398087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815130, 27.370646, 33.026806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016661, 27.667402, 32.849831>,  <27.137579, 27.845457, 32.743645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016661, 27.667402, 32.849831>,  <26.815130, 27.370646, 33.026806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016661, 27.667402, 32.849831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368548, -0.278620, -0.886873,
		-0.781238, 0.609890, 0.133047,
		0.503826, 0.741893, -0.442442,
		27.167809, 27.889971, 32.717098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348194, 27.683407, 32.595425>,  <26.815130, 27.370646, 33.026806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348194, 27.683407, 32.595425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.700064, 27.802299, 32.446922>,  <26.911184, 27.873634, 32.357822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.700064, 27.802299, 32.446922>,  <26.348194, 27.683407, 32.595425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700064, 27.802299, 32.446922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359662, -0.094971, -0.928237,
		-0.311158, 0.950071, 0.023359,
		0.879673, 0.297230, -0.371255,
		26.963966, 27.891468, 32.335545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175758, 28.143597, 32.061111>,  <26.348194, 27.683407, 32.595425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175758, 28.143597, 32.061111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554205, 28.050343, 31.971212>,  <26.781273, 27.994390, 31.917273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554205, 28.050343, 31.971212>,  <26.175758, 28.143597, 32.061111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554205, 28.050343, 31.971212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256270, -0.114772, -0.959767,
		0.197962, 0.965647, -0.168333,
		0.946117, -0.233136, -0.224746,
		26.838039, 27.980402, 31.903788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193705, 28.504625, 31.409740>,  <26.175758, 28.143597, 32.061111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193705, 28.504625, 31.409740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486958, 28.232611, 31.412992>,  <26.662910, 28.069403, 31.414944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.486958, 28.232611, 31.412992>,  <26.193705, 28.504625, 31.409740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486958, 28.232611, 31.412992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159102, -0.183122, -0.970130,
		0.661212, 0.709942, -0.242448,
		0.733133, -0.680036, 0.008129,
		26.706898, 28.028601, 31.415432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708443, 28.686203, 30.948883>,  <26.193705, 28.504625, 31.409740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708443, 28.686203, 30.948883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702173, 28.288946, 30.995226>,  <26.698412, 28.050592, 31.023031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702173, 28.288946, 30.995226>,  <26.708443, 28.686203, 30.948883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702173, 28.288946, 30.995226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250713, -0.108267, -0.961988,
		0.967934, -0.044124, -0.247297,
		-0.015673, -0.993142, 0.115858,
		26.697472, 27.991003, 31.029984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.315472, 37.893467, 44.467308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.980064, 37.786301, 44.657089>,  <41.778820, 37.722000, 44.770958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.980064, 37.786301, 44.657089>,  <42.315472, 37.893467, 44.467308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980064, 37.786301, 44.657089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273536, 0.546100, 0.791803,
		-0.471237, 0.793723, -0.384630,
		-0.838519, -0.267917, 0.474455,
		41.728508, 37.705925, 44.799427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998741, 38.550262, 44.698071>,  <42.315472, 37.893467, 44.467308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998741, 38.550262, 44.698071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.927471, 38.216778, 44.907135>,  <41.884708, 38.016685, 45.032574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.927471, 38.216778, 44.907135>,  <41.998741, 38.550262, 44.698071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927471, 38.216778, 44.907135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087717, 0.515593, 0.852332,
		-0.980082, 0.197709, -0.018733,
		-0.178172, -0.833712, 0.522666,
		41.874020, 37.966663, 45.063934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384602, 38.594524, 45.136105>,  <41.998741, 38.550262, 44.698071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384602, 38.594524, 45.136105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.636066, 38.329533, 45.299026>,  <41.786945, 38.170536, 45.396782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.636066, 38.329533, 45.299026>,  <41.384602, 38.594524, 45.136105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636066, 38.329533, 45.299026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082316, 0.577491, 0.812236,
		-0.773309, -0.477095, 0.417581,
		0.628663, -0.662483, 0.407307,
		41.824665, 38.130787, 45.421219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288609, 38.751495, 45.795052>,  <41.384602, 38.594524, 45.136105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288609, 38.751495, 45.795052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.604893, 38.507614, 45.817101>,  <41.794662, 38.361286, 45.830330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.604893, 38.507614, 45.817101>,  <41.288609, 38.751495, 45.795052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604893, 38.507614, 45.817101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269610, 0.427655, 0.862799,
		-0.549627, -0.667361, 0.502533,
		0.790709, -0.609705, 0.055124,
		41.842106, 38.324703, 45.833637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166214, 38.424267, 46.366138>,  <41.288609, 38.751495, 45.795052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166214, 38.424267, 46.366138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555279, 38.388386, 46.280457>,  <41.788719, 38.366859, 46.229050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555279, 38.388386, 46.280457>,  <41.166214, 38.424267, 46.366138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555279, 38.388386, 46.280457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230639, 0.265507, 0.936115,
		-0.027098, -0.959927, 0.278937,
		0.972662, -0.089701, -0.214202,
		41.847076, 38.361477, 46.216194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599945, 37.989231, 46.810040>,  <41.166214, 38.424267, 46.366138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599945, 37.989231, 46.810040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.863014, 38.239841, 46.642742>,  <42.020855, 38.390205, 46.542362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.863014, 38.239841, 46.642742>,  <41.599945, 37.989231, 46.810040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863014, 38.239841, 46.642742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263813, 0.328495, 0.906915,
		0.705595, -0.706795, 0.050758,
		0.657676, 0.626524, -0.418246,
		42.060318, 38.427799, 46.517269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186195, 37.924393, 47.090191>,  <41.599945, 37.989231, 46.810040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186195, 37.924393, 47.090191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.289471, 38.271408, 46.920147>,  <42.351437, 38.479618, 46.818119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.289471, 38.271408, 46.920147>,  <42.186195, 37.924393, 47.090191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289471, 38.271408, 46.920147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258893, 0.361806, 0.895584,
		0.930758, -0.341292, -0.131183,
		0.258193, 0.867535, -0.425112,
		42.366928, 38.531670, 46.792614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852318, 38.136841, 47.394573>,  <42.186195, 37.924393, 47.090191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852318, 38.136841, 47.394573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.661339, 38.456009, 47.247406>,  <42.546753, 38.647511, 47.159103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.661339, 38.456009, 47.247406>,  <42.852318, 38.136841, 47.394573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661339, 38.456009, 47.247406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083318, 0.457958, 0.885061,
		0.874700, 0.391917, -0.285133,
		-0.477449, 0.797919, -0.367923,
		42.518105, 38.695385, 47.137028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137035, 38.642731, 47.725479>,  <42.852318, 38.136841, 47.394573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137035, 38.642731, 47.725479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.802200, 38.808220, 47.582306>,  <42.601299, 38.907513, 47.496403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.802200, 38.808220, 47.582306>,  <43.137035, 38.642731, 47.725479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.802200, 38.808220, 47.582306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001950, 0.656529, 0.754298,
		0.547062, 0.630717, -0.550381,
		-0.837090, 0.413721, -0.357932,
		42.551075, 38.932335, 47.474926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282005, 39.393604, 47.630653>,  <43.137035, 38.642731, 47.725479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282005, 39.393604, 47.630653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.884586, 39.376553, 47.672695>,  <42.646133, 39.366322, 47.697918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.884586, 39.376553, 47.672695>,  <43.282005, 39.393604, 47.630653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884586, 39.376553, 47.672695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052367, 0.649547, 0.758515,
		-0.100606, 0.759125, -0.643124,
		-0.993547, -0.042633, 0.105102,
		42.586521, 39.363762, 47.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067997, 40.049637, 47.684998>,  <43.282005, 39.393604, 47.630653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067997, 40.049637, 47.684998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.778851, 39.830986, 47.854069>,  <42.605362, 39.699795, 47.955513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.778851, 39.830986, 47.854069>,  <43.067997, 40.049637, 47.684998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778851, 39.830986, 47.854069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010787, 0.602700, 0.797895,
		-0.690903, 0.581332, -0.429775,
		-0.722867, -0.546632, 0.422678,
		42.561989, 39.666996, 47.980873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418522, 40.508121, 48.044819>,  <43.067997, 40.049637, 47.684998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418522, 40.508121, 48.044819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.406738, 40.154564, 48.231525>,  <42.399670, 39.942429, 48.343548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.406738, 40.154564, 48.231525>,  <42.418522, 40.508121, 48.044819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406738, 40.154564, 48.231525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053992, 0.464880, 0.883726,
		-0.998107, 0.051234, 0.034028,
		-0.029458, -0.883890, 0.466766,
		42.397900, 39.889397, 48.371555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901039, 40.556526, 48.592327>,  <42.418522, 40.508121, 48.044819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901039, 40.556526, 48.592327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153805, 40.259754, 48.681969>,  <42.305466, 40.081692, 48.735752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153805, 40.259754, 48.681969>,  <41.901039, 40.556526, 48.592327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153805, 40.259754, 48.681969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000387, 0.289453, 0.957192,
		-0.775035, -0.604781, 0.183197,
		0.631918, -0.741928, 0.224102,
		42.343380, 40.037174, 48.749199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649807, 40.473877, 49.191467>,  <41.901039, 40.556526, 48.592327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649807, 40.473877, 49.191467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.026642, 40.342171, 49.166004>,  <42.252743, 40.263149, 49.150726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.026642, 40.342171, 49.166004>,  <41.649807, 40.473877, 49.191467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026642, 40.342171, 49.166004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139606, 0.212461, 0.967146,
		-0.304920, -0.920025, 0.246125,
		0.942090, -0.329262, -0.063657,
		42.309269, 40.243393, 49.146908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495636, 40.796505, 49.837009>,  <41.649807, 40.473877, 49.191467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495636, 40.796505, 49.837009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138149, 40.834343, 50.012428>,  <40.923656, 40.857048, 50.117680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.138149, 40.834343, 50.012428>,  <41.495636, 40.796505, 49.837009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138149, 40.834343, 50.012428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391150, -0.643023, -0.658424,
		0.219710, -0.759982, 0.611682,
		-0.893716, 0.094597, 0.438546,
		40.870033, 40.862720, 50.143993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179405, 40.084396, 49.869289>,  <41.495636, 40.796505, 49.837009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179405, 40.084396, 49.869289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903820, 40.373657, 49.849773>,  <40.738468, 40.547215, 49.838062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.903820, 40.373657, 49.849773>,  <41.179405, 40.084396, 49.869289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903820, 40.373657, 49.849773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416540, -0.450139, -0.789854,
		-0.593152, -0.523852, 0.611351,
		-0.688959, 0.723155, -0.048795,
		40.697132, 40.590603, 49.835136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621746, 39.790825, 49.729996>,  <41.179405, 40.084396, 49.869289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621746, 39.790825, 49.729996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507442, 40.153130, 49.604813>,  <40.438862, 40.370510, 49.529701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.507442, 40.153130, 49.604813>,  <40.621746, 39.790825, 49.729996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507442, 40.153130, 49.604813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577006, -0.423367, -0.698444,
		-0.765119, -0.019006, 0.643609,
		-0.285757, 0.905759, -0.312959,
		40.421715, 40.424858, 49.510925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938992, 39.787636, 49.738598>,  <40.621746, 39.790825, 49.729996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938992, 39.787636, 49.738598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.046612, 40.072178, 49.478878>,  <40.111183, 40.242905, 49.323048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.046612, 40.072178, 49.478878>,  <39.938992, 39.787636, 49.738598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046612, 40.072178, 49.478878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754793, -0.263022, -0.600921,
		-0.598248, 0.651763, 0.466159,
		0.269048, 0.711354, -0.649299,
		40.127327, 40.285583, 49.284088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343670, 39.886372, 49.360535>,  <39.938992, 39.787636, 49.738598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343670, 39.886372, 49.360535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572483, 40.146370, 49.160423>,  <39.709770, 40.302368, 49.040356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572483, 40.146370, 49.160423>,  <39.343670, 39.886372, 49.360535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572483, 40.146370, 49.160423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640920, -0.026404, -0.767153,
		-0.511854, 0.759481, 0.401490,
		0.572038, 0.649993, -0.500282,
		39.744095, 40.341370, 49.010338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900177, 40.467793, 49.102058>,  <39.343670, 39.886372, 49.360535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900177, 40.467793, 49.102058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222534, 40.457287, 48.865467>,  <39.415951, 40.450981, 48.723515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.222534, 40.457287, 48.865467>,  <38.900177, 40.467793, 49.102058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222534, 40.457287, 48.865467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584687, 0.121845, -0.802057,
		0.093137, 0.992201, 0.082836,
		0.805895, -0.026268, -0.591475,
		39.464302, 40.449406, 48.688023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774342, 40.977982, 48.553131>,  <38.900177, 40.467793, 49.102058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774342, 40.977982, 48.553131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007488, 40.703926, 48.378387>,  <39.147377, 40.539494, 48.273540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.007488, 40.703926, 48.378387>,  <38.774342, 40.977982, 48.553131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007488, 40.703926, 48.378387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556360, 0.055338, -0.829097,
		0.592223, 0.726306, -0.348930,
		0.582869, -0.685141, -0.436860,
		39.182350, 40.498383, 48.247330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988792, 41.159229, 47.854946>,  <38.774342, 40.977982, 48.553131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988792, 41.159229, 47.854946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061481, 40.766819, 47.827942>,  <39.105095, 40.531372, 47.811737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061481, 40.766819, 47.827942>,  <38.988792, 41.159229, 47.854946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061481, 40.766819, 47.827942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347295, 0.000203, -0.937756,
		0.919980, 0.193859, -0.340670,
		0.181724, -0.981029, -0.067514,
		39.115997, 40.472511, 47.807690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305771, 40.998421, 47.184818>,  <38.988792, 41.159229, 47.854946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305771, 40.998421, 47.184818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225349, 40.621075, 47.290379>,  <39.177097, 40.394669, 47.353714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.225349, 40.621075, 47.290379>,  <39.305771, 40.998421, 47.184818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225349, 40.621075, 47.290379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271752, -0.205112, -0.940255,
		0.941132, -0.260754, -0.215124,
		-0.201051, -0.943364, 0.263898,
		39.165035, 40.338066, 47.369549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227879, 40.706303, 46.574181>,  <39.305771, 40.998421, 47.184818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227879, 40.706303, 46.574181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128620, 40.388893, 46.796436>,  <39.069065, 40.198448, 46.929790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128620, 40.388893, 46.796436>,  <39.227879, 40.706303, 46.574181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128620, 40.388893, 46.796436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309251, -0.478680, -0.821723,
		0.918036, -0.375737, -0.126619,
		-0.248142, -0.793528, 0.555642,
		39.054176, 40.150833, 46.963127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638222, 40.129040, 46.446560>,  <39.227879, 40.706303, 46.574181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638222, 40.129040, 46.446560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264572, 40.019680, 46.538357>,  <39.040382, 39.954063, 46.593437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264572, 40.019680, 46.538357>,  <39.638222, 40.129040, 46.446560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264572, 40.019680, 46.538357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081760, -0.461954, -0.883127,
		0.347465, -0.843712, 0.409168,
		-0.934122, -0.273402, 0.229495,
		38.984337, 39.937660, 46.607204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676369, 39.427326, 46.299843>,  <39.638222, 40.129040, 46.446560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676369, 39.427326, 46.299843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296436, 39.550571, 46.321358>,  <39.068478, 39.624519, 46.334267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296436, 39.550571, 46.321358>,  <39.676369, 39.427326, 46.299843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296436, 39.550571, 46.321358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238777, -0.603233, -0.760983,
		-0.202024, -0.735646, 0.646538,
		-0.949828, 0.308115, 0.053787,
		39.011490, 39.643005, 46.337494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252506, 38.737106, 46.220352>,  <39.676369, 39.427326, 46.299843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252506, 38.737106, 46.220352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990772, 39.033665, 46.160767>,  <38.833733, 39.211597, 46.125015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.990772, 39.033665, 46.160767>,  <39.252506, 38.737106, 46.220352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990772, 39.033665, 46.160767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356907, -0.476439, -0.803507,
		-0.666685, -0.472593, 0.576357,
		-0.654330, 0.741392, -0.148963,
		38.794472, 39.256081, 46.116077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660675, 38.463314, 46.152077>,  <39.252506, 38.737106, 46.220352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660675, 38.463314, 46.152077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633633, 38.806862, 45.948990>,  <38.617405, 39.012989, 45.827137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.633633, 38.806862, 45.948990>,  <38.660675, 38.463314, 46.152077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633633, 38.806862, 45.948990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514075, -0.466120, -0.720040,
		-0.855076, 0.212323, 0.473037,
		-0.067611, 0.858866, -0.507719,
		38.613350, 39.064522, 45.796673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066868, 38.388157, 46.434570>,  <38.660675, 38.463314, 46.152077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066868, 38.388157, 46.434570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775085, 38.143490, 46.557053>,  <37.600018, 37.996689, 46.630543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775085, 38.143490, 46.557053>,  <38.066868, 38.388157, 46.434570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775085, 38.143490, 46.557053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269179, 0.154847, 0.950560,
		-0.628839, 0.775815, 0.051694,
		-0.729455, -0.611664, 0.306207,
		37.556248, 37.959991, 46.648914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580811, 38.749958, 46.919216>,  <38.066868, 38.388157, 46.434570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580811, 38.749958, 46.919216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551132, 38.360275, 47.004467>,  <37.533325, 38.126465, 47.055618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551132, 38.360275, 47.004467>,  <37.580811, 38.749958, 46.919216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551132, 38.360275, 47.004467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149470, 0.200442, 0.968237,
		-0.985979, 0.103696, 0.130741,
		-0.074197, -0.974202, 0.213131,
		37.528873, 38.068016, 47.068405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326408, 38.745052, 47.586330>,  <37.580811, 38.749958, 46.919216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326408, 38.745052, 47.586330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438412, 38.361950, 47.560112>,  <37.505611, 38.132088, 47.544380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.438412, 38.361950, 47.560112>,  <37.326408, 38.745052, 47.586330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438412, 38.361950, 47.560112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127932, -0.030440, 0.991316,
		-0.951436, -0.285959, 0.114005,
		0.280006, -0.957758, -0.065545,
		37.522415, 38.074623, 47.540447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908470, 38.298985, 47.927326>,  <37.326408, 38.745052, 47.586330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908470, 38.298985, 47.927326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259602, 38.107430, 47.930885>,  <37.470280, 37.992496, 47.933022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259602, 38.107430, 47.930885>,  <36.908470, 38.298985, 47.927326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259602, 38.107430, 47.930885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099798, 0.201044, 0.974485,
		-0.468460, -0.854544, 0.224275,
		0.877830, -0.478890, 0.008900,
		37.522949, 37.963764, 47.933556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890472, 37.949959, 48.493492>,  <36.908470, 38.298985, 47.927326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890472, 37.949959, 48.493492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280010, 37.935837, 48.403706>,  <37.513733, 37.927364, 48.349834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.280010, 37.935837, 48.403706>,  <36.890472, 37.949959, 48.493492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280010, 37.935837, 48.403706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227023, 0.109538, 0.967710,
		-0.009581, -0.993355, 0.114689,
		0.973843, -0.035308, -0.224465,
		37.572163, 37.925243, 48.336365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177822, 37.452923, 48.927185>,  <36.890472, 37.949959, 48.493492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177822, 37.452923, 48.927185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.487251, 37.677971, 48.810539>,  <37.672909, 37.813000, 48.740551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.487251, 37.677971, 48.810539>,  <37.177822, 37.452923, 48.927185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487251, 37.677971, 48.810539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315632, 0.056954, 0.947171,
		0.549508, -0.824750, -0.133524,
		0.773574, 0.562623, -0.291614,
		37.719322, 37.846756, 48.723057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852085, 37.089493, 49.237980>,  <37.177822, 37.452923, 48.927185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852085, 37.089493, 49.237980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906281, 37.474339, 49.143337>,  <37.938797, 37.705246, 49.086552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906281, 37.474339, 49.143337>,  <37.852085, 37.089493, 49.237980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906281, 37.474339, 49.143337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341700, 0.178784, 0.922647,
		0.929992, -0.205855, -0.304531,
		0.135487, 0.962112, -0.236609,
		37.946926, 37.762974, 49.072353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229465, 36.355614, 49.238647>,  <37.852085, 37.089493, 49.237980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229465, 36.355614, 49.238647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077423, 36.116009, 49.520557>,  <37.986198, 35.972244, 49.689701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.077423, 36.116009, 49.520557>,  <38.229465, 36.355614, 49.238647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077423, 36.116009, 49.520557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642826, -0.376784, -0.666940,
		0.665054, -0.706550, -0.241847,
		-0.380102, -0.599017, 0.704770,
		37.963394, 35.936302, 49.731987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073380, 35.665524, 48.903667>,  <38.229465, 36.355614, 49.238647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073380, 35.665524, 48.903667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830135, 35.672920, 49.221123>,  <37.684189, 35.677357, 49.411594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830135, 35.672920, 49.221123>,  <38.073380, 35.665524, 48.903667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830135, 35.672920, 49.221123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760906, -0.298586, -0.576080,
		0.226317, -0.954204, 0.195643,
		-0.608114, 0.018490, 0.793634,
		37.647701, 35.678467, 49.459213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750896, 35.043591, 48.927853>,  <38.073380, 35.665524, 48.903667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750896, 35.043591, 48.927853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527275, 35.318634, 49.113174>,  <37.393105, 35.483662, 49.224369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527275, 35.318634, 49.113174>,  <37.750896, 35.043591, 48.927853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527275, 35.318634, 49.113174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781510, -0.250344, -0.571463,
		-0.276959, -0.681555, 0.677331,
		-0.559049, 0.687612, 0.463307,
		37.359562, 35.524918, 49.252167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145210, 34.675442, 49.165096>,  <37.750896, 35.043591, 48.927853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145210, 34.675442, 49.165096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.058170, 35.065781, 49.157356>,  <37.005947, 35.299984, 49.152714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.058170, 35.065781, 49.157356>,  <37.145210, 34.675442, 49.165096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058170, 35.065781, 49.157356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753852, -0.180626, -0.631729,
		-0.619964, -0.122880, 0.774948,
		-0.217602, 0.975846, -0.019349,
		36.992889, 35.358536, 49.151550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414871, 34.593616, 49.179596>,  <37.145210, 34.675442, 49.165096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414871, 34.593616, 49.179596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476879, 34.976189, 49.080635>,  <36.514084, 35.205730, 49.021259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476879, 34.976189, 49.080635>,  <36.414871, 34.593616, 49.179596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476879, 34.976189, 49.080635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720642, -0.061825, -0.690545,
		-0.675755, 0.285339, 0.679660,
		0.155019, 0.956431, -0.247405,
		36.523384, 35.263119, 49.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734764, 34.846123, 49.157269>,  <36.414871, 34.593616, 49.179596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734764, 34.846123, 49.157269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966351, 35.088890, 48.939480>,  <36.105305, 35.234550, 48.808807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.966351, 35.088890, 48.939480>,  <35.734764, 34.846123, 49.157269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966351, 35.088890, 48.939480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700960, 0.029406, -0.712595,
		-0.416473, 0.794223, 0.442448,
		0.578970, 0.606914, -0.544472,
		36.140041, 35.270966, 48.776138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302673, 35.326565, 48.857780>,  <35.734764, 34.846123, 49.157269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302673, 35.326565, 48.857780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616299, 35.297607, 48.611206>,  <35.804474, 35.280235, 48.463261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.616299, 35.297607, 48.611206>,  <35.302673, 35.326565, 48.857780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616299, 35.297607, 48.611206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619093, -0.020328, -0.785055,
		0.044300, 0.997169, -0.060755,
		0.784067, -0.072392, -0.616440,
		35.851521, 35.275890, 48.426273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.011597, 36.647644, 49.937439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.967804, 36.942223, 49.670406>,  <41.941528, 37.118969, 49.510185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.967804, 36.942223, 49.670406>,  <42.011597, 36.647644, 49.937439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967804, 36.942223, 49.670406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275810, -0.667751, -0.691402,
		-0.954957, 0.108433, 0.276222,
		-0.109477, 0.736444, -0.667581,
		41.934959, 37.163155, 49.470131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245590, 36.694267, 49.560322>,  <42.011597, 36.647644, 49.937439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245590, 36.694267, 49.560322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.549408, 36.840618, 49.345203>,  <41.731697, 36.928429, 49.216133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.549408, 36.840618, 49.345203>,  <41.245590, 36.694267, 49.560322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549408, 36.840618, 49.345203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179977, -0.676311, -0.714291,
		-0.625060, 0.639328, -0.447839,
		0.759545, 0.365874, -0.537799,
		41.777271, 36.950378, 49.183865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244926, 36.227146, 48.975632>,  <41.245590, 36.694267, 49.560322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244926, 36.227146, 48.975632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.525082, 36.486370, 48.855988>,  <41.693176, 36.641907, 48.784203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.525082, 36.486370, 48.855988>,  <41.244926, 36.227146, 48.975632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525082, 36.486370, 48.855988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019523, -0.436298, -0.899591,
		-0.713493, 0.624226, -0.318231,
		0.700391, 0.648064, -0.299108,
		41.735199, 36.680790, 48.766254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048771, 36.588253, 48.426464>,  <41.244926, 36.227146, 48.975632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048771, 36.588253, 48.426464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.446415, 36.561901, 48.392063>,  <41.685001, 36.546089, 48.371422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.446415, 36.561901, 48.392063>,  <41.048771, 36.588253, 48.426464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446415, 36.561901, 48.392063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108334, -0.603761, -0.789770,
		0.000103, 0.794438, -0.607345,
		0.994114, -0.065878, -0.086003,
		41.744648, 36.542137, 48.366261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243145, 36.741379, 47.720840>,  <41.048771, 36.588253, 48.426464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243145, 36.741379, 47.720840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.523556, 36.493038, 47.861187>,  <41.691803, 36.344036, 47.945396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.523556, 36.493038, 47.861187>,  <41.243145, 36.741379, 47.720840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523556, 36.493038, 47.861187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230255, -0.662709, -0.712600,
		0.674940, 0.418762, -0.607531,
		0.701026, -0.620850, 0.350867,
		41.733864, 36.306782, 47.966446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494892, 36.448608, 47.154533>,  <41.243145, 36.741379, 47.720840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494892, 36.448608, 47.154533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.675323, 36.211140, 47.421089>,  <41.783585, 36.068657, 47.581024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.675323, 36.211140, 47.421089>,  <41.494892, 36.448608, 47.154533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675323, 36.211140, 47.421089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086722, -0.772295, -0.629317,
		0.888259, 0.226083, -0.399852,
		0.451082, -0.593673, 0.666392,
		41.810646, 36.033039, 47.621006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927097, 36.012074, 46.741676>,  <41.494892, 36.448608, 47.154533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927097, 36.012074, 46.741676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.877136, 35.807461, 47.081734>,  <41.847160, 35.684692, 47.285767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.877136, 35.807461, 47.081734>,  <41.927097, 36.012074, 46.741676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877136, 35.807461, 47.081734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106246, -0.845027, -0.524062,
		0.986464, -0.155780, 0.051197,
		-0.124901, -0.511529, 0.850140,
		41.839664, 35.654003, 47.336777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200706, 35.366180, 46.697853>,  <41.927097, 36.012074, 46.741676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200706, 35.366180, 46.697853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.956512, 35.275307, 47.001350>,  <41.809994, 35.220783, 47.183449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.956512, 35.275307, 47.001350>,  <42.200706, 35.366180, 46.697853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956512, 35.275307, 47.001350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255133, -0.850508, -0.459939,
		0.749806, -0.474368, 0.461265,
		-0.610489, -0.227181, 0.758743,
		41.773365, 35.207153, 47.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429935, 34.715645, 46.985153>,  <42.200706, 35.366180, 46.697853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429935, 34.715645, 46.985153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.048992, 34.760082, 47.098763>,  <41.820427, 34.786747, 47.166927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.048992, 34.760082, 47.098763>,  <42.429935, 34.715645, 46.985153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048992, 34.760082, 47.098763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228944, -0.875700, -0.425129,
		0.201491, -0.469901, 0.859415,
		-0.952358, 0.111098, 0.284026,
		41.763283, 34.793411, 47.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109959, 34.126049, 47.308472>,  <42.429935, 34.715645, 46.985153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109959, 34.126049, 47.308472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.784401, 34.314625, 47.172642>,  <41.589066, 34.427769, 47.091145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.784401, 34.314625, 47.172642>,  <42.109959, 34.126049, 47.308472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784401, 34.314625, 47.172642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253275, -0.813900, -0.522895,
		-0.522897, -0.339577, 0.781836,
		-0.813899, 0.471439, -0.339579,
		41.540230, 34.456059, 47.070766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554306, 33.671051, 47.301113>,  <42.109959, 34.126049, 47.308472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554306, 33.671051, 47.301113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.387203, 33.959625, 47.080200>,  <41.286942, 34.132771, 46.947655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.387203, 33.959625, 47.080200>,  <41.554306, 33.671051, 47.301113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387203, 33.959625, 47.080200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499404, -0.690132, -0.523749,
		-0.758996, 0.057011, 0.648594,
		-0.417756, 0.721434, -0.552279,
		41.261875, 34.176056, 46.914516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836529, 33.538803, 47.265224>,  <41.554306, 33.671051, 47.301113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836529, 33.538803, 47.265224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.914124, 33.759197, 46.940563>,  <40.960682, 33.891434, 46.745766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.914124, 33.759197, 46.940563>,  <40.836529, 33.538803, 47.265224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914124, 33.759197, 46.940563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522268, -0.642367, -0.560893,
		-0.830425, 0.532706, 0.163153,
		0.193987, 0.550989, -0.811653,
		40.972321, 33.924496, 46.697067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129822, 33.663395, 47.543137>,  <40.836529, 33.538803, 47.265224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129822, 33.663395, 47.543137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825176, 33.577141, 47.787575>,  <39.642387, 33.525387, 47.934238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825176, 33.577141, 47.787575>,  <40.129822, 33.663395, 47.543137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825176, 33.577141, 47.787575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483728, 0.438327, 0.757546,
		-0.431215, 0.872565, -0.229529,
		-0.761617, -0.215636, 0.611098,
		39.596691, 33.512451, 47.970905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123196, 34.132782, 47.976719>,  <40.129822, 33.663395, 47.543137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123196, 34.132782, 47.976719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.887730, 33.875679, 48.172813>,  <39.746449, 33.721416, 48.290470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.887730, 33.875679, 48.172813>,  <40.123196, 34.132782, 47.976719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887730, 33.875679, 48.172813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455869, 0.236861, 0.857951,
		-0.667572, 0.728533, 0.153581,
		-0.588668, -0.642757, 0.490237,
		39.711128, 33.682854, 48.319885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871819, 34.542931, 48.527500>,  <40.123196, 34.132782, 47.976719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871819, 34.542931, 48.527500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825325, 34.165813, 48.652489>,  <39.797428, 33.939545, 48.727482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825325, 34.165813, 48.652489>,  <39.871819, 34.542931, 48.527500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825325, 34.165813, 48.652489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369627, 0.250943, 0.894653,
		-0.921882, 0.219484, 0.319313,
		-0.116233, -0.942791, 0.312467,
		39.790455, 33.882977, 48.746227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514603, 34.538242, 49.197178>,  <39.871819, 34.542931, 48.527500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514603, 34.538242, 49.197178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708763, 34.189240, 49.174873>,  <39.825260, 33.979836, 49.161491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.708763, 34.189240, 49.174873>,  <39.514603, 34.538242, 49.197178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708763, 34.189240, 49.174873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331454, 0.124635, 0.935203,
		-0.809025, -0.472432, 0.349696,
		0.485404, -0.872510, -0.055757,
		39.854385, 33.927486, 49.158146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301315, 34.224457, 49.773697>,  <39.514603, 34.538242, 49.197178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301315, 34.224457, 49.773697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619606, 34.001400, 49.679173>,  <39.810581, 33.867565, 49.622459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.619606, 34.001400, 49.679173>,  <39.301315, 34.224457, 49.773697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619606, 34.001400, 49.679173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325079, 0.064044, 0.943516,
		-0.511014, -0.827604, 0.232241,
		0.795731, -0.557647, -0.236310,
		39.858326, 33.834106, 49.608280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284378, 33.658028, 50.164459>,  <39.301315, 34.224457, 49.773697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284378, 33.658028, 50.164459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.671162, 33.701172, 50.072060>,  <39.903233, 33.727058, 50.016621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.671162, 33.701172, 50.072060>,  <39.284378, 33.658028, 50.164459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671162, 33.701172, 50.072060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229743, 0.024107, 0.972953,
		0.110511, -0.993874, -0.001469,
		0.966956, 0.107859, -0.230999,
		39.961250, 33.733528, 50.002758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563515, 33.192730, 50.594608>,  <39.284378, 33.658028, 50.164459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563515, 33.192730, 50.594608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.856213, 33.450264, 50.505150>,  <40.031834, 33.604786, 50.451477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.856213, 33.450264, 50.505150>,  <39.563515, 33.192730, 50.594608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856213, 33.450264, 50.505150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088566, 0.235525, 0.967824,
		0.675797, -0.728010, 0.115322,
		0.731747, 0.643839, -0.223644,
		40.075737, 33.643417, 50.438057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004864, 32.998405, 50.998856>,  <39.563515, 33.192730, 50.594608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004864, 32.998405, 50.998856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.173199, 33.346951, 50.897964>,  <40.274200, 33.556076, 50.837429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.173199, 33.346951, 50.897964>,  <40.004864, 32.998405, 50.998856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173199, 33.346951, 50.897964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181956, 0.191317, 0.964515,
		0.888698, -0.451804, -0.078036,
		0.420842, 0.871362, -0.252231,
		40.299450, 33.608360, 50.822296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730877, 32.994255, 51.343689>,  <40.004864, 32.998405, 50.998856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730877, 32.994255, 51.343689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.607605, 33.366436, 51.264400>,  <40.533642, 33.589745, 51.216827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.607605, 33.366436, 51.264400>,  <40.730877, 32.994255, 51.343689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607605, 33.366436, 51.264400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455892, 0.327318, 0.827663,
		0.834979, 0.164701, -0.525056,
		-0.308177, 0.930450, -0.198218,
		40.515152, 33.645573, 51.204933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431854, 33.377716, 51.670292>,  <40.730877, 32.994255, 51.343689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431854, 33.377716, 51.670292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.130772, 33.633945, 51.609497>,  <40.950123, 33.787685, 51.573021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.130772, 33.633945, 51.609497>,  <41.431854, 33.377716, 51.670292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130772, 33.633945, 51.609497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162492, 0.404469, 0.900001,
		0.637993, 0.652737, -0.408533,
		-0.752703, 0.640578, -0.151984,
		40.904961, 33.826118, 51.563900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660164, 34.102432, 51.817154>,  <41.431854, 33.377716, 51.670292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660164, 34.102432, 51.817154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.262600, 34.103848, 51.861221>,  <41.024063, 34.104694, 51.887661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.262600, 34.103848, 51.861221>,  <41.660164, 34.102432, 51.817154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262600, 34.103848, 51.861221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098205, 0.482181, 0.870550,
		-0.050043, 0.876065, -0.479590,
		-0.993907, 0.003534, 0.110164,
		40.964428, 34.104908, 51.894272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451054, 34.693924, 52.067978>,  <41.660164, 34.102432, 51.817154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451054, 34.693924, 52.067978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.139721, 34.472221, 52.185959>,  <40.952919, 34.339199, 52.256748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.139721, 34.472221, 52.185959>,  <41.451054, 34.693924, 52.067978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139721, 34.472221, 52.185959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065096, 0.396003, 0.915939,
		-0.624467, 0.732106, -0.272143,
		-0.778334, -0.554258, 0.294948,
		40.906219, 34.305943, 52.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942596, 35.185776, 52.304523>,  <41.451054, 34.693924, 52.067978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942596, 35.185776, 52.304523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853657, 34.831703, 52.467999>,  <40.800293, 34.619259, 52.566082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853657, 34.831703, 52.467999>,  <40.942596, 35.185776, 52.304523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853657, 34.831703, 52.467999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033914, 0.425944, 0.904114,
		-0.974378, 0.187165, -0.124726,
		-0.222344, -0.885179, 0.408683,
		40.786953, 34.566151, 52.590603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334820, 35.320087, 52.787415>,  <40.942596, 35.185776, 52.304523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334820, 35.320087, 52.787415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.521519, 34.982914, 52.894455>,  <40.633537, 34.780609, 52.958679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.521519, 34.982914, 52.894455>,  <40.334820, 35.320087, 52.787415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521519, 34.982914, 52.894455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038570, 0.282888, 0.958377,
		-0.883549, -0.457642, 0.099525,
		0.466747, -0.842935, 0.267597,
		40.661545, 34.730034, 52.974735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130516, 35.049458, 52.162338>,  <40.334820, 35.320087, 52.787415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130516, 35.049458, 52.162338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.086250, 35.435799, 52.068630>,  <40.059692, 35.667603, 52.012405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.086250, 35.435799, 52.068630>,  <40.130516, 35.049458, 52.162338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086250, 35.435799, 52.068630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784154, -0.229678, -0.576499,
		-0.610620, 0.119906, 0.782794,
		-0.110664, 0.965852, -0.234271,
		40.053051, 35.725555, 51.998348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528938, 35.072681, 52.139629>,  <40.130516, 35.049458, 52.162338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528938, 35.072681, 52.139629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623993, 35.412567, 51.951370>,  <39.681026, 35.616501, 51.838413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.623993, 35.412567, 51.951370>,  <39.528938, 35.072681, 52.139629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623993, 35.412567, 51.951370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842585, -0.060764, -0.535124,
		-0.483302, 0.523728, 0.701519,
		0.237633, 0.849716, -0.470653,
		39.695282, 35.667480, 51.810173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853214, 35.469078, 52.147999>,  <39.528938, 35.072681, 52.139629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853214, 35.469078, 52.147999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.066692, 35.613541, 51.842129>,  <39.194778, 35.700218, 51.658607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.066692, 35.613541, 51.842129>,  <38.853214, 35.469078, 52.147999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066692, 35.613541, 51.842129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787094, -0.118555, -0.605333,
		-0.309278, 0.924937, 0.220995,
		0.533695, 0.361160, -0.764678,
		39.226799, 35.721889, 51.612724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516991, 36.054981, 51.844990>,  <38.853214, 35.469078, 52.147999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516991, 36.054981, 51.844990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747952, 35.945332, 51.537361>,  <38.886528, 35.879539, 51.352783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747952, 35.945332, 51.537361>,  <38.516991, 36.054981, 51.844990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747952, 35.945332, 51.537361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770312, 0.129300, -0.624420,
		0.270612, 0.952961, -0.136507,
		0.577397, -0.274129, -0.769068,
		38.921169, 35.863094, 51.306641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358940, 36.463505, 51.339230>,  <38.516991, 36.054981, 51.844990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358940, 36.463505, 51.339230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525005, 36.167873, 51.127045>,  <38.624645, 35.990494, 50.999733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.525005, 36.167873, 51.127045>,  <38.358940, 36.463505, 51.339230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525005, 36.167873, 51.127045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728002, 0.079777, -0.680918,
		0.545573, 0.668874, -0.504933,
		0.415166, -0.739082, -0.530466,
		38.649555, 35.946148, 50.967903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394718, 36.716988, 50.653061>,  <38.358940, 36.463505, 51.339230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394718, 36.716988, 50.653061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435780, 36.323132, 50.596581>,  <38.460415, 36.086819, 50.562691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.435780, 36.323132, 50.596581>,  <38.394718, 36.716988, 50.653061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435780, 36.323132, 50.596581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740823, 0.019057, -0.671430,
		0.663810, 0.173529, -0.727491,
		0.102649, -0.984644, -0.141204,
		38.466576, 36.027737, 50.554218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344074, 36.683334, 49.890923>,  <38.394718, 36.716988, 50.653061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344074, 36.683334, 49.890923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.268642, 36.315987, 50.030083>,  <38.223385, 36.095577, 50.113579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.268642, 36.315987, 50.030083>,  <38.344074, 36.683334, 49.890923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268642, 36.315987, 50.030083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665765, -0.140871, -0.732743,
		0.721939, -0.369796, -0.584854,
		-0.188576, -0.918372, 0.347897,
		38.212070, 36.040474, 50.134453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595482, 37.330677, 49.653378>,  <38.344074, 36.683334, 49.890923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595482, 37.330677, 49.653378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.405647, 37.672218, 49.567860>,  <38.291748, 37.877144, 49.516548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.405647, 37.672218, 49.567860>,  <38.595482, 37.330677, 49.653378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405647, 37.672218, 49.567860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150071, 0.317821, 0.936199,
		0.867322, 0.412222, -0.278971,
		-0.474585, 0.853852, -0.213791,
		38.263271, 37.928375, 49.503723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017487, 37.873249, 49.798748>,  <38.595482, 37.330677, 49.653378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017487, 37.873249, 49.798748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.671131, 38.072300, 49.778309>,  <38.463318, 38.191730, 49.766045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.671131, 38.072300, 49.778309>,  <39.017487, 37.873249, 49.798748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671131, 38.072300, 49.778309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305271, 0.606558, 0.734096,
		0.396296, 0.620046, -0.677121,
		-0.865886, 0.497625, -0.051095,
		38.411366, 38.221588, 49.762981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172653, 38.488182, 49.657322>,  <39.017487, 37.873249, 49.798748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172653, 38.488182, 49.657322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811844, 38.539436, 49.822212>,  <38.595360, 38.570190, 49.921146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.811844, 38.539436, 49.822212>,  <39.172653, 38.488182, 49.657322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811844, 38.539436, 49.822212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390239, 0.650322, 0.651763,
		-0.184567, 0.748774, -0.636610,
		-0.902025, 0.128136, 0.412229,
		38.541237, 38.577877, 49.945881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973064, 39.248108, 49.799603>,  <39.172653, 38.488182, 49.657322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973064, 39.248108, 49.799603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703770, 39.068302, 50.034447>,  <38.542194, 38.960419, 50.175354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.703770, 39.068302, 50.034447>,  <38.973064, 39.248108, 49.799603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703770, 39.068302, 50.034447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352938, 0.502365, 0.789344,
		-0.649764, 0.738624, -0.179559,
		-0.673233, -0.449514, 0.587107,
		38.501801, 38.933449, 50.210579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708096, 39.771870, 50.136166>,  <38.973064, 39.248108, 49.799603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708096, 39.771870, 50.136166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653431, 39.438618, 50.350536>,  <38.620632, 39.238667, 50.479160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.653431, 39.438618, 50.350536>,  <38.708096, 39.771870, 50.136166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653431, 39.438618, 50.350536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430053, 0.437469, 0.789731,
		-0.892400, 0.338406, 0.298504,
		-0.136664, -0.833128, 0.535929,
		38.612431, 39.188679, 50.511314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522282, 40.025623, 50.733681>,  <38.708096, 39.771870, 50.136166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522282, 40.025623, 50.733681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585876, 39.648907, 50.852169>,  <38.624035, 39.422874, 50.923260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585876, 39.648907, 50.852169>,  <38.522282, 40.025623, 50.733681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585876, 39.648907, 50.852169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408692, 0.335903, 0.848610,
		-0.898718, -0.013857, 0.438309,
		0.158988, -0.941795, 0.296219,
		38.633572, 39.366367, 50.941036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495377, 40.098869, 51.385204>,  <38.522282, 40.025623, 50.733681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495377, 40.098869, 51.385204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706181, 39.763153, 51.331757>,  <38.832664, 39.561726, 51.299686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706181, 39.763153, 51.331757>,  <38.495377, 40.098869, 51.385204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706181, 39.763153, 51.331757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604951, 0.260046, 0.752603,
		-0.596901, -0.477466, 0.644775,
		0.527013, -0.839287, -0.133621,
		38.864285, 39.511368, 51.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526997, 39.691814, 51.985134>,  <38.495377, 40.098869, 51.385204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526997, 39.691814, 51.985134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.841743, 39.573189, 51.768654>,  <39.030590, 39.502014, 51.638767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.841743, 39.573189, 51.768654>,  <38.526997, 39.691814, 51.985134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841743, 39.573189, 51.768654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608100, 0.223161, 0.761849,
		-0.105160, -0.928575, 0.355936,
		0.786865, -0.296561, -0.541198,
		39.077805, 39.484222, 51.606293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877674, 39.387314, 52.513584>,  <38.526997, 39.691814, 51.985134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877674, 39.387314, 52.513584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.125080, 39.480782, 52.213493>,  <39.273521, 39.536861, 52.033440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.125080, 39.480782, 52.213493>,  <38.877674, 39.387314, 52.513584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125080, 39.480782, 52.213493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654047, 0.376068, 0.656350,
		0.435506, -0.896644, 0.079771,
		0.618512, 0.233670, -0.750228,
		39.310635, 39.550884, 51.988426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.261192, 34.988163, 37.423901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643650, 34.876495, 37.388447>,  <34.873123, 34.809494, 37.367176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643650, 34.876495, 37.388447>,  <34.261192, 34.988163, 37.423901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643650, 34.876495, 37.388447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031596, -0.202527, 0.978767,
		-0.291194, -0.938641, -0.184824,
		0.956142, -0.279171, -0.088632,
		34.930492, 34.792744, 37.361858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317451, 34.346706, 37.786457>,  <34.261192, 34.988163, 37.423901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317451, 34.346706, 37.786457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686420, 34.500736, 37.774708>,  <34.907803, 34.593155, 37.767658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686420, 34.500736, 37.774708>,  <34.317451, 34.346706, 37.786457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686420, 34.500736, 37.774708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114749, -0.200660, 0.972918,
		0.368750, -0.900808, -0.229279,
		0.922419, 0.385073, -0.029374,
		34.963146, 34.616257, 37.765896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828781, 33.844532, 38.263596>,  <34.317451, 34.346706, 37.786457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828781, 33.844532, 38.263596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980446, 34.211639, 38.216373>,  <35.071445, 34.431904, 38.188038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980446, 34.211639, 38.216373>,  <34.828781, 33.844532, 38.263596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980446, 34.211639, 38.216373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004489, 0.129408, 0.991581,
		0.925321, -0.375436, 0.053186,
		0.379158, 0.917770, -0.118059,
		35.094193, 34.486969, 38.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361389, 33.924000, 38.763718>,  <34.828781, 33.844532, 38.263596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361389, 33.924000, 38.763718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264481, 34.300106, 38.668049>,  <35.206333, 34.525768, 38.610649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264481, 34.300106, 38.668049>,  <35.361389, 33.924000, 38.763718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264481, 34.300106, 38.668049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191326, 0.287978, 0.938330,
		0.951156, 0.181574, -0.249667,
		-0.242275, 0.940266, -0.239172,
		35.191799, 34.582188, 38.596298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766731, 34.230385, 39.178654>,  <35.361389, 33.924000, 38.763718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766731, 34.230385, 39.178654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481174, 34.495415, 39.088013>,  <35.309841, 34.654434, 39.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481174, 34.495415, 39.088013>,  <35.766731, 34.230385, 39.178654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481174, 34.495415, 39.088013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122611, 0.436878, 0.891125,
		0.689438, 0.608384, -0.393123,
		-0.713893, 0.662576, -0.226606,
		35.267006, 34.694187, 39.020031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086441, 34.879917, 39.391518>,  <35.766731, 34.230385, 39.178654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086441, 34.879917, 39.391518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695992, 34.960072, 39.357964>,  <35.461723, 35.008163, 39.337830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695992, 34.960072, 39.357964>,  <36.086441, 34.879917, 39.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695992, 34.960072, 39.357964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013516, 0.441429, 0.897194,
		0.216811, 0.874636, -0.433596,
		-0.976120, 0.200382, -0.083885,
		35.403156, 35.020187, 39.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003101, 35.635773, 39.410061>,  <36.086441, 34.879917, 39.391518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003101, 35.635773, 39.410061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650295, 35.473053, 39.505199>,  <35.438614, 35.375423, 39.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650295, 35.473053, 39.505199>,  <36.003101, 35.635773, 39.410061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650295, 35.473053, 39.505199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025765, 0.462348, 0.886324,
		-0.470520, 0.787878, -0.397316,
		-0.882013, -0.406796, 0.237844,
		35.385693, 35.351013, 39.576553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578522, 36.192638, 39.705292>,  <36.003101, 35.635773, 39.410061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578522, 36.192638, 39.705292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420727, 35.845173, 39.825157>,  <35.326050, 35.636692, 39.897076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420727, 35.845173, 39.825157>,  <35.578522, 36.192638, 39.705292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420727, 35.845173, 39.825157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186332, 0.243711, 0.951780,
		-0.899811, 0.431303, 0.065719,
		-0.394489, -0.868667, 0.299660,
		35.302380, 35.584572, 39.915054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044949, 36.348534, 40.232830>,  <35.578522, 36.192638, 39.705292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044949, 36.348534, 40.232830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148159, 35.970070, 40.311008>,  <35.210087, 35.742992, 40.357914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148159, 35.970070, 40.311008>,  <35.044949, 36.348534, 40.232830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148159, 35.970070, 40.311008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046813, 0.189810, 0.980704,
		-0.965003, -0.262199, 0.004683,
		0.258028, -0.946163, 0.195442,
		35.225567, 35.686222, 40.369640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700451, 36.279667, 40.786129>,  <35.044949, 36.348534, 40.232830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700451, 36.279667, 40.786129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932560, 35.953918, 40.789841>,  <35.071827, 35.758469, 40.792068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932560, 35.953918, 40.789841>,  <34.700451, 36.279667, 40.786129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932560, 35.953918, 40.789841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106223, 0.086979, 0.990531,
		-0.807463, -0.573795, 0.136976,
		0.580276, -0.814367, 0.009282,
		35.106644, 35.709610, 40.792625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412758, 35.708206, 41.330463>,  <34.700451, 36.279667, 40.786129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412758, 35.708206, 41.330463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804226, 35.662960, 41.261868>,  <35.039108, 35.635811, 41.220711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804226, 35.662960, 41.261868>,  <34.412758, 35.708206, 41.330463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804226, 35.662960, 41.261868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184276, 0.114342, 0.976201,
		-0.090817, -0.986980, 0.132748,
		0.978670, -0.113118, -0.171493,
		35.097828, 35.629025, 41.210419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756748, 35.195076, 41.930073>,  <34.412758, 35.708206, 41.330463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756748, 35.195076, 41.930073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061314, 35.392807, 41.762314>,  <35.244053, 35.511444, 41.661659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061314, 35.392807, 41.762314>,  <34.756748, 35.195076, 41.930073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061314, 35.392807, 41.762314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347316, 0.235202, 0.907773,
		0.547379, -0.836852, 0.007398,
		0.761412, 0.494327, -0.419396,
		35.289738, 35.541103, 41.636494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583054, 34.499844, 42.200245>,  <34.756748, 35.195076, 41.930073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583054, 34.499844, 42.200245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265011, 34.474781, 42.441532>,  <34.074184, 34.459743, 42.586304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265011, 34.474781, 42.441532>,  <34.583054, 34.499844, 42.200245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265011, 34.474781, 42.441532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547420, -0.353932, -0.758329,
		0.261016, -0.933170, 0.247113,
		-0.795111, -0.062662, 0.603218,
		34.026478, 34.455982, 42.622498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228928, 33.873158, 42.030678>,  <34.583054, 34.499844, 42.200245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228928, 33.873158, 42.030678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939186, 34.065754, 42.228050>,  <33.765339, 34.181313, 42.346474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939186, 34.065754, 42.228050>,  <34.228928, 33.873158, 42.030678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939186, 34.065754, 42.228050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683717, -0.409782, -0.603830,
		-0.088538, -0.774756, 0.626030,
		-0.724357, 0.481489, 0.493433,
		33.721878, 34.210201, 42.376080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757656, 33.284859, 42.230602>,  <34.228928, 33.873158, 42.030678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757656, 33.284859, 42.230602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606781, 33.655270, 42.224949>,  <33.516254, 33.877518, 42.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606781, 33.655270, 42.224949>,  <33.757656, 33.284859, 42.230602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606781, 33.655270, 42.224949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714559, -0.300691, -0.631658,
		-0.589183, -0.228155, 0.775119,
		-0.377187, 0.926030, -0.014132,
		33.493626, 33.933079, 42.220711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031776, 33.192467, 42.345566>,  <33.757656, 33.284859, 42.230602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031776, 33.192467, 42.345566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059795, 33.559746, 42.189617>,  <33.076607, 33.780113, 42.096046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059795, 33.559746, 42.189617>,  <33.031776, 33.192467, 42.345566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059795, 33.559746, 42.189617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770327, -0.198527, -0.605956,
		-0.633789, 0.342777, 0.693408,
		0.070047, 0.918200, -0.389875,
		33.080811, 33.835205, 42.072655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348991, 33.466255, 42.436508>,  <33.031776, 33.192467, 42.345566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348991, 33.466255, 42.436508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526989, 33.659431, 42.134850>,  <32.633789, 33.775337, 41.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526989, 33.659431, 42.134850>,  <32.348991, 33.466255, 42.436508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526989, 33.659431, 42.134850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797241, -0.169938, -0.579248,
		-0.407903, 0.859003, 0.309400,
		0.444997, 0.482944, -0.754151,
		32.660488, 33.804314, 41.908604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791355, 33.768982, 42.201653>,  <32.348991, 33.466255, 42.436508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791355, 33.768982, 42.201653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075611, 33.787815, 41.920860>,  <32.246162, 33.799114, 41.752384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075611, 33.787815, 41.920860>,  <31.791355, 33.768982, 42.201653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075611, 33.787815, 41.920860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667927, -0.268351, -0.694162,
		-0.221058, 0.962170, -0.159254,
		0.710638, 0.047080, -0.701981,
		32.288803, 33.801937, 41.710266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537437, 34.177933, 41.634823>,  <31.791355, 33.768982, 42.201653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537437, 34.177933, 41.634823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835638, 33.963451, 41.476475>,  <32.014557, 33.834763, 41.381466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835638, 33.963451, 41.476475>,  <31.537437, 34.177933, 41.634823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835638, 33.963451, 41.476475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565540, -0.194605, -0.801432,
		0.352693, 0.821349, -0.448322,
		0.745502, -0.536204, -0.395870,
		32.059288, 33.802589, 41.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637909, 34.432011, 40.925346>,  <31.537437, 34.177933, 41.634823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637909, 34.432011, 40.925346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771793, 34.057499, 40.967957>,  <31.852123, 33.832790, 40.993523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771793, 34.057499, 40.967957>,  <31.637909, 34.432011, 40.925346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771793, 34.057499, 40.967957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630073, -0.306425, -0.713521,
		0.700697, 0.171705, -0.692489,
		0.334711, -0.936280, 0.106525,
		31.872208, 33.776615, 40.999912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697390, 34.273785, 40.207630>,  <31.637909, 34.432011, 40.925346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697390, 34.273785, 40.207630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724228, 33.938797, 40.424568>,  <31.740332, 33.737804, 40.554729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724228, 33.938797, 40.424568>,  <31.697390, 34.273785, 40.207630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724228, 33.938797, 40.424568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667093, -0.441866, -0.599785,
		0.741947, -0.321552, -0.588319,
		0.067096, -0.837472, 0.542346,
		31.744356, 33.687557, 40.587273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625332, 33.662605, 39.780624>,  <31.697390, 34.273785, 40.207630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625332, 33.662605, 39.780624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540983, 33.495266, 40.134014>,  <31.490374, 33.394863, 40.346046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540983, 33.495266, 40.134014>,  <31.625332, 33.662605, 39.780624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540983, 33.495266, 40.134014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574445, -0.678234, -0.458271,
		0.790915, -0.604142, -0.097296,
		-0.210871, -0.418344, 0.883471,
		31.477722, 33.369762, 40.399055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619169, 33.016037, 39.596668>,  <31.625332, 33.662605, 39.780624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619169, 33.016037, 39.596668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424833, 33.004086, 39.946083>,  <31.308231, 32.996914, 40.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424833, 33.004086, 39.946083>,  <31.619169, 33.016037, 39.596668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424833, 33.004086, 39.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524408, -0.789586, -0.318668,
		0.699253, -0.612912, 0.367947,
		-0.485842, -0.029875, 0.873536,
		31.279081, 32.995125, 40.208145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619795, 32.311543, 39.870377>,  <31.619169, 33.016037, 39.596668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619795, 32.311543, 39.870377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305761, 32.486446, 40.045849>,  <31.117342, 32.591389, 40.151134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305761, 32.486446, 40.045849>,  <31.619795, 32.311543, 39.870377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305761, 32.486446, 40.045849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587040, -0.751185, -0.301836,
		0.197551, -0.494491, 0.846435,
		-0.785084, 0.437263, 0.438684,
		31.070236, 32.617626, 40.177452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187075, 31.784096, 40.088673>,  <31.619795, 32.311543, 39.870377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187075, 31.784096, 40.088673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923750, 32.083298, 40.122402>,  <30.765755, 32.262817, 40.142639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923750, 32.083298, 40.122402>,  <31.187075, 31.784096, 40.088673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923750, 32.083298, 40.122402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752699, -0.652922, -0.084474,
		-0.008130, -0.119082, 0.992851,
		-0.658314, 0.748005, 0.084325,
		30.726255, 32.307701, 40.147701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762901, 31.442352, 40.699627>,  <31.187075, 31.784096, 40.088673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762901, 31.442352, 40.699627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570421, 31.690096, 40.451485>,  <30.454933, 31.838741, 40.302601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570421, 31.690096, 40.451485>,  <30.762901, 31.442352, 40.699627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570421, 31.690096, 40.451485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743183, -0.663539, -0.085995,
		-0.464892, 0.419657, 0.779592,
		-0.481200, 0.619358, -0.620356,
		30.426062, 31.875904, 40.265377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396015, 31.076021, 41.014866>,  <30.762901, 31.442352, 40.699627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396015, 31.076021, 41.014866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567261, 30.737513, 40.888035>,  <31.670008, 30.534407, 40.811935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567261, 30.737513, 40.888035>,  <31.396015, 31.076021, 41.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567261, 30.737513, 40.888035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386085, -0.145960, 0.910842,
		-0.817102, -0.512365, 0.264246,
		0.428114, -0.846273, -0.317081,
		31.695696, 30.483631, 40.792912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344463, 30.610542, 41.540199>,  <31.396015, 31.076021, 41.014866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344463, 30.610542, 41.540199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664724, 30.495258, 41.330101>,  <31.856882, 30.426088, 41.204041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664724, 30.495258, 41.330101>,  <31.344463, 30.610542, 41.540199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664724, 30.495258, 41.330101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518794, -0.104997, 0.848427,
		-0.299676, -0.951793, 0.065456,
		0.800655, -0.288211, -0.525249,
		31.904921, 30.408794, 41.172527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695095, 30.232756, 42.019318>,  <31.344463, 30.610542, 41.540199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695095, 30.232756, 42.019318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968922, 30.278450, 41.731339>,  <32.133217, 30.305866, 41.558552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968922, 30.278450, 41.731339>,  <31.695095, 30.232756, 42.019318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968922, 30.278450, 41.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717708, 0.067167, 0.693097,
		0.127532, -0.991181, -0.036007,
		0.684566, 0.114235, -0.719944,
		32.174290, 30.312721, 41.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241947, 29.849180, 42.287720>,  <31.695095, 30.232756, 42.019318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241947, 29.849180, 42.287720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353962, 30.117014, 42.012550>,  <32.421169, 30.277714, 41.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353962, 30.117014, 42.012550>,  <32.241947, 29.849180, 42.287720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353962, 30.117014, 42.012550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735986, 0.310345, 0.601673,
		0.616365, -0.674789, -0.405900,
		0.280033, 0.669587, -0.687921,
		32.437973, 30.317890, 41.806175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897678, 29.818409, 42.276657>,  <32.241947, 29.849180, 42.287720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897678, 29.818409, 42.276657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832897, 30.174997, 42.107399>,  <32.794029, 30.388950, 42.005844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832897, 30.174997, 42.107399>,  <32.897678, 29.818409, 42.276657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832897, 30.174997, 42.107399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721998, 0.399352, 0.565010,
		0.672674, -0.214010, -0.708314,
		-0.161949, 0.891470, -0.423148,
		32.784313, 30.442438, 41.980453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488605, 29.969967, 41.976578>,  <32.897678, 29.818409, 42.276657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488605, 29.969967, 41.976578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264381, 30.284330, 42.080975>,  <33.129845, 30.472948, 42.143612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264381, 30.284330, 42.080975>,  <33.488605, 29.969967, 41.976578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264381, 30.284330, 42.080975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682783, 0.260295, 0.682681,
		0.468589, 0.560887, -0.682517,
		-0.560563, 0.785908, 0.260993,
		33.096214, 30.520103, 42.159271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977966, 30.471054, 41.968796>,  <33.488605, 29.969967, 41.976578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977966, 30.471054, 41.968796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669338, 30.648663, 42.151012>,  <33.484161, 30.755228, 42.260342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669338, 30.648663, 42.151012>,  <33.977966, 30.471054, 41.968796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669338, 30.648663, 42.151012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622513, 0.379583, 0.684394,
		0.130968, 0.811642, -0.569284,
		-0.771573, 0.444020, 0.455544,
		33.437866, 30.781868, 42.287674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103611, 31.202579, 42.030178>,  <33.977966, 30.471054, 41.968796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103611, 31.202579, 42.030178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847565, 31.151648, 42.333241>,  <33.693935, 31.121088, 42.515076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847565, 31.151648, 42.333241>,  <34.103611, 31.202579, 42.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847565, 31.151648, 42.333241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575734, 0.573479, 0.582797,
		-0.508704, 0.809265, -0.293786,
		-0.640117, -0.127329, 0.757653,
		33.655529, 31.113449, 42.560535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067375, 31.841703, 42.355003>,  <34.103611, 31.202579, 42.030178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067375, 31.841703, 42.355003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916245, 31.602375, 42.637638>,  <33.825565, 31.458778, 42.807217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916245, 31.602375, 42.637638>,  <34.067375, 31.841703, 42.355003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916245, 31.602375, 42.637638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545084, 0.473139, 0.692115,
		-0.748420, 0.646645, 0.147372,
		-0.377825, -0.598323, 0.706582,
		33.802898, 31.422878, 42.849613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656567, 32.261257, 42.870361>,  <34.067375, 31.841703, 42.355003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656567, 32.261257, 42.870361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788845, 31.916698, 43.024574>,  <33.868214, 31.709963, 43.117100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788845, 31.916698, 43.024574>,  <33.656567, 32.261257, 42.870361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788845, 31.916698, 43.024574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612618, 0.506681, 0.606608,
		-0.717871, 0.035579, 0.695266,
		0.330696, -0.861399, 0.385528,
		33.888054, 31.658279, 43.140232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785789, 32.268723, 43.488277>,  <33.656567, 32.261257, 42.870361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785789, 32.268723, 43.488277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981720, 31.923611, 43.538380>,  <34.099277, 31.716545, 43.568439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981720, 31.923611, 43.538380>,  <33.785789, 32.268723, 43.488277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981720, 31.923611, 43.538380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405531, 0.352660, 0.843312,
		-0.771760, -0.362284, 0.522625,
		0.489828, -0.862775, 0.125251,
		34.128670, 31.664778, 43.575954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843147, 32.184280, 44.283844>,  <33.785789, 32.268723, 43.488277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843147, 32.184280, 44.283844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113380, 31.938814, 44.120384>,  <34.275520, 31.791533, 44.022308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113380, 31.938814, 44.120384>,  <33.843147, 32.184280, 44.283844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113380, 31.938814, 44.120384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633902, 0.200433, 0.746991,
		-0.376500, -0.763698, 0.524417,
		0.675586, -0.613670, -0.408646,
		34.316055, 31.754713, 43.997791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067673, 31.871920, 44.861778>,  <33.843147, 32.184280, 44.283844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067673, 31.871920, 44.861778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333542, 31.799362, 44.571865>,  <34.493061, 31.755829, 44.397919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333542, 31.799362, 44.571865>,  <34.067673, 31.871920, 44.861778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333542, 31.799362, 44.571865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746853, 0.134540, 0.651237,
		-0.020617, -0.974164, 0.224898,
		0.664669, -0.181392, -0.724784,
		34.532944, 31.744946, 44.354431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475822, 31.232622, 45.040543>,  <34.067673, 31.871920, 44.861778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475822, 31.232622, 45.040543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685474, 31.467829, 44.794121>,  <34.811268, 31.608953, 44.646267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685474, 31.467829, 44.794121>,  <34.475822, 31.232622, 45.040543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685474, 31.467829, 44.794121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735071, 0.052932, 0.675920,
		0.430062, -0.807114, -0.404491,
		0.524134, 0.588018, -0.616050,
		34.842716, 31.644234, 44.609306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198296, 31.085806, 45.164352>,  <34.475822, 31.232622, 45.040543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198296, 31.085806, 45.164352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215294, 31.444572, 44.988289>,  <35.225494, 31.659832, 44.882652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215294, 31.444572, 44.988289>,  <35.198296, 31.085806, 45.164352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215294, 31.444572, 44.988289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716465, 0.279687, 0.639104,
		0.696327, -0.342518, -0.630722,
		0.042500, 0.896915, -0.440155,
		35.228043, 31.713648, 44.856243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890839, 31.130014, 45.141296>,  <35.198296, 31.085806, 45.164352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890839, 31.130014, 45.141296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781082, 31.500208, 45.036846>,  <35.715229, 31.722324, 44.974174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781082, 31.500208, 45.036846>,  <35.890839, 31.130014, 45.141296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781082, 31.500208, 45.036846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848245, 0.360860, 0.387635,
		0.452981, -0.115136, -0.884054,
		-0.274389, 0.925486, -0.261126,
		35.698765, 31.777853, 44.958508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416203, 31.504631, 44.817165>,  <35.890839, 31.130014, 45.141296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416203, 31.504631, 44.817165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205555, 31.834467, 44.899841>,  <36.079166, 32.032368, 44.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205555, 31.834467, 44.899841>,  <36.416203, 31.504631, 44.817165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205555, 31.834467, 44.899841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832721, 0.451465, 0.320555,
		0.171015, 0.340922, -0.924406,
		-0.526621, 0.824591, 0.206686,
		36.047569, 32.081844, 44.961845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823429, 32.032848, 44.587475>,  <36.416203, 31.504631, 44.817165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823429, 32.032848, 44.587475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574753, 32.191238, 44.857796>,  <36.425549, 32.286274, 45.019989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574753, 32.191238, 44.857796>,  <36.823429, 32.032848, 44.587475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574753, 32.191238, 44.857796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765287, 0.490872, 0.416391,
		-0.166848, 0.776045, -0.608207,
		-0.621690, 0.395978, 0.675798,
		36.388245, 32.310032, 45.060535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042305, 32.743217, 44.599014>,  <36.823429, 32.032848, 44.587475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042305, 32.743217, 44.599014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829063, 32.659359, 44.926880>,  <36.701118, 32.609043, 45.123600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829063, 32.659359, 44.926880>,  <37.042305, 32.743217, 44.599014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829063, 32.659359, 44.926880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673381, 0.481395, 0.561085,
		-0.512213, 0.851062, -0.115459,
		-0.533100, -0.209647, 0.819666,
		36.669132, 32.596466, 45.172779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129696, 33.302265, 44.994343>,  <37.042305, 32.743217, 44.599014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129696, 33.302265, 44.994343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041950, 33.016945, 45.260601>,  <36.989304, 32.845753, 45.420357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041950, 33.016945, 45.260601>,  <37.129696, 33.302265, 44.994343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041950, 33.016945, 45.260601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626957, 0.419692, 0.656341,
		-0.747534, 0.561308, 0.355143,
		-0.219360, -0.713296, 0.665650,
		36.976143, 32.802956, 45.460297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927715, 33.609955, 45.665630>,  <37.129696, 33.302265, 44.994343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927715, 33.609955, 45.665630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043373, 33.232811, 45.731850>,  <37.112766, 33.006523, 45.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043373, 33.232811, 45.731850>,  <36.927715, 33.609955, 45.665630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043373, 33.232811, 45.731850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725750, 0.328673, 0.604369,
		-0.624247, -0.054604, 0.779316,
		0.289142, -0.942864, 0.165544,
		37.130116, 32.949951, 45.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889793, 33.504791, 46.372307>,  <36.927715, 33.609955, 45.665630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889793, 33.504791, 46.372307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117138, 33.192131, 46.269550>,  <37.253544, 33.004536, 46.207897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117138, 33.192131, 46.269550>,  <36.889793, 33.504791, 46.372307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117138, 33.192131, 46.269550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741533, 0.351349, 0.571561,
		-0.356500, -0.515347, 0.779311,
		0.568363, -0.781646, -0.256891,
		37.287647, 32.957638, 46.192482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054630, 33.200890, 47.034725>,  <36.889793, 33.504791, 46.372307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054630, 33.200890, 47.034725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302582, 33.074135, 46.747578>,  <37.451351, 32.998081, 46.575291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302582, 33.074135, 46.747578>,  <37.054630, 33.200890, 47.034725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302582, 33.074135, 46.747578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784222, 0.282113, 0.552638,
		0.027397, -0.905536, 0.423384,
		0.619875, -0.316886, -0.717870,
		37.488544, 32.979069, 46.532215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560719, 32.821636, 47.426167>,  <37.054630, 33.200890, 47.034725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560719, 32.821636, 47.426167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773663, 32.868687, 47.090843>,  <37.901428, 32.896915, 46.889648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773663, 32.868687, 47.090843>,  <37.560719, 32.821636, 47.426167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773663, 32.868687, 47.090843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844488, -0.005225, 0.535549,
		0.058613, -0.993044, -0.102114,
		0.532357, 0.117624, -0.838308,
		37.933369, 32.903973, 46.839352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108437, 32.469284, 47.570385>,  <37.560719, 32.821636, 47.426167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108437, 32.469284, 47.570385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254780, 32.696201, 47.275269>,  <38.342587, 32.832352, 47.098198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254780, 32.696201, 47.275269>,  <38.108437, 32.469284, 47.570385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254780, 32.696201, 47.275269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831479, 0.156887, 0.532943,
		0.418082, -0.808437, -0.414291,
		0.365854, 0.567289, -0.737790,
		38.364536, 32.866386, 47.053932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714352, 32.104950, 47.392071>,  <38.108437, 32.469284, 47.570385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714352, 32.104950, 47.392071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709328, 32.497482, 47.315308>,  <38.706314, 32.733002, 47.269249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709328, 32.497482, 47.315308>,  <38.714352, 32.104950, 47.392071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709328, 32.497482, 47.315308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829524, 0.117388, 0.545994,
		0.558329, -0.152339, -0.815513,
		-0.012555, 0.981332, -0.191910,
		38.705563, 32.791882, 47.257736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407333, 32.325752, 47.332809>,  <38.714352, 32.104950, 47.392071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407333, 32.325752, 47.332809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212254, 32.668018, 47.402069>,  <39.095207, 32.873379, 47.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212254, 32.668018, 47.402069>,  <39.407333, 32.325752, 47.332809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212254, 32.668018, 47.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692303, 0.258237, 0.673818,
		0.531853, 0.448489, -0.718324,
		-0.487698, 0.855670, 0.173146,
		39.065945, 32.924721, 47.454014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900242, 32.955879, 47.196781>,  <39.407333, 32.325752, 47.332809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900242, 32.955879, 47.196781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610130, 33.063515, 47.450256>,  <39.436062, 33.128098, 47.602341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610130, 33.063515, 47.450256>,  <39.900242, 32.955879, 47.196781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610130, 33.063515, 47.450256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687672, 0.327014, 0.648204,
		-0.032799, 0.905898, -0.422224,
		-0.725280, 0.269091, 0.633687,
		39.392548, 33.144241, 47.640362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121265, 33.601238, 46.803005>,  <39.900242, 32.955879, 47.196781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121265, 33.601238, 46.803005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437984, 33.683777, 46.573055>,  <40.628014, 33.733299, 46.435085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437984, 33.683777, 46.573055>,  <40.121265, 33.601238, 46.803005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437984, 33.683777, 46.573055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455119, -0.428382, -0.780613,
		-0.407345, 0.879721, -0.245277,
		0.791793, 0.206349, -0.574877,
		40.675522, 33.745682, 46.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885021, 34.014576, 46.144711>,  <40.121265, 33.601238, 46.803005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885021, 34.014576, 46.144711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244556, 33.855244, 46.071594>,  <40.460278, 33.759644, 46.027725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244556, 33.855244, 46.071594>,  <39.885021, 34.014576, 46.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244556, 33.855244, 46.071594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335895, -0.358206, -0.871127,
		0.281525, 0.844404, -0.455770,
		0.898843, -0.398335, -0.182787,
		40.514210, 33.735744, 46.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095448, 34.280628, 45.536297>,  <39.885021, 34.014576, 46.144711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095448, 34.280628, 45.536297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306705, 33.942383, 45.567291>,  <40.433460, 33.739437, 45.585888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306705, 33.942383, 45.567291>,  <40.095448, 34.280628, 45.536297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306705, 33.942383, 45.567291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380899, -0.317476, -0.868404,
		0.758935, 0.429124, -0.489766,
		0.528141, -0.845613, 0.077491,
		40.465149, 33.688698, 45.590538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229034, 34.047825, 44.813995>,  <40.095448, 34.280628, 45.536297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229034, 34.047825, 44.813995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290745, 33.718021, 45.031761>,  <40.327770, 33.520138, 45.162418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290745, 33.718021, 45.031761>,  <40.229034, 34.047825, 44.813995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290745, 33.718021, 45.031761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351732, -0.560740, -0.749570,
		0.923301, -0.075848, -0.376514,
		0.154273, -0.824511, 0.544410,
		40.337029, 33.470669, 45.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654663, 33.620453, 44.403057>,  <40.229034, 34.047825, 44.813995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654663, 33.620453, 44.403057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456661, 33.397320, 44.669529>,  <40.337860, 33.263439, 44.829411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456661, 33.397320, 44.669529>,  <40.654663, 33.620453, 44.403057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456661, 33.397320, 44.669529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348849, -0.574598, -0.740365,
		0.795784, -0.598881, 0.089830,
		-0.495007, -0.557834, 0.666175,
		40.308159, 33.229969, 44.869381>
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
