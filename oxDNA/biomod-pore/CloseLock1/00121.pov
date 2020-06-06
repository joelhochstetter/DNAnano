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
	<24.644474, 34.629131, 34.808094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277033, 34.676220, 34.958988>,  <24.056568, 34.704472, 35.049526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.277033, 34.676220, 34.958988>,  <24.644474, 34.629131, 34.808094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.277033, 34.676220, 34.958988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010179, 0.961332, -0.275204,
		-0.395048, -0.248963, -0.884282,
		-0.918604, 0.117720, 0.377238,
		24.001451, 34.711536, 35.072159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332378, 34.899841, 34.700314>,  <24.644474, 34.629131, 34.808094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332378, 34.899841, 34.700314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431746, 34.531494, 34.580124>,  <25.491365, 34.310486, 34.508011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431746, 34.531494, 34.580124>,  <25.332378, 34.899841, 34.700314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431746, 34.531494, 34.580124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341789, 0.373580, -0.862333,
		0.906348, 0.111521, 0.407548,
		0.248420, -0.920870, -0.300477,
		25.506271, 34.255234, 34.489983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019012, 34.897945, 34.429512>,  <25.332378, 34.899841, 34.700314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019012, 34.897945, 34.429512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780100, 34.622406, 34.265202>,  <25.636751, 34.457081, 34.166615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.780100, 34.622406, 34.265202>,  <26.019012, 34.897945, 34.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780100, 34.622406, 34.265202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224110, 0.348423, -0.910152,
		0.770083, -0.635677, -0.053729,
		-0.597283, -0.688851, -0.410776,
		25.600914, 34.415752, 34.141968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373451, 34.491451, 33.916500>,  <26.019012, 34.897945, 34.429512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373451, 34.491451, 33.916500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993023, 34.441086, 33.803638>,  <25.764767, 34.410866, 33.735924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993023, 34.441086, 33.803638>,  <26.373451, 34.491451, 33.916500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993023, 34.441086, 33.803638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271754, 0.093620, -0.957802,
		0.147019, -0.987613, -0.054821,
		-0.951071, -0.125917, -0.282152,
		25.707701, 34.403313, 33.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352730, 33.985371, 33.409428>,  <26.373451, 34.491451, 33.916500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352730, 33.985371, 33.409428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999905, 34.165577, 33.354290>,  <25.788210, 34.273701, 33.321209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999905, 34.165577, 33.354290>,  <26.352730, 33.985371, 33.409428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999905, 34.165577, 33.354290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149644, -0.009522, -0.988694,
		-0.446736, -0.892717, -0.059018,
		-0.882062, 0.450517, -0.137844,
		25.735287, 34.300732, 33.312939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017271, 33.732769, 32.843239>,  <26.352730, 33.985371, 33.409428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017271, 33.732769, 32.843239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814745, 34.074398, 32.890911>,  <25.693230, 34.279377, 32.919514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814745, 34.074398, 32.890911>,  <26.017271, 33.732769, 32.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814745, 34.074398, 32.890911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103650, 0.076932, -0.991634,
		-0.856097, -0.514432, 0.049573,
		-0.506314, 0.854073, 0.119182,
		25.662851, 34.330620, 32.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570318, 33.834759, 32.294262>,  <26.017271, 33.732769, 32.843239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570318, 33.834759, 32.294262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625334, 34.201481, 32.444218>,  <25.658342, 34.421516, 32.534191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625334, 34.201481, 32.444218>,  <25.570318, 33.834759, 32.294262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625334, 34.201481, 32.444218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073943, 0.386937, -0.919137,
		-0.987733, 0.098696, 0.121010,
		0.137539, 0.916809, 0.374892,
		25.666595, 34.476524, 32.556686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187061, 34.209290, 31.803148>,  <25.570318, 33.834759, 32.294262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187061, 34.209290, 31.803148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455128, 34.443829, 31.985170>,  <25.615967, 34.584553, 32.094383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455128, 34.443829, 31.985170>,  <25.187061, 34.209290, 31.803148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455128, 34.443829, 31.985170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042965, 0.581427, -0.812463,
		-0.740969, 0.564035, 0.364459,
		0.670164, 0.586351, 0.455053,
		25.656178, 34.619736, 32.121685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.159893, 35.080917, 31.703276>,  <25.187061, 34.209290, 31.803148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.159893, 35.080917, 31.703276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534185, 34.948391, 31.751671>,  <25.758760, 34.868874, 31.780708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534185, 34.948391, 31.751671>,  <25.159893, 35.080917, 31.703276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534185, 34.948391, 31.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268304, 0.445953, -0.853896,
		0.228955, 0.831478, 0.506185,
		0.935731, -0.331315, 0.120986,
		25.814905, 34.848995, 31.787966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548204, 35.612053, 31.478201>,  <25.159893, 35.080917, 31.703276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548204, 35.612053, 31.478201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803089, 35.303776, 31.478596>,  <25.956020, 35.118809, 31.478832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803089, 35.303776, 31.478596>,  <25.548204, 35.612053, 31.478201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803089, 35.303776, 31.478596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249196, 0.204823, -0.946546,
		0.729290, 0.603396, 0.322568,
		0.637211, -0.770689, 0.000989,
		25.994253, 35.072571, 31.478891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140738, 35.922028, 31.345486>,  <25.548204, 35.612053, 31.478201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140738, 35.922028, 31.345486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219145, 35.545479, 31.235657>,  <26.266190, 35.319550, 31.169760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219145, 35.545479, 31.235657>,  <26.140738, 35.922028, 31.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219145, 35.545479, 31.235657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299987, 0.324150, -0.897181,
		0.933587, 0.093497, 0.345940,
		0.196020, -0.941374, -0.274574,
		26.277950, 35.263065, 31.153284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845814, 35.964512, 30.963049>,  <26.140738, 35.922028, 31.345486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845814, 35.964512, 30.963049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667473, 35.626438, 30.845152>,  <26.560469, 35.423592, 30.774414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667473, 35.626438, 30.845152>,  <26.845814, 35.964512, 30.963049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667473, 35.626438, 30.845152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325888, 0.153411, -0.932878,
		0.833674, -0.511980, 0.207038,
		-0.445853, -0.845187, -0.294743,
		26.533716, 35.372883, 30.756729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401665, 35.485256, 30.650305>,  <26.845814, 35.964512, 30.963049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401665, 35.485256, 30.650305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040600, 35.387383, 30.508698>,  <26.823961, 35.328659, 30.423733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040600, 35.387383, 30.508698>,  <27.401665, 35.485256, 30.650305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040600, 35.387383, 30.508698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355279, 0.040512, -0.933882,
		0.242845, -0.968757, 0.050362,
		-0.902664, -0.244681, -0.354018,
		26.769800, 35.313980, 30.402493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505522, 34.963017, 30.277685>,  <27.401665, 35.485256, 30.650305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505522, 34.963017, 30.277685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145651, 35.059715, 30.132280>,  <26.929729, 35.117733, 30.045036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145651, 35.059715, 30.132280>,  <27.505522, 34.963017, 30.277685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145651, 35.059715, 30.132280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342541, -0.125316, -0.931108,
		-0.270647, -0.962213, 0.029935,
		-0.899676, 0.241747, -0.363513,
		26.875748, 35.132240, 30.023226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309933, 34.576782, 29.817715>,  <27.505522, 34.963017, 30.277685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309933, 34.576782, 29.817715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057701, 34.867100, 29.707741>,  <26.906363, 35.041290, 29.641756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057701, 34.867100, 29.707741>,  <27.309933, 34.576782, 29.817715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057701, 34.867100, 29.707741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312820, -0.086514, -0.945864,
		-0.710291, -0.682447, -0.172489,
		-0.630579, 0.725797, -0.274933,
		26.868526, 35.084839, 29.625261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184885, 34.460430, 29.080288>,  <27.309933, 34.576782, 29.817715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184885, 34.460430, 29.080288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066946, 34.837009, 29.145695>,  <26.996181, 35.062958, 29.184938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066946, 34.837009, 29.145695>,  <27.184885, 34.460430, 29.080288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066946, 34.837009, 29.145695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305405, 0.254995, -0.917445,
		-0.905424, -0.220570, -0.362708,
		-0.294850, 0.941449, 0.163515,
		26.978491, 35.119446, 29.194750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859583, 34.601177, 28.547342>,  <27.184885, 34.460430, 29.080288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859583, 34.601177, 28.547342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940561, 34.971016, 28.676426>,  <26.989149, 35.192917, 28.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940561, 34.971016, 28.676426>,  <26.859583, 34.601177, 28.547342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940561, 34.971016, 28.676426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185964, 0.287239, -0.939634,
		-0.961474, 0.250239, -0.113790,
		0.202448, 0.924594, 0.322708,
		27.001295, 35.248394, 28.773239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525925, 35.213318, 27.996933>,  <26.859583, 34.601177, 28.547342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525925, 35.213318, 27.996933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832678, 35.343353, 28.218275>,  <27.016729, 35.421375, 28.351080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832678, 35.343353, 28.218275>,  <26.525925, 35.213318, 27.996933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832678, 35.343353, 28.218275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359538, 0.496592, -0.790018,
		-0.531621, 0.804805, 0.263946,
		0.766884, 0.325091, 0.553357,
		27.062742, 35.440880, 28.384283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616882, 35.821091, 27.758886>,  <26.525925, 35.213318, 27.996933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616882, 35.821091, 27.758886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963772, 35.776615, 27.953024>,  <27.171906, 35.749931, 28.069506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963772, 35.776615, 27.953024>,  <26.616882, 35.821091, 27.758886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963772, 35.776615, 27.953024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489890, 0.364845, -0.791767,
		-0.089039, 0.924405, 0.370873,
		0.867225, -0.111189, 0.485343,
		27.223940, 35.743259, 28.098627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112833, 36.366962, 27.539091>,  <26.616882, 35.821091, 27.758886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112833, 36.366962, 27.539091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381355, 36.138096, 27.727549>,  <27.542469, 36.000774, 27.840622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381355, 36.138096, 27.727549>,  <27.112833, 36.366962, 27.539091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381355, 36.138096, 27.727549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679267, 0.220599, -0.699952,
		0.296554, 0.789913, 0.536742,
		0.671306, -0.572165, 0.471143,
		27.582747, 35.966446, 27.868891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700281, 36.739460, 27.586857>,  <27.112833, 36.366962, 27.539091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700281, 36.739460, 27.586857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829147, 36.362354, 27.621292>,  <27.906467, 36.136093, 27.641954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829147, 36.362354, 27.621292>,  <27.700281, 36.739460, 27.586857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829147, 36.362354, 27.621292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762741, 0.204628, -0.613476,
		0.560745, 0.263305, 0.785007,
		0.322166, -0.942761, 0.086090,
		27.925797, 36.079525, 27.647120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469635, 36.793106, 27.679020>,  <27.700281, 36.739460, 27.586857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469635, 36.793106, 27.679020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387772, 36.424145, 27.548000>,  <28.338654, 36.202766, 27.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387772, 36.424145, 27.548000>,  <28.469635, 36.793106, 27.679020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387772, 36.424145, 27.548000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706738, 0.092272, -0.701433,
		0.677227, -0.375044, 0.633013,
		-0.204659, -0.922403, -0.327547,
		28.326374, 36.147423, 27.449736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149801, 36.460056, 27.714079>,  <28.469635, 36.793106, 27.679020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149801, 36.460056, 27.714079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907410, 36.277786, 27.453266>,  <28.761974, 36.168423, 27.296778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907410, 36.277786, 27.453266>,  <29.149801, 36.460056, 27.714079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907410, 36.277786, 27.453266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734303, -0.005204, -0.678802,
		0.305923, -0.890129, 0.337760,
		-0.605979, -0.455680, -0.652032,
		28.725616, 36.141083, 27.257656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628061, 36.129219, 27.292912>,  <29.149801, 36.460056, 27.714079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628061, 36.129219, 27.292912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308308, 36.093712, 27.055222>,  <29.116455, 36.072407, 26.912607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308308, 36.093712, 27.055222>,  <29.628061, 36.129219, 27.292912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308308, 36.093712, 27.055222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599729, -0.058375, -0.798071,
		0.036158, -0.994340, 0.099903,
		-0.799386, -0.088772, -0.594224,
		29.068491, 36.067081, 26.876955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889441, 35.627563, 26.829035>,  <29.628061, 36.129219, 27.292912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889441, 35.627563, 26.829035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579712, 35.819187, 26.663660>,  <29.393875, 35.934162, 26.564436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579712, 35.819187, 26.663660>,  <29.889441, 35.627563, 26.829035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579712, 35.819187, 26.663660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477168, 0.012917, -0.878717,
		-0.415617, -0.877688, -0.238593,
		-0.774321, 0.479059, -0.413436,
		29.347416, 35.962906, 26.539629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791231, 35.236897, 26.271111>,  <29.889441, 35.627563, 26.829035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791231, 35.236897, 26.271111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672216, 35.615261, 26.219376>,  <29.600807, 35.842278, 26.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672216, 35.615261, 26.219376>,  <29.791231, 35.236897, 26.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672216, 35.615261, 26.219376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441596, 0.016247, -0.897067,
		-0.846442, -0.324027, -0.422544,
		-0.297539, 0.945908, -0.129337,
		29.582954, 35.899033, 26.180574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414680, 35.244968, 25.642353>,  <29.791231, 35.236897, 26.271111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414680, 35.244968, 25.642353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572405, 35.602764, 25.726648>,  <29.667040, 35.817440, 25.777225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572405, 35.602764, 25.726648>,  <29.414680, 35.244968, 25.642353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572405, 35.602764, 25.726648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508147, -0.021151, -0.861011,
		-0.765706, 0.446593, -0.462871,
		0.394311, 0.894487, 0.210740,
		29.690699, 35.871109, 25.789869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726419, 35.455608, 25.076399>,  <29.414680, 35.244968, 25.642353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726419, 35.455608, 25.076399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877697, 35.779564, 25.255751>,  <29.968464, 35.973938, 25.363361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877697, 35.779564, 25.255751>,  <29.726419, 35.455608, 25.076399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877697, 35.779564, 25.255751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662250, 0.101732, -0.742345,
		-0.646833, 0.577691, -0.497876,
		0.378196, 0.809891, 0.448380,
		29.991156, 36.022530, 25.390265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758387, 35.900303, 24.543337>,  <29.726419, 35.455608, 25.076399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758387, 35.900303, 24.543337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987968, 36.052334, 24.833473>,  <30.125717, 36.143555, 25.007555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987968, 36.052334, 24.833473>,  <29.758387, 35.900303, 24.543337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987968, 36.052334, 24.833473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652961, 0.322125, -0.685476,
		-0.494186, 0.867049, -0.063293,
		0.573953, 0.380080, 0.725339,
		30.160154, 36.166359, 25.051075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928982, 36.517750, 24.282360>,  <29.758387, 35.900303, 24.543337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928982, 36.517750, 24.282360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204115, 36.366104, 24.529959>,  <30.369196, 36.275116, 24.678518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204115, 36.366104, 24.529959>,  <29.928982, 36.517750, 24.282360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204115, 36.366104, 24.529959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725683, 0.339962, -0.598171,
		0.016342, 0.860637, 0.508956,
		0.687835, -0.379116, 0.618995,
		30.410465, 36.252369, 24.715656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456497, 37.085770, 24.363100>,  <29.928982, 36.517750, 24.282360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456497, 37.085770, 24.363100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639421, 36.730053, 24.360899>,  <30.749176, 36.516624, 24.359579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639421, 36.730053, 24.360899>,  <30.456497, 37.085770, 24.363100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639421, 36.730053, 24.360899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584521, 0.305235, -0.751776,
		0.670227, 0.340577, 0.659396,
		0.457309, -0.889291, -0.005503,
		30.776613, 36.463264, 24.359247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209019, 37.095478, 24.389715>,  <30.456497, 37.085770, 24.363100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209019, 37.095478, 24.389715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071140, 36.791233, 24.169661>,  <30.988413, 36.608685, 24.037628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071140, 36.791233, 24.169661>,  <31.209019, 37.095478, 24.389715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071140, 36.791233, 24.169661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255858, 0.487738, -0.834655,
		0.903173, -0.428458, 0.026488,
		-0.344695, -0.760615, -0.550136,
		30.967731, 36.563049, 24.004620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713528, 36.722012, 23.917004>,  <31.209019, 37.095478, 24.389715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713528, 36.722012, 23.917004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345501, 36.750675, 23.762943>,  <31.124685, 36.767872, 23.670507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345501, 36.750675, 23.762943>,  <31.713528, 36.722012, 23.917004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345501, 36.750675, 23.762943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366513, 0.504655, -0.781659,
		0.138357, -0.860342, -0.490580,
		-0.920068, 0.071656, -0.385149,
		31.069481, 36.772171, 23.647398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171013, 36.197239, 24.352425>,  <31.713528, 36.722012, 23.917004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171013, 36.197239, 24.352425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903805, 35.918373, 24.456514>,  <31.743481, 35.751053, 24.518969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903805, 35.918373, 24.456514>,  <32.171013, 36.197239, 24.352425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903805, 35.918373, 24.456514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551314, -0.228795, 0.802313,
		-0.499803, 0.679426, 0.537194,
		-0.668020, -0.697160, 0.260224,
		31.703400, 35.709225, 24.534582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591030, 35.944851, 25.003305>,  <32.171013, 36.197239, 24.352425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591030, 35.944851, 25.003305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834862, 35.867455, 25.310806>,  <32.981159, 35.821014, 25.495306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834862, 35.867455, 25.310806>,  <32.591030, 35.944851, 25.003305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834862, 35.867455, 25.310806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627068, 0.475584, 0.616933,
		-0.484978, -0.858126, 0.168570,
		0.609575, -0.193494, 0.768751,
		33.017735, 35.809406, 25.541431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245876, 35.545681, 25.538473>,  <32.591030, 35.944851, 25.003305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245876, 35.545681, 25.538473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525635, 35.784340, 25.695881>,  <32.693489, 35.927536, 25.790325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525635, 35.784340, 25.695881>,  <32.245876, 35.545681, 25.538473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525635, 35.784340, 25.695881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635193, 0.266453, 0.724937,
		0.327678, -0.756978, 0.565342,
		0.699398, 0.596646, 0.393516,
		32.735455, 35.963333, 25.813936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423920, 35.256718, 26.131790>,  <32.245876, 35.545681, 25.538473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423920, 35.256718, 26.131790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484753, 35.652065, 26.132473>,  <32.521252, 35.889275, 26.132883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484753, 35.652065, 26.132473>,  <32.423920, 35.256718, 26.131790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484753, 35.652065, 26.132473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486964, 0.073427, 0.870330,
		0.860080, -0.133194, 0.492466,
		0.152083, 0.988366, 0.001708,
		32.530376, 35.948574, 26.132986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598629, 35.410408, 26.779366>,  <32.423920, 35.256718, 26.131790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598629, 35.410408, 26.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 35.786072, 26.679626>,  <32.447437, 36.011471, 26.619783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504135, 35.786072, 26.679626>,  <32.598629, 35.410408, 26.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504135, 35.786072, 26.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355990, 0.155120, 0.921526,
		0.904138, 0.306460, 0.297687,
		-0.236233, 0.939159, -0.249346,
		32.433266, 36.067818, 26.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876385, 35.714897, 27.310421>,  <32.598629, 35.410408, 26.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876385, 35.714897, 27.310421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611958, 35.957523, 27.133751>,  <32.453300, 36.103100, 27.027748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611958, 35.957523, 27.133751>,  <32.876385, 35.714897, 27.310421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611958, 35.957523, 27.133751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528366, 0.041634, 0.847995,
		0.532750, 0.793946, 0.292963,
		-0.661065, 0.606561, -0.441674,
		32.413639, 36.139492, 27.001249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719769, 36.351364, 27.732239>,  <32.876385, 35.714897, 27.310421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719769, 36.351364, 27.732239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405785, 36.294804, 27.490961>,  <32.217396, 36.260868, 27.346195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405785, 36.294804, 27.490961>,  <32.719769, 36.351364, 27.732239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405785, 36.294804, 27.490961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616141, 0.076224, 0.783939,
		-0.064872, 0.987014, -0.146956,
		-0.784960, -0.141401, -0.603195,
		32.170296, 36.252384, 27.310003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300316, 36.938183, 27.921774>,  <32.719769, 36.351364, 27.732239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300316, 36.938183, 27.921774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072811, 36.661591, 27.743624>,  <31.936308, 36.495636, 27.636734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072811, 36.661591, 27.743624>,  <32.300316, 36.938183, 27.921774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072811, 36.661591, 27.743624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710366, 0.140028, 0.689762,
		-0.414592, 0.708693, -0.570848,
		-0.568765, -0.691481, -0.445377,
		31.902182, 36.454147, 27.610010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594242, 37.228817, 27.742790>,  <32.300316, 36.938183, 27.921774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594242, 37.228817, 27.742790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582947, 36.830700, 27.779871>,  <31.576170, 36.591831, 27.802118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582947, 36.830700, 27.779871>,  <31.594242, 37.228817, 27.742790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582947, 36.830700, 27.779871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701566, 0.085794, 0.707421,
		-0.712045, -0.045058, -0.700687,
		-0.028240, -0.995294, 0.092700,
		31.574474, 36.532112, 27.807680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896809, 37.150661, 27.786955>,  <31.594242, 37.228817, 27.742790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896809, 37.150661, 27.786955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040415, 36.795090, 27.900738>,  <31.126579, 36.581749, 27.969007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040415, 36.795090, 27.900738>,  <30.896809, 37.150661, 27.786955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040415, 36.795090, 27.900738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783149, -0.121118, 0.609925,
		-0.507726, -0.441745, -0.739646,
		0.359016, -0.888927, 0.284457,
		31.148119, 36.528412, 27.986074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298080, 36.689079, 27.808149>,  <30.896809, 37.150661, 27.786955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298080, 36.689079, 27.808149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577435, 36.511078, 28.032372>,  <30.745047, 36.404278, 28.166904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.577435, 36.511078, 28.032372>,  <30.298080, 36.689079, 27.808149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577435, 36.511078, 28.032372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690764, -0.214067, 0.690666,
		-0.187350, -0.869568, -0.456893,
		0.698387, -0.445002, 0.560561,
		30.786951, 36.377575, 28.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913012, 36.036373, 28.004854>,  <30.298080, 36.689079, 27.808149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913012, 36.036373, 28.004854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217447, 36.079403, 28.260719>,  <30.400108, 36.105221, 28.414238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217447, 36.079403, 28.260719>,  <29.913012, 36.036373, 28.004854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217447, 36.079403, 28.260719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603718, -0.243154, 0.759211,
		0.237208, -0.964004, -0.120117,
		0.761089, 0.107574, 0.639665,
		30.445774, 36.111675, 28.452620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919313, 35.415260, 28.472076>,  <29.913012, 36.036373, 28.004854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919313, 35.415260, 28.472076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100983, 35.727409, 28.644003>,  <30.209984, 35.914700, 28.747160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100983, 35.727409, 28.644003>,  <29.919313, 35.415260, 28.472076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100983, 35.727409, 28.644003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520838, -0.158844, 0.838747,
		0.722811, -0.604801, 0.334306,
		0.454172, 0.780375, 0.429817,
		30.237234, 35.961521, 28.772947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097782, 35.193520, 29.121813>,  <29.919313, 35.415260, 28.472076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097782, 35.193520, 29.121813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080597, 35.592297, 29.147898>,  <30.070286, 35.831562, 29.163549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080597, 35.592297, 29.147898>,  <30.097782, 35.193520, 29.121813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080597, 35.592297, 29.147898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549194, -0.078091, 0.832038,
		0.834590, -0.000069, 0.550872,
		-0.042961, 0.996946, 0.065212,
		30.067709, 35.891380, 29.167461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268616, 35.299717, 29.790590>,  <30.097782, 35.193520, 29.121813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268616, 35.299717, 29.790590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100750, 35.654697, 29.714361>,  <30.000031, 35.867683, 29.668623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100750, 35.654697, 29.714361>,  <30.268616, 35.299717, 29.790590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100750, 35.654697, 29.714361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280183, 0.073049, 0.957163,
		0.863353, 0.455083, 0.217992,
		-0.419665, 0.887448, -0.190574,
		29.974850, 35.920933, 29.657188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390139, 35.655048, 30.323917>,  <30.268616, 35.299717, 29.790590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390139, 35.655048, 30.323917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092825, 35.874065, 30.170177>,  <29.914436, 36.005474, 30.077932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092825, 35.874065, 30.170177>,  <30.390139, 35.655048, 30.323917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092825, 35.874065, 30.170177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428638, 0.051307, 0.902019,
		0.513614, 0.835203, 0.196562,
		-0.743284, 0.547543, -0.384351,
		29.869841, 36.038330, 30.054873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393454, 36.201790, 30.726904>,  <30.390139, 35.655048, 30.323917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393454, 36.201790, 30.726904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035254, 36.139526, 30.560123>,  <29.820333, 36.102169, 30.460054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035254, 36.139526, 30.560123>,  <30.393454, 36.201790, 30.726904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035254, 36.139526, 30.560123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404858, -0.104187, 0.908424,
		-0.184842, 0.982301, 0.030281,
		-0.895502, -0.155656, -0.416951,
		29.766603, 36.092831, 30.435038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902990, 36.592464, 31.068336>,  <30.393454, 36.201790, 30.726904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902990, 36.592464, 31.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672501, 36.316505, 30.893061>,  <29.534206, 36.150932, 30.787895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672501, 36.316505, 30.893061>,  <29.902990, 36.592464, 31.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672501, 36.316505, 30.893061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527624, -0.095443, 0.844099,
		-0.624162, 0.717591, -0.309008,
		-0.576225, -0.689894, -0.438189,
		29.499634, 36.109535, 30.761604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234888, 36.817429, 31.240372>,  <29.902990, 36.592464, 31.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234888, 36.817429, 31.240372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190498, 36.428646, 31.157446>,  <29.163864, 36.195377, 31.107691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190498, 36.428646, 31.157446>,  <29.234888, 36.817429, 31.240372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190498, 36.428646, 31.157446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540986, -0.115908, 0.833006,
		-0.833678, 0.204596, -0.512954,
		-0.110975, -0.971960, -0.207314,
		29.157206, 36.137058, 31.095251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530001, 36.656734, 31.347885>,  <29.234888, 36.817429, 31.240372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530001, 36.656734, 31.347885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720112, 36.307323, 31.389963>,  <28.834179, 36.097679, 31.415211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720112, 36.307323, 31.389963>,  <28.530001, 36.656734, 31.347885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720112, 36.307323, 31.389963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598565, -0.233392, 0.766321,
		-0.644848, -0.427183, -0.633787,
		0.475280, -0.873523, 0.105194,
		28.862696, 36.045265, 31.421522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951456, 36.209492, 31.434742>,  <28.530001, 36.656734, 31.347885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951456, 36.209492, 31.434742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270813, 35.991581, 31.537336>,  <28.462427, 35.860832, 31.598892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270813, 35.991581, 31.537336>,  <27.951456, 36.209492, 31.434742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270813, 35.991581, 31.537336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510718, -0.387037, 0.767704,
		-0.318957, -0.743924, -0.587235,
		0.798395, -0.544775, 0.256487,
		28.510330, 35.828148, 31.614283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669107, 35.584930, 31.532549>,  <27.951456, 36.209492, 31.434742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669107, 35.584930, 31.532549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017735, 35.591232, 31.728559>,  <28.226910, 35.595013, 31.846165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017735, 35.591232, 31.728559>,  <27.669107, 35.584930, 31.532549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017735, 35.591232, 31.728559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435293, -0.435023, 0.788210,
		0.225593, -0.900281, -0.372292,
		0.871566, 0.015758, 0.490025,
		28.279205, 35.595959, 31.875566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763329, 34.928444, 31.779360>,  <27.669107, 35.584930, 31.532549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763329, 34.928444, 31.779360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984529, 35.169357, 32.009644>,  <28.117250, 35.313904, 32.147816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984529, 35.169357, 32.009644>,  <27.763329, 34.928444, 31.779360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984529, 35.169357, 32.009644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428766, -0.386745, 0.816449,
		0.714387, -0.698342, 0.044368,
		0.553002, 0.602284, 0.575711,
		28.150431, 35.350044, 32.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872183, 34.555309, 32.403313>,  <27.763329, 34.928444, 31.779360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872183, 34.555309, 32.403313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970194, 34.926670, 32.515049>,  <28.029001, 35.149487, 32.582092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970194, 34.926670, 32.515049>,  <27.872183, 34.555309, 32.403313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970194, 34.926670, 32.515049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194497, -0.235195, 0.952289,
		0.949806, -0.287669, 0.122942,
		0.245028, 0.928402, 0.279341,
		28.043703, 35.205189, 32.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175812, 34.489204, 33.025208>,  <27.872183, 34.555309, 32.403313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175812, 34.489204, 33.025208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044220, 34.866283, 33.002964>,  <27.965265, 35.092529, 32.989616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044220, 34.866283, 33.002964>,  <28.175812, 34.489204, 33.025208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044220, 34.866283, 33.002964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511110, -0.128232, 0.849896,
		0.794064, 0.308021, 0.524009,
		-0.328981, 0.942698, -0.055608,
		27.945526, 35.149094, 32.986282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796862, 34.564869, 33.475220>,  <28.175812, 34.489204, 33.025208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796862, 34.564869, 33.475220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088356, 34.588036, 33.202282>,  <29.263252, 34.601936, 33.038521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088356, 34.588036, 33.202282>,  <28.796862, 34.564869, 33.475220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088356, 34.588036, 33.202282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406074, 0.765779, 0.498684,
		0.551403, -0.640490, 0.534535,
		0.728738, 0.057915, -0.682339,
		29.306978, 34.605412, 32.997581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455799, 34.438583, 33.636135>,  <28.796862, 34.564869, 33.475220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455799, 34.438583, 33.636135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472668, 34.730354, 33.363033>,  <29.482788, 34.905418, 33.199173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472668, 34.730354, 33.363033>,  <29.455799, 34.438583, 33.636135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472668, 34.730354, 33.363033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349635, 0.629378, 0.694002,
		0.935936, -0.267981, -0.228494,
		0.042170, 0.729431, -0.682753,
		29.485319, 34.949184, 33.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165253, 34.719097, 33.567341>,  <29.455799, 34.438583, 33.636135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165253, 34.719097, 33.567341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881647, 34.983181, 33.468208>,  <29.711483, 35.141632, 33.408730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881647, 34.983181, 33.468208>,  <30.165253, 34.719097, 33.567341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881647, 34.983181, 33.468208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437223, 0.687290, 0.580059,
		0.553293, 0.302913, -0.775958,
		-0.709016, 0.660209, -0.247832,
		29.668941, 35.181244, 33.393860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479074, 35.285637, 33.473007>,  <30.165253, 34.719097, 33.567341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479074, 35.285637, 33.473007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097149, 35.364273, 33.562168>,  <29.867994, 35.411453, 33.615665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097149, 35.364273, 33.562168>,  <30.479074, 35.285637, 33.473007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097149, 35.364273, 33.562168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296457, 0.683212, 0.667334,
		-0.021097, 0.703259, -0.710620,
		-0.954813, 0.196590, 0.222900,
		29.810705, 35.423248, 33.629040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425768, 36.052784, 33.577930>,  <30.479074, 35.285637, 33.473007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425768, 36.052784, 33.577930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164633, 35.828133, 33.781254>,  <30.007952, 35.693340, 33.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164633, 35.828133, 33.781254>,  <30.425768, 36.052784, 33.577930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164633, 35.828133, 33.781254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309032, 0.415191, 0.855638,
		-0.691595, 0.715675, -0.097491,
		-0.652836, -0.561627, 0.508310,
		29.968782, 35.659645, 33.933746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026789, 36.520336, 34.021275>,  <30.425768, 36.052784, 33.577930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026789, 36.520336, 34.021275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010611, 36.161156, 34.196571>,  <30.000904, 35.945648, 34.301750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010611, 36.161156, 34.196571>,  <30.026789, 36.520336, 34.021275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010611, 36.161156, 34.196571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307762, 0.406078, 0.860455,
		-0.950603, 0.169673, 0.259932,
		-0.040443, -0.897949, 0.438238,
		29.998478, 35.891769, 34.328041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660221, 36.644196, 34.606525>,  <30.026789, 36.520336, 34.021275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660221, 36.644196, 34.606525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909533, 36.335239, 34.655407>,  <30.059120, 36.149864, 34.684734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909533, 36.335239, 34.655407>,  <29.660221, 36.644196, 34.606525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909533, 36.335239, 34.655407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366728, 0.426724, 0.826691,
		-0.690675, -0.470445, 0.549226,
		0.623280, -0.772391, 0.122202,
		30.096518, 36.103523, 34.692066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430660, 36.220772, 35.196983>,  <29.660221, 36.644196, 34.606525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430660, 36.220772, 35.196983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821741, 36.161804, 35.137169>,  <30.056391, 36.126423, 35.101280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.821741, 36.161804, 35.137169>,  <29.430660, 36.220772, 35.196983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821741, 36.161804, 35.137169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204240, 0.502165, 0.840308,
		-0.048788, -0.852113, 0.521078,
		0.977704, -0.147422, -0.149536,
		30.115053, 36.117577, 35.092308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756487, 36.403957, 35.815929>,  <29.430660, 36.220772, 35.196983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756487, 36.403957, 35.815929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102098, 36.372692, 35.616993>,  <30.309465, 36.353935, 35.497631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102098, 36.372692, 35.616993>,  <29.756487, 36.403957, 35.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102098, 36.372692, 35.616993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455450, 0.542307, 0.706023,
		0.214530, -0.836537, 0.504166,
		0.864027, -0.078160, -0.497341,
		30.361307, 36.349243, 35.467789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304379, 36.073410, 36.221680>,  <29.756487, 36.403957, 35.815929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304379, 36.073410, 36.221680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479576, 36.319508, 35.959492>,  <30.584694, 36.467167, 35.802177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479576, 36.319508, 35.959492>,  <30.304379, 36.073410, 36.221680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479576, 36.319508, 35.959492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517597, 0.423561, 0.743431,
		0.735021, -0.664886, -0.132931,
		0.437992, 0.615242, -0.655469,
		30.610973, 36.504082, 35.762852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067699, 36.099537, 36.432144>,  <30.304379, 36.073410, 36.221680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067699, 36.099537, 36.432144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023746, 36.400402, 36.172245>,  <30.997375, 36.580921, 36.016304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023746, 36.400402, 36.172245>,  <31.067699, 36.099537, 36.432144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023746, 36.400402, 36.172245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367547, 0.638118, 0.676546,
		0.923491, -0.164473, -0.346574,
		-0.109882, 0.752166, -0.649747,
		30.990782, 36.626053, 35.977322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607288, 36.508739, 36.582397>,  <31.067699, 36.099537, 36.432144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607288, 36.508739, 36.582397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408312, 36.769997, 36.354027>,  <31.288925, 36.926750, 36.217003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408312, 36.769997, 36.354027>,  <31.607288, 36.508739, 36.582397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408312, 36.769997, 36.354027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365085, 0.754632, 0.545200,
		0.786934, 0.062767, -0.613837,
		-0.497441, 0.653139, -0.570931,
		31.259079, 36.965939, 36.182747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125164, 36.997189, 36.230492>,  <31.607288, 36.508739, 36.582397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125164, 36.997189, 36.230492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781332, 37.201588, 36.231361>,  <31.575033, 37.324226, 36.231884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781332, 37.201588, 36.231361>,  <32.125164, 36.997189, 36.230492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781332, 37.201588, 36.231361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451916, 0.758200, 0.470006,
		0.238526, 0.404988, -0.882661,
		-0.859580, 0.510997, 0.002170,
		31.523458, 37.354885, 36.232014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242859, 37.758450, 36.084187>,  <32.125164, 36.997189, 36.230492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242859, 37.758450, 36.084187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877356, 37.758251, 36.246693>,  <31.658054, 37.758133, 36.344196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877356, 37.758251, 36.246693>,  <32.242859, 37.758450, 36.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877356, 37.758251, 36.246693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245504, 0.796085, 0.553152,
		-0.323691, 0.605185, -0.727307,
		-0.913757, -0.000494, 0.406261,
		31.603228, 37.758102, 36.368572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012009, 38.418510, 36.097630>,  <32.242859, 37.758450, 36.084187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012009, 38.418510, 36.097630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798988, 38.243748, 36.387596>,  <31.671177, 38.138889, 36.561577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798988, 38.243748, 36.387596>,  <32.012009, 38.418510, 36.097630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798988, 38.243748, 36.387596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181320, 0.777698, 0.601921,
		-0.826748, 0.451995, -0.334944,
		-0.532551, -0.436904, 0.724917,
		31.639223, 38.112675, 36.605072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537022, 38.887058, 36.387806>,  <32.012009, 38.418510, 36.097630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537022, 38.887058, 36.387806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526489, 38.611195, 36.677265>,  <31.520170, 38.445675, 36.850941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526489, 38.611195, 36.677265>,  <31.537022, 38.887058, 36.387806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526489, 38.611195, 36.677265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059955, 0.721510, 0.689804,
		-0.997854, 0.061549, 0.022351,
		-0.026330, -0.689663, 0.723652,
		31.518591, 38.404297, 36.894360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231379, 39.229485, 36.890987>,  <31.537022, 38.887058, 36.387806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231379, 39.229485, 36.890987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402431, 38.926876, 37.088898>,  <31.505064, 38.745312, 37.207645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402431, 38.926876, 37.088898>,  <31.231379, 39.229485, 36.890987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402431, 38.926876, 37.088898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115736, 0.588664, 0.800050,
		-0.896513, -0.284865, 0.339289,
		0.427633, -0.756523, 0.494776,
		31.530722, 38.699921, 37.237331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988585, 39.253822, 37.628643>,  <31.231379, 39.229485, 36.890987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988585, 39.253822, 37.628643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301521, 39.011387, 37.686058>,  <31.489283, 38.865925, 37.720505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301521, 39.011387, 37.686058>,  <30.988585, 39.253822, 37.628643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301521, 39.011387, 37.686058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120812, 0.373735, 0.919634,
		-0.611021, -0.702127, 0.365611,
		0.782341, -0.606086, 0.143534,
		31.536224, 38.829559, 37.729118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881735, 38.812019, 38.194862>,  <30.988585, 39.253822, 37.628643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881735, 38.812019, 38.194862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280783, 38.801025, 38.169563>,  <31.520212, 38.794430, 38.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280783, 38.801025, 38.169563>,  <30.881735, 38.812019, 38.194862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280783, 38.801025, 38.169563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067917, 0.232483, 0.970226,
		-0.011965, -0.972212, 0.233797,
		0.997619, -0.027488, -0.063248,
		31.580069, 38.792778, 38.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107206, 38.405132, 38.737206>,  <30.881735, 38.812019, 38.194862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107206, 38.405132, 38.737206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446270, 38.590256, 38.633453>,  <31.649708, 38.701328, 38.571201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446270, 38.590256, 38.633453>,  <31.107206, 38.405132, 38.737206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446270, 38.590256, 38.633453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141518, 0.273952, 0.951274,
		0.511316, -0.843066, 0.166723,
		0.847661, 0.462807, -0.259385,
		31.700569, 38.729099, 38.555637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634686, 38.232197, 39.319519>,  <31.107206, 38.405132, 38.737206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634686, 38.232197, 39.319519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777695, 38.557362, 39.135628>,  <31.863501, 38.752460, 39.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777695, 38.557362, 39.135628>,  <31.634686, 38.232197, 39.319519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777695, 38.557362, 39.135628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199084, 0.414606, 0.887957,
		0.912438, -0.408988, -0.013608,
		0.357522, 0.812915, -0.459725,
		31.884951, 38.801235, 38.997711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248173, 38.357231, 39.658913>,  <31.634686, 38.232197, 39.319519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248173, 38.357231, 39.658913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133770, 38.707272, 39.502762>,  <32.065128, 38.917297, 39.409073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133770, 38.707272, 39.502762>,  <32.248173, 38.357231, 39.658913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133770, 38.707272, 39.502762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224248, 0.457207, 0.860625,
		0.931619, 0.158602, -0.327004,
		-0.286005, 0.875104, -0.390377,
		32.047970, 38.969803, 39.385651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839367, 38.969624, 39.620373>,  <32.248173, 38.357231, 39.658913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839367, 38.969624, 39.620373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466576, 39.107872, 39.664112>,  <32.242901, 39.190819, 39.690353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466576, 39.107872, 39.664112>,  <32.839367, 38.969624, 39.620373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466576, 39.107872, 39.664112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283821, 0.508061, 0.813215,
		0.225509, 0.788937, -0.571598,
		-0.931983, 0.345619, 0.109344,
		32.186981, 39.211559, 39.696915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933250, 39.604492, 39.979710>,  <32.839367, 38.969624, 39.620373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933250, 39.604492, 39.979710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538654, 39.560631, 40.028393>,  <32.301895, 39.534313, 40.057602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538654, 39.560631, 40.028393>,  <32.933250, 39.604492, 39.979710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538654, 39.560631, 40.028393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047438, 0.519889, 0.852916,
		-0.156800, 0.847167, -0.507664,
		-0.986490, -0.109655, 0.121707,
		32.242706, 39.527733, 40.064903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697075, 40.277328, 40.315849>,  <32.933250, 39.604492, 39.979710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697075, 40.277328, 40.315849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371819, 40.047619, 40.353817>,  <32.176662, 39.909794, 40.376598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.371819, 40.047619, 40.353817>,  <32.697075, 40.277328, 40.315849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371819, 40.047619, 40.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195560, 0.423137, 0.884710,
		-0.548229, 0.700832, -0.456376,
		-0.813143, -0.574272, 0.094922,
		32.127876, 39.875336, 40.382294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015396, 40.693729, 40.476204>,  <32.697075, 40.277328, 40.315849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015396, 40.693729, 40.476204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955467, 40.320240, 40.606258>,  <31.919510, 40.096146, 40.684292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955467, 40.320240, 40.606258>,  <32.015396, 40.693729, 40.476204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955467, 40.320240, 40.606258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285986, 0.355715, 0.889763,
		-0.946449, 0.040321, -0.320326,
		-0.149821, -0.933724, 0.325135,
		31.910521, 40.040123, 40.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354948, 40.706738, 40.749088>,  <32.015396, 40.693729, 40.476204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354948, 40.706738, 40.749088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574038, 40.414642, 40.912430>,  <31.705492, 40.239384, 41.010433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574038, 40.414642, 40.912430>,  <31.354948, 40.706738, 40.749088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574038, 40.414642, 40.912430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254435, 0.319579, 0.912760,
		-0.797033, -0.603839, -0.010757,
		0.547723, -0.730238, 0.408353,
		31.738354, 40.195572, 41.034935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988453, 40.669292, 41.313080>,  <31.354948, 40.706738, 40.749088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988453, 40.669292, 41.313080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316856, 40.462742, 41.410488>,  <31.513899, 40.338810, 41.468933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316856, 40.462742, 41.410488>,  <30.988453, 40.669292, 41.313080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316856, 40.462742, 41.410488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077452, 0.321858, 0.943615,
		-0.565641, -0.793575, 0.224253,
		0.821007, -0.516378, 0.243520,
		31.563158, 40.307827, 41.483543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761209, 40.363327, 41.919556>,  <30.988453, 40.669292, 41.313080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761209, 40.363327, 41.919556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159576, 40.330482, 41.904541>,  <31.398596, 40.310776, 41.895535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159576, 40.330482, 41.904541>,  <30.761209, 40.363327, 41.919556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159576, 40.330482, 41.904541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065875, 0.376629, 0.924019,
		-0.061732, -0.922718, 0.380500,
		0.995916, -0.082107, -0.037534,
		31.458351, 40.305851, 41.893280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023003, 39.893444, 42.414223>,  <30.761209, 40.363327, 41.919556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023003, 39.893444, 42.414223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323582, 40.145798, 42.336956>,  <31.503929, 40.297211, 42.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323582, 40.145798, 42.336956>,  <31.023003, 39.893444, 42.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323582, 40.145798, 42.336956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026937, 0.263191, 0.964367,
		0.659241, -0.729877, 0.180781,
		0.751449, 0.630880, -0.193167,
		31.549017, 40.335060, 42.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425400, 39.813679, 42.933090>,  <31.023003, 39.893444, 42.414223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425400, 39.813679, 42.933090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569519, 40.157124, 42.787228>,  <31.655991, 40.363190, 42.699711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569519, 40.157124, 42.787228>,  <31.425400, 39.813679, 42.933090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569519, 40.157124, 42.787228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098904, 0.353549, 0.930173,
		0.927579, -0.371207, 0.042464,
		0.360300, 0.858609, -0.364658,
		31.677608, 40.414707, 42.677830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044548, 40.095966, 43.401310>,  <31.425400, 39.813679, 42.933090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044548, 40.095966, 43.401310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889400, 40.408295, 43.205402>,  <31.796312, 40.595692, 43.087860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889400, 40.408295, 43.205402>,  <32.044548, 40.095966, 43.401310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889400, 40.408295, 43.205402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095281, 0.562483, 0.821300,
		0.916777, 0.271890, -0.292567,
		-0.387868, 0.780825, -0.489766,
		31.773041, 40.642544, 43.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351727, 40.602016, 43.769363>,  <32.044548, 40.095966, 43.401310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351727, 40.602016, 43.769363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073872, 40.805805, 43.566219>,  <31.907158, 40.928078, 43.444332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073872, 40.805805, 43.566219>,  <32.351727, 40.602016, 43.769363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073872, 40.805805, 43.566219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054488, 0.666696, 0.743335,
		0.717292, 0.544021, -0.435353,
		-0.694638, 0.509467, -0.507859,
		31.865480, 40.958645, 43.413860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484264, 41.299110, 43.813850>,  <32.351727, 40.602016, 43.769363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484264, 41.299110, 43.813850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100025, 41.298820, 43.702675>,  <31.869482, 41.298649, 43.635971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100025, 41.298820, 43.702675>,  <32.484264, 41.299110, 43.813850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100025, 41.298820, 43.702675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215502, 0.633448, 0.743170,
		0.175522, 0.773785, -0.608645,
		-0.960599, -0.000721, -0.277937,
		31.811846, 41.298603, 43.619293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282440, 41.922821, 43.651089>,  <32.484264, 41.299110, 43.813850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282440, 41.922821, 43.651089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910820, 41.792351, 43.720909>,  <31.687847, 41.714069, 43.762802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910820, 41.792351, 43.720909>,  <32.282440, 41.922821, 43.651089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910820, 41.792351, 43.720909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126141, 0.722857, 0.679386,
		-0.347777, 0.609168, -0.712717,
		-0.929053, -0.326178, 0.174552,
		31.632105, 41.694496, 43.773273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842691, 42.467506, 43.567585>,  <32.282440, 41.922821, 43.651089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842691, 42.467506, 43.567585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671686, 42.225925, 43.836651>,  <31.569084, 42.080975, 43.998089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671686, 42.225925, 43.836651>,  <31.842691, 42.467506, 43.567585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671686, 42.225925, 43.836651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119508, 0.775312, 0.620169,
		-0.896076, 0.184741, -0.403632,
		-0.427511, -0.603956, 0.672660,
		31.543432, 42.044739, 44.038448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530407, 42.892467, 43.870178>,  <31.842691, 42.467506, 43.567585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530407, 42.892467, 43.870178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480587, 42.574997, 44.108356>,  <31.450695, 42.384514, 44.251263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480587, 42.574997, 44.108356>,  <31.530407, 42.892467, 43.870178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480587, 42.574997, 44.108356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230365, 0.606856, 0.760696,
		-0.965100, -0.042425, -0.258421,
		-0.124552, -0.793679, 0.595450,
		31.443222, 42.336895, 44.286991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852619, 42.906784, 44.270332>,  <31.530407, 42.892467, 43.870178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852619, 42.906784, 44.270332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104763, 42.687141, 44.489834>,  <31.256050, 42.555355, 44.621536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104763, 42.687141, 44.489834>,  <30.852619, 42.906784, 44.270332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104763, 42.687141, 44.489834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212131, 0.558140, 0.802172,
		-0.746756, -0.622067, 0.235348,
		0.630362, -0.549102, 0.548754,
		31.293871, 42.522411, 44.654461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646025, 43.180737, 44.926361>,  <30.852619, 42.906784, 44.270332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646025, 43.180737, 44.926361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972784, 42.960075, 44.993717>,  <31.168840, 42.827679, 45.034130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972784, 42.960075, 44.993717>,  <30.646025, 43.180737, 44.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972784, 42.960075, 44.993717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044646, 0.351557, 0.935101,
		-0.575052, -0.756364, 0.311815,
		0.816898, -0.551653, 0.168395,
		31.217854, 42.794579, 45.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421772, 42.769924, 45.455181>,  <30.646025, 43.180737, 44.926361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421772, 42.769924, 45.455181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819513, 42.811905, 45.448845>,  <31.058157, 42.837093, 45.445042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819513, 42.811905, 45.448845>,  <30.421772, 42.769924, 45.455181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819513, 42.811905, 45.448845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002145, 0.129356, 0.991596,
		0.106101, -0.986030, 0.128401,
		0.994353, 0.104934, -0.015840,
		31.117819, 42.843388, 45.444092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684086, 42.208637, 45.867088>,  <30.421772, 42.769924, 45.455181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684086, 42.208637, 45.867088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956623, 42.501423, 45.866802>,  <31.120146, 42.677094, 45.866631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956623, 42.501423, 45.866802>,  <30.684086, 42.208637, 45.867088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956623, 42.501423, 45.866802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023628, 0.022966, 0.999457,
		0.731581, -0.680958, 0.032943,
		0.681345, 0.731962, -0.000712,
		31.161026, 42.721012, 45.866589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063036, 42.044971, 46.436317>,  <30.684086, 42.208637, 45.867088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063036, 42.044971, 46.436317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133892, 42.431751, 46.362965>,  <31.176405, 42.663818, 46.318954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133892, 42.431751, 46.362965>,  <31.063036, 42.044971, 46.436317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133892, 42.431751, 46.362965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092920, 0.169066, 0.981215,
		0.979790, -0.190850, -0.059901,
		0.177138, 0.966950, -0.183383,
		31.187033, 42.721836, 46.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351862, 42.172813, 47.038685>,  <31.063036, 42.044971, 46.436317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351862, 42.172813, 47.038685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342598, 42.541004, 46.882645>,  <31.337040, 42.761921, 46.789021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342598, 42.541004, 46.882645>,  <31.351862, 42.172813, 47.038685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342598, 42.541004, 46.882645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256648, 0.382601, 0.887552,
		0.966227, -0.079560, -0.245101,
		-0.023162, 0.920482, -0.390099,
		31.335649, 42.817150, 46.765614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919107, 42.522495, 47.234970>,  <31.351862, 42.172813, 47.038685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919107, 42.522495, 47.234970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665060, 42.816616, 47.140350>,  <31.512632, 42.993088, 47.083580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665060, 42.816616, 47.140350>,  <31.919107, 42.522495, 47.234970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665060, 42.816616, 47.140350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206762, 0.456909, 0.865150,
		0.744229, 0.500562, -0.442223,
		-0.635117, 0.735304, -0.236547,
		31.474525, 43.037209, 47.069386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236000, 43.114742, 47.340004>,  <31.919107, 42.522495, 47.234970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236000, 43.114742, 47.340004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845825, 43.199303, 47.364773>,  <31.611721, 43.250038, 47.379635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845825, 43.199303, 47.364773>,  <32.236000, 43.114742, 47.340004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845825, 43.199303, 47.364773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157869, 0.474858, 0.865787,
		0.153623, 0.854296, -0.496567,
		-0.975437, 0.211397, 0.061918,
		31.553194, 43.262722, 47.383347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136806, 43.748871, 47.681538>,  <32.236000, 43.114742, 47.340004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136806, 43.748871, 47.681538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774115, 43.586525, 47.727345>,  <31.556499, 43.489117, 47.754829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774115, 43.586525, 47.727345>,  <32.136806, 43.748871, 47.681538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774115, 43.586525, 47.727345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034268, 0.341559, 0.939235,
		-0.420319, 0.847708, -0.323609,
		-0.906729, -0.405868, 0.114515,
		31.502096, 43.464764, 47.761700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804785, 44.208260, 48.000069>,  <32.136806, 43.748871, 47.681538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804785, 44.208260, 48.000069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588306, 43.882549, 48.084038>,  <31.458420, 43.687122, 48.134418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588306, 43.882549, 48.084038>,  <31.804785, 44.208260, 48.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588306, 43.882549, 48.084038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065899, 0.289945, 0.954772,
		-0.838311, 0.502885, -0.210577,
		-0.541196, -0.814272, 0.209925,
		31.425947, 43.638268, 48.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227528, 44.393021, 48.320801>,  <31.804785, 44.208260, 48.000069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227528, 44.393021, 48.320801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327238, 44.023739, 48.437798>,  <31.387064, 43.802170, 48.507996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327238, 44.023739, 48.437798>,  <31.227528, 44.393021, 48.320801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327238, 44.023739, 48.437798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136150, 0.332435, 0.933247,
		-0.958814, -0.192814, 0.208563,
		0.249277, -0.923206, 0.292492,
		31.402021, 43.746777, 48.525543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835772, 44.200439, 48.968552>,  <31.227528, 44.393021, 48.320801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835772, 44.200439, 48.968552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152096, 43.956955, 48.942966>,  <31.341890, 43.810863, 48.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152096, 43.956955, 48.942966>,  <30.835772, 44.200439, 48.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152096, 43.956955, 48.942966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161224, 0.106360, 0.981170,
		-0.590442, -0.786233, 0.182249,
		0.790812, -0.608707, -0.063961,
		31.389339, 43.774342, 48.923779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791178, 43.532570, 49.392696>,  <30.835772, 44.200439, 48.968552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791178, 43.532570, 49.392696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162277, 43.668655, 49.331329>,  <31.384937, 43.750305, 49.294510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162277, 43.668655, 49.331329>,  <30.791178, 43.532570, 49.392696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162277, 43.668655, 49.331329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145303, 0.049367, 0.988155,
		0.343759, -0.939051, -0.003634,
		0.927748, 0.340215, -0.153417,
		31.440601, 43.770721, 49.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306063, 43.091938, 49.795940>,  <30.791178, 43.532570, 49.392696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306063, 43.091938, 49.795940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472342, 43.453320, 49.754047>,  <31.572109, 43.670147, 49.728912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472342, 43.453320, 49.754047>,  <31.306063, 43.091938, 49.795940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472342, 43.453320, 49.754047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303615, -0.029298, 0.952344,
		0.857329, -0.427687, -0.286481,
		0.415698, 0.903452, -0.104733,
		31.597052, 43.724354, 49.722626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879549, 43.099644, 50.342186>,  <31.306063, 43.091938, 49.795940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879549, 43.099644, 50.342186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761578, 43.467125, 50.237118>,  <31.690794, 43.687614, 50.174076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761578, 43.467125, 50.237118>,  <31.879549, 43.099644, 50.342186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761578, 43.467125, 50.237118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157163, 0.224511, 0.961714,
		0.942505, 0.324919, 0.078172,
		-0.294929, 0.918707, -0.262669,
		31.673100, 43.742737, 50.158318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435558, 43.045612, 50.970387>,  <31.879549, 43.099644, 50.342186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435558, 43.045612, 50.970387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373215, 43.431667, 51.054504>,  <31.335808, 43.663300, 51.104973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373215, 43.431667, 51.054504>,  <31.435558, 43.045612, 50.970387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373215, 43.431667, 51.054504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492474, 0.108621, -0.863523,
		-0.856258, -0.238152, 0.458374,
		-0.155860, 0.965135, 0.210291,
		31.326456, 43.721207, 51.117592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348894, 42.501804, 50.435913>,  <31.435558, 43.045612, 50.970387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348894, 42.501804, 50.435913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979170, 42.360806, 50.377411>,  <30.757336, 42.276207, 50.342308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979170, 42.360806, 50.377411>,  <31.348894, 42.501804, 50.435913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979170, 42.360806, 50.377411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332186, -0.554454, -0.763042,
		0.187879, -0.753874, 0.629584,
		-0.924313, -0.352499, -0.146256,
		30.701876, 42.255054, 50.333534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233303, 41.695847, 50.449528>,  <31.348894, 42.501804, 50.435913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233303, 41.695847, 50.449528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957094, 41.863716, 50.213882>,  <30.791368, 41.964439, 50.072495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957094, 41.863716, 50.213882>,  <31.233303, 41.695847, 50.449528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957094, 41.863716, 50.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245284, -0.630342, -0.736549,
		-0.680457, -0.653101, 0.332321,
		-0.690517, 0.419678, -0.589116,
		30.749939, 41.989620, 50.037148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701456, 41.266224, 50.386536>,  <31.233303, 41.695847, 50.449528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701456, 41.266224, 50.386536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776014, 41.513416, 50.081024>,  <30.820749, 41.661732, 49.897717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776014, 41.513416, 50.081024>,  <30.701456, 41.266224, 50.386536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776014, 41.513416, 50.081024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243606, -0.782193, -0.573437,
		-0.951795, -0.079174, -0.296342,
		0.186396, 0.617985, -0.763774,
		30.831934, 41.698811, 49.851891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908573, 40.861454, 49.926945>,  <30.701456, 41.266224, 50.386536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908573, 40.861454, 49.926945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879967, 41.175426, 49.680767>,  <30.862803, 41.363808, 49.533062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879967, 41.175426, 49.680767>,  <30.908573, 40.861454, 49.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879967, 41.175426, 49.680767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314055, -0.567921, -0.760813,
		-0.946707, -0.247694, -0.205896,
		-0.071516, 0.784930, -0.615444,
		30.858513, 41.410904, 49.496136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575954, 40.560459, 49.210621>,  <30.908573, 40.861454, 49.926945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575954, 40.560459, 49.210621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765108, 40.906357, 49.142975>,  <30.878601, 41.113895, 49.102386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765108, 40.906357, 49.142975>,  <30.575954, 40.560459, 49.210621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765108, 40.906357, 49.142975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351686, -0.361219, -0.863619,
		-0.807896, 0.348916, -0.474933,
		0.472885, 0.864742, -0.169118,
		30.906973, 41.165779, 49.092239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344721, 40.808506, 48.616920>,  <30.575954, 40.560459, 49.210621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344721, 40.808506, 48.616920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700226, 40.990059, 48.642513>,  <30.913528, 41.098991, 48.657867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700226, 40.990059, 48.642513>,  <30.344721, 40.808506, 48.616920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700226, 40.990059, 48.642513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252994, -0.369353, -0.894188,
		-0.382226, 0.810906, -0.443097,
		0.888762, 0.453883, 0.063978,
		30.966854, 41.126225, 48.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484373, 41.145226, 47.944462>,  <30.344721, 40.808506, 48.616920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484373, 41.145226, 47.944462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834959, 41.087044, 48.128048>,  <31.045311, 41.052135, 48.238201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834959, 41.087044, 48.128048>,  <30.484373, 41.145226, 47.944462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834959, 41.087044, 48.128048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366173, -0.417573, -0.831595,
		0.312614, 0.896925, -0.312725,
		0.876464, -0.145457, 0.458969,
		31.097898, 41.043407, 48.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953169, 41.242523, 47.338570>,  <30.484373, 41.145226, 47.944462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953169, 41.242523, 47.338570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181705, 41.072777, 47.619564>,  <31.318827, 40.970928, 47.788162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181705, 41.072777, 47.619564>,  <30.953169, 41.242523, 47.338570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181705, 41.072777, 47.619564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592615, -0.378841, -0.710836,
		0.567783, 0.822433, 0.035036,
		0.571341, -0.424363, 0.702485,
		31.353107, 40.945469, 47.830311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618299, 41.315376, 47.059772>,  <30.953169, 41.242523, 47.338570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618299, 41.315376, 47.059772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620281, 41.026867, 47.336826>,  <31.621471, 40.853760, 47.503059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620281, 41.026867, 47.336826>,  <31.618299, 41.315376, 47.059772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620281, 41.026867, 47.336826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460616, -0.613138, -0.641791,
		0.887586, 0.322218, 0.329192,
		0.004957, -0.721275, 0.692631,
		31.621769, 40.810486, 47.544617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250435, 41.096012, 47.156845>,  <31.618299, 41.315376, 47.059772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250435, 41.096012, 47.156845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036579, 40.785660, 47.290810>,  <31.908266, 40.599449, 47.371189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036579, 40.785660, 47.290810>,  <32.250435, 41.096012, 47.156845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036579, 40.785660, 47.290810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519479, -0.614329, -0.593921,
		0.666560, -0.143553, 0.731499,
		-0.534640, -0.775882, 0.334914,
		31.876186, 40.552895, 47.391285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744499, 40.613369, 47.472851>,  <32.250435, 41.096012, 47.156845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744499, 40.613369, 47.472851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 40.390842, 47.376820>,  <32.235355, 40.257328, 47.319202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 40.390842, 47.376820>,  <32.744499, 40.613369, 47.472851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426285, 40.390842, 47.376820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605668, -0.741217, -0.289420,
		-0.016943, -0.375652, 0.926606,
		-0.795537, -0.556312, -0.240078,
		32.187622, 40.223949, 47.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021717, 39.962135, 47.486584>,  <32.744499, 40.613369, 47.472851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021717, 39.962135, 47.486584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683262, 39.890690, 47.285728>,  <32.480186, 39.847824, 47.165215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683262, 39.890690, 47.285728>,  <33.021717, 39.962135, 47.486584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683262, 39.890690, 47.285728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469723, -0.695065, -0.544284,
		-0.251800, -0.696406, 0.672023,
		-0.846143, -0.178614, -0.502135,
		32.429420, 39.837105, 47.135086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085121, 39.325447, 47.314903>,  <33.021717, 39.962135, 47.486584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085121, 39.325447, 47.314903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811481, 39.461090, 47.056599>,  <32.647297, 39.542477, 46.901615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811481, 39.461090, 47.056599>,  <33.085121, 39.325447, 47.314903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811481, 39.461090, 47.056599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426710, -0.531968, -0.731388,
		-0.591545, -0.775898, 0.219219,
		-0.684100, 0.339106, -0.645766,
		32.606251, 39.562820, 46.862869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694019, 38.755211, 47.064816>,  <33.085121, 39.325447, 47.314903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694019, 38.755211, 47.064816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671951, 39.047028, 46.792133>,  <32.658710, 39.222118, 46.628525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671951, 39.047028, 46.792133>,  <32.694019, 38.755211, 47.064816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671951, 39.047028, 46.792133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287695, -0.642174, -0.710524,
		-0.956132, -0.235322, -0.174458,
		-0.055170, 0.729545, -0.681704,
		32.655399, 39.265892, 46.587624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575996, 38.343315, 46.561447>,  <32.694019, 38.755211, 47.064816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575996, 38.343315, 46.561447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622768, 38.688000, 46.363953>,  <32.650829, 38.894810, 46.245457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622768, 38.688000, 46.363953>,  <32.575996, 38.343315, 46.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622768, 38.688000, 46.363953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516613, -0.477368, -0.710796,
		-0.848197, -0.171961, -0.500989,
		0.116927, 0.861713, -0.493739,
		32.657848, 38.946514, 46.215832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252533, 38.298313, 45.880882>,  <32.575996, 38.343315, 46.561447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252533, 38.298313, 45.880882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532990, 38.580601, 45.840145>,  <32.701263, 38.749973, 45.815701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532990, 38.580601, 45.840145>,  <32.252533, 38.298313, 45.880882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532990, 38.580601, 45.840145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334452, -0.451650, -0.827136,
		-0.629720, 0.545874, -0.552697,
		0.701138, 0.705715, -0.101845,
		32.743332, 38.792316, 45.809593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158646, 38.529957, 45.226017>,  <32.252533, 38.298313, 45.880882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158646, 38.529957, 45.226017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525623, 38.667820, 45.305519>,  <32.745811, 38.750538, 45.353222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525623, 38.667820, 45.305519>,  <32.158646, 38.529957, 45.226017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525623, 38.667820, 45.305519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307787, -0.298278, -0.903492,
		-0.252107, 0.890081, -0.379734,
		0.917447, 0.344654, 0.198757,
		32.800858, 38.771217, 45.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371674, 38.741322, 44.640491>,  <32.158646, 38.529957, 45.226017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371674, 38.741322, 44.640491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714596, 38.711838, 44.844296>,  <32.920349, 38.694149, 44.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714596, 38.711838, 44.844296>,  <32.371674, 38.741322, 44.640491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714596, 38.711838, 44.844296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478263, -0.252233, -0.841215,
		0.190516, 0.964856, -0.180989,
		0.857303, -0.073705, 0.509509,
		32.971786, 38.689728, 44.997147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934464, 39.032398, 44.174549>,  <32.371674, 38.741322, 44.640491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934464, 39.032398, 44.174549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102291, 38.800270, 44.453747>,  <33.202988, 38.660995, 44.621265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102291, 38.800270, 44.453747>,  <32.934464, 39.032398, 44.174549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102291, 38.800270, 44.453747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455723, -0.530348, -0.714876,
		0.785032, 0.618033, 0.041944,
		0.419572, -0.580316, 0.697992,
		33.228165, 38.626175, 44.663143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533222, 38.904404, 43.811302>,  <32.934464, 39.032398, 44.174549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533222, 38.904404, 43.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438625, 38.625931, 44.082420>,  <33.381866, 38.458847, 44.245090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438625, 38.625931, 44.082420>,  <33.533222, 38.904404, 43.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438625, 38.625931, 44.082420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053829, -0.705897, -0.706266,
		0.970140, -0.130544, 0.204416,
		-0.236495, -0.696181, 0.677792,
		33.367676, 38.417076, 44.285759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687340, 38.381054, 43.449123>,  <33.533222, 38.904404, 43.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687340, 38.381054, 43.449123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484425, 38.205429, 43.745739>,  <33.362675, 38.100052, 43.923706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484425, 38.205429, 43.745739>,  <33.687340, 38.381054, 43.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484425, 38.205429, 43.745739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041213, -0.847132, -0.529783,
		0.860789, -0.299315, 0.411646,
		-0.507290, -0.439066, 0.741537,
		33.332237, 38.073708, 43.968201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909290, 37.699131, 43.483509>,  <33.687340, 38.381054, 43.449123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909290, 37.699131, 43.483509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539139, 37.688511, 43.634754>,  <33.317047, 37.682137, 43.725502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539139, 37.688511, 43.634754>,  <33.909290, 37.699131, 43.483509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539139, 37.688511, 43.634754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192638, -0.826169, -0.529466,
		0.326447, -0.562796, 0.759404,
		-0.925377, -0.026552, 0.378116,
		33.261524, 37.680546, 43.748188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740211, 37.021351, 43.506313>,  <33.909290, 37.699131, 43.483509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740211, 37.021351, 43.506313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383053, 37.201416, 43.502373>,  <33.168758, 37.309456, 43.500008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383053, 37.201416, 43.502373>,  <33.740211, 37.021351, 43.506313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383053, 37.201416, 43.502373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372144, -0.750110, -0.546667,
		-0.253481, -0.484448, 0.837292,
		-0.892892, 0.450162, -0.009854,
		33.115185, 37.336464, 43.499416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354248, 36.496338, 43.578217>,  <33.740211, 37.021351, 43.506313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354248, 36.496338, 43.578217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116726, 36.775185, 43.417507>,  <32.974213, 36.942493, 43.321079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116726, 36.775185, 43.417507>,  <33.354248, 36.496338, 43.578217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116726, 36.775185, 43.417507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330163, -0.666480, -0.668429,
		-0.733747, -0.264266, 0.625922,
		-0.593807, 0.697114, -0.401777,
		32.938583, 36.984318, 43.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654324, 36.111927, 43.338787>,  <33.354248, 36.496338, 43.578217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654324, 36.111927, 43.338787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 36.456059, 43.135006>,  <32.665150, 36.662537, 43.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661091, 36.456059, 43.135006>,  <32.654324, 36.111927, 43.338787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661091, 36.456059, 43.135006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488790, -0.437374, -0.754843,
		-0.872238, 0.261785, 0.413123,
		0.016917, 0.860333, -0.509452,
		32.666164, 36.714157, 42.982170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089119, 36.022301, 42.901173>,  <32.654324, 36.111927, 43.338787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089119, 36.022301, 42.901173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268658, 36.342758, 42.742828>,  <32.376381, 36.535034, 42.647823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268658, 36.342758, 42.742828>,  <32.089119, 36.022301, 42.901173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268658, 36.342758, 42.742828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414505, -0.205793, -0.886473,
		-0.791658, 0.561976, 0.239709,
		0.448847, 0.801144, -0.395860,
		32.403313, 36.583103, 42.624069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618177, 36.431919, 42.580940>,  <32.089119, 36.022301, 42.901173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618177, 36.431919, 42.580940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961750, 36.508991, 42.391155>,  <32.167892, 36.555233, 42.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961750, 36.508991, 42.391155>,  <31.618177, 36.431919, 42.580940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961750, 36.508991, 42.391155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403820, -0.314907, -0.858931,
		-0.314907, 0.929360, -0.192677,
		0.858931, 0.192677, -0.474461,
		32.219429, 36.566795, 42.248817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447878, 36.858105, 41.947357>,  <31.618177, 36.431919, 42.580940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447878, 36.858105, 41.947357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815279, 36.709316, 41.893703>,  <32.035721, 36.620045, 41.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815279, 36.709316, 41.893703>,  <31.447878, 36.858105, 41.947357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815279, 36.709316, 41.893703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247334, -0.275798, -0.928850,
		0.308510, 0.886326, -0.345322,
		0.918503, -0.371969, -0.134133,
		32.090828, 36.597725, 41.853462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776812, 37.247086, 41.334637>,  <31.447878, 36.858105, 41.947357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776812, 37.247086, 41.334637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968781, 36.901970, 41.398212>,  <32.083961, 36.694901, 41.436359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968781, 36.901970, 41.398212>,  <31.776812, 37.247086, 41.334637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968781, 36.901970, 41.398212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070731, -0.218629, -0.973241,
		0.874454, 0.455840, -0.165952,
		0.479925, -0.862793, 0.158939,
		32.112759, 36.643131, 41.445892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225586, 37.081326, 40.731323>,  <31.776812, 37.247086, 41.334637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225586, 37.081326, 40.731323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165512, 36.728893, 40.910717>,  <32.129467, 36.517433, 41.018353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165512, 36.728893, 40.910717>,  <32.225586, 37.081326, 40.731323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165512, 36.728893, 40.910717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029014, -0.449506, -0.892806,
		0.988232, -0.147101, 0.041946,
		-0.150188, -0.881082, 0.448484,
		32.120457, 36.464569, 41.045261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630939, 36.668961, 40.358551>,  <32.225586, 37.081326, 40.731323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630939, 36.668961, 40.358551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372871, 36.418484, 40.533661>,  <32.218033, 36.268200, 40.638729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372871, 36.418484, 40.533661>,  <32.630939, 36.668961, 40.358551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372871, 36.418484, 40.533661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039309, -0.599420, -0.799469,
		0.763030, -0.498582, 0.411341,
		-0.645167, -0.626188, 0.437777,
		32.179321, 36.230629, 40.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831680, 36.063736, 40.144936>,  <32.630939, 36.668961, 40.358551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831680, 36.063736, 40.144936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458336, 35.982414, 40.263260>,  <32.234329, 35.933620, 40.334251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458336, 35.982414, 40.263260>,  <32.831680, 36.063736, 40.144936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458336, 35.982414, 40.263260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101609, -0.640748, -0.760998,
		0.344255, -0.740343, 0.577391,
		-0.933362, -0.203309, 0.295806,
		32.178326, 35.921421, 40.352001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805744, 35.303413, 40.113174>,  <32.831680, 36.063736, 40.144936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805744, 35.303413, 40.113174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431992, 35.445923, 40.113079>,  <32.207741, 35.531429, 40.113022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431992, 35.445923, 40.113079>,  <32.805744, 35.303413, 40.113174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431992, 35.445923, 40.113079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199980, -0.525024, -0.827259,
		-0.294856, -0.772928, 0.561821,
		-0.934381, 0.356275, -0.000236,
		32.151676, 35.552807, 40.113007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421597, 34.815170, 40.049873>,  <32.805744, 35.303413, 40.113174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421597, 34.815170, 40.049873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153465, 35.084408, 39.924911>,  <31.992586, 35.245953, 39.849934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153465, 35.084408, 39.924911>,  <32.421597, 34.815170, 40.049873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153465, 35.084408, 39.924911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217536, -0.580744, -0.784484,
		-0.709460, -0.457906, 0.535714,
		-0.670332, 0.673097, -0.312404,
		31.952366, 35.286335, 39.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861143, 34.382843, 39.881199>,  <32.421597, 34.815170, 40.049873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861143, 34.382843, 39.881199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801592, 34.719822, 39.674076>,  <31.765862, 34.922009, 39.549801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801592, 34.719822, 39.674076>,  <31.861143, 34.382843, 39.881199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801592, 34.719822, 39.674076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128875, -0.535706, -0.834512,
		-0.980422, -0.057508, 0.188325,
		-0.148878, 0.842444, -0.517807,
		31.756927, 34.972553, 39.518734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202015, 34.316513, 39.436268>,  <31.861143, 34.382843, 39.881199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202015, 34.316513, 39.436268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416945, 34.606438, 39.263790>,  <31.545902, 34.780392, 39.160305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416945, 34.606438, 39.263790>,  <31.202015, 34.316513, 39.436268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416945, 34.606438, 39.263790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140467, -0.427215, -0.893172,
		-0.831595, 0.540493, -0.127741,
		0.537326, 0.724814, -0.431191,
		31.578142, 34.823883, 39.134434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855547, 34.484474, 38.791233>,  <31.202015, 34.316513, 39.436268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855547, 34.484474, 38.791233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228746, 34.625256, 38.761177>,  <31.452665, 34.709724, 38.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228746, 34.625256, 38.761177>,  <30.855547, 34.484474, 38.791233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228746, 34.625256, 38.761177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084482, 0.011233, -0.996362,
		-0.349828, 0.935950, 0.040214,
		0.932997, 0.351953, -0.075141,
		31.508646, 34.730843, 38.738636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928621, 35.172619, 38.309055>,  <30.855547, 34.484474, 38.791233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928621, 35.172619, 38.309055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304016, 35.034500, 38.307705>,  <31.529253, 34.951630, 38.306892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304016, 35.034500, 38.307705>,  <30.928621, 35.172619, 38.309055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304016, 35.034500, 38.307705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030354, -0.072743, -0.996889,
		0.343980, 0.935669, -0.078749,
		0.938486, -0.345301, -0.003379,
		31.585562, 34.930908, 38.306690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178131, 35.567413, 37.818569>,  <30.928621, 35.172619, 38.309055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178131, 35.567413, 37.818569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416822, 35.247860, 37.848770>,  <31.560038, 35.056129, 37.866890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416822, 35.247860, 37.848770>,  <31.178131, 35.567413, 37.818569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416822, 35.247860, 37.848770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115701, -0.007445, -0.993256,
		0.794058, 0.601440, 0.087989,
		0.596729, -0.798883, 0.075499,
		31.595840, 35.008194, 37.871422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695127, 35.725117, 37.516068>,  <31.178131, 35.567413, 37.818569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695127, 35.725117, 37.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704170, 35.326202, 37.488052>,  <31.709597, 35.086853, 37.471245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704170, 35.326202, 37.488052>,  <31.695127, 35.725117, 37.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704170, 35.326202, 37.488052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087836, 0.071765, -0.993547,
		0.995879, 0.016310, 0.089220,
		0.022608, -0.997288, -0.070036,
		31.710953, 35.027016, 37.467041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300404, 35.647514, 37.113926>,  <31.695127, 35.725117, 37.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300404, 35.647514, 37.113926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104179, 35.299492, 37.094524>,  <31.986444, 35.090679, 37.082882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104179, 35.299492, 37.094524>,  <32.300404, 35.647514, 37.113926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104179, 35.299492, 37.094524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244025, -0.083724, -0.966148,
		0.836542, -0.485790, 0.253387,
		-0.490560, -0.870056, -0.048507,
		31.957012, 35.038475, 37.079971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763214, 35.219818, 36.708241>,  <32.300404, 35.647514, 37.113926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763214, 35.219818, 36.708241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408051, 35.037029, 36.687111>,  <32.194950, 34.927357, 36.674431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408051, 35.037029, 36.687111>,  <32.763214, 35.219818, 36.708241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408051, 35.037029, 36.687111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202555, -0.285277, -0.936797,
		0.413016, -0.842495, 0.345863,
		-0.887913, -0.456968, -0.052828,
		32.141678, 34.899940, 36.671261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842609, 34.534863, 36.328548>,  <32.763214, 35.219818, 36.708241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842609, 34.534863, 36.328548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463295, 34.657196, 36.294537>,  <32.235706, 34.730595, 36.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463295, 34.657196, 36.294537>,  <32.842609, 34.534863, 36.328548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463295, 34.657196, 36.294537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006932, -0.287745, -0.957682,
		-0.317364, -0.907560, 0.274982,
		-0.948278, 0.305840, -0.085029,
		32.178810, 34.748943, 36.269028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746941, 33.921635, 36.632633>,  <32.842609, 34.534863, 36.328548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746941, 33.921635, 36.632633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073296, 33.693146, 36.668499>,  <33.269108, 33.556053, 36.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073296, 33.693146, 36.668499>,  <32.746941, 33.921635, 36.632633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073296, 33.693146, 36.668499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271775, 0.515719, 0.812510,
		-0.510360, -0.638548, 0.576011,
		0.815886, -0.571218, 0.089661,
		33.318062, 33.521782, 36.695396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945732, 33.884800, 37.324993>,  <32.746941, 33.921635, 36.632633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945732, 33.884800, 37.324993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276409, 33.776218, 37.127857>,  <33.474815, 33.711067, 37.009575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276409, 33.776218, 37.127857>,  <32.945732, 33.884800, 37.324993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276409, 33.776218, 37.127857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562303, 0.429574, 0.706598,
		0.019900, -0.861265, 0.507766,
		0.826691, -0.271457, -0.492841,
		33.524418, 33.694782, 36.980003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352280, 33.491177, 37.844872>,  <32.945732, 33.884800, 37.324993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352280, 33.491177, 37.844872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582546, 33.654667, 37.561592>,  <33.720707, 33.752762, 37.391624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582546, 33.654667, 37.561592>,  <33.352280, 33.491177, 37.844872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582546, 33.654667, 37.561592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612795, 0.357788, 0.704606,
		0.541378, -0.839601, -0.044498,
		0.575667, 0.408726, -0.708202,
		33.755245, 33.777287, 37.349133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969124, 33.461208, 38.275063>,  <33.352280, 33.491177, 37.844872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969124, 33.461208, 38.275063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051517, 33.664879, 37.940804>,  <34.100952, 33.787079, 37.740246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051517, 33.664879, 37.940804>,  <33.969124, 33.461208, 38.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051517, 33.664879, 37.940804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750239, 0.466096, 0.468930,
		0.628261, -0.723531, -0.285993,
		0.205985, 0.509174, -0.835651,
		34.113312, 33.817631, 37.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772320, 33.394985, 38.148521>,  <33.969124, 33.461208, 38.275063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772320, 33.394985, 38.148521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605495, 33.726627, 37.999584>,  <34.505402, 33.925613, 37.910221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605495, 33.726627, 37.999584>,  <34.772320, 33.394985, 38.148521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605495, 33.726627, 37.999584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712874, 0.552539, 0.431870,
		0.563803, -0.085321, -0.821490,
		-0.417058, 0.829108, -0.372347,
		34.480377, 33.975361, 37.887878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379757, 33.855000, 38.005638>,  <34.772320, 33.394985, 38.148521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379757, 33.855000, 38.005638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054913, 34.087448, 38.026661>,  <34.860004, 34.226917, 38.039276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054913, 34.087448, 38.026661>,  <35.379757, 33.855000, 38.005638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054913, 34.087448, 38.026661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497051, 0.641806, 0.583974,
		0.305630, 0.500378, -0.810069,
		-0.812115, 0.581126, 0.052558,
		34.811279, 34.261787, 38.042427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549091, 34.627804, 37.782154>,  <35.379757, 33.855000, 38.005638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549091, 34.627804, 37.782154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230076, 34.590977, 38.020638>,  <35.038666, 34.568882, 38.163727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230076, 34.590977, 38.020638>,  <35.549091, 34.627804, 37.782154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230076, 34.590977, 38.020638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434266, 0.598379, 0.673317,
		-0.418747, 0.795906, -0.437247,
		-0.797536, -0.092068, 0.596204,
		34.990814, 34.563354, 38.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522316, 35.208572, 38.186588>,  <35.549091, 34.627804, 37.782154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522316, 35.208572, 38.186588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273914, 34.961269, 38.379299>,  <35.124874, 34.812885, 38.494926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273914, 34.961269, 38.379299>,  <35.522316, 35.208572, 38.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273914, 34.961269, 38.379299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288851, 0.390880, 0.873944,
		-0.728640, 0.681885, -0.064154,
		-0.621006, -0.618260, 0.481774,
		35.087612, 34.775791, 38.523830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124252, 35.654034, 38.519047>,  <35.522316, 35.208572, 38.186588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124252, 35.654034, 38.519047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092289, 35.311905, 38.723804>,  <35.073112, 35.106628, 38.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092289, 35.311905, 38.723804>,  <35.124252, 35.654034, 38.519047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092289, 35.311905, 38.723804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372859, 0.450607, 0.811128,
		-0.924441, 0.255677, 0.282910,
		-0.079906, -0.855326, 0.511891,
		35.068317, 35.055305, 38.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974461, 35.899502, 39.119003>,  <35.124252, 35.654034, 38.519047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974461, 35.899502, 39.119003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052853, 35.520565, 39.220310>,  <35.099888, 35.293205, 39.281094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052853, 35.520565, 39.220310>,  <34.974461, 35.899502, 39.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052853, 35.520565, 39.220310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203500, 0.291942, 0.934536,
		-0.959260, -0.131612, 0.249998,
		0.195981, -0.947338, 0.253265,
		35.111649, 35.236362, 39.296291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649181, 35.829773, 39.696381>,  <34.974461, 35.899502, 39.119003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649181, 35.829773, 39.696381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936977, 35.551975, 39.697945>,  <35.109653, 35.385296, 39.698883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936977, 35.551975, 39.697945>,  <34.649181, 35.829773, 39.696381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936977, 35.551975, 39.697945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233237, 0.246932, 0.940545,
		-0.654168, -0.675800, 0.339646,
		0.719490, -0.694492, 0.003914,
		35.152824, 35.343628, 39.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497810, 35.486889, 40.327374>,  <34.649181, 35.829773, 39.696381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497810, 35.486889, 40.327374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874176, 35.386314, 40.236629>,  <35.099995, 35.325970, 40.182182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874176, 35.386314, 40.236629>,  <34.497810, 35.486889, 40.327374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874176, 35.386314, 40.236629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304953, 0.337771, 0.890458,
		-0.147269, -0.907023, 0.394489,
		0.940912, -0.251437, -0.226856,
		35.156448, 35.310883, 40.168571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709747, 34.998615, 40.755600>,  <34.497810, 35.486889, 40.327374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709747, 34.998615, 40.755600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048717, 35.161377, 40.619194>,  <35.252102, 35.259033, 40.537350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048717, 35.161377, 40.619194>,  <34.709747, 34.998615, 40.755600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048717, 35.161377, 40.619194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283915, 0.195435, 0.938721,
		0.448619, -0.892318, 0.050091,
		0.847428, 0.406907, -0.341018,
		35.302944, 35.283447, 40.516888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107861, 34.768734, 41.227177>,  <34.709747, 34.998615, 40.755600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107861, 34.768734, 41.227177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311787, 35.057224, 41.039593>,  <35.434143, 35.230316, 40.927044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311787, 35.057224, 41.039593>,  <35.107861, 34.768734, 41.227177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311787, 35.057224, 41.039593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212470, 0.422675, 0.881024,
		0.833631, -0.548802, 0.062249,
		0.509819, 0.721223, -0.468959,
		35.464733, 35.273590, 40.898907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733074, 34.708149, 41.528606>,  <35.107861, 34.768734, 41.227177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733074, 34.708149, 41.528606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715637, 35.080597, 41.383770>,  <35.705173, 35.304066, 41.296867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715637, 35.080597, 41.383770>,  <35.733074, 34.708149, 41.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715637, 35.080597, 41.383770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190706, 0.363527, 0.911855,
		0.980679, -0.029303, -0.193418,
		-0.043593, 0.931123, -0.362091,
		35.702560, 35.359932, 41.275143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334835, 35.072369, 41.856621>,  <35.733074, 34.708149, 41.528606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334835, 35.072369, 41.856621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 35.349606, 41.714302>,  <35.933609, 35.515949, 41.628910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084068, 35.349606, 41.714302>,  <36.334835, 35.072369, 41.856621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084068, 35.349606, 41.714302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074197, 0.507727, 0.858317,
		0.775546, 0.511693, -0.369728,
		-0.626916, 0.693097, -0.355800,
		35.895992, 35.557533, 41.607563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750603, 35.696526, 41.938347>,  <36.334835, 35.072369, 41.856621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750603, 35.696526, 41.938347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362461, 35.791508, 41.920357>,  <36.129574, 35.848495, 41.909561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362461, 35.791508, 41.920357>,  <36.750603, 35.696526, 41.938347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362461, 35.791508, 41.920357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125158, 0.652957, 0.746982,
		0.206742, 0.719211, -0.663321,
		-0.970357, 0.237452, -0.044979,
		36.071354, 35.862743, 41.906864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779999, 36.303005, 42.188313>,  <36.750603, 35.696526, 41.938347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779999, 36.303005, 42.188313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394901, 36.199547, 42.219887>,  <36.163845, 36.137470, 42.238831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394901, 36.199547, 42.219887>,  <36.779999, 36.303005, 42.188313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394901, 36.199547, 42.219887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123790, 0.681033, 0.721713,
		-0.240426, 0.685052, -0.687677,
		-0.962742, -0.258646, 0.078935,
		36.106079, 36.121952, 42.243568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369938, 36.921028, 42.258949>,  <36.779999, 36.303005, 42.188313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369938, 36.921028, 42.258949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112354, 36.658791, 42.416691>,  <35.957806, 36.501446, 42.511333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112354, 36.658791, 42.416691>,  <36.369938, 36.921028, 42.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112354, 36.658791, 42.416691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198614, 0.641031, 0.741371,
		-0.738833, 0.399087, -0.543006,
		-0.643955, -0.655598, 0.394351,
		35.919167, 36.462112, 42.534996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698261, 37.257912, 42.431545>,  <36.369938, 36.921028, 42.258949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698261, 37.257912, 42.431545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675842, 36.932991, 42.663761>,  <35.662392, 36.738041, 42.803089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675842, 36.932991, 42.663761>,  <35.698261, 37.257912, 42.431545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675842, 36.932991, 42.663761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076966, 0.583240, 0.808645,
		-0.995457, 0.000644, -0.095211,
		-0.056051, -0.812300, 0.580540,
		35.659027, 36.689301, 42.837925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049740, 37.305122, 42.950844>,  <35.698261, 37.257912, 42.431545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049740, 37.305122, 42.950844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299572, 37.027851, 43.094730>,  <35.449471, 36.861488, 43.181061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299572, 37.027851, 43.094730>,  <35.049740, 37.305122, 42.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299572, 37.027851, 43.094730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050040, 0.424138, 0.904214,
		-0.779354, -0.582757, 0.230222,
		0.624583, -0.693182, 0.359715,
		35.486946, 36.819897, 43.202644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673061, 37.073727, 43.618507>,  <35.049740, 37.305122, 42.950844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673061, 37.073727, 43.618507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060047, 36.976341, 43.646038>,  <35.292240, 36.917912, 43.662556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060047, 36.976341, 43.646038>,  <34.673061, 37.073727, 43.618507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060047, 36.976341, 43.646038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008776, 0.239572, 0.970839,
		-0.252852, -0.939857, 0.229641,
		0.967465, -0.243463, 0.068825,
		35.350288, 36.903301, 43.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914135, 36.628464, 44.136959>,  <34.673061, 37.073727, 43.618507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914135, 36.628464, 44.136959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197418, 36.904953, 44.079475>,  <35.367390, 37.070847, 44.044987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197418, 36.904953, 44.079475>,  <34.914135, 36.628464, 44.136959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197418, 36.904953, 44.079475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226719, 0.415438, 0.880914,
		0.668606, -0.591293, 0.450930,
		0.708212, 0.691219, -0.143707,
		35.409882, 37.112320, 44.036362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218102, 36.729523, 44.816902>,  <34.914135, 36.628464, 44.136959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218102, 36.729523, 44.816902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271095, 37.057472, 44.594101>,  <35.302891, 37.254242, 44.460419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271095, 37.057472, 44.594101>,  <35.218102, 36.729523, 44.816902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271095, 37.057472, 44.594101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254417, 0.571259, 0.780343,
		0.957976, 0.038325, 0.284275,
		0.132488, 0.819874, -0.557003,
		35.310841, 37.303436, 44.426998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486633, 37.178741, 45.333138>,  <35.218102, 36.729523, 44.816902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486633, 37.178741, 45.333138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431225, 37.437038, 45.032784>,  <35.397980, 37.592018, 44.852570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431225, 37.437038, 45.032784>,  <35.486633, 37.178741, 45.333138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431225, 37.437038, 45.032784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178583, 0.729481, 0.660277,
		0.974126, 0.225555, 0.014273,
		-0.138517, 0.645741, -0.750887,
		35.389671, 37.630760, 44.807518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768478, 37.787598, 45.575165>,  <35.486633, 37.178741, 45.333138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768478, 37.787598, 45.575165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500473, 37.897457, 45.299297>,  <35.339668, 37.963375, 45.133774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500473, 37.897457, 45.299297>,  <35.768478, 37.787598, 45.575165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500473, 37.897457, 45.299297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246119, 0.794310, 0.555425,
		0.700363, 0.541883, -0.464601,
		-0.670013, 0.274652, -0.689673,
		35.299469, 37.979855, 45.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870407, 38.539093, 45.333099>,  <35.768478, 37.787598, 45.575165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870407, 38.539093, 45.333099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485828, 38.450218, 45.268280>,  <35.255081, 38.396893, 45.229389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485828, 38.450218, 45.268280>,  <35.870407, 38.539093, 45.333099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485828, 38.450218, 45.268280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274659, 0.805374, 0.525295,
		0.013798, 0.549550, -0.835347,
		-0.961443, -0.222188, -0.162051,
		35.197395, 38.383560, 45.219666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617245, 39.056641, 44.896503>,  <35.870407, 38.539093, 45.333099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617245, 39.056641, 44.896503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358082, 38.883827, 45.147442>,  <35.202583, 38.780140, 45.298004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358082, 38.883827, 45.147442>,  <35.617245, 39.056641, 44.896503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358082, 38.883827, 45.147442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035305, 0.839736, 0.541846,
		-0.760901, 0.328918, -0.559323,
		-0.647907, -0.432038, 0.627343,
		35.163712, 38.754215, 45.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075214, 39.608376, 44.914494>,  <35.617245, 39.056641, 44.896503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075214, 39.608376, 44.914494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070145, 39.345024, 45.215527>,  <35.067101, 39.187012, 45.396145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070145, 39.345024, 45.215527>,  <35.075214, 39.608376, 44.914494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070145, 39.345024, 45.215527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091404, 0.748725, 0.656548,
		-0.995733, 0.077112, 0.050687,
		-0.012677, -0.658380, 0.752579,
		35.066341, 39.147511, 45.441299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678032, 39.961861, 45.469170>,  <35.075214, 39.608376, 44.914494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678032, 39.961861, 45.469170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880112, 39.679455, 45.667690>,  <35.001358, 39.510014, 45.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880112, 39.679455, 45.667690>,  <34.678032, 39.961861, 45.469170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880112, 39.679455, 45.667690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161777, 0.642374, 0.749122,
		-0.847703, -0.298166, 0.438744,
		0.505200, -0.706012, 0.496306,
		35.031673, 39.467651, 45.816582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353867, 39.869804, 46.143566>,  <34.678032, 39.961861, 45.469170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353867, 39.869804, 46.143566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716267, 39.711178, 46.202770>,  <34.933704, 39.616001, 46.238293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716267, 39.711178, 46.202770>,  <34.353867, 39.869804, 46.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716267, 39.711178, 46.202770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102841, 0.545424, 0.831827,
		-0.410602, -0.738411, 0.534935,
		0.905997, -0.396563, 0.148013,
		34.988064, 39.592209, 46.247173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443745, 39.694454, 46.931744>,  <34.353867, 39.869804, 46.143566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443745, 39.694454, 46.931744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799580, 39.725983, 46.751778>,  <35.013081, 39.744900, 46.643799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799580, 39.725983, 46.751778>,  <34.443745, 39.694454, 46.931744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799580, 39.725983, 46.751778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351137, 0.511955, 0.783967,
		0.292126, -0.855388, 0.427753,
		0.889587, 0.078818, -0.449914,
		35.066456, 39.749630, 46.616802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982281, 39.531975, 47.382301>,  <34.443745, 39.694454, 46.931744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982281, 39.531975, 47.382301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193027, 39.761646, 47.131630>,  <35.319473, 39.899448, 46.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193027, 39.761646, 47.131630>,  <34.982281, 39.531975, 47.382301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193027, 39.761646, 47.131630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384440, 0.496597, 0.778201,
		0.758039, -0.650926, 0.040899,
		0.526862, 0.574184, -0.626681,
		35.351086, 39.933903, 46.943626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734795, 39.463215, 47.556293>,  <34.982281, 39.531975, 47.382301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734795, 39.463215, 47.556293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672455, 39.798832, 47.347786>,  <35.635052, 40.000202, 47.222679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672455, 39.798832, 47.347786>,  <35.734795, 39.463215, 47.556293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672455, 39.798832, 47.347786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609166, 0.497058, 0.617941,
		0.777579, -0.221238, -0.588578,
		-0.155845, 0.839040, -0.521272,
		35.625702, 40.050545, 47.191402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405609, 39.823875, 47.606731>,  <35.734795, 39.463215, 47.556293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405609, 39.823875, 47.606731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149353, 40.096863, 47.465984>,  <35.995598, 40.260654, 47.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149353, 40.096863, 47.465984>,  <36.405609, 39.823875, 47.606731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149353, 40.096863, 47.465984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371203, 0.676430, 0.636122,
		0.672149, 0.276912, -0.686684,
		-0.640644, 0.682468, -0.351871,
		35.957161, 40.301601, 47.360424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734478, 40.493755, 47.501881>,  <36.405609, 39.823875, 47.606731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734478, 40.493755, 47.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353333, 40.612339, 47.527706>,  <36.124645, 40.683491, 47.543201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353333, 40.612339, 47.527706>,  <36.734478, 40.493755, 47.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353333, 40.612339, 47.527706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267052, 0.718487, 0.642230,
		0.144010, 0.629197, -0.763788,
		-0.952861, 0.296459, 0.064559,
		36.067474, 40.701275, 47.547073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638878, 41.271034, 47.548824>,  <36.734478, 40.493755, 47.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638878, 41.271034, 47.548824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274029, 41.178391, 47.684113>,  <36.055119, 41.122807, 47.765285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274029, 41.178391, 47.684113>,  <36.638878, 41.271034, 47.548824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274029, 41.178391, 47.684113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093198, 0.686313, 0.721310,
		-0.399186, 0.689444, -0.604416,
		-0.912121, -0.231607, 0.338221,
		36.000393, 41.108910, 47.785580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360317, 41.906761, 47.747574>,  <36.638878, 41.271034, 47.548824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360317, 41.906761, 47.747574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132450, 41.634686, 47.932102>,  <35.995731, 41.471439, 48.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132450, 41.634686, 47.932102>,  <36.360317, 41.906761, 47.747574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132450, 41.634686, 47.932102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066185, 0.521511, 0.850674,
		-0.819206, 0.515133, -0.252069,
		-0.569667, -0.680194, 0.461320,
		35.961552, 41.430626, 48.070499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349674, 42.584354, 47.939781>,  <36.360317, 41.906761, 47.747574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349674, 42.584354, 47.939781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132206, 42.919392, 47.918362>,  <36.001724, 43.120415, 47.905510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132206, 42.919392, 47.918362>,  <36.349674, 42.584354, 47.939781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132206, 42.919392, 47.918362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496822, -0.372594, -0.783800,
		-0.676455, -0.399522, 0.618701,
		-0.543669, 0.837589, -0.053552,
		35.969105, 43.170670, 47.902298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613674, 42.477283, 48.104549>,  <36.349674, 42.584354, 47.939781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613674, 42.477283, 48.104549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665981, 42.783390, 47.852432>,  <35.697365, 42.967056, 47.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665981, 42.783390, 47.852432>,  <35.613674, 42.477283, 48.104549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665981, 42.783390, 47.852432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593930, -0.448570, -0.667857,
		-0.793818, 0.461680, 0.395859,
		0.130766, 0.765269, -0.630289,
		35.705212, 43.012970, 47.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861374, 42.630215, 47.773689>,  <35.613674, 42.477283, 48.104549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861374, 42.630215, 47.773689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152786, 42.765224, 47.535255>,  <35.327633, 42.846230, 47.392197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152786, 42.765224, 47.535255>,  <34.861374, 42.630215, 47.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152786, 42.765224, 47.535255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510115, -0.313461, -0.800953,
		-0.457190, 0.887592, -0.056190,
		0.728533, 0.337524, -0.596085,
		35.371346, 42.866482, 47.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498058, 42.919102, 47.178684>,  <34.861374, 42.630215, 47.773689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498058, 42.919102, 47.178684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878036, 42.878952, 47.060345>,  <35.106022, 42.854862, 46.989342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878036, 42.878952, 47.060345>,  <34.498058, 42.919102, 47.178684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878036, 42.878952, 47.060345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310198, -0.190476, -0.931395,
		0.037140, 0.976547, -0.212079,
		0.949946, -0.100379, -0.295849,
		35.163021, 42.848839, 46.971588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390823, 43.221256, 46.525513>,  <34.498058, 42.919102, 47.178684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390823, 43.221256, 46.525513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727699, 43.005775, 46.534557>,  <34.929825, 42.876488, 46.539986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727699, 43.005775, 46.534557>,  <34.390823, 43.221256, 46.525513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727699, 43.005775, 46.534557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237361, -0.408091, -0.881545,
		0.484121, 0.737061, -0.471558,
		0.842191, -0.538704, 0.022616,
		34.980358, 42.844166, 46.541344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751366, 43.428627, 45.949692>,  <34.390823, 43.221256, 46.525513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751366, 43.428627, 45.949692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920784, 43.078686, 46.043709>,  <35.022434, 42.868721, 46.100121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920784, 43.078686, 46.043709>,  <34.751366, 43.428627, 45.949692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920784, 43.078686, 46.043709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178477, -0.334967, -0.925172,
		0.888121, 0.349899, -0.298014,
		0.423542, -0.874853, 0.235042,
		35.047848, 42.816231, 46.114220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301487, 43.219921, 45.417042>,  <34.751366, 43.428627, 45.949692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301487, 43.219921, 45.417042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145809, 42.897038, 45.594555>,  <35.052402, 42.703308, 45.701061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145809, 42.897038, 45.594555>,  <35.301487, 43.219921, 45.417042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145809, 42.897038, 45.594555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121123, -0.432740, -0.893345,
		0.913157, -0.401438, 0.070649,
		-0.389196, -0.807207, 0.443783,
		35.029049, 42.654877, 45.727692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699734, 42.743446, 45.163574>,  <35.301487, 43.219921, 45.417042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699734, 42.743446, 45.163574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375149, 42.535519, 45.270397>,  <35.180397, 42.410763, 45.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375149, 42.535519, 45.270397>,  <35.699734, 42.743446, 45.163574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375149, 42.535519, 45.270397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257506, -0.728255, -0.635087,
		0.524615, -0.446580, 0.724807,
		-0.811461, -0.519818, 0.267057,
		35.131710, 42.379574, 45.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918354, 42.019768, 45.203682>,  <35.699734, 42.743446, 45.163574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918354, 42.019768, 45.203682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518501, 42.012547, 45.195534>,  <35.278591, 42.008213, 45.190643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518501, 42.012547, 45.195534>,  <35.918354, 42.019768, 45.203682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518501, 42.012547, 45.195534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026609, -0.805859, -0.591509,
		-0.005735, -0.591832, 0.806041,
		-0.999630, -0.018056, -0.020369,
		35.218613, 42.007130, 45.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752766, 41.308060, 45.315170>,  <35.918354, 42.019768, 45.203682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752766, 41.308060, 45.315170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428059, 41.475739, 45.152538>,  <35.233234, 41.576344, 45.054958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428059, 41.475739, 45.152538>,  <35.752766, 41.308060, 45.315170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428059, 41.475739, 45.152538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046871, -0.647213, -0.760867,
		-0.582096, -0.636705, 0.505739,
		-0.811768, 0.419192, -0.406583,
		35.184528, 41.601498, 45.030563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237633, 40.818745, 45.318893>,  <35.752766, 41.308060, 45.315170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237633, 40.818745, 45.318893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128365, 41.079151, 45.035610>,  <35.062805, 41.235394, 44.865639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128365, 41.079151, 45.035610>,  <35.237633, 40.818745, 45.318893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128365, 41.079151, 45.035610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145081, -0.755668, -0.638684,
		-0.950962, -0.071722, 0.300876,
		-0.273170, 0.651016, -0.708206,
		35.046413, 41.274456, 44.823147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835163, 40.327957, 44.783230>,  <35.237633, 40.818745, 45.318893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835163, 40.327957, 44.783230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854694, 40.671616, 44.579472>,  <34.866413, 40.877811, 44.457218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854694, 40.671616, 44.579472>,  <34.835163, 40.327957, 44.783230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854694, 40.671616, 44.579472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047949, -0.507398, -0.860377,
		-0.997656, 0.066431, 0.016422,
		0.048824, 0.859147, -0.509394,
		34.869343, 40.929359, 44.426655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316986, 40.337074, 44.304562>,  <34.835163, 40.327957, 44.783230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316986, 40.337074, 44.304562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580051, 40.610893, 44.178787>,  <34.737892, 40.775185, 44.103321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580051, 40.610893, 44.178787>,  <34.316986, 40.337074, 44.304562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580051, 40.610893, 44.178787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054913, -0.459863, -0.886290,
		-0.751304, 0.565618, -0.340028,
		0.657668, 0.684545, -0.314437,
		34.777351, 40.816257, 44.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117249, 40.767853, 43.660328>,  <34.316986, 40.337074, 44.304562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117249, 40.767853, 43.660328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515110, 40.744904, 43.694683>,  <34.753826, 40.731133, 43.715298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515110, 40.744904, 43.694683>,  <34.117249, 40.767853, 43.660328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515110, 40.744904, 43.694683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045252, -0.505429, -0.861681,
		0.092846, 0.860959, -0.500129,
		0.994652, -0.057372, 0.085887,
		34.813507, 40.727692, 43.720448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365345, 41.034100, 43.055702>,  <34.117249, 40.767853, 43.660328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365345, 41.034100, 43.055702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672203, 40.815563, 43.190163>,  <34.856319, 40.684441, 43.270840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672203, 40.815563, 43.190163>,  <34.365345, 41.034100, 43.055702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672203, 40.815563, 43.190163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029691, -0.553717, -0.832176,
		0.640786, 0.628419, -0.441002,
		0.767145, -0.546340, 0.336156,
		34.902348, 40.651661, 43.291008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783016, 40.854977, 42.500759>,  <34.365345, 41.034100, 43.055702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783016, 40.854977, 42.500759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941681, 40.589890, 42.754833>,  <35.036880, 40.430836, 42.907276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941681, 40.589890, 42.754833>,  <34.783016, 40.854977, 42.500759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941681, 40.589890, 42.754833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119969, -0.648590, -0.751624,
		0.910091, 0.374345, -0.177766,
		0.396664, -0.662720, 0.635185,
		35.060680, 40.391075, 42.945389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408897, 40.714489, 42.177349>,  <34.783016, 40.854977, 42.500759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408897, 40.714489, 42.177349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324757, 40.409729, 42.422382>,  <35.274273, 40.226875, 42.569405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324757, 40.409729, 42.422382>,  <35.408897, 40.714489, 42.177349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324757, 40.409729, 42.422382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180269, -0.646092, -0.741666,
		0.960861, -0.045583, 0.273255,
		-0.210355, -0.761897, 0.612587,
		35.261650, 40.181160, 42.606159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084553, 40.225555, 42.125237>,  <35.408897, 40.714489, 42.177349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084553, 40.225555, 42.125237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778454, 40.001270, 42.251728>,  <35.594795, 39.866699, 42.327621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778454, 40.001270, 42.251728>,  <36.084553, 40.225555, 42.125237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778454, 40.001270, 42.251728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157152, -0.639097, -0.752900,
		0.624260, -0.526458, 0.577184,
		-0.765247, -0.560711, 0.316229,
		35.548882, 39.833057, 42.346596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348316, 39.496712, 42.121155>,  <36.084553, 40.225555, 42.125237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348316, 39.496712, 42.121155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955547, 39.421364, 42.128567>,  <35.719887, 39.376156, 42.133015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955547, 39.421364, 42.128567>,  <36.348316, 39.496712, 42.121155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955547, 39.421364, 42.128567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142308, -0.799257, -0.583898,
		0.124796, -0.570707, 0.811615,
		-0.981924, -0.188367, 0.018528,
		35.660969, 39.364853, 42.134125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210602, 38.799229, 42.324810>,  <36.348316, 39.496712, 42.121155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210602, 38.799229, 42.324810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890213, 38.899837, 42.107487>,  <35.697979, 38.960201, 41.977093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890213, 38.899837, 42.107487>,  <36.210602, 38.799229, 42.324810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890213, 38.899837, 42.107487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066663, -0.864362, -0.498431,
		-0.594978, -0.435448, 0.675564,
		-0.800973, 0.251520, -0.543305,
		35.649921, 38.975292, 41.944496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776093, 38.126358, 42.336082>,  <36.210602, 38.799229, 42.324810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776093, 38.126358, 42.336082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707600, 38.385384, 42.039074>,  <35.666504, 38.540798, 41.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707600, 38.385384, 42.039074>,  <35.776093, 38.126358, 42.336082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707600, 38.385384, 42.039074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316000, -0.677740, -0.663937,
		-0.933179, -0.348326, -0.088577,
		-0.171235, 0.647562, -0.742524,
		35.656231, 38.579651, 41.816319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559437, 37.686737, 41.813709>,  <35.776093, 38.126358, 42.336082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559437, 37.686737, 41.813709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630478, 37.998150, 41.572929>,  <35.673103, 38.184998, 41.428463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630478, 37.998150, 41.572929>,  <35.559437, 37.686737, 41.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630478, 37.998150, 41.572929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208068, -0.627550, -0.750259,
		-0.961856, 0.007998, -0.273440,
		0.177598, 0.778535, -0.601948,
		35.683758, 38.231709, 41.392345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215660, 37.585918, 41.163013>,  <35.559437, 37.686737, 41.813709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215660, 37.585918, 41.163013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516693, 37.837891, 41.086273>,  <35.697315, 37.989075, 41.040230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516693, 37.837891, 41.086273>,  <35.215660, 37.585918, 41.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516693, 37.837891, 41.086273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283241, -0.572689, -0.769287,
		-0.594465, 0.524614, -0.609419,
		0.752586, 0.629927, -0.191851,
		35.742470, 38.026867, 41.028717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275414, 37.618130, 40.415291>,  <35.215660, 37.585918, 41.163013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275414, 37.618130, 40.415291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632126, 37.732101, 40.555885>,  <35.846153, 37.800484, 40.640244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632126, 37.732101, 40.555885>,  <35.275414, 37.618130, 40.415291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632126, 37.732101, 40.555885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447441, -0.439839, -0.778677,
		-0.067266, 0.851680, -0.519727,
		0.891780, 0.284925, 0.351490,
		35.899658, 37.817577, 40.661331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657761, 37.817020, 39.888035>,  <35.275414, 37.618130, 40.415291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657761, 37.817020, 39.888035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957691, 37.777576, 40.149734>,  <36.137650, 37.753910, 40.306755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957691, 37.777576, 40.149734>,  <35.657761, 37.817020, 39.888035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957691, 37.777576, 40.149734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604568, -0.299628, -0.738052,
		0.268812, 0.948946, -0.165051,
		0.749826, -0.098613, 0.654245,
		36.182640, 37.747993, 40.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208763, 38.128078, 39.516445>,  <35.657761, 37.817020, 39.888035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208763, 38.128078, 39.516445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359612, 37.886822, 39.797585>,  <36.450119, 37.742065, 39.966270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359612, 37.886822, 39.797585>,  <36.208763, 38.128078, 39.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359612, 37.886822, 39.797585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611821, -0.407488, -0.677959,
		0.695309, 0.685691, 0.215344,
		0.377120, -0.603143, 0.702850,
		36.472748, 37.705879, 40.008438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856297, 38.090904, 39.273647>,  <36.208763, 38.128078, 39.516445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856297, 38.090904, 39.273647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846073, 37.781452, 39.526894>,  <36.839939, 37.595779, 39.678841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846073, 37.781452, 39.526894>,  <36.856297, 38.090904, 39.273647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846073, 37.781452, 39.526894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655266, -0.491263, -0.573836,
		0.754966, 0.400193, 0.519492,
		-0.025562, -0.773632, 0.633119,
		36.838406, 37.549362, 39.716831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543407, 38.095943, 39.607460>,  <36.856297, 38.090904, 39.273647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543407, 38.095943, 39.607460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366047, 37.737484, 39.600449>,  <37.259632, 37.522408, 39.596241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366047, 37.737484, 39.600449>,  <37.543407, 38.095943, 39.607460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366047, 37.737484, 39.600449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770963, -0.371338, -0.517421,
		0.457180, -0.242936, 0.855551,
		-0.443399, -0.896153, -0.017526,
		37.233028, 37.468639, 39.595192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140102, 37.675137, 39.642590>,  <37.543407, 38.095943, 39.607460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140102, 37.675137, 39.642590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866440, 37.402790, 39.538013>,  <37.702244, 37.239380, 39.475269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866440, 37.402790, 39.538013>,  <38.140102, 37.675137, 39.642590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866440, 37.402790, 39.538013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702813, -0.519670, -0.485796,
		0.194904, -0.516100, 0.834058,
		-0.684154, -0.680870, -0.261436,
		37.661194, 37.198528, 39.459583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442661, 36.968987, 39.845379>,  <38.140102, 37.675137, 39.642590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442661, 36.968987, 39.845379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166676, 36.936695, 39.557648>,  <38.001083, 36.917320, 39.385010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166676, 36.936695, 39.557648>,  <38.442661, 36.968987, 39.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166676, 36.936695, 39.557648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634460, -0.545814, -0.547309,
		-0.348438, -0.834009, 0.427809,
		-0.689965, -0.080725, -0.719328,
		37.959686, 36.912479, 39.341850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419113, 36.253056, 39.615471>,  <38.442661, 36.968987, 39.845379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419113, 36.253056, 39.615471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229504, 36.435745, 39.314354>,  <38.115738, 36.545361, 39.133682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229504, 36.435745, 39.314354>,  <38.419113, 36.253056, 39.615471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229504, 36.435745, 39.314354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506055, -0.558330, -0.657401,
		-0.720562, -0.692580, 0.033533,
		-0.474025, 0.456728, -0.752795,
		38.087296, 36.572765, 39.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345612, 35.699261, 39.147404>,  <38.419113, 36.253056, 39.615471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345612, 35.699261, 39.147404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303883, 36.042496, 38.946281>,  <38.278847, 36.248436, 38.825607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303883, 36.042496, 38.946281>,  <38.345612, 35.699261, 39.147404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303883, 36.042496, 38.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689371, -0.302014, -0.658449,
		-0.716857, -0.415307, -0.560032,
		-0.104321, 0.858084, -0.502802,
		38.272587, 36.299919, 38.795441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241810, 35.463863, 38.488506>,  <38.345612, 35.699261, 39.147404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241810, 35.463863, 38.488506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345470, 35.846279, 38.433632>,  <38.407669, 36.075729, 38.400707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345470, 35.846279, 38.433632>,  <38.241810, 35.463863, 38.488506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345470, 35.846279, 38.433632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609717, -0.272099, -0.744451,
		-0.749055, 0.109286, -0.653432,
		0.259156, 0.956043, -0.137183,
		38.423218, 36.133091, 38.392475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271511, 35.560059, 37.810703>,  <38.241810, 35.463863, 38.488506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271511, 35.560059, 37.810703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475182, 35.889072, 37.912037>,  <38.597382, 36.086479, 37.972839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475182, 35.889072, 37.912037>,  <38.271511, 35.560059, 37.810703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475182, 35.889072, 37.912037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628429, -0.154190, -0.762432,
		-0.588064, 0.547414, -0.595414,
		0.509173, 0.822534, 0.253337,
		38.627934, 36.135834, 37.988037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285252, 35.982849, 37.266861>,  <38.271511, 35.560059, 37.810703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285252, 35.982849, 37.266861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588760, 36.143196, 37.472218>,  <38.770866, 36.239403, 37.595432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588760, 36.143196, 37.472218>,  <38.285252, 35.982849, 37.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588760, 36.143196, 37.472218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566151, -0.016145, -0.824143,
		-0.322082, 0.915995, -0.239200,
		0.758773, 0.400866, 0.513391,
		38.816391, 36.263454, 37.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514828, 36.502651, 36.822624>,  <38.285252, 35.982849, 37.266861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514828, 36.502651, 36.822624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819908, 36.442879, 37.074326>,  <39.002956, 36.407017, 37.225346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819908, 36.442879, 37.074326>,  <38.514828, 36.502651, 36.822624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819908, 36.442879, 37.074326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644396, 0.092540, -0.759072,
		0.055199, 0.984432, 0.166874,
		0.762697, -0.149432, 0.629256,
		39.048717, 36.398048, 37.263103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088657, 36.983334, 36.657913>,  <38.514828, 36.502651, 36.822624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088657, 36.983334, 36.657913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279209, 36.696918, 36.862011>,  <39.393539, 36.525070, 36.984470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279209, 36.696918, 36.862011>,  <39.088657, 36.983334, 36.657913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279209, 36.696918, 36.862011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728734, -0.003152, -0.684789,
		0.491942, 0.698057, 0.520298,
		0.476382, -0.716035, 0.510249,
		39.422123, 36.482109, 37.015087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700428, 37.213047, 36.715054>,  <39.088657, 36.983334, 36.657913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700428, 37.213047, 36.715054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734657, 36.815086, 36.736408>,  <39.755196, 36.576309, 36.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734657, 36.815086, 36.736408>,  <39.700428, 37.213047, 36.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734657, 36.815086, 36.736408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567623, 0.004650, -0.823276,
		0.818829, 0.100756, 0.565126,
		0.085577, -0.994900, 0.053384,
		39.760330, 36.516617, 36.752422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419384, 37.033993, 36.697693>,  <39.700428, 37.213047, 36.715054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419384, 37.033993, 36.697693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267284, 36.677494, 36.598827>,  <40.176025, 36.463596, 36.539509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267284, 36.677494, 36.598827>,  <40.419384, 37.033993, 36.697693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267284, 36.677494, 36.598827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798073, -0.181122, -0.574695,
		0.467429, -0.415780, 0.780152,
		-0.380249, -0.891247, -0.247161,
		40.153210, 36.410118, 36.524677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988976, 36.652168, 36.668404>,  <40.419384, 37.033993, 36.697693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988976, 36.652168, 36.668404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727009, 36.427261, 36.466434>,  <40.569828, 36.292316, 36.345253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727009, 36.427261, 36.466434>,  <40.988976, 36.652168, 36.668404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727009, 36.427261, 36.466434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744583, -0.365904, -0.558310,
		0.129166, -0.741601, 0.658289,
		-0.654914, -0.562265, -0.504921,
		40.530533, 36.258583, 36.314957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252205, 36.001022, 36.488564>,  <40.988976, 36.652168, 36.668404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252205, 36.001022, 36.488564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964211, 36.056988, 36.216667>,  <40.791416, 36.090565, 36.053528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964211, 36.056988, 36.216667>,  <41.252205, 36.001022, 36.488564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964211, 36.056988, 36.216667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599522, -0.367973, -0.710752,
		-0.349561, -0.919252, 0.181062,
		-0.719986, 0.139901, -0.679741,
		40.748215, 36.098961, 36.012745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323822, 35.474667, 36.071117>,  <41.252205, 36.001022, 36.488564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323822, 35.474667, 36.071117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156071, 35.747856, 35.831898>,  <41.055420, 35.911770, 35.688366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156071, 35.747856, 35.831898>,  <41.323822, 35.474667, 36.071117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156071, 35.747856, 35.831898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650217, -0.233748, -0.722897,
		-0.633515, -0.692031, -0.346053,
		-0.419378, 0.682975, -0.598053,
		41.030258, 35.952747, 35.652481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919071, 35.163338, 35.402592>,  <41.323822, 35.474667, 36.071117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919071, 35.163338, 35.402592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063248, 35.534061, 35.360424>,  <41.149754, 35.756496, 35.335121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063248, 35.534061, 35.360424>,  <40.919071, 35.163338, 35.402592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063248, 35.534061, 35.360424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554920, -0.303898, -0.774409,
		-0.749765, 0.220627, -0.623840,
		0.360440, 0.926806, -0.105422,
		41.171379, 35.812103, 35.328796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869743, 35.442432, 34.668407>,  <40.919071, 35.163338, 35.402592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869743, 35.442432, 34.668407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202377, 35.572525, 34.848488>,  <41.401958, 35.650581, 34.956535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202377, 35.572525, 34.848488>,  <40.869743, 35.442432, 34.668407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202377, 35.572525, 34.848488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515547, -0.150546, -0.843533,
		-0.206570, 0.933573, -0.292867,
		0.831589, 0.325235, 0.450202,
		41.451855, 35.670097, 34.983547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084766, 35.969933, 34.282085>,  <40.869743, 35.442432, 34.668407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084766, 35.969933, 34.282085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417625, 35.812969, 34.438828>,  <41.617340, 35.718792, 34.532875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.417625, 35.812969, 34.438828>,  <41.084766, 35.969933, 34.282085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417625, 35.812969, 34.438828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388001, -0.092885, -0.916967,
		0.396220, 0.915090, 0.074960,
		0.832145, -0.392405, 0.391859,
		41.667271, 35.695248, 34.556385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658157, 36.258873, 34.016815>,  <41.084766, 35.969933, 34.282085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658157, 36.258873, 34.016815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732437, 35.882259, 34.129269>,  <41.777004, 35.656292, 34.196739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732437, 35.882259, 34.129269>,  <41.658157, 36.258873, 34.016815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732437, 35.882259, 34.129269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541621, -0.140637, -0.828775,
		0.819854, 0.306174, 0.483836,
		0.185704, -0.941530, 0.281132,
		41.788147, 35.599800, 34.213608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430313, 36.188686, 34.025055>,  <41.658157, 36.258873, 34.016815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430313, 36.188686, 34.025055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270760, 35.834946, 33.928051>,  <42.175026, 35.622700, 33.869850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270760, 35.834946, 33.928051>,  <42.430313, 36.188686, 34.025055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270760, 35.834946, 33.928051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617696, -0.063670, -0.783835,
		0.677746, -0.462457, 0.571658,
		-0.398888, -0.884352, -0.242506,
		42.151093, 35.569641, 33.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872345, 35.607712, 34.050198>,  <42.430313, 36.188686, 34.025055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872345, 35.607712, 34.050198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585594, 35.542950, 33.778942>,  <42.413544, 35.504093, 33.616188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585594, 35.542950, 33.778942>,  <42.872345, 35.607712, 34.050198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585594, 35.542950, 33.778942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671711, 0.100219, -0.734003,
		0.186804, -0.981704, 0.036911,
		-0.716874, -0.161908, -0.678142,
		42.370533, 35.494377, 33.575500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613674, 35.762165, 33.780697>,  <42.872345, 35.607712, 34.050198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613674, 35.762165, 33.780697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981274, 35.635899, 33.686211>,  <44.201832, 35.560139, 33.629520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981274, 35.635899, 33.686211>,  <43.613674, 35.762165, 33.780697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981274, 35.635899, 33.686211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272434, -0.075344, -0.959220,
		0.284994, 0.945875, -0.155238,
		0.918998, -0.315664, -0.236216,
		44.256973, 35.541199, 33.615345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942375, 36.222980, 33.215622>,  <43.613674, 35.762165, 33.780697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942375, 36.222980, 33.215622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089451, 35.851406, 33.198273>,  <44.177696, 35.628460, 33.187862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089451, 35.851406, 33.198273>,  <43.942375, 36.222980, 33.215622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089451, 35.851406, 33.198273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221457, -0.042162, -0.974258,
		0.903197, 0.367827, -0.221222,
		0.367685, -0.928938, -0.043377,
		44.199757, 35.572723, 33.185261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155163, 36.233482, 32.577724>,  <43.942375, 36.222980, 33.215622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155163, 36.233482, 32.577724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144054, 35.838978, 32.642849>,  <44.137390, 35.602272, 32.681923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.144054, 35.838978, 32.642849>,  <44.155163, 36.233482, 32.577724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144054, 35.838978, 32.642849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051304, -0.161254, -0.985579,
		0.998297, -0.035726, -0.046120,
		-0.027774, -0.986266, 0.162812,
		44.135723, 35.543098, 32.691692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583904, 35.941303, 32.099976>,  <44.155163, 36.233482, 32.577724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583904, 35.941303, 32.099976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321533, 35.659245, 32.207703>,  <44.164112, 35.490009, 32.272339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321533, 35.659245, 32.207703>,  <44.583904, 35.941303, 32.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321533, 35.659245, 32.207703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140440, -0.236560, -0.961414,
		0.741648, -0.668436, 0.056135,
		-0.655923, -0.705147, 0.269319,
		44.124756, 35.447701, 32.288498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788239, 35.407242, 31.689802>,  <44.583904, 35.941303, 32.099976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788239, 35.407242, 31.689802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419270, 35.304859, 31.805471>,  <44.197887, 35.243427, 31.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419270, 35.304859, 31.805471>,  <44.788239, 35.407242, 31.689802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419270, 35.304859, 31.805471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179013, -0.380093, -0.907460,
		0.342186, -0.888827, 0.304786,
		-0.922422, -0.255959, 0.289174,
		44.142544, 35.228073, 31.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709625, 34.654709, 31.574886>,  <44.788239, 35.407242, 31.689802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709625, 34.654709, 31.574886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325970, 34.767281, 31.586536>,  <44.095776, 34.834824, 31.593527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325970, 34.767281, 31.586536>,  <44.709625, 34.654709, 31.574886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325970, 34.767281, 31.586536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121855, -0.317983, -0.940233,
		-0.255350, -0.905364, 0.339283,
		-0.959139, 0.281432, 0.029126,
		44.038227, 34.851711, 31.595274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324821, 34.032021, 31.321625>,  <44.709625, 34.654709, 31.574886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324821, 34.032021, 31.321625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127239, 34.375954, 31.269943>,  <44.008690, 34.582314, 31.238935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127239, 34.375954, 31.269943>,  <44.324821, 34.032021, 31.321625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127239, 34.375954, 31.269943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121400, -0.215341, -0.968963,
		-0.860972, -0.462937, 0.210753,
		-0.493953, 0.859836, -0.129202,
		43.979053, 34.633904, 31.231182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708626, 33.845730, 30.992495>,  <44.324821, 34.032021, 31.321625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708626, 33.845730, 30.992495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732792, 34.238701, 30.921858>,  <43.747292, 34.474483, 30.879475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732792, 34.238701, 30.921858>,  <43.708626, 33.845730, 30.992495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732792, 34.238701, 30.921858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213537, -0.160100, -0.963727,
		-0.975065, 0.095938, 0.200112,
		0.060420, 0.982427, -0.176594,
		43.750919, 34.533428, 30.868879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066589, 34.000126, 30.557964>,  <43.708626, 33.845730, 30.992495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066589, 34.000126, 30.557964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331123, 34.297775, 30.520208>,  <43.489845, 34.476364, 30.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331123, 34.297775, 30.520208>,  <43.066589, 34.000126, 30.557964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331123, 34.297775, 30.520208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170076, 0.026200, -0.985083,
		-0.730552, 0.667526, 0.143885,
		0.661338, 0.744125, -0.094389,
		43.529526, 34.521011, 30.491892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723068, 34.502621, 30.135841>,  <43.066589, 34.000126, 30.557964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723068, 34.502621, 30.135841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117584, 34.563076, 30.109331>,  <43.354294, 34.599350, 30.093426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117584, 34.563076, 30.109331>,  <42.723068, 34.502621, 30.135841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117584, 34.563076, 30.109331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066848, -0.001284, -0.997762,
		-0.150886, 0.988512, 0.008837,
		0.986288, 0.151139, -0.066274,
		43.413471, 34.608418, 30.089449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714249, 34.792610, 29.565697>,  <42.723068, 34.502621, 30.135841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714249, 34.792610, 29.565697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108791, 34.731781, 29.590891>,  <43.345516, 34.695282, 29.606007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108791, 34.731781, 29.590891>,  <42.714249, 34.792610, 29.565697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108791, 34.731781, 29.590891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080361, 0.110965, -0.990570,
		0.143652, 0.982120, 0.121672,
		0.986360, -0.152075, 0.062984,
		43.404701, 34.686157, 29.609785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034954, 35.290512, 29.126123>,  <42.714249, 34.792610, 29.565697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034954, 35.290512, 29.126123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293369, 34.988567, 29.171412>,  <43.448418, 34.807400, 29.198584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293369, 34.988567, 29.171412>,  <43.034954, 35.290512, 29.126123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293369, 34.988567, 29.171412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135418, -0.032627, -0.990251,
		0.751193, 0.655076, 0.081143,
		0.646042, -0.754858, 0.113219,
		43.487183, 34.762112, 29.205378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510433, 35.529701, 28.670353>,  <43.034954, 35.290512, 29.126123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510433, 35.529701, 28.670353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578205, 35.140366, 28.732206>,  <43.618870, 34.906765, 28.769318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578205, 35.140366, 28.732206>,  <43.510433, 35.529701, 28.670353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578205, 35.140366, 28.732206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136392, -0.132235, -0.981790,
		0.976058, 0.187438, 0.110351,
		0.169433, -0.973335, 0.154634,
		43.629036, 34.848366, 28.778597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060085, 35.350239, 28.285400>,  <43.510433, 35.529701, 28.670353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060085, 35.350239, 28.285400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878109, 35.001553, 28.358213>,  <43.768925, 34.792339, 28.401901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878109, 35.001553, 28.358213>,  <44.060085, 35.350239, 28.285400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878109, 35.001553, 28.358213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155560, -0.123478, -0.980079,
		0.876831, -0.474192, -0.079430,
		-0.454938, -0.871719, 0.182034,
		43.741627, 34.740036, 28.412825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448322, 34.872810, 27.932447>,  <44.060085, 35.350239, 28.285400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448322, 34.872810, 27.932447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079140, 34.731525, 27.993637>,  <43.857632, 34.646755, 28.030350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079140, 34.731525, 27.993637>,  <44.448322, 34.872810, 27.932447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079140, 34.731525, 27.993637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099877, -0.164046, -0.981383,
		0.371729, -0.921049, 0.116129,
		-0.922953, -0.353210, 0.152972,
		43.802254, 34.625561, 28.039528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459385, 34.307777, 27.537079>,  <44.448322, 34.872810, 27.932447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459385, 34.307777, 27.537079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072098, 34.391224, 27.592255>,  <43.839725, 34.441292, 27.625360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072098, 34.391224, 27.592255>,  <44.459385, 34.307777, 27.537079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072098, 34.391224, 27.592255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183833, -0.219683, -0.958095,
		-0.169577, -0.953004, 0.251053,
		-0.968220, 0.208622, 0.137940,
		43.781631, 34.453812, 27.633636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041592, 33.650940, 27.396786>,  <44.459385, 34.307777, 27.537079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041592, 33.650940, 27.396786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824261, 33.982044, 27.340765>,  <43.693863, 34.180706, 27.307152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824261, 33.982044, 27.340765>,  <44.041592, 33.650940, 27.396786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824261, 33.982044, 27.340765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070219, -0.211046, -0.974951,
		-0.836582, -0.519879, 0.172790,
		-0.543323, 0.827759, -0.140052,
		43.661263, 34.230373, 27.298750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522720, 33.415901, 27.059443>,  <44.041592, 33.650940, 27.396786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522720, 33.415901, 27.059443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477184, 33.806118, 26.984221>,  <43.449863, 34.040249, 26.939087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477184, 33.806118, 26.984221>,  <43.522720, 33.415901, 27.059443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477184, 33.806118, 26.984221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187957, -0.207014, -0.960113,
		-0.975558, -0.073953, 0.206926,
		-0.113840, 0.975539, -0.188054,
		43.443031, 34.098782, 26.927805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862053, 33.513760, 26.774471>,  <43.522720, 33.415901, 27.059443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862053, 33.513760, 26.774471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085033, 33.825790, 26.660820>,  <43.218822, 34.013008, 26.592630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085033, 33.825790, 26.660820>,  <42.862053, 33.513760, 26.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085033, 33.825790, 26.660820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372711, -0.070660, -0.925253,
		-0.741843, 0.621683, 0.251353,
		0.557454, 0.780075, -0.284127,
		43.252270, 34.059814, 26.575583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418190, 33.919178, 26.513443>,  <42.862053, 33.513760, 26.774471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418190, 33.919178, 26.513443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757534, 34.039799, 26.339382>,  <42.961140, 34.112171, 26.234945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757534, 34.039799, 26.339382>,  <42.418190, 33.919178, 26.513443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757534, 34.039799, 26.339382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367271, -0.256786, -0.893965,
		-0.381315, 0.918221, -0.107096,
		0.848358, 0.301549, -0.435153,
		43.012043, 34.130264, 26.208836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346481, 34.397118, 25.974337>,  <42.418190, 33.919178, 26.513443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346481, 34.397118, 25.974337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689728, 34.211258, 25.886936>,  <42.895676, 34.099743, 25.834496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689728, 34.211258, 25.886936>,  <42.346481, 34.397118, 25.974337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689728, 34.211258, 25.886936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413285, -0.372516, -0.830919,
		0.304690, 0.803327, -0.511693,
		0.858114, -0.464648, -0.218501,
		42.947163, 34.071865, 25.821386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530693, 34.644173, 25.359966>,  <42.346481, 34.397118, 25.974337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530693, 34.644173, 25.359966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644402, 34.268230, 25.435711>,  <42.712627, 34.042664, 25.481157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644402, 34.268230, 25.435711>,  <42.530693, 34.644173, 25.359966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644402, 34.268230, 25.435711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661218, -0.335217, -0.671134,
		0.694247, 0.065576, -0.716743,
		0.284275, -0.939856, 0.189363,
		42.729683, 33.986275, 25.492519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979259, 34.996063, 25.100288>,  <42.530693, 34.644173, 25.359966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979259, 34.996063, 25.100288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329346, 35.071312, 25.278553>,  <43.539398, 35.116463, 25.385511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329346, 35.071312, 25.278553>,  <42.979259, 34.996063, 25.100288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329346, 35.071312, 25.278553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136297, 0.788060, -0.600321,
		-0.464140, 0.586151, 0.664079,
		0.875212, 0.188121, 0.445661,
		43.591911, 35.127747, 25.412251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176613, 35.656765, 25.585056>,  <42.979259, 34.996063, 25.100288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176613, 35.656765, 25.585056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453781, 35.520718, 25.330755>,  <43.620083, 35.439091, 25.178173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453781, 35.520718, 25.330755>,  <43.176613, 35.656765, 25.585056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453781, 35.520718, 25.330755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028029, 0.893788, -0.447613,
		0.720472, 0.292340, 0.628854,
		0.692917, -0.340119, -0.635755,
		43.661655, 35.418682, 25.140028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440342, 36.323612, 25.633116>,  <43.176613, 35.656765, 25.585056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440342, 36.323612, 25.633116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535179, 36.135002, 25.293362>,  <43.592079, 36.021835, 25.089510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535179, 36.135002, 25.293362>,  <43.440342, 36.323612, 25.633116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535179, 36.135002, 25.293362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198941, 0.832220, -0.517525,
		0.950900, 0.291677, 0.103506,
		0.237090, -0.471523, -0.849384,
		43.606308, 35.993546, 25.038546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944225, 36.663605, 25.104685>,  <43.440342, 36.323612, 25.633116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944225, 36.663605, 25.104685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709812, 36.427441, 24.882704>,  <43.569164, 36.285740, 24.749516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709812, 36.427441, 24.882704>,  <43.944225, 36.663605, 25.104685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709812, 36.427441, 24.882704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294044, 0.793159, -0.533327,
		0.755047, -0.149370, -0.638430,
		-0.586039, -0.590413, -0.554951,
		43.534000, 36.250317, 24.716219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054585, 36.693958, 24.231585>,  <43.944225, 36.663605, 25.104685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054585, 36.693958, 24.231585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681614, 36.589741, 24.331738>,  <43.457832, 36.527210, 24.391829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681614, 36.589741, 24.331738>,  <44.054585, 36.693958, 24.231585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681614, 36.589741, 24.331738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361088, 0.698154, -0.618220,
		-0.013731, -0.666857, -0.745059,
		-0.932430, -0.260543, 0.250381,
		43.401886, 36.511578, 24.406851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546925, 36.912647, 24.777414>,  <44.054585, 36.693958, 24.231585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546925, 36.912647, 24.777414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895916, 37.047928, 24.636328>,  <45.105309, 37.129097, 24.551676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895916, 37.047928, 24.636328>,  <44.546925, 36.912647, 24.777414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895916, 37.047928, 24.636328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484923, -0.510113, 0.710377,
		0.060327, -0.790825, -0.609062,
		0.872474, 0.338203, -0.352716,
		45.157658, 37.149387, 24.530514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920654, 36.271107, 24.723324>,  <44.546925, 36.912647, 24.777414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920654, 36.271107, 24.723324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118126, 36.603355, 24.826361>,  <45.236610, 36.802704, 24.888182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118126, 36.603355, 24.826361>,  <44.920654, 36.271107, 24.723324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118126, 36.603355, 24.826361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372493, -0.469623, 0.800440,
		0.785831, -0.299209, -0.541242,
		0.493678, 0.830619, 0.257591,
		45.266228, 36.852543, 24.903639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680191, 36.296032, 24.904238>,  <44.920654, 36.271107, 24.723324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680191, 36.296032, 24.904238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505344, 36.602123, 25.093283>,  <45.400436, 36.785778, 25.206711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.505344, 36.602123, 25.093283>,  <45.680191, 36.296032, 24.904238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.505344, 36.602123, 25.093283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358464, -0.333711, 0.871861,
		0.824885, 0.550516, -0.128436,
		-0.437113, 0.765225, 0.472613,
		45.374210, 36.831692, 25.235067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004276, 36.385078, 25.551493>,  <45.680191, 36.296032, 24.904238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004276, 36.385078, 25.551493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717876, 36.647179, 25.647821>,  <45.546036, 36.804440, 25.705618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717876, 36.647179, 25.647821>,  <46.004276, 36.385078, 25.551493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717876, 36.647179, 25.647821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298236, -0.024797, 0.954170,
		0.631190, 0.755006, -0.177664,
		-0.715999, 0.655249, 0.240821,
		45.503078, 36.843754, 25.720068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141914, 37.111698, 25.792252>,  <46.004276, 36.385078, 25.551493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141914, 37.111698, 25.792252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835419, 36.889061, 25.920677>,  <45.651520, 36.755478, 25.997732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.835419, 36.889061, 25.920677>,  <46.141914, 37.111698, 25.792252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835419, 36.889061, 25.920677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483224, -0.169809, 0.858871,
		-0.423523, 0.813246, 0.399073,
		-0.766239, -0.556594, 0.321062,
		45.605545, 36.722084, 26.016996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919586, 37.418877, 26.408155>,  <46.141914, 37.111698, 25.792252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919586, 37.418877, 26.408155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799351, 37.037384, 26.410738>,  <45.727207, 36.808487, 26.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799351, 37.037384, 26.410738>,  <45.919586, 37.418877, 26.408155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799351, 37.037384, 26.410738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475820, -0.144092, 0.867660,
		-0.826583, 0.263885, 0.497117,
		-0.300593, -0.953731, 0.006458,
		45.709171, 36.751266, 26.412676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656769, 37.299881, 27.064138>,  <45.919586, 37.418877, 26.408155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656769, 37.299881, 27.064138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736515, 36.946239, 26.895090>,  <45.784363, 36.734055, 26.793661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736515, 36.946239, 26.895090>,  <45.656769, 37.299881, 27.064138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736515, 36.946239, 26.895090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439770, -0.304685, 0.844849,
		-0.875702, -0.354293, 0.328058,
		0.199370, -0.884106, -0.422621,
		45.796326, 36.681007, 26.768303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389774, 36.968227, 27.471327>,  <45.656769, 37.299881, 27.064138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389774, 36.968227, 27.471327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640114, 36.711048, 27.294720>,  <45.790318, 36.556740, 27.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640114, 36.711048, 27.294720>,  <45.389774, 36.968227, 27.471327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640114, 36.711048, 27.294720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405344, -0.215510, 0.888399,
		-0.666342, -0.734968, 0.125738,
		0.625847, -0.642945, -0.441518,
		45.827869, 36.518166, 27.162264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293034, 36.320015, 27.887915>,  <45.389774, 36.968227, 27.471327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293034, 36.320015, 27.887915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648586, 36.275925, 27.710045>,  <45.861919, 36.249470, 27.603323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648586, 36.275925, 27.710045>,  <45.293034, 36.320015, 27.887915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648586, 36.275925, 27.710045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398590, -0.292452, 0.869251,
		-0.225856, -0.949907, -0.216023,
		0.888884, -0.110221, -0.444675,
		45.915253, 36.242859, 27.576643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570496, 35.683025, 28.100254>,  <45.293034, 36.320015, 27.887915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570496, 35.683025, 28.100254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882961, 35.905323, 27.986462>,  <46.070442, 36.038700, 27.918186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.882961, 35.905323, 27.986462>,  <45.570496, 35.683025, 28.100254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.882961, 35.905323, 27.986462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472138, -0.227720, 0.851604,
		0.408493, -0.799557, -0.440275,
		0.781166, 0.555744, -0.284479,
		46.117310, 36.072048, 27.901117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.058849, 35.295940, 28.393198>,  <45.570496, 35.683025, 28.100254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.058849, 35.295940, 28.393198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237968, 35.639233, 28.292870>,  <46.345440, 35.845207, 28.232672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237968, 35.639233, 28.292870>,  <46.058849, 35.295940, 28.393198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237968, 35.639233, 28.292870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509917, -0.014691, 0.860098,
		0.734480, -0.513049, -0.444206,
		0.447798, 0.858233, -0.250822,
		46.372307, 35.896702, 28.217623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830467, 35.113255, 28.355524>,  <46.058849, 35.295940, 28.393198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830467, 35.113255, 28.355524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749283, 35.497314, 28.432379>,  <46.700573, 35.727753, 28.478493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.749283, 35.497314, 28.432379>,  <46.830467, 35.113255, 28.355524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.749283, 35.497314, 28.432379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495470, -0.068547, 0.865916,
		0.844581, 0.270944, -0.461814,
		-0.202959, 0.960151, 0.192138,
		46.688396, 35.785358, 28.490021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411167, 35.355572, 28.657244>,  <46.830467, 35.113255, 28.355524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411167, 35.355572, 28.657244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120258, 35.597950, 28.786184>,  <46.945713, 35.743378, 28.863548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.120258, 35.597950, 28.786184>,  <47.411167, 35.355572, 28.657244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120258, 35.597950, 28.786184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332828, -0.099385, 0.937736,
		0.600252, 0.789275, -0.129395,
		-0.727271, 0.605944, 0.322349,
		46.902077, 35.779732, 28.882889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764702, 35.890900, 29.185936>,  <47.411167, 35.355572, 28.657244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764702, 35.890900, 29.185936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372440, 35.882057, 29.263733>,  <47.137085, 35.876751, 29.310411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.372440, 35.882057, 29.263733>,  <47.764702, 35.890900, 29.185936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.372440, 35.882057, 29.263733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195302, -0.043819, 0.979764,
		-0.013139, 0.998795, 0.047289,
		-0.980655, -0.022109, 0.194491,
		47.078243, 35.875423, 29.322081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640060, 36.355766, 29.822124>,  <47.764702, 35.890900, 29.185936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640060, 36.355766, 29.822124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314266, 36.124310, 29.805233>,  <47.118790, 35.985435, 29.795097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.314266, 36.124310, 29.805233>,  <47.640060, 36.355766, 29.822124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.314266, 36.124310, 29.805233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009606, -0.059324, 0.998192,
		-0.580103, 0.813420, 0.042760,
		-0.814487, -0.578643, -0.042228,
		47.069920, 35.950718, 29.792564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280037, 36.571106, 30.384422>,  <47.640060, 36.355766, 29.822124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280037, 36.571106, 30.384422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107639, 36.223484, 30.287264>,  <47.004200, 36.014912, 30.228968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107639, 36.223484, 30.287264>,  <47.280037, 36.571106, 30.384422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107639, 36.223484, 30.287264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004770, -0.266983, 0.963689,
		-0.902344, 0.416499, 0.110922,
		-0.430990, -0.869050, -0.242897,
		46.978344, 35.962769, 30.214396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641617, 36.525620, 30.754759>,  <47.280037, 36.571106, 30.384422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641617, 36.525620, 30.754759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720627, 36.144596, 30.662140>,  <46.768032, 35.915981, 30.606567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.720627, 36.144596, 30.662140>,  <46.641617, 36.525620, 30.754759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720627, 36.144596, 30.662140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168731, -0.265713, 0.949171,
		-0.965667, -0.148416, -0.213211,
		0.197525, -0.952559, -0.231548,
		46.779884, 35.858829, 30.592676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132313, 36.186649, 31.074781>,  <46.641617, 36.525620, 30.754759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132313, 36.186649, 31.074781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416260, 35.907860, 31.034157>,  <46.586628, 35.740585, 31.009783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.416260, 35.907860, 31.034157>,  <46.132313, 36.186649, 31.074781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.416260, 35.907860, 31.034157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190145, -0.328476, 0.925175,
		-0.678186, -0.637437, -0.365700,
		0.709864, -0.696977, -0.101562,
		46.629219, 35.698765, 31.003689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.776306, 35.600342, 31.306463>,  <46.132313, 36.186649, 31.074781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.776306, 35.600342, 31.306463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175781, 35.581390, 31.314163>,  <46.415466, 35.570019, 31.318783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175781, 35.581390, 31.314163>,  <45.776306, 35.600342, 31.306463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175781, 35.581390, 31.314163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034026, -0.334569, 0.941757,
		-0.038176, -0.941180, -0.335743,
		0.998691, -0.047376, 0.019252,
		46.475388, 35.567177, 31.319939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863911, 35.004826, 31.742313>,  <45.776306, 35.600342, 31.306463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863911, 35.004826, 31.742313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206142, 35.211338, 31.727190>,  <46.411484, 35.335247, 31.718115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206142, 35.211338, 31.727190>,  <45.863911, 35.004826, 31.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206142, 35.211338, 31.727190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239072, -0.329291, 0.913461,
		0.459156, -0.790580, -0.405165,
		0.855582, 0.516285, -0.037809,
		46.462818, 35.366222, 31.715847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301903, 34.538849, 32.144997>,  <45.863911, 35.004826, 31.742313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301903, 34.538849, 32.144997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454967, 34.907978, 32.127258>,  <46.546806, 35.129456, 32.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454967, 34.907978, 32.127258>,  <46.301903, 34.538849, 32.144997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454967, 34.907978, 32.127258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201080, -0.036338, 0.978901,
		0.901741, -0.383505, -0.199466,
		0.382662, 0.922823, -0.044348,
		46.569767, 35.184826, 32.113953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.878963, 34.508339, 32.499798>,  <46.301903, 34.538849, 32.144997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.878963, 34.508339, 32.499798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841949, 34.906235, 32.482231>,  <46.819740, 35.144974, 32.471691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.841949, 34.906235, 32.482231>,  <46.878963, 34.508339, 32.499798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.841949, 34.906235, 32.482231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252815, 0.066136, 0.965251,
		0.963079, 0.078217, -0.257606,
		-0.092537, 0.994740, -0.043920,
		46.814190, 35.204659, 32.469055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.500420, 34.799454, 32.718285>,  <46.878963, 34.508339, 32.499798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.500420, 34.799454, 32.718285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257057, 35.110874, 32.779854>,  <47.111038, 35.297726, 32.816795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257057, 35.110874, 32.779854>,  <47.500420, 34.799454, 32.718285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257057, 35.110874, 32.779854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300990, 0.046901, 0.952473,
		0.734333, 0.625822, -0.262872,
		-0.608408, 0.778554, 0.153925,
		47.074535, 35.344440, 32.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859249, 35.449051, 32.893810>,  <47.500420, 34.799454, 32.718285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859249, 35.449051, 32.893810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508850, 35.498520, 33.080284>,  <47.298611, 35.528202, 33.192169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508850, 35.498520, 33.080284>,  <47.859249, 35.449051, 32.893810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508850, 35.498520, 33.080284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479502, 0.119171, 0.869411,
		0.051969, 0.985141, -0.163696,
		-0.876001, 0.123675, 0.466184,
		47.246052, 35.535622, 33.220139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.935123, 36.036861, 33.399288>,  <47.859249, 35.449051, 32.893810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.935123, 36.036861, 33.399288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659332, 35.770039, 33.512173>,  <47.493858, 35.609943, 33.579903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659332, 35.770039, 33.512173>,  <47.935123, 36.036861, 33.399288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659332, 35.770039, 33.512173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431202, -0.064967, 0.899913,
		-0.581963, 0.742165, 0.332431,
		-0.689481, -0.667061, 0.282215,
		47.452488, 35.569920, 33.596836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808380, 36.271961, 34.087132>,  <47.935123, 36.036861, 33.399288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808380, 36.271961, 34.087132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686344, 35.891624, 34.065914>,  <47.613125, 35.663422, 34.053185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686344, 35.891624, 34.065914>,  <47.808380, 36.271961, 34.087132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686344, 35.891624, 34.065914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486321, -0.203442, 0.849767,
		-0.818788, 0.233459, 0.524484,
		-0.305088, -0.950846, -0.053040,
		47.594818, 35.606369, 34.050003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266785, 35.991451, 34.646923>,  <47.808380, 36.271961, 34.087132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266785, 35.991451, 34.646923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565598, 35.777737, 34.488686>,  <47.744884, 35.649509, 34.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.565598, 35.777737, 34.488686>,  <47.266785, 35.991451, 34.646923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.565598, 35.777737, 34.488686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434909, -0.057290, 0.898650,
		-0.502797, -0.843362, 0.189567,
		0.747027, -0.534283, -0.395591,
		47.789707, 35.617451, 34.370007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365383, 35.265259, 34.946579>,  <47.266785, 35.991451, 34.646923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365383, 35.265259, 34.946579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689377, 35.461933, 34.818722>,  <47.883774, 35.579937, 34.742008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689377, 35.461933, 34.818722>,  <47.365383, 35.265259, 34.946579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.689377, 35.461933, 34.818722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369734, -0.005055, 0.929124,
		0.455224, -0.870756, -0.185889,
		0.809980, 0.491689, -0.319647,
		47.932369, 35.609440, 34.722828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881622, 34.900894, 35.297253>,  <47.365383, 35.265259, 34.946579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881622, 34.900894, 35.297253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962830, 35.283932, 35.215466>,  <48.011555, 35.513752, 35.166393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.962830, 35.283932, 35.215466>,  <47.881622, 34.900894, 35.297253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.962830, 35.283932, 35.215466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285706, 0.141798, 0.947769,
		0.936566, -0.250830, -0.244801,
		0.203016, 0.957589, -0.204467,
		48.023735, 35.571209, 35.154125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.335983, 43.013020, 40.596390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972649, 42.854504, 40.649876>,  <33.754650, 42.759392, 40.681969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972649, 42.854504, 40.649876>,  <34.335983, 43.013020, 40.596390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972649, 42.854504, 40.649876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169709, -0.641430, -0.748175,
		0.382267, -0.656900, 0.649888,
		-0.908334, -0.396294, 0.133715,
		33.700150, 42.735615, 40.689991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498264, 42.254478, 40.676731>,  <34.335983, 43.013020, 40.596390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498264, 42.254478, 40.676731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113926, 42.319489, 40.586960>,  <33.883324, 42.358494, 40.533096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113926, 42.319489, 40.586960>,  <34.498264, 42.254478, 40.676731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113926, 42.319489, 40.586960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021558, -0.763637, -0.645286,
		-0.276253, -0.624857, 0.730231,
		-0.960843, 0.162520, -0.224427,
		33.825672, 42.368244, 40.519630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184647, 41.602257, 40.576706>,  <34.498264, 42.254478, 40.676731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184647, 41.602257, 40.576706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 41.850998, 40.399132>,  <33.771751, 42.000244, 40.292587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.926586, 41.850998, 40.399132>,  <34.184647, 41.602257, 40.576706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926586, 41.850998, 40.399132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182164, -0.689460, -0.701043,
		-0.742021, -0.371411, 0.558085,
		-0.645153, 0.621852, -0.443936,
		33.733040, 42.037552, 40.265949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669674, 41.143032, 40.352589>,  <34.184647, 41.602257, 40.576706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669674, 41.143032, 40.352589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671513, 41.471394, 40.124168>,  <33.672615, 41.668411, 39.987114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671513, 41.471394, 40.124168>,  <33.669674, 41.143032, 40.352589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671513, 41.471394, 40.124168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062144, -0.569721, -0.819485,
		-0.998057, 0.039253, 0.048396,
		0.004595, 0.820900, -0.571054,
		33.672890, 41.717663, 39.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030640, 41.072479, 39.952034>,  <33.669674, 41.143032, 40.352589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030640, 41.072479, 39.952034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258026, 41.331867, 39.749516>,  <33.394459, 41.487499, 39.628006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258026, 41.331867, 39.749516>,  <33.030640, 41.072479, 39.952034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258026, 41.331867, 39.749516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102028, -0.555079, -0.825516,
		-0.816356, 0.520933, -0.249381,
		0.568465, 0.648472, -0.506292,
		33.428566, 41.526409, 39.597630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671539, 41.277054, 39.407597>,  <33.030640, 41.072479, 39.952034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671539, 41.277054, 39.407597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053261, 41.337254, 39.304333>,  <33.282295, 41.373375, 39.242374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053261, 41.337254, 39.304333>,  <32.671539, 41.277054, 39.407597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053261, 41.337254, 39.304333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166990, -0.447858, -0.878372,
		-0.247819, 0.881347, -0.402261,
		0.954306, 0.150504, -0.258164,
		33.339554, 41.382404, 39.226883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554691, 41.324509, 38.738453>,  <32.671539, 41.277054, 39.407597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554691, 41.324509, 38.738453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949764, 41.277294, 38.779549>,  <33.186806, 41.248966, 38.804207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949764, 41.277294, 38.779549>,  <32.554691, 41.324509, 38.738453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949764, 41.277294, 38.779549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035459, -0.470655, -0.881605,
		0.152417, 0.874386, -0.460671,
		0.987680, -0.118037, 0.102741,
		33.246067, 41.241882, 38.810371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897869, 41.469982, 38.129601>,  <32.554691, 41.324509, 38.738453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897869, 41.469982, 38.129601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185913, 41.234287, 38.276157>,  <33.358738, 41.092869, 38.364090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185913, 41.234287, 38.276157>,  <32.897869, 41.469982, 38.129601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185913, 41.234287, 38.276157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081640, -0.596332, -0.798576,
		0.689040, 0.545150, -0.477530,
		0.720110, -0.589236, 0.366391,
		33.401947, 41.057518, 38.386074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319103, 41.260548, 37.568138>,  <32.897869, 41.469982, 38.129601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319103, 41.260548, 37.568138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.469315, 40.992039, 37.823753>,  <33.559441, 40.830933, 37.977123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.469315, 40.992039, 37.823753>,  <33.319103, 41.260548, 37.568138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469315, 40.992039, 37.823753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112725, -0.651307, -0.750394,
		0.919929, 0.353832, -0.168918,
		0.375531, -0.671268, 0.639042,
		33.581974, 40.790657, 38.015465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895672, 41.103504, 37.221725>,  <33.319103, 41.260548, 37.568138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895672, 41.103504, 37.221725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.814625, 40.803020, 37.473003>,  <33.765995, 40.622730, 37.623768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.814625, 40.803020, 37.473003>,  <33.895672, 41.103504, 37.221725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814625, 40.803020, 37.473003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402358, -0.648711, -0.645973,
		0.892779, 0.121871, 0.433698,
		-0.202620, -0.751213, 0.628191,
		33.753838, 40.577656, 37.661461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528114, 40.760456, 37.368343>,  <33.895672, 41.103504, 37.221725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528114, 40.760456, 37.368343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227055, 40.497089, 37.369228>,  <34.046417, 40.339069, 37.369759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227055, 40.497089, 37.369228>,  <34.528114, 40.760456, 37.368343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227055, 40.497089, 37.369228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473279, -0.543351, -0.693381,
		0.457738, -0.520824, 0.720568,
		-0.752651, -0.658416, 0.002217,
		34.001259, 40.299564, 37.369892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757137, 40.092873, 37.372715>,  <34.528114, 40.760456, 37.368343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757137, 40.092873, 37.372715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397148, 40.079372, 37.198860>,  <34.181156, 40.071270, 37.094547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397148, 40.079372, 37.198860>,  <34.757137, 40.092873, 37.372715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397148, 40.079372, 37.198860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334384, -0.693134, -0.638555,
		-0.279711, -0.720018, 0.635088,
		-0.899972, -0.033753, -0.434640,
		34.127155, 40.069248, 37.068470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839157, 39.302250, 37.369675>,  <34.757137, 40.092873, 37.372715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839157, 39.302250, 37.369675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543282, 39.444149, 37.140934>,  <34.365757, 39.529289, 37.003689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543282, 39.444149, 37.140934>,  <34.839157, 39.302250, 37.369675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543282, 39.444149, 37.140934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345230, -0.529397, -0.774955,
		-0.577652, -0.770645, 0.269118,
		-0.739685, 0.354747, -0.571857,
		34.321377, 39.550571, 36.969376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446289, 38.686413, 37.112946>,  <34.839157, 39.302250, 37.369675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446289, 38.686413, 37.112946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427731, 39.005859, 36.872925>,  <34.416595, 39.197529, 36.728912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.427731, 39.005859, 36.872925>,  <34.446289, 38.686413, 37.112946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427731, 39.005859, 36.872925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489098, -0.505602, -0.710739,
		-0.870994, -0.326459, -0.367143,
		-0.046399, 0.798618, -0.600047,
		34.413811, 39.245445, 36.692909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383240, 38.363121, 36.545586>,  <34.446289, 38.686413, 37.112946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383240, 38.363121, 36.545586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401932, 38.721283, 36.368469>,  <34.413147, 38.936180, 36.262199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.401932, 38.721283, 36.368469>,  <34.383240, 38.363121, 36.545586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401932, 38.721283, 36.368469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440446, -0.416331, -0.795409,
		-0.896562, -0.157857, -0.413833,
		0.046731, 0.895405, -0.442794,
		34.415951, 38.989902, 36.235630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179031, 38.293106, 35.763912>,  <34.383240, 38.363121, 36.545586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179031, 38.293106, 35.763912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398499, 38.624073, 35.811821>,  <34.530178, 38.822655, 35.840565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398499, 38.624073, 35.811821>,  <34.179031, 38.293106, 35.763912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398499, 38.624073, 35.811821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475222, -0.190794, -0.858930,
		-0.687841, 0.528186, -0.497890,
		0.548669, 0.827416, 0.119770,
		34.563099, 38.872299, 35.847752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122395, 38.585785, 35.148842>,  <34.179031, 38.293106, 35.763912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122395, 38.585785, 35.148842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459496, 38.719978, 35.317230>,  <34.661755, 38.800495, 35.418262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.459496, 38.719978, 35.317230>,  <34.122395, 38.585785, 35.148842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459496, 38.719978, 35.317230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493445, -0.168932, -0.853214,
		-0.215122, 0.926776, -0.307910,
		0.842754, 0.335482, 0.420972,
		34.712322, 38.820621, 35.443523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451191, 38.858589, 34.646744>,  <34.122395, 38.585785, 35.148842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451191, 38.858589, 34.646744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769001, 38.871571, 34.889286>,  <34.959686, 38.879360, 35.034813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.769001, 38.871571, 34.889286>,  <34.451191, 38.858589, 34.646744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769001, 38.871571, 34.889286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606562, -0.089138, -0.790023,
		0.028410, 0.995490, -0.090508,
		0.794528, 0.032454, 0.606360,
		35.007359, 38.881306, 35.071194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058361, 38.983128, 34.221100>,  <34.451191, 38.858589, 34.646744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058361, 38.983128, 34.221100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228283, 38.851723, 34.558529>,  <35.330238, 38.772881, 34.760986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.228283, 38.851723, 34.558529>,  <35.058361, 38.983128, 34.221100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228283, 38.851723, 34.558529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726564, -0.432155, -0.534179,
		0.540040, 0.839834, 0.055104,
		0.424808, -0.328514, 0.843574,
		35.355724, 38.753170, 34.811600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803883, 39.230225, 34.300457>,  <35.058361, 38.983128, 34.221100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803883, 39.230225, 34.300457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787945, 38.895588, 34.519009>,  <35.778381, 38.694805, 34.650139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.787945, 38.895588, 34.519009>,  <35.803883, 39.230225, 34.300457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787945, 38.895588, 34.519009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759459, -0.380698, -0.527533,
		0.649334, 0.393931, 0.650525,
		-0.039842, -0.836593, 0.546375,
		35.775993, 38.644611, 34.682922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490406, 39.232292, 34.514309>,  <35.803883, 39.230225, 34.300457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490406, 39.232292, 34.514309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305248, 38.877739, 34.511604>,  <36.194153, 38.665005, 34.509983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305248, 38.877739, 34.511604>,  <36.490406, 39.232292, 34.514309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305248, 38.877739, 34.511604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764564, -0.395395, -0.509023,
		0.448517, -0.240796, 0.860726,
		-0.462898, -0.886386, -0.006763,
		36.166378, 38.611824, 34.509575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921165, 38.513245, 34.806313>,  <36.490406, 39.232292, 34.514309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921165, 38.513245, 34.806313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646946, 38.498158, 34.515495>,  <36.482414, 38.489105, 34.341003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.646946, 38.498158, 34.515495>,  <36.921165, 38.513245, 34.806313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646946, 38.498158, 34.515495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689320, -0.354910, -0.631567,
		-0.234212, -0.934139, 0.269311,
		-0.685553, -0.037720, -0.727045,
		36.441280, 38.486843, 34.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202435, 37.881935, 34.852158>,  <36.921165, 38.513245, 34.806313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202435, 37.881935, 34.852158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589493, 37.794258, 34.902145>,  <37.821728, 37.741653, 34.932137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589493, 37.794258, 34.902145>,  <37.202435, 37.881935, 34.852158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589493, 37.794258, 34.902145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034789, 0.374652, 0.926512,
		-0.249903, -0.900883, 0.354905,
		0.967646, -0.219192, 0.124968,
		37.879787, 37.728500, 34.939636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224983, 37.507965, 35.426800>,  <37.202435, 37.881935, 34.852158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224983, 37.507965, 35.426800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601120, 37.642113, 35.403866>,  <37.826801, 37.722603, 35.390106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.601120, 37.642113, 35.403866>,  <37.224983, 37.507965, 35.426800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601120, 37.642113, 35.403866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031187, 0.252763, 0.967026,
		0.338804, -0.907545, 0.248142,
		0.940340, 0.335371, -0.057334,
		37.883221, 37.742722, 35.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657608, 37.105412, 36.050526>,  <37.224983, 37.507965, 35.426800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657608, 37.105412, 36.050526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846283, 37.435574, 35.926453>,  <37.959488, 37.633671, 35.852009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.846283, 37.435574, 35.926453>,  <37.657608, 37.105412, 36.050526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846283, 37.435574, 35.926453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037072, 0.332898, 0.942234,
		0.880986, -0.455939, 0.126424,
		0.471687, 0.825408, -0.310182,
		37.987789, 37.683197, 35.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280216, 37.187790, 36.445957>,  <37.657608, 37.105412, 36.050526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280216, 37.187790, 36.445957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156513, 37.542850, 36.309464>,  <38.082291, 37.755886, 36.227570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156513, 37.542850, 36.309464>,  <38.280216, 37.187790, 36.445957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156513, 37.542850, 36.309464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067733, 0.337350, 0.938940,
		0.948562, 0.313490, -0.044206,
		-0.309261, 0.887648, -0.341231,
		38.063736, 37.809143, 36.207096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709579, 37.728615, 36.759605>,  <38.280216, 37.187790, 36.445957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709579, 37.728615, 36.759605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383022, 37.929062, 36.644794>,  <38.187088, 38.049332, 36.575909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383022, 37.929062, 36.644794>,  <38.709579, 37.728615, 36.759605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383022, 37.929062, 36.644794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007097, 0.505688, 0.862687,
		0.577455, 0.702254, -0.416396,
		-0.816392, 0.501118, -0.287028,
		38.138103, 38.079399, 36.558685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661549, 38.335979, 37.099472>,  <38.709579, 37.728615, 36.759605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661549, 38.335979, 37.099472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287392, 38.371258, 36.962498>,  <38.062897, 38.392426, 36.880314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287392, 38.371258, 36.962498>,  <38.661549, 38.335979, 37.099472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287392, 38.371258, 36.962498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211112, 0.637600, 0.740877,
		0.283676, 0.765303, -0.577788,
		-0.935393, 0.088191, -0.342436,
		38.006775, 38.397717, 36.859768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561626, 39.001930, 37.103790>,  <38.661549, 38.335979, 37.099472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561626, 39.001930, 37.103790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192425, 38.848213, 37.111664>,  <37.970905, 38.755981, 37.116386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192425, 38.848213, 37.111664>,  <38.561626, 39.001930, 37.103790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192425, 38.848213, 37.111664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274891, 0.694298, 0.665121,
		-0.269264, 0.608498, -0.746476,
		-0.923002, -0.384293, 0.019679,
		37.915524, 38.732925, 37.117569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072453, 39.552135, 37.275997>,  <38.561626, 39.001930, 37.103790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072453, 39.552135, 37.275997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869392, 39.213516, 37.340065>,  <37.747559, 39.010345, 37.378506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.869392, 39.213516, 37.340065>,  <38.072453, 39.552135, 37.275997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869392, 39.213516, 37.340065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420339, 0.405629, 0.811653,
		-0.752070, 0.344709, -0.561753,
		-0.507647, -0.846547, 0.160167,
		37.717098, 38.959553, 37.388115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397572, 39.825062, 37.308285>,  <38.072453, 39.552135, 37.275997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397572, 39.825062, 37.308285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421551, 39.469204, 37.489361>,  <37.435940, 39.255688, 37.598007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421551, 39.469204, 37.489361>,  <37.397572, 39.825062, 37.308285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421551, 39.469204, 37.489361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565541, 0.343429, 0.749813,
		-0.822538, -0.300968, -0.482544,
		0.059950, -0.889649, 0.452693,
		37.439537, 39.202309, 37.625168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728062, 39.726021, 37.545975>,  <37.397572, 39.825062, 37.308285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728062, 39.726021, 37.545975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915352, 39.477581, 37.797371>,  <37.027725, 39.328518, 37.948208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915352, 39.477581, 37.797371>,  <36.728062, 39.726021, 37.545975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915352, 39.477581, 37.797371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501571, 0.398753, 0.767739,
		-0.727454, -0.674707, -0.124820,
		0.468227, -0.621101, 0.628488,
		37.055820, 39.291252, 37.985916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202557, 39.416504, 38.096790>,  <36.728062, 39.726021, 37.545975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202557, 39.416504, 38.096790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557114, 39.363079, 38.274086>,  <36.769848, 39.331024, 38.380463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557114, 39.363079, 38.274086>,  <36.202557, 39.416504, 38.096790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557114, 39.363079, 38.274086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312894, 0.532798, 0.786272,
		-0.341177, -0.835636, 0.430478,
		0.886395, -0.133564, 0.443244,
		36.823032, 39.323009, 38.407059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976795, 39.381416, 38.811382>,  <36.202557, 39.416504, 38.096790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976795, 39.381416, 38.811382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368149, 39.460983, 38.788742>,  <36.602959, 39.508724, 38.775158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.368149, 39.460983, 38.788742>,  <35.976795, 39.381416, 38.811382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368149, 39.460983, 38.788742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090870, 0.659313, 0.746357,
		0.185779, -0.725079, 0.663134,
		0.978380, 0.198916, -0.056599,
		36.661663, 39.520657, 38.771763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232517, 39.259109, 39.444588>,  <35.976795, 39.381416, 38.811382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232517, 39.259109, 39.444588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501461, 39.502373, 39.275787>,  <36.662827, 39.648331, 39.174507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.501461, 39.502373, 39.275787>,  <36.232517, 39.259109, 39.444588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501461, 39.502373, 39.275787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086734, 0.630893, 0.771007,
		0.735127, -0.481791, 0.476934,
		0.672358, 0.608154, -0.421998,
		36.703167, 39.684818, 39.149189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770573, 39.355885, 39.953392>,  <36.232517, 39.259109, 39.444588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770573, 39.355885, 39.953392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779606, 39.675781, 39.713425>,  <36.785027, 39.867718, 39.569443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779606, 39.675781, 39.713425>,  <36.770573, 39.355885, 39.953392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779606, 39.675781, 39.713425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011077, 0.600236, 0.799747,
		0.999684, -0.011417, 0.022415,
		0.022585, 0.799742, -0.599919,
		36.786381, 39.915703, 39.533447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266933, 39.693111, 40.260456>,  <36.770573, 39.355885, 39.953392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266933, 39.693111, 40.260456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082504, 39.965836, 40.033283>,  <36.971848, 40.129471, 39.896980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.082504, 39.965836, 40.033283>,  <37.266933, 39.693111, 40.260456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082504, 39.965836, 40.033283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090537, 0.672830, 0.734236,
		0.882731, 0.287118, -0.371954,
		-0.461074, 0.681809, -0.567933,
		36.944183, 40.170380, 39.862904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574997, 40.325150, 40.472546>,  <37.266933, 39.693111, 40.260456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574997, 40.325150, 40.472546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246834, 40.425983, 40.267258>,  <37.049938, 40.486485, 40.144085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246834, 40.425983, 40.267258>,  <37.574997, 40.325150, 40.472546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246834, 40.425983, 40.267258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204155, 0.709269, 0.674729,
		0.534097, 0.658326, -0.530422,
		-0.820403, 0.252082, -0.513218,
		37.000713, 40.501610, 40.113293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580921, 41.008438, 40.475727>,  <37.574997, 40.325150, 40.472546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580921, 41.008438, 40.475727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191795, 40.932240, 40.423042>,  <36.958321, 40.886520, 40.391434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191795, 40.932240, 40.423042>,  <37.580921, 41.008438, 40.475727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191795, 40.932240, 40.423042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231315, 0.771348, 0.592887,
		-0.011348, 0.607234, -0.794442,
		-0.972813, -0.190495, -0.131709,
		36.899952, 40.875092, 40.383530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294155, 41.542347, 40.329803>,  <37.580921, 41.008438, 40.475727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294155, 41.542347, 40.329803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968945, 41.343639, 40.451275>,  <36.773819, 41.224415, 40.524158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968945, 41.343639, 40.451275>,  <37.294155, 41.542347, 40.329803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968945, 41.343639, 40.451275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402420, 0.856384, 0.323518,
		-0.420774, 0.140823, -0.896168,
		-0.813023, -0.496765, 0.303675,
		36.725037, 41.194611, 40.542377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.527939, 42.032482, 40.108215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409142, 41.757095, 40.372883>,  <36.337864, 41.591862, 40.531685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.409142, 41.757095, 40.372883>,  <36.527939, 42.032482, 40.108215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409142, 41.757095, 40.372883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314632, 0.724797, 0.612924,
		-0.901556, -0.026150, -0.431872,
		-0.296992, -0.688466, 0.661672,
		36.320045, 41.550556, 40.571384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861397, 42.167488, 40.209274>,  <36.527939, 42.032482, 40.108215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861397, 42.167488, 40.209274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980572, 41.971626, 40.537048>,  <36.052078, 41.854111, 40.733711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.980572, 41.971626, 40.537048>,  <35.861397, 42.167488, 40.209274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980572, 41.971626, 40.537048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438931, 0.692019, 0.573106,
		-0.847687, -0.530425, -0.008745,
		0.297938, -0.489653, 0.819435,
		36.069954, 41.824730, 40.782879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256516, 42.048283, 40.667603>,  <35.861397, 42.167488, 40.209274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256516, 42.048283, 40.667603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561649, 42.046066, 40.926231>,  <35.744728, 42.044739, 41.081409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561649, 42.046066, 40.926231>,  <35.256516, 42.048283, 40.667603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561649, 42.046066, 40.926231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542545, 0.538512, 0.644709,
		-0.351757, -0.842600, 0.407790,
		0.762831, -0.005537, 0.646574,
		35.790497, 42.044407, 41.120205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936069, 42.197834, 41.319576>,  <35.256516, 42.048283, 40.667603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936069, 42.197834, 41.319576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321976, 42.187778, 41.424335>,  <35.553520, 42.181744, 41.487190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.321976, 42.187778, 41.424335>,  <34.936069, 42.197834, 41.319576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321976, 42.187778, 41.424335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211870, 0.515973, 0.829990,
		-0.155999, -0.856236, 0.492467,
		0.964767, -0.025139, 0.261902,
		35.611404, 42.180237, 41.502907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983822, 42.016869, 42.073952>,  <34.936069, 42.197834, 41.319576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983822, 42.016869, 42.073952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324089, 42.202839, 41.975803>,  <35.528252, 42.314419, 41.916916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324089, 42.202839, 41.975803>,  <34.983822, 42.016869, 42.073952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324089, 42.202839, 41.975803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092225, 0.591493, 0.801019,
		0.517543, -0.658775, 0.546044,
		0.850673, 0.464920, -0.245367,
		35.579292, 42.342316, 41.902191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292076, 41.982006, 42.674290>,  <34.983822, 42.016869, 42.073952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292076, 41.982006, 42.674290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436810, 42.267799, 42.434757>,  <35.523651, 42.439274, 42.291039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436810, 42.267799, 42.434757>,  <35.292076, 41.982006, 42.674290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436810, 42.267799, 42.434757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010744, 0.645505, 0.763681,
		0.932180, -0.269894, 0.241244,
		0.361837, 0.714480, -0.598827,
		35.545361, 42.482143, 42.255108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857525, 42.340572, 43.103458>,  <35.292076, 41.982006, 42.674290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857525, 42.340572, 43.103458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762035, 42.608437, 42.822155>,  <35.704742, 42.769154, 42.653374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762035, 42.608437, 42.822155>,  <35.857525, 42.340572, 43.103458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762035, 42.608437, 42.822155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086525, 0.735981, 0.671450,
		0.967224, 0.099444, -0.233641,
		-0.238727, 0.669659, -0.703254,
		35.690418, 42.809334, 42.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319225, 42.796146, 43.248978>,  <35.857525, 42.340572, 43.103458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319225, 42.796146, 43.248978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049294, 42.987820, 43.024483>,  <35.887333, 43.102821, 42.889786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.049294, 42.987820, 43.024483>,  <36.319225, 42.796146, 43.248978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049294, 42.987820, 43.024483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168037, 0.840311, 0.515403,
		0.718584, 0.253503, -0.647590,
		-0.674834, 0.479180, -0.561236,
		35.846844, 43.131573, 42.856113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617420, 43.373787, 42.793007>,  <36.319225, 42.796146, 43.248978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617420, 43.373787, 42.793007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231232, 43.441223, 42.872440>,  <35.999519, 43.481686, 42.920101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231232, 43.441223, 42.872440>,  <36.617420, 43.373787, 42.793007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231232, 43.441223, 42.872440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245467, 0.843977, 0.476916,
		-0.087193, 0.509196, -0.856223,
		-0.965476, 0.168591, 0.198580,
		35.941589, 43.491802, 42.932014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596912, 44.045704, 42.962505>,  <36.617420, 43.373787, 42.793007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596912, 44.045704, 42.962505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231899, 43.931545, 43.079689>,  <36.012890, 43.863049, 43.150002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231899, 43.931545, 43.079689>,  <36.596912, 44.045704, 42.962505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231899, 43.931545, 43.079689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042865, 0.779082, 0.625455,
		-0.406746, 0.558192, -0.723173,
		-0.912535, -0.285400, 0.292962,
		35.958138, 43.845924, 43.167576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223362, 44.707973, 42.962162>,  <36.596912, 44.045704, 42.962505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223362, 44.707973, 42.962162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007442, 44.461964, 43.192070>,  <35.877892, 44.314358, 43.330013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007442, 44.461964, 43.192070>,  <36.223362, 44.707973, 42.962162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007442, 44.461964, 43.192070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179430, 0.751167, 0.635258,
		-0.822446, 0.239783, -0.515835,
		-0.539803, -0.615022, 0.574771,
		35.845501, 44.277458, 43.364502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683826, 45.115540, 43.127098>,  <36.223362, 44.707973, 42.962162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683826, 45.115540, 43.127098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670692, 44.824074, 43.400734>,  <35.662811, 44.649197, 43.564915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670692, 44.824074, 43.400734>,  <35.683826, 45.115540, 43.127098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670692, 44.824074, 43.400734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203353, 0.675011, 0.709231,
		-0.978555, -0.115821, -0.170341,
		-0.032838, -0.728660, 0.684088,
		35.660843, 44.605476, 43.605961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177711, 45.292038, 43.551884>,  <35.683826, 45.115540, 43.127098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177711, 45.292038, 43.551884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322514, 45.011040, 43.796978>,  <35.409393, 44.842442, 43.944035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322514, 45.011040, 43.796978>,  <35.177711, 45.292038, 43.551884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322514, 45.011040, 43.796978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166706, 0.597937, 0.784016,
		-0.917148, -0.385966, 0.099347,
		0.362006, -0.702497, 0.612740,
		35.431114, 44.800289, 43.980801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698517, 45.177242, 44.143787>,  <35.177711, 45.292038, 43.551884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698517, 45.177242, 44.143787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086575, 45.119560, 44.221790>,  <35.319408, 45.084953, 44.268593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086575, 45.119560, 44.221790>,  <34.698517, 45.177242, 44.143787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086575, 45.119560, 44.221790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129254, 0.372961, 0.918800,
		-0.205223, -0.916573, 0.343187,
		0.970143, -0.144201, 0.195011,
		35.377617, 45.076302, 44.280293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618389, 44.942291, 44.837498>,  <34.698517, 45.177242, 44.143787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618389, 44.942291, 44.837498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009117, 45.023270, 44.809669>,  <35.243553, 45.071857, 44.792973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009117, 45.023270, 44.809669>,  <34.618389, 44.942291, 44.837498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009117, 45.023270, 44.809669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002786, 0.337011, 0.941496,
		0.214044, -0.919479, 0.329763,
		0.976820, 0.202440, -0.069573,
		35.302162, 45.084003, 44.788799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993401, 44.586235, 45.380360>,  <34.618389, 44.942291, 44.837498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993401, 44.586235, 45.380360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256065, 44.878960, 45.307426>,  <35.413662, 45.054596, 45.263668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.256065, 44.878960, 45.307426>,  <34.993401, 44.586235, 45.380360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256065, 44.878960, 45.307426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038227, 0.273744, 0.961043,
		0.753218, -0.624108, 0.207732,
		0.656660, 0.731815, -0.182331,
		35.453064, 45.098503, 45.252728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515728, 44.527866, 45.941952>,  <34.993401, 44.586235, 45.380360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515728, 44.527866, 45.941952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540974, 44.881618, 45.756962>,  <35.556122, 45.093872, 45.645969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540974, 44.881618, 45.756962>,  <35.515728, 44.527866, 45.941952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540974, 44.881618, 45.756962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081228, 0.457309, 0.885590,
		0.994695, -0.093456, -0.042976,
		0.063110, 0.884384, -0.462474,
		35.559906, 45.146935, 45.618221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124107, 44.786663, 46.311508>,  <35.515728, 44.527866, 45.941952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124107, 44.786663, 46.311508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912678, 45.083729, 46.147041>,  <35.785820, 45.261967, 46.048359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912678, 45.083729, 46.147041>,  <36.124107, 44.786663, 46.311508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912678, 45.083729, 46.147041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090737, 0.432162, 0.897219,
		0.844022, 0.511558, -0.161044,
		-0.528577, 0.742660, -0.411172,
		35.754105, 45.306526, 46.023689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255753, 45.264305, 46.740086>,  <36.124107, 44.786663, 46.311508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255753, 45.264305, 46.740086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932922, 45.421825, 46.564110>,  <35.739223, 45.516338, 46.458523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932922, 45.421825, 46.564110>,  <36.255753, 45.264305, 46.740086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932922, 45.421825, 46.564110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266585, 0.421803, 0.866611,
		0.526842, 0.816703, -0.235444,
		-0.807075, 0.393802, -0.439944,
		35.690800, 45.539967, 46.432125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316174, 45.932159, 46.902119>,  <36.255753, 45.264305, 46.740086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316174, 45.932159, 46.902119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935493, 45.853706, 46.807625>,  <35.707085, 45.806633, 46.750927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935493, 45.853706, 46.807625>,  <36.316174, 45.932159, 46.902119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935493, 45.853706, 46.807625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295797, 0.379335, 0.876704,
		-0.082336, 0.904233, -0.419027,
		-0.951696, -0.196131, -0.236236,
		35.649986, 45.794868, 46.736755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934731, 46.583260, 47.022232>,  <36.316174, 45.932159, 46.902119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934731, 46.583260, 47.022232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667271, 46.285831, 47.022327>,  <35.506794, 46.107372, 47.022385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667271, 46.285831, 47.022327>,  <35.934731, 46.583260, 47.022232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667271, 46.285831, 47.022327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368580, 0.331725, 0.868394,
		-0.645794, 0.580567, -0.495875,
		-0.668655, -0.743573, 0.000241,
		35.466675, 46.062759, 47.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345932, 46.840027, 47.419140>,  <35.934731, 46.583260, 47.022232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345932, 46.840027, 47.419140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273945, 46.446819, 47.404816>,  <35.230751, 46.210896, 47.396221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273945, 46.446819, 47.404816>,  <35.345932, 46.840027, 47.419140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273945, 46.446819, 47.404816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369131, 0.033746, 0.928764,
		-0.911785, 0.180369, -0.368937,
		-0.179971, -0.983020, -0.035810,
		35.219955, 46.151913, 47.394073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578178, 46.862652, 47.426239>,  <35.345932, 46.840027, 47.419140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578178, 46.862652, 47.426239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709316, 46.716427, 47.774696>,  <34.787998, 46.628693, 47.983768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709316, 46.716427, 47.774696>,  <34.578178, 46.862652, 47.426239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709316, 46.716427, 47.774696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892626, 0.182144, 0.412361,
		-0.309418, -0.912790, -0.266599,
		0.327840, -0.365565, 0.871139,
		34.807667, 46.606758, 48.036037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883411, 46.790981, 47.464317>,  <34.578178, 46.862652, 47.426239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883411, 46.790981, 47.464317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868942, 46.517937, 47.756271>,  <33.860260, 46.354111, 47.931442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.868942, 46.517937, 47.756271>,  <33.883411, 46.790981, 47.464317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868942, 46.517937, 47.756271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433777, -0.647247, -0.626824,
		0.900294, -0.339279, -0.272691,
		-0.036170, -0.682613, 0.729884,
		33.858089, 46.313152, 47.975235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161987, 46.042233, 47.422733>,  <33.883411, 46.790981, 47.464317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161987, 46.042233, 47.422733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817635, 46.082695, 47.622192>,  <33.611023, 46.106972, 47.741867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817635, 46.082695, 47.622192>,  <34.161987, 46.042233, 47.422733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817635, 46.082695, 47.622192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458532, -0.579013, -0.674160,
		0.220527, -0.809018, 0.544846,
		-0.860881, 0.101158, 0.498649,
		33.559372, 46.113041, 47.771786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038307, 45.412544, 47.558384>,  <34.161987, 46.042233, 47.422733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038307, 45.412544, 47.558384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700699, 45.626827, 47.548191>,  <33.498135, 45.755398, 47.542076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700699, 45.626827, 47.548191>,  <34.038307, 45.412544, 47.558384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700699, 45.626827, 47.548191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326210, -0.550508, -0.768458,
		-0.425694, -0.640283, 0.639392,
		-0.844021, 0.535704, -0.025481,
		33.447495, 45.787540, 47.540546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578079, 44.874836, 47.449440>,  <34.038307, 45.412544, 47.558384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578079, 44.874836, 47.449440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378117, 45.206627, 47.349800>,  <33.258137, 45.405701, 47.290016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378117, 45.206627, 47.349800>,  <33.578079, 44.874836, 47.449440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378117, 45.206627, 47.349800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455952, -0.496595, -0.738580,
		-0.736341, -0.255645, 0.626456,
		-0.499910, 0.829481, -0.249102,
		33.228142, 45.455471, 47.275070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856579, 44.632984, 47.334328>,  <33.578079, 44.874836, 47.449440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856579, 44.632984, 47.334328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888256, 44.996155, 47.169697>,  <32.907265, 45.214058, 47.070919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.888256, 44.996155, 47.169697>,  <32.856579, 44.632984, 47.334328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888256, 44.996155, 47.169697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371068, -0.356358, -0.857507,
		-0.925222, 0.220635, 0.308680,
		0.079195, 0.907926, -0.411581,
		32.912014, 45.268532, 47.046223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179123, 44.813747, 47.121414>,  <32.856579, 44.632984, 47.334328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179123, 44.813747, 47.121414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449303, 44.995983, 46.889481>,  <32.611412, 45.105324, 46.750320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449303, 44.995983, 46.889481>,  <32.179123, 44.813747, 47.121414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449303, 44.995983, 46.889481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500337, -0.294464, -0.814220,
		-0.541689, 0.840077, 0.029051,
		0.675453, 0.455589, -0.579829,
		32.651939, 45.132660, 46.715530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934158, 44.805401, 46.560905>,  <32.179123, 44.813747, 47.121414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934158, 44.805401, 46.560905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279408, 44.941208, 46.411377>,  <32.486557, 45.022694, 46.321659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.279408, 44.941208, 46.411377>,  <31.934158, 44.805401, 46.560905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279408, 44.941208, 46.411377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268083, -0.319270, -0.908954,
		-0.427958, 0.884756, -0.184550,
		0.863124, 0.339519, -0.373822,
		32.538345, 45.043064, 46.299229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766878, 45.089638, 45.922527>,  <31.934158, 44.805401, 46.560905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766878, 45.089638, 45.922527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159798, 45.020050, 45.894741>,  <32.395550, 44.978298, 45.878067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159798, 45.020050, 45.894741>,  <31.766878, 45.089638, 45.922527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159798, 45.020050, 45.894741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107342, -0.218810, -0.969845,
		0.153525, 0.960133, -0.233611,
		0.982297, -0.173971, -0.069470,
		32.454487, 44.967857, 45.873901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004055, 45.400726, 45.224903>,  <31.766878, 45.089638, 45.922527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004055, 45.400726, 45.224903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282494, 45.134285, 45.332054>,  <32.449558, 44.974422, 45.396343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.282494, 45.134285, 45.332054>,  <32.004055, 45.400726, 45.224903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282494, 45.134285, 45.332054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014911, -0.359625, -0.932978,
		0.717792, 0.653439, -0.240402,
		0.696098, -0.666099, 0.267879,
		32.491322, 44.934456, 45.412418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446617, 45.396111, 44.588718>,  <32.004055, 45.400726, 45.224903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446617, 45.396111, 44.588718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560184, 45.063057, 44.778923>,  <32.628323, 44.863224, 44.893047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.560184, 45.063057, 44.778923>,  <32.446617, 45.396111, 44.588718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560184, 45.063057, 44.778923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239648, -0.418561, -0.876000,
		0.928418, 0.362666, 0.080703,
		0.283917, -0.832635, 0.475512,
		32.645359, 44.813267, 44.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146282, 45.183933, 44.262550>,  <32.446617, 45.396111, 44.588718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146282, 45.183933, 44.262550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970127, 44.881329, 44.455936>,  <32.864433, 44.699764, 44.571968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970127, 44.881329, 44.455936>,  <33.146282, 45.183933, 44.262550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970127, 44.881329, 44.455936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343801, -0.639553, -0.687585,
		0.829372, -0.136588, 0.541743,
		-0.440389, -0.756516, 0.483468,
		32.838009, 44.654373, 44.600975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647049, 44.750900, 44.476620>,  <33.146282, 45.183933, 44.262550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647049, 44.750900, 44.476620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308239, 44.541187, 44.441551>,  <33.104954, 44.415359, 44.420509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308239, 44.541187, 44.441551>,  <33.647049, 44.750900, 44.476620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308239, 44.541187, 44.441551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376549, -0.475392, -0.795119,
		0.375187, -0.706494, 0.600084,
		-0.847022, -0.524279, -0.087669,
		33.054131, 44.383904, 44.415249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848480, 44.024334, 44.386364>,  <33.647049, 44.750900, 44.476620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848480, 44.024334, 44.386364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479656, 44.062645, 44.236362>,  <33.258362, 44.085632, 44.146362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479656, 44.062645, 44.236362>,  <33.848480, 44.024334, 44.386364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479656, 44.062645, 44.236362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282539, -0.495636, -0.821290,
		-0.264526, -0.863234, 0.429946,
		-0.922062, 0.095776, -0.375005,
		33.203037, 44.091377, 44.123859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775040, 43.381828, 44.014866>,  <33.848480, 44.024334, 44.386364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775040, 43.381828, 44.014866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469395, 43.594723, 43.869064>,  <33.286007, 43.722458, 43.781582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.469395, 43.594723, 43.869064>,  <33.775040, 43.381828, 44.014866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469395, 43.594723, 43.869064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124915, -0.432275, -0.893048,
		-0.632876, -0.727919, 0.263822,
		-0.764110, 0.532233, -0.364504,
		33.240162, 43.754391, 43.759712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426449, 42.939152, 43.532818>,  <33.775040, 43.381828, 44.014866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426449, 42.939152, 43.532818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307800, 43.305367, 43.424149>,  <33.236610, 43.525097, 43.358948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.307800, 43.305367, 43.424149>,  <33.426449, 42.939152, 43.532818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307800, 43.305367, 43.424149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124719, -0.244903, -0.961492,
		-0.946815, -0.319084, -0.041541,
		-0.296623, 0.915537, -0.271674,
		33.218815, 43.580029, 43.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797035, 42.851883, 43.111774>,  <33.426449, 42.939152, 43.532818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797035, 42.851883, 43.111774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975052, 43.195541, 43.010735>,  <33.081863, 43.401737, 42.950111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975052, 43.195541, 43.010735>,  <32.797035, 42.851883, 43.111774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975052, 43.195541, 43.010735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215664, -0.170949, -0.961387,
		-0.869151, 0.482339, 0.109206,
		0.445046, 0.859142, -0.252604,
		33.108566, 43.453285, 42.934952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301151, 43.214054, 42.648418>,  <32.797035, 42.851883, 43.111774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301151, 43.214054, 42.648418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671577, 43.356014, 42.597134>,  <32.893833, 43.441193, 42.566360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.671577, 43.356014, 42.597134>,  <32.301151, 43.214054, 42.648418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671577, 43.356014, 42.597134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029765, -0.407414, -0.912758,
		-0.376179, 0.841461, -0.387857,
		0.926069, 0.354905, -0.128214,
		32.949398, 43.462486, 42.558670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305191, 43.433468, 42.013763>,  <32.301151, 43.214054, 42.648418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305191, 43.433468, 42.013763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686810, 43.350220, 42.099995>,  <32.915783, 43.300270, 42.151733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.686810, 43.350220, 42.099995>,  <32.305191, 43.433468, 42.013763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686810, 43.350220, 42.099995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137632, -0.334699, -0.932220,
		0.266168, 0.919055, -0.290676,
		0.954050, -0.208121, 0.215577,
		32.973026, 43.287785, 42.164669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628586, 43.716011, 41.447243>,  <32.305191, 43.433468, 42.013763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628586, 43.716011, 41.447243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905514, 43.474579, 41.605427>,  <33.071671, 43.329720, 41.700336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905514, 43.474579, 41.605427>,  <32.628586, 43.716011, 41.447243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905514, 43.474579, 41.605427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150398, -0.415301, -0.897165,
		0.705744, 0.680601, -0.196744,
		0.692320, -0.603579, 0.395457,
		33.113209, 43.293507, 41.724064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206028, 43.863384, 41.122120>,  <32.628586, 43.716011, 41.447243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206028, 43.863384, 41.122120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268482, 43.486763, 41.241524>,  <33.305954, 43.260792, 41.313168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268482, 43.486763, 41.241524>,  <33.206028, 43.863384, 41.122120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268482, 43.486763, 41.241524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200750, -0.265658, -0.942934,
		0.967120, 0.207150, 0.147537,
		0.156135, -0.941549, 0.298508,
		33.315323, 43.204300, 41.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776211, 43.616055, 40.722351>,  <33.206028, 43.863384, 41.122120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776211, 43.616055, 40.722351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616753, 43.275730, 40.859283>,  <33.521076, 43.071533, 40.941444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616753, 43.275730, 40.859283>,  <33.776211, 43.616055, 40.722351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616753, 43.275730, 40.859283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320239, -0.478924, -0.817361,
		0.859375, -0.216211, 0.463387,
		-0.398650, -0.850814, 0.342336,
		33.497158, 43.020485, 40.961983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.077251, 33.848190, 25.703438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729263, 34.044594, 25.685236>,  <43.520470, 34.162434, 25.674314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729263, 34.044594, 25.685236>,  <44.077251, 33.848190, 25.703438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729263, 34.044594, 25.685236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175995, 0.395380, 0.901499,
		0.460634, 0.776265, -0.430382,
		-0.869966, 0.491007, -0.045507,
		43.468273, 34.191895, 25.671583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218918, 34.597748, 25.866283>,  <44.077251, 33.848190, 25.703438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218918, 34.597748, 25.866283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848022, 34.468075, 25.941250>,  <43.625484, 34.390270, 25.986231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.848022, 34.468075, 25.941250>,  <44.218918, 34.597748, 25.866283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848022, 34.468075, 25.941250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049640, 0.389667, 0.919617,
		-0.371158, 0.862011, -0.345223,
		-0.927242, -0.324186, 0.187418,
		43.569851, 34.370819, 25.997475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854683, 35.114601, 26.221592>,  <44.218918, 34.597748, 25.866283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854683, 35.114601, 26.221592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648510, 34.787338, 26.323538>,  <43.524807, 34.590981, 26.384706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648510, 34.787338, 26.323538>,  <43.854683, 35.114601, 26.221592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648510, 34.787338, 26.323538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073319, 0.338432, 0.938130,
		-0.853789, 0.464854, -0.234424,
		-0.515430, -0.818153, 0.254867,
		43.493881, 34.541893, 26.399998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328705, 35.365654, 26.631649>,  <43.854683, 35.114601, 26.221592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328705, 35.365654, 26.631649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372402, 34.978127, 26.720604>,  <43.398621, 34.745609, 26.773977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.372402, 34.978127, 26.720604>,  <43.328705, 35.365654, 26.631649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372402, 34.978127, 26.720604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146057, 0.205652, 0.967665,
		-0.983226, -0.138191, -0.119036,
		0.109242, -0.968819, 0.222386,
		43.405174, 34.687481, 26.787319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939751, 35.299011, 27.238068>,  <43.328705, 35.365654, 26.631649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939751, 35.299011, 27.238068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116413, 34.940441, 27.252878>,  <43.222408, 34.725300, 27.261765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116413, 34.940441, 27.252878>,  <42.939751, 35.299011, 27.238068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116413, 34.940441, 27.252878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131721, -0.023965, 0.990997,
		-0.887465, -0.442552, -0.128662,
		0.441651, -0.896422, 0.037026,
		43.248909, 34.671513, 27.263987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563652, 34.805275, 27.608385>,  <42.939751, 35.299011, 27.238068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563652, 34.805275, 27.608385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950310, 34.708778, 27.642790>,  <43.182304, 34.650883, 27.663433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.950310, 34.708778, 27.642790>,  <42.563652, 34.805275, 27.608385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950310, 34.708778, 27.642790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079309, 0.037376, 0.996149,
		-0.243525, -0.969746, 0.016997,
		0.966647, -0.241239, 0.086012,
		43.240303, 34.636406, 27.668592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622486, 34.209484, 28.200417>,  <42.563652, 34.805275, 27.608385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622486, 34.209484, 28.200417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998756, 34.334244, 28.146994>,  <43.224518, 34.409100, 28.114941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998756, 34.334244, 28.146994>,  <42.622486, 34.209484, 28.200417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998756, 34.334244, 28.146994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137299, 0.010042, 0.990479,
		0.310274, -0.950061, -0.033377,
		0.940680, 0.311903, -0.133558,
		43.280960, 34.427814, 28.106926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043022, 33.679165, 28.621132>,  <42.622486, 34.209484, 28.200417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043022, 33.679165, 28.621132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285419, 33.988640, 28.547182>,  <43.430859, 34.174324, 28.502811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285419, 33.988640, 28.547182>,  <43.043022, 33.679165, 28.621132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285419, 33.988640, 28.547182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254345, 0.031754, 0.966592,
		0.753714, -0.632767, -0.177542,
		0.605990, 0.773691, -0.184874,
		43.467216, 34.220749, 28.491720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704288, 33.535038, 28.929987>,  <43.043022, 33.679165, 28.621132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704288, 33.535038, 28.929987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684517, 33.932335, 28.887970>,  <43.672653, 34.170712, 28.862761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.684517, 33.932335, 28.887970>,  <43.704288, 33.535038, 28.929987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684517, 33.932335, 28.887970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151857, 0.111421, 0.982102,
		0.987166, 0.032592, -0.156338,
		-0.049428, 0.993239, -0.105041,
		43.669689, 34.230305, 28.856457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190617, 33.710770, 29.294741>,  <43.704288, 33.535038, 28.929987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190617, 33.710770, 29.294741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961998, 34.038437, 29.275558>,  <43.824829, 34.235039, 29.264050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961998, 34.038437, 29.275558>,  <44.190617, 33.710770, 29.294741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961998, 34.038437, 29.275558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246376, 0.227059, 0.942201,
		0.782711, 0.526694, -0.331597,
		-0.571544, 0.819169, -0.047957,
		43.790535, 34.284187, 29.261171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602760, 34.246780, 29.596500>,  <44.190617, 33.710770, 29.294741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602760, 34.246780, 29.596500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227776, 34.384239, 29.618692>,  <44.002785, 34.466713, 29.632008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227776, 34.384239, 29.618692>,  <44.602760, 34.246780, 29.596500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227776, 34.384239, 29.618692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146986, 0.246318, 0.957978,
		0.315538, 0.906221, -0.281424,
		-0.937460, 0.343644, 0.055479,
		43.946537, 34.487331, 29.635336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608967, 34.967476, 29.878349>,  <44.602760, 34.246780, 29.596500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608967, 34.967476, 29.878349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228146, 34.867195, 29.948483>,  <43.999653, 34.807026, 29.990562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.228146, 34.867195, 29.948483>,  <44.608967, 34.967476, 29.878349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228146, 34.867195, 29.948483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079718, 0.350012, 0.933347,
		-0.295361, 0.902574, -0.313244,
		-0.952054, -0.250704, 0.175331,
		43.942528, 34.791985, 30.001081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382877, 35.490917, 30.365635>,  <44.608967, 34.967476, 29.878349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382877, 35.490917, 30.365635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107418, 35.203110, 30.401535>,  <43.942142, 35.030426, 30.423075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.107418, 35.203110, 30.401535>,  <44.382877, 35.490917, 30.365635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107418, 35.203110, 30.401535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197263, 0.305015, 0.931694,
		-0.697747, 0.623906, -0.351983,
		-0.688649, -0.719519, 0.089750,
		43.900822, 34.987255, 30.428459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896812, 35.801548, 30.683775>,  <44.382877, 35.490917, 30.365635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896812, 35.801548, 30.683775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831940, 35.413353, 30.755154>,  <43.793018, 35.180435, 30.797981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831940, 35.413353, 30.755154>,  <43.896812, 35.801548, 30.683775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831940, 35.413353, 30.755154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147668, 0.202675, 0.968048,
		-0.975650, 0.130645, -0.176180,
		-0.162178, -0.970492, 0.178448,
		43.783287, 35.122204, 30.808687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395508, 35.798908, 31.201885>,  <43.896812, 35.801548, 30.683775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395508, 35.798908, 31.201885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543213, 35.427181, 31.203472>,  <43.631836, 35.204144, 31.204424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.543213, 35.427181, 31.203472>,  <43.395508, 35.798908, 31.201885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543213, 35.427181, 31.203472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122139, -0.044299, 0.991524,
		-0.921265, -0.366614, -0.129864,
		0.369259, -0.929318, 0.003966,
		43.653992, 35.148384, 31.204662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900543, 35.379627, 31.580990>,  <43.395508, 35.798908, 31.201885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900543, 35.379627, 31.580990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266888, 35.219124, 31.586481>,  <43.486694, 35.122822, 31.589775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266888, 35.219124, 31.586481>,  <42.900543, 35.379627, 31.580990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266888, 35.219124, 31.586481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042123, -0.062029, 0.997185,
		-0.399282, -0.913860, -0.073712,
		0.915860, -0.401263, 0.013727,
		43.541645, 35.098743, 31.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963844, 35.000183, 32.188282>,  <42.900543, 35.379627, 31.580990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963844, 35.000183, 32.188282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352703, 35.036987, 32.102058>,  <43.586018, 35.059071, 32.050323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352703, 35.036987, 32.102058>,  <42.963844, 35.000183, 32.188282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352703, 35.036987, 32.102058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207461, 0.090136, 0.974082,
		0.109064, -0.991669, 0.068535,
		0.972145, 0.092019, -0.215563,
		43.644348, 35.064590, 32.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335316, 34.481705, 32.736954>,  <42.963844, 35.000183, 32.188282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335316, 34.481705, 32.736954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591026, 34.750420, 32.587273>,  <43.744453, 34.911648, 32.497463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.591026, 34.750420, 32.587273>,  <43.335316, 34.481705, 32.736954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591026, 34.750420, 32.587273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305623, 0.224577, 0.925289,
		0.705637, -0.705878, -0.061748,
		0.639274, 0.671790, -0.374202,
		43.782810, 34.951958, 32.475014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036816, 34.315823, 33.057880>,  <43.335316, 34.481705, 32.736954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036816, 34.315823, 33.057880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050724, 34.696075, 32.934536>,  <44.059071, 34.924229, 32.860531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050724, 34.696075, 32.934536>,  <44.036816, 34.315823, 33.057880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050724, 34.696075, 32.934536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568819, 0.234869, 0.788214,
		0.821727, -0.202809, -0.532572,
		0.034772, 0.950634, -0.308360,
		44.061157, 34.981266, 32.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723698, 34.402584, 33.130184>,  <44.036816, 34.315823, 33.057880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723698, 34.402584, 33.130184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569477, 34.771214, 33.148300>,  <44.476944, 34.992393, 33.159172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569477, 34.771214, 33.148300>,  <44.723698, 34.402584, 33.130184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569477, 34.771214, 33.148300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583107, 0.205316, 0.786023,
		0.715080, 0.329460, -0.616536,
		-0.385548, 0.921575, 0.045293,
		44.453812, 35.047688, 33.161888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338104, 34.958344, 33.180706>,  <44.723698, 34.402584, 33.130184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338104, 34.958344, 33.180706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008400, 35.133923, 33.323769>,  <44.810577, 35.239269, 33.409607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.008400, 35.133923, 33.323769>,  <45.338104, 34.958344, 33.180706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008400, 35.133923, 33.323769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505057, 0.284458, 0.814862,
		0.255943, 0.852297, -0.456161,
		-0.824264, 0.438946, 0.357654,
		44.761120, 35.265606, 33.431065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391731, 35.726383, 33.178364>,  <45.338104, 34.958344, 33.180706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391731, 35.726383, 33.178364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141602, 35.613422, 33.469353>,  <44.991524, 35.545647, 33.643948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141602, 35.613422, 33.469353>,  <45.391731, 35.726383, 33.178364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141602, 35.613422, 33.469353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559794, 0.487162, 0.670301,
		-0.543691, 0.826392, -0.146549,
		-0.625324, -0.282400, 0.727475,
		44.954002, 35.528702, 33.687595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047035, 35.833271, 33.444592>,  <45.391731, 35.726383, 33.178364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047035, 35.833271, 33.444592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.431267, 35.732037, 33.398556>,  <46.661804, 35.671295, 33.370934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.431267, 35.732037, 33.398556>,  <46.047035, 35.833271, 33.444592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431267, 35.732037, 33.398556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091313, 0.103801, -0.990397,
		0.262600, 0.961859, 0.076599,
		0.960574, -0.253084, -0.115089,
		46.719440, 35.656113, 33.364029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381092, 36.376091, 33.032257>,  <46.047035, 35.833271, 33.444592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381092, 36.376091, 33.032257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563793, 36.026974, 32.963425>,  <46.673412, 35.817505, 32.922127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563793, 36.026974, 32.963425>,  <46.381092, 36.376091, 33.032257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563793, 36.026974, 32.963425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098576, 0.142586, -0.984861,
		0.884115, 0.466801, -0.020910,
		0.456752, -0.872792, -0.172078,
		46.700817, 35.765137, 32.911800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663277, 36.432213, 32.372574>,  <46.381092, 36.376091, 33.032257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663277, 36.432213, 32.372574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713116, 36.038055, 32.419003>,  <46.743019, 35.801559, 32.446857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.713116, 36.038055, 32.419003>,  <46.663277, 36.432213, 32.372574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713116, 36.038055, 32.419003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312637, -0.072031, -0.947138,
		0.941666, 0.154297, 0.299096,
		0.124596, -0.985395, 0.116068,
		46.750496, 35.742435, 32.453823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297615, 36.288605, 32.173363>,  <46.663277, 36.432213, 32.372574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297615, 36.288605, 32.173363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 35.968536, 32.137455>,  <46.918079, 35.776497, 32.115910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.060406, 35.968536, 32.137455>,  <47.297615, 36.288605, 32.173363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060406, 35.968536, 32.137455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078456, 0.053532, -0.995479,
		0.801357, -0.597380, 0.031032,
		-0.593018, -0.800169, -0.089766,
		46.882500, 35.728485, 32.110523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.559742, 36.070976, 31.664925>,  <47.297615, 36.288605, 32.173363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.559742, 36.070976, 31.664925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.226574, 35.850060, 31.678881>,  <47.026672, 35.717510, 31.687254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.226574, 35.850060, 31.678881>,  <47.559742, 36.070976, 31.664925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226574, 35.850060, 31.678881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007372, -0.051968, -0.998622,
		0.553348, -0.832027, 0.039213,
		-0.832918, -0.552296, 0.034890,
		46.976700, 35.684372, 31.689348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.755802, 35.519588, 31.092800>,  <47.559742, 36.070976, 31.664925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.755802, 35.519588, 31.092800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.365486, 35.520832, 31.180273>,  <47.131298, 35.521580, 31.232758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.365486, 35.520832, 31.180273>,  <47.755802, 35.519588, 31.092800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365486, 35.520832, 31.180273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216209, -0.164397, -0.962407,
		0.032957, -0.986389, 0.161090,
		-0.975791, 0.003111, 0.218685,
		47.072750, 35.521767, 31.245878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.496078, 34.810703, 30.823397>,  <47.755802, 35.519588, 31.092800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.496078, 34.810703, 30.823397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.213371, 35.090866, 30.863222>,  <47.043747, 35.258965, 30.887117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.213371, 35.090866, 30.863222>,  <47.496078, 34.810703, 30.823397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213371, 35.090866, 30.863222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119202, 0.020821, -0.992652,
		-0.697335, -0.713438, 0.068775,
		-0.706764, 0.700409, 0.099562,
		47.001343, 35.300987, 30.893091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029507, 34.648621, 30.251230>,  <47.496078, 34.810703, 30.823397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029507, 34.648621, 30.251230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.932575, 35.018391, 30.369022>,  <46.874416, 35.240253, 30.439697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.932575, 35.018391, 30.369022>,  <47.029507, 34.648621, 30.251230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.932575, 35.018391, 30.369022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224751, 0.241784, -0.943943,
		-0.943804, -0.294925, 0.149175,
		-0.242324, 0.924424, 0.294481,
		46.859879, 35.295719, 30.457367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482277, 34.804440, 29.874146>,  <47.029507, 34.648621, 30.251230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.482277, 34.804440, 29.874146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643410, 35.154575, 29.981115>,  <46.740089, 35.364655, 30.045298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.643410, 35.154575, 29.981115>,  <46.482277, 34.804440, 29.874146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643410, 35.154575, 29.981115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295906, 0.401038, -0.866953,
		-0.866122, 0.270102, 0.420567,
		0.402829, 0.875336, 0.267423,
		46.764259, 35.417175, 30.061342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036633, 35.245029, 29.562695>,  <46.482277, 34.804440, 29.874146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036633, 35.245029, 29.562695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.323719, 35.502205, 29.669659>,  <46.495972, 35.656509, 29.733837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.323719, 35.502205, 29.669659>,  <46.036633, 35.245029, 29.562695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323719, 35.502205, 29.669659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086463, 0.463338, -0.881954,
		-0.690943, 0.609875, 0.388137,
		0.717720, 0.642939, 0.267408,
		46.539036, 35.695087, 29.749882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799446, 36.008724, 29.460325>,  <46.036633, 35.245029, 29.562695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799446, 36.008724, 29.460325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.196701, 35.972012, 29.431318>,  <46.435055, 35.949986, 29.413914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.196701, 35.972012, 29.431318>,  <45.799446, 36.008724, 29.460325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196701, 35.972012, 29.431318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017718, 0.494774, -0.868841,
		0.115619, 0.864162, 0.489752,
		0.993136, -0.091777, -0.072517,
		46.494640, 35.944477, 29.409563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089119, 36.725624, 29.354086>,  <45.799446, 36.008724, 29.460325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089119, 36.725624, 29.354086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312416, 36.435177, 29.193531>,  <46.446396, 36.260910, 29.097198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.312416, 36.435177, 29.193531>,  <46.089119, 36.725624, 29.354086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312416, 36.435177, 29.193531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148987, 0.388192, -0.909456,
		0.816189, 0.567502, 0.108525,
		0.558246, -0.726119, -0.401388,
		46.479889, 36.217342, 29.073114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548229, 37.041626, 28.850210>,  <46.089119, 36.725624, 29.354086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548229, 37.041626, 28.850210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.560257, 36.657051, 28.740856>,  <46.567474, 36.426308, 28.675243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.560257, 36.657051, 28.740856>,  <46.548229, 37.041626, 28.850210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560257, 36.657051, 28.740856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033701, 0.272378, -0.961600,
		0.998979, 0.038131, -0.024210,
		0.030072, -0.961434, -0.273385,
		46.569279, 36.368622, 28.658840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920746, 37.050991, 28.215406>,  <46.548229, 37.041626, 28.850210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920746, 37.050991, 28.215406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.745270, 36.692055, 28.196089>,  <46.639984, 36.476692, 28.184498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.745270, 36.692055, 28.196089>,  <46.920746, 37.050991, 28.215406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745270, 36.692055, 28.196089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164418, 0.132981, -0.977386,
		0.883471, -0.420826, -0.205876,
		-0.438686, -0.897342, -0.048293,
		46.613663, 36.422852, 28.181601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.142170, 36.775402, 27.594023>,  <46.920746, 37.050991, 28.215406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.142170, 36.775402, 27.594023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834717, 36.541912, 27.698687>,  <46.650246, 36.401817, 27.761486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.834717, 36.541912, 27.698687>,  <47.142170, 36.775402, 27.594023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834717, 36.541912, 27.698687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370199, 0.072318, -0.926133,
		0.521687, -0.808722, -0.271681,
		-0.768632, -0.583728, 0.261661,
		46.604126, 36.366795, 27.777185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079369, 36.065601, 27.105080>,  <47.142170, 36.775402, 27.594023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079369, 36.065601, 27.105080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.706173, 36.126011, 27.235750>,  <46.482254, 36.162258, 27.314152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.706173, 36.126011, 27.235750>,  <47.079369, 36.065601, 27.105080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706173, 36.126011, 27.235750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340609, -0.077367, -0.937017,
		-0.116231, -0.985499, 0.123621,
		-0.932993, 0.151017, 0.326677,
		46.426273, 36.171318, 27.333754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622719, 35.590576, 26.683056>,  <47.079369, 36.065601, 27.105080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622719, 35.590576, 26.683056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371758, 35.865528, 26.829411>,  <46.221180, 36.030499, 26.917223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.371758, 35.865528, 26.829411>,  <46.622719, 35.590576, 26.683056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371758, 35.865528, 26.829411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546110, -0.053461, -0.836006,
		-0.555097, -0.724323, 0.408929,
		-0.627400, 0.687385, 0.365884,
		46.183537, 36.071743, 26.939177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983105, 35.457821, 26.394369>,  <46.622719, 35.590576, 26.683056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983105, 35.457821, 26.394369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929619, 35.835674, 26.514229>,  <45.897526, 36.062386, 26.586143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929619, 35.835674, 26.514229>,  <45.983105, 35.457821, 26.394369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929619, 35.835674, 26.514229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629979, 0.152385, -0.761515,
		-0.765014, -0.290599, 0.574722,
		-0.133717, 0.944633, 0.299648,
		45.889503, 36.119064, 26.604124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167591, 35.538975, 26.399454>,  <45.983105, 35.457821, 26.394369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167591, 35.538975, 26.399454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315872, 35.909958, 26.419024>,  <45.404842, 36.132549, 26.430765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315872, 35.909958, 26.419024>,  <45.167591, 35.538975, 26.399454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315872, 35.909958, 26.419024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637961, 0.292570, -0.712327,
		-0.674969, 0.232852, 0.700141,
		0.370706, 0.927460, 0.048925,
		45.427086, 36.188194, 26.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618610, 35.977451, 26.363964>,  <45.167591, 35.538975, 26.399454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618610, 35.977451, 26.363964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917904, 36.219421, 26.254993>,  <45.097481, 36.364601, 26.189610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.917904, 36.219421, 26.254993>,  <44.618610, 35.977451, 26.363964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917904, 36.219421, 26.254993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539783, 0.316338, -0.780106,
		-0.385724, 0.730753, 0.563221,
		0.748232, 0.604922, -0.272429,
		45.142372, 36.400898, 26.173265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.927090, 39.887577, 38.739052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542263, 39.778553, 38.743893>,  <37.311367, 39.713139, 38.746799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542263, 39.778553, 38.743893>,  <37.927090, 39.887577, 38.739052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542263, 39.778553, 38.743893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219891, -0.800894, -0.556972,
		0.161504, -0.533180, 0.830443,
		-0.962063, -0.272560, 0.012106,
		37.253643, 39.696785, 38.747524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991413, 39.113316, 38.866188>,  <37.927090, 39.887577, 38.739052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991413, 39.113316, 38.866188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626228, 39.184406, 38.719265>,  <37.407116, 39.227058, 38.631111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626228, 39.184406, 38.719265>,  <37.991413, 39.113316, 38.866188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626228, 39.184406, 38.719265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160749, -0.670716, -0.724086,
		-0.375044, -0.720107, 0.583770,
		-0.912963, 0.177724, -0.367304,
		37.352341, 39.237724, 38.609074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726002, 38.444069, 38.681496>,  <37.991413, 39.113316, 38.866188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726002, 38.444069, 38.681496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518745, 38.710400, 38.466759>,  <37.394390, 38.870197, 38.337917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518745, 38.710400, 38.466759>,  <37.726002, 38.444069, 38.681496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518745, 38.710400, 38.466759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139348, -0.553570, -0.821061,
		-0.843865, -0.500237, 0.194048,
		-0.518144, 0.665825, -0.536846,
		37.363300, 38.910149, 38.305706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548817, 38.069748, 38.174309>,  <37.726002, 38.444069, 38.681496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548817, 38.069748, 38.174309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461590, 38.417702, 37.997334>,  <37.409252, 38.626472, 37.891148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461590, 38.417702, 37.997334>,  <37.548817, 38.069748, 38.174309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461590, 38.417702, 37.997334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026688, -0.447862, -0.893704,
		-0.975568, -0.206699, 0.074450,
		-0.218071, 0.869882, -0.442437,
		37.396168, 38.678665, 37.864601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078346, 37.860203, 37.693626>,  <37.548817, 38.069748, 38.174309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078346, 37.860203, 37.693626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278885, 38.195904, 37.609425>,  <37.399208, 38.397324, 37.558903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278885, 38.195904, 37.609425>,  <37.078346, 37.860203, 37.693626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278885, 38.195904, 37.609425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079827, -0.287113, -0.954565,
		-0.861558, 0.461761, -0.210936,
		0.501343, 0.839252, -0.210503,
		37.429287, 38.447678, 37.546272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753876, 38.165749, 37.076153>,  <37.078346, 37.860203, 37.693626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753876, 38.165749, 37.076153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111454, 38.343765, 37.097324>,  <37.326000, 38.450577, 37.110027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111454, 38.343765, 37.097324>,  <36.753876, 38.165749, 37.076153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111454, 38.343765, 37.097324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130533, -0.145564, -0.980700,
		-0.428749, 0.883600, -0.188219,
		0.893944, 0.445043, 0.052929,
		37.379639, 38.477280, 37.113205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844749, 38.453056, 36.390499>,  <36.753876, 38.165749, 37.076153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844749, 38.453056, 36.390499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218456, 38.458096, 36.533039>,  <37.442680, 38.461121, 36.618565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218456, 38.458096, 36.533039>,  <36.844749, 38.453056, 36.390499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218456, 38.458096, 36.533039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351308, -0.203623, -0.913849,
		0.061044, 0.978968, -0.194665,
		0.934268, 0.012602, 0.356349,
		37.498737, 38.461876, 36.639942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160255, 38.647469, 35.854515>,  <36.844749, 38.453056, 36.390499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160255, 38.647469, 35.854515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448608, 38.509655, 36.095055>,  <37.621620, 38.426968, 36.239380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448608, 38.509655, 36.095055>,  <37.160255, 38.647469, 35.854515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448608, 38.509655, 36.095055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497910, -0.346098, -0.795174,
		0.482090, 0.872647, -0.077951,
		0.720885, -0.344533, 0.601350,
		37.664875, 38.406296, 36.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824726, 38.974232, 35.630123>,  <37.160255, 38.647469, 35.854515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824726, 38.974232, 35.630123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879490, 38.615337, 35.798035>,  <37.912346, 38.400002, 35.898781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879490, 38.615337, 35.798035>,  <37.824726, 38.974232, 35.630123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879490, 38.615337, 35.798035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452526, -0.320321, -0.832235,
		0.881179, 0.303902, 0.362171,
		0.136907, -0.897240, 0.419784,
		37.920563, 38.346165, 35.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383495, 38.759121, 35.310463>,  <37.824726, 38.974232, 35.630123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383495, 38.759121, 35.310463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247677, 38.416447, 35.465797>,  <38.166187, 38.210842, 35.558998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247677, 38.416447, 35.465797>,  <38.383495, 38.759121, 35.310463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247677, 38.416447, 35.465797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409644, -0.506338, -0.758824,
		0.846701, -0.098574, 0.522858,
		-0.339543, -0.856683, 0.388337,
		38.145813, 38.159443, 35.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022369, 38.241417, 35.256447>,  <38.383495, 38.759121, 35.310463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022369, 38.241417, 35.256447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656136, 38.084579, 35.292152>,  <38.436394, 37.990479, 35.313576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656136, 38.084579, 35.292152>,  <39.022369, 38.241417, 35.256447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656136, 38.084579, 35.292152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180180, -0.598462, -0.780627,
		0.359503, -0.698645, 0.618590,
		-0.915583, -0.392095, 0.089267,
		38.381462, 37.966949, 35.318932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162045, 37.555279, 35.139702>,  <39.022369, 38.241417, 35.256447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162045, 37.555279, 35.139702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771763, 37.609955, 35.071209>,  <38.537594, 37.642761, 35.030113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771763, 37.609955, 35.071209>,  <39.162045, 37.555279, 35.139702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771763, 37.609955, 35.071209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059310, -0.587567, -0.806999,
		-0.210917, -0.797547, 0.565183,
		-0.975703, 0.136689, -0.171231,
		38.479053, 37.650963, 35.019840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488056, 36.917233, 35.092060>,  <39.162045, 37.555279, 35.139702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488056, 36.917233, 35.092060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208359, 36.705471, 34.899895>,  <39.040543, 36.578415, 34.784595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208359, 36.705471, 34.899895>,  <39.488056, 36.917233, 35.092060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208359, 36.705471, 34.899895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589481, 0.046794, 0.806426,
		-0.404442, 0.847080, -0.344793,
		-0.699241, -0.529401, -0.480412,
		38.998585, 36.546650, 34.755772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165440, 36.874374, 35.165375>,  <39.488056, 36.917233, 35.092060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165440, 36.874374, 35.165375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390007, 36.555309, 35.253502>,  <40.524746, 36.363869, 35.306377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390007, 36.555309, 35.253502>,  <40.165440, 36.874374, 35.165375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390007, 36.555309, 35.253502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456662, -0.076596, 0.886337,
		-0.690126, -0.598214, -0.407266,
		0.561414, -0.797667, 0.220320,
		40.558430, 36.316010, 35.319599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709560, 36.245930, 35.263985>,  <40.165440, 36.874374, 35.165375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709560, 36.245930, 35.263985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036770, 36.199265, 35.489273>,  <40.233097, 36.171265, 35.624447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036770, 36.199265, 35.489273>,  <39.709560, 36.245930, 35.263985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036770, 36.199265, 35.489273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570552, -0.288553, 0.768900,
		0.072815, -0.950330, -0.302608,
		0.818027, -0.116666, 0.563224,
		40.282177, 36.164265, 35.658241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457699, 35.809536, 35.688644>,  <39.709560, 36.245930, 35.263985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457699, 35.809536, 35.688644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797287, 35.902069, 35.878689>,  <40.001041, 35.957588, 35.992718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797287, 35.902069, 35.878689>,  <39.457699, 35.809536, 35.688644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797287, 35.902069, 35.878689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484689, -0.017334, 0.874515,
		0.210543, -0.972719, 0.097411,
		0.848969, 0.231337, 0.475116,
		40.051979, 35.971470, 36.021225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548004, 35.316944, 36.206188>,  <39.457699, 35.809536, 35.688644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548004, 35.316944, 36.206188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741699, 35.654675, 36.297955>,  <39.857918, 35.857311, 36.353012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741699, 35.654675, 36.297955>,  <39.548004, 35.316944, 36.206188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741699, 35.654675, 36.297955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427180, -0.000676, 0.904166,
		0.763565, -0.535832, 0.360351,
		0.484238, 0.844324, 0.229413,
		39.886971, 35.907970, 36.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815968, 35.213928, 36.926819>,  <39.548004, 35.316944, 36.206188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815968, 35.213928, 36.926819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803001, 35.610897, 36.879395>,  <39.795223, 35.849079, 36.850941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803001, 35.610897, 36.879395>,  <39.815968, 35.213928, 36.926819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803001, 35.610897, 36.879395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526068, 0.083920, 0.846292,
		0.849825, 0.089801, 0.519359,
		-0.032413, 0.992418, -0.118558,
		39.793278, 35.908623, 36.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124920, 35.587318, 37.616940>,  <39.815968, 35.213928, 36.926819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124920, 35.587318, 37.616940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896412, 35.864532, 37.441051>,  <39.759308, 36.030861, 37.335518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896412, 35.864532, 37.441051>,  <40.124920, 35.587318, 37.616940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896412, 35.864532, 37.441051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554425, 0.069199, 0.829352,
		0.605196, 0.717578, 0.344703,
		-0.571271, 0.693032, -0.439722,
		39.725029, 36.072441, 37.309135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100632, 36.198887, 38.010231>,  <40.124920, 35.587318, 37.616940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100632, 36.198887, 38.010231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768528, 36.245293, 37.792164>,  <39.569267, 36.273136, 37.661324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768528, 36.245293, 37.792164>,  <40.100632, 36.198887, 38.010231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768528, 36.245293, 37.792164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488421, 0.319802, 0.811894,
		0.268538, 0.940355, -0.208855,
		-0.830260, 0.116015, -0.545168,
		39.519451, 36.280098, 37.628613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749596, 36.618694, 38.410519>,  <40.100632, 36.198887, 38.010231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749596, 36.618694, 38.410519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452217, 36.511402, 38.165462>,  <39.273788, 36.447025, 38.018429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452217, 36.511402, 38.165462>,  <39.749596, 36.618694, 38.410519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452217, 36.511402, 38.165462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659134, 0.138755, 0.739114,
		-0.113247, 0.953309, -0.279960,
		-0.743450, -0.268234, -0.612645,
		39.229183, 36.430931, 37.981670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365246, 37.173992, 38.401611>,  <39.749596, 36.618694, 38.410519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365246, 37.173992, 38.401611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138691, 36.862225, 38.294498>,  <39.002758, 36.675163, 38.230228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138691, 36.862225, 38.294498>,  <39.365246, 37.173992, 38.401611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138691, 36.862225, 38.294498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669489, 0.245653, 0.701028,
		-0.480612, 0.576334, -0.660948,
		-0.566390, -0.779419, -0.267785,
		38.968773, 36.628399, 38.214165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736969, 37.433987, 38.273567>,  <39.365246, 37.173992, 38.401611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736969, 37.433987, 38.273567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643345, 37.048077, 38.321617>,  <38.587170, 36.816532, 38.350449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643345, 37.048077, 38.321617>,  <38.736969, 37.433987, 38.273567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643345, 37.048077, 38.321617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764250, 0.258956, 0.590647,
		-0.600948, 0.046438, -0.797938,
		-0.234060, -0.964772, 0.120129,
		38.573128, 36.758644, 38.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003941, 37.469460, 38.312561>,  <38.736969, 37.433987, 38.273567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003941, 37.469460, 38.312561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087490, 37.092945, 38.418663>,  <38.137619, 36.867039, 38.482323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087490, 37.092945, 38.418663>,  <38.003941, 37.469460, 38.312561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087490, 37.092945, 38.418663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839925, -0.033749, 0.541652,
		-0.500895, -0.335930, -0.797656,
		0.208878, -0.941282, 0.265252,
		38.150154, 36.810562, 38.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422161, 37.161674, 38.153477>,  <38.003941, 37.469460, 38.312561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422161, 37.161674, 38.153477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620876, 36.948982, 38.427837>,  <37.740105, 36.821365, 38.592453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620876, 36.948982, 38.427837>,  <37.422161, 37.161674, 38.153477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620876, 36.948982, 38.427837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754898, 0.125166, 0.643788,
		-0.428175, -0.837612, -0.339224,
		0.496785, -0.531733, 0.685904,
		37.769913, 36.789463, 38.633610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101612, 36.546124, 38.429134>,  <37.422161, 37.161674, 38.153477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101612, 36.546124, 38.429134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351921, 36.677162, 38.712284>,  <37.502106, 36.755787, 38.882175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351921, 36.677162, 38.712284>,  <37.101612, 36.546124, 38.429134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351921, 36.677162, 38.712284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778358, 0.203266, 0.594005,
		0.050705, -0.922694, 0.382184,
		0.625770, 0.327595, 0.707880,
		37.539654, 36.775440, 38.924648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732925, 36.433990, 39.022686>,  <37.101612, 36.546124, 38.429134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732925, 36.433990, 39.022686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023777, 36.665520, 39.170338>,  <37.198288, 36.804436, 39.258930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023777, 36.665520, 39.170338>,  <36.732925, 36.433990, 39.022686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023777, 36.665520, 39.170338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588787, 0.249308, 0.768879,
		0.353015, -0.776411, 0.522079,
		0.727125, 0.578820, 0.369131,
		37.241913, 36.839165, 39.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695610, 36.279835, 39.870434>,  <36.732925, 36.433990, 39.022686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695610, 36.279835, 39.870434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864037, 36.634071, 39.792019>,  <36.965092, 36.846615, 39.744972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864037, 36.634071, 39.792019>,  <36.695610, 36.279835, 39.870434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864037, 36.634071, 39.792019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363618, 0.362810, 0.857993,
		0.830955, -0.289990, 0.474784,
		0.421066, 0.885593, -0.196033,
		36.990356, 36.899750, 39.733208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484818, 35.661343, 40.187328>,  <36.695610, 36.279835, 39.870434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484818, 35.661343, 40.187328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108501, 35.549927, 40.264606>,  <35.882710, 35.483078, 40.310974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108501, 35.549927, 40.264606>,  <36.484818, 35.661343, 40.187328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108501, 35.549927, 40.264606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039491, -0.475986, -0.878566,
		0.336675, -0.834177, 0.436805,
		-0.940792, -0.278541, 0.193195,
		35.826263, 35.466366, 40.322563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414982, 34.977791, 39.911755>,  <36.484818, 35.661343, 40.187328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414982, 34.977791, 39.911755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034504, 35.072918, 39.990417>,  <35.806217, 35.129993, 40.037617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034504, 35.072918, 39.990417>,  <36.414982, 34.977791, 39.911755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034504, 35.072918, 39.990417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297697, -0.539263, -0.787764,
		-0.081294, -0.807860, 0.583741,
		-0.951192, 0.237819, 0.196659,
		35.749146, 35.144264, 40.049416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066349, 34.400620, 39.838631>,  <36.414982, 34.977791, 39.911755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066349, 34.400620, 39.838631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791328, 34.686138, 39.785313>,  <35.626316, 34.857449, 39.753323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791328, 34.686138, 39.785313>,  <36.066349, 34.400620, 39.838631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791328, 34.686138, 39.785313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388774, -0.516902, -0.762671,
		-0.613287, -0.472559, 0.632903,
		-0.687556, 0.713793, -0.133290,
		35.585060, 34.900276, 39.745327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549973, 34.039093, 39.550087>,  <36.066349, 34.400620, 39.838631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549973, 34.039093, 39.550087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413017, 34.409077, 39.484093>,  <35.330845, 34.631069, 39.444496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413017, 34.409077, 39.484093>,  <35.549973, 34.039093, 39.550087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413017, 34.409077, 39.484093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569010, -0.343862, -0.746985,
		-0.747663, -0.161881, 0.644045,
		-0.342386, 0.924961, -0.164981,
		35.310303, 34.686565, 39.434597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829636, 33.944534, 39.508156>,  <35.549973, 34.039093, 39.550087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829636, 33.944534, 39.508156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917908, 34.282887, 39.313927>,  <34.970871, 34.485897, 39.197388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917908, 34.282887, 39.313927>,  <34.829636, 33.944534, 39.508156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917908, 34.282887, 39.313927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526854, -0.315588, -0.789196,
		-0.820809, 0.429985, 0.376013,
		0.220677, 0.845883, -0.485577,
		34.984112, 34.536652, 39.168255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206512, 34.037003, 39.137638>,  <34.829636, 33.944534, 39.508156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206512, 34.037003, 39.137638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468716, 34.271175, 38.946819>,  <34.626038, 34.411678, 38.832329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468716, 34.271175, 38.946819>,  <34.206512, 34.037003, 39.137638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468716, 34.271175, 38.946819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359618, -0.313488, -0.878863,
		-0.664064, 0.747658, 0.005038,
		0.655510, 0.585433, -0.477048,
		34.665367, 34.446804, 38.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800362, 34.448071, 38.751717>,  <34.206512, 34.037003, 39.137638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800362, 34.448071, 38.751717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163994, 34.485409, 38.589306>,  <34.382175, 34.507812, 38.491859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163994, 34.485409, 38.589306>,  <33.800362, 34.448071, 38.751717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163994, 34.485409, 38.589306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376662, -0.232302, -0.896751,
		-0.178029, 0.968154, -0.176022,
		0.909083, 0.093347, -0.406023,
		34.436718, 34.513412, 38.467499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752506, 34.981453, 38.213322>,  <33.800362, 34.448071, 38.751717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752506, 34.981453, 38.213322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045097, 34.717392, 38.145039>,  <34.220654, 34.558956, 38.104069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045097, 34.717392, 38.145039>,  <33.752506, 34.981453, 38.213322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045097, 34.717392, 38.145039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353407, -0.152948, -0.922881,
		0.583133, 0.735396, -0.345180,
		0.731478, -0.660152, -0.170706,
		34.264542, 34.519348, 38.093826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010719, 35.132748, 37.445110>,  <33.752506, 34.981453, 38.213322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010719, 35.132748, 37.445110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153004, 34.783760, 37.579140>,  <34.238377, 34.574368, 37.659557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153004, 34.783760, 37.579140>,  <34.010719, 35.132748, 37.445110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153004, 34.783760, 37.579140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393005, -0.464919, -0.793345,
		0.847947, 0.150518, -0.508261,
		0.355713, -0.872464, 0.335073,
		34.259716, 34.522022, 37.679661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233662, 34.856022, 36.849937>,  <34.010719, 35.132748, 37.445110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233662, 34.856022, 36.849937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203156, 34.513756, 37.054688>,  <34.184853, 34.308395, 37.177536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203156, 34.513756, 37.054688>,  <34.233662, 34.856022, 36.849937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203156, 34.513756, 37.054688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341145, -0.459995, -0.819771,
		0.936912, -0.237147, -0.256823,
		-0.076269, -0.855667, 0.511876,
		34.180275, 34.257057, 37.208252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516243, 34.313225, 36.420586>,  <34.233662, 34.856022, 36.849937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516243, 34.313225, 36.420586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266510, 34.133568, 36.676231>,  <34.116669, 34.025772, 36.829620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266510, 34.133568, 36.676231>,  <34.516243, 34.313225, 36.420586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266510, 34.133568, 36.676231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378982, -0.541271, -0.750599,
		0.683064, -0.710841, 0.167717,
		-0.624337, -0.449145, 0.639118,
		34.079208, 33.998825, 36.867966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538025, 33.588737, 36.305241>,  <34.516243, 34.313225, 36.420586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538025, 33.588737, 36.305241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187668, 33.679363, 36.475647>,  <33.977455, 33.733738, 36.577888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187668, 33.679363, 36.475647>,  <34.538025, 33.588737, 36.305241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187668, 33.679363, 36.475647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477287, -0.536390, -0.696048,
		0.070812, -0.812992, 0.577953,
		-0.875890, 0.226561, 0.426014,
		33.924900, 33.747334, 36.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.637547, 36.678684, 43.752254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.240280, 36.723831, 43.740391>,  <36.001919, 36.750919, 43.733273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.240280, 36.723831, 43.740391>,  <36.637547, 36.678684, 43.752254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240280, 36.723831, 43.740391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041828, -0.581579, -0.812414,
		-0.108947, -0.805622, 0.582326,
		-0.993167, 0.112867, -0.029663,
		35.942329, 36.757690, 43.731491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364674, 36.073021, 43.799728>,  <36.637547, 36.678684, 43.752254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364674, 36.073021, 43.799728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117855, 36.317314, 43.601231>,  <35.969765, 36.463890, 43.482132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117855, 36.317314, 43.601231>,  <36.364674, 36.073021, 43.799728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117855, 36.317314, 43.601231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042853, -0.655754, -0.753758,
		-0.785757, -0.443839, 0.430804,
		-0.617048, 0.610732, -0.496243,
		35.932739, 36.500534, 43.452358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715179, 35.607914, 43.551643>,  <36.364674, 36.073021, 43.799728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715179, 35.607914, 43.551643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753044, 35.942989, 43.336487>,  <35.775764, 36.144035, 43.207394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.753044, 35.942989, 43.336487>,  <35.715179, 35.607914, 43.551643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753044, 35.942989, 43.336487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300916, -0.490961, -0.817562,
		-0.948941, 0.239253, 0.205596,
		0.094665, 0.837685, -0.537888,
		35.781445, 36.194294, 43.175121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244965, 35.518681, 43.081623>,  <35.715179, 35.607914, 43.551643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244965, 35.518681, 43.081623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459969, 35.809021, 42.909939>,  <35.588970, 35.983227, 42.806931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459969, 35.809021, 42.909939>,  <35.244965, 35.518681, 43.081623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459969, 35.809021, 42.909939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135443, -0.428067, -0.893540,
		-0.832309, 0.538420, -0.131779,
		0.537511, 0.725852, -0.429209,
		35.621223, 36.026775, 42.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895203, 35.766750, 42.495510>,  <35.244965, 35.518681, 43.081623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895203, 35.766750, 42.495510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264900, 35.886482, 42.400711>,  <35.486721, 35.958321, 42.343830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.264900, 35.886482, 42.400711>,  <34.895203, 35.766750, 42.495510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264900, 35.886482, 42.400711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190147, -0.177401, -0.965595,
		-0.331074, 0.937514, -0.107046,
		0.924248, 0.299329, -0.236998,
		35.542175, 35.976280, 42.329613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840130, 36.214931, 41.945141>,  <34.895203, 35.766750, 42.495510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840130, 36.214931, 41.945141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226746, 36.113358, 41.930592>,  <35.458714, 36.052414, 41.921864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226746, 36.113358, 41.930592>,  <34.840130, 36.214931, 41.945141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226746, 36.113358, 41.930592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102199, -0.251123, -0.962545,
		0.235286, 0.934054, -0.268671,
		0.966538, -0.253931, -0.036373,
		35.516708, 36.037178, 41.919678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072689, 36.506859, 41.313580>,  <34.840130, 36.214931, 41.945141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072689, 36.506859, 41.313580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345539, 36.228088, 41.402119>,  <35.509251, 36.060825, 41.455242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.345539, 36.228088, 41.402119>,  <35.072689, 36.506859, 41.313580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345539, 36.228088, 41.402119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045141, -0.261995, -0.964013,
		0.729841, 0.667569, -0.147253,
		0.682124, -0.696929, 0.221350,
		35.550175, 36.019009, 41.468525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615871, 36.619949, 40.889622>,  <35.072689, 36.506859, 41.313580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615871, 36.619949, 40.889622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627789, 36.233700, 40.992908>,  <35.634937, 36.001949, 41.054882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627789, 36.233700, 40.992908>,  <35.615871, 36.619949, 40.889622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627789, 36.233700, 40.992908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059110, -0.256177, -0.964821,
		0.997807, 0.044004, 0.049447,
		0.029788, -0.965628, 0.258217,
		35.636726, 35.944012, 41.070374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095974, 36.310833, 40.448853>,  <35.615871, 36.619949, 40.889622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095974, 36.310833, 40.448853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884953, 35.991726, 40.565651>,  <35.758339, 35.800262, 40.635731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.884953, 35.991726, 40.565651>,  <36.095974, 36.310833, 40.448853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884953, 35.991726, 40.565651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124081, -0.412385, -0.902520,
		0.840414, -0.439894, 0.316541,
		-0.527550, -0.797767, 0.291991,
		35.726688, 35.752396, 40.653248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825298, 36.534775, 40.516754>,  <36.095974, 36.310833, 40.448853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825298, 36.534775, 40.516754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854275, 36.858799, 40.284012>,  <36.871662, 37.053215, 40.144367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.854275, 36.858799, 40.284012>,  <36.825298, 36.534775, 40.516754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854275, 36.858799, 40.284012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286908, 0.575656, 0.765705,
		0.955215, 0.111468, 0.274115,
		0.072445, 0.810059, -0.581856,
		36.876007, 37.101818, 40.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046463, 37.083084, 40.984947>,  <36.825298, 36.534775, 40.516754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046463, 37.083084, 40.984947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853790, 37.261936, 40.683468>,  <36.738186, 37.369247, 40.502579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.853790, 37.261936, 40.683468>,  <37.046463, 37.083084, 40.984947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853790, 37.261936, 40.683468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490813, 0.574857, 0.654708,
		0.726009, 0.685283, -0.057438,
		-0.481678, 0.447132, -0.753697,
		36.709286, 37.396076, 40.457359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154358, 37.725723, 41.116352>,  <37.046463, 37.083084, 40.984947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154358, 37.725723, 41.116352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848404, 37.748989, 40.859737>,  <36.664833, 37.762947, 40.705769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848404, 37.748989, 40.859737>,  <37.154358, 37.725723, 41.116352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848404, 37.748989, 40.859737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452123, 0.660923, 0.598970,
		0.458843, 0.748197, -0.479234,
		-0.764884, 0.058161, -0.641537,
		36.618938, 37.766438, 40.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064663, 38.442631, 40.949795>,  <37.154358, 37.725723, 41.116352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064663, 38.442631, 40.949795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718437, 38.257778, 40.872601>,  <36.510704, 38.146866, 40.826286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718437, 38.257778, 40.872601>,  <37.064663, 38.442631, 40.949795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718437, 38.257778, 40.872601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479540, 0.653704, 0.585417,
		-0.144383, 0.599257, -0.787429,
		-0.865561, -0.462128, -0.192984,
		36.458771, 38.119141, 40.814705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616531, 38.935814, 40.755489>,  <37.064663, 38.442631, 40.949795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616531, 38.935814, 40.755489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352119, 38.644791, 40.828926>,  <36.193474, 38.470177, 40.872990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352119, 38.644791, 40.828926>,  <36.616531, 38.935814, 40.755489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352119, 38.644791, 40.828926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557966, 0.640192, 0.528041,
		-0.501713, 0.246612, -0.829136,
		-0.661028, -0.727555, 0.183592,
		36.153812, 38.426525, 40.884003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986012, 39.335640, 40.724174>,  <36.616531, 38.935814, 40.755489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986012, 39.335640, 40.724174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887894, 38.998848, 40.916386>,  <35.829021, 38.796772, 41.031712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.887894, 38.998848, 40.916386>,  <35.986012, 39.335640, 40.724174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887894, 38.998848, 40.916386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553630, 0.528557, 0.643522,
		-0.795815, -0.108177, -0.595799,
		-0.245299, -0.841977, 0.480524,
		35.814304, 38.746254, 41.060543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281147, 39.365166, 40.771572>,  <35.986012, 39.335640, 40.724174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281147, 39.365166, 40.771572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394550, 39.130173, 41.074753>,  <35.462593, 38.989178, 41.256660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394550, 39.130173, 41.074753>,  <35.281147, 39.365166, 40.771572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394550, 39.130173, 41.074753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584289, 0.520907, 0.622304,
		-0.760413, -0.619292, -0.195576,
		0.283511, -0.587481, 0.757950,
		35.479603, 38.953930, 41.302139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693981, 39.434353, 41.259697>,  <35.281147, 39.365166, 40.771572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693981, 39.434353, 41.259697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001328, 39.289814, 41.470993>,  <35.185738, 39.203091, 41.597771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.001328, 39.289814, 41.470993>,  <34.693981, 39.434353, 41.259697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001328, 39.289814, 41.470993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369338, 0.423716, 0.827076,
		-0.522686, -0.830598, 0.192110,
		0.768367, -0.361348, 0.528241,
		35.231838, 39.181408, 41.629467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376034, 39.217777, 41.971611>,  <34.693981, 39.434353, 41.259697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376034, 39.217777, 41.971611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768620, 39.283344, 42.011326>,  <35.004169, 39.322685, 42.035156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768620, 39.283344, 42.011326>,  <34.376034, 39.217777, 41.971611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768620, 39.283344, 42.011326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156994, 0.390548, 0.907097,
		0.109912, -0.905872, 0.409043,
		0.981464, 0.163918, 0.099290,
		35.063057, 39.332520, 42.041111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592896, 39.039291, 42.674625>,  <34.376034, 39.217777, 41.971611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592896, 39.039291, 42.674625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881638, 39.300701, 42.583565>,  <35.054886, 39.457546, 42.528927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881638, 39.300701, 42.583565>,  <34.592896, 39.039291, 42.674625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881638, 39.300701, 42.583565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101844, 0.425696, 0.899117,
		0.684504, -0.625851, 0.373850,
		0.721859, 0.653523, -0.227651,
		35.098194, 39.496758, 42.515270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088913, 39.093876, 43.311119>,  <34.592896, 39.039291, 42.674625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088913, 39.093876, 43.311119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.138790, 39.429363, 43.099079>,  <35.168716, 39.630653, 42.971855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.138790, 39.429363, 43.099079>,  <35.088913, 39.093876, 43.311119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138790, 39.429363, 43.099079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194350, 0.503275, 0.841987,
		0.972975, -0.208015, -0.100249,
		0.124693, 0.838715, -0.530102,
		35.176197, 39.680977, 42.940048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498447, 39.557426, 43.818012>,  <35.088913, 39.093876, 43.311119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498447, 39.557426, 43.818012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.388443, 39.816181, 43.533501>,  <35.322441, 39.971432, 43.362793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.388443, 39.816181, 43.533501>,  <35.498447, 39.557426, 43.818012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388443, 39.816181, 43.533501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118989, 0.757013, 0.642474,
		0.954050, 0.092053, -0.285158,
		-0.275010, 0.646883, -0.711275,
		35.305939, 40.010246, 43.320118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941708, 40.066425, 43.827366>,  <35.498447, 39.557426, 43.818012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941708, 40.066425, 43.827366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619995, 40.232925, 43.657726>,  <35.426968, 40.332825, 43.555943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.619995, 40.232925, 43.657726>,  <35.941708, 40.066425, 43.827366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619995, 40.232925, 43.657726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172613, 0.846558, 0.503532,
		0.568621, 0.331778, -0.752724,
		-0.804285, 0.416249, -0.424102,
		35.378708, 40.357800, 43.530495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139683, 40.820461, 43.740025>,  <35.941708, 40.066425, 43.827366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139683, 40.820461, 43.740025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742172, 40.776062, 43.736469>,  <35.503666, 40.749420, 43.734337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.742172, 40.776062, 43.736469>,  <36.139683, 40.820461, 43.740025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742172, 40.776062, 43.736469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087780, 0.731763, 0.675883,
		-0.068520, 0.672459, -0.736956,
		-0.993780, -0.111002, -0.008888,
		35.444038, 40.742760, 43.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.885218, 41.558559, 42.762333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205982, 41.401676, 42.942604>,  <31.398441, 41.307545, 43.050766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.205982, 41.401676, 42.942604>,  <30.885218, 41.558559, 42.762333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205982, 41.401676, 42.942604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138161, -0.612149, -0.778579,
		0.581247, 0.686617, -0.436702,
		0.801912, -0.392212, 0.450673,
		31.446556, 41.284012, 43.077805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441631, 41.752392, 42.349964>,  <30.885218, 41.558559, 42.762333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441631, 41.752392, 42.349964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579765, 41.433105, 42.547382>,  <31.662645, 41.241531, 42.665833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.579765, 41.433105, 42.547382>,  <31.441631, 41.752392, 42.349964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579765, 41.433105, 42.547382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126712, -0.481430, -0.867277,
		0.929886, 0.362039, -0.065110,
		0.345334, -0.798219, 0.493549,
		31.683365, 41.193642, 42.695446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241699, 41.503750, 42.305965>,  <31.441631, 41.752392, 42.349964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241699, 41.503750, 42.305965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055244, 41.163322, 42.402618>,  <31.943371, 40.959064, 42.460609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055244, 41.163322, 42.402618>,  <32.241699, 41.503750, 42.305965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055244, 41.163322, 42.402618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276066, -0.399412, -0.874219,
		0.840536, -0.340802, 0.421134,
		-0.466141, -0.851073, 0.241636,
		31.915401, 40.908001, 42.475109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661526, 40.977116, 42.022820>,  <32.241699, 41.503750, 42.305965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661526, 40.977116, 42.022820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314972, 40.789295, 42.090820>,  <32.107040, 40.676601, 42.131622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.314972, 40.789295, 42.090820>,  <32.661526, 40.977116, 42.022820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314972, 40.789295, 42.090820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186731, -0.620344, -0.761777,
		0.463153, -0.628247, 0.625136,
		-0.866384, -0.469551, 0.170001,
		32.055058, 40.648430, 42.141819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745014, 40.160961, 42.082314>,  <32.661526, 40.977116, 42.022820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745014, 40.160961, 42.082314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362885, 40.231384, 41.987362>,  <32.133606, 40.273640, 41.930389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362885, 40.231384, 41.987362>,  <32.745014, 40.160961, 42.082314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362885, 40.231384, 41.987362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078141, -0.624149, -0.777388,
		-0.285028, -0.761210, 0.582510,
		-0.955329, 0.176060, -0.237382,
		32.076286, 40.284203, 41.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553089, 39.515640, 41.867516>,  <32.745014, 40.160961, 42.082314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553089, 39.515640, 41.867516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272614, 39.769672, 41.737892>,  <32.104328, 39.922092, 41.660118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.272614, 39.769672, 41.737892>,  <32.553089, 39.515640, 41.867516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272614, 39.769672, 41.737892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034721, -0.484387, -0.874165,
		-0.712133, -0.601699, 0.361696,
		-0.701185, 0.635080, -0.324056,
		32.062260, 39.960197, 41.640675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127163, 39.079903, 41.626328>,  <32.553089, 39.515640, 41.867516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127163, 39.079903, 41.626328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.019142, 39.422676, 41.450726>,  <31.954329, 39.628342, 41.345364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.019142, 39.422676, 41.450726>,  <32.127163, 39.079903, 41.626328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019142, 39.422676, 41.450726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101985, -0.478843, -0.871957,
		-0.957428, -0.190705, 0.216709,
		-0.270056, 0.856937, -0.439009,
		31.938126, 39.679756, 41.319023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687040, 38.861431, 41.113853>,  <32.127163, 39.079903, 41.626328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687040, 38.861431, 41.113853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781044, 39.236061, 41.009857>,  <31.837446, 39.460838, 40.947460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.781044, 39.236061, 41.009857>,  <31.687040, 38.861431, 41.113853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781044, 39.236061, 41.009857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073644, -0.249559, -0.965556,
		-0.969199, 0.246064, 0.010324,
		0.235011, 0.936575, -0.259993,
		31.851547, 39.517033, 40.931858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173218, 39.030582, 40.650845>,  <31.687040, 38.861431, 41.113853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173218, 39.030582, 40.650845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475182, 39.278229, 40.564301>,  <31.656359, 39.426815, 40.512375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475182, 39.278229, 40.564301>,  <31.173218, 39.030582, 40.650845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475182, 39.278229, 40.564301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067141, -0.255208, -0.964552,
		-0.652385, 0.742674, -0.151091,
		0.754907, 0.619115, -0.216358,
		31.701654, 39.463963, 40.499393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944784, 39.545036, 40.224983>,  <31.173218, 39.030582, 40.650845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944784, 39.545036, 40.224983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341387, 39.533878, 40.174171>,  <31.579348, 39.527184, 40.143684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341387, 39.533878, 40.174171>,  <30.944784, 39.545036, 40.224983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341387, 39.533878, 40.174171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129186, -0.098140, -0.986752,
		0.015063, 0.994781, -0.100911,
		0.991506, -0.027900, -0.127033,
		31.638838, 39.525509, 40.136063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064659, 39.865761, 39.509499>,  <30.944784, 39.545036, 40.224983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064659, 39.865761, 39.509499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412561, 39.682762, 39.583492>,  <31.621304, 39.572964, 39.627888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.412561, 39.682762, 39.583492>,  <31.064659, 39.865761, 39.509499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412561, 39.682762, 39.583492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103418, -0.197544, -0.974824,
		0.482522, 0.866990, -0.124501,
		0.869757, -0.457498, 0.184981,
		31.673489, 39.545513, 39.638988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593849, 40.063957, 39.007954>,  <31.064659, 39.865761, 39.509499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593849, 40.063957, 39.007954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746412, 39.706272, 39.101685>,  <31.837950, 39.491661, 39.157925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746412, 39.706272, 39.101685>,  <31.593849, 40.063957, 39.007954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746412, 39.706272, 39.101685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113887, -0.206106, -0.971880,
		0.917364, 0.397372, 0.023228,
		0.381410, -0.894213, 0.234329,
		31.860836, 39.438007, 39.171982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285187, 39.929150, 38.538002>,  <31.593849, 40.063957, 39.007954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285187, 39.929150, 38.538002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.147327, 39.576706, 38.667530>,  <32.064610, 39.365238, 38.745247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.147327, 39.576706, 38.667530>,  <32.285187, 39.929150, 38.538002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147327, 39.576706, 38.667530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017485, -0.338870, -0.940671,
		0.938568, -0.329866, 0.101386,
		-0.344652, -0.881111, 0.323820,
		32.043930, 39.312374, 38.764675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808681, 39.348236, 38.285366>,  <32.285187, 39.929150, 38.538002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808681, 39.348236, 38.285366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457809, 39.167866, 38.351357>,  <32.247288, 39.059643, 38.390953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457809, 39.167866, 38.351357>,  <32.808681, 39.348236, 38.285366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457809, 39.167866, 38.351357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025619, -0.299151, -0.953862,
		0.479475, -0.840936, 0.250858,
		-0.877182, -0.450927, 0.164980,
		32.194656, 39.032589, 38.400852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550499, 39.585159, 38.430939>,  <32.808681, 39.348236, 38.285366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550499, 39.585159, 38.430939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634415, 39.895695, 38.193188>,  <33.684765, 40.082016, 38.050537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634415, 39.895695, 38.193188>,  <33.550499, 39.585159, 38.430939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634415, 39.895695, 38.193188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056878, 0.597184, 0.800085,
		0.976092, -0.201653, 0.081123,
		0.209785, 0.776342, -0.594376,
		33.697350, 40.128597, 38.014874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134430, 39.906643, 38.695168>,  <33.550499, 39.585159, 38.430939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134430, 39.906643, 38.695168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935806, 40.190632, 38.495422>,  <33.816631, 40.361027, 38.375576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935806, 40.190632, 38.495422>,  <34.134430, 39.906643, 38.695168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935806, 40.190632, 38.495422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030606, 0.560621, 0.827507,
		0.867461, 0.426193, -0.256654,
		-0.496564, 0.709974, -0.499361,
		33.786839, 40.403625, 38.345615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377560, 40.432140, 38.868500>,  <34.134430, 39.906643, 38.695168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377560, 40.432140, 38.868500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060268, 40.621365, 38.715141>,  <33.869892, 40.734901, 38.623127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.060268, 40.621365, 38.715141>,  <34.377560, 40.432140, 38.868500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060268, 40.621365, 38.715141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176559, 0.781273, 0.598698,
		0.582761, 0.407214, -0.703254,
		-0.793232, 0.473063, -0.383398,
		33.822300, 40.763283, 38.600121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571400, 41.109528, 38.706997>,  <34.377560, 40.432140, 38.868500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571400, 41.109528, 38.706997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177681, 41.178421, 38.722481>,  <33.941452, 41.219757, 38.731770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177681, 41.178421, 38.722481>,  <34.571400, 41.109528, 38.706997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177681, 41.178421, 38.722481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155928, 0.745438, 0.648081,
		0.082766, 0.643939, -0.760587,
		-0.984295, 0.172236, 0.038710,
		33.882393, 41.230091, 38.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504765, 41.769985, 38.799778>,  <34.571400, 41.109528, 38.706997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504765, 41.769985, 38.799778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138996, 41.673180, 38.929558>,  <33.919537, 41.615097, 39.007427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138996, 41.673180, 38.929558>,  <34.504765, 41.769985, 38.799778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138996, 41.673180, 38.929558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006717, 0.792392, 0.609975,
		-0.404714, 0.559952, -0.722953,
		-0.914419, -0.242009, 0.324454,
		33.864670, 41.600578, 39.026894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162132, 42.414398, 39.074337>,  <34.504765, 41.769985, 38.799778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162132, 42.414398, 39.074337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916218, 42.139458, 39.229042>,  <33.768669, 41.974495, 39.321865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916218, 42.139458, 39.229042>,  <34.162132, 42.414398, 39.074337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916218, 42.139458, 39.229042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131423, 0.572811, 0.809083,
		-0.777664, 0.446587, -0.442492,
		-0.614790, -0.687348, 0.386762,
		33.731781, 41.933254, 39.345070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607613, 42.757946, 39.224010>,  <34.162132, 42.414398, 39.074337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607613, 42.757946, 39.224010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609856, 42.439030, 39.465439>,  <33.611202, 42.247681, 39.610294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.609856, 42.439030, 39.465439>,  <33.607613, 42.757946, 39.224010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609856, 42.439030, 39.465439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340495, 0.565992, 0.750811,
		-0.940229, -0.209720, -0.268301,
		0.005604, -0.797290, 0.603571,
		33.611538, 42.199844, 39.646511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969601, 42.819664, 39.623524>,  <33.607613, 42.757946, 39.224010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969601, 42.819664, 39.623524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205536, 42.572239, 39.831169>,  <33.347095, 42.423786, 39.955757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205536, 42.572239, 39.831169>,  <32.969601, 42.819664, 39.623524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205536, 42.572239, 39.831169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173317, 0.530894, 0.829526,
		-0.788706, -0.579254, 0.205933,
		0.589835, -0.618560, 0.519114,
		33.382484, 42.386669, 39.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563553, 42.495396, 40.162281>,  <32.969601, 42.819664, 39.623524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563553, 42.495396, 40.162281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937767, 42.445389, 40.294434>,  <33.162296, 42.415386, 40.373726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937767, 42.445389, 40.294434>,  <32.563553, 42.495396, 40.162281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937767, 42.445389, 40.294434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209719, 0.556048, 0.804256,
		-0.284255, -0.821694, 0.493982,
		0.935531, -0.125016, 0.330384,
		33.218426, 42.407883, 40.393547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511597, 42.229073, 40.809647>,  <32.563553, 42.495396, 40.162281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511597, 42.229073, 40.809647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881718, 42.377556, 40.778595>,  <33.103790, 42.466644, 40.759964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.881718, 42.377556, 40.778595>,  <32.511597, 42.229073, 40.809647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881718, 42.377556, 40.778595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067966, 0.363694, 0.929036,
		0.373123, -0.854350, 0.361753,
		0.925289, 0.371231, -0.077636,
		33.159309, 42.488918, 40.755306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032337, 41.893192, 41.429443>,  <32.511597, 42.229073, 40.809647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032337, 41.893192, 41.429443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176815, 42.243286, 41.300755>,  <33.263500, 42.453342, 41.223541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176815, 42.243286, 41.300755>,  <33.032337, 41.893192, 41.429443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176815, 42.243286, 41.300755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015740, 0.350690, 0.936359,
		0.932358, -0.333143, 0.140443,
		0.361194, 0.875233, -0.321725,
		33.285172, 42.505856, 41.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660122, 42.112709, 41.824936>,  <33.032337, 41.893192, 41.429443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660122, 42.112709, 41.824936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534569, 42.458939, 41.668858>,  <33.459236, 42.666676, 41.575211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.534569, 42.458939, 41.668858>,  <33.660122, 42.112709, 41.824936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534569, 42.458939, 41.668858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141883, 0.449111, 0.882139,
		0.938801, 0.221527, -0.263779,
		-0.313884, 0.865578, -0.390194,
		33.440403, 42.718613, 41.551800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048042, 42.605625, 42.190914>,  <33.660122, 42.112709, 41.824936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048042, 42.605625, 42.190914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727539, 42.802151, 42.054333>,  <33.535236, 42.920067, 41.972385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727539, 42.802151, 42.054333>,  <34.048042, 42.605625, 42.190914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727539, 42.802151, 42.054333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006187, 0.563856, 0.825850,
		0.598281, 0.663835, -0.448757,
		-0.801262, 0.491314, -0.341451,
		33.487160, 42.949547, 41.951897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304256, 43.266884, 42.297413>,  <34.048042, 42.605625, 42.190914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304256, 43.266884, 42.297413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905293, 43.249489, 42.274467>,  <33.665916, 43.239052, 42.260700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905293, 43.249489, 42.274467>,  <34.304256, 43.266884, 42.297413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905293, 43.249489, 42.274467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071687, 0.672736, 0.736401,
		0.006563, 0.738603, -0.674108,
		-0.997406, -0.043492, -0.057363,
		33.606071, 43.236443, 42.257259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909580, 43.745735, 42.121723>,  <34.304256, 43.266884, 42.297413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909580, 43.745735, 42.121723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200920, 43.567204, 42.329681>,  <35.375725, 43.460083, 42.454456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200920, 43.567204, 42.329681>,  <34.909580, 43.745735, 42.121723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200920, 43.567204, 42.329681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063973, -0.711139, -0.700135,
		0.682211, 0.543203, -0.489406,
		0.728351, -0.446331, 0.519897,
		35.419426, 43.433304, 42.485649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409275, 43.698433, 41.736908>,  <34.909580, 43.745735, 42.121723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409275, 43.698433, 41.736908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488644, 43.411602, 42.004169>,  <35.536266, 43.239506, 42.164528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488644, 43.411602, 42.004169>,  <35.409275, 43.698433, 41.736908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488644, 43.411602, 42.004169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255967, -0.620139, -0.741558,
		0.946102, 0.318169, 0.060497,
		0.198424, -0.717075, 0.668155,
		35.548172, 43.196480, 42.204617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057442, 43.473419, 41.490768>,  <35.409275, 43.698433, 41.736908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057442, 43.473419, 41.490768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913166, 43.184986, 41.727390>,  <35.826603, 43.011925, 41.869366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913166, 43.184986, 41.727390>,  <36.057442, 43.473419, 41.490768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913166, 43.184986, 41.727390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343702, -0.692375, -0.634418,
		0.867050, -0.025505, 0.497568,
		-0.360685, -0.721087, 0.591557,
		35.804962, 42.968658, 41.904858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598015, 43.050457, 41.686214>,  <36.057442, 43.473419, 41.490768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598015, 43.050457, 41.686214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279648, 42.821766, 41.765850>,  <36.088627, 42.684551, 41.813629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279648, 42.821766, 41.765850>,  <36.598015, 43.050457, 41.686214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279648, 42.821766, 41.765850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351333, -0.704016, -0.617192,
		0.493026, -0.421291, 0.761209,
		-0.795921, -0.571730, 0.199085,
		36.040871, 42.650246, 41.825577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879402, 42.429115, 41.719067>,  <36.598015, 43.050457, 41.686214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879402, 42.429115, 41.719067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491249, 42.342159, 41.676937>,  <36.258358, 42.289986, 41.651661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491249, 42.342159, 41.676937>,  <36.879402, 42.429115, 41.719067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491249, 42.342159, 41.676937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241503, -0.863606, -0.442561,
		0.005253, -0.454891, 0.890532,
		-0.970386, -0.217391, -0.105321,
		36.200134, 42.276943, 41.645340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729378, 41.667221, 41.940945>,  <36.879402, 42.429115, 41.719067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729378, 41.667221, 41.940945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429276, 41.778244, 41.700920>,  <36.249214, 41.844856, 41.556904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429276, 41.778244, 41.700920>,  <36.729378, 41.667221, 41.940945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429276, 41.778244, 41.700920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175798, -0.791190, -0.585759,
		-0.637343, -0.544960, 0.544804,
		-0.750259, 0.277554, -0.600063,
		36.204197, 41.861511, 41.520901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373055, 41.076626, 41.808182>,  <36.729378, 41.667221, 41.940945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373055, 41.076626, 41.808182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269409, 41.304436, 41.496155>,  <36.207222, 41.441120, 41.308937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269409, 41.304436, 41.496155>,  <36.373055, 41.076626, 41.808182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269409, 41.304436, 41.496155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162962, -0.770292, -0.616518,
		-0.952000, -0.286869, 0.106783,
		-0.259114, 0.569523, -0.780066,
		36.191673, 41.475292, 41.262135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941563, 40.618137, 41.430351>,  <36.373055, 41.076626, 41.808182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941563, 40.618137, 41.430351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053123, 40.905987, 41.175995>,  <36.120060, 41.078697, 41.023380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.053123, 40.905987, 41.175995>,  <35.941563, 40.618137, 41.430351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053123, 40.905987, 41.175995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144654, -0.686093, -0.712987,
		-0.949363, 0.106866, -0.295446,
		0.278898, 0.719622, -0.635893,
		36.136791, 41.121872, 40.985226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748486, 40.419682, 40.807732>,  <35.941563, 40.618137, 41.430351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748486, 40.419682, 40.807732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034702, 40.687721, 40.728764>,  <36.206432, 40.848545, 40.681381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.034702, 40.687721, 40.728764>,  <35.748486, 40.419682, 40.807732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034702, 40.687721, 40.728764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324185, -0.568852, -0.755851,
		-0.618797, 0.476839, -0.624271,
		0.715537, 0.670098, -0.197420,
		36.249363, 40.888752, 40.669537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675972, 40.681698, 40.124611>,  <35.748486, 40.419682, 40.807732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675972, 40.681698, 40.124611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063038, 40.753422, 40.195572>,  <36.295277, 40.796455, 40.238148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063038, 40.753422, 40.195572>,  <35.675972, 40.681698, 40.124611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063038, 40.753422, 40.195572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249974, -0.587720, -0.769479,
		-0.033709, 0.788945, -0.613538,
		0.967666, 0.179307, 0.177404,
		36.353336, 40.807213, 40.248795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874802, 40.825634, 39.526554>,  <35.675972, 40.681698, 40.124611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874802, 40.825634, 39.526554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.227974, 40.756615, 39.701210>,  <36.439880, 40.715202, 39.806004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.227974, 40.756615, 39.701210>,  <35.874802, 40.825634, 39.526554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227974, 40.756615, 39.701210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324660, -0.447428, -0.833309,
		0.339147, 0.877517, -0.339031,
		0.882936, -0.172545, 0.436638,
		36.492855, 40.704853, 39.832203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343407, 41.040844, 39.000256>,  <35.874802, 40.825634, 39.526554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343407, 41.040844, 39.000256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517445, 40.788700, 39.257423>,  <36.621868, 40.637413, 39.411724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.517445, 40.788700, 39.257423>,  <36.343407, 41.040844, 39.000256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517445, 40.788700, 39.257423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268811, -0.590539, -0.760924,
		0.859320, 0.503898, -0.087495,
		0.435097, -0.630358, 0.642915,
		36.647972, 40.599594, 39.450298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879467, 40.785831, 38.614853>,  <36.343407, 41.040844, 39.000256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879467, 40.785831, 38.614853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840984, 40.528603, 38.918747>,  <36.817894, 40.374264, 39.101082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.840984, 40.528603, 38.918747>,  <36.879467, 40.785831, 38.614853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840984, 40.528603, 38.918747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297607, -0.746943, -0.594563,
		0.949829, 0.168903, 0.263244,
		-0.096205, -0.643077, 0.759735,
		36.812122, 40.335678, 39.146667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540848, 40.535450, 38.689735>,  <36.879467, 40.785831, 38.614853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540848, 40.535450, 38.689735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.265873, 40.279018, 38.826237>,  <37.100887, 40.125160, 38.908138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.265873, 40.279018, 38.826237>,  <37.540848, 40.535450, 38.689735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265873, 40.279018, 38.826237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285678, -0.670707, -0.684500,
		0.667699, -0.373061, 0.644208,
		-0.687435, -0.641076, 0.341255,
		37.059643, 40.086697, 38.928612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.356537, 36.617764, 25.885445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644335, 36.433384, 26.093235>,  <28.817013, 36.322758, 26.217909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.644335, 36.433384, 26.093235>,  <28.356537, 36.617764, 25.885445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644335, 36.433384, 26.093235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682472, -0.330665, 0.651838,
		-0.128690, -0.823522, -0.552495,
		0.719494, -0.460947, 0.519478,
		28.860184, 36.295101, 26.249079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033758, 35.980415, 26.166567>,  <28.356537, 36.617764, 25.885445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033758, 35.980415, 26.166567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359188, 36.010410, 26.397209>,  <28.554445, 36.028408, 26.535595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.359188, 36.010410, 26.397209>,  <28.033758, 35.980415, 26.166567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359188, 36.010410, 26.397209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551607, -0.214122, 0.806152,
		0.183915, -0.973924, -0.132841,
		0.813575, 0.074988, 0.576604,
		28.603260, 36.032906, 26.570190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118176, 35.343880, 26.456707>,  <28.033758, 35.980415, 26.166567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118176, 35.343880, 26.456707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281292, 35.619251, 26.696632>,  <28.379162, 35.784473, 26.840588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281292, 35.619251, 26.696632>,  <28.118176, 35.343880, 26.456707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281292, 35.619251, 26.696632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685226, -0.203429, 0.699344,
		0.603468, -0.696191, 0.388773,
		0.407789, 0.688429, 0.599811,
		28.403629, 35.825779, 26.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057201, 34.997658, 27.020672>,  <28.118176, 35.343880, 26.456707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057201, 34.997658, 27.020672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148355, 35.364895, 27.150393>,  <28.203049, 35.585236, 27.228226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148355, 35.364895, 27.150393>,  <28.057201, 34.997658, 27.020672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148355, 35.364895, 27.150393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377673, -0.223645, 0.898524,
		0.897458, -0.327241, 0.295774,
		0.227885, 0.918094, 0.324302,
		28.216721, 35.640324, 27.247683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235073, 34.820660, 27.728798>,  <28.057201, 34.997658, 27.020672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235073, 34.820660, 27.728798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173244, 35.215134, 27.704952>,  <28.136147, 35.451817, 27.690645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173244, 35.215134, 27.704952>,  <28.235073, 34.820660, 27.728798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173244, 35.215134, 27.704952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560669, -0.037874, 0.827173,
		0.813485, 0.161283, 0.558776,
		-0.154572, 0.986181, -0.059616,
		28.126873, 35.510986, 27.687067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197536, 34.973312, 28.326771>,  <28.235073, 34.820660, 27.728798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197536, 34.973312, 28.326771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019215, 35.302158, 28.185135>,  <27.912222, 35.499466, 28.100153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.019215, 35.302158, 28.185135>,  <28.197536, 34.973312, 28.326771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019215, 35.302158, 28.185135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469733, 0.121868, 0.874356,
		0.761977, 0.556118, 0.331848,
		-0.445804, 0.822120, -0.354088,
		27.885473, 35.548794, 28.078909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304302, 35.565769, 28.825909>,  <28.197536, 34.973312, 28.326771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304302, 35.565769, 28.825909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.973497, 35.622131, 28.608212>,  <27.775015, 35.655949, 28.477592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.973497, 35.622131, 28.608212>,  <28.304302, 35.565769, 28.825909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973497, 35.622131, 28.608212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508626, 0.224860, 0.831106,
		0.239483, 0.964150, -0.114296,
		-0.827011, 0.140902, -0.544242,
		27.725393, 35.664402, 28.444939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920025, 36.023727, 29.187698>,  <28.304302, 35.565769, 28.825909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920025, 36.023727, 29.187698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.656805, 35.841042, 28.948238>,  <27.498873, 35.731430, 28.804562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.656805, 35.841042, 28.948238>,  <27.920025, 36.023727, 29.187698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656805, 35.841042, 28.948238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676135, 0.008515, 0.736729,
		-0.331375, 0.889574, -0.314402,
		-0.658052, -0.456711, -0.598651,
		27.459389, 35.704029, 28.768642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266277, 36.455986, 29.211981>,  <27.920025, 36.023727, 29.187698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266277, 36.455986, 29.211981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.169464, 36.092350, 29.076347>,  <27.111376, 35.874168, 28.994967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.169464, 36.092350, 29.076347>,  <27.266277, 36.455986, 29.211981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169464, 36.092350, 29.076347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651707, -0.106590, 0.750943,
		-0.718817, 0.402735, -0.566662,
		-0.242031, -0.909089, -0.339084,
		27.096855, 35.819622, 28.974623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573265, 36.375832, 29.311876>,  <27.266277, 36.455986, 29.211981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573265, 36.375832, 29.311876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638269, 35.984482, 29.260695>,  <26.677271, 35.749672, 29.229986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638269, 35.984482, 29.260695>,  <26.573265, 36.375832, 29.311876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638269, 35.984482, 29.260695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598514, -0.200839, 0.775529,
		-0.784456, -0.049449, -0.618209,
		0.162510, -0.978375, -0.127954,
		26.687023, 35.690968, 29.222309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021793, 36.047947, 29.467625>,  <26.573265, 36.375832, 29.311876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021793, 36.047947, 29.467625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.263376, 35.732006, 29.510269>,  <26.408325, 35.542442, 29.535856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.263376, 35.732006, 29.510269>,  <26.021793, 36.047947, 29.467625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263376, 35.732006, 29.510269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490149, -0.262606, 0.831139,
		-0.628484, -0.554224, -0.545749,
		0.603955, -0.789857, 0.106609,
		26.444563, 35.495049, 29.542252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628347, 35.413136, 29.714516>,  <26.021793, 36.047947, 29.467625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628347, 35.413136, 29.714516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006987, 35.320595, 29.804337>,  <26.234171, 35.265068, 29.858229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.006987, 35.320595, 29.804337>,  <25.628347, 35.413136, 29.714516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006987, 35.320595, 29.804337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305803, -0.423628, 0.852657,
		-0.102138, -0.875794, -0.471755,
		0.946600, -0.231353, 0.224552,
		26.290966, 35.251190, 29.871702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566843, 34.890602, 30.164772>,  <25.628347, 35.413136, 29.714516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566843, 34.890602, 30.164772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.943487, 35.011784, 30.223539>,  <26.169474, 35.084492, 30.258801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.943487, 35.011784, 30.223539>,  <25.566843, 34.890602, 30.164772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943487, 35.011784, 30.223539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001652, -0.432193, 0.901779,
		0.336697, -0.849369, -0.406458,
		0.941612, 0.302955, 0.146921,
		26.225971, 35.102669, 30.267616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083187, 34.263744, 30.284275>,  <25.566843, 34.890602, 30.164772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083187, 34.263744, 30.284275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217413, 34.600311, 30.453701>,  <26.297949, 34.802254, 30.555357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217413, 34.600311, 30.453701>,  <26.083187, 34.263744, 30.284275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217413, 34.600311, 30.453701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136895, -0.401305, 0.905657,
		0.932017, -0.361891, -0.019477,
		0.335565, 0.841421, 0.423564,
		26.318083, 34.852737, 30.580770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572474, 34.136494, 30.729307>,  <26.083187, 34.263744, 30.284275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572474, 34.136494, 30.729307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437904, 34.477306, 30.889736>,  <26.357162, 34.681793, 30.985992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437904, 34.477306, 30.889736>,  <26.572474, 34.136494, 30.729307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437904, 34.477306, 30.889736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042370, -0.439159, 0.897410,
		0.940758, 0.284915, 0.183843,
		-0.336422, 0.852035, 0.401070,
		26.336977, 34.732918, 31.010057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878029, 34.181042, 31.435059>,  <26.572474, 34.136494, 30.729307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878029, 34.181042, 31.435059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587934, 34.456219, 31.446175>,  <26.413877, 34.621326, 31.452845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.587934, 34.456219, 31.446175>,  <26.878029, 34.181042, 31.435059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587934, 34.456219, 31.446175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080368, -0.124671, 0.988938,
		0.683796, 0.714978, 0.145704,
		-0.725234, 0.687941, 0.027788,
		26.370365, 34.662601, 31.454512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078085, 34.550220, 32.035061>,  <26.878029, 34.181042, 31.435059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078085, 34.550220, 32.035061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694958, 34.644634, 31.969492>,  <26.465082, 34.701283, 31.930151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694958, 34.644634, 31.969492>,  <27.078085, 34.550220, 32.035061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694958, 34.644634, 31.969492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147271, 0.086657, 0.985293,
		0.246770, 0.967873, -0.048241,
		-0.957818, 0.236036, -0.163924,
		26.407612, 34.715446, 31.920315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835817, 35.162289, 32.512383>,  <27.078085, 34.550220, 32.035061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835817, 35.162289, 32.512383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519072, 34.949226, 32.392899>,  <26.329025, 34.821388, 32.321209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519072, 34.949226, 32.392899>,  <26.835817, 35.162289, 32.512383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519072, 34.949226, 32.392899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320982, -0.053106, 0.945595,
		-0.519543, 0.844662, -0.128921,
		-0.791862, -0.532658, -0.298712,
		26.281513, 34.789429, 32.303284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098858, 35.907715, 32.741699>,  <26.835817, 35.162289, 32.512383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098858, 35.907715, 32.741699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346016, 35.783241, 33.030525>,  <27.494310, 35.708557, 33.203819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.346016, 35.783241, 33.030525>,  <27.098858, 35.907715, 32.741699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346016, 35.783241, 33.030525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781716, 0.144540, -0.606654,
		0.084412, 0.939295, 0.332566,
		0.617896, -0.311181, 0.722061,
		27.531385, 35.689888, 33.247143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550146, 36.408234, 32.976276>,  <27.098858, 35.907715, 32.741699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550146, 36.408234, 32.976276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707783, 36.041374, 33.000023>,  <27.802364, 35.821259, 33.014271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707783, 36.041374, 33.000023>,  <27.550146, 36.408234, 32.976276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707783, 36.041374, 33.000023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638802, 0.226900, -0.735152,
		0.660775, 0.327644, 0.675297,
		0.394093, -0.917151, 0.059370,
		27.826010, 35.766228, 33.017834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309980, 36.416100, 33.055336>,  <27.550146, 36.408234, 32.976276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309980, 36.416100, 33.055336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219490, 36.055202, 32.908489>,  <28.165195, 35.838665, 32.820381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219490, 36.055202, 32.908489>,  <28.309980, 36.416100, 33.055336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219490, 36.055202, 32.908489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665069, 0.132297, -0.734970,
		0.711692, -0.410425, 0.570127,
		-0.226224, -0.902246, -0.367116,
		28.151623, 35.784527, 32.798355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924788, 36.173748, 32.811867>,  <28.309980, 36.416100, 33.055336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924788, 36.173748, 32.811867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674238, 35.922890, 32.626678>,  <28.523909, 35.772373, 32.515564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674238, 35.922890, 32.626678>,  <28.924788, 36.173748, 32.811867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674238, 35.922890, 32.626678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582005, 0.018859, -0.812966,
		0.518583, -0.778670, 0.353192,
		-0.626371, -0.627150, -0.462970,
		28.486326, 35.734745, 32.487789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361107, 35.642464, 32.626308>,  <28.924788, 36.173748, 32.811867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361107, 35.642464, 32.626308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044880, 35.652943, 32.381584>,  <28.855145, 35.659229, 32.234749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044880, 35.652943, 32.381584>,  <29.361107, 35.642464, 32.626308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044880, 35.652943, 32.381584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606655, -0.102720, -0.788301,
		-0.083490, -0.994366, 0.065320,
		-0.790568, 0.026188, -0.611813,
		28.807709, 35.660801, 32.198040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425045, 35.029339, 32.086227>,  <29.361107, 35.642464, 32.626308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425045, 35.029339, 32.086227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175627, 35.312786, 31.954136>,  <29.025976, 35.482857, 31.874882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175627, 35.312786, 31.954136>,  <29.425045, 35.029339, 32.086227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175627, 35.312786, 31.954136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475213, 0.008142, -0.879833,
		-0.620779, -0.705543, -0.341822,
		-0.623543, 0.708621, -0.330228,
		28.988564, 35.525372, 31.855068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483490, 34.906277, 31.377447>,  <29.425045, 35.029339, 32.086227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483490, 34.906277, 31.377447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285978, 35.254066, 31.382933>,  <29.167471, 35.462742, 31.386225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.285978, 35.254066, 31.382933>,  <29.483490, 34.906277, 31.377447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285978, 35.254066, 31.382933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265435, 0.165721, -0.949779,
		-0.828085, -0.465343, -0.312620,
		-0.493781, 0.869478, 0.013713,
		29.137844, 35.514912, 31.387047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292494, 34.940224, 30.672461>,  <29.483490, 34.906277, 31.377447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292494, 34.940224, 30.672461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208633, 35.308224, 30.804909>,  <29.158318, 35.529026, 30.884378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208633, 35.308224, 30.804909>,  <29.292494, 34.940224, 30.672461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208633, 35.308224, 30.804909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189147, 0.370409, -0.909407,
		-0.959307, -0.128026, -0.251672,
		-0.209649, 0.920003, 0.331120,
		29.145739, 35.584225, 30.904245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732895, 35.287655, 30.203493>,  <29.292494, 34.940224, 30.672461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732895, 35.287655, 30.203493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974691, 35.563110, 30.363678>,  <29.119770, 35.728382, 30.459789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974691, 35.563110, 30.363678>,  <28.732895, 35.287655, 30.203493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974691, 35.563110, 30.363678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248154, 0.314911, -0.916106,
		-0.756974, 0.653155, 0.019473,
		0.604492, 0.688636, 0.400462,
		29.156038, 35.769703, 30.483816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568239, 35.936916, 29.765829>,  <28.732895, 35.287655, 30.203493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568239, 35.936916, 29.765829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911644, 35.996815, 29.962008>,  <29.117687, 36.032753, 30.079714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.911644, 35.996815, 29.962008>,  <28.568239, 35.936916, 29.765829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911644, 35.996815, 29.962008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409281, 0.376126, -0.831275,
		-0.308949, 0.914388, 0.261620,
		0.858510, 0.149745, 0.490446,
		29.169197, 36.041737, 30.109140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849722, 36.536991, 29.435871>,  <28.568239, 35.936916, 29.765829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849722, 36.536991, 29.435871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173826, 36.413830, 29.635340>,  <29.368288, 36.339931, 29.755020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173826, 36.413830, 29.635340>,  <28.849722, 36.536991, 29.435871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173826, 36.413830, 29.635340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543620, 0.076918, -0.835800,
		0.218991, 0.948303, 0.229707,
		0.810260, -0.307906, 0.498672,
		29.416904, 36.321457, 29.784941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430784, 37.019108, 29.297705>,  <28.849722, 36.536991, 29.435871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430784, 37.019108, 29.297705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611053, 36.681099, 29.412830>,  <29.719215, 36.478294, 29.481905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611053, 36.681099, 29.412830>,  <29.430784, 37.019108, 29.297705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611053, 36.681099, 29.412830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641945, 0.082736, -0.762273,
		0.620323, 0.528297, 0.579743,
		0.450672, -0.845019, 0.287815,
		29.746256, 36.427593, 29.499174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091454, 37.139847, 29.284966>,  <29.430784, 37.019108, 29.297705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091454, 37.139847, 29.284966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103025, 36.740219, 29.272154>,  <30.109968, 36.500443, 29.264467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103025, 36.740219, 29.272154>,  <30.091454, 37.139847, 29.284966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103025, 36.740219, 29.272154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678775, 0.043156, -0.733077,
		0.733777, -0.000531, 0.679391,
		0.028931, -0.999068, -0.032028,
		30.111704, 36.440498, 29.262545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850252, 36.887005, 29.387363>,  <30.091454, 37.139847, 29.284966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850252, 36.887005, 29.387363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663380, 36.587315, 29.199575>,  <30.551256, 36.407501, 29.086903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663380, 36.587315, 29.199575>,  <30.850252, 36.887005, 29.387363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663380, 36.587315, 29.199575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688362, 0.025019, -0.724936,
		0.554886, -0.661843, 0.504049,
		-0.467183, -0.749225, -0.469470,
		30.523224, 36.362549, 29.058735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326464, 36.296307, 29.378633>,  <30.850252, 36.887005, 29.387363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326464, 36.296307, 29.378633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062593, 36.292442, 29.078037>,  <30.904272, 36.290123, 28.897680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062593, 36.292442, 29.078037>,  <31.326464, 36.296307, 29.378633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062593, 36.292442, 29.078037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746441, -0.124841, -0.653636,
		-0.087502, -0.992130, 0.089566,
		-0.659673, -0.009661, -0.751490,
		30.864691, 36.289543, 28.852591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667839, 35.852463, 28.963476>,  <31.326464, 36.296307, 29.378633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667839, 35.852463, 28.963476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384304, 35.991302, 28.717850>,  <31.214184, 36.074608, 28.570475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384304, 35.991302, 28.717850>,  <31.667839, 35.852463, 28.963476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384304, 35.991302, 28.717850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596191, -0.170435, -0.784543,
		-0.376972, -0.922212, -0.086127,
		-0.708835, 0.347099, -0.614064,
		31.171654, 36.095432, 28.533630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629402, 35.387917, 28.377119>,  <31.667839, 35.852463, 28.963476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629402, 35.387917, 28.377119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481821, 35.740284, 28.258560>,  <31.393272, 35.951706, 28.187424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481821, 35.740284, 28.258560>,  <31.629402, 35.387917, 28.377119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481821, 35.740284, 28.258560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545373, -0.053040, -0.836514,
		-0.752623, -0.470282, -0.460861,
		-0.368954, 0.880921, -0.296398,
		31.371136, 36.004559, 28.169641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468012, 35.274376, 27.695583>,  <31.629402, 35.387917, 28.377119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468012, 35.274376, 27.695583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493326, 35.670769, 27.742819>,  <31.508514, 35.908604, 27.771160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493326, 35.670769, 27.742819>,  <31.468012, 35.274376, 27.695583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493326, 35.670769, 27.742819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382238, 0.085234, -0.920125,
		-0.921894, 0.103367, -0.373398,
		0.063285, 0.990985, 0.118088,
		31.512312, 35.968063, 27.778246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159204, 35.608021, 27.085396>,  <31.468012, 35.274376, 27.695583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159204, 35.608021, 27.085396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391678, 35.899120, 27.231052>,  <31.531162, 36.073780, 27.318447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391678, 35.899120, 27.231052>,  <31.159204, 35.608021, 27.085396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391678, 35.899120, 27.231052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342865, 0.186834, -0.920618,
		-0.738016, 0.659901, -0.140936,
		0.581185, 0.727753, 0.364143,
		31.566034, 36.117447, 27.340296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129944, 36.141994, 26.584219>,  <31.159204, 35.608021, 27.085396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129944, 36.141994, 26.584219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.455658, 36.223530, 26.801619>,  <31.651087, 36.272449, 26.932058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.455658, 36.223530, 26.801619>,  <31.129944, 36.141994, 26.584219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455658, 36.223530, 26.801619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523539, 0.146471, -0.839317,
		-0.250689, 0.967986, 0.012554,
		0.814286, 0.203835, 0.543497,
		31.699944, 36.284679, 26.964668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368608, 36.733242, 26.419142>,  <31.129944, 36.141994, 26.584219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368608, 36.733242, 26.419142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685616, 36.564163, 26.594978>,  <31.875820, 36.462715, 26.700480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.685616, 36.564163, 26.594978>,  <31.368608, 36.733242, 26.419142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685616, 36.564163, 26.594978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517102, 0.083650, -0.851827,
		0.323294, 0.902402, 0.284872,
		0.792519, -0.422698, 0.439590,
		31.923372, 36.437355, 26.726856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945024, 37.127811, 26.128872>,  <31.368608, 36.733242, 26.419142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945024, 37.127811, 26.128872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071747, 36.779236, 26.278664>,  <32.147781, 36.570091, 26.368538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.071747, 36.779236, 26.278664>,  <31.945024, 37.127811, 26.128872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071747, 36.779236, 26.278664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592430, -0.126526, -0.795624,
		0.740717, 0.473909, 0.476181,
		0.316804, -0.871436, 0.374478,
		32.166786, 36.517803, 26.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612812, 37.256062, 26.145014>,  <31.945024, 37.127811, 26.128872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612812, 37.256062, 26.145014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552391, 36.860756, 26.135986>,  <32.516136, 36.623573, 26.130569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552391, 36.860756, 26.135986>,  <32.612812, 37.256062, 26.145014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552391, 36.860756, 26.135986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428168, -0.044833, -0.902586,
		0.890985, -0.146005, 0.429917,
		-0.151057, -0.988268, -0.022569,
		32.507072, 36.564274, 26.129215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262070, 37.018353, 25.989202>,  <32.612812, 37.256062, 26.145014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262070, 37.018353, 25.989202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018368, 36.716225, 25.892616>,  <32.872147, 36.534950, 25.834665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018368, 36.716225, 25.892616>,  <33.262070, 37.018353, 25.989202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018368, 36.716225, 25.892616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533970, -0.165654, -0.829117,
		0.586248, -0.634077, 0.504242,
		-0.609254, -0.755318, -0.241463,
		32.835590, 36.489628, 25.820177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.842613, 41.494511, 43.680439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511658, 41.309090, 43.807278>,  <35.313084, 41.197838, 43.883381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511658, 41.309090, 43.807278>,  <35.842613, 41.494511, 43.680439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511658, 41.309090, 43.807278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098522, 0.675639, 0.730620,
		-0.552925, 0.573264, -0.604684,
		-0.827386, -0.463553, 0.317098,
		35.263443, 41.170025, 43.902409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181236, 41.925270, 43.691788>,  <35.842613, 41.494511, 43.680439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181236, 41.925270, 43.691788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089848, 41.621647, 43.935635>,  <35.035015, 41.439472, 44.081944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089848, 41.621647, 43.935635>,  <35.181236, 41.925270, 43.691788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089848, 41.621647, 43.935635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273037, 0.651008, 0.708265,
		-0.934480, -0.004632, -0.355986,
		-0.228469, -0.759057, 0.609618,
		35.021305, 41.393929, 44.118519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627674, 42.174854, 44.071739>,  <35.181236, 41.925270, 43.691788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627674, 42.174854, 44.071739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758778, 41.867882, 44.292149>,  <34.837440, 41.683697, 44.424393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758778, 41.867882, 44.292149>,  <34.627674, 42.174854, 44.071739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758778, 41.867882, 44.292149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237402, 0.497621, 0.834274,
		-0.914447, -0.404255, -0.019089,
		0.327761, -0.767432, 0.551019,
		34.857105, 41.637653, 44.457455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088303, 42.145569, 44.545918>,  <34.627674, 42.174854, 44.071739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088303, 42.145569, 44.545918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426064, 41.979591, 44.681450>,  <34.628719, 41.880005, 44.762772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426064, 41.979591, 44.681450>,  <34.088303, 42.145569, 44.545918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426064, 41.979591, 44.681450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128950, 0.456464, 0.880348,
		-0.519957, -0.787061, 0.331934,
		0.844403, -0.414940, 0.338833,
		34.679386, 41.855110, 44.783100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910801, 41.864704, 45.204006>,  <34.088303, 42.145569, 44.545918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910801, 41.864704, 45.204006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307404, 41.912624, 45.183735>,  <34.545364, 41.941376, 45.171574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.307404, 41.912624, 45.183735>,  <33.910801, 41.864704, 45.204006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307404, 41.912624, 45.183735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009347, 0.322960, 0.946366,
		0.129740, -0.938800, 0.319096,
		0.991504, 0.119799, -0.050676,
		34.604855, 41.948563, 45.168533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080441, 41.774929, 45.857986>,  <33.910801, 41.864704, 45.204006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080441, 41.774929, 45.857986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411316, 41.943420, 45.709221>,  <34.609840, 42.044518, 45.619961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411316, 41.943420, 45.709221>,  <34.080441, 41.774929, 45.857986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411316, 41.943420, 45.709221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177553, 0.432017, 0.884215,
		0.533131, -0.797449, 0.282570,
		0.827192, 0.421231, -0.371911,
		34.659473, 42.069790, 45.597649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603550, 41.621857, 46.420582>,  <34.080441, 41.774929, 45.857986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603550, 41.621857, 46.420582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754871, 41.917397, 46.197517>,  <34.845665, 42.094719, 46.063679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754871, 41.917397, 46.197517>,  <34.603550, 41.621857, 46.420582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754871, 41.917397, 46.197517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278748, 0.483549, 0.829747,
		0.882717, -0.469340, -0.023027,
		0.378299, 0.738851, -0.557664,
		34.868362, 42.139053, 46.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290329, 41.709896, 46.619717>,  <34.603550, 41.621857, 46.420582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290329, 41.709896, 46.619717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207138, 42.061504, 46.448105>,  <35.157223, 42.272469, 46.345139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207138, 42.061504, 46.448105>,  <35.290329, 41.709896, 46.619717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207138, 42.061504, 46.448105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390793, 0.476768, 0.787384,
		0.896676, -0.003906, -0.442671,
		-0.207976, 0.879021, -0.429032,
		35.144745, 42.325211, 46.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985741, 42.057983, 46.645203>,  <35.290329, 41.709896, 46.619717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985741, 42.057983, 46.645203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676182, 42.306614, 46.596668>,  <35.490448, 42.455791, 46.567547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676182, 42.306614, 46.596668>,  <35.985741, 42.057983, 46.645203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676182, 42.306614, 46.596668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373484, 0.602668, 0.705196,
		0.511461, 0.500431, -0.698553,
		-0.773897, 0.621579, -0.121338,
		35.444012, 42.493088, 46.560268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371246, 42.709282, 46.498863>,  <35.985741, 42.057983, 46.645203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371246, 42.709282, 46.498863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003456, 42.755245, 46.649254>,  <35.782784, 42.782822, 46.739487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003456, 42.755245, 46.649254>,  <36.371246, 42.709282, 46.498863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003456, 42.755245, 46.649254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370892, 0.570718, 0.732612,
		-0.130393, 0.813066, -0.567381,
		-0.919477, 0.114909, 0.375977,
		35.727612, 42.789719, 46.762047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312237, 43.403015, 46.612720>,  <36.371246, 42.709282, 46.498863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312237, 43.403015, 46.612720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025311, 43.237743, 46.837132>,  <35.853157, 43.138580, 46.971779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.025311, 43.237743, 46.837132>,  <36.312237, 43.403015, 46.612720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025311, 43.237743, 46.837132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318188, 0.522077, 0.791323,
		-0.619855, 0.746136, -0.243024,
		-0.717312, -0.413178, 0.561023,
		35.810116, 43.113789, 47.005440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972527, 43.948921, 46.819138>,  <36.312237, 43.403015, 46.612720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972527, 43.948921, 46.819138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907757, 43.653263, 47.080658>,  <35.868896, 43.475868, 47.237568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907757, 43.653263, 47.080658>,  <35.972527, 43.948921, 46.819138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907757, 43.653263, 47.080658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309203, 0.591174, 0.744920,
		-0.937110, 0.322776, 0.132821,
		-0.161922, -0.739141, 0.653799,
		35.859180, 43.431522, 47.276798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517475, 44.241661, 47.450302>,  <35.972527, 43.948921, 46.819138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517475, 44.241661, 47.450302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750259, 43.929035, 47.540176>,  <35.889931, 43.741459, 47.594101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750259, 43.929035, 47.540176>,  <35.517475, 44.241661, 47.450302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750259, 43.929035, 47.540176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381966, 0.506622, 0.772940,
		-0.717928, -0.364002, 0.593365,
		0.581963, -0.781561, 0.224681,
		35.924847, 43.694569, 47.607582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506348, 44.899956, 47.753284>,  <35.517475, 44.241661, 47.450302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506348, 44.899956, 47.753284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299759, 45.242233, 47.740372>,  <35.175804, 45.447601, 47.732624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299759, 45.242233, 47.740372>,  <35.506348, 44.899956, 47.753284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299759, 45.242233, 47.740372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033458, -0.017508, -0.999287,
		-0.855650, -0.517185, -0.019587,
		-0.516473, 0.855694, -0.032285,
		35.144817, 45.498943, 47.730686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966339, 44.835773, 47.306320>,  <35.506348, 44.899956, 47.753284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966339, 44.835773, 47.306320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031052, 45.229820, 47.329556>,  <35.069878, 45.466248, 47.343494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.031052, 45.229820, 47.329556>,  <34.966339, 44.835773, 47.306320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031052, 45.229820, 47.329556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037771, 0.052636, -0.997899,
		-0.986104, 0.163635, -0.028693,
		0.161781, 0.985116, 0.058085,
		35.079586, 45.525356, 47.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476742, 45.206921, 46.873375>,  <34.966339, 44.835773, 47.306320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476742, 45.206921, 46.873375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791222, 45.449020, 46.923267>,  <34.979912, 45.594280, 46.953201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791222, 45.449020, 46.923267>,  <34.476742, 45.206921, 46.873375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791222, 45.449020, 46.923267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197209, -0.054446, -0.978848,
		-0.585658, 0.794171, -0.162166,
		0.786202, 0.605251, 0.124731,
		35.027081, 45.630596, 46.960686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394943, 45.692776, 46.433670>,  <34.476742, 45.206921, 46.873375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394943, 45.692776, 46.433670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788097, 45.714062, 46.504223>,  <35.023991, 45.726833, 46.546555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788097, 45.714062, 46.504223>,  <34.394943, 45.692776, 46.433670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788097, 45.714062, 46.504223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184216, -0.271366, -0.944682,
		-0.002410, 0.961004, -0.276525,
		0.982883, 0.053217, 0.176378,
		35.082962, 45.730026, 46.557137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513062, 45.793690, 45.829494>,  <34.394943, 45.692776, 46.433670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513062, 45.793690, 45.829494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858852, 45.716610, 46.015202>,  <35.066326, 45.670361, 46.126625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858852, 45.716610, 46.015202>,  <34.513062, 45.793690, 45.829494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858852, 45.716610, 46.015202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438253, -0.163410, -0.883873,
		0.246188, 0.967556, -0.056814,
		0.864480, -0.192700, 0.464264,
		35.118195, 45.658798, 46.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036518, 46.380203, 45.647331>,  <34.513062, 45.793690, 45.829494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036518, 46.380203, 45.647331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201591, 46.030598, 45.749935>,  <35.300636, 45.820835, 45.811497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201591, 46.030598, 45.749935>,  <35.036518, 46.380203, 45.647331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201591, 46.030598, 45.749935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411999, -0.072048, -0.908331,
		0.812373, 0.480535, 0.330358,
		0.412684, -0.874011, 0.256510,
		35.325397, 45.768394, 45.826889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698704, 46.372276, 45.267765>,  <35.036518, 46.380203, 45.647331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698704, 46.372276, 45.267765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625519, 45.990200, 45.360836>,  <35.581608, 45.760956, 45.416679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625519, 45.990200, 45.360836>,  <35.698704, 46.372276, 45.267765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625519, 45.990200, 45.360836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383370, -0.287261, -0.877786,
		0.905291, -0.071401, 0.418749,
		-0.182965, -0.955188, 0.232681,
		35.570629, 45.703644, 45.430641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352608, 46.024342, 45.068523>,  <35.698704, 46.372276, 45.267765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352608, 46.024342, 45.068523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066402, 45.747719, 45.108089>,  <35.894680, 45.581745, 45.131828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066402, 45.747719, 45.108089>,  <36.352608, 46.024342, 45.068523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066402, 45.747719, 45.108089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180444, -0.319737, -0.930166,
		0.674888, -0.647701, 0.353565,
		-0.715517, -0.691557, 0.098913,
		35.851746, 45.540253, 45.137764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571091, 45.408466, 44.766457>,  <36.352608, 46.024342, 45.068523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571091, 45.408466, 44.766457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182037, 45.315540, 44.767395>,  <35.948605, 45.259785, 44.767956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182037, 45.315540, 44.767395>,  <36.571091, 45.408466, 44.766457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182037, 45.315540, 44.767395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128904, -0.548028, -0.826468,
		0.193285, -0.803552, 0.562979,
		-0.972638, -0.232315, 0.002345,
		35.890247, 45.245846, 44.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603542, 44.647121, 44.570354>,  <36.571091, 45.408466, 44.766457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603542, 44.647121, 44.570354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231392, 44.775120, 44.498802>,  <36.008102, 44.851921, 44.455872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231392, 44.775120, 44.498802>,  <36.603542, 44.647121, 44.570354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231392, 44.775120, 44.498802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051283, -0.596748, -0.800789,
		-0.362999, -0.735862, 0.571611,
		-0.930377, 0.319999, -0.178882,
		35.952278, 44.871120, 44.445137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168526, 44.025238, 44.744865>,  <36.603542, 44.647121, 44.570354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168526, 44.025238, 44.744865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933544, 44.235596, 44.498829>,  <35.792557, 44.361813, 44.351208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933544, 44.235596, 44.498829>,  <36.168526, 44.025238, 44.744865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933544, 44.235596, 44.498829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017911, -0.768327, -0.639807,
		-0.809060, -0.364839, 0.460775,
		-0.587453, 0.525895, -0.615089,
		35.757309, 44.393364, 44.314301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648052, 43.639286, 44.469162>,  <36.168526, 44.025238, 44.744865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648052, 43.639286, 44.469162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660770, 43.943512, 44.209770>,  <35.668400, 44.126049, 44.054134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660770, 43.943512, 44.209770>,  <35.648052, 43.639286, 44.469162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660770, 43.943512, 44.209770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206510, -0.629808, -0.748797,
		-0.977928, 0.157723, 0.137042,
		0.031792, 0.760570, -0.648478,
		35.670307, 44.171684, 44.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156857, 43.454952, 44.016773>,  <35.648052, 43.639286, 44.469162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156857, 43.454952, 44.016773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395309, 43.718285, 43.832939>,  <35.538383, 43.876286, 43.722641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395309, 43.718285, 43.832939>,  <35.156857, 43.454952, 44.016773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395309, 43.718285, 43.832939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008763, -0.567047, -0.823639,
		-0.802835, 0.495028, -0.332269,
		0.596137, 0.658335, -0.459583,
		35.574150, 43.915787, 43.695065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730152, 43.555649, 43.487148>,  <35.156857, 43.454952, 44.016773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730152, 43.555649, 43.487148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113590, 43.637962, 43.408409>,  <35.343655, 43.687351, 43.361164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.113590, 43.637962, 43.408409>,  <34.730152, 43.555649, 43.487148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113590, 43.637962, 43.408409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031891, -0.609316, -0.792286,
		-0.282985, 0.765758, -0.577523,
		0.958594, 0.205788, -0.196848,
		35.401169, 43.699699, 43.349354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683384, 43.832104, 42.834488>,  <34.730152, 43.555649, 43.487148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683384, 43.832104, 42.834488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054382, 43.700741, 42.905922>,  <35.276981, 43.621922, 42.948784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054382, 43.700741, 42.905922>,  <34.683384, 43.832104, 42.834488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054382, 43.700741, 42.905922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015805, -0.511749, -0.858989,
		0.373490, 0.793890, -0.479838,
		0.927500, -0.328408, 0.178586,
		35.332634, 43.602219, 42.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107006, 44.012405, 42.374596>,  <34.683384, 43.832104, 42.834488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107006, 44.012405, 42.374596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751579, 43.838528, 42.433247>,  <33.538322, 43.734200, 42.468437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751579, 43.838528, 42.433247>,  <34.107006, 44.012405, 42.374596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751579, 43.838528, 42.433247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080603, 0.462575, 0.882908,
		-0.451620, 0.772701, -0.446064,
		-0.888562, -0.434693, 0.146626,
		33.485012, 43.708118, 42.477234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604145, 44.575520, 42.691601>,  <34.107006, 44.012405, 42.374596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604145, 44.575520, 42.691601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.414867, 44.227585, 42.747414>,  <33.301300, 44.018826, 42.780903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.414867, 44.227585, 42.747414>,  <33.604145, 44.575520, 42.691601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414867, 44.227585, 42.747414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280337, 0.298835, 0.912200,
		-0.835162, 0.392534, -0.385255,
		-0.473197, -0.869836, 0.139533,
		33.272907, 43.966633, 42.789272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903519, 44.746559, 42.854004>,  <33.604145, 44.575520, 42.691601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903519, 44.746559, 42.854004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970165, 44.379631, 42.998650>,  <33.010155, 44.159473, 43.085438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.970165, 44.379631, 42.998650>,  <32.903519, 44.746559, 42.854004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970165, 44.379631, 42.998650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408918, 0.269428, 0.871891,
		-0.897231, -0.293143, -0.330217,
		0.166618, -0.917320, 0.361611,
		33.020149, 44.104435, 43.107132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299049, 44.469215, 43.208645>,  <32.903519, 44.746559, 42.854004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299049, 44.469215, 43.208645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597645, 44.265152, 43.379524>,  <32.776802, 44.142715, 43.482052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597645, 44.265152, 43.379524>,  <32.299049, 44.469215, 43.208645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597645, 44.265152, 43.379524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349546, 0.245648, 0.904143,
		-0.566193, -0.824257, 0.005051,
		0.746487, -0.510154, 0.427201,
		32.821590, 44.112106, 43.507683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964207, 44.094131, 43.685444>,  <32.299049, 44.469215, 43.208645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964207, 44.094131, 43.685444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342876, 44.110489, 43.813282>,  <32.570076, 44.120304, 43.889984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.342876, 44.110489, 43.813282>,  <31.964207, 44.094131, 43.685444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342876, 44.110489, 43.813282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318628, 0.266054, 0.909775,
		-0.047828, -0.963091, 0.264894,
		0.946672, 0.040890, 0.319593,
		32.626877, 44.122757, 43.909161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984737, 43.634651, 44.402714>,  <31.964207, 44.094131, 43.685444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984737, 43.634651, 44.402714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325321, 43.844349, 44.408108>,  <32.529671, 43.970169, 44.411346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.325321, 43.844349, 44.408108>,  <31.984737, 43.634651, 44.402714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325321, 43.844349, 44.408108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301887, 0.468962, 0.830023,
		0.428805, -0.710807, 0.557565,
		0.851463, 0.524240, 0.013490,
		32.580761, 44.001621, 44.412155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322021, 43.597858, 45.035255>,  <31.984737, 43.634651, 44.402714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322021, 43.597858, 45.035255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473103, 43.943214, 44.901451>,  <32.563751, 44.150429, 44.821167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473103, 43.943214, 44.901451>,  <32.322021, 43.597858, 45.035255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473103, 43.943214, 44.901451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050296, 0.379870, 0.923672,
		0.924560, -0.332049, 0.186903,
		0.377703, 0.863390, -0.334512,
		32.586414, 44.202232, 44.801098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415943, 43.022511, 45.474461>,  <32.322021, 43.597858, 45.035255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415943, 43.022511, 45.474461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024845, 42.941814, 45.497494>,  <31.790186, 42.893394, 45.511314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024845, 42.941814, 45.497494>,  <32.415943, 43.022511, 45.474461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024845, 42.941814, 45.497494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019187, -0.359318, -0.933018,
		0.208921, -0.911148, 0.355192,
		-0.977744, -0.201742, 0.057587,
		31.731522, 42.881290, 45.514771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330841, 42.246517, 45.355915>,  <32.415943, 43.022511, 45.474461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330841, 42.246517, 45.355915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978613, 42.404209, 45.250713>,  <31.767275, 42.498825, 45.187592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.978613, 42.404209, 45.250713>,  <32.330841, 42.246517, 45.355915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978613, 42.404209, 45.250713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137327, -0.743428, -0.654565,
		-0.453574, -0.540276, 0.708782,
		-0.880574, 0.394229, -0.263006,
		31.714441, 42.522476, 45.171810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870808, 41.646736, 45.425999>,  <32.330841, 42.246517, 45.355915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870808, 41.646736, 45.425999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711056, 41.915585, 45.176601>,  <31.615204, 42.076893, 45.026962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711056, 41.915585, 45.176601>,  <31.870808, 41.646736, 45.425999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711056, 41.915585, 45.176601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216347, -0.729974, -0.648330,
		-0.890892, -0.124041, 0.436950,
		-0.399382, 0.672125, -0.623492,
		31.591242, 42.117222, 44.989555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416523, 41.258106, 45.100838>,  <31.870808, 41.646736, 45.425999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416523, 41.258106, 45.100838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416779, 41.565517, 44.844913>,  <31.416933, 41.749966, 44.691360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416779, 41.565517, 44.844913>,  <31.416523, 41.258106, 45.100838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416779, 41.565517, 44.844913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333567, -0.603003, -0.724652,
		-0.942726, 0.213884, 0.255970,
		0.000641, 0.768532, -0.639811,
		31.416971, 41.796078, 44.652969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727400, 41.264912, 44.731899>,  <31.416523, 41.258106, 45.100838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727400, 41.264912, 44.731899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979858, 41.494263, 44.522942>,  <31.131334, 41.631874, 44.397568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.979858, 41.494263, 44.522942>,  <30.727400, 41.264912, 44.731899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979858, 41.494263, 44.522942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234125, -0.501250, -0.833027,
		-0.739487, 0.648067, -0.182121,
		0.631146, 0.573373, -0.522396,
		31.169203, 41.666275, 44.366222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580284, 41.118793, 44.093651>,  <30.727400, 41.264912, 44.731899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580284, 41.118793, 44.093651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905315, 41.317928, 43.972408>,  <31.100334, 41.437408, 43.899662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.905315, 41.317928, 43.972408>,  <30.580284, 41.118793, 44.093651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905315, 41.317928, 43.972408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002930, -0.516548, -0.856253,
		-0.582842, 0.696663, -0.418278,
		0.812580, 0.497835, -0.303107,
		31.149090, 41.467278, 43.881477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515589, 41.331947, 43.376472>,  <30.580284, 41.118793, 44.093651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515589, 41.331947, 43.376472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.909084, 41.332851, 43.448303>,  <31.145182, 41.333393, 43.491402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.909084, 41.332851, 43.448303>,  <30.515589, 41.331947, 43.376472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909084, 41.332851, 43.448303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158826, -0.477734, -0.864028,
		0.083835, 0.878502, -0.470326,
		0.983741, 0.002264, 0.179579,
		31.204206, 41.333530, 43.502178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.009720, 40.547810, 48.901001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.862167, 40.892685, 48.762115>,  <35.773636, 41.099609, 48.678783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.862167, 40.892685, 48.762115>,  <36.009720, 40.547810, 48.901001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862167, 40.892685, 48.762115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290667, -0.461828, -0.837991,
		-0.882857, -0.208199, 0.420970,
		-0.368885, 0.862188, -0.347212,
		35.751503, 41.151340, 48.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396763, 40.404797, 48.668781>,  <36.009720, 40.547810, 48.901001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396763, 40.404797, 48.668781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.542431, 40.733059, 48.492645>,  <35.629833, 40.930016, 48.386963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.542431, 40.733059, 48.492645>,  <35.396763, 40.404797, 48.668781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542431, 40.733059, 48.492645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271362, -0.358788, -0.893103,
		-0.890921, 0.444735, 0.092035,
		0.364173, 0.820660, -0.440336,
		35.651684, 40.979256, 48.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850368, 40.760983, 48.167343>,  <35.396763, 40.404797, 48.668781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850368, 40.760983, 48.167343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.209187, 40.880211, 48.036823>,  <35.424477, 40.951748, 47.958511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.209187, 40.880211, 48.036823>,  <34.850368, 40.760983, 48.167343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209187, 40.880211, 48.036823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176701, -0.434836, -0.883003,
		-0.405086, 0.849747, -0.337395,
		0.897041, 0.298074, -0.326297,
		35.478298, 40.969631, 47.938934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787861, 41.052063, 47.511219>,  <34.850368, 40.760983, 48.167343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787861, 41.052063, 47.511219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168911, 40.933456, 47.538307>,  <35.397541, 40.862293, 47.554562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.168911, 40.933456, 47.538307>,  <34.787861, 41.052063, 47.511219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168911, 40.933456, 47.538307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079860, -0.458684, -0.885003,
		0.293484, 0.837666, -0.460633,
		0.952622, -0.296521, 0.067721,
		35.454697, 40.844501, 47.558624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014256, 41.101372, 46.850471>,  <34.787861, 41.052063, 47.511219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014256, 41.101372, 46.850471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292267, 40.871231, 47.022934>,  <35.459076, 40.733147, 47.126411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292267, 40.871231, 47.022934>,  <35.014256, 41.101372, 46.850471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292267, 40.871231, 47.022934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001465, -0.600813, -0.799388,
		0.718979, 0.554967, -0.418426,
		0.695030, -0.575356, 0.431159,
		35.500774, 40.698624, 47.152283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611942, 41.104000, 46.379852>,  <35.014256, 41.101372, 46.850471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611942, 41.104000, 46.379852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602638, 40.789978, 46.627445>,  <35.597057, 40.601562, 46.776001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.602638, 40.789978, 46.627445>,  <35.611942, 41.104000, 46.379852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602638, 40.789978, 46.627445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125107, -0.611999, -0.780901,
		0.991871, -0.095601, -0.083984,
		-0.023257, -0.785059, 0.618984,
		35.595661, 40.554459, 46.813141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966328, 40.485661, 46.006222>,  <35.611942, 41.104000, 46.379852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966328, 40.485661, 46.006222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790100, 40.298504, 46.312679>,  <35.684364, 40.186211, 46.496555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.790100, 40.298504, 46.312679>,  <35.966328, 40.485661, 46.006222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790100, 40.298504, 46.312679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184699, -0.787934, -0.587406,
		0.878512, -0.400300, 0.260721,
		-0.440570, -0.467889, 0.766145,
		35.657928, 40.158138, 46.542522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265438, 39.743996, 46.144394>,  <35.966328, 40.485661, 46.006222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265438, 39.743996, 46.144394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888561, 39.749954, 46.278294>,  <35.662437, 39.753529, 46.358635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888561, 39.749954, 46.278294>,  <36.265438, 39.743996, 46.144394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888561, 39.749954, 46.278294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209326, -0.806262, -0.553285,
		0.261657, -0.591371, 0.762769,
		-0.942188, 0.014897, 0.334753,
		35.605904, 39.754425, 46.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170910, 39.052101, 46.353065>,  <36.265438, 39.743996, 46.144394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170910, 39.052101, 46.353065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815022, 39.226910, 46.300289>,  <35.601490, 39.331795, 46.268623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815022, 39.226910, 46.300289>,  <36.170910, 39.052101, 46.353065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815022, 39.226910, 46.300289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336023, -0.822595, -0.458723,
		-0.309008, -0.363799, 0.878729,
		-0.889721, 0.437022, -0.131944,
		35.548107, 39.358017, 46.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684032, 38.591663, 46.481510>,  <36.170910, 39.052101, 46.353065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684032, 38.591663, 46.481510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493401, 38.858665, 46.252670>,  <35.379021, 39.018867, 46.115364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493401, 38.858665, 46.252670>,  <35.684032, 38.591663, 46.481510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493401, 38.858665, 46.252670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419702, -0.744568, -0.519104,
		-0.772475, -0.007284, 0.635004,
		-0.476585, 0.667507, -0.572102,
		35.350426, 39.058918, 46.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037655, 38.254921, 46.411392>,  <35.684032, 38.591663, 46.481510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037655, 38.254921, 46.411392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070961, 38.527031, 46.120110>,  <35.090946, 38.690296, 45.945339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.070961, 38.527031, 46.120110>,  <35.037655, 38.254921, 46.411392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070961, 38.527031, 46.120110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389986, -0.650222, -0.652015,
		-0.917048, 0.338284, 0.211156,
		0.083268, 0.680277, -0.728210,
		35.095940, 38.731113, 45.901646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336136, 38.235741, 46.157104>,  <35.037655, 38.254921, 46.411392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336136, 38.235741, 46.157104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621250, 38.369019, 45.910229>,  <34.792320, 38.448986, 45.762104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.621250, 38.369019, 45.910229>,  <34.336136, 38.235741, 46.157104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621250, 38.369019, 45.910229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162351, -0.777679, -0.607337,
		-0.682332, 0.533102, -0.500225,
		0.712787, 0.333193, -0.617185,
		34.835087, 38.468975, 45.725075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063309, 38.552666, 45.668453>,  <34.336136, 38.235741, 46.157104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063309, 38.552666, 45.668453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737537, 38.643345, 45.454792>,  <33.542076, 38.697754, 45.326595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.737537, 38.643345, 45.454792>,  <34.063309, 38.552666, 45.668453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737537, 38.643345, 45.454792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468110, 0.287303, 0.835661,
		0.342909, 0.930625, -0.127865,
		-0.814424, 0.226701, -0.534154,
		33.493210, 38.711357, 45.294544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980614, 39.256863, 45.776218>,  <34.063309, 38.552666, 45.668453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980614, 39.256863, 45.776218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631832, 39.100918, 45.657764>,  <33.422562, 39.007351, 45.586693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631832, 39.100918, 45.657764>,  <33.980614, 39.256863, 45.776218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631832, 39.100918, 45.657764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485038, 0.605686, 0.630779,
		-0.066553, 0.693650, -0.717231,
		-0.871957, -0.389864, -0.296137,
		33.370247, 38.983959, 45.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483292, 39.827595, 45.728806>,  <33.980614, 39.256863, 45.776218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483292, 39.827595, 45.728806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256302, 39.498447, 45.740604>,  <33.120110, 39.300961, 45.747684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256302, 39.498447, 45.740604>,  <33.483292, 39.827595, 45.728806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256302, 39.498447, 45.740604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648187, 0.468524, 0.600283,
		-0.507772, 0.321524, -0.799243,
		-0.567470, -0.822866, 0.029496,
		33.086060, 39.251587, 45.749454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898693, 40.157207, 45.770988>,  <33.483292, 39.827595, 45.728806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898693, 40.157207, 45.770988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.836899, 39.777695, 45.881218>,  <32.799820, 39.549988, 45.947357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.836899, 39.777695, 45.881218>,  <32.898693, 40.157207, 45.770988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836899, 39.777695, 45.881218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706234, 0.301102, 0.640757,
		-0.690917, -0.095629, -0.716582,
		-0.154489, -0.948785, 0.275573,
		32.790550, 39.493061, 45.963890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261898, 39.996204, 45.549210>,  <32.898693, 40.157207, 45.770988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261898, 39.996204, 45.549210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363140, 39.794411, 45.879406>,  <32.423885, 39.673336, 46.077522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.363140, 39.794411, 45.879406>,  <32.261898, 39.996204, 45.549210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363140, 39.794411, 45.879406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694082, 0.499711, 0.518207,
		-0.673933, -0.704121, -0.223671,
		0.253110, -0.504483, 0.825489,
		32.439072, 39.643066, 46.127052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726950, 40.016563, 46.021454>,  <32.261898, 39.996204, 45.549210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726950, 40.016563, 46.021454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010414, 39.887009, 46.272182>,  <32.180492, 39.809277, 46.422619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010414, 39.887009, 46.272182>,  <31.726950, 40.016563, 46.021454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010414, 39.887009, 46.272182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465523, 0.452946, 0.760347,
		-0.530178, -0.830626, 0.170210,
		0.708660, -0.323883, 0.626817,
		32.223011, 39.789845, 46.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305910, 39.683140, 46.485569>,  <31.726950, 40.016563, 46.021454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305910, 39.683140, 46.485569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650650, 39.726913, 46.683659>,  <31.857494, 39.753178, 46.802513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650650, 39.726913, 46.683659>,  <31.305910, 39.683140, 46.485569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650650, 39.726913, 46.683659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506237, 0.244711, 0.826946,
		-0.030691, -0.963401, 0.266302,
		0.861848, 0.109432, 0.495220,
		31.909204, 39.759743, 46.832226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074692, 39.529121, 47.144409>,  <31.305910, 39.683140, 46.485569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074692, 39.529121, 47.144409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.416334, 39.735420, 47.171284>,  <31.621319, 39.859200, 47.187408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.416334, 39.735420, 47.171284>,  <31.074692, 39.529121, 47.144409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416334, 39.735420, 47.171284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350818, 0.475919, 0.806491,
		0.383969, -0.712397, 0.587417,
		0.854105, 0.515744, 0.067183,
		31.672565, 39.890144, 47.191441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370245, 39.475159, 47.881245>,  <31.074692, 39.529121, 47.144409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370245, 39.475159, 47.881245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522583, 39.807770, 47.719494>,  <31.613985, 40.007336, 47.622444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522583, 39.807770, 47.719494>,  <31.370245, 39.475159, 47.881245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522583, 39.807770, 47.719494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115289, 0.476622, 0.871516,
		0.917424, -0.285292, 0.277385,
		0.380844, 0.831529, -0.404373,
		31.636837, 40.057228, 47.598183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576313, 39.891678, 48.426136>,  <31.370245, 39.475159, 47.881245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576313, 39.891678, 48.426136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.630041, 40.179317, 48.153416>,  <31.662279, 40.351902, 47.989784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.630041, 40.179317, 48.153416>,  <31.576313, 39.891678, 48.426136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630041, 40.179317, 48.153416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198959, 0.693596, 0.692344,
		0.970759, 0.042654, 0.236237,
		0.134322, 0.719100, -0.681801,
		31.670338, 40.395046, 47.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097126, 40.366413, 48.711075>,  <31.576313, 39.891678, 48.426136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097126, 40.366413, 48.711075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.871386, 40.563358, 48.446022>,  <31.735941, 40.681526, 48.286991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.871386, 40.563358, 48.446022>,  <32.097126, 40.366413, 48.711075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871386, 40.563358, 48.446022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174744, 0.713239, 0.678789,
		0.806829, 0.498867, -0.316480,
		-0.564351, 0.492363, -0.662636,
		31.702080, 40.711067, 48.247231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173973, 41.108067, 48.971718>,  <32.097126, 40.366413, 48.711075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173973, 41.108067, 48.971718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834270, 41.044910, 48.770187>,  <31.630449, 41.007019, 48.649269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834270, 41.044910, 48.770187>,  <32.173973, 41.108067, 48.971718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834270, 41.044910, 48.770187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431889, 0.756640, 0.490885,
		0.303709, 0.634483, -0.710769,
		-0.849254, -0.157887, -0.503825,
		31.579494, 40.997543, 48.619041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058220, 41.862667, 48.771374>,  <32.173973, 41.108067, 48.971718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058220, 41.862667, 48.771374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740606, 41.619850, 48.758701>,  <31.550037, 41.474159, 48.751099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.740606, 41.619850, 48.758701>,  <32.058220, 41.862667, 48.771374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740606, 41.619850, 48.758701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546111, 0.689508, 0.475754,
		-0.266961, 0.395066, -0.879008,
		-0.794037, -0.607044, -0.031678,
		31.502396, 41.437737, 48.749199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467411, 42.256920, 48.631969>,  <32.058220, 41.862667, 48.771374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467411, 42.256920, 48.631969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308058, 41.938217, 48.813725>,  <31.212446, 41.746994, 48.922779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.308058, 41.938217, 48.813725>,  <31.467411, 42.256920, 48.631969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308058, 41.938217, 48.813725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658961, 0.593219, 0.462452,
		-0.638015, -0.115193, -0.761359,
		-0.398381, -0.796757, 0.454390,
		31.188543, 41.699188, 48.950043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775631, 42.529900, 48.358078>,  <31.467411, 42.256920, 48.631969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775631, 42.529900, 48.358078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.949911, 42.883137, 48.288441>,  <31.054480, 43.095078, 48.246658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.949911, 42.883137, 48.288441>,  <30.775631, 42.529900, 48.358078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949911, 42.883137, 48.288441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265538, -0.058698, -0.962312,
		-0.860031, 0.465510, 0.208920,
		0.435703, 0.883094, -0.174093,
		31.080622, 43.148064, 48.236214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334356, 42.974712, 47.965878>,  <30.775631, 42.529900, 48.358078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334356, 42.974712, 47.965878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695356, 43.129837, 47.890942>,  <30.911957, 43.222912, 47.845982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695356, 43.129837, 47.890942>,  <30.334356, 42.974712, 47.965878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695356, 43.129837, 47.890942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194062, -0.022142, -0.980739,
		-0.384492, 0.921472, 0.055276,
		0.902500, 0.387813, -0.187336,
		30.966106, 43.246181, 47.834740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255976, 43.535225, 47.440655>,  <30.334356, 42.974712, 47.965878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255976, 43.535225, 47.440655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645151, 43.444080, 47.425323>,  <30.878656, 43.389393, 47.416126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.645151, 43.444080, 47.425323>,  <30.255976, 43.535225, 47.440655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645151, 43.444080, 47.425323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083736, -0.193103, -0.977599,
		0.215353, 0.954354, -0.206958,
		0.972940, -0.227858, -0.038328,
		30.937033, 43.375721, 47.413826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437252, 43.661877, 46.755264>,  <30.255976, 43.535225, 47.440655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437252, 43.661877, 46.755264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787619, 43.507721, 46.871368>,  <30.997839, 43.415230, 46.941032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.787619, 43.507721, 46.871368>,  <30.437252, 43.661877, 46.755264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787619, 43.507721, 46.871368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241998, -0.169520, -0.955353,
		0.417385, 0.907051, -0.055222,
		0.875915, -0.385386, 0.290260,
		31.050394, 43.392105, 46.958447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947075, 44.010849, 46.370628>,  <30.437252, 43.661877, 46.755264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947075, 44.010849, 46.370628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.082417, 43.652603, 46.486134>,  <31.163622, 43.437656, 46.555435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.082417, 43.652603, 46.486134>,  <30.947075, 44.010849, 46.370628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082417, 43.652603, 46.486134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366798, -0.157068, -0.916946,
		0.866588, 0.416173, 0.275365,
		0.338357, -0.895617, 0.288765,
		31.183924, 43.383919, 46.572762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606621, 43.945873, 46.102787>,  <30.947075, 44.010849, 46.370628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606621, 43.945873, 46.102787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.478775, 43.572338, 46.167030>,  <31.402067, 43.348217, 46.205578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.478775, 43.572338, 46.167030>,  <31.606621, 43.945873, 46.102787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478775, 43.572338, 46.167030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198838, -0.231828, -0.952218,
		0.926450, -0.272408, 0.259777,
		-0.319615, -0.933836, 0.160612,
		31.382891, 43.292187, 46.215214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115753, 43.603565, 45.785263>,  <31.606621, 43.945873, 46.102787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115753, 43.603565, 45.785263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.808064, 43.351978, 45.830330>,  <31.623449, 43.201027, 45.857368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.808064, 43.351978, 45.830330>,  <32.115753, 43.603565, 45.785263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808064, 43.351978, 45.830330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180923, -0.383498, -0.905647,
		0.612826, -0.676265, 0.408791,
		-0.769228, -0.628964, 0.112665,
		31.577295, 43.163288, 45.864128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802238, 43.662724, 45.555836>,  <32.115753, 43.603565, 45.785263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802238, 43.662724, 45.555836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780437, 44.005932, 45.351551>,  <32.767357, 44.211857, 45.228981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.780437, 44.005932, 45.351551>,  <32.802238, 43.662724, 45.555836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780437, 44.005932, 45.351551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121777, 0.513362, 0.849488,
		0.991060, -0.015894, -0.132467,
		-0.054502, 0.858025, -0.510708,
		32.764088, 44.263340, 45.198338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373302, 44.035271, 45.728245>,  <32.802238, 43.662724, 45.555836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373302, 44.035271, 45.728245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124508, 44.328594, 45.618420>,  <32.975231, 44.504589, 45.552525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124508, 44.328594, 45.618420>,  <33.373302, 44.035271, 45.728245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124508, 44.328594, 45.618420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236153, 0.509988, 0.827130,
		0.746567, 0.449627, -0.490380,
		-0.621988, 0.733313, -0.274560,
		32.937912, 44.548588, 45.536053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714153, 44.632320, 45.977711>,  <33.373302, 44.035271, 45.728245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714153, 44.632320, 45.977711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.331398, 44.740211, 45.934612>,  <33.101746, 44.804947, 45.908752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.331398, 44.740211, 45.934612>,  <33.714153, 44.632320, 45.977711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331398, 44.740211, 45.934612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042421, 0.496766, 0.866847,
		0.287337, 0.824906, -0.486793,
		-0.956890, 0.269727, -0.107746,
		33.044331, 44.821129, 45.902290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773914, 45.291901, 46.082256>,  <33.714153, 44.632320, 45.977711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773914, 45.291901, 46.082256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.379780, 45.234154, 46.118614>,  <33.143299, 45.199505, 46.140430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.379780, 45.234154, 46.118614>,  <33.773914, 45.291901, 46.082256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379780, 45.234154, 46.118614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048176, 0.746581, 0.663548,
		-0.163655, 0.649442, -0.742591,
		-0.985341, -0.144368, 0.090894,
		33.084179, 45.190842, 46.145882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483418, 45.936703, 46.104786>,  <33.773914, 45.291901, 46.082256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483418, 45.936703, 46.104786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.224617, 45.689922, 46.284012>,  <33.069336, 45.541855, 46.391548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.224617, 45.689922, 46.284012>,  <33.483418, 45.936703, 46.104786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224617, 45.689922, 46.284012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022607, 0.602892, 0.797503,
		-0.762154, 0.505856, -0.404018,
		-0.647001, -0.616954, 0.448061,
		33.030518, 45.504837, 46.418430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097694, 46.389217, 46.393829>,  <33.483418, 45.936703, 46.104786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097694, 46.389217, 46.393829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013889, 46.056751, 46.599846>,  <32.963608, 45.857273, 46.723457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013889, 46.056751, 46.599846>,  <33.097694, 46.389217, 46.393829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013889, 46.056751, 46.599846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083221, 0.509667, 0.856338,
		-0.974258, 0.222277, -0.037612,
		-0.209514, -0.831163, 0.515045,
		32.951035, 45.807404, 46.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569130, 46.534061, 46.937103>,  <33.097694, 46.389217, 46.393829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569130, 46.534061, 46.937103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781807, 46.217556, 47.057903>,  <32.909412, 46.027653, 47.130383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781807, 46.217556, 47.057903>,  <32.569130, 46.534061, 46.937103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781807, 46.217556, 47.057903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101333, 0.413447, 0.904872,
		-0.840851, -0.450516, 0.300009,
		0.531697, -0.791263, 0.301995,
		32.941315, 45.980179, 47.148502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357338, 46.488258, 47.583351>,  <32.569130, 46.534061, 46.937103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357338, 46.488258, 47.583351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688396, 46.263920, 47.574802>,  <32.887032, 46.129318, 47.569672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688396, 46.263920, 47.574802>,  <32.357338, 46.488258, 47.583351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688396, 46.263920, 47.574802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295832, 0.403567, 0.865804,
		-0.476958, -0.722900, 0.499926,
		0.827644, -0.560847, -0.021372,
		32.936691, 46.095665, 47.568390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354584, 46.074657, 48.336948>,  <32.357338, 46.488258, 47.583351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354584, 46.074657, 48.336948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714474, 46.136097, 48.173531>,  <32.930408, 46.172962, 48.075481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714474, 46.136097, 48.173531>,  <32.354584, 46.074657, 48.336948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714474, 46.136097, 48.173531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251225, 0.583177, 0.772522,
		0.356910, -0.797691, 0.486110,
		0.899723, 0.153598, -0.408542,
		32.984390, 46.182175, 48.050968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.415962, 37.961376, 33.957138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785370, 37.950466, 34.110172>,  <36.007015, 37.943920, 34.201992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785370, 37.950466, 34.110172>,  <35.415962, 37.961376, 33.957138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785370, 37.950466, 34.110172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351735, 0.337571, 0.873114,
		-0.152961, -0.940905, 0.302160,
		0.923518, -0.027273, 0.382584,
		36.062424, 37.942284, 34.224949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587181, 37.399826, 34.488483>,  <35.415962, 37.961376, 33.957138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587181, 37.399826, 34.488483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783016, 37.744446, 34.542194>,  <35.900517, 37.951218, 34.574421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783016, 37.744446, 34.542194>,  <35.587181, 37.399826, 34.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783016, 37.744446, 34.542194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597894, 0.219614, 0.770903,
		0.634683, -0.457711, 0.622638,
		0.489591, 0.861551, 0.134277,
		35.929893, 38.002911, 34.582478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653446, 37.533382, 35.311710>,  <35.587181, 37.399826, 34.488483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653446, 37.533382, 35.311710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685989, 37.865448, 35.091091>,  <35.705517, 38.064686, 34.958717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685989, 37.865448, 35.091091>,  <35.653446, 37.533382, 35.311710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685989, 37.865448, 35.091091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604523, 0.481078, 0.634915,
		0.792422, 0.281768, 0.540994,
		0.081362, 0.830164, -0.551551,
		35.710400, 38.114498, 34.925625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917061, 38.025791, 35.737110>,  <35.653446, 37.533382, 35.311710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917061, 38.025791, 35.737110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741745, 38.249371, 35.455547>,  <35.636555, 38.383518, 35.286610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741745, 38.249371, 35.455547>,  <35.917061, 38.025791, 35.737110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741745, 38.249371, 35.455547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402495, 0.578180, 0.709722,
		0.803681, 0.594380, -0.028435,
		-0.438285, 0.558945, -0.703908,
		35.610260, 38.417053, 35.244373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994598, 38.721313, 35.939251>,  <35.917061, 38.025791, 35.737110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994598, 38.721313, 35.939251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697502, 38.749214, 35.672874>,  <35.519245, 38.765953, 35.513050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697502, 38.749214, 35.672874>,  <35.994598, 38.721313, 35.939251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697502, 38.749214, 35.672874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550120, 0.503421, 0.666285,
		0.381722, 0.861222, -0.335538,
		-0.742736, 0.069749, -0.665942,
		35.474682, 38.770138, 35.473091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782261, 39.406761, 35.916904>,  <35.994598, 38.721313, 35.939251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782261, 39.406761, 35.916904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462421, 39.197742, 35.798523>,  <35.270519, 39.072330, 35.727493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462421, 39.197742, 35.798523>,  <35.782261, 39.406761, 35.916904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462421, 39.197742, 35.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583095, 0.557645, 0.590790,
		-0.143674, 0.644966, -0.750584,
		-0.799599, -0.522543, -0.295957,
		35.222542, 39.040981, 35.709736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328861, 39.881207, 35.906399>,  <35.782261, 39.406761, 35.916904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328861, 39.881207, 35.906399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079136, 39.568867, 35.897350>,  <34.929302, 39.381462, 35.891922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079136, 39.568867, 35.897350>,  <35.328861, 39.881207, 35.906399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079136, 39.568867, 35.897350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594991, 0.456549, 0.661475,
		-0.506181, 0.426429, -0.749626,
		-0.624313, -0.780846, -0.022625,
		34.891842, 39.334614, 35.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681992, 40.193367, 35.796539>,  <35.328861, 39.881207, 35.906399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681992, 40.193367, 35.796539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595280, 39.827744, 35.933659>,  <34.543251, 39.608372, 36.015930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595280, 39.827744, 35.933659>,  <34.681992, 40.193367, 35.796539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595280, 39.827744, 35.933659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655736, 0.396473, 0.642510,
		-0.723199, -0.085501, -0.685327,
		-0.216778, -0.914056, 0.342795,
		34.530247, 39.553528, 36.036495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963234, 40.173347, 35.881241>,  <34.681992, 40.193367, 35.796539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963234, 40.173347, 35.881241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132805, 39.912830, 36.132988>,  <34.234547, 39.756519, 36.284035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132805, 39.912830, 36.132988>,  <33.963234, 40.173347, 35.881241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132805, 39.912830, 36.132988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528634, 0.386312, 0.755850,
		-0.735413, -0.653129, -0.180529,
		0.423927, -0.651295, 0.629365,
		34.259983, 39.717442, 36.321796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346001, 39.896149, 36.162449>,  <33.963234, 40.173347, 35.881241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346001, 39.896149, 36.162449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644394, 39.820068, 36.417740>,  <33.823429, 39.774422, 36.570915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644394, 39.820068, 36.417740>,  <33.346001, 39.896149, 36.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644394, 39.820068, 36.417740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612378, 0.180741, 0.769627,
		-0.261739, -0.964964, 0.018354,
		0.745980, -0.190202, 0.638229,
		33.868187, 39.763008, 36.609207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043369, 39.503609, 36.839718>,  <33.346001, 39.896149, 36.162449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043369, 39.503609, 36.839718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399269, 39.675270, 36.901913>,  <33.612808, 39.778267, 36.939228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399269, 39.675270, 36.901913>,  <33.043369, 39.503609, 36.839718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399269, 39.675270, 36.901913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284728, 0.255588, 0.923907,
		0.356755, -0.866317, 0.349600,
		0.889750, 0.429150, 0.155483,
		33.666195, 39.804016, 36.948559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213650, 39.282528, 37.480293>,  <33.043369, 39.503609, 36.839718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213650, 39.282528, 37.480293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424511, 39.615807, 37.413494>,  <33.551029, 39.815773, 37.373413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424511, 39.615807, 37.413494>,  <33.213650, 39.282528, 37.480293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424511, 39.615807, 37.413494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251277, 0.340579, 0.906016,
		0.811766, -0.435649, 0.388902,
		0.527157, 0.833196, -0.167002,
		33.582657, 39.865765, 37.363392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868118, 38.747059, 37.854485>,  <33.213650, 39.282528, 37.480293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868118, 38.747059, 37.854485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478001, 38.764343, 37.941143>,  <32.243931, 38.774715, 37.993137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478001, 38.764343, 37.941143>,  <32.868118, 38.747059, 37.854485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478001, 38.764343, 37.941143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206903, -0.522383, -0.827228,
		0.077429, -0.851615, 0.518417,
		-0.975293, 0.043211, 0.216649,
		32.185413, 38.777306, 38.006138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574207, 38.114914, 37.757523>,  <32.868118, 38.747059, 37.854485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574207, 38.114914, 37.757523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240585, 38.335518, 37.762947>,  <32.040413, 38.467880, 37.766201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240585, 38.335518, 37.762947>,  <32.574207, 38.114914, 37.757523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240585, 38.335518, 37.762947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377271, -0.552266, -0.743417,
		-0.402510, -0.625171, 0.668690,
		-0.834058, 0.551510, 0.013567,
		31.990368, 38.500973, 37.767017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098648, 37.659660, 37.846867>,  <32.574207, 38.114914, 37.757523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098648, 37.659660, 37.846867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922028, 37.982967, 37.691055>,  <31.816055, 38.176952, 37.597569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922028, 37.982967, 37.691055>,  <32.098648, 37.659660, 37.846867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922028, 37.982967, 37.691055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468189, -0.577910, -0.668445,
		-0.765397, -0.112779, 0.633600,
		-0.441550, 0.808270, -0.389529,
		31.789562, 38.225449, 37.574196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500713, 37.424286, 37.729237>,  <32.098648, 37.659660, 37.846867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500713, 37.424286, 37.729237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515284, 37.738724, 37.482426>,  <31.524027, 37.927387, 37.334339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515284, 37.738724, 37.482426>,  <31.500713, 37.424286, 37.729237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515284, 37.738724, 37.482426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412344, -0.550604, -0.725816,
		-0.910300, 0.280867, 0.304085,
		0.036427, 0.786097, -0.617028,
		31.526211, 37.974552, 37.297318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809887, 37.407928, 37.385120>,  <31.500713, 37.424286, 37.729237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809887, 37.407928, 37.385120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062326, 37.626011, 37.164406>,  <31.213791, 37.756859, 37.031979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062326, 37.626011, 37.164406>,  <30.809887, 37.407928, 37.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062326, 37.626011, 37.164406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512059, -0.241513, -0.824298,
		-0.582673, 0.802761, 0.126757,
		0.631101, 0.545203, -0.551784,
		31.251657, 37.789570, 36.998871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481441, 37.860401, 36.954613>,  <30.809887, 37.407928, 37.385120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481441, 37.860401, 36.954613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834393, 37.819324, 36.770935>,  <31.046164, 37.794678, 36.660728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834393, 37.819324, 36.770935>,  <30.481441, 37.860401, 36.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834393, 37.819324, 36.770935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468110, -0.290612, -0.834516,
		-0.047748, 0.951314, -0.304502,
		0.882379, -0.102694, -0.459196,
		31.099106, 37.788517, 36.633175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400858, 37.972427, 36.265709>,  <30.481441, 37.860401, 36.954613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400858, 37.972427, 36.265709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743464, 37.766579, 36.281441>,  <30.949026, 37.643070, 36.290878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743464, 37.766579, 36.281441>,  <30.400858, 37.972427, 36.265709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743464, 37.766579, 36.281441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305454, -0.566847, -0.765103,
		0.416034, 0.643307, -0.642706,
		0.856512, -0.514626, 0.039327,
		31.000418, 37.612190, 36.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427992, 37.723972, 35.523743>,  <30.400858, 37.972427, 36.265709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427992, 37.723972, 35.523743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712734, 37.518238, 35.715038>,  <30.883579, 37.394798, 35.829815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712734, 37.518238, 35.715038>,  <30.427992, 37.723972, 35.523743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712734, 37.518238, 35.715038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046635, -0.714056, -0.698534,
		0.700774, 0.474954, -0.532292,
		0.711857, -0.514338, 0.478242,
		30.926292, 37.363937, 35.858509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973539, 37.482220, 34.971733>,  <30.427992, 37.723972, 35.523743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973539, 37.482220, 34.971733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971897, 37.243206, 35.292465>,  <30.970911, 37.099796, 35.484905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971897, 37.243206, 35.292465>,  <30.973539, 37.482220, 34.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971897, 37.243206, 35.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150389, -0.792350, -0.591239,
		0.988618, -0.123015, -0.086609,
		-0.004106, -0.597535, 0.801832,
		30.970665, 37.063946, 35.533016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379862, 36.986828, 34.839172>,  <30.973539, 37.482220, 34.971733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379862, 36.986828, 34.839172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151379, 36.823189, 35.123810>,  <31.014290, 36.725006, 35.294590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151379, 36.823189, 35.123810>,  <31.379862, 36.986828, 34.839172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151379, 36.823189, 35.123810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090330, -0.830343, -0.549883,
		0.815821, -0.378374, 0.437343,
		-0.571206, -0.409101, 0.711590,
		30.980017, 36.700459, 35.337288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579033, 36.226105, 34.954762>,  <31.379862, 36.986828, 34.839172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579033, 36.226105, 34.954762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201834, 36.256786, 35.084297>,  <30.975513, 36.275196, 35.162018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201834, 36.256786, 35.084297>,  <31.579033, 36.226105, 34.954762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201834, 36.256786, 35.084297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232523, -0.848012, -0.476244,
		0.238091, -0.524397, 0.817508,
		-0.942998, 0.076700, 0.323839,
		30.918934, 36.279797, 35.181450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275738, 35.647709, 34.861542>,  <31.579033, 36.226105, 34.954762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275738, 35.647709, 34.861542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917051, 35.804676, 34.943428>,  <30.701839, 35.898857, 34.992561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917051, 35.804676, 34.943428>,  <31.275738, 35.647709, 34.861542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917051, 35.804676, 34.943428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432130, -0.676180, -0.596694,
		-0.095726, -0.623530, 0.775917,
		-0.896716, 0.392416, 0.204718,
		30.648037, 35.922401, 35.004845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887903, 35.027870, 34.955288>,  <31.275738, 35.647709, 34.861542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887903, 35.027870, 34.955288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661057, 35.344437, 34.864033>,  <30.524948, 35.534374, 34.809280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661057, 35.344437, 34.864033>,  <30.887903, 35.027870, 34.955288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661057, 35.344437, 34.864033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634722, -0.596454, -0.491294,
		-0.524887, -0.133820, 0.840587,
		-0.567117, 0.791413, -0.228132,
		30.490921, 35.581860, 34.795593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221039, 34.795948, 34.896637>,  <30.887903, 35.027870, 34.955288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221039, 34.795948, 34.896637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185989, 35.132927, 34.683994>,  <30.164959, 35.335114, 34.556408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185989, 35.132927, 34.683994>,  <30.221039, 34.795948, 34.896637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185989, 35.132927, 34.683994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613559, -0.466059, -0.637443,
		-0.784772, 0.270314, 0.557731,
		-0.087626, 0.842449, -0.531603,
		30.159702, 35.385662, 34.524513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454004, 34.911827, 35.507652>,  <30.221039, 34.795948, 34.896637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454004, 34.911827, 35.507652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244055, 35.000469, 35.836384>,  <30.118086, 35.053654, 36.033623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244055, 35.000469, 35.836384>,  <30.454004, 34.911827, 35.507652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244055, 35.000469, 35.836384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805334, 0.441888, 0.395186,
		-0.275580, 0.869268, -0.410401,
		-0.524874, 0.221604, 0.821826,
		30.086592, 35.066952, 36.082932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470308, 35.618935, 35.676369>,  <30.454004, 34.911827, 35.507652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470308, 35.618935, 35.676369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373461, 35.436520, 36.018925>,  <30.315353, 35.327072, 36.224461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373461, 35.436520, 36.018925>,  <30.470308, 35.618935, 35.676369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373461, 35.436520, 36.018925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833067, 0.354760, 0.424435,
		-0.497372, 0.816197, 0.294014,
		-0.242118, -0.456036, 0.856394,
		30.300825, 35.299709, 36.275845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212456, 35.397758, 35.786568>,  <30.470308, 35.618935, 35.676369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212456, 35.397758, 35.786568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421350, 35.063507, 35.854671>,  <31.546686, 34.862957, 35.895535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421350, 35.063507, 35.854671>,  <31.212456, 35.397758, 35.786568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421350, 35.063507, 35.854671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123942, 0.123160, 0.984617,
		-0.843747, -0.535305, -0.039251,
		0.522236, -0.835632, 0.170262,
		31.578022, 34.812817, 35.905750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855698, 34.932816, 36.264717>,  <31.212456, 35.397758, 35.786568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855698, 34.932816, 36.264717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239044, 34.823856, 36.298973>,  <31.469051, 34.758480, 36.319527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239044, 34.823856, 36.298973>,  <30.855698, 34.932816, 36.264717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239044, 34.823856, 36.298973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072656, 0.057418, 0.995703,
		-0.276146, -0.960469, 0.035236,
		0.958365, -0.272399, 0.085640,
		31.526554, 34.742138, 36.324665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953472, 34.254585, 36.704006>,  <30.855698, 34.932816, 36.264717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953472, 34.254585, 36.704006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308226, 34.439213, 36.696068>,  <31.521078, 34.549988, 36.691307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308226, 34.439213, 36.696068>,  <30.953472, 34.254585, 36.704006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308226, 34.439213, 36.696068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134638, -0.217136, 0.966811,
		0.441943, -0.860119, -0.254719,
		0.886882, 0.461570, -0.019842,
		31.574289, 34.577682, 36.690117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385353, 33.812595, 37.050285>,  <30.953472, 34.254585, 36.704006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385353, 33.812595, 37.050285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555412, 34.174633, 37.053089>,  <31.657448, 34.391857, 37.054771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555412, 34.174633, 37.053089>,  <31.385353, 33.812595, 37.050285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555412, 34.174633, 37.053089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034177, 0.008313, 0.999381,
		0.904478, -0.425126, 0.034468,
		0.425150, 0.905096, 0.007010,
		31.682957, 34.446163, 37.055191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947706, 33.746532, 37.515377>,  <31.385353, 33.812595, 37.050285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947706, 33.746532, 37.515377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868275, 34.137600, 37.487850>,  <31.820616, 34.372238, 37.471333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868275, 34.137600, 37.487850>,  <31.947706, 33.746532, 37.515377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868275, 34.137600, 37.487850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063951, 0.082995, 0.994496,
		0.977996, 0.193084, -0.079004,
		-0.198579, 0.977665, -0.068821,
		31.808701, 34.430901, 37.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346684, 33.978916, 38.078964>,  <31.947706, 33.746532, 37.515377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346684, 33.978916, 38.078964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107151, 34.290344, 38.003876>,  <31.963432, 34.477200, 37.958824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107151, 34.290344, 38.003876>,  <32.346684, 33.978916, 38.078964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107151, 34.290344, 38.003876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005942, 0.230063, 0.973158,
		0.800856, 0.583869, -0.133141,
		-0.598827, 0.778568, -0.187717,
		31.927504, 34.523914, 37.947559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797935, 34.609135, 38.308861>,  <32.346684, 33.978916, 38.078964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797935, 34.609135, 38.308861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404892, 34.680893, 38.289711>,  <32.169064, 34.723949, 38.278221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404892, 34.680893, 38.289711>,  <32.797935, 34.609135, 38.308861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404892, 34.680893, 38.289711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011861, 0.317961, 0.948030,
		0.185299, 0.930976, -0.314560,
		-0.982611, 0.179400, -0.047875,
		32.110107, 34.734715, 38.275349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676121, 35.295395, 38.599197>,  <32.797935, 34.609135, 38.308861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676121, 35.295395, 38.599197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311859, 35.132553, 38.627422>,  <32.093304, 35.034847, 38.644356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311859, 35.132553, 38.627422>,  <32.676121, 35.295395, 38.599197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311859, 35.132553, 38.627422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143791, 0.472365, 0.869595,
		-0.387348, 0.781752, -0.488698,
		-0.910651, -0.407106, 0.070561,
		32.038662, 35.010422, 38.648590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173344, 35.828163, 38.619148>,  <32.676121, 35.295395, 38.599197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173344, 35.828163, 38.619148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982025, 35.521019, 38.789619>,  <31.867235, 35.336731, 38.891903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982025, 35.521019, 38.789619>,  <32.173344, 35.828163, 38.619148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982025, 35.521019, 38.789619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080543, 0.521594, 0.849384,
		-0.874499, 0.371929, -0.311321,
		-0.478294, -0.767859, 0.426177,
		31.838537, 35.290661, 38.917473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653240, 36.099319, 38.825092>,  <32.173344, 35.828163, 38.619148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653240, 36.099319, 38.825092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693949, 35.761276, 39.035019>,  <31.718374, 35.558449, 39.160973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693949, 35.761276, 39.035019>,  <31.653240, 36.099319, 38.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693949, 35.761276, 39.035019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135106, 0.510921, 0.848944,
		-0.985591, -0.157304, -0.062182,
		0.101773, -0.845112, 0.524812,
		31.724480, 35.507744, 39.192463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175394, 36.165768, 39.362720>,  <31.653240, 36.099319, 38.825092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175394, 36.165768, 39.362720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414499, 35.885658, 39.518822>,  <31.557962, 35.717594, 39.612484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414499, 35.885658, 39.518822>,  <31.175394, 36.165768, 39.362720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414499, 35.885658, 39.518822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156574, 0.375442, 0.913525,
		-0.786236, -0.607173, 0.114780,
		0.597761, -0.700274, 0.390253,
		31.593828, 35.675575, 39.635899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890686, 36.029282, 40.013817>,  <31.175394, 36.165768, 39.362720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890686, 36.029282, 40.013817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264807, 35.892609, 40.050625>,  <31.489279, 35.810604, 40.072708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264807, 35.892609, 40.050625>,  <30.890686, 36.029282, 40.013817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264807, 35.892609, 40.050625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057120, 0.402425, 0.913669,
		-0.349216, -0.849298, 0.395905,
		0.935300, -0.341682, 0.092021,
		31.545397, 35.790104, 40.078232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962954, 35.593468, 40.646782>,  <30.890686, 36.029282, 40.013817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962954, 35.593468, 40.646782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335934, 35.709129, 40.560127>,  <31.559721, 35.778526, 40.508137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335934, 35.709129, 40.560127>,  <30.962954, 35.593468, 40.646782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335934, 35.709129, 40.560127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124422, 0.305929, 0.943889,
		0.339206, -0.907081, 0.249285,
		0.932447, 0.289157, -0.216634,
		31.615669, 35.795876, 40.495136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302078, 35.483101, 41.258663>,  <30.962954, 35.593468, 40.646782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302078, 35.483101, 41.258663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567862, 35.712498, 41.066994>,  <31.727331, 35.850136, 40.951992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567862, 35.712498, 41.066994>,  <31.302078, 35.483101, 41.258663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567862, 35.712498, 41.066994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324650, 0.356009, 0.876276,
		0.673128, -0.737809, 0.050367,
		0.664456, 0.573494, -0.479169,
		31.767199, 35.884544, 40.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981293, 35.322315, 41.568253>,  <31.302078, 35.483101, 41.258663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981293, 35.322315, 41.568253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029884, 35.681633, 41.399342>,  <32.059040, 35.897224, 41.297997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029884, 35.681633, 41.399342>,  <31.981293, 35.322315, 41.568253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029884, 35.681633, 41.399342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428303, 0.336346, 0.838707,
		0.895433, -0.282747, -0.343881,
		0.121479, 0.898290, -0.422277,
		32.066330, 35.951118, 41.272659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646584, 35.465446, 41.581520>,  <31.981293, 35.322315, 41.568253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646584, 35.465446, 41.581520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467808, 35.822697, 41.561230>,  <32.360542, 36.037045, 41.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467808, 35.822697, 41.561230>,  <32.646584, 35.465446, 41.581520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467808, 35.822697, 41.561230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541302, 0.315157, 0.779531,
		0.712203, 0.320948, -0.624306,
		-0.446944, 0.893123, -0.050725,
		32.333725, 36.090633, 41.546013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219795, 36.023304, 41.709480>,  <32.646584, 35.465446, 41.581520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219795, 36.023304, 41.709480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876431, 36.224201, 41.751202>,  <32.670410, 36.344738, 41.776234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876431, 36.224201, 41.751202>,  <33.219795, 36.023304, 41.709480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876431, 36.224201, 41.751202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404072, 0.536811, 0.740649,
		0.315995, 0.677928, -0.663747,
		-0.858413, 0.502243, 0.104302,
		32.618908, 36.374874, 41.782494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349403, 36.821667, 41.665615>,  <33.219795, 36.023304, 41.709480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349403, 36.821667, 41.665615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013885, 36.735954, 41.865818>,  <32.812572, 36.684528, 41.985939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013885, 36.735954, 41.865818>,  <33.349403, 36.821667, 41.665615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013885, 36.735954, 41.865818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317027, 0.555136, 0.768972,
		-0.442622, 0.803685, -0.397714,
		-0.838796, -0.214278, 0.500505,
		32.762245, 36.671669, 42.015968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120289, 37.462765, 42.038994>,  <33.349403, 36.821667, 41.665615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120289, 37.462765, 42.038994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889889, 37.194752, 42.226303>,  <32.751648, 37.033943, 42.338688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889889, 37.194752, 42.226303>,  <33.120289, 37.462765, 42.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889889, 37.194752, 42.226303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050077, 0.542848, 0.838336,
		-0.815914, 0.506332, -0.279127,
		-0.576000, -0.670033, 0.468274,
		32.717091, 36.993740, 42.366787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677986, 37.855881, 42.329075>,  <33.120289, 37.462765, 42.038994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677986, 37.855881, 42.329075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674805, 37.518120, 42.543339>,  <32.672897, 37.315464, 42.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674805, 37.518120, 42.543339>,  <32.677986, 37.855881, 42.329075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674805, 37.518120, 42.543339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001264, 0.535664, 0.844431,
		-0.999968, 0.007393, -0.003193,
		-0.007954, -0.844399, 0.535656,
		32.672421, 37.264801, 42.704037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191730, 37.954552, 42.844067>,  <32.677986, 37.855881, 42.329075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191730, 37.954552, 42.844067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418686, 37.652161, 42.974644>,  <32.554859, 37.470726, 43.052990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418686, 37.652161, 42.974644>,  <32.191730, 37.954552, 42.844067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418686, 37.652161, 42.974644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146836, 0.482964, 0.863241,
		-0.810251, -0.441862, 0.385034,
		0.567391, -0.755978, 0.326441,
		32.588902, 37.425365, 43.072575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902521, 37.729412, 43.459656>,  <32.191730, 37.954552, 42.844067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902521, 37.729412, 43.459656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289970, 37.630199, 43.453350>,  <32.522442, 37.570671, 43.449566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289970, 37.630199, 43.453350>,  <31.902521, 37.729412, 43.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289970, 37.630199, 43.453350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121665, 0.417902, 0.900309,
		-0.216714, -0.873979, 0.434966,
		0.968624, -0.248030, -0.015768,
		32.580559, 37.555790, 43.448620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093620, 37.704124, 44.278801>,  <31.902521, 37.729412, 43.459656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093620, 37.704124, 44.278801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454273, 37.692451, 44.106194>,  <32.670666, 37.685448, 44.002628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454273, 37.692451, 44.106194>,  <32.093620, 37.704124, 44.278801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454273, 37.692451, 44.106194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296336, 0.768412, 0.567210,
		0.315028, -0.639289, 0.701475,
		0.901633, -0.029186, -0.431516,
		32.724762, 37.683697, 43.976738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541496, 37.490791, 44.806438>,  <32.093620, 37.704124, 44.278801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541496, 37.490791, 44.806438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789127, 37.679081, 44.554989>,  <32.937706, 37.792053, 44.404121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789127, 37.679081, 44.554989>,  <32.541496, 37.490791, 44.806438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789127, 37.679081, 44.554989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313339, 0.585929, 0.747333,
		0.720112, -0.659629, 0.215240,
		0.619078, 0.470720, -0.628622,
		32.974850, 37.820297, 44.366402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951847, 37.641209, 45.227940>,  <32.541496, 37.490791, 44.806438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951847, 37.641209, 45.227940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074890, 37.871490, 44.924904>,  <33.148716, 38.009659, 44.743080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074890, 37.871490, 44.924904>,  <32.951847, 37.641209, 45.227940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074890, 37.871490, 44.924904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338028, 0.678143, 0.652579,
		0.889446, -0.456826, 0.014000,
		0.307609, 0.575701, -0.757592,
		33.167171, 38.044201, 44.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755783, 37.584225, 45.166023>,  <32.951847, 37.641209, 45.227940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755783, 37.584225, 45.166023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582802, 37.932457, 45.072151>,  <33.479012, 38.141396, 45.015827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582802, 37.932457, 45.072151>,  <33.755783, 37.584225, 45.166023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582802, 37.932457, 45.072151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484918, 0.443995, 0.753474,
		0.760156, 0.212043, -0.614167,
		-0.432456, 0.870578, -0.234682,
		33.453064, 38.193630, 45.001747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006344, 38.156422, 44.921234>,  <33.755783, 37.584225, 45.166023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006344, 38.156422, 44.921234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392002, 38.253063, 44.965130>,  <34.623398, 38.311050, 44.991467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392002, 38.253063, 44.965130>,  <34.006344, 38.156422, 44.921234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392002, 38.253063, 44.965130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251247, -0.698081, -0.670491,
		-0.085389, 0.674025, -0.733757,
		0.964149, 0.241607, 0.109738,
		34.681248, 38.325546, 44.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278973, 38.231659, 44.246639>,  <34.006344, 38.156422, 44.921234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278973, 38.231659, 44.246639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593971, 38.150341, 44.479370>,  <34.782970, 38.101551, 44.619007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593971, 38.150341, 44.479370>,  <34.278973, 38.231659, 44.246639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593971, 38.150341, 44.479370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365932, -0.605394, -0.706818,
		0.495930, 0.769524, -0.402351,
		0.787495, -0.203299, 0.581826,
		34.830219, 38.089352, 44.653919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916317, 38.309639, 43.865139>,  <34.278973, 38.231659, 44.246639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916317, 38.309639, 43.865139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054977, 38.082352, 44.163658>,  <35.138176, 37.945980, 44.342770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054977, 38.082352, 44.163658>,  <34.916317, 38.309639, 43.865139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054977, 38.082352, 44.163658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482861, -0.574008, -0.661332,
		0.804162, 0.589610, 0.075389,
		0.346654, -0.568221, 0.746295,
		35.158974, 37.911884, 44.387547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669407, 38.383625, 43.793968>,  <34.916317, 38.309639, 43.865139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669407, 38.383625, 43.793968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546207, 38.057079, 43.989391>,  <35.472286, 37.861153, 44.106647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546207, 38.057079, 43.989391>,  <35.669407, 38.383625, 43.793968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546207, 38.057079, 43.989391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544048, -0.572408, -0.613482,
		0.780479, 0.076848, 0.620441,
		-0.308001, -0.816360, 0.488562,
		35.453808, 37.812172, 44.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273926, 38.057648, 44.045231>,  <35.669407, 38.383625, 43.793968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273926, 38.057648, 44.045231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992119, 37.782433, 43.975658>,  <35.823032, 37.617302, 43.933914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992119, 37.782433, 43.975658>,  <36.273926, 38.057648, 44.045231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992119, 37.782433, 43.975658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657744, -0.541011, -0.524099,
		0.266505, -0.483638, 0.833708,
		-0.704520, -0.688041, -0.173928,
		35.780762, 37.576019, 43.923481>
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
