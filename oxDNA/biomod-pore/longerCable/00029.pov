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
	<24.072208, 34.775501, 34.714367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261021, 34.983494, 34.999126>,  <24.374308, 35.108288, 35.169983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261021, 34.983494, 34.999126>,  <24.072208, 34.775501, 34.714367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261021, 34.983494, 34.999126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725433, 0.229750, -0.648816,
		-0.500932, 0.822699, -0.268763,
		0.472032, 0.519983, 0.711901,
		24.402630, 35.139488, 35.212696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.362509, 35.278145, 34.443481>,  <24.072208, 34.775501, 34.714367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.362509, 35.278145, 34.443481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595842, 35.279224, 34.768372>,  <24.735844, 35.279873, 34.963306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595842, 35.279224, 34.768372>,  <24.362509, 35.278145, 34.443481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595842, 35.279224, 34.768372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742972, 0.402290, -0.534935,
		-0.328197, 0.915508, 0.232661,
		0.583335, 0.002704, 0.812227,
		24.770844, 35.280037, 35.012039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738907, 35.971729, 34.625572>,  <24.362509, 35.278145, 34.443481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738907, 35.971729, 34.625572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937380, 35.643654, 34.739475>,  <25.056463, 35.446808, 34.807816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937380, 35.643654, 34.739475>,  <24.738907, 35.971729, 34.625572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937380, 35.643654, 34.739475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821884, 0.338008, -0.458538,
		0.279839, 0.461556, 0.841817,
		0.496182, -0.820193, 0.284758,
		25.086235, 35.397594, 34.824902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374516, 36.131504, 34.864265>,  <24.738907, 35.971729, 34.625572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374516, 36.131504, 34.864265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405916, 35.745102, 34.765736>,  <25.424757, 35.513260, 34.706619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405916, 35.745102, 34.765736>,  <25.374516, 36.131504, 34.864265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405916, 35.745102, 34.765736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910930, 0.169892, -0.375957,
		0.405024, -0.194867, 0.893299,
		0.078502, -0.966004, -0.246320,
		25.429466, 35.455299, 34.691841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014717, 35.794804, 35.169441>,  <25.374516, 36.131504, 34.864265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014717, 35.794804, 35.169441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898796, 35.605091, 34.836918>,  <25.829245, 35.491264, 34.637405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898796, 35.605091, 34.836918>,  <26.014717, 35.794804, 35.169441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898796, 35.605091, 34.836918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872064, 0.227042, -0.433540,
		0.394361, -0.850595, 0.347803,
		-0.289801, -0.474278, -0.831310,
		25.811855, 35.462807, 34.587524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655031, 35.415257, 34.974766>,  <26.014717, 35.794804, 35.169441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655031, 35.415257, 34.974766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421179, 35.448948, 34.652000>,  <26.280869, 35.469162, 34.458340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421179, 35.448948, 34.652000>,  <26.655031, 35.415257, 34.974766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421179, 35.448948, 34.652000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771481, 0.365485, -0.520805,
		0.251047, -0.926998, -0.278657,
		-0.584630, 0.084232, -0.806916,
		26.245790, 35.474216, 34.409927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102655, 35.155468, 34.467579>,  <26.655031, 35.415257, 34.974766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102655, 35.155468, 34.467579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800528, 35.340401, 34.281788>,  <26.619251, 35.451359, 34.170311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800528, 35.340401, 34.281788>,  <27.102655, 35.155468, 34.467579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800528, 35.340401, 34.281788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628868, 0.311861, -0.712227,
		-0.184429, -0.830057, -0.526299,
		-0.755322, 0.462328, -0.464480,
		26.573931, 35.479099, 34.142445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968307, 34.941879, 33.723816>,  <27.102655, 35.155468, 34.467579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968307, 34.941879, 33.723816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889952, 35.320736, 33.825439>,  <26.842937, 35.548050, 33.886414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889952, 35.320736, 33.825439>,  <26.968307, 34.941879, 33.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889952, 35.320736, 33.825439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731338, 0.313699, -0.605588,
		-0.653277, 0.067175, -0.754133,
		-0.195890, 0.947143, 0.254060,
		26.831184, 35.604877, 33.901657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734779, 35.348663, 33.107872>,  <26.968307, 34.941879, 33.723816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734779, 35.348663, 33.107872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884056, 35.608135, 33.373184>,  <26.973623, 35.763817, 33.532372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884056, 35.608135, 33.373184>,  <26.734779, 35.348663, 33.107872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884056, 35.608135, 33.373184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631426, 0.346213, -0.693857,
		-0.679727, 0.677757, -0.280387,
		0.373193, 0.648677, 0.663284,
		26.996014, 35.802738, 33.572170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882057, 35.929131, 32.697166>,  <26.734779, 35.348663, 33.107872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882057, 35.929131, 32.697166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081715, 35.978672, 33.040215>,  <27.201509, 36.008396, 33.246044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081715, 35.978672, 33.040215>,  <26.882057, 35.929131, 32.697166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081715, 35.978672, 33.040215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831700, 0.209267, -0.514278,
		-0.243165, 0.969984, 0.001448,
		0.499145, 0.123851, 0.857622,
		27.231459, 36.015827, 33.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250584, 36.610115, 32.645344>,  <26.882057, 35.929131, 32.697166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250584, 36.610115, 32.645344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434200, 36.368042, 32.905506>,  <27.544371, 36.222797, 33.061604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434200, 36.368042, 32.905506>,  <27.250584, 36.610115, 32.645344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434200, 36.368042, 32.905506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869215, 0.154559, -0.469657,
		0.183702, 0.780938, 0.596983,
		0.459042, -0.605184, 0.650410,
		27.571913, 36.186485, 33.100628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925652, 36.830357, 32.904186>,  <27.250584, 36.610115, 32.645344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925652, 36.830357, 32.904186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964266, 36.432362, 32.914627>,  <27.987434, 36.193565, 32.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964266, 36.432362, 32.914627>,  <27.925652, 36.830357, 32.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964266, 36.432362, 32.914627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919810, 0.079161, -0.384295,
		0.380303, 0.061107, 0.922841,
		0.096536, -0.994987, 0.026101,
		27.993227, 36.133865, 32.922459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707558, 37.112442, 32.642841>,  <27.925652, 36.830357, 32.904186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707558, 37.112442, 32.642841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926050, 36.823368, 32.812244>,  <29.057146, 36.649925, 32.913887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926050, 36.823368, 32.812244>,  <28.707558, 37.112442, 32.642841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926050, 36.823368, 32.812244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833294, -0.520227, 0.187042,
		0.085151, -0.455079, -0.886370,
		0.546233, -0.722680, 0.423512,
		29.089920, 36.606564, 32.939297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593529, 36.480038, 32.320282>,  <28.707558, 37.112442, 32.642841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593529, 36.480038, 32.320282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708326, 36.402035, 32.695431>,  <28.777205, 36.355232, 32.920521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708326, 36.402035, 32.695431>,  <28.593529, 36.480038, 32.320282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708326, 36.402035, 32.695431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845925, -0.511002, 0.152607,
		0.449495, -0.837167, -0.311618,
		0.286995, -0.195010, 0.937873,
		28.794424, 36.343533, 32.976791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480688, 35.721821, 32.552864>,  <28.593529, 36.480038, 32.320282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480688, 35.721821, 32.552864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496033, 35.957478, 32.875710>,  <28.505239, 36.098873, 33.069416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496033, 35.957478, 32.875710>,  <28.480688, 35.721821, 32.552864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496033, 35.957478, 32.875710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852340, -0.402302, 0.334169,
		0.521579, -0.700757, 0.486719,
		0.038363, 0.589146, 0.807115,
		28.507542, 36.134220, 33.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435534, 35.295197, 33.265282>,  <28.480688, 35.721821, 32.552864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435534, 35.295197, 33.265282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302782, 35.669579, 33.312340>,  <28.223131, 35.894207, 33.340572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302782, 35.669579, 33.312340>,  <28.435534, 35.295197, 33.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302782, 35.669579, 33.312340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882965, -0.352112, 0.310468,
		0.332008, -0.000836, 0.943276,
		-0.331879, 0.935957, 0.117642,
		28.203218, 35.950367, 33.347633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234612, 35.535393, 34.011017>,  <28.435534, 35.295197, 33.265282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234612, 35.535393, 34.011017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041002, 35.748554, 33.733387>,  <27.924837, 35.876453, 33.566811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041002, 35.748554, 33.733387>,  <28.234612, 35.535393, 34.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041002, 35.748554, 33.733387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854901, -0.118730, 0.505021,
		0.186722, 0.837803, 0.513050,
		-0.484023, 0.532906, -0.694070,
		27.895796, 35.908424, 33.525166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870283, 36.161190, 34.365528>,  <28.234612, 35.535393, 34.011017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870283, 36.161190, 34.365528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657122, 36.124035, 34.029102>,  <27.529224, 36.101742, 33.827248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657122, 36.124035, 34.029102>,  <27.870283, 36.161190, 34.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657122, 36.124035, 34.029102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842605, -0.032975, 0.537522,
		-0.077664, 0.995130, -0.060696,
		-0.532903, -0.092889, -0.841063,
		27.497252, 36.096169, 33.776783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284809, 36.662262, 34.483540>,  <27.870283, 36.161190, 34.365528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284809, 36.662262, 34.483540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201548, 36.399208, 34.193935>,  <27.151590, 36.241375, 34.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201548, 36.399208, 34.193935>,  <27.284809, 36.662262, 34.483540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201548, 36.399208, 34.193935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892802, -0.174570, 0.415247,
		-0.399471, 0.732832, -0.550800,
		-0.208153, -0.657634, -0.724009,
		27.139101, 36.201920, 33.976734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671774, 36.838211, 34.288540>,  <27.284809, 36.662262, 34.483540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671774, 36.838211, 34.288540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727524, 36.459648, 34.172001>,  <26.760973, 36.232510, 34.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727524, 36.459648, 34.172001>,  <26.671774, 36.838211, 34.288540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727524, 36.459648, 34.172001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868898, -0.258004, 0.422435,
		-0.474965, 0.194273, -0.858293,
		0.139375, -0.946410, -0.291346,
		26.769337, 36.175724, 34.084599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127163, 36.551605, 33.861305>,  <26.671774, 36.838211, 34.288540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127163, 36.551605, 33.861305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293192, 36.245098, 34.057487>,  <26.392809, 36.061192, 34.175198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293192, 36.245098, 34.057487>,  <26.127163, 36.551605, 33.861305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293192, 36.245098, 34.057487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861629, -0.158016, 0.482313,
		-0.292081, -0.622785, -0.725828,
		0.415070, -0.766270, 0.490457,
		26.417713, 36.015217, 34.204624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777458, 36.128765, 33.374527>,  <26.127163, 36.551605, 33.861305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777458, 36.128765, 33.374527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022387, 35.910370, 33.603252>,  <26.169342, 35.779335, 33.740486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022387, 35.910370, 33.603252>,  <25.777458, 36.128765, 33.374527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022387, 35.910370, 33.603252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781892, -0.311081, 0.540253,
		-0.117090, -0.777901, -0.617382,
		0.612319, -0.545984, 0.571810,
		26.206081, 35.746574, 33.774796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533773, 35.542233, 33.301884>,  <25.777458, 36.128765, 33.374527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533773, 35.542233, 33.301884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766670, 35.507652, 33.625244>,  <25.906408, 35.486904, 33.819260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766670, 35.507652, 33.625244>,  <25.533773, 35.542233, 33.301884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766670, 35.507652, 33.625244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751276, -0.437286, 0.494334,
		0.310768, -0.895158, -0.319556,
		0.582244, -0.086451, 0.808405,
		25.941343, 35.481716, 33.867767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571733, 34.842480, 33.497074>,  <25.533773, 35.542233, 33.301884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571733, 34.842480, 33.497074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617064, 35.088158, 33.809464>,  <25.644262, 35.235565, 33.996899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617064, 35.088158, 33.809464>,  <25.571733, 34.842480, 33.497074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617064, 35.088158, 33.809464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884152, -0.296240, 0.361272,
		0.453248, -0.731442, 0.509470,
		0.113325, 0.614195, 0.780976,
		25.651060, 35.272415, 34.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537258, 34.390644, 34.121601>,  <25.571733, 34.842480, 33.497074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537258, 34.390644, 34.121601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463415, 34.768822, 34.228970>,  <25.419109, 34.995728, 34.293392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463415, 34.768822, 34.228970>,  <25.537258, 34.390644, 34.121601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463415, 34.768822, 34.228970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787133, -0.305772, 0.535654,
		0.588508, -0.112397, 0.800641,
		-0.184608, 0.945447, 0.268420,
		25.408033, 35.052456, 34.309494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787451, 33.855362, 33.628651>,  <25.537258, 34.390644, 34.121601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787451, 33.855362, 33.628651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427845, 33.840511, 33.454113>,  <25.212082, 33.831600, 33.349392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427845, 33.840511, 33.454113>,  <25.787451, 33.855362, 33.628651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427845, 33.840511, 33.454113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437918, -0.079030, -0.895534,
		-0.001234, -0.996180, 0.087309,
		-0.899014, -0.037130, -0.436343,
		25.158140, 33.829372, 33.323212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551136, 33.145435, 33.278488>,  <25.787451, 33.855362, 33.628651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551136, 33.145435, 33.278488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396851, 33.472717, 33.107956>,  <25.304279, 33.669086, 33.005638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396851, 33.472717, 33.107956>,  <25.551136, 33.145435, 33.278488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396851, 33.472717, 33.107956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454253, -0.233783, -0.859651,
		-0.803043, -0.525243, -0.281500,
		-0.385715, 0.818209, -0.426330,
		25.281136, 33.718182, 32.980057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220768, 32.875591, 32.655663>,  <25.551136, 33.145435, 33.278488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220768, 32.875591, 32.655663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291910, 33.264503, 32.594959>,  <25.334595, 33.497852, 32.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291910, 33.264503, 32.594959>,  <25.220768, 32.875591, 32.655663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291910, 33.264503, 32.594959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282168, -0.198131, -0.938683,
		-0.942735, 0.124126, -0.309586,
		0.177854, 0.972284, -0.151761,
		25.345266, 33.556190, 32.549431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992109, 32.965073, 31.979309>,  <25.220768, 32.875591, 32.655663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992109, 32.965073, 31.979309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200634, 33.306175, 31.992235>,  <25.325748, 33.510838, 31.999990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200634, 33.306175, 31.992235>,  <24.992109, 32.965073, 31.979309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200634, 33.306175, 31.992235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384388, -0.200841, -0.901060,
		-0.761891, 0.482156, -0.432489,
		0.521313, 0.852753, 0.032316,
		25.357029, 33.562000, 32.001930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412287, 32.954723, 31.422640>,  <24.992109, 32.965073, 31.979309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412287, 32.954723, 31.422640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505913, 33.332214, 31.516104>,  <25.562088, 33.558708, 31.572182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505913, 33.332214, 31.516104>,  <25.412287, 32.954723, 31.422640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505913, 33.332214, 31.516104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671531, 0.016859, -0.740785,
		-0.703037, 0.330300, -0.629794,
		0.234064, 0.943725, 0.233659,
		25.576132, 33.615334, 31.586201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330091, 33.446579, 30.857431>,  <25.412287, 32.954723, 31.422640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330091, 33.446579, 30.857431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620728, 33.577991, 31.098806>,  <25.795109, 33.656837, 31.243631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620728, 33.577991, 31.098806>,  <25.330091, 33.446579, 30.857431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620728, 33.577991, 31.098806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604581, 0.111546, -0.788695,
		-0.326421, 0.937883, -0.117575,
		0.726589, 0.328530, 0.603437,
		25.838705, 33.676552, 31.279839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504667, 34.054695, 30.647112>,  <25.330091, 33.446579, 30.857431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504667, 34.054695, 30.647112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811550, 33.883698, 30.838377>,  <25.995680, 33.781097, 30.953136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811550, 33.883698, 30.838377>,  <25.504667, 34.054695, 30.647112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811550, 33.883698, 30.838377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570159, 0.113085, -0.813714,
		0.293785, 0.896917, 0.330500,
		0.767208, -0.427494, 0.478163,
		26.041712, 33.755447, 30.981827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185120, 34.492588, 30.569866>,  <25.504667, 34.054695, 30.647112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185120, 34.492588, 30.569866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245319, 34.099384, 30.611897>,  <26.281439, 33.863461, 30.637115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245319, 34.099384, 30.611897>,  <26.185120, 34.492588, 30.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245319, 34.099384, 30.611897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531539, -0.009157, -0.846985,
		0.833556, 0.183323, 0.521130,
		0.150500, -0.983010, 0.105076,
		26.290470, 33.804482, 30.643419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825279, 34.395477, 30.283998>,  <26.185120, 34.492588, 30.569866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825279, 34.395477, 30.283998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691294, 34.019562, 30.311127>,  <26.610903, 33.794014, 30.327404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691294, 34.019562, 30.311127>,  <26.825279, 34.395477, 30.283998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691294, 34.019562, 30.311127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536594, -0.249430, -0.806134,
		0.774512, -0.233632, 0.587833,
		-0.334962, -0.939788, 0.067821,
		26.590805, 33.737625, 30.331472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545422, 34.111034, 30.023392>,  <26.825279, 34.395477, 30.283998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545422, 34.111034, 30.023392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797018, 34.416718, 29.966322>,  <27.947975, 34.600128, 29.932079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797018, 34.416718, 29.966322>,  <27.545422, 34.111034, 30.023392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797018, 34.416718, 29.966322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096203, 0.105601, 0.989744,
		0.771437, -0.636266, -0.007097,
		0.628991, 0.764209, -0.142675,
		27.985716, 34.645981, 29.923519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043451, 34.413235, 29.507578>,  <27.545422, 34.111034, 30.023392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043451, 34.413235, 29.507578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390078, 34.381542, 29.310484>,  <27.598053, 34.362526, 29.192228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390078, 34.381542, 29.310484>,  <27.043451, 34.413235, 29.507578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390078, 34.381542, 29.310484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346137, 0.806666, 0.479040,
		0.359518, -0.585673, 0.726453,
		0.866566, -0.079229, -0.492734,
		27.650047, 34.357773, 29.162664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673801, 33.795471, 29.181170>,  <27.043451, 34.413235, 29.507578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673801, 33.795471, 29.181170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774990, 33.408970, 29.200592>,  <26.835703, 33.177071, 29.212246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774990, 33.408970, 29.200592>,  <26.673801, 33.795471, 29.181170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774990, 33.408970, 29.200592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053011, 0.036270, 0.997935,
		-0.966020, -0.255025, -0.042047,
		0.252974, -0.966254, 0.048557,
		26.850882, 33.119095, 29.215158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119665, 33.458363, 29.536701>,  <26.673801, 33.795471, 29.181170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119665, 33.458363, 29.536701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459501, 33.253590, 29.587488>,  <26.663403, 33.130726, 29.617960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459501, 33.253590, 29.587488>,  <26.119665, 33.458363, 29.536701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459501, 33.253590, 29.587488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145292, 0.004261, 0.989380,
		-0.507036, -0.859016, -0.070759,
		0.849591, -0.511931, 0.126969,
		26.714378, 33.100010, 29.625578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022980, 32.939503, 30.039404>,  <26.119665, 33.458363, 29.536701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022980, 32.939503, 30.039404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419147, 32.981411, 30.075388>,  <26.656849, 33.006554, 30.096979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419147, 32.981411, 30.075388>,  <26.022980, 32.939503, 30.039404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419147, 32.981411, 30.075388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104915, 0.147299, 0.983512,
		0.089786, -0.983528, 0.156879,
		0.990420, 0.104765, 0.089961,
		26.716274, 33.012840, 30.102377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302591, 32.426777, 30.562527>,  <26.022980, 32.939503, 30.039404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302591, 32.426777, 30.562527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443462, 32.796459, 30.503445>,  <26.527985, 33.018269, 30.467997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443462, 32.796459, 30.503445>,  <26.302591, 32.426777, 30.562527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443462, 32.796459, 30.503445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147488, 0.210644, 0.966373,
		0.924240, -0.318548, 0.210492,
		0.352175, 0.924206, -0.147704,
		26.549114, 33.073719, 30.459133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804922, 32.608593, 30.943672>,  <26.302591, 32.426777, 30.562527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804922, 32.608593, 30.943672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639055, 32.964500, 30.867401>,  <26.539536, 33.178047, 30.821638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.639055, 32.964500, 30.867401>,  <26.804922, 32.608593, 30.943672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639055, 32.964500, 30.867401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020431, 0.200385, 0.979504,
		0.909744, 0.410063, -0.064914,
		-0.414666, 0.889772, -0.190677,
		26.514656, 33.231434, 30.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950716, 33.028667, 31.468019>,  <26.804922, 32.608593, 30.943672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950716, 33.028667, 31.468019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680479, 33.273857, 31.304150>,  <26.518337, 33.420971, 31.205828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680479, 33.273857, 31.304150>,  <26.950716, 33.028667, 31.468019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680479, 33.273857, 31.304150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421926, 0.134232, 0.896638,
		0.604612, 0.778614, 0.167946,
		-0.675591, 0.612979, -0.409676,
		26.477802, 33.457752, 31.181248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987537, 33.711712, 31.743235>,  <26.950716, 33.028667, 31.468019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987537, 33.711712, 31.743235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605158, 33.637623, 31.652145>,  <26.375731, 33.593170, 31.597492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605158, 33.637623, 31.652145>,  <26.987537, 33.711712, 31.743235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605158, 33.637623, 31.652145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287425, 0.433130, 0.854275,
		-0.059593, 0.882096, -0.467286,
		-0.955948, -0.185218, -0.227725,
		26.318373, 33.582058, 31.583828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655577, 33.684998, 32.030972>,  <26.987537, 33.711712, 31.743235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655577, 33.684998, 32.030972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412352, 33.418583, 32.203789>,  <27.266417, 33.258736, 32.307480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412352, 33.418583, 32.203789>,  <27.655577, 33.684998, 32.030972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412352, 33.418583, 32.203789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256737, 0.349989, 0.900885,
		-0.751229, 0.658716, -0.041820,
		-0.608064, -0.666034, 0.432038,
		27.229933, 33.218773, 32.333401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105305, 33.931019, 32.646427>,  <27.655577, 33.684998, 32.030972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105305, 33.931019, 32.646427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217100, 33.550018, 32.694817>,  <27.284178, 33.321419, 32.723850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217100, 33.550018, 32.694817>,  <27.105305, 33.931019, 32.646427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217100, 33.550018, 32.694817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324095, 0.212190, 0.921921,
		-0.903798, -0.218457, 0.368004,
		0.279487, -0.952498, 0.120976,
		27.300945, 33.264271, 32.731110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861931, 33.661797, 33.367043>,  <27.105305, 33.931019, 32.646427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861931, 33.661797, 33.367043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205429, 33.507191, 33.232487>,  <27.411528, 33.414429, 33.151752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205429, 33.507191, 33.232487>,  <26.861931, 33.661797, 33.367043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205429, 33.507191, 33.232487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421717, 0.160230, 0.892458,
		-0.291048, -0.908258, 0.300597,
		0.858746, -0.386515, -0.336393,
		27.463053, 33.391235, 33.131569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763550, 33.500729, 33.987991>,  <26.861931, 33.661797, 33.367043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763550, 33.500729, 33.987991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900383, 33.135059, 34.074959>,  <26.982483, 32.915657, 34.127140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900383, 33.135059, 34.074959>,  <26.763550, 33.500729, 33.987991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900383, 33.135059, 34.074959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421565, 0.057484, 0.904974,
		-0.839799, -0.401232, -0.365718,
		0.342082, -0.914171, 0.217420,
		27.003008, 32.860809, 34.140186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220896, 32.939232, 34.247402>,  <26.763550, 33.500729, 33.987991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220896, 32.939232, 34.247402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589664, 32.908089, 34.399193>,  <26.810925, 32.889404, 34.490269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589664, 32.908089, 34.399193>,  <26.220896, 32.939232, 34.247402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589664, 32.908089, 34.399193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379113, 0.019982, 0.925135,
		-0.079610, -0.996764, -0.011095,
		0.921920, -0.077857, 0.379477,
		26.866240, 32.884731, 34.513035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180380, 32.538502, 34.918922>,  <26.220896, 32.939232, 34.247402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180380, 32.538502, 34.918922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531496, 32.728687, 34.942299>,  <26.742167, 32.842800, 34.956326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.531496, 32.728687, 34.942299>,  <26.180380, 32.538502, 34.918922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531496, 32.728687, 34.942299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132544, 0.123819, 0.983413,
		0.460343, -0.870977, 0.171708,
		0.877790, 0.475466, 0.058443,
		26.794834, 32.871326, 34.959831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456070, 32.843262, 34.745232>,  <26.180380, 32.538502, 34.918922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456070, 32.843262, 34.745232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708385, 32.910236, 35.048302>,  <25.859774, 32.950420, 35.230145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708385, 32.910236, 35.048302>,  <25.456070, 32.843262, 34.745232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708385, 32.910236, 35.048302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627772, 0.463797, -0.625136,
		-0.456081, 0.869974, 0.187443,
		0.630788, 0.167441, 0.757674,
		25.897621, 32.960468, 35.275604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.651850, 33.493149, 34.685848>,  <25.456070, 32.843262, 34.745232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.651850, 33.493149, 34.685848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934460, 33.319054, 34.909061>,  <26.104025, 33.214596, 35.042988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934460, 33.319054, 34.909061>,  <25.651850, 33.493149, 34.685848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934460, 33.319054, 34.909061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705056, 0.364927, -0.608050,
		0.061005, 0.823042, 0.564694,
		0.706523, -0.435235, 0.558028,
		26.146416, 33.188484, 35.076469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154251, 34.042400, 35.035152>,  <25.651850, 33.493149, 34.685848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154251, 34.042400, 35.035152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269491, 33.677299, 34.919300>,  <26.338636, 33.458241, 34.849789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269491, 33.677299, 34.919300>,  <26.154251, 34.042400, 35.035152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269491, 33.677299, 34.919300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678068, 0.408021, -0.611345,
		0.676181, -0.020262, 0.736457,
		0.288103, -0.912748, -0.289635,
		26.355923, 33.403477, 34.832409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785883, 34.053619, 35.566952>,  <26.154251, 34.042400, 35.035152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785883, 34.053619, 35.566952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917053, 33.686661, 35.657143>,  <26.995756, 33.466484, 35.711258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917053, 33.686661, 35.657143>,  <26.785883, 34.053619, 35.566952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917053, 33.686661, 35.657143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010480, -0.235129, -0.971908,
		0.944646, 0.321076, -0.067490,
		0.327925, -0.917401, 0.225478,
		27.015430, 33.411442, 35.724785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414991, 33.967819, 35.381042>,  <26.785883, 34.053619, 35.566952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414991, 33.967819, 35.381042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280405, 33.591434, 35.366192>,  <27.199654, 33.365604, 35.357281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280405, 33.591434, 35.366192>,  <27.414991, 33.967819, 35.381042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280405, 33.591434, 35.366192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302208, -0.070558, -0.950627,
		0.891886, -0.331072, 0.308107,
		-0.336465, -0.940964, -0.037123,
		27.179466, 33.309147, 35.355057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936401, 33.555019, 35.107925>,  <27.414991, 33.967819, 35.381042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936401, 33.555019, 35.107925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593557, 33.356922, 35.051212>,  <27.387852, 33.238064, 35.017185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593557, 33.356922, 35.051212>,  <27.936401, 33.555019, 35.107925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593557, 33.356922, 35.051212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198240, -0.063069, -0.978122,
		0.475463, -0.866464, 0.152233,
		-0.857109, -0.495240, -0.141781,
		27.336424, 33.208351, 35.008678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083015, 33.142025, 34.511997>,  <27.936401, 33.555019, 35.107925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083015, 33.142025, 34.511997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684225, 33.155434, 34.540028>,  <27.444950, 33.163479, 34.556847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684225, 33.155434, 34.540028>,  <28.083015, 33.142025, 34.511997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684225, 33.155434, 34.540028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070528, -0.012380, -0.997433,
		-0.032578, -0.999361, 0.014707,
		-0.996978, 0.033532, 0.070080,
		27.385132, 33.165489, 34.561050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614666, 33.791210, 34.443092>,  <28.083015, 33.142025, 34.511997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614666, 33.791210, 34.443092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966032, 33.607937, 34.497433>,  <29.176851, 33.497974, 34.530037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966032, 33.607937, 34.497433>,  <28.614666, 33.791210, 34.443092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966032, 33.607937, 34.497433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200415, 0.095129, -0.975082,
		0.433841, 0.883754, 0.175389,
		0.878417, -0.458181, 0.135847,
		29.229557, 33.470482, 34.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207348, 34.131271, 34.185673>,  <28.614666, 33.791210, 34.443092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207348, 34.131271, 34.185673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277506, 33.737869, 34.167995>,  <29.319601, 33.501827, 34.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277506, 33.737869, 34.167995>,  <29.207348, 34.131271, 34.185673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277506, 33.737869, 34.167995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399264, 0.112089, -0.909959,
		0.899903, 0.141958, 0.412338,
		0.175394, -0.983506, -0.044190,
		29.330124, 33.442818, 34.154739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956177, 33.989937, 34.079929>,  <29.207348, 34.131271, 34.185673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956177, 33.989937, 34.079929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666939, 33.756763, 33.931702>,  <29.493397, 33.616859, 33.842766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.666939, 33.756763, 33.931702>,  <29.956177, 33.989937, 34.079929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666939, 33.756763, 33.931702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398590, 0.086023, -0.913086,
		0.564148, -0.807952, 0.170150,
		-0.723093, -0.582936, -0.370571,
		29.450010, 33.581882, 33.820530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245375, 33.428486, 33.698162>,  <29.956177, 33.989937, 34.079929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245375, 33.428486, 33.698162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902729, 33.579556, 33.557549>,  <29.697142, 33.670197, 33.473179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902729, 33.579556, 33.557549>,  <30.245375, 33.428486, 33.698162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902729, 33.579556, 33.557549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439831, 0.178303, -0.880203,
		-0.269750, -0.908609, -0.318849,
		-0.856612, 0.377674, -0.351537,
		29.645746, 33.692856, 33.452087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246389, 33.152664, 33.081936>,  <30.245375, 33.428486, 33.698162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246389, 33.152664, 33.081936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005507, 33.471306, 33.060898>,  <29.860977, 33.662491, 33.048275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005507, 33.471306, 33.060898>,  <30.246389, 33.152664, 33.081936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005507, 33.471306, 33.060898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442959, 0.278597, -0.852157,
		-0.664180, -0.536471, -0.520637,
		-0.602205, 0.796607, -0.052597,
		29.824844, 33.710289, 33.045120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957535, 33.182095, 32.370190>,  <30.246389, 33.152664, 33.081936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957535, 33.182095, 32.370190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943691, 33.548203, 32.530731>,  <29.935385, 33.767868, 32.627056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943691, 33.548203, 32.530731>,  <29.957535, 33.182095, 32.370190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943691, 33.548203, 32.530731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352296, 0.386987, -0.852132,
		-0.935248, 0.111903, -0.335840,
		-0.034609, 0.915270, 0.401352,
		29.933308, 33.822784, 32.651138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529547, 33.589634, 31.964569>,  <29.957535, 33.182095, 32.370190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529547, 33.589634, 31.964569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778248, 33.828701, 32.167042>,  <29.927469, 33.972141, 32.288525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778248, 33.828701, 32.167042>,  <29.529547, 33.589634, 31.964569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778248, 33.828701, 32.167042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339607, 0.376646, -0.861861,
		-0.705755, 0.707769, 0.031211,
		0.621754, 0.597663, 0.506183,
		29.964773, 34.007999, 32.318897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019836, 33.536201, 31.424574>,  <29.529547, 33.589634, 31.964569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019836, 33.536201, 31.424574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927349, 33.203758, 31.222269>,  <29.871857, 33.004292, 31.100885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927349, 33.203758, 31.222269>,  <30.019836, 33.536201, 31.424574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927349, 33.203758, 31.222269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745747, 0.182455, -0.640759,
		0.624819, -0.525326, 0.577610,
		-0.231220, -0.831109, -0.505762,
		29.857983, 32.954426, 31.070541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623514, 33.079948, 31.340786>,  <30.019836, 33.536201, 31.424574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623514, 33.079948, 31.340786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363192, 33.008015, 31.045731>,  <30.206999, 32.964855, 30.868696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363192, 33.008015, 31.045731>,  <30.623514, 33.079948, 31.340786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363192, 33.008015, 31.045731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723480, 0.147785, -0.674341,
		0.230281, -0.972533, 0.033927,
		-0.650805, -0.179833, -0.737640,
		30.167950, 32.954063, 30.824438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970230, 32.557247, 30.952129>,  <30.623514, 33.079948, 31.340786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970230, 32.557247, 30.952129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725250, 32.783230, 30.730957>,  <30.578262, 32.918819, 30.598253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725250, 32.783230, 30.730957>,  <30.970230, 32.557247, 30.952129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725250, 32.783230, 30.730957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772131, 0.277574, -0.571635,
		-0.169469, -0.777032, -0.606219,
		-0.612449, 0.564954, -0.552931,
		30.541515, 32.952717, 30.565077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065254, 32.371727, 30.235382>,  <30.970230, 32.557247, 30.952129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065254, 32.371727, 30.235382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954781, 32.755486, 30.258314>,  <30.888496, 32.985741, 30.272074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954781, 32.755486, 30.258314>,  <31.065254, 32.371727, 30.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954781, 32.755486, 30.258314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721624, 0.246398, -0.646952,
		-0.634807, -0.137309, -0.760373,
		-0.276186, 0.959393, 0.057330,
		30.871925, 33.043304, 30.275513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912563, 32.569271, 29.494856>,  <31.065254, 32.371727, 30.235382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912563, 32.569271, 29.494856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044064, 32.877453, 29.713333>,  <31.122965, 33.062363, 29.844419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044064, 32.877453, 29.713333>,  <30.912563, 32.569271, 29.494856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044064, 32.877453, 29.713333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697031, 0.192286, -0.690777,
		-0.637236, 0.607809, -0.473814,
		0.328753, 0.770451, 0.546193,
		31.142689, 33.108589, 29.877192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885687, 33.241989, 29.289303>,  <30.912563, 32.569271, 29.494856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885687, 33.241989, 29.289303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219002, 33.192692, 29.504873>,  <31.418991, 33.163113, 29.634214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219002, 33.192692, 29.504873>,  <30.885687, 33.241989, 29.289303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219002, 33.192692, 29.504873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552273, 0.141525, -0.821563,
		0.024983, 0.982233, 0.185997,
		0.833289, -0.123246, 0.538925,
		31.468988, 33.155720, 29.666552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255383, 33.765057, 29.120388>,  <30.885687, 33.241989, 29.289303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255383, 33.765057, 29.120388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543821, 33.535130, 29.275103>,  <31.716885, 33.397175, 29.367931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543821, 33.535130, 29.275103>,  <31.255383, 33.765057, 29.120388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543821, 33.535130, 29.275103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592914, 0.223177, -0.773722,
		0.358426, 0.787260, 0.501750,
		0.721099, -0.574816, 0.386784,
		31.760151, 33.362686, 29.391138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921816, 34.066799, 28.882534>,  <31.255383, 33.765057, 29.120388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921816, 34.066799, 28.882534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030178, 33.700089, 28.999928>,  <32.095196, 33.480061, 29.070364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030178, 33.700089, 28.999928>,  <31.921816, 34.066799, 28.882534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030178, 33.700089, 28.999928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753816, 0.012435, -0.656968,
		0.598643, 0.399209, 0.694449,
		0.270903, -0.916775, 0.293486,
		32.111450, 33.425056, 29.087973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695862, 34.092361, 28.870710>,  <31.921816, 34.066799, 28.882534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695862, 34.092361, 28.870710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574265, 33.711651, 28.887207>,  <32.501305, 33.483223, 28.897104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574265, 33.711651, 28.887207>,  <32.695862, 34.092361, 28.870710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574265, 33.711651, 28.887207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503548, -0.197277, -0.841143,
		0.808720, -0.234936, 0.539238,
		-0.303993, -0.951781, 0.041240,
		32.483067, 33.426117, 28.899580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293579, 33.719921, 28.721519>,  <32.695862, 34.092361, 28.870710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293579, 33.719921, 28.721519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991146, 33.475079, 28.628851>,  <32.809689, 33.328175, 28.573250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991146, 33.475079, 28.628851>,  <33.293579, 33.719921, 28.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991146, 33.475079, 28.628851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493320, -0.300384, -0.816336,
		0.430094, -0.731502, 0.529078,
		-0.756078, -0.612106, -0.231672,
		32.764324, 33.291447, 28.559349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659451, 33.208309, 28.555101>,  <33.293579, 33.719921, 28.721519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659451, 33.208309, 28.555101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297333, 33.119907, 28.409994>,  <33.080063, 33.066868, 28.322929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297333, 33.119907, 28.409994>,  <33.659451, 33.208309, 28.555101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297333, 33.119907, 28.409994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424377, -0.433053, -0.795217,
		0.018646, -0.873856, 0.485828,
		-0.905294, -0.221002, -0.362770,
		33.025745, 33.053608, 28.301163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593571, 32.434208, 28.317818>,  <33.659451, 33.208309, 28.555101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593571, 32.434208, 28.317818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329887, 32.652863, 28.111275>,  <33.171677, 32.784058, 27.987349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329887, 32.652863, 28.111275>,  <33.593571, 32.434208, 28.317818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329887, 32.652863, 28.111275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413955, -0.309459, -0.856082,
		-0.627761, -0.778087, -0.022287,
		-0.659209, 0.546641, -0.516359,
		33.132126, 32.816856, 27.956367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352730, 31.942768, 27.957808>,  <33.593571, 32.434208, 28.317818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352730, 31.942768, 27.957808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292065, 32.294601, 27.777439>,  <33.255665, 32.505703, 27.669218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292065, 32.294601, 27.777439>,  <33.352730, 31.942768, 27.957808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292065, 32.294601, 27.777439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411908, -0.358456, -0.837759,
		-0.898515, -0.312795, -0.307944,
		-0.151663, 0.879584, -0.450921,
		33.246567, 32.558475, 27.642162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099442, 31.733334, 27.335720>,  <33.352730, 31.942768, 27.957808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099442, 31.733334, 27.335720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192928, 32.112476, 27.249056>,  <33.249020, 32.339962, 27.197058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192928, 32.112476, 27.249056>,  <33.099442, 31.733334, 27.335720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192928, 32.112476, 27.249056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551694, -0.312765, -0.773183,
		-0.800632, 0.061173, -0.596025,
		0.233714, 0.947859, -0.216661,
		33.263042, 32.396835, 27.184057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957970, 31.802702, 26.586422>,  <33.099442, 31.733334, 27.335720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957970, 31.802702, 26.586422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213081, 32.098530, 26.672472>,  <33.366146, 32.276028, 26.724102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213081, 32.098530, 26.672472>,  <32.957970, 31.802702, 26.586422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213081, 32.098530, 26.672472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591403, -0.291281, -0.751929,
		-0.493441, 0.606790, -0.623156,
		0.637776, 0.739569, 0.215127,
		33.404415, 32.320400, 26.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928520, 32.261993, 26.033951>,  <32.957970, 31.802702, 26.586422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928520, 32.261993, 26.033951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272594, 32.312607, 26.231564>,  <33.479038, 32.342976, 26.350132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272594, 32.312607, 26.231564>,  <32.928520, 32.261993, 26.033951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272594, 32.312607, 26.231564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509575, -0.174657, -0.842513,
		-0.020319, 0.976465, -0.214715,
		0.860187, 0.126532, 0.494033,
		33.530651, 32.350567, 26.379774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314220, 32.704834, 25.586519>,  <32.928520, 32.261993, 26.033951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314220, 32.704834, 25.586519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569309, 32.546093, 25.850584>,  <33.722363, 32.450848, 26.009024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569309, 32.546093, 25.850584>,  <33.314220, 32.704834, 25.586519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569309, 32.546093, 25.850584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703130, -0.050021, -0.709300,
		0.314511, 0.916518, 0.247140,
		0.637724, -0.396854, 0.660163,
		33.760628, 32.427036, 26.048634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875595, 32.947395, 25.326530>,  <33.314220, 32.704834, 25.586519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875595, 32.947395, 25.326530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007854, 32.673901, 25.586737>,  <34.087212, 32.509804, 25.742861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007854, 32.673901, 25.586737>,  <33.875595, 32.947395, 25.326530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007854, 32.673901, 25.586737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892173, 0.001701, -0.451691,
		0.307732, 0.729724, 0.610576,
		0.330648, -0.683739, 0.650517,
		34.107048, 32.468781, 25.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517570, 33.066635, 25.593538>,  <33.875595, 32.947395, 25.326530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517570, 33.066635, 25.593538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505127, 32.667953, 25.623491>,  <34.497662, 32.428745, 25.641462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505127, 32.667953, 25.623491>,  <34.517570, 33.066635, 25.593538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505127, 32.667953, 25.623491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658474, -0.076800, -0.748674,
		0.751960, 0.026015, 0.658695,
		-0.031111, -0.996707, 0.074881,
		34.495792, 32.368942, 25.645956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184742, 32.844219, 25.548733>,  <34.517570, 33.066635, 25.593538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184742, 32.844219, 25.548733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978100, 32.514874, 25.454767>,  <34.854115, 32.317265, 25.398388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978100, 32.514874, 25.454767>,  <35.184742, 32.844219, 25.548733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978100, 32.514874, 25.454767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577157, -0.132204, -0.805860,
		0.632464, -0.551893, 0.543511,
		-0.516603, -0.823369, -0.234915,
		34.823120, 32.267864, 25.384293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681328, 32.320026, 25.341522>,  <35.184742, 32.844219, 25.548733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681328, 32.320026, 25.341522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338661, 32.178509, 25.191341>,  <35.133060, 32.093597, 25.101233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338661, 32.178509, 25.191341>,  <35.681328, 32.320026, 25.341522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338661, 32.178509, 25.191341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477108, -0.266539, -0.837451,
		0.196210, -0.896543, 0.397130,
		-0.856662, -0.353790, -0.375450,
		35.081661, 32.072372, 25.078707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915646, 31.656147, 25.173090>,  <35.681328, 32.320026, 25.341522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915646, 31.656147, 25.173090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579411, 31.753166, 24.979351>,  <35.377670, 31.811377, 24.863108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579411, 31.753166, 24.979351>,  <35.915646, 31.656147, 25.173090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579411, 31.753166, 24.979351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404543, -0.313531, -0.859094,
		-0.360227, -0.918079, 0.165429,
		-0.840584, 0.242546, -0.484346,
		35.327236, 31.825930, 24.834047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754570, 31.146336, 24.853672>,  <35.915646, 31.656147, 25.173090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754570, 31.146336, 24.853672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539001, 31.407181, 24.640388>,  <35.409660, 31.563688, 24.512419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539001, 31.407181, 24.640388>,  <35.754570, 31.146336, 24.853672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539001, 31.407181, 24.640388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128829, -0.561743, -0.817219,
		-0.832445, -0.509111, 0.218725,
		-0.538923, 0.652112, -0.533209,
		35.377323, 31.602814, 24.480427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750061, 30.755821, 24.318968>,  <35.754570, 31.146336, 24.853672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750061, 30.755821, 24.318968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591366, 31.099485, 24.189695>,  <35.496147, 31.305683, 24.112133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591366, 31.099485, 24.189695>,  <35.750061, 30.755821, 24.318968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591366, 31.099485, 24.189695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166755, -0.278756, -0.945774,
		-0.902658, -0.429116, -0.032675,
		-0.396738, 0.859159, -0.323179,
		35.472343, 31.357233, 24.092741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191280, 30.615749, 23.749487>,  <35.750061, 30.755821, 24.318968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191280, 30.615749, 23.749487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354282, 30.979465, 23.715714>,  <35.452084, 31.197695, 23.695450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354282, 30.979465, 23.715714>,  <35.191280, 30.615749, 23.749487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354282, 30.979465, 23.715714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314684, -0.226620, -0.921747,
		-0.857269, 0.349050, -0.378489,
		0.407509, 0.909290, -0.084433,
		35.476536, 31.252253, 23.690384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927437, 30.989906, 23.169821>,  <35.191280, 30.615749, 23.749487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927437, 30.989906, 23.169821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286785, 31.154392, 23.231562>,  <35.502396, 31.253084, 23.268606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286785, 31.154392, 23.231562>,  <34.927437, 30.989906, 23.169821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286785, 31.154392, 23.231562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275555, -0.253999, -0.927121,
		-0.342041, 0.875435, -0.341499,
		0.898375, 0.411215, 0.154352,
		35.556297, 31.277758, 23.277868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132717, 31.473949, 22.646315>,  <34.927437, 30.989906, 23.169821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132717, 31.473949, 22.646315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479176, 31.373898, 22.819397>,  <35.687050, 31.313866, 22.923246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479176, 31.373898, 22.819397>,  <35.132717, 31.473949, 22.646315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479176, 31.373898, 22.819397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398460, -0.177039, -0.899937,
		0.301707, 0.951889, -0.053675,
		0.866142, -0.250130, 0.432704,
		35.739017, 31.298859, 22.949207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528908, 31.551943, 22.085009>,  <35.132717, 31.473949, 22.646315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528908, 31.551943, 22.085009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768150, 31.393215, 22.363522>,  <35.911694, 31.297977, 22.530628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768150, 31.393215, 22.363522>,  <35.528908, 31.551943, 22.085009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768150, 31.393215, 22.363522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729150, -0.091108, -0.678262,
		0.332584, 0.913364, 0.234850,
		0.598103, -0.396820, 0.696280,
		35.947582, 31.274170, 22.572405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106514, 31.931667, 22.041491>,  <35.528908, 31.551943, 22.085009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106514, 31.931667, 22.041491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193417, 31.576637, 22.203978>,  <36.245560, 31.363619, 22.301470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193417, 31.576637, 22.203978>,  <36.106514, 31.931667, 22.041491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193417, 31.576637, 22.203978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712362, -0.140344, -0.687637,
		0.667338, 0.438768, 0.601782,
		0.217257, -0.887573, 0.406219,
		36.258595, 31.310366, 22.325844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710648, 31.974398, 22.316010>,  <36.106514, 31.931667, 22.041491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710648, 31.974398, 22.316010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632034, 31.593859, 22.221090>,  <36.584866, 31.365536, 22.164139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632034, 31.593859, 22.221090>,  <36.710648, 31.974398, 22.316010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632034, 31.593859, 22.221090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752239, 0.008936, -0.658830,
		0.628898, -0.307984, 0.713886,
		-0.196530, -0.951350, -0.237297,
		36.573074, 31.308455, 22.149900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331593, 31.638933, 22.269688>,  <36.710648, 31.974398, 22.316010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331593, 31.638933, 22.269688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 31.360361, 22.088522>,  <36.975342, 31.193218, 21.979822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108936, 31.360361, 22.088522>,  <37.331593, 31.638933, 22.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108936, 31.360361, 22.088522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703489, -0.105173, -0.702882,
		0.441874, -0.709875, 0.548475,
		-0.556643, -0.696431, -0.452916,
		36.941944, 31.151432, 21.952646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787991, 31.052860, 22.195473>,  <37.331593, 31.638933, 22.269688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787991, 31.052860, 22.195473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483963, 31.012175, 21.938738>,  <37.301548, 30.987762, 21.784697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483963, 31.012175, 21.938738>,  <37.787991, 31.052860, 22.195473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483963, 31.012175, 21.938738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640339, -0.285567, -0.713034,
		-0.110760, -0.952945, 0.282182,
		-0.760065, -0.101716, -0.641837,
		37.255943, 30.981661, 21.746187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865456, 30.405575, 21.849972>,  <37.787991, 31.052860, 22.195473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865456, 30.405575, 21.849972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649883, 30.660154, 21.629250>,  <37.520538, 30.812902, 21.496817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649883, 30.660154, 21.629250>,  <37.865456, 30.405575, 21.849972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649883, 30.660154, 21.629250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602358, -0.166735, -0.780618,
		-0.588827, -0.753083, -0.293510,
		-0.538932, 0.636447, -0.551804,
		37.488205, 30.851088, 21.463709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827869, 30.075052, 21.159138>,  <37.865456, 30.405575, 21.849972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827869, 30.075052, 21.159138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731491, 30.454916, 21.079042>,  <37.673664, 30.682835, 21.030985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731491, 30.454916, 21.079042>,  <37.827869, 30.075052, 21.159138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731491, 30.454916, 21.079042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580598, -0.024288, -0.813828,
		-0.777721, -0.312347, -0.545517,
		-0.240947, 0.949658, -0.200237,
		37.659206, 30.739813, 21.018970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531994, 30.122700, 20.469234>,  <37.827869, 30.075052, 21.159138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531994, 30.122700, 20.469234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690514, 30.476173, 20.568874>,  <37.785625, 30.688257, 20.628658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690514, 30.476173, 20.568874>,  <37.531994, 30.122700, 20.469234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690514, 30.476173, 20.568874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576217, -0.028164, -0.816811,
		-0.714787, 0.467238, -0.520355,
		0.396300, 0.883683, 0.249099,
		37.809402, 30.741278, 20.643604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671055, 30.463728, 19.808790>,  <37.531994, 30.122700, 20.469234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671055, 30.463728, 19.808790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887962, 30.709158, 20.038391>,  <38.018105, 30.856415, 20.176151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887962, 30.709158, 20.038391>,  <37.671055, 30.463728, 19.808790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887962, 30.709158, 20.038391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742202, -0.029605, -0.669522,
		-0.393808, 0.789082, -0.471449,
		0.542265, 0.613574, 0.574000,
		38.050640, 30.893230, 20.210590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814754, 31.100214, 19.390596>,  <37.671055, 30.463728, 19.808790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814754, 31.100214, 19.390596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101101, 31.057495, 19.666607>,  <38.272907, 31.031864, 19.832212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101101, 31.057495, 19.666607>,  <37.814754, 31.100214, 19.390596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101101, 31.057495, 19.666607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695610, 0.194794, -0.691507,
		-0.060562, 0.975013, 0.213734,
		0.715862, -0.106797, 0.690026,
		38.315861, 31.025455, 19.873615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376785, 31.379034, 19.041525>,  <37.814754, 31.100214, 19.390596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376785, 31.379034, 19.041525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564140, 31.237724, 19.365454>,  <38.676552, 31.152939, 19.559811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564140, 31.237724, 19.365454>,  <38.376785, 31.379034, 19.041525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564140, 31.237724, 19.365454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849297, -0.072619, -0.522896,
		0.243536, 0.932696, 0.266023,
		0.468385, -0.353277, 0.809822,
		38.704655, 31.131741, 19.608400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888695, 31.767883, 19.199171>,  <38.376785, 31.379034, 19.041525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888695, 31.767883, 19.199171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009857, 31.415892, 19.345533>,  <39.082554, 31.204697, 19.433350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009857, 31.415892, 19.345533>,  <38.888695, 31.767883, 19.199171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009857, 31.415892, 19.345533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855117, 0.081459, -0.511995,
		0.420738, 0.467979, 0.777159,
		0.302909, -0.879978, 0.365904,
		39.100731, 31.151897, 19.455305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526997, 31.867699, 19.490934>,  <38.888695, 31.767883, 19.199171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526997, 31.867699, 19.490934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500782, 31.479382, 19.398615>,  <39.485054, 31.246391, 19.343224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500782, 31.479382, 19.398615>,  <39.526997, 31.867699, 19.490934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500782, 31.479382, 19.398615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927839, 0.025823, -0.372085,
		0.367177, -0.238528, 0.899047,
		-0.065537, -0.970792, -0.230798,
		39.481121, 31.188145, 19.329376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236389, 31.615501, 19.526035>,  <39.526997, 31.867699, 19.490934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236389, 31.615501, 19.526035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042366, 31.330168, 19.323700>,  <39.925953, 31.158968, 19.202299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042366, 31.330168, 19.323700>,  <40.236389, 31.615501, 19.526035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042366, 31.330168, 19.323700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782786, -0.096328, -0.614790,
		0.389824, -0.694174, 0.605111,
		-0.485061, -0.713332, -0.505839,
		39.896847, 31.116169, 19.171947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765514, 31.125168, 19.368732>,  <40.236389, 31.615501, 19.526035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765514, 31.125168, 19.368732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467297, 31.023701, 19.122215>,  <40.288364, 30.962820, 18.974304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467297, 31.023701, 19.122215>,  <40.765514, 31.125168, 19.368732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467297, 31.023701, 19.122215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665090, -0.224016, -0.712370,
		0.042646, -0.940994, 0.335726,
		-0.745544, -0.253668, -0.616292,
		40.243633, 30.947599, 18.937328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911381, 30.371628, 19.113426>,  <40.765514, 31.125168, 19.368732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911381, 30.371628, 19.113426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690151, 30.567316, 18.843679>,  <40.557411, 30.684729, 18.681831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690151, 30.567316, 18.843679>,  <40.911381, 30.371628, 19.113426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690151, 30.567316, 18.843679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713633, -0.139510, -0.686488,
		-0.429925, -0.860930, -0.271965,
		-0.553076, 0.489221, -0.674366,
		40.524227, 30.714083, 18.641369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066311, 30.103109, 18.412664>,  <40.911381, 30.371628, 19.113426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066311, 30.103109, 18.412664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881783, 30.450945, 18.342239>,  <40.771065, 30.659645, 18.299984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881783, 30.450945, 18.342239>,  <41.066311, 30.103109, 18.412664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881783, 30.450945, 18.342239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513577, 0.099915, -0.852206,
		-0.723476, -0.483565, -0.492693,
		-0.461324, 0.869587, -0.176062,
		40.743385, 30.711821, 18.289421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735897, 29.965485, 17.723583>,  <41.066311, 30.103109, 18.412664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735897, 29.965485, 17.723583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768303, 30.356623, 17.800789>,  <40.787746, 30.591305, 17.847113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768303, 30.356623, 17.800789>,  <40.735897, 29.965485, 17.723583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768303, 30.356623, 17.800789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553939, 0.116816, -0.824321,
		-0.828606, 0.173699, -0.532203,
		0.081014, 0.977846, 0.193014,
		40.792606, 30.649977, 17.858692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887966, 30.183289, 17.045694>,  <40.735897, 29.965485, 17.723583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887966, 30.183289, 17.045694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968742, 30.501291, 17.274494>,  <41.017208, 30.692093, 17.411774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968742, 30.501291, 17.274494>,  <40.887966, 30.183289, 17.045694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968742, 30.501291, 17.274494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596565, 0.363339, -0.715608,
		-0.776743, 0.485748, -0.400898,
		0.201944, 0.795005, 0.572001,
		41.029324, 30.739794, 17.446095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780895, 30.752441, 16.585855>,  <40.887966, 30.183289, 17.045694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780895, 30.752441, 16.585855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019726, 30.869459, 16.884632>,  <41.163025, 30.939669, 17.063898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019726, 30.869459, 16.884632>,  <40.780895, 30.752441, 16.585855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019726, 30.869459, 16.884632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672738, 0.324582, -0.664884,
		-0.436951, 0.899480, -0.003005,
		0.597075, 0.292543, 0.746941,
		41.198849, 30.957222, 17.108715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906929, 31.518309, 16.670567>,  <40.780895, 30.752441, 16.585855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906929, 31.518309, 16.670567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220856, 31.305758, 16.798128>,  <41.409214, 31.178226, 16.874664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220856, 31.305758, 16.798128>,  <40.906929, 31.518309, 16.670567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220856, 31.305758, 16.798128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569178, 0.414493, -0.710093,
		0.245143, 0.738806, 0.627750,
		0.784819, -0.531376, 0.318902,
		41.456303, 31.146345, 16.893799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414310, 32.018669, 16.640327>,  <40.906929, 31.518309, 16.670567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414310, 32.018669, 16.640327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588264, 31.669008, 16.553858>,  <41.692635, 31.459211, 16.501976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588264, 31.669008, 16.553858>,  <41.414310, 32.018669, 16.640327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588264, 31.669008, 16.553858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143630, 0.304326, -0.941677,
		0.888959, 0.378470, 0.257901,
		0.434883, -0.874154, -0.216174,
		41.718731, 31.406761, 16.489006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514198, 32.318703, 17.335167>,  <41.414310, 32.018669, 16.640327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514198, 32.318703, 17.335167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719643, 32.655521, 17.401087>,  <41.842907, 32.857613, 17.440639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719643, 32.655521, 17.401087>,  <41.514198, 32.318703, 17.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719643, 32.655521, 17.401087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046937, 0.164210, -0.985308,
		-0.856741, 0.513796, 0.044816,
		0.513606, 0.842051, 0.164802,
		41.873726, 32.908138, 17.450527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150635, 32.905445, 16.893837>,  <41.514198, 32.318703, 17.335167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150635, 32.905445, 16.893837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531506, 33.004574, 16.965336>,  <41.760029, 33.064053, 17.008234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531506, 33.004574, 16.965336>,  <41.150635, 32.905445, 16.893837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531506, 33.004574, 16.965336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139986, 0.166182, -0.976108,
		-0.271606, 0.954446, 0.123542,
		0.952173, 0.247822, 0.178745,
		41.817158, 33.078922, 17.018959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318871, 33.642052, 16.783020>,  <41.150635, 32.905445, 16.893837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318871, 33.642052, 16.783020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594101, 33.362896, 16.703522>,  <41.759239, 33.195404, 16.655823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594101, 33.362896, 16.703522>,  <41.318871, 33.642052, 16.783020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594101, 33.362896, 16.703522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043700, 0.313249, -0.948665,
		0.724318, 0.644072, 0.246038,
		0.688080, -0.697887, -0.198746,
		41.800526, 33.153530, 16.643898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049282, 33.541821, 16.381849>,  <41.318871, 33.642052, 16.783020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049282, 33.541821, 16.381849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253475, 33.614464, 16.045652>,  <42.375992, 33.658051, 15.843934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253475, 33.614464, 16.045652>,  <42.049282, 33.541821, 16.381849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253475, 33.614464, 16.045652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740086, 0.404878, 0.536979,
		0.437815, -0.896155, 0.072278,
		0.510480, 0.181606, -0.840494,
		42.406620, 33.668945, 15.793505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888359, 33.401791, 16.455326>,  <42.049282, 33.541821, 16.381849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888359, 33.401791, 16.455326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841354, 33.662655, 16.155758>,  <42.813152, 33.819172, 15.976017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841354, 33.662655, 16.155758>,  <42.888359, 33.401791, 16.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841354, 33.662655, 16.155758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701707, 0.588172, 0.402070,
		0.702707, -0.478273, -0.526742,
		-0.117516, 0.652156, -0.748921,
		42.806099, 33.858303, 15.931082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123753, 32.897930, 16.863607>,  <42.888359, 33.401791, 16.455326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123753, 32.897930, 16.863607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769756, 33.075539, 16.807564>,  <42.557358, 33.182102, 16.773937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769756, 33.075539, 16.807564>,  <43.123753, 32.897930, 16.863607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769756, 33.075539, 16.807564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271049, -0.246644, 0.930430,
		0.378575, 0.861401, 0.338630,
		-0.884993, 0.444023, -0.140109,
		42.504257, 33.208744, 16.765532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055637, 33.479683, 17.282173>,  <43.123753, 32.897930, 16.863607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055637, 33.479683, 17.282173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674232, 33.383495, 17.209524>,  <42.445389, 33.325783, 17.165936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674232, 33.383495, 17.209524>,  <43.055637, 33.479683, 17.282173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674232, 33.383495, 17.209524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222989, 0.157618, 0.961994,
		-0.202706, 0.957773, -0.203914,
		-0.953512, -0.240473, -0.181623,
		42.388180, 33.311352, 17.155037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633438, 33.951492, 17.557434>,  <43.055637, 33.479683, 17.282173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633438, 33.951492, 17.557434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410721, 33.620220, 17.531834>,  <42.277088, 33.421455, 17.516474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410721, 33.620220, 17.531834>,  <42.633438, 33.951492, 17.557434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410721, 33.620220, 17.531834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318361, 0.141603, 0.937334,
		-0.767218, 0.542280, -0.342504,
		-0.556798, -0.828179, -0.064000,
		42.243683, 33.371765, 17.512634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006622, 34.086525, 17.754007>,  <42.633438, 33.951492, 17.557434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006622, 34.086525, 17.754007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069183, 33.698837, 17.830055>,  <42.106720, 33.466225, 17.875685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069183, 33.698837, 17.830055>,  <42.006622, 34.086525, 17.754007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069183, 33.698837, 17.830055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166800, 0.163806, 0.972289,
		-0.973507, -0.183777, -0.136048,
		0.156399, -0.969223, 0.190120,
		42.116104, 33.408070, 17.887091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501301, 33.894444, 18.064159>,  <42.006622, 34.086525, 17.754007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501301, 33.894444, 18.064159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779808, 33.626873, 18.168272>,  <41.946911, 33.466331, 18.230740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779808, 33.626873, 18.168272>,  <41.501301, 33.894444, 18.064159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779808, 33.626873, 18.168272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316858, 0.038933, 0.947673,
		-0.644058, -0.742308, -0.184847,
		0.696269, -0.668926, 0.260282,
		41.988689, 33.426197, 18.246357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157982, 33.365231, 18.540171>,  <41.501301, 33.894444, 18.064159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157982, 33.365231, 18.540171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541775, 33.305275, 18.635605>,  <41.772053, 33.269302, 18.692865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541775, 33.305275, 18.635605>,  <41.157982, 33.365231, 18.540171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541775, 33.305275, 18.635605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255215, -0.103502, 0.961329,
		-0.119416, -0.983268, -0.137567,
		0.959482, -0.149907, 0.238585,
		41.829620, 33.260311, 18.707182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042858, 32.887833, 19.033556>,  <41.157982, 33.365231, 18.540171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042858, 32.887833, 19.033556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422325, 33.004635, 19.082161>,  <41.650005, 33.074715, 19.111324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422325, 33.004635, 19.082161>,  <41.042858, 32.887833, 19.033556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422325, 33.004635, 19.082161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027628, -0.306220, 0.951560,
		0.315067, -0.906071, -0.282434,
		0.948667, 0.292002, 0.121513,
		41.706924, 33.092236, 19.118614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345547, 32.395584, 19.434269>,  <41.042858, 32.887833, 19.033556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345547, 32.395584, 19.434269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613514, 32.687458, 19.489067>,  <41.774296, 32.862583, 19.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613514, 32.687458, 19.489067>,  <41.345547, 32.395584, 19.434269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613514, 32.687458, 19.489067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059077, -0.236332, 0.969875,
		0.740077, -0.641647, -0.201432,
		0.669922, 0.729682, 0.136997,
		41.814491, 32.906364, 19.530167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646980, 32.191864, 20.046316>,  <41.345547, 32.395584, 19.434269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646980, 32.191864, 20.046316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773823, 32.570599, 20.024628>,  <41.849930, 32.797840, 20.011616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773823, 32.570599, 20.024628>,  <41.646980, 32.191864, 20.046316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773823, 32.570599, 20.024628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010612, 0.053623, 0.998505,
		0.948330, -0.317208, 0.006956,
		0.317107, 0.946839, -0.054219,
		41.868954, 32.854649, 20.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122478, 32.315891, 20.531351>,  <41.646980, 32.191864, 20.046316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122478, 32.315891, 20.531351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965607, 32.677841, 20.465153>,  <41.871483, 32.895012, 20.425434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965607, 32.677841, 20.465153>,  <42.122478, 32.315891, 20.531351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965607, 32.677841, 20.465153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163552, 0.108450, 0.980556,
		0.905231, 0.411625, 0.105462,
		-0.392184, 0.904878, -0.165494,
		41.847950, 32.949303, 20.415504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307739, 32.709118, 21.043415>,  <42.122478, 32.315891, 20.531351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307739, 32.709118, 21.043415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007622, 32.944988, 20.923859>,  <41.827549, 33.086510, 20.852125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.007622, 32.944988, 20.923859>,  <42.307739, 32.709118, 21.043415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007622, 32.944988, 20.923859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249062, 0.166672, 0.954038,
		0.612389, 0.790255, 0.021812,
		-0.750298, 0.589675, -0.298891,
		41.782532, 33.121891, 20.834190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355171, 33.252197, 21.454752>,  <42.307739, 32.709118, 21.043415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355171, 33.252197, 21.454752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978100, 33.257961, 21.321396>,  <41.751858, 33.261417, 21.241383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978100, 33.257961, 21.321396>,  <42.355171, 33.252197, 21.454752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978100, 33.257961, 21.321396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329249, 0.122523, 0.936260,
		0.054336, 0.992361, -0.110756,
		-0.942678, 0.014406, -0.333391,
		41.695297, 33.262283, 21.221378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992039, 33.811989, 21.777128>,  <42.355171, 33.252197, 21.454752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992039, 33.811989, 21.777128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731007, 33.528240, 21.670593>,  <41.574387, 33.357990, 21.606672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731007, 33.528240, 21.670593>,  <41.992039, 33.811989, 21.777128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731007, 33.528240, 21.670593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359627, -0.019427, 0.932894,
		-0.666940, 0.704569, -0.242430,
		-0.652579, -0.709369, -0.266339,
		41.535233, 33.315430, 21.590693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424000, 33.931370, 22.157892>,  <41.992039, 33.811989, 21.777128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424000, 33.931370, 22.157892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329315, 33.559929, 22.043585>,  <41.272503, 33.337063, 21.975000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329315, 33.559929, 22.043585>,  <41.424000, 33.931370, 22.157892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329315, 33.559929, 22.043585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618212, -0.082944, 0.781622,
		-0.749520, 0.361686, -0.554440,
		-0.236715, -0.928603, -0.285767,
		41.258301, 33.281349, 21.957855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667816, 33.900646, 22.375816>,  <41.424000, 33.931370, 22.157892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667816, 33.900646, 22.375816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809437, 33.530109, 22.324360>,  <40.894409, 33.307789, 22.293486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809437, 33.530109, 22.324360>,  <40.667816, 33.900646, 22.375816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809437, 33.530109, 22.324360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525977, -0.310959, 0.791613,
		-0.773304, -0.212606, -0.597327,
		0.354047, -0.926338, -0.128640,
		40.915649, 33.252209, 22.285769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106277, 33.473206, 22.253428>,  <40.667816, 33.900646, 22.375816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106277, 33.473206, 22.253428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409260, 33.259377, 22.403357>,  <40.591049, 33.131081, 22.493315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409260, 33.259377, 22.403357>,  <40.106277, 33.473206, 22.253428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409260, 33.259377, 22.403357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569404, -0.260008, 0.779856,
		-0.319429, -0.804135, -0.501330,
		0.757459, -0.534568, 0.374824,
		40.636497, 33.099007, 22.515804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728580, 32.890705, 22.531019>,  <40.106277, 33.473206, 22.253428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728580, 32.890705, 22.531019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093658, 32.889774, 22.694471>,  <40.312706, 32.889214, 22.792543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093658, 32.889774, 22.694471>,  <39.728580, 32.890705, 22.531019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093658, 32.889774, 22.694471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382283, -0.358181, 0.851801,
		0.144381, -0.933649, -0.327801,
		0.912696, -0.002329, 0.408633,
		40.367466, 32.889076, 22.817060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715725, 32.240322, 22.881699>,  <39.728580, 32.890705, 22.531019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715725, 32.240322, 22.881699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003521, 32.445419, 23.069069>,  <40.176201, 32.568478, 23.181492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003521, 32.445419, 23.069069>,  <39.715725, 32.240322, 22.881699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003521, 32.445419, 23.069069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328256, -0.343315, 0.879990,
		0.612029, -0.786910, -0.078700,
		0.719492, 0.512745, 0.468426,
		40.219368, 32.599243, 23.209597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966293, 31.792473, 23.423138>,  <39.715725, 32.240322, 22.881699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966293, 31.792473, 23.423138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062683, 32.163696, 23.536728>,  <40.120518, 32.386429, 23.604881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062683, 32.163696, 23.536728>,  <39.966293, 31.792473, 23.423138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062683, 32.163696, 23.536728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363754, -0.184906, 0.912959,
		0.899787, -0.323294, 0.293027,
		0.240972, 0.928058, 0.283975,
		40.134975, 32.442112, 23.621920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312077, 31.727823, 24.062984>,  <39.966293, 31.792473, 23.423138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312077, 31.727823, 24.062984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187626, 32.107967, 24.064348>,  <40.112957, 32.336056, 24.065166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187626, 32.107967, 24.064348>,  <40.312077, 31.727823, 24.062984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187626, 32.107967, 24.064348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331807, -0.111987, 0.936677,
		0.890564, 0.290294, 0.350179,
		-0.311127, 0.950362, 0.003410,
		40.094288, 32.393078, 24.065371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384064, 31.920610, 24.798336>,  <40.312077, 31.727823, 24.062984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384064, 31.920610, 24.798336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171906, 32.215450, 24.630831>,  <40.044613, 32.392353, 24.530327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171906, 32.215450, 24.630831>,  <40.384064, 31.920610, 24.798336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171906, 32.215450, 24.630831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632786, -0.015506, 0.774172,
		0.564150, 0.675604, 0.474652,
		-0.530393, 0.737102, -0.418764,
		40.012787, 32.436581, 24.505201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216888, 32.325382, 25.417263>,  <40.384064, 31.920610, 24.798336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216888, 32.325382, 25.417263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946735, 32.421894, 25.138510>,  <39.784645, 32.479801, 24.971258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946735, 32.421894, 25.138510>,  <40.216888, 32.325382, 25.417263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946735, 32.421894, 25.138510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664081, 0.211970, 0.716984,
		0.320709, 0.947024, 0.017066,
		-0.675383, 0.241276, -0.696881,
		39.744122, 32.494278, 24.929445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015514, 33.031197, 25.500343>,  <40.216888, 32.325382, 25.417263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015514, 33.031197, 25.500343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700989, 32.889198, 25.298082>,  <39.512272, 32.803997, 25.176725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700989, 32.889198, 25.298082>,  <40.015514, 33.031197, 25.500343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700989, 32.889198, 25.298082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616079, 0.389018, 0.684917,
		-0.046437, 0.850083, -0.524598,
		-0.786314, -0.354999, -0.505654,
		39.465096, 32.782700, 25.146387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512264, 33.512283, 25.565943>,  <40.015514, 33.031197, 25.500343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512264, 33.512283, 25.565943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288582, 33.206421, 25.437826>,  <39.154373, 33.022903, 25.360956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288582, 33.206421, 25.437826>,  <39.512264, 33.512283, 25.565943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288582, 33.206421, 25.437826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750846, 0.303363, 0.586686,
		-0.351449, 0.568569, -0.743783,
		-0.559208, -0.764657, -0.320291,
		39.120819, 32.977024, 25.341740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869156, 33.809589, 25.337589>,  <39.512264, 33.512283, 25.565943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869156, 33.809589, 25.337589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784382, 33.428619, 25.425203>,  <38.733517, 33.200039, 25.477772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784382, 33.428619, 25.425203>,  <38.869156, 33.809589, 25.337589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784382, 33.428619, 25.425203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831223, 0.293547, 0.472121,
		-0.513956, -0.082009, -0.853888,
		-0.211938, -0.952420, 0.219037,
		38.720802, 33.142895, 25.490915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141392, 33.696793, 25.096703>,  <38.869156, 33.809589, 25.337589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141392, 33.696793, 25.096703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237728, 33.410782, 25.359222>,  <38.295528, 33.239174, 25.516735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237728, 33.410782, 25.359222>,  <38.141392, 33.696793, 25.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237728, 33.410782, 25.359222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881074, 0.122539, 0.456829,
		-0.407069, -0.688271, -0.600482,
		0.240840, -0.715030, 0.656299,
		38.309978, 33.196274, 25.556112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499069, 33.524933, 25.281145>,  <38.141392, 33.696793, 25.096703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499069, 33.524933, 25.281145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734779, 33.356079, 25.556700>,  <37.876205, 33.254768, 25.722033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734779, 33.356079, 25.556700>,  <37.499069, 33.524933, 25.281145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734779, 33.356079, 25.556700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718753, 0.115513, 0.685602,
		-0.368991, -0.899144, -0.235341,
		0.589270, -0.422133, 0.688886,
		37.911560, 33.229439, 25.763365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946304, 33.074986, 25.622566>,  <37.499069, 33.524933, 25.281145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946304, 33.074986, 25.622566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261234, 33.151394, 25.857046>,  <37.450191, 33.197239, 25.997734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261234, 33.151394, 25.857046>,  <36.946304, 33.074986, 25.622566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261234, 33.151394, 25.857046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613838, 0.154011, 0.774264,
		0.057617, -0.969429, 0.238510,
		0.787327, 0.191017, 0.586199,
		37.497433, 33.208698, 26.032906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844112, 32.896980, 26.315201>,  <36.946304, 33.074986, 25.622566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844112, 32.896980, 26.315201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155277, 33.140411, 26.377790>,  <37.341976, 33.286472, 26.415344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155277, 33.140411, 26.377790>,  <36.844112, 32.896980, 26.315201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155277, 33.140411, 26.377790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358952, 0.225992, 0.905584,
		0.515760, -0.760629, 0.394253,
		0.777911, 0.608581, 0.156472,
		37.388649, 33.322987, 26.424732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094421, 32.730942, 26.979959>,  <36.844112, 32.896980, 26.315201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094421, 32.730942, 26.979959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212322, 33.105133, 26.901991>,  <37.283062, 33.329647, 26.855209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212322, 33.105133, 26.901991>,  <37.094421, 32.730942, 26.979959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212322, 33.105133, 26.901991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373301, 0.300500, 0.877694,
		0.879640, -0.185938, 0.437790,
		0.294752, 0.935482, -0.194921,
		37.300747, 33.385777, 26.843515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418446, 32.902336, 27.538000>,  <37.094421, 32.730942, 26.979959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418446, 32.902336, 27.538000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362354, 33.278156, 27.413050>,  <37.328697, 33.503647, 27.338079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362354, 33.278156, 27.413050>,  <37.418446, 32.902336, 27.538000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362354, 33.278156, 27.413050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552653, 0.187498, 0.812047,
		0.821529, 0.286510, 0.492953,
		-0.140232, 0.939551, -0.312375,
		37.320286, 33.560020, 27.319338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648479, 33.313152, 28.145706>,  <37.418446, 32.902336, 27.538000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648479, 33.313152, 28.145706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400066, 33.532455, 27.921659>,  <37.251019, 33.664036, 27.787231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400066, 33.532455, 27.921659>,  <37.648479, 33.313152, 28.145706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400066, 33.532455, 27.921659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479994, 0.298910, 0.824778,
		0.619616, 0.781067, 0.077529,
		-0.621032, 0.548259, -0.560117,
		37.213757, 33.696934, 27.753624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589912, 33.990036, 28.398808>,  <37.648479, 33.313152, 28.145706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589912, 33.990036, 28.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262249, 33.905716, 28.185436>,  <37.065651, 33.855125, 28.057413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262249, 33.905716, 28.185436>,  <37.589912, 33.990036, 28.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262249, 33.905716, 28.185436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572840, 0.253750, 0.779401,
		-0.028938, 0.944021, -0.328614,
		-0.819156, -0.210798, -0.533430,
		37.016502, 33.842476, 28.025408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135891, 34.502441, 28.699799>,  <37.589912, 33.990036, 28.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135891, 34.502441, 28.699799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897110, 34.231266, 28.528194>,  <36.753841, 34.068562, 28.425232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897110, 34.231266, 28.528194>,  <37.135891, 34.502441, 28.699799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897110, 34.231266, 28.528194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700925, 0.180541, 0.690007,
		-0.390328, 0.712604, -0.582958,
		-0.596950, -0.677938, -0.429012,
		36.718025, 34.027885, 28.399490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470806, 34.847988, 28.559525>,  <37.135891, 34.502441, 28.699799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470806, 34.847988, 28.559525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388897, 34.459240, 28.606050>,  <36.339752, 34.225990, 28.633966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388897, 34.459240, 28.606050>,  <36.470806, 34.847988, 28.559525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388897, 34.459240, 28.606050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616714, 0.220384, 0.755708,
		-0.760088, 0.083012, -0.644496,
		-0.204769, -0.971874, 0.116317,
		36.327465, 34.167679, 28.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937706, 34.898037, 28.897284>,  <36.470806, 34.847988, 28.559525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937706, 34.898037, 28.897284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977020, 34.499985, 28.894234>,  <36.000610, 34.261154, 28.892405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977020, 34.499985, 28.894234>,  <35.937706, 34.898037, 28.897284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977020, 34.499985, 28.894234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671831, -0.072004, 0.737196,
		-0.734154, -0.067336, -0.675636,
		0.098289, -0.995129, -0.007624,
		36.006508, 34.201447, 28.891947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267666, 34.575871, 28.739672>,  <35.937706, 34.898037, 28.897284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267666, 34.575871, 28.739672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478432, 34.298126, 28.935720>,  <35.604893, 34.131477, 29.053350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478432, 34.298126, 28.935720>,  <35.267666, 34.575871, 28.739672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478432, 34.298126, 28.935720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757851, -0.122799, 0.640767,
		-0.384738, -0.709070, -0.590928,
		0.526914, -0.694363, 0.490124,
		35.636505, 34.089817, 29.082758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757919, 34.103256, 28.946205>,  <35.267666, 34.575871, 28.739672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757919, 34.103256, 28.946205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075527, 34.024109, 29.176121>,  <35.266090, 33.976620, 29.314070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075527, 34.024109, 29.176121>,  <34.757919, 34.103256, 28.946205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075527, 34.024109, 29.176121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607321, -0.217210, 0.764187,
		-0.026355, -0.955861, -0.292636,
		0.794019, -0.197864, 0.574790,
		35.313732, 33.964748, 29.348558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581276, 33.536938, 29.314056>,  <34.757919, 34.103256, 28.946205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581276, 33.536938, 29.314056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869011, 33.697563, 29.540791>,  <35.041653, 33.793938, 29.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869011, 33.697563, 29.540791>,  <34.581276, 33.536938, 29.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869011, 33.697563, 29.540791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611095, -0.022215, 0.791245,
		0.330330, -0.915560, 0.229415,
		0.719336, 0.401566, 0.566833,
		35.084812, 33.818031, 29.710840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700378, 33.114227, 29.870214>,  <34.581276, 33.536938, 29.314056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700378, 33.114227, 29.870214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837154, 33.460125, 30.017347>,  <34.919220, 33.667664, 30.105627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837154, 33.460125, 30.017347>,  <34.700378, 33.114227, 29.870214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837154, 33.460125, 30.017347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718514, -0.011691, 0.695415,
		0.605655, -0.502080, 0.617331,
		0.341937, 0.864742, 0.367832,
		34.939735, 33.719547, 30.127697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802471, 33.049416, 30.631628>,  <34.700378, 33.114227, 29.870214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802471, 33.049416, 30.631628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762470, 33.439392, 30.552139>,  <34.738468, 33.673378, 30.504446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762470, 33.439392, 30.552139>,  <34.802471, 33.049416, 30.631628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762470, 33.439392, 30.552139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642821, 0.089140, 0.760812,
		0.759461, 0.203824, 0.617799,
		-0.100002, 0.974941, -0.198721,
		34.732471, 33.731873, 30.492523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169270, 32.660320, 31.088877>,  <34.802471, 33.049416, 30.631628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169270, 32.660320, 31.088877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418968, 32.603867, 31.396225>,  <35.568787, 32.569996, 31.580635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418968, 32.603867, 31.396225>,  <35.169270, 32.660320, 31.088877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418968, 32.603867, 31.396225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771789, -0.041002, -0.634556,
		0.121062, 0.989141, 0.083329,
		0.624249, -0.141133, 0.768372,
		35.606243, 32.561527, 31.626736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762680, 33.064575, 30.989933>,  <35.169270, 32.660320, 31.088877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762680, 33.064575, 30.989933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904484, 32.818729, 31.271805>,  <35.989567, 32.671223, 31.440928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904484, 32.818729, 31.271805>,  <35.762680, 33.064575, 30.989933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904484, 32.818729, 31.271805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866611, -0.067056, -0.494458,
		0.351153, 0.785975, 0.508857,
		0.354509, -0.614612, 0.704682,
		36.010838, 32.634346, 31.483210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488781, 33.210888, 31.036968>,  <35.762680, 33.064575, 30.989933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488781, 33.210888, 31.036968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480518, 32.851288, 31.211948>,  <36.475559, 32.635529, 31.316936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480518, 32.851288, 31.211948>,  <36.488781, 33.210888, 31.036968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480518, 32.851288, 31.211948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736408, -0.309626, -0.601527,
		0.676222, 0.309716, 0.668431,
		-0.020661, -0.899004, 0.437453,
		36.474319, 32.581585, 31.343184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222855, 33.002354, 31.237347>,  <36.488781, 33.210888, 31.036968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222855, 33.002354, 31.237347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034218, 32.649834, 31.225262>,  <36.921036, 32.438324, 31.218010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034218, 32.649834, 31.225262>,  <37.222855, 33.002354, 31.237347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034218, 32.649834, 31.225262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606298, -0.299178, -0.736814,
		0.640313, -0.365797, 0.675420,
		-0.471595, -0.881298, -0.030214,
		36.892738, 32.385445, 31.216198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676174, 32.621487, 31.101921>,  <37.222855, 33.002354, 31.237347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676174, 32.621487, 31.101921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394341, 32.349960, 31.019188>,  <37.225243, 32.187046, 30.969549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394341, 32.349960, 31.019188>,  <37.676174, 32.621487, 31.101921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394341, 32.349960, 31.019188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672662, -0.546046, -0.499359,
		0.226032, -0.490967, 0.841345,
		-0.704582, -0.678812, -0.206831,
		37.182964, 32.146317, 30.957138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929016, 31.883860, 31.277195>,  <37.676174, 32.621487, 31.101921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929016, 31.883860, 31.277195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653244, 31.827005, 30.993088>,  <37.487782, 31.792892, 30.822622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653244, 31.827005, 30.993088>,  <37.929016, 31.883860, 31.277195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653244, 31.827005, 30.993088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677074, -0.474905, -0.562171,
		-0.257405, -0.868482, 0.423652,
		-0.689430, -0.142138, -0.710270,
		37.446415, 31.784365, 30.780006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001709, 31.186501, 31.060997>,  <37.929016, 31.883860, 31.277195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001709, 31.186501, 31.060997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776173, 31.343292, 30.770224>,  <37.640850, 31.437366, 30.595760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776173, 31.343292, 30.770224>,  <38.001709, 31.186501, 31.060997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776173, 31.343292, 30.770224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625809, -0.371584, -0.685776,
		-0.538926, -0.841592, -0.035789,
		-0.563845, 0.391980, -0.726932,
		37.607018, 31.460886, 30.552143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888596, 30.640446, 30.491482>,  <38.001709, 31.186501, 31.060997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888596, 30.640446, 30.491482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837460, 31.007484, 30.340921>,  <37.806778, 31.227707, 30.250586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837460, 31.007484, 30.340921>,  <37.888596, 30.640446, 30.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837460, 31.007484, 30.340921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546052, -0.251697, -0.799047,
		-0.827941, -0.307681, -0.468878,
		-0.127836, 0.917595, -0.376400,
		37.799110, 31.282763, 30.228001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868599, 30.487135, 29.811882>,  <37.888596, 30.640446, 30.491482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868599, 30.487135, 29.811882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920547, 30.883661, 29.803593>,  <37.951717, 31.121576, 29.798620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920547, 30.883661, 29.803593>,  <37.868599, 30.487135, 29.811882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920547, 30.883661, 29.803593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550674, -0.089490, -0.829910,
		-0.824556, 0.096368, -0.557513,
		0.129869, 0.991315, -0.020722,
		37.959507, 31.181055, 29.797377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838482, 30.793964, 29.042887>,  <37.868599, 30.487135, 29.811882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838482, 30.793964, 29.042887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047497, 31.061361, 29.254572>,  <38.172905, 31.221800, 29.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047497, 31.061361, 29.254572>,  <37.838482, 30.793964, 29.042887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047497, 31.061361, 29.254572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660517, 0.075094, -0.747046,
		-0.539136, 0.739918, -0.402311,
		0.522542, 0.668492, 0.529215,
		38.204258, 31.261909, 29.413336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897285, 31.345964, 28.581093>,  <37.838482, 30.793964, 29.042887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897285, 31.345964, 28.581093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176170, 31.382776, 28.865465>,  <38.343502, 31.404863, 29.036089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176170, 31.382776, 28.865465>,  <37.897285, 31.345964, 28.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176170, 31.382776, 28.865465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702096, 0.112588, -0.703125,
		-0.144749, 0.989371, 0.013886,
		0.697215, 0.092028, 0.710931,
		38.385334, 31.410385, 29.078745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344284, 31.784927, 28.378872>,  <37.897285, 31.345964, 28.581093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344284, 31.784927, 28.378872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593327, 31.654383, 28.663363>,  <38.742752, 31.576056, 28.834057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593327, 31.654383, 28.663363>,  <38.344284, 31.784927, 28.378872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593327, 31.654383, 28.663363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780164, 0.188206, -0.596592,
		0.060848, 0.926319, 0.371795,
		0.622609, -0.326362, 0.711229,
		38.780109, 31.556475, 28.876732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933914, 32.234642, 28.322390>,  <38.344284, 31.784927, 28.378872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933914, 32.234642, 28.322390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051956, 31.893259, 28.494213>,  <39.122780, 31.688429, 28.597307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051956, 31.893259, 28.494213>,  <38.933914, 32.234642, 28.322390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051956, 31.893259, 28.494213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837878, 0.015081, -0.545649,
		0.459212, 0.520941, 0.719545,
		0.295103, -0.853459, 0.429560,
		39.140488, 31.637220, 28.623081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570312, 32.354153, 28.575695>,  <38.933914, 32.234642, 28.322390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570312, 32.354153, 28.575695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522930, 31.963388, 28.504566>,  <39.494499, 31.728931, 28.461889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522930, 31.963388, 28.504566>,  <39.570312, 32.354153, 28.575695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522930, 31.963388, 28.504566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861045, -0.011871, -0.508390,
		0.494539, -0.213336, 0.842567,
		-0.118460, -0.976907, -0.177821,
		39.487392, 31.670317, 28.451220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306293, 32.088192, 28.591307>,  <39.570312, 32.354153, 28.575695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306293, 32.088192, 28.591307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101551, 31.783949, 28.431568>,  <39.978706, 31.601402, 28.335726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101551, 31.783949, 28.431568>,  <40.306293, 32.088192, 28.591307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101551, 31.783949, 28.431568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802763, -0.257959, -0.537613,
		0.305898, -0.595761, 0.742627,
		-0.511856, -0.760609, -0.399346,
		39.947994, 31.555767, 28.311764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736847, 31.450298, 28.697552>,  <40.306293, 32.088192, 28.591307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736847, 31.450298, 28.697552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488155, 31.385454, 28.391041>,  <40.338940, 31.346548, 28.207134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488155, 31.385454, 28.391041>,  <40.736847, 31.450298, 28.697552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488155, 31.385454, 28.391041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781753, -0.188609, -0.594381,
		-0.048171, -0.968580, 0.243994,
		-0.621725, -0.162111, -0.766276,
		40.301640, 31.336821, 28.161158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078445, 31.082443, 28.296061>,  <40.736847, 31.450298, 28.697552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078445, 31.082443, 28.296061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782360, 31.188995, 28.049120>,  <40.604710, 31.252926, 27.900955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782360, 31.188995, 28.049120>,  <41.078445, 31.082443, 28.296061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782360, 31.188995, 28.049120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585589, -0.195789, -0.786608,
		-0.330407, -0.943774, -0.011063,
		-0.740214, 0.266379, -0.617354,
		40.560295, 31.268909, 27.863914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108360, 30.629478, 27.839828>,  <41.078445, 31.082443, 28.296061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108360, 30.629478, 27.839828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900757, 30.915373, 27.652304>,  <40.776196, 31.086908, 27.539789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900757, 30.915373, 27.652304>,  <41.108360, 30.629478, 27.839828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900757, 30.915373, 27.652304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576478, -0.112267, -0.809363,
		-0.631112, -0.690326, -0.353761,
		-0.519009, 0.714735, -0.468811,
		40.745052, 31.129793, 27.511660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108505, 30.438374, 27.114136>,  <41.108360, 30.629478, 27.839828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108505, 30.438374, 27.114136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990002, 30.820131, 27.099335>,  <40.918900, 31.049185, 27.090454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990002, 30.820131, 27.099335>,  <41.108505, 30.438374, 27.114136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990002, 30.820131, 27.099335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513389, 0.126454, -0.848788,
		-0.805397, -0.270454, -0.527437,
		-0.296254, 0.954392, -0.037002,
		40.901127, 31.106449, 27.088234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745296, 30.551065, 26.469555>,  <41.108505, 30.438374, 27.114136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745296, 30.551065, 26.469555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893463, 30.900995, 26.594437>,  <40.982365, 31.110954, 26.669365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893463, 30.900995, 26.594437>,  <40.745296, 30.551065, 26.469555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893463, 30.900995, 26.594437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488568, 0.102365, -0.866500,
		-0.789995, 0.473500, -0.389494,
		0.370417, 0.874825, 0.312205,
		41.004589, 31.163443, 26.688099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688896, 30.983734, 25.872080>,  <40.745296, 30.551065, 26.469555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688896, 30.983734, 25.872080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955353, 31.162558, 26.110872>,  <41.115227, 31.269852, 26.254148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955353, 31.162558, 26.110872>,  <40.688896, 30.983734, 25.872080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955353, 31.162558, 26.110872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596120, 0.161878, -0.786407,
		-0.448207, 0.879736, -0.158665,
		0.666146, 0.447057, 0.596983,
		41.155197, 31.296675, 26.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846729, 31.610601, 25.555666>,  <40.688896, 30.983734, 25.872080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846729, 31.610601, 25.555666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153496, 31.537413, 25.801708>,  <41.337555, 31.493500, 25.949333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153496, 31.537413, 25.801708>,  <40.846729, 31.610601, 25.555666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153496, 31.537413, 25.801708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627569, 0.013490, -0.778444,
		0.134135, 0.983026, 0.125173,
		0.766919, -0.182972, 0.615107,
		41.383572, 31.482521, 25.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333054, 32.256458, 25.742289>,  <40.846729, 31.610601, 25.555666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333054, 32.256458, 25.742289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477802, 31.884014, 25.724049>,  <41.564651, 31.660547, 25.713104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477802, 31.884014, 25.724049>,  <41.333054, 32.256458, 25.742289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477802, 31.884014, 25.724049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537200, 0.248253, -0.806093,
		0.761885, 0.267204, 0.590029,
		0.361868, -0.931114, -0.045599,
		41.586361, 31.604679, 25.710369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759266, 32.464672, 25.281540>,  <41.333054, 32.256458, 25.742289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759266, 32.464672, 25.281540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831440, 32.078270, 25.355604>,  <41.874744, 31.846430, 25.400043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831440, 32.078270, 25.355604>,  <41.759266, 32.464672, 25.281540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831440, 32.078270, 25.355604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600654, -0.040853, -0.798465,
		0.778882, 0.255290, 0.572861,
		0.180436, -0.966001, 0.185161,
		41.885571, 31.788469, 25.411152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540478, 32.355640, 25.208469>,  <41.759266, 32.464672, 25.281540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540478, 32.355640, 25.208469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322659, 32.028965, 25.132069>,  <42.191967, 31.832958, 25.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.322659, 32.028965, 25.132069>,  <42.540478, 32.355640, 25.208469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322659, 32.028965, 25.132069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548009, -0.174051, -0.818164,
		0.634943, -0.550202, 0.542333,
		-0.544549, -0.816691, -0.191003,
		42.159294, 31.783958, 25.074768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962280, 31.705616, 25.044142>,  <42.540478, 32.355640, 25.208469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962280, 31.705616, 25.044142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596325, 31.673523, 24.885880>,  <42.376751, 31.654268, 24.790922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596325, 31.673523, 24.885880>,  <42.962280, 31.705616, 25.044142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596325, 31.673523, 24.885880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403644, -0.199150, -0.892978,
		-0.007150, -0.976679, 0.214585,
		-0.914888, -0.080231, -0.395655,
		42.321857, 31.649454, 24.767183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035866, 31.151459, 24.629368>,  <42.962280, 31.705616, 25.044142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035866, 31.151459, 24.629368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707150, 31.329792, 24.487444>,  <42.509918, 31.436792, 24.402288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707150, 31.329792, 24.487444>,  <43.035866, 31.151459, 24.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707150, 31.329792, 24.487444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252482, -0.273305, -0.928201,
		-0.510797, -0.852370, 0.112033,
		-0.821790, 0.445835, -0.354812,
		42.460613, 31.463543, 24.381001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615818, 30.580051, 24.207420>,  <43.035866, 31.151459, 24.629368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615818, 30.580051, 24.207420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532494, 30.945616, 24.068068>,  <42.482498, 31.164955, 23.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532494, 30.945616, 24.068068>,  <42.615818, 30.580051, 24.207420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532494, 30.945616, 24.068068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245071, -0.296063, -0.923194,
		-0.946862, -0.277688, -0.162301,
		-0.208309, 0.913912, -0.348384,
		42.470001, 31.219790, 23.963552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104572, 30.474133, 23.763746>,  <42.615818, 30.580051, 24.207420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104572, 30.474133, 23.763746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299156, 30.814957, 23.686438>,  <42.415905, 31.019451, 23.640053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299156, 30.814957, 23.686438>,  <42.104572, 30.474133, 23.763746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299156, 30.814957, 23.686438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292096, -0.367082, -0.883137,
		-0.823432, 0.373154, -0.427453,
		0.486456, 0.852060, -0.193270,
		42.445091, 31.070576, 23.628456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899830, 30.559464, 23.046259>,  <42.104572, 30.474133, 23.763746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899830, 30.559464, 23.046259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211266, 30.800821, 23.115206>,  <42.398129, 30.945637, 23.156574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211266, 30.800821, 23.115206>,  <41.899830, 30.559464, 23.046259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211266, 30.800821, 23.115206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426821, -0.307841, -0.850328,
		-0.460023, 0.735628, -0.497224,
		0.778591, 0.603396, 0.172368,
		42.444843, 30.981840, 23.166916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138500, 30.884090, 22.344997>,  <41.899830, 30.559464, 23.046259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138500, 30.884090, 22.344997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447624, 30.941595, 22.592255>,  <42.633099, 30.976097, 22.740608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447624, 30.941595, 22.592255>,  <42.138500, 30.884090, 22.344997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447624, 30.941595, 22.592255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631819, -0.266039, -0.728030,
		0.059787, 0.953182, -0.296428,
		0.772807, 0.143762, 0.618144,
		42.679466, 30.984724, 22.777699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709946, 31.072824, 21.915859>,  <42.138500, 30.884090, 22.344997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709946, 31.072824, 21.915859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866493, 30.904613, 22.243271>,  <42.960423, 30.803686, 22.439718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866493, 30.904613, 22.243271>,  <42.709946, 31.072824, 21.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866493, 30.904613, 22.243271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707665, -0.431058, -0.559821,
		0.588253, 0.798339, 0.128891,
		0.391368, -0.420528, 0.818528,
		42.983902, 30.778456, 22.488829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372849, 31.233438, 21.823429>,  <42.709946, 31.072824, 21.915859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372849, 31.233438, 21.823429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368038, 30.902187, 22.047592>,  <43.365154, 30.703436, 22.182091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368038, 30.902187, 22.047592>,  <43.372849, 31.233438, 21.823429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368038, 30.902187, 22.047592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722284, -0.394767, -0.567860,
		0.691492, 0.397948, 0.602890,
		-0.012023, -0.828128, 0.560410,
		43.364433, 30.653749, 22.215715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064541, 31.130239, 21.870499>,  <43.372849, 31.233438, 21.823429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064541, 31.130239, 21.870499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879478, 30.790781, 21.973066>,  <43.768440, 30.587107, 22.034607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879478, 30.790781, 21.973066>,  <44.064541, 31.130239, 21.870499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879478, 30.790781, 21.973066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556735, -0.503214, -0.660925,
		0.689923, -0.163026, 0.705286,
		-0.462658, -0.848645, 0.256417,
		43.740681, 30.536188, 22.049992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530083, 30.613218, 21.613880>,  <44.064541, 31.130239, 21.870499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.530083, 30.613218, 21.613880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208141, 30.390419, 21.695818>,  <44.014977, 30.256739, 21.744980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208141, 30.390419, 21.695818>,  <44.530083, 30.613218, 21.613880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208141, 30.390419, 21.695818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204610, -0.584434, -0.785221,
		0.557086, -0.590075, 0.584352,
		-0.804854, -0.556999, 0.204845,
		43.966686, 30.223320, 21.757271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733498, 29.936935, 21.523819>,  <44.530083, 30.613218, 21.613880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733498, 29.936935, 21.523819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337727, 29.928621, 21.466417>,  <44.100262, 29.923634, 21.431976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337727, 29.928621, 21.466417>,  <44.733498, 29.936935, 21.523819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337727, 29.928621, 21.466417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133089, -0.522987, -0.841886,
		-0.057553, -0.852087, 0.520226,
		-0.989432, -0.020784, -0.143503,
		44.040897, 29.922386, 21.423367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549179, 29.252014, 21.377640>,  <44.733498, 29.936935, 21.523819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549179, 29.252014, 21.377640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250446, 29.473217, 21.229898>,  <44.071205, 29.605940, 21.141254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250446, 29.473217, 21.229898>,  <44.549179, 29.252014, 21.377640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250446, 29.473217, 21.229898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148024, -0.403233, -0.903046,
		-0.648327, -0.729098, 0.219290,
		-0.746834, 0.553009, -0.369351,
		44.026398, 29.639120, 21.119093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078571, 28.792912, 20.960943>,  <44.549179, 29.252014, 21.377640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078571, 28.792912, 20.960943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065025, 29.169254, 20.826103>,  <44.056896, 29.395060, 20.745199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.065025, 29.169254, 20.826103>,  <44.078571, 28.792912, 20.960943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065025, 29.169254, 20.826103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231899, -0.320692, -0.918357,
		-0.972150, -0.109274, -0.207324,
		-0.033865, 0.940859, -0.337102,
		44.054867, 29.451511, 20.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653538, 28.785147, 20.372704>,  <44.078571, 28.792912, 20.960943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653538, 28.785147, 20.372704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892078, 29.105532, 20.351439>,  <44.035202, 29.297762, 20.338680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892078, 29.105532, 20.351439>,  <43.653538, 28.785147, 20.372704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892078, 29.105532, 20.351439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213656, -0.222217, -0.951299,
		-0.773768, 0.555949, -0.303650,
		0.596350, 0.800962, -0.053162,
		44.070984, 29.345819, 20.335489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252964, 28.191540, 19.988075>,  <43.653538, 28.785147, 20.372704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252964, 28.191540, 19.988075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166847, 27.809835, 19.905096>,  <43.115177, 27.580812, 19.855309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.166847, 27.809835, 19.905096>,  <43.252964, 28.191540, 19.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166847, 27.809835, 19.905096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424147, -0.099971, 0.900058,
		-0.879629, 0.281764, -0.383224,
		-0.215293, -0.954261, -0.207447,
		43.102261, 27.523558, 19.842861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508396, 28.080805, 19.875490>,  <43.252964, 28.191540, 19.988075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508396, 28.080805, 19.875490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692219, 27.752789, 20.011923>,  <42.802513, 27.555979, 20.093782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692219, 27.752789, 20.011923>,  <42.508396, 28.080805, 19.875490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692219, 27.752789, 20.011923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544330, 0.043398, 0.837748,
		-0.701790, -0.570656, -0.426429,
		0.459560, -0.820042, 0.341081,
		42.830086, 27.506777, 20.114246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897896, 27.790516, 20.086639>,  <42.508396, 28.080805, 19.875490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897896, 27.790516, 20.086639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184174, 27.594624, 20.285812>,  <42.355942, 27.477087, 20.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184174, 27.594624, 20.285812>,  <41.897896, 27.790516, 20.086639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184174, 27.594624, 20.285812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615263, -0.104736, 0.781333,
		-0.330495, -0.865557, -0.376276,
		0.715698, -0.489735, 0.497931,
		42.398884, 27.447704, 20.435192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577038, 27.288723, 20.514090>,  <41.897896, 27.790516, 20.086639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577038, 27.288723, 20.514090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942677, 27.298826, 20.675974>,  <42.162060, 27.304888, 20.773106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942677, 27.298826, 20.675974>,  <41.577038, 27.288723, 20.514090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942677, 27.298826, 20.675974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392636, -0.194257, 0.898944,
		0.101324, -0.980626, -0.167652,
		0.914095, 0.025258, 0.404712,
		42.216904, 27.306402, 20.797388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529926, 26.885633, 21.084576>,  <41.577038, 27.288723, 20.514090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529926, 26.885633, 21.084576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867840, 27.077929, 21.178581>,  <42.070587, 27.193306, 21.234985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867840, 27.077929, 21.178581>,  <41.529926, 26.885633, 21.084576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867840, 27.077929, 21.178581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231818, -0.067047, 0.970446,
		0.482286, -0.874298, 0.054803,
		0.844784, 0.480737, 0.235014,
		42.121277, 27.222149, 21.249084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943790, 26.543465, 21.693146>,  <41.529926, 26.885633, 21.084576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943790, 26.543465, 21.693146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070000, 26.922771, 21.707193>,  <42.145725, 27.150356, 21.715622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070000, 26.922771, 21.707193>,  <41.943790, 26.543465, 21.693146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070000, 26.922771, 21.707193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206539, 0.032507, 0.977898,
		0.926167, -0.315804, 0.206111,
		0.315525, 0.948267, 0.035119,
		42.164658, 27.207253, 21.717730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380817, 26.549463, 22.318918>,  <41.943790, 26.543465, 21.693146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380817, 26.549463, 22.318918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295212, 26.933418, 22.246466>,  <42.243847, 27.163792, 22.202995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295212, 26.933418, 22.246466>,  <42.380817, 26.549463, 22.318918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295212, 26.933418, 22.246466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225618, 0.131839, 0.965254,
		0.950417, 0.247448, 0.188353,
		-0.214018, 0.959890, -0.181131,
		42.231007, 27.221386, 22.192127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729637, 26.865763, 22.849688>,  <42.380817, 26.549463, 22.318918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729637, 26.865763, 22.849688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478577, 27.135847, 22.694695>,  <42.327942, 27.297897, 22.601698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478577, 27.135847, 22.694695>,  <42.729637, 26.865763, 22.849688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478577, 27.135847, 22.694695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451056, 0.090268, 0.887919,
		0.634512, 0.732079, 0.247902,
		-0.627650, 0.675213, -0.387484,
		42.290283, 27.338411, 22.578449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770298, 27.473831, 23.295038>,  <42.729637, 26.865763, 22.849688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770298, 27.473831, 23.295038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428574, 27.513680, 23.090990>,  <42.223537, 27.537588, 22.968561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428574, 27.513680, 23.090990>,  <42.770298, 27.473831, 23.295038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428574, 27.513680, 23.090990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451346, 0.344522, 0.823160,
		0.257752, 0.933478, -0.249366,
		-0.854313, 0.099621, -0.510122,
		42.172279, 27.543566, 22.937954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514061, 28.197495, 23.339363>,  <42.770298, 27.473831, 23.295038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514061, 28.197495, 23.339363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207478, 27.944725, 23.293383>,  <42.023529, 27.793064, 23.265795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207478, 27.944725, 23.293383>,  <42.514061, 28.197495, 23.339363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207478, 27.944725, 23.293383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427275, 0.368016, 0.825833,
		-0.479560, 0.682082, -0.552074,
		-0.766458, -0.631924, -0.114951,
		41.977539, 27.755148, 23.258898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837288, 28.554907, 23.509872>,  <42.514061, 28.197495, 23.339363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837288, 28.554907, 23.509872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754490, 28.163654, 23.518051>,  <41.704811, 27.928904, 23.522959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754490, 28.163654, 23.518051>,  <41.837288, 28.554907, 23.509872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754490, 28.163654, 23.518051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611124, 0.145589, 0.778030,
		-0.763991, 0.148550, -0.627893,
		-0.206991, -0.978129, 0.020446,
		41.692394, 27.870216, 23.524185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056164, 28.453968, 23.756121>,  <41.837288, 28.554907, 23.509872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056164, 28.453968, 23.756121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194370, 28.084877, 23.824465>,  <41.277294, 27.863422, 23.865471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194370, 28.084877, 23.824465>,  <41.056164, 28.453968, 23.756121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194370, 28.084877, 23.824465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372283, 0.032352, 0.927555,
		-0.861409, -0.384090, -0.332338,
		0.345513, -0.922729, 0.170859,
		41.298023, 27.808058, 23.875723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451588, 27.981121, 23.845333>,  <41.056164, 28.453968, 23.756121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451588, 27.981121, 23.845333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786926, 27.857912, 24.025244>,  <40.988129, 27.783987, 24.133190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786926, 27.857912, 24.025244>,  <40.451588, 27.981121, 23.845333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786926, 27.857912, 24.025244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433822, 0.122661, 0.892610,
		-0.330113, -0.943439, -0.030793,
		0.838346, -0.308021, 0.449776,
		41.038429, 27.765507, 24.160177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220074, 27.476284, 24.297293>,  <40.451588, 27.981121, 23.845333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220074, 27.476284, 24.297293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593773, 27.504822, 24.437057>,  <40.817993, 27.521944, 24.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593773, 27.504822, 24.437057>,  <40.220074, 27.476284, 24.297293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593773, 27.504822, 24.437057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352025, 0.027693, 0.935581,
		0.057081, -0.997066, 0.050990,
		0.934248, 0.071353, 0.349412,
		40.874046, 27.526226, 24.541882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337994, 26.921713, 24.900644>,  <40.220074, 27.476284, 24.297293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337994, 26.921713, 24.900644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616264, 27.201780, 24.964890>,  <40.783226, 27.369822, 25.003437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616264, 27.201780, 24.964890>,  <40.337994, 26.921713, 24.900644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616264, 27.201780, 24.964890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235305, 0.010854, 0.971861,
		0.678725, -0.713893, 0.172305,
		0.695675, 0.700171, 0.160615,
		40.824966, 27.411831, 25.013075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670753, 26.729700, 25.480515>,  <40.337994, 26.921713, 24.900644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670753, 26.729700, 25.480515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726292, 27.125254, 25.459238>,  <40.759613, 27.362585, 25.446472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726292, 27.125254, 25.459238>,  <40.670753, 26.729700, 25.480515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726292, 27.125254, 25.459238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314115, 0.094914, 0.944629,
		0.939177, -0.114450, 0.323802,
		0.138846, 0.988885, -0.053190,
		40.767944, 27.421919, 25.443281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039688, 26.964848, 26.114344>,  <40.670753, 26.729700, 25.480515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039688, 26.964848, 26.114344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857601, 27.294029, 25.978390>,  <40.748348, 27.491539, 25.896818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857601, 27.294029, 25.978390>,  <41.039688, 26.964848, 26.114344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857601, 27.294029, 25.978390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403059, 0.149912, 0.902812,
		0.793926, 0.547971, 0.263457,
		-0.455219, 0.822955, -0.339884,
		40.721035, 27.540916, 25.876425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094540, 27.485567, 26.635927>,  <41.039688, 26.964848, 26.114344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094540, 27.485567, 26.635927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804695, 27.645330, 26.411282>,  <40.630787, 27.741188, 26.276493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804695, 27.645330, 26.411282>,  <41.094540, 27.485567, 26.635927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804695, 27.645330, 26.411282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470084, 0.309457, 0.826594,
		0.503945, 0.862965, -0.036480,
		-0.724611, 0.399410, -0.561615,
		40.587311, 27.765154, 26.242798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112190, 28.136309, 26.864176>,  <41.094540, 27.485567, 26.635927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112190, 28.136309, 26.864176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761772, 28.035641, 26.699633>,  <40.551521, 27.975241, 26.600906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761772, 28.035641, 26.699633>,  <41.112190, 28.136309, 26.864176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761772, 28.035641, 26.699633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479865, 0.370473, 0.795285,
		-0.047753, 0.894099, -0.445317,
		-0.876042, -0.251670, -0.411356,
		40.498959, 27.960140, 26.576225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714523, 28.660336, 26.896126>,  <41.112190, 28.136309, 26.864176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714523, 28.660336, 26.896126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428318, 28.384848, 26.849289>,  <40.256596, 28.219555, 26.821186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428318, 28.384848, 26.849289>,  <40.714523, 28.660336, 26.896126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428318, 28.384848, 26.849289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580943, 0.493492, 0.647279,
		-0.388010, 0.531158, -0.753206,
		-0.715509, -0.688721, -0.117093,
		40.213665, 28.178232, 26.814161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053574, 28.970985, 26.953024>,  <40.714523, 28.660336, 26.896126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053574, 28.970985, 26.953024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929714, 28.590776, 26.962999>,  <39.855396, 28.362652, 26.968985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929714, 28.590776, 26.962999>,  <40.053574, 28.970985, 26.953024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929714, 28.590776, 26.962999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474315, 0.177142, 0.862349,
		-0.824100, 0.255199, -0.505700,
		-0.309651, -0.950523, 0.024938,
		39.836819, 28.305620, 26.970480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321182, 29.010519, 27.052588>,  <40.053574, 28.970985, 26.953024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321182, 29.010519, 27.052588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428120, 28.648096, 27.183790>,  <39.492283, 28.430643, 27.262512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428120, 28.648096, 27.183790>,  <39.321182, 29.010519, 27.052588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428120, 28.648096, 27.183790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440095, 0.188009, 0.878049,
		-0.857229, -0.379098, -0.348487,
		0.267348, -0.906056, 0.328005,
		39.508324, 28.376280, 27.282192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736507, 28.674606, 27.378864>,  <39.321182, 29.010519, 27.052588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736507, 28.674606, 27.378864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053230, 28.496828, 27.546440>,  <39.243263, 28.390162, 27.646986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053230, 28.496828, 27.546440>,  <38.736507, 28.674606, 27.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053230, 28.496828, 27.546440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328248, 0.268781, 0.905544,
		-0.515070, -0.854531, 0.066934,
		0.791806, -0.444448, 0.418939,
		39.290771, 28.363493, 27.672121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409195, 28.198797, 27.912998>,  <38.736507, 28.674606, 27.378864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409195, 28.198797, 27.912998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795101, 28.253527, 28.002897>,  <39.026646, 28.286366, 28.056837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.795101, 28.253527, 28.002897>,  <38.409195, 28.198797, 27.912998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795101, 28.253527, 28.002897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251750, 0.231637, 0.939663,
		0.076509, -0.963132, 0.257921,
		0.964764, 0.136824, 0.224746,
		39.084530, 28.294575, 28.070320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510826, 27.939495, 28.645212>,  <38.409195, 28.198797, 27.912998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510826, 27.939495, 28.645212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824444, 28.184389, 28.604343>,  <39.012615, 28.331326, 28.579823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824444, 28.184389, 28.604343>,  <38.510826, 27.939495, 28.645212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824444, 28.184389, 28.604343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045886, 0.221328, 0.974119,
		0.619004, -0.759067, 0.201624,
		0.784047, 0.612235, -0.102172,
		39.059658, 28.368059, 28.573692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905983, 27.849998, 29.230560>,  <38.510826, 27.939495, 28.645212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905983, 27.849998, 29.230560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004086, 28.208519, 29.082781>,  <39.062946, 28.423632, 28.994112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004086, 28.208519, 29.082781>,  <38.905983, 27.849998, 29.230560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004086, 28.208519, 29.082781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073647, 0.397214, 0.914766,
		0.966658, -0.197139, 0.163428,
		0.245252, 0.896302, -0.369451,
		39.077660, 28.477409, 28.971945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411774, 28.042429, 29.770840>,  <38.905983, 27.849998, 29.230560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411774, 28.042429, 29.770840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289814, 28.363764, 29.566217>,  <39.216637, 28.556564, 29.443445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289814, 28.363764, 29.566217>,  <39.411774, 28.042429, 29.770840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289814, 28.363764, 29.566217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104050, 0.505816, 0.856343,
		0.946683, 0.314329, -0.070637,
		-0.304903, 0.803335, -0.511553,
		39.198341, 28.604765, 29.412752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819000, 28.560469, 30.072876>,  <39.411774, 28.042429, 29.770840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819000, 28.560469, 30.072876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498959, 28.732138, 29.905237>,  <39.306934, 28.835138, 29.804655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498959, 28.732138, 29.905237>,  <39.819000, 28.560469, 30.072876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498959, 28.732138, 29.905237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182312, 0.491630, 0.851506,
		0.571481, 0.757702, -0.315114,
		-0.800107, 0.429171, -0.419096,
		39.258926, 28.860889, 29.779509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928993, 29.287594, 30.297451>,  <39.819000, 28.560469, 30.072876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928993, 29.287594, 30.297451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548569, 29.264397, 30.176052>,  <39.320312, 29.250479, 30.103212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548569, 29.264397, 30.176052>,  <39.928993, 29.287594, 30.297451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548569, 29.264397, 30.176052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280538, 0.573759, 0.769480,
		0.129508, 0.816968, -0.561953,
		-0.951066, -0.057995, -0.303497,
		39.263248, 29.246998, 30.085003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650005, 29.988155, 30.453714>,  <39.928993, 29.287594, 30.297451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650005, 29.988155, 30.453714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346066, 29.730783, 30.416561>,  <39.163700, 29.576361, 30.394270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346066, 29.730783, 30.416561>,  <39.650005, 29.988155, 30.453714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346066, 29.730783, 30.416561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409319, 0.362513, 0.837283,
		-0.505063, 0.674226, -0.538824,
		-0.759849, -0.643431, -0.092881,
		39.118111, 29.537754, 30.388697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140896, 30.386591, 30.497286>,  <39.650005, 29.988155, 30.453714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140896, 30.386591, 30.497286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007011, 30.023115, 30.597088>,  <38.926682, 29.805029, 30.656969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007011, 30.023115, 30.597088>,  <39.140896, 30.386591, 30.497286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007011, 30.023115, 30.597088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580845, 0.407446, 0.704703,
		-0.742016, 0.090948, -0.664184,
		-0.334711, -0.908689, 0.249505,
		38.906597, 29.750509, 30.671940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468906, 30.481215, 30.902767>,  <39.140896, 30.386591, 30.497286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468906, 30.481215, 30.902767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560299, 30.104420, 31.001116>,  <38.615135, 29.878342, 31.060125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560299, 30.104420, 31.001116>,  <38.468906, 30.481215, 30.902767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560299, 30.104420, 31.001116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602676, 0.061488, 0.795613,
		-0.764577, -0.329963, -0.553666,
		0.228479, -0.941989, 0.245874,
		38.628841, 29.821823, 31.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861183, 30.366037, 31.233095>,  <38.468906, 30.481215, 30.902767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861183, 30.366037, 31.233095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127605, 30.095757, 31.359459>,  <38.287460, 29.933588, 31.435278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127605, 30.095757, 31.359459>,  <37.861183, 30.366037, 31.233095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127605, 30.095757, 31.359459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551450, -0.160885, 0.818547,
		-0.502268, -0.719405, -0.479774,
		0.666055, -0.675701, 0.315908,
		38.327423, 29.893045, 31.454231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496021, 29.838680, 31.421564>,  <37.861183, 30.366037, 31.233095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496021, 29.838680, 31.421564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852665, 29.784637, 31.594437>,  <38.066650, 29.752211, 31.698160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852665, 29.784637, 31.594437>,  <37.496021, 29.838680, 31.421564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852665, 29.784637, 31.594437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445845, -0.428694, 0.785776,
		0.079110, -0.893290, -0.442463,
		0.891607, -0.135108, 0.432183,
		38.120148, 29.744104, 31.724092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490547, 29.112776, 31.726477>,  <37.496021, 29.838680, 31.421564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490547, 29.112776, 31.726477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751968, 29.337011, 31.929890>,  <37.908821, 29.471554, 32.051937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751968, 29.337011, 31.929890>,  <37.490547, 29.112776, 31.726477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751968, 29.337011, 31.929890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320329, -0.403875, 0.856898,
		0.685753, -0.722926, -0.084380,
		0.653553, 0.560591, 0.508533,
		37.948036, 29.505188, 32.082451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785694, 28.701004, 32.370953>,  <37.490547, 29.112776, 31.726477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785694, 28.701004, 32.370953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883808, 29.081682, 32.444828>,  <37.942677, 29.310089, 32.489155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883808, 29.081682, 32.444828>,  <37.785694, 28.701004, 32.370953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883808, 29.081682, 32.444828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362716, -0.086585, 0.927869,
		0.899040, -0.294582, 0.323958,
		0.245284, 0.951696, 0.184693,
		37.957394, 29.367191, 32.500237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186459, 28.746532, 32.909843>,  <37.785694, 28.701004, 32.370953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186459, 28.746532, 32.909843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048786, 29.122017, 32.902252>,  <37.966183, 29.347307, 32.897697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048786, 29.122017, 32.902252>,  <38.186459, 28.746532, 32.909843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048786, 29.122017, 32.902252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441763, -0.144074, 0.885487,
		0.828482, 0.313155, 0.464275,
		-0.344185, 0.938710, -0.018977,
		37.945530, 29.403629, 32.896561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081661, 28.856211, 33.606350>,  <38.186459, 28.746532, 32.909843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081661, 28.856211, 33.606350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898132, 29.158022, 33.418663>,  <37.788013, 29.339108, 33.306049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898132, 29.158022, 33.418663>,  <38.081661, 28.856211, 33.606350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898132, 29.158022, 33.418663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681776, 0.039681, 0.730483,
		0.569789, 0.655068, 0.496212,
		-0.458826, 0.754527, -0.469220,
		37.760483, 29.384380, 33.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998520, 29.337517, 34.172321>,  <38.081661, 28.856211, 33.606350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998520, 29.337517, 34.172321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735802, 29.372583, 33.872738>,  <37.578171, 29.393623, 33.692989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735802, 29.372583, 33.872738>,  <37.998520, 29.337517, 34.172321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735802, 29.372583, 33.872738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753824, -0.051066, 0.655089,
		0.019182, 0.994840, 0.099624,
		-0.656797, 0.087665, -0.748955,
		37.538761, 29.398884, 33.648052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663940, 29.986017, 34.344296>,  <37.998520, 29.337517, 34.172321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663940, 29.986017, 34.344296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474957, 29.697458, 34.141766>,  <37.361565, 29.524323, 34.020248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474957, 29.697458, 34.141766>,  <37.663940, 29.986017, 34.344296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474957, 29.697458, 34.141766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709668, -0.029282, 0.703928,
		-0.522639, 0.691901, -0.498119,
		-0.472462, -0.721399, -0.506323,
		37.333218, 29.481039, 33.989868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370304, 30.155809, 34.474819>,  <37.663940, 29.986017, 34.344296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370304, 30.155809, 34.474819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634552, 30.446293, 34.550930>,  <38.793098, 30.620583, 34.596596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634552, 30.446293, 34.550930>,  <38.370304, 30.155809, 34.474819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634552, 30.446293, 34.550930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132065, -0.137082, 0.981716,
		0.739016, -0.673667, 0.005348,
		0.660617, 0.726210, 0.190274,
		38.832737, 30.664156, 34.608013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792553, 29.883438, 34.921963>,  <38.370304, 30.155809, 34.474819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792553, 29.883438, 34.921963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838928, 30.278507, 34.964031>,  <38.866753, 30.515549, 34.989273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838928, 30.278507, 34.964031>,  <38.792553, 29.883438, 34.921963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838928, 30.278507, 34.964031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217365, -0.078093, 0.972961,
		0.969181, -0.135664, 0.205632,
		0.115937, 0.987672, 0.105174,
		38.873711, 30.574808, 34.995583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257511, 29.900869, 35.500900>,  <38.792553, 29.883438, 34.921963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257511, 29.900869, 35.500900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063103, 30.247993, 35.459560>,  <38.946457, 30.456268, 35.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063103, 30.247993, 35.459560>,  <39.257511, 29.900869, 35.500900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063103, 30.247993, 35.459560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185544, 0.013103, 0.982549,
		0.854021, 0.496720, 0.154649,
		-0.486026, 0.867812, -0.103354,
		38.917294, 30.508337, 35.428555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478409, 30.322559, 36.065136>,  <39.257511, 29.900869, 35.500900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478409, 30.322559, 36.065136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116138, 30.455572, 35.959934>,  <38.898777, 30.535379, 35.896812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116138, 30.455572, 35.959934>,  <39.478409, 30.322559, 36.065136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116138, 30.455572, 35.959934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355488, -0.257562, 0.898493,
		0.231038, 0.907239, 0.351479,
		-0.905676, 0.332533, -0.263006,
		38.844437, 30.555332, 35.881031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259361, 30.811710, 36.568237>,  <39.478409, 30.322559, 36.065136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259361, 30.811710, 36.568237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918827, 30.746574, 36.368755>,  <38.714504, 30.707493, 36.249065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918827, 30.746574, 36.368755>,  <39.259361, 30.811710, 36.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918827, 30.746574, 36.368755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523225, 0.194421, 0.829720,
		-0.038154, 0.967307, -0.250721,
		-0.851340, -0.162841, -0.498702,
		38.663425, 30.697721, 36.219147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768593, 31.439404, 36.687538>,  <39.259361, 30.811710, 36.568237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768593, 31.439404, 36.687538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575897, 31.101992, 36.592560>,  <38.460278, 30.899544, 36.535572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575897, 31.101992, 36.592560>,  <38.768593, 31.439404, 36.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575897, 31.101992, 36.592560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682477, 0.191186, 0.705459,
		-0.549681, 0.501899, -0.667793,
		-0.481742, -0.843531, -0.237443,
		38.431374, 30.848932, 36.521328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175167, 31.662350, 36.766815>,  <38.768593, 31.439404, 36.687538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175167, 31.662350, 36.766815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127228, 31.265326, 36.775394>,  <38.098465, 31.027111, 36.780544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127228, 31.265326, 36.775394>,  <38.175167, 31.662350, 36.766815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127228, 31.265326, 36.775394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551723, 0.084548, 0.829731,
		-0.825372, 0.087604, -0.557752,
		-0.119845, -0.992561, 0.021450,
		38.091274, 30.967558, 36.781830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427742, 31.546429, 36.929016>,  <38.175167, 31.662350, 36.766815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427742, 31.546429, 36.929016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607460, 31.203562, 37.029728>,  <37.715290, 30.997841, 37.090157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607460, 31.203562, 37.029728>,  <37.427742, 31.546429, 36.929016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607460, 31.203562, 37.029728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630439, -0.104523, 0.769170,
		-0.632991, -0.504319, -0.587354,
		0.449299, -0.857168, 0.251780,
		37.742249, 30.946411, 37.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875515, 31.008894, 36.931049>,  <37.427742, 31.546429, 36.929016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875515, 31.008894, 36.931049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157776, 30.869823, 37.178009>,  <37.327133, 30.786381, 37.326183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157776, 30.869823, 37.178009>,  <36.875515, 31.008894, 36.931049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157776, 30.869823, 37.178009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693518, -0.160301, 0.702379,
		-0.145224, -0.923814, -0.354229,
		0.705650, -0.347666, 0.617402,
		37.369469, 30.765520, 37.363228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672142, 30.394897, 37.217014>,  <36.875515, 31.008894, 36.931049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672142, 30.394897, 37.217014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975811, 30.477266, 37.463997>,  <37.158012, 30.526688, 37.612186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975811, 30.477266, 37.463997>,  <36.672142, 30.394897, 37.217014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975811, 30.477266, 37.463997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499223, -0.424484, 0.755374,
		0.417645, -0.881709, -0.219458,
		0.759176, 0.205920, 0.617453,
		37.203564, 30.539042, 37.649231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622868, 29.845171, 37.707176>,  <36.672142, 30.394897, 37.217014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622868, 29.845171, 37.707176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872990, 30.089476, 37.901482>,  <37.023064, 30.236059, 38.018063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872990, 30.089476, 37.901482>,  <36.622868, 29.845171, 37.707176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872990, 30.089476, 37.901482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321129, -0.365934, 0.873480,
		0.711244, -0.702184, -0.032688,
		0.625306, 0.610761, 0.485761,
		37.060581, 30.272703, 38.047211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048306, 29.499018, 38.173344>,  <36.622868, 29.845171, 37.707176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048306, 29.499018, 38.173344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090321, 29.867531, 38.323120>,  <37.115532, 30.088638, 38.412987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090321, 29.867531, 38.323120>,  <37.048306, 29.499018, 38.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090321, 29.867531, 38.323120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005026, -0.376030, 0.926594,
		0.994455, -0.099213, -0.034869,
		0.105042, 0.921281, 0.374443,
		37.121834, 30.143915, 38.435452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424198, 29.475296, 38.767464>,  <37.048306, 29.499018, 38.173344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424198, 29.475296, 38.767464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245544, 29.824522, 38.845722>,  <37.138351, 30.034058, 38.892677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245544, 29.824522, 38.845722>,  <37.424198, 29.475296, 38.767464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245544, 29.824522, 38.845722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073460, -0.253713, 0.964486,
		0.891695, 0.416403, 0.177453,
		-0.446637, 0.873063, 0.195646,
		37.111553, 30.086441, 38.904415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695801, 29.661034, 39.414501>,  <37.424198, 29.475296, 38.767464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695801, 29.661034, 39.414501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389332, 29.914349, 39.370804>,  <37.205452, 30.066338, 39.344585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389332, 29.914349, 39.370804>,  <37.695801, 29.661034, 39.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389332, 29.914349, 39.370804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246413, -0.132508, 0.960063,
		0.593519, 0.762490, 0.257573,
		-0.766169, 0.633286, -0.109242,
		37.159481, 30.104334, 39.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752167, 30.182329, 39.922199>,  <37.695801, 29.661034, 39.414501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752167, 30.182329, 39.922199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358402, 30.113779, 39.938053>,  <37.122143, 30.072649, 39.947567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358402, 30.113779, 39.938053>,  <37.752167, 30.182329, 39.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358402, 30.113779, 39.938053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031156, 0.051901, 0.998166,
		-0.173119, 0.983838, -0.045752,
		-0.984408, -0.171377, 0.039637,
		37.063080, 30.062366, 39.949944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440514, 30.706423, 40.334995>,  <37.752167, 30.182329, 39.922199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440514, 30.706423, 40.334995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223965, 30.370173, 40.341415>,  <37.094036, 30.168423, 40.345268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223965, 30.370173, 40.341415>,  <37.440514, 30.706423, 40.334995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223965, 30.370173, 40.341415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088737, -0.038141, 0.995325,
		-0.836085, 0.540268, 0.095243,
		-0.541375, -0.840628, 0.016053,
		37.061554, 30.117985, 40.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106998, 30.766541, 40.980724>,  <37.440514, 30.706423, 40.334995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106998, 30.766541, 40.980724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060829, 30.378319, 40.896160>,  <37.033127, 30.145386, 40.845421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060829, 30.378319, 40.896160>,  <37.106998, 30.766541, 40.980724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060829, 30.378319, 40.896160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056143, -0.218872, 0.974137,
		-0.991728, 0.100572, 0.079754,
		-0.115427, -0.970557, -0.211415,
		37.026199, 30.087152, 40.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784035, 30.591843, 41.521969>,  <37.106998, 30.766541, 40.980724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784035, 30.591843, 41.521969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835049, 30.231232, 41.356567>,  <36.865658, 30.014866, 41.257328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835049, 30.231232, 41.356567>,  <36.784035, 30.591843, 41.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835049, 30.231232, 41.356567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168099, -0.430523, 0.886788,
		-0.977485, -0.043589, -0.206453,
		0.127537, -0.901526, -0.413503,
		36.873310, 29.960773, 41.232517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321541, 30.184330, 41.808968>,  <36.784035, 30.591843, 41.521969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321541, 30.184330, 41.808968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643536, 29.977318, 41.692928>,  <36.836735, 29.853111, 41.623306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643536, 29.977318, 41.692928>,  <36.321541, 30.184330, 41.808968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643536, 29.977318, 41.692928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097030, -0.367535, 0.924934,
		-0.585302, -0.772709, -0.245646,
		0.804989, -0.517531, -0.290094,
		36.885033, 29.822058, 41.605900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251060, 29.453833, 42.002235>,  <36.321541, 30.184330, 41.808968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251060, 29.453833, 42.002235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634712, 29.555239, 41.951962>,  <36.864902, 29.616083, 41.921799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634712, 29.555239, 41.951962>,  <36.251060, 29.453833, 42.002235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634712, 29.555239, 41.951962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209974, -0.339943, 0.916706,
		0.189675, -0.905632, -0.379282,
		0.959132, 0.253515, -0.125681,
		36.922451, 29.631292, 41.914257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683109, 28.851521, 42.114269>,  <36.251060, 29.453833, 42.002235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683109, 28.851521, 42.114269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904148, 29.171326, 42.208431>,  <37.036770, 29.363209, 42.264927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904148, 29.171326, 42.208431>,  <36.683109, 28.851521, 42.114269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904148, 29.171326, 42.208431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106809, -0.348052, 0.931371,
		0.826578, -0.489527, -0.277727,
		0.552595, 0.799514, 0.235406,
		37.069927, 29.411180, 42.279053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263035, 28.541529, 42.406086>,  <36.683109, 28.851521, 42.114269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263035, 28.541529, 42.406086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160427, 28.893490, 42.566071>,  <37.098862, 29.104668, 42.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160427, 28.893490, 42.566071>,  <37.263035, 28.541529, 42.406086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160427, 28.893490, 42.566071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147886, -0.373202, 0.915887,
		0.955158, 0.294091, -0.034392,
		-0.256519, 0.879904, 0.399959,
		37.083469, 29.157461, 42.686058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794128, 28.761730, 42.917732>,  <37.263035, 28.541529, 42.406086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794128, 28.761730, 42.917732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430607, 28.889624, 43.024944>,  <37.212494, 28.966360, 43.089272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430607, 28.889624, 43.024944>,  <37.794128, 28.761730, 42.917732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430607, 28.889624, 43.024944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027183, -0.595687, 0.802757,
		0.416330, 0.736837, 0.532673,
		-0.908807, 0.319732, 0.268032,
		37.157963, 28.985544, 43.105354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496246, 28.920639, 42.627670>,  <37.794128, 28.761730, 42.917732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496246, 28.920639, 42.627670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862614, 28.944891, 42.786373>,  <39.082436, 28.959442, 42.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862614, 28.944891, 42.786373>,  <38.496246, 28.920639, 42.627670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862614, 28.944891, 42.786373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400194, 0.213481, 0.891218,
		-0.030669, -0.975064, 0.219794,
		0.915917, 0.060628, 0.396762,
		39.137390, 28.963079, 42.905403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178394, 29.479177, 42.282730>,  <38.496246, 28.920639, 42.627670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178394, 29.479177, 42.282730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789467, 29.426332, 42.205631>,  <37.556110, 29.394625, 42.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789467, 29.426332, 42.205631>,  <38.178394, 29.479177, 42.282730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789467, 29.426332, 42.205631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147333, 0.293646, -0.944492,
		0.181377, -0.946741, -0.266052,
		-0.972315, -0.132111, -0.192747,
		37.497772, 29.386698, 42.147808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187405, 29.685099, 41.646893>,  <38.178394, 29.479177, 42.282730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187405, 29.685099, 41.646893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805737, 29.586397, 41.714619>,  <37.576736, 29.527176, 41.755253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805737, 29.586397, 41.714619>,  <38.187405, 29.685099, 41.646893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805737, 29.586397, 41.714619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207540, 0.138013, -0.968442,
		0.215603, -0.959199, -0.182901,
		-0.954171, -0.246758, 0.169316,
		37.519485, 29.512371, 41.765415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953133, 29.155611, 41.238800>,  <38.187405, 29.685099, 41.646893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953133, 29.155611, 41.238800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618694, 29.353037, 41.334579>,  <37.418030, 29.471493, 41.392048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618694, 29.353037, 41.334579>,  <37.953133, 29.155611, 41.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618694, 29.353037, 41.334579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260768, 0.026445, -0.965039,
		-0.482641, -0.869307, 0.106596,
		-0.836096, 0.493565, 0.239451,
		37.367867, 29.501106, 41.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477196, 28.900196, 40.808258>,  <37.953133, 29.155611, 41.238800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477196, 28.900196, 40.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301823, 29.237871, 40.931625>,  <37.196598, 29.440477, 41.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301823, 29.237871, 40.931625>,  <37.477196, 28.900196, 40.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301823, 29.237871, 40.931625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418355, 0.112032, -0.901348,
		-0.795461, -0.524208, 0.304052,
		-0.438430, 0.844189, 0.308422,
		37.170292, 29.491127, 41.024151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759666, 28.871969, 40.577820>,  <37.477196, 28.900196, 40.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759666, 28.871969, 40.577820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839397, 29.259335, 40.637753>,  <36.887234, 29.491753, 40.673710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839397, 29.259335, 40.637753>,  <36.759666, 28.871969, 40.577820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839397, 29.259335, 40.637753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203374, 0.190449, -0.960400,
		-0.958597, 0.160960, 0.234911,
		0.199324, 0.968412, 0.149829,
		36.899193, 29.549858, 40.682701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314739, 29.135410, 40.051685>,  <36.759666, 28.871969, 40.577820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314739, 29.135410, 40.051685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482399, 29.466185, 40.201618>,  <36.582996, 29.664648, 40.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482399, 29.466185, 40.201618>,  <36.314739, 29.135410, 40.051685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482399, 29.466185, 40.201618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086979, 0.447517, -0.890036,
		-0.903742, 0.340454, 0.259502,
		0.419148, 0.826934, 0.374828,
		36.608143, 29.714264, 40.314068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838627, 29.678152, 39.935696>,  <36.314739, 29.135410, 40.051685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838627, 29.678152, 39.935696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206432, 29.835026, 39.946201>,  <36.427116, 29.929150, 39.952503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206432, 29.835026, 39.946201>,  <35.838627, 29.678152, 39.935696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206432, 29.835026, 39.946201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114359, 0.330846, -0.936730,
		-0.376059, 0.858331, 0.349066,
		0.919512, 0.392184, 0.026260,
		36.482285, 29.952681, 39.954079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873779, 29.891066, 39.291576>,  <35.838627, 29.678152, 39.935696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873779, 29.891066, 39.291576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226040, 30.022526, 39.428066>,  <36.437397, 30.101402, 39.509960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226040, 30.022526, 39.428066>,  <35.873779, 29.891066, 39.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226040, 30.022526, 39.428066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303308, 0.162176, -0.938990,
		-0.363937, 0.930424, 0.043139,
		0.880655, 0.328649, 0.341227,
		36.490238, 30.121120, 39.530434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962543, 30.661451, 39.226494>,  <35.873779, 29.891066, 39.291576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962543, 30.661451, 39.226494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315556, 30.473869, 39.240429>,  <36.527363, 30.361320, 39.248791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315556, 30.473869, 39.240429>,  <35.962543, 30.661451, 39.226494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315556, 30.473869, 39.240429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225382, 0.356797, -0.906587,
		0.412718, 0.807946, 0.420580,
		0.882534, -0.468956, 0.034840,
		36.580315, 30.333183, 39.250881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393608, 31.109177, 38.923405>,  <35.962543, 30.661451, 39.226494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393608, 31.109177, 38.923405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606289, 30.770809, 38.906841>,  <36.733898, 30.567789, 38.896904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606289, 30.770809, 38.906841>,  <36.393608, 31.109177, 38.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606289, 30.770809, 38.906841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509595, 0.358588, -0.782130,
		0.676468, 0.394757, 0.621738,
		0.531699, -0.845921, -0.041407,
		36.765800, 30.517033, 38.894421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050846, 31.352373, 38.811413>,  <36.393608, 31.109177, 38.923405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050846, 31.352373, 38.811413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074123, 30.968798, 38.700382>,  <37.088089, 30.738653, 38.633762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074123, 30.968798, 38.700382>,  <37.050846, 31.352373, 38.811413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074123, 30.968798, 38.700382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482486, 0.270435, -0.833110,
		0.873968, -0.085450, 0.478411,
		0.058190, -0.958938, -0.277581,
		37.091579, 30.681116, 38.617107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739708, 31.232645, 38.693642>,  <37.050846, 31.352373, 38.811413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739708, 31.232645, 38.693642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563339, 30.927544, 38.504414>,  <37.457520, 30.744482, 38.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563339, 30.927544, 38.504414>,  <37.739708, 31.232645, 38.693642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563339, 30.927544, 38.504414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591085, 0.149872, -0.792563,
		0.675430, -0.629084, 0.384770,
		-0.440922, -0.762753, -0.473070,
		37.431061, 30.698717, 38.362492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355644, 30.835127, 38.409683>,  <37.739708, 31.232645, 38.693642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355644, 30.835127, 38.409683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022316, 30.753889, 38.204029>,  <37.822319, 30.705147, 38.080639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022316, 30.753889, 38.204029>,  <38.355644, 30.835127, 38.409683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022316, 30.753889, 38.204029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539682, -0.097551, -0.836198,
		0.119675, -0.974287, 0.190899,
		-0.833319, -0.203097, -0.514131,
		37.772320, 30.692961, 38.049789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540997, 30.321466, 37.904217>,  <38.355644, 30.835127, 38.409683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540997, 30.321466, 37.904217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187752, 30.385391, 37.727772>,  <37.975807, 30.423746, 37.621906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187752, 30.385391, 37.727772>,  <38.540997, 30.321466, 37.904217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187752, 30.385391, 37.727772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393868, -0.258334, -0.882118,
		-0.254975, -0.952736, 0.165169,
		-0.883094, 0.159863, -0.441121,
		37.922821, 30.433334, 37.595436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404812, 29.836384, 37.286171>,  <38.540997, 30.321466, 37.904217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404812, 29.836384, 37.286171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181576, 30.163702, 37.231129>,  <38.047634, 30.360092, 37.198105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181576, 30.163702, 37.231129>,  <38.404812, 29.836384, 37.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181576, 30.163702, 37.231129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162120, -0.055112, -0.985231,
		-0.813792, -0.572152, -0.101905,
		-0.558086, 0.818293, -0.137607,
		38.014149, 30.409189, 37.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854912, 29.655787, 36.710732>,  <38.404812, 29.836384, 37.286171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854912, 29.655787, 36.710732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914394, 30.050095, 36.742088>,  <37.950085, 30.286678, 36.760902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914394, 30.050095, 36.742088>,  <37.854912, 29.655787, 36.710732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914394, 30.050095, 36.742088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176960, 0.051471, -0.982871,
		-0.972919, 0.160031, -0.166787,
		0.148705, 0.985769, 0.078396,
		37.959007, 30.345825, 36.765606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791683, 29.884855, 36.001343>,  <37.854912, 29.655787, 36.710732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791683, 29.884855, 36.001343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934673, 30.219780, 36.166809>,  <38.020470, 30.420734, 36.266090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934673, 30.219780, 36.166809>,  <37.791683, 29.884855, 36.001343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934673, 30.219780, 36.166809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411669, 0.256310, -0.874548,
		-0.838295, 0.482926, -0.253070,
		0.357477, 0.837310, 0.413669,
		38.041916, 30.470974, 36.290909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597107, 30.440863, 35.523300>,  <37.791683, 29.884855, 36.001343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597107, 30.440863, 35.523300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911198, 30.519402, 35.758205>,  <38.099651, 30.566525, 35.899147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911198, 30.519402, 35.758205>,  <37.597107, 30.440863, 35.523300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911198, 30.519402, 35.758205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551793, 0.208479, -0.807503,
		-0.280981, 0.958115, 0.055360,
		0.785222, 0.196346, 0.587260,
		38.146763, 30.578306, 35.934383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878284, 31.143608, 35.405865>,  <37.597107, 30.440863, 35.523300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878284, 31.143608, 35.405865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169487, 30.921598, 35.566841>,  <38.344208, 30.788393, 35.663425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169487, 30.921598, 35.566841>,  <37.878284, 31.143608, 35.405865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169487, 30.921598, 35.566841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654239, 0.387016, -0.649762,
		0.204883, 0.736321, 0.644868,
		0.728007, -0.555022, 0.402437,
		38.387890, 30.755093, 35.687572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407642, 31.701498, 35.520775>,  <37.878284, 31.143608, 35.405865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407642, 31.701498, 35.520775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563274, 31.336815, 35.468014>,  <38.656654, 31.118004, 35.436356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563274, 31.336815, 35.468014>,  <38.407642, 31.701498, 35.520775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563274, 31.336815, 35.468014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546190, 0.343618, -0.763939,
		0.741815, 0.225193, 0.631664,
		0.389085, -0.911710, -0.131903,
		38.680000, 31.063301, 35.428444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078217, 31.795084, 35.285889>,  <38.407642, 31.701498, 35.520775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078217, 31.795084, 35.285889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011524, 31.414324, 35.183060>,  <38.971508, 31.185867, 35.121365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011524, 31.414324, 35.183060>,  <39.078217, 31.795084, 35.285889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011524, 31.414324, 35.183060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390724, 0.175590, -0.903605,
		0.905282, -0.251100, 0.342655,
		-0.166728, -0.951902, -0.257070,
		38.961506, 31.128754, 35.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584240, 31.699995, 34.819233>,  <39.078217, 31.795084, 35.285889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584240, 31.699995, 34.819233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321323, 31.409405, 34.739040>,  <39.163574, 31.235050, 34.690926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321323, 31.409405, 34.739040>,  <39.584240, 31.699995, 34.819233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321323, 31.409405, 34.739040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286938, 0.004745, -0.957937,
		0.696871, -0.687174, 0.205335,
		-0.657295, -0.726478, -0.200483,
		39.124134, 31.191462, 34.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914143, 31.015675, 34.572556>,  <39.584240, 31.699995, 34.819233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914143, 31.015675, 34.572556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550858, 31.106194, 34.431736>,  <39.332886, 31.160505, 34.347244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550858, 31.106194, 34.431736>,  <39.914143, 31.015675, 34.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550858, 31.106194, 34.431736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354898, -0.029384, -0.934443,
		-0.221807, -0.973615, -0.053626,
		-0.908212, 0.226298, -0.352051,
		39.278393, 31.174082, 34.326122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371918, 31.676802, 34.418568>,  <39.914143, 31.015675, 34.572556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371918, 31.676802, 34.418568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416645, 31.364868, 34.664936>,  <40.443481, 31.177708, 34.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416645, 31.364868, 34.664936>,  <40.371918, 31.676802, 34.418568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416645, 31.364868, 34.664936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931411, 0.298279, 0.208573,
		-0.346368, 0.550352, 0.759699,
		0.111814, -0.779835, 0.615918,
		40.450188, 31.130919, 34.849712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496540, 31.911591, 35.178761>,  <40.371918, 31.676802, 34.418568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496540, 31.911591, 35.178761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642025, 31.542660, 35.126575>,  <40.729317, 31.321301, 35.095264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642025, 31.542660, 35.126575>,  <40.496540, 31.911591, 35.178761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642025, 31.542660, 35.126575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928835, 0.348490, 0.125781,
		-0.070546, -0.166926, 0.983442,
		0.363716, -0.922329, -0.130462,
		40.751141, 31.265961, 35.087437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094891, 31.856316, 35.660927>,  <40.496540, 31.911591, 35.178761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094891, 31.856316, 35.660927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116863, 31.657288, 35.314651>,  <41.130047, 31.537870, 35.106888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116863, 31.657288, 35.314651>,  <41.094891, 31.856316, 35.660927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116863, 31.657288, 35.314651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949968, 0.293027, -0.108146,
		0.307479, -0.816432, 0.488769,
		0.054929, -0.497568, -0.865684,
		41.133343, 31.508017, 35.054947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656151, 31.432310, 35.634251>,  <41.094891, 31.856316, 35.660927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656151, 31.432310, 35.634251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571671, 31.555290, 35.263119>,  <41.520981, 31.629078, 35.040440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571671, 31.555290, 35.263119>,  <41.656151, 31.432310, 35.634251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571671, 31.555290, 35.263119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962193, 0.232418, -0.142011,
		0.171983, -0.922744, -0.344913,
		-0.211204, 0.307449, -0.927830,
		41.508308, 31.647526, 34.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306961, 31.313169, 35.236416>,  <41.656151, 31.432310, 35.634251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306961, 31.313169, 35.236416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105125, 31.532991, 34.970066>,  <41.984024, 31.664885, 34.810257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105125, 31.532991, 34.970066>,  <42.306961, 31.313169, 35.236416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105125, 31.532991, 34.970066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859706, 0.390706, -0.329020,
		0.079345, -0.738472, -0.669599,
		-0.504588, 0.549552, -0.665870,
		41.953751, 31.697857, 34.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769466, 31.264492, 34.735416>,  <42.306961, 31.313169, 35.236416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769466, 31.264492, 34.735416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536423, 31.583784, 34.674236>,  <42.396595, 31.775360, 34.637527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536423, 31.583784, 34.674236>,  <42.769466, 31.264492, 34.735416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536423, 31.583784, 34.674236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812041, 0.563815, -0.150676,
		-0.034037, -0.211990, -0.976679,
		-0.582608, 0.798231, -0.152954,
		42.361641, 31.823254, 34.628349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271851, 31.139315, 35.264690>,  <42.769466, 31.264492, 34.735416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271851, 31.139315, 35.264690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612278, 31.349325, 35.262501>,  <43.816536, 31.475330, 35.261189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.612278, 31.349325, 35.262501>,  <43.271851, 31.139315, 35.264690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612278, 31.349325, 35.262501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037663, -0.050650, 0.998006,
		0.523702, -0.849578, -0.062880,
		0.851069, 0.525026, -0.005472,
		43.867599, 31.506832, 35.260860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927311, 30.807981, 35.596706>,  <43.271851, 31.139315, 35.264690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927311, 30.807981, 35.596706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942932, 31.207565, 35.606129>,  <43.952305, 31.447315, 35.611782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942932, 31.207565, 35.606129>,  <43.927311, 30.807981, 35.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942932, 31.207565, 35.606129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123805, -0.028225, 0.991905,
		0.991538, -0.035824, -0.124778,
		0.039056, 0.998960, 0.023551,
		43.954651, 31.507254, 35.613194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292538, 30.922863, 36.231354>,  <43.927311, 30.807981, 35.596706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292538, 30.922863, 36.231354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059978, 31.243320, 36.174591>,  <43.920441, 31.435595, 36.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059978, 31.243320, 36.174591>,  <44.292538, 30.922863, 36.231354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059978, 31.243320, 36.174591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257739, -0.015918, 0.966083,
		0.771713, 0.598259, 0.215741,
		-0.581403, 0.801144, -0.141910,
		43.885559, 31.483664, 36.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587376, 31.498896, 36.512867>,  <44.292538, 30.922863, 36.231354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587376, 31.498896, 36.512867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953815, 31.658960, 36.522873>,  <45.173679, 31.754999, 36.528877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.953815, 31.658960, 36.522873>,  <44.587376, 31.498896, 36.512867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953815, 31.658960, 36.522873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081074, 0.245975, -0.965880,
		-0.392659, 0.882818, 0.257781,
		0.916104, 0.400161, 0.025011,
		45.228645, 31.779009, 36.530376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738232, 32.302361, 36.512363>,  <44.587376, 31.498896, 36.512867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738232, 32.302361, 36.512363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015301, 32.121330, 36.287727>,  <45.181541, 32.012711, 36.152946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.015301, 32.121330, 36.287727>,  <44.738232, 32.302361, 36.512363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015301, 32.121330, 36.287727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602284, 0.065433, -0.795595,
		0.396817, 0.889320, -0.227258,
		0.692669, -0.452579, -0.561589,
		45.223103, 31.985556, 36.119251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923481, 32.743160, 35.974636>,  <44.738232, 32.302361, 36.512363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923481, 32.743160, 35.974636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010201, 32.374645, 35.845505>,  <45.062233, 32.153534, 35.768024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.010201, 32.374645, 35.845505>,  <44.923481, 32.743160, 35.974636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.010201, 32.374645, 35.845505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557525, 0.154607, -0.815636,
		0.801351, 0.356816, -0.480125,
		0.216801, -0.921292, -0.322828,
		45.075241, 32.098259, 35.748657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298481, 33.429413, 36.203064>,  <44.923481, 32.743160, 35.974636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298481, 33.429413, 36.203064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455425, 33.640186, 36.504631>,  <45.549591, 33.766651, 36.685574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455425, 33.640186, 36.504631>,  <45.298481, 33.429413, 36.203064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455425, 33.640186, 36.504631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611368, 0.462996, -0.641766,
		-0.687230, 0.712726, -0.140489,
		0.392358, 0.526931, 0.753922,
		45.573132, 33.798267, 36.730808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301090, 34.241077, 36.077782>,  <45.298481, 33.429413, 36.203064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301090, 34.241077, 36.077782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616146, 34.127472, 36.296490>,  <45.805180, 34.059311, 36.427715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616146, 34.127472, 36.296490>,  <45.301090, 34.241077, 36.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616146, 34.127472, 36.296490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603762, 0.532736, -0.593013,
		-0.122863, 0.797201, 0.591079,
		0.787640, -0.284012, 0.546773,
		45.852440, 34.042267, 36.460522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631065, 34.885963, 36.139343>,  <45.301090, 34.241077, 36.077782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631065, 34.885963, 36.139343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862816, 34.568256, 36.212513>,  <46.001865, 34.377632, 36.256416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862816, 34.568256, 36.212513>,  <45.631065, 34.885963, 36.139343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862816, 34.568256, 36.212513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756209, 0.440101, -0.484210,
		0.304086, 0.418870, 0.855616,
		0.579378, -0.794267, 0.182925,
		46.036629, 34.329975, 36.267391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272774, 35.084896, 36.378788>,  <45.631065, 34.885963, 36.139343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272774, 35.084896, 36.378788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293766, 34.732861, 36.190029>,  <46.306362, 34.521641, 36.076775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293766, 34.732861, 36.190029>,  <46.272774, 35.084896, 36.378788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293766, 34.732861, 36.190029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728982, 0.356734, -0.584232,
		0.682518, -0.313341, 0.660293,
		0.052485, -0.880090, -0.471897,
		46.309513, 34.468834, 36.048462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814281, 34.732975, 36.440716>,  <46.272774, 35.084896, 36.378788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814281, 34.732975, 36.440716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739178, 34.560089, 36.087914>,  <46.694115, 34.456356, 35.876232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739178, 34.560089, 36.087914>,  <46.814281, 34.732975, 36.440716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739178, 34.560089, 36.087914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955877, 0.126149, -0.265303,
		0.225932, -0.892904, 0.389458,
		-0.187760, -0.432214, -0.882007,
		46.682850, 34.430424, 35.823311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439877, 34.299740, 36.300026>,  <46.814281, 34.732975, 36.440716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439877, 34.299740, 36.300026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254322, 34.404095, 35.961384>,  <47.142990, 34.466705, 35.758198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254322, 34.404095, 35.961384>,  <47.439877, 34.299740, 36.300026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254322, 34.404095, 35.961384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864226, 0.343337, -0.367740,
		0.194735, -0.902252, -0.384732,
		-0.463887, 0.260884, -0.846610,
		47.115154, 34.482361, 35.707401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866978, 34.181816, 35.650852>,  <47.439877, 34.299740, 36.300026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866978, 34.181816, 35.650852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631695, 34.499279, 35.588730>,  <47.490524, 34.689754, 35.551456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631695, 34.499279, 35.588730>,  <47.866978, 34.181816, 35.650852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631695, 34.499279, 35.588730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805308, 0.557242, -0.202388,
		-0.074084, -0.244116, -0.966912,
		-0.588210, 0.793655, -0.155306,
		47.455231, 34.737377, 35.542137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036938, 34.530579, 34.952862>,  <47.866978, 34.181816, 35.650852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036938, 34.530579, 34.952862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825417, 34.799889, 35.159576>,  <47.698505, 34.961475, 35.283604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.825417, 34.799889, 35.159576>,  <48.036938, 34.530579, 34.952862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.825417, 34.799889, 35.159576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808743, 0.584433, 0.066131,
		-0.257501, 0.452916, -0.853557,
		-0.528799, 0.673279, 0.516785,
		47.666779, 35.001873, 35.314613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.725533, 27.741716, 24.120625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682163, 28.085793, 23.921299>,  <36.656139, 28.292238, 23.801704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682163, 28.085793, 23.921299>,  <36.725533, 27.741716, 24.120625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682163, 28.085793, 23.921299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499363, 0.386308, 0.775502,
		0.859581, 0.332925, 0.387661,
		-0.108427, 0.860190, -0.498313,
		36.649635, 28.343849, 23.771805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055054, 28.226007, 24.497234>,  <36.725533, 27.741716, 24.120625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055054, 28.226007, 24.497234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753342, 28.374401, 24.280554>,  <36.572315, 28.463438, 24.150545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.753342, 28.374401, 24.280554>,  <37.055054, 28.226007, 24.497234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753342, 28.374401, 24.280554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416202, 0.367928, 0.831508,
		0.507783, 0.852642, -0.123114,
		-0.754276, 0.370985, -0.541699,
		36.527058, 28.485697, 24.118044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024883, 28.851784, 24.858498>,  <37.055054, 28.226007, 24.497234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024883, 28.851784, 24.858498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694973, 28.870951, 24.633129>,  <36.497025, 28.882452, 24.497908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694973, 28.870951, 24.633129>,  <37.024883, 28.851784, 24.858498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694973, 28.870951, 24.633129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495221, 0.419742, 0.760640,
		0.272942, 0.906378, -0.322463,
		-0.824778, 0.047920, -0.563422,
		36.447540, 28.885326, 24.464102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741882, 29.574039, 24.929924>,  <37.024883, 28.851784, 24.858498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741882, 29.574039, 24.929924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448925, 29.321123, 24.828882>,  <36.273151, 29.169373, 24.768257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448925, 29.321123, 24.828882>,  <36.741882, 29.574039, 24.929924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448925, 29.321123, 24.828882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567983, 0.362752, 0.738787,
		-0.375497, 0.684556, -0.624808,
		-0.732392, -0.632293, -0.252604,
		36.229206, 29.131435, 24.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176666, 29.953800, 24.820866>,  <36.741882, 29.574039, 24.929924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176666, 29.953800, 24.820866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017620, 29.590765, 24.874811>,  <35.922192, 29.372944, 24.907179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.017620, 29.590765, 24.874811>,  <36.176666, 29.953800, 24.820866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017620, 29.590765, 24.874811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656651, 0.384126, 0.649042,
		-0.640866, 0.169513, -0.748703,
		-0.397617, -0.907586, 0.134863,
		35.898335, 29.318489, 24.915270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484550, 30.117691, 24.827257>,  <36.176666, 29.953800, 24.820866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484550, 30.117691, 24.827257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.522308, 29.751402, 24.983482>,  <35.544964, 29.531628, 25.077217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.522308, 29.751402, 24.983482>,  <35.484550, 30.117691, 24.827257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522308, 29.751402, 24.983482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596977, 0.261884, 0.758311,
		-0.796685, -0.304740, -0.521944,
		0.094399, -0.915724, 0.390562,
		35.550629, 29.476685, 25.100651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807175, 29.902227, 24.959608>,  <35.484550, 30.117691, 24.827257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807175, 29.902227, 24.959608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020161, 29.668528, 25.204599>,  <35.147953, 29.528307, 25.351593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020161, 29.668528, 25.204599>,  <34.807175, 29.902227, 24.959608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020161, 29.668528, 25.204599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607552, 0.240021, 0.757146,
		-0.589371, -0.775268, -0.227160,
		0.532468, -0.584252, 0.612477,
		35.179901, 29.493252, 25.388342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264297, 29.463861, 25.402718>,  <34.807175, 29.902227, 24.959608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264297, 29.463861, 25.402718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623119, 29.476984, 25.578999>,  <34.838413, 29.484858, 25.684767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.623119, 29.476984, 25.578999>,  <34.264297, 29.463861, 25.402718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623119, 29.476984, 25.578999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439311, 0.174406, 0.881242,
		-0.047954, -0.984127, 0.170862,
		0.897054, 0.032802, 0.440702,
		34.892235, 29.486826, 25.711208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229080, 29.007473, 25.965084>,  <34.264297, 29.463861, 25.402718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229080, 29.007473, 25.965084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528461, 29.262568, 26.037859>,  <34.708092, 29.415625, 26.081524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528461, 29.262568, 26.037859>,  <34.229080, 29.007473, 25.965084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528461, 29.262568, 26.037859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276438, 0.050641, 0.959697,
		0.602822, -0.768586, 0.214198,
		0.748456, 0.637739, 0.181939,
		34.752998, 29.453890, 26.092442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617146, 28.832470, 26.661448>,  <34.229080, 29.007473, 25.965084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617146, 28.832470, 26.661448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721581, 29.210917, 26.584826>,  <34.784241, 29.437984, 26.538853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721581, 29.210917, 26.584826>,  <34.617146, 28.832470, 26.661448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721581, 29.210917, 26.584826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146181, 0.157398, 0.976656,
		0.954182, -0.282995, -0.097210,
		0.261088, 0.946118, -0.191555,
		34.799908, 29.494753, 26.527359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257332, 28.966232, 27.033215>,  <34.617146, 28.832470, 26.661448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257332, 28.966232, 27.033215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103825, 29.332533, 26.985678>,  <35.011719, 29.552313, 26.957155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.103825, 29.332533, 26.985678>,  <35.257332, 28.966232, 27.033215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103825, 29.332533, 26.985678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143368, 0.186223, 0.971991,
		0.912233, 0.355979, -0.202755,
		-0.383767, 0.915751, -0.118843,
		34.988693, 29.607258, 26.950026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515316, 29.230883, 27.570387>,  <35.257332, 28.966232, 27.033215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515316, 29.230883, 27.570387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257076, 29.525921, 27.491241>,  <35.102131, 29.702944, 27.443754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.257076, 29.525921, 27.491241>,  <35.515316, 29.230883, 27.570387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257076, 29.525921, 27.491241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013675, 0.270217, 0.962702,
		0.763551, 0.618818, -0.184539,
		-0.645603, 0.737596, -0.197862,
		35.063396, 29.747200, 27.431883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736843, 29.836620, 27.972357>,  <35.515316, 29.230883, 27.570387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736843, 29.836620, 27.972357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348179, 29.874247, 27.885605>,  <35.114983, 29.896822, 27.833553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.348179, 29.874247, 27.885605>,  <35.736843, 29.836620, 27.972357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348179, 29.874247, 27.885605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198927, 0.170315, 0.965102,
		0.127721, 0.980890, -0.146775,
		-0.971656, 0.094066, -0.216878,
		35.056683, 29.902466, 27.820541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514435, 30.539593, 28.212318>,  <35.736843, 29.836620, 27.972357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514435, 30.539593, 28.212318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186161, 30.314077, 28.175180>,  <34.989197, 30.178768, 28.152897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186161, 30.314077, 28.175180>,  <35.514435, 30.539593, 28.212318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186161, 30.314077, 28.175180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323444, 0.324441, 0.888888,
		-0.471021, 0.759528, -0.448617,
		-0.820685, -0.563787, -0.092846,
		34.939957, 30.144941, 28.147327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957146, 30.986614, 28.410172>,  <35.514435, 30.539593, 28.212318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957146, 30.986614, 28.410172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850945, 30.602526, 28.444767>,  <34.787224, 30.372072, 28.465525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850945, 30.602526, 28.444767>,  <34.957146, 30.986614, 28.410172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850945, 30.602526, 28.444767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208175, 0.144688, 0.967330,
		-0.941366, 0.238826, -0.238310,
		-0.265505, -0.960222, 0.086487,
		34.771294, 30.314459, 28.470713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421005, 30.935446, 28.832298>,  <34.957146, 30.986614, 28.410172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421005, 30.935446, 28.832298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519489, 30.547941, 28.844154>,  <34.578579, 30.315437, 28.851269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.519489, 30.547941, 28.844154>,  <34.421005, 30.935446, 28.832298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519489, 30.547941, 28.844154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086580, 0.008476, 0.996209,
		-0.965342, -0.247843, -0.081788,
		0.246211, -0.968763, 0.029641,
		34.593353, 30.257313, 28.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154476, 30.818798, 29.492382>,  <34.421005, 30.935446, 28.832298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154476, 30.818798, 29.492382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386578, 30.505579, 29.402815>,  <34.525837, 30.317648, 29.349073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.386578, 30.505579, 29.402815>,  <34.154476, 30.818798, 29.492382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386578, 30.505579, 29.402815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086673, -0.214006, 0.972980,
		-0.809812, -0.583981, -0.056308,
		0.580252, -0.783050, -0.223920,
		34.560654, 30.270664, 29.335638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865952, 30.234930, 29.926361>,  <34.154476, 30.818798, 29.492382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865952, 30.234930, 29.926361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248955, 30.180161, 29.824831>,  <34.478756, 30.147299, 29.763912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.248955, 30.180161, 29.824831>,  <33.865952, 30.234930, 29.926361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248955, 30.180161, 29.824831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, -0.210754, 0.951947,
		-0.183831, -0.967903, -0.171375,
		0.957511, -0.136916, -0.253825,
		34.536209, 30.139084, 29.748684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989124, 29.685736, 30.285717>,  <33.865952, 30.234930, 29.926361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989124, 29.685736, 30.285717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348701, 29.827438, 30.182644>,  <34.564449, 29.912460, 30.120800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348701, 29.827438, 30.182644>,  <33.989124, 29.685736, 30.285717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348701, 29.827438, 30.182644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334989, -0.176870, 0.925472,
		0.282279, -0.918269, -0.277669,
		0.898944, 0.354257, -0.257684,
		34.618385, 29.933716, 30.105339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378693, 29.131109, 30.490625>,  <33.989124, 29.685736, 30.285717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378693, 29.131109, 30.490625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587357, 29.472370, 30.489399>,  <34.712555, 29.677126, 30.488663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.587357, 29.472370, 30.489399>,  <34.378693, 29.131109, 30.490625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587357, 29.472370, 30.489399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162022, -0.095539, 0.982151,
		0.837630, -0.512841, -0.188068,
		0.521656, 0.853151, -0.003065,
		34.743855, 29.728315, 30.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932426, 28.975588, 30.899910>,  <34.378693, 29.131109, 30.490625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932426, 28.975588, 30.899910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916912, 29.375231, 30.893188>,  <34.907604, 29.615017, 30.889156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916912, 29.375231, 30.893188>,  <34.932426, 28.975588, 30.899910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916912, 29.375231, 30.893188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109018, 0.020947, 0.993819,
		0.993283, 0.036716, -0.109733,
		-0.038788, 0.999106, -0.016803,
		34.905277, 29.674963, 30.888147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557526, 29.196964, 31.203085>,  <34.932426, 28.975588, 30.899910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557526, 29.196964, 31.203085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268059, 29.471895, 31.228008>,  <35.094379, 29.636854, 31.242962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.268059, 29.471895, 31.228008>,  <35.557526, 29.196964, 31.203085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268059, 29.471895, 31.228008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093128, 0.007798, 0.995624,
		0.683833, 0.726307, -0.069652,
		-0.723671, 0.687326, 0.062307,
		35.050957, 29.678093, 31.246700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686943, 29.027336, 31.952358>,  <35.557526, 29.196964, 31.203085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686943, 29.027336, 31.952358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792149, 28.647070, 32.018158>,  <35.855274, 28.418911, 32.057636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792149, 28.647070, 32.018158>,  <35.686943, 29.027336, 31.952358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792149, 28.647070, 32.018158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178880, -0.215597, -0.959958,
		0.948063, 0.223059, -0.226760,
		0.263016, -0.950664, 0.164499,
		35.871052, 28.361870, 32.067509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183765, 28.857487, 31.437557>,  <35.686943, 29.027336, 31.952358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183765, 28.857487, 31.437557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025612, 28.518587, 31.579456>,  <35.930721, 28.315248, 31.664597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025612, 28.518587, 31.579456>,  <36.183765, 28.857487, 31.437557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025612, 28.518587, 31.579456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147562, -0.322611, -0.934959,
		0.906587, -0.422011, 0.002532,
		-0.395380, -0.847248, 0.354747,
		35.906998, 28.264412, 31.685881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493248, 28.347088, 31.052208>,  <36.183765, 28.857487, 31.437557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493248, 28.347088, 31.052208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181690, 28.162996, 31.222622>,  <35.994755, 28.052542, 31.324871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.181690, 28.162996, 31.222622>,  <36.493248, 28.347088, 31.052208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181690, 28.162996, 31.222622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209948, -0.448776, -0.868632,
		0.590965, -0.766021, 0.252926,
		-0.778898, -0.460230, 0.426036,
		35.948021, 28.024927, 31.350433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586147, 27.655033, 31.019726>,  <36.493248, 28.347088, 31.052208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586147, 27.655033, 31.019726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193806, 27.713968, 31.070654>,  <35.958401, 27.749329, 31.101212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193806, 27.713968, 31.070654>,  <36.586147, 27.655033, 31.019726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193806, 27.713968, 31.070654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193100, -0.651644, -0.733535,
		-0.025109, -0.744078, 0.667620,
		-0.980858, 0.147336, 0.127320,
		35.899548, 27.758169, 31.108850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349140, 27.076075, 31.258011>,  <36.586147, 27.655033, 31.019726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349140, 27.076075, 31.258011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064182, 27.269100, 31.054197>,  <35.893208, 27.384914, 30.931910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064182, 27.269100, 31.054197>,  <36.349140, 27.076075, 31.258011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064182, 27.269100, 31.054197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011793, -0.717728, -0.696224,
		-0.701676, -0.501998, 0.505617,
		-0.712399, 0.482561, -0.509532,
		35.850464, 27.413870, 30.901337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872547, 26.528835, 31.114845>,  <36.349140, 27.076075, 31.258011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872547, 26.528835, 31.114845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828362, 26.841713, 30.869579>,  <35.801849, 27.029440, 30.722420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828362, 26.841713, 30.869579>,  <35.872547, 26.528835, 31.114845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828362, 26.841713, 30.869579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105022, -0.622673, -0.775402,
		-0.988316, -0.021256, 0.150928,
		-0.110461, 0.782193, -0.613166,
		35.795223, 27.076370, 30.685629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284885, 26.285351, 30.643173>,  <35.872547, 26.528835, 31.114845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284885, 26.285351, 30.643173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416332, 26.607433, 30.445726>,  <35.495201, 26.800682, 30.327259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416332, 26.607433, 30.445726>,  <35.284885, 26.285351, 30.643173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416332, 26.607433, 30.445726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287178, -0.412707, -0.864408,
		-0.899745, 0.425814, 0.095615,
		0.328616, 0.805205, -0.493616,
		35.514915, 26.848995, 30.297642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778561, 26.322229, 30.001844>,  <35.284885, 26.285351, 30.643173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778561, 26.322229, 30.001844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101273, 26.550127, 29.939245>,  <35.294899, 26.686867, 29.901686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101273, 26.550127, 29.939245>,  <34.778561, 26.322229, 30.001844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101273, 26.550127, 29.939245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059206, -0.341497, -0.938016,
		-0.587875, 0.747509, -0.309246,
		0.806783, 0.569745, -0.156500,
		35.343307, 26.721050, 29.892296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564861, 26.776794, 29.544703>,  <34.778561, 26.322229, 30.001844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564861, 26.776794, 29.544703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961872, 26.729195, 29.533855>,  <35.200077, 26.700634, 29.527348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.961872, 26.729195, 29.533855>,  <34.564861, 26.776794, 29.544703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961872, 26.729195, 29.533855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031804, -0.037658, -0.998784,
		0.117835, 0.992180, -0.041161,
		0.992524, -0.119000, -0.027118,
		35.259628, 26.693495, 29.525721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736008, 27.027782, 28.898952>,  <34.564861, 26.776794, 29.544703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736008, 27.027782, 28.898952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078854, 26.842291, 28.988680>,  <35.284561, 26.730997, 29.042517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078854, 26.842291, 28.988680>,  <34.736008, 27.027782, 28.898952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078854, 26.842291, 28.988680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205720, -0.091089, -0.974362,
		0.472271, 0.881283, 0.017325,
		0.857111, -0.463727, 0.224317,
		35.335987, 26.703173, 29.055975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370308, 27.411476, 28.654161>,  <34.736008, 27.027782, 28.898952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370308, 27.411476, 28.654161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427387, 27.016195, 28.676407>,  <35.461636, 26.779026, 28.689754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427387, 27.016195, 28.676407>,  <35.370308, 27.411476, 28.654161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427387, 27.016195, 28.676407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241314, -0.019755, -0.970246,
		0.959898, 0.151877, 0.235648,
		0.142702, -0.988202, 0.055613,
		35.470200, 26.719734, 28.693090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025723, 27.463745, 28.429419>,  <35.370308, 27.411476, 28.654161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025723, 27.463745, 28.429419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897705, 27.090469, 28.364021>,  <35.820896, 26.866505, 28.324783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897705, 27.090469, 28.364021>,  <36.025723, 27.463745, 28.429419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897705, 27.090469, 28.364021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555302, -0.044952, -0.830433,
		0.767602, -0.356562, 0.532589,
		-0.320042, -0.933190, -0.163495,
		35.801693, 26.810513, 28.314974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624691, 27.175964, 28.107569>,  <36.025723, 27.463745, 28.429419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624691, 27.175964, 28.107569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346947, 26.896175, 28.039913>,  <36.180302, 26.728302, 27.999319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346947, 26.896175, 28.039913>,  <36.624691, 27.175964, 28.107569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346947, 26.896175, 28.039913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343042, -0.115109, -0.932240,
		0.632605, -0.705330, 0.319874,
		-0.694358, -0.699471, -0.169139,
		36.138638, 26.686335, 27.989172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011940, 26.495592, 28.083433>,  <36.624691, 27.175964, 28.107569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011940, 26.495592, 28.083433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664162, 26.483799, 27.886177>,  <36.455494, 26.476723, 27.767824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664162, 26.483799, 27.886177>,  <37.011940, 26.495592, 28.083433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664162, 26.483799, 27.886177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485340, -0.237291, -0.841510,
		-0.092205, -0.970991, 0.220623,
		-0.869450, -0.029486, -0.493140,
		36.403328, 26.474953, 27.738235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095177, 26.045998, 27.617113>,  <37.011940, 26.495592, 28.083433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095177, 26.045998, 27.617113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773617, 26.222002, 27.457047>,  <36.580681, 26.327604, 27.361008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.773617, 26.222002, 27.457047>,  <37.095177, 26.045998, 27.617113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773617, 26.222002, 27.457047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337552, -0.216422, -0.916090,
		-0.489694, -0.871522, 0.025456,
		-0.803902, 0.440011, -0.400165,
		36.532448, 26.354006, 27.336998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876499, 25.610880, 26.961401>,  <37.095177, 26.045998, 27.617113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876499, 25.610880, 26.961401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724117, 25.978407, 26.920130>,  <36.632690, 26.198923, 26.895367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724117, 25.978407, 26.920130>,  <36.876499, 25.610880, 26.961401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724117, 25.978407, 26.920130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256339, -0.002260, -0.966584,
		-0.888350, -0.394671, -0.234669,
		-0.380952, 0.918820, -0.103178,
		36.609833, 26.254053, 26.889177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585148, 25.562599, 26.274336>,  <36.876499, 25.610880, 26.961401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585148, 25.562599, 26.274336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622910, 25.951771, 26.358711>,  <36.645569, 26.185274, 26.409336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.622910, 25.951771, 26.358711>,  <36.585148, 25.562599, 26.274336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622910, 25.951771, 26.358711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503329, 0.136161, -0.853299,
		-0.858922, 0.186729, -0.476850,
		0.094408, 0.972930, 0.210938,
		36.651234, 26.243650, 26.421993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246532, 25.908306, 25.802750>,  <36.585148, 25.562599, 26.274336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246532, 25.908306, 25.802750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514446, 26.169067, 25.944967>,  <36.675194, 26.325523, 26.030298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514446, 26.169067, 25.944967>,  <36.246532, 25.908306, 25.802750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514446, 26.169067, 25.944967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384538, 0.105100, -0.917107,
		-0.635230, 0.750985, -0.180286,
		0.669785, 0.651901, 0.355545,
		36.715382, 26.364637, 26.051630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.164047, 26.491663, 25.309864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511703, 26.556231, 25.496859>,  <36.720295, 26.594971, 25.609056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.511703, 26.556231, 25.496859>,  <36.164047, 26.491663, 25.309864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511703, 26.556231, 25.496859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447218, 0.147104, -0.882245,
		-0.211179, 0.975861, 0.055665,
		0.869137, 0.161417, 0.467488,
		36.772446, 26.604656, 25.637106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464367, 27.131626, 25.041470>,  <36.164047, 26.491663, 25.309864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464367, 27.131626, 25.041470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775738, 26.929056, 25.189844>,  <36.962559, 26.807514, 25.278868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.775738, 26.929056, 25.189844>,  <36.464367, 27.131626, 25.041470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775738, 26.929056, 25.189844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540463, 0.240103, -0.806381,
		0.319307, 0.828182, 0.460605,
		0.778423, -0.506423, 0.370935,
		37.009266, 26.777128, 25.301125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040279, 27.497313, 24.758358>,  <36.464367, 27.131626, 25.041470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040279, 27.497313, 24.758358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206451, 27.154106, 24.879171>,  <37.306156, 26.948183, 24.951658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206451, 27.154106, 24.879171>,  <37.040279, 27.497313, 24.758358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206451, 27.154106, 24.879171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664802, 0.059764, -0.744625,
		0.620850, 0.510133, 0.595239,
		0.415432, -0.858017, 0.302033,
		37.331081, 26.896702, 24.969782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806377, 27.674625, 24.667168>,  <37.040279, 27.497313, 24.758358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806377, 27.674625, 24.667168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793823, 27.277922, 24.716850>,  <37.786293, 27.039900, 24.746660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.793823, 27.277922, 24.716850>,  <37.806377, 27.674625, 24.667168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793823, 27.277922, 24.716850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716327, -0.108979, -0.689202,
		0.697059, 0.067343, 0.713844,
		-0.031382, -0.991760, 0.124204,
		37.784409, 26.980394, 24.754112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487904, 27.482254, 24.523991>,  <37.806377, 27.674625, 24.667168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487904, 27.482254, 24.523991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270664, 27.147654, 24.494850>,  <38.140320, 26.946894, 24.477365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270664, 27.147654, 24.494850>,  <38.487904, 27.482254, 24.523991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270664, 27.147654, 24.494850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643711, -0.359075, -0.675796,
		0.539147, -0.413919, 0.733479,
		-0.543099, -0.836502, -0.072851,
		38.107735, 26.896704, 24.472996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978985, 26.966600, 24.485956>,  <38.487904, 27.482254, 24.523991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978985, 26.966600, 24.485956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645809, 26.812868, 24.326704>,  <38.445904, 26.720629, 24.231153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.645809, 26.812868, 24.326704>,  <38.978985, 26.966600, 24.485956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645809, 26.812868, 24.326704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542714, -0.426850, -0.723368,
		0.108073, -0.818589, 0.564121,
		-0.832936, -0.384333, -0.398128,
		38.395927, 26.697569, 24.207266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136147, 26.372726, 24.175583>,  <38.978985, 26.966600, 24.485956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136147, 26.372726, 24.175583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800217, 26.474487, 23.983761>,  <38.598660, 26.535543, 23.868668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800217, 26.474487, 23.983761>,  <39.136147, 26.372726, 24.175583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800217, 26.474487, 23.983761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401389, -0.303752, -0.864073,
		-0.365490, -0.918157, 0.152983,
		-0.839824, 0.254405, -0.479557,
		38.548267, 26.550808, 23.839893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992264, 25.853565, 23.771511>,  <39.136147, 26.372726, 24.175583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992264, 25.853565, 23.771511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778648, 26.135632, 23.584946>,  <38.650478, 26.304873, 23.473005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778648, 26.135632, 23.584946>,  <38.992264, 25.853565, 23.771511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778648, 26.135632, 23.584946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381549, -0.291282, -0.877254,
		-0.754469, -0.646447, -0.113500,
		-0.534037, 0.705167, -0.466415,
		38.618439, 26.347181, 23.445021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848942, 25.535877, 23.264673>,  <38.992264, 25.853565, 23.771511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848942, 25.535877, 23.264673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799019, 25.916525, 23.152355>,  <38.769066, 26.144913, 23.084965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.799019, 25.916525, 23.152355>,  <38.848942, 25.535877, 23.264673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799019, 25.916525, 23.152355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542256, -0.171581, -0.822508,
		-0.830892, -0.254918, -0.494606,
		-0.124807, 0.951618, -0.280796,
		38.761578, 26.202011, 23.068117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522293, 25.495712, 22.614300>,  <38.848942, 25.535877, 23.264673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522293, 25.495712, 22.614300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705772, 25.847980, 22.661663>,  <38.815861, 26.059341, 22.690081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705772, 25.847980, 22.661663>,  <38.522293, 25.495712, 22.614300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705772, 25.847980, 22.661663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534317, -0.166886, -0.828646,
		-0.710003, 0.443362, -0.547106,
		0.458695, 0.880670, 0.118407,
		38.843380, 26.112181, 22.697186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382607, 25.798397, 22.039482>,  <38.522293, 25.495712, 22.614300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382607, 25.798397, 22.039482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693157, 26.014578, 22.169189>,  <38.879490, 26.144285, 22.247013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693157, 26.014578, 22.169189>,  <38.382607, 25.798397, 22.039482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693157, 26.014578, 22.169189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439787, -0.096006, -0.892956,
		-0.451467, 0.835881, -0.312220,
		0.776379, 0.540450, 0.324266,
		38.926071, 26.176712, 22.266470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516956, 26.339094, 21.522514>,  <38.382607, 25.798397, 22.039482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516956, 26.339094, 21.522514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850418, 26.276812, 21.734468>,  <39.050495, 26.239441, 21.861641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850418, 26.276812, 21.734468>,  <38.516956, 26.339094, 21.522514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850418, 26.276812, 21.734468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536944, 0.003912, -0.843609,
		0.129285, 0.987795, 0.086868,
		0.833653, -0.155709, 0.529885,
		39.100513, 26.230099, 21.893435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890678, 26.872658, 21.328766>,  <38.516956, 26.339094, 21.522514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890678, 26.872658, 21.328766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123608, 26.576536, 21.463139>,  <39.263367, 26.398865, 21.543762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123608, 26.576536, 21.463139>,  <38.890678, 26.872658, 21.328766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123608, 26.576536, 21.463139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507975, 0.008722, -0.861328,
		0.634712, 0.672218, 0.381133,
		0.582325, -0.740302, 0.335934,
		39.298306, 26.354446, 21.563919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508644, 27.094933, 21.061512>,  <38.890678, 26.872658, 21.328766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508644, 27.094933, 21.061512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588360, 26.714912, 21.157587>,  <39.636189, 26.486900, 21.215233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.588360, 26.714912, 21.157587>,  <39.508644, 27.094933, 21.061512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588360, 26.714912, 21.157587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536491, -0.099334, -0.838040,
		0.820038, 0.295870, 0.489897,
		0.199287, -0.950049, 0.240189,
		39.648148, 26.429897, 21.229643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206463, 27.043962, 21.013416>,  <39.508644, 27.094933, 21.061512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206463, 27.043962, 21.013416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.077118, 26.665565, 21.022671>,  <39.999512, 26.438528, 21.028223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.077118, 26.665565, 21.022671>,  <40.206463, 27.043962, 21.013416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077118, 26.665565, 21.022671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698809, -0.255215, -0.668230,
		0.638045, -0.199912, 0.743595,
		-0.323364, -0.945992, 0.023138,
		39.980110, 26.381767, 21.029612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842724, 26.633919, 20.950302>,  <40.206463, 27.043962, 21.013416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842724, 26.633919, 20.950302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.531738, 26.410944, 20.833807>,  <40.345146, 26.277159, 20.763910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.531738, 26.410944, 20.833807>,  <40.842724, 26.633919, 20.950302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531738, 26.410944, 20.833807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573265, -0.437617, -0.692719,
		0.258696, -0.705518, 0.659789,
		-0.777460, -0.557437, -0.291239,
		40.298500, 26.243713, 20.746435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141308, 26.090189, 20.673183>,  <40.842724, 26.633919, 20.950302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141308, 26.090189, 20.673183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779057, 26.057430, 20.506750>,  <40.561707, 26.037775, 20.406889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.779057, 26.057430, 20.506750>,  <41.141308, 26.090189, 20.673183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779057, 26.057430, 20.506750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423085, -0.107670, -0.899670,
		0.028882, -0.990808, 0.132159,
		-0.905630, -0.081899, -0.416085,
		40.507366, 26.032860, 20.381924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166653, 25.511812, 20.270082>,  <41.141308, 26.090189, 20.673183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166653, 25.511812, 20.270082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868252, 25.723614, 20.108534>,  <40.689213, 25.850695, 20.011604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.868252, 25.723614, 20.108534>,  <41.166653, 25.511812, 20.270082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868252, 25.723614, 20.108534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463001, -0.023513, -0.886046,
		-0.478659, -0.847983, -0.227619,
		-0.746000, 0.529502, -0.403872,
		40.644451, 25.882463, 19.987371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944763, 25.173920, 19.589149>,  <41.166653, 25.511812, 20.270082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944763, 25.173920, 19.589149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799942, 25.544374, 19.546835>,  <40.713051, 25.766647, 19.521446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799942, 25.544374, 19.546835>,  <40.944763, 25.173920, 19.589149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799942, 25.544374, 19.546835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334873, 0.023318, -0.941975,
		-0.869931, -0.376467, -0.318580,
		-0.362051, 0.926136, -0.105784,
		40.691326, 25.822216, 19.515100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867416, 25.314848, 18.924082>,  <40.944763, 25.173920, 19.589149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867416, 25.314848, 18.924082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811802, 25.689863, 19.051638>,  <40.778435, 25.914873, 19.128172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.811802, 25.689863, 19.051638>,  <40.867416, 25.314848, 18.924082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811802, 25.689863, 19.051638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282672, 0.346193, -0.894565,
		-0.949086, -0.034236, -0.313150,
		-0.139037, 0.937538, 0.318890,
		40.770092, 25.971125, 19.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433006, 25.611694, 18.322905>,  <40.867416, 25.314848, 18.924082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433006, 25.611694, 18.322905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.627987, 25.889717, 18.534296>,  <40.744976, 26.056530, 18.661131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.627987, 25.889717, 18.534296>,  <40.433006, 25.611694, 18.322905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627987, 25.889717, 18.534296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398765, 0.361238, -0.842908,
		-0.776775, 0.621614, -0.101079,
		0.487450, 0.695056, 0.528479,
		40.774223, 26.098234, 18.692839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381424, 26.266024, 17.989008>,  <40.433006, 25.611694, 18.322905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381424, 26.266024, 17.989008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709332, 26.284567, 18.217333>,  <40.906075, 26.295692, 18.354328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709332, 26.284567, 18.217333>,  <40.381424, 26.266024, 17.989008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709332, 26.284567, 18.217333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554628, 0.184093, -0.811478,
		-0.142702, 0.981815, 0.125202,
		0.819770, 0.046359, 0.570813,
		40.955261, 26.298475, 18.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745728, 26.804083, 17.629086>,  <40.381424, 26.266024, 17.989008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745728, 26.804083, 17.629086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009541, 26.631128, 17.875031>,  <41.167828, 26.527355, 18.022598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.009541, 26.631128, 17.875031>,  <40.745728, 26.804083, 17.629086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009541, 26.631128, 17.875031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737019, 0.211257, -0.642007,
		0.147700, 0.876593, 0.458007,
		0.659536, -0.432384, 0.614863,
		41.207401, 26.501413, 18.059490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284405, 27.296133, 17.856840>,  <40.745728, 26.804083, 17.629086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284405, 27.296133, 17.856840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403461, 26.914335, 17.849360>,  <41.474895, 26.685257, 17.844872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403461, 26.914335, 17.849360>,  <41.284405, 27.296133, 17.856840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403461, 26.914335, 17.849360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767646, 0.250930, -0.589706,
		0.567565, 0.161162, 0.807401,
		0.297639, -0.954495, -0.018703,
		41.492752, 26.627987, 17.843748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322906, 28.041052, 18.012772>,  <41.284405, 27.296133, 17.856840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322906, 28.041052, 18.012772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341793, 27.959370, 17.621656>,  <41.353127, 27.910360, 17.386988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341793, 27.959370, 17.621656>,  <41.322906, 28.041052, 18.012772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341793, 27.959370, 17.621656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062223, -0.977581, 0.201155,
		-0.996945, 0.051343, -0.058863,
		0.047215, -0.204203, -0.977789,
		41.355957, 27.898109, 17.328320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304810, 28.569639, 17.480827>,  <41.322906, 28.041052, 18.012772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304810, 28.569639, 17.480827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.953171, 28.670042, 17.318748>,  <40.742188, 28.730284, 17.221502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.953171, 28.670042, 17.318748>,  <41.304810, 28.569639, 17.480827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953171, 28.670042, 17.318748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411025, 0.031224, 0.911089,
		0.241340, 0.967482, 0.075721,
		-0.879098, 0.251006, -0.405195,
		40.689442, 28.745344, 17.197189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054527, 28.968616, 17.990137>,  <41.304810, 28.569639, 17.480827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054527, 28.968616, 17.990137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725929, 28.891293, 17.775557>,  <40.528770, 28.844898, 17.646809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.725929, 28.891293, 17.775557>,  <41.054527, 28.968616, 17.990137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725929, 28.891293, 17.775557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543425, -0.019587, 0.839229,
		-0.172738, 0.980942, -0.088959,
		-0.821493, -0.193309, -0.536452,
		40.479481, 28.833300, 17.614620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454041, 29.449303, 18.370378>,  <41.054527, 28.968616, 17.990137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454041, 29.449303, 18.370378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313496, 29.135906, 18.165367>,  <40.229168, 28.947868, 18.042360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313496, 29.135906, 18.165367>,  <40.454041, 29.449303, 18.370378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313496, 29.135906, 18.165367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550558, -0.269864, 0.789974,
		-0.757250, 0.559747, -0.336535,
		-0.351367, -0.783490, -0.512528,
		40.208084, 28.900860, 18.011608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633125, 29.515682, 18.292959>,  <40.454041, 29.449303, 18.370378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633125, 29.515682, 18.292959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747185, 29.133680, 18.260340>,  <39.815620, 28.904478, 18.240768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747185, 29.133680, 18.260340>,  <39.633125, 29.515682, 18.292959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747185, 29.133680, 18.260340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528076, -0.227539, 0.818145,
		-0.799890, -0.190231, -0.569200,
		0.285152, -0.955007, -0.081550,
		39.832729, 28.847178, 18.235874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971592, 29.105406, 18.172962>,  <39.633125, 29.515682, 18.292959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971592, 29.105406, 18.172962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272072, 28.869169, 18.290873>,  <39.452362, 28.727427, 18.361618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272072, 28.869169, 18.290873>,  <38.971592, 29.105406, 18.172962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272072, 28.869169, 18.290873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577044, -0.370757, 0.727708,
		-0.320491, -0.716755, -0.619313,
		0.751203, -0.590594, 0.294775,
		39.497433, 28.691992, 18.379305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653301, 28.548031, 18.144650>,  <38.971592, 29.105406, 18.172962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653301, 28.548031, 18.144650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958424, 28.516472, 18.401371>,  <39.141495, 28.497536, 18.555403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958424, 28.516472, 18.401371>,  <38.653301, 28.548031, 18.144650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958424, 28.516472, 18.401371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630510, -0.311008, 0.711148,
		0.143498, -0.947127, -0.286982,
		0.762801, -0.078897, 0.641801,
		39.187263, 28.492804, 18.593912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444378, 28.066589, 18.706850>,  <38.653301, 28.548031, 18.144650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444378, 28.066589, 18.706850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754211, 28.239086, 18.891914>,  <38.940113, 28.342585, 19.002953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754211, 28.239086, 18.891914>,  <38.444378, 28.066589, 18.706850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754211, 28.239086, 18.891914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509796, -0.007258, 0.860265,
		0.374340, -0.902207, 0.214224,
		0.774582, 0.431242, 0.462659,
		38.986588, 28.368458, 19.030712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371700, 27.660833, 19.330122>,  <38.444378, 28.066589, 18.706850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371700, 27.660833, 19.330122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602192, 27.980822, 19.397070>,  <38.740486, 28.172813, 19.437239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.602192, 27.980822, 19.397070>,  <38.371700, 27.660833, 19.330122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602192, 27.980822, 19.397070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261781, -0.013341, 0.965035,
		0.774232, -0.599892, 0.201729,
		0.576226, 0.799970, 0.167369,
		38.775059, 28.220812, 19.447281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623913, 27.518507, 19.967192>,  <38.371700, 27.660833, 19.330122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623913, 27.518507, 19.967192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671215, 27.913940, 19.929852>,  <38.699596, 28.151201, 19.907448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671215, 27.913940, 19.929852>,  <38.623913, 27.518507, 19.967192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671215, 27.913940, 19.929852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222697, 0.118020, 0.967718,
		0.967689, -0.093646, 0.234112,
		0.118253, 0.988586, -0.093352,
		38.706692, 28.210516, 19.901846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090385, 27.709562, 20.481508>,  <38.623913, 27.518507, 19.967192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090385, 27.709562, 20.481508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859638, 28.018007, 20.373724>,  <38.721188, 28.203074, 20.309053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.859638, 28.018007, 20.373724>,  <39.090385, 27.709562, 20.481508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859638, 28.018007, 20.373724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231071, 0.162356, 0.959295,
		0.783471, 0.615653, 0.084523,
		-0.576870, 0.771111, -0.269460,
		38.686577, 28.249340, 20.292887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273819, 28.199085, 20.970686>,  <39.090385, 27.709562, 20.481508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273819, 28.199085, 20.970686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922459, 28.300766, 20.808796>,  <38.711643, 28.361774, 20.711662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922459, 28.300766, 20.808796>,  <39.273819, 28.199085, 20.970686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922459, 28.300766, 20.808796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397806, 0.080480, 0.913933,
		0.264893, 0.963798, 0.030429,
		-0.878397, 0.254200, -0.404723,
		38.658939, 28.377026, 20.687380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065079, 28.698717, 21.465368>,  <39.273819, 28.199085, 20.970686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065079, 28.698717, 21.465368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763596, 28.549036, 21.249258>,  <38.582706, 28.459229, 21.119591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763596, 28.549036, 21.249258>,  <39.065079, 28.698717, 21.465368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763596, 28.549036, 21.249258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571901, -0.031605, 0.819713,
		-0.323813, 0.926809, -0.190185,
		-0.753707, -0.374200, -0.540277,
		38.537483, 28.436775, 21.087175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472363, 29.175314, 21.576450>,  <39.065079, 28.698717, 21.465368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472363, 29.175314, 21.576450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295647, 28.847017, 21.431562>,  <38.189617, 28.650040, 21.344629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.295647, 28.847017, 21.431562>,  <38.472363, 29.175314, 21.576450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295647, 28.847017, 21.431562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751555, 0.118122, 0.649009,
		-0.489884, 0.558953, -0.669018,
		-0.441791, -0.820743, -0.362218,
		38.163109, 28.600794, 21.322897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794407, 29.410191, 21.529654>,  <38.472363, 29.175314, 21.576450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794407, 29.410191, 21.529654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773075, 29.010937, 21.541517>,  <37.760277, 28.771383, 21.548635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.773075, 29.010937, 21.541517>,  <37.794407, 29.410191, 21.529654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773075, 29.010937, 21.541517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714307, 0.058883, 0.697351,
		-0.697798, 0.016004, -0.716116,
		-0.053328, -0.998136, 0.029657,
		37.757076, 28.711496, 21.550415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047592, 29.233784, 21.693390>,  <37.794407, 29.410191, 21.529654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047592, 29.233784, 21.693390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254784, 28.900608, 21.771273>,  <37.379097, 28.700703, 21.818003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254784, 28.900608, 21.771273>,  <37.047592, 29.233784, 21.693390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254784, 28.900608, 21.771273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541531, -0.143115, 0.828409,
		-0.662149, -0.534539, -0.525192,
		0.517980, -0.832938, 0.194707,
		37.410179, 28.650726, 21.829685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590675, 28.668089, 21.742439>,  <37.047592, 29.233784, 21.693390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590675, 28.668089, 21.742439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926384, 28.589949, 21.945402>,  <37.127808, 28.543064, 22.067181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926384, 28.589949, 21.945402>,  <36.590675, 28.668089, 21.742439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926384, 28.589949, 21.945402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528001, -0.070092, 0.846346,
		-0.129774, -0.978224, -0.161974,
		0.839269, -0.195356, 0.507408,
		37.178165, 28.531343, 22.097626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446072, 28.087156, 22.133087>,  <36.590675, 28.668089, 21.742439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446072, 28.087156, 22.133087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768265, 28.222118, 22.327967>,  <36.961578, 28.303095, 22.444895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768265, 28.222118, 22.327967>,  <36.446072, 28.087156, 22.133087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768265, 28.222118, 22.327967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405384, -0.285969, 0.868266,
		0.432281, -0.896872, -0.093563,
		0.805479, 0.337406, 0.487197,
		37.009907, 28.323339, 22.474125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490944, 27.647984, 22.728956>,  <36.446072, 28.087156, 22.133087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490944, 27.647984, 22.728956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701523, 27.981844, 22.793716>,  <36.827869, 28.182159, 22.832573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701523, 27.981844, 22.793716>,  <36.490944, 27.647984, 22.728956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701523, 27.981844, 22.793716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356942, 0.044147, 0.933083,
		0.771650, -0.549010, 0.321162,
		0.526450, 0.834649, 0.161898,
		36.859459, 28.232239, 22.842285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705971, 27.467001, 23.340845>,  <36.490944, 27.647984, 22.728956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705971, 27.467001, 23.340845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719872, 27.866425, 23.324492>,  <36.728210, 28.106079, 23.314680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.719872, 27.866425, 23.324492>,  <36.705971, 27.467001, 23.340845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719872, 27.866425, 23.324492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332529, 0.050132, 0.941760,
		0.942453, -0.019133, 0.333792,
		0.034752, 0.998559, -0.040885,
		36.730297, 28.165993, 23.312225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.554199, 25.485304, 28.226366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629997, 25.877165, 28.252811>,  <35.675476, 26.112282, 28.268679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.629997, 25.877165, 28.252811>,  <35.554199, 25.485304, 28.226366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629997, 25.877165, 28.252811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278532, -0.010935, 0.960365,
		0.941548, -0.200396, 0.270793,
		0.189492, 0.979654, 0.066113,
		35.686844, 26.171061, 28.272646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982437, 25.568920, 28.863211>,  <35.554199, 25.485304, 28.226366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982437, 25.568920, 28.863211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851208, 25.943834, 28.816111>,  <35.772469, 26.168783, 28.787851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.851208, 25.943834, 28.816111>,  <35.982437, 25.568920, 28.863211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851208, 25.943834, 28.816111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002710, 0.125583, 0.992079,
		0.944647, 0.325159, -0.043741,
		-0.328077, 0.937283, -0.117751,
		35.752785, 26.225019, 28.780785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383259, 25.902874, 29.274229>,  <35.982437, 25.568920, 28.863211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383259, 25.902874, 29.274229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077396, 26.153517, 29.214022>,  <35.893879, 26.303904, 29.177896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077396, 26.153517, 29.214022>,  <36.383259, 25.902874, 29.274229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077396, 26.153517, 29.214022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007388, 0.225030, 0.974324,
		0.644391, 0.746139, -0.167442,
		-0.764661, 0.626608, -0.150520,
		35.848000, 26.341499, 29.168865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538818, 26.617266, 29.597330>,  <36.383259, 25.902874, 29.274229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538818, 26.617266, 29.597330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142456, 26.638597, 29.547924>,  <35.904636, 26.651398, 29.518280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142456, 26.638597, 29.547924>,  <36.538818, 26.617266, 29.597330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142456, 26.638597, 29.547924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089097, 0.427778, 0.899482,
		0.100808, 0.902309, -0.419137,
		-0.990908, 0.053331, -0.123516,
		35.845184, 26.654596, 29.510870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445747, 27.259991, 29.594126>,  <36.538818, 26.617266, 29.597330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445747, 27.259991, 29.594126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.088665, 27.103048, 29.682791>,  <35.874416, 27.008883, 29.735989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.088665, 27.103048, 29.682791>,  <36.445747, 27.259991, 29.594126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088665, 27.103048, 29.682791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051011, 0.576701, 0.815361,
		-0.447745, 0.716570, -0.534838,
		-0.892705, -0.392356, 0.221662,
		35.820854, 26.985342, 29.749289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056034, 27.820066, 29.624823>,  <36.445747, 27.259991, 29.594126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056034, 27.820066, 29.624823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900570, 27.524521, 29.845013>,  <35.807293, 27.347193, 29.977127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.900570, 27.524521, 29.845013>,  <36.056034, 27.820066, 29.624823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900570, 27.524521, 29.845013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071508, 0.571455, 0.817512,
		-0.918603, 0.357096, -0.169266,
		-0.388658, -0.738865, 0.550476,
		35.783974, 27.302862, 30.010155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346691, 28.024836, 29.931629>,  <36.056034, 27.820066, 29.624823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346691, 28.024836, 29.931629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510567, 27.746441, 30.167515>,  <35.608891, 27.579405, 30.309046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510567, 27.746441, 30.167515>,  <35.346691, 28.024836, 29.931629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510567, 27.746441, 30.167515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234555, 0.544351, 0.805398,
		-0.881557, -0.468279, 0.059765,
		0.409684, -0.695986, 0.589713,
		35.633472, 27.537645, 30.344429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772636, 27.904381, 30.456760>,  <35.346691, 28.024836, 29.931629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772636, 27.904381, 30.456760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141544, 27.794987, 30.566025>,  <35.362888, 27.729349, 30.631584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.141544, 27.794987, 30.566025>,  <34.772636, 27.904381, 30.456760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141544, 27.794987, 30.566025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089406, 0.536592, 0.839092,
		-0.376057, -0.798294, 0.470433,
		0.922273, -0.273487, 0.273161,
		35.418228, 27.712940, 30.647974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612602, 27.935701, 31.185625>,  <34.772636, 27.904381, 30.456760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612602, 27.935701, 31.185625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006367, 27.869244, 31.162550>,  <35.242626, 27.829369, 31.148705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006367, 27.869244, 31.162550>,  <34.612602, 27.935701, 31.185625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006367, 27.869244, 31.162550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131486, 0.477418, 0.868783,
		-0.116803, -0.862826, 0.491822,
		0.984413, -0.166144, -0.057686,
		35.301689, 27.819401, 31.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789642, 27.612101, 31.843155>,  <34.612602, 27.935701, 31.185625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789642, 27.612101, 31.843155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.140453, 27.736923, 31.697037>,  <35.350941, 27.811817, 31.609365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.140453, 27.736923, 31.697037>,  <34.789642, 27.612101, 31.843155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140453, 27.736923, 31.697037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289963, 0.262436, 0.920353,
		0.383070, -0.913098, 0.139678,
		0.877028, 0.312057, -0.365295,
		35.403561, 27.830540, 31.587448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304688, 27.227367, 32.150188>,  <34.789642, 27.612101, 31.843155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304688, 27.227367, 32.150188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.486900, 27.557543, 32.016838>,  <35.596230, 27.755648, 31.936827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.486900, 27.557543, 32.016838>,  <35.304688, 27.227367, 32.150188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486900, 27.557543, 32.016838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350170, 0.178157, 0.919587,
		0.818458, -0.535639, -0.207888,
		0.455531, 0.825440, -0.333379,
		35.623558, 27.805174, 31.916824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130585, 27.263292, 32.414314>,  <35.304688, 27.227367, 32.150188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130585, 27.263292, 32.414314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963978, 27.613527, 32.316444>,  <35.864014, 27.823668, 32.257721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.963978, 27.613527, 32.316444>,  <36.130585, 27.263292, 32.414314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963978, 27.613527, 32.316444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180444, 0.343395, 0.921694,
		0.891042, 0.339749, -0.301023,
		-0.416515, 0.875586, -0.244673,
		35.839024, 27.876204, 32.243042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534409, 27.547306, 32.842266>,  <36.130585, 27.263292, 32.414314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534409, 27.547306, 32.842266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234695, 27.789799, 32.735638>,  <36.054867, 27.935293, 32.671661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.234695, 27.789799, 32.735638>,  <36.534409, 27.547306, 32.842266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234695, 27.789799, 32.735638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083232, 0.485541, 0.870243,
		0.657001, 0.629869, -0.414265,
		-0.749281, 0.606230, -0.266576,
		36.009911, 27.971668, 32.655666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676334, 28.331490, 32.764683>,  <36.534409, 27.547306, 32.842266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676334, 28.331490, 32.764683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303150, 28.251905, 32.884682>,  <36.079239, 28.204155, 32.956680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303150, 28.251905, 32.884682>,  <36.676334, 28.331490, 32.764683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303150, 28.251905, 32.884682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139823, 0.567652, 0.811308,
		-0.331714, 0.798865, -0.501778,
		-0.932960, -0.198962, 0.299998,
		36.023262, 28.192217, 32.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788792, 29.006153, 33.038876>,  <36.676334, 28.331490, 32.764683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788792, 29.006153, 33.038876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866611, 29.242720, 33.351894>,  <36.913303, 29.384659, 33.539703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.866611, 29.242720, 33.351894>,  <36.788792, 29.006153, 33.038876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866611, 29.242720, 33.351894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706990, 0.468466, -0.529816,
		-0.679938, 0.656328, -0.326984,
		0.194552, 0.591416, 0.782545,
		36.924976, 29.420145, 33.586658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710632, 29.781576, 32.807522>,  <36.788792, 29.006153, 33.038876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710632, 29.781576, 32.807522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955452, 29.685795, 33.109001>,  <37.102345, 29.628326, 33.289886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.955452, 29.685795, 33.109001>,  <36.710632, 29.781576, 32.807522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955452, 29.685795, 33.109001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776179, 0.364421, -0.514533,
		-0.151457, 0.899922, 0.408902,
		0.612052, -0.239451, 0.753695,
		37.139069, 29.613960, 33.335110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087570, 30.418547, 33.021976>,  <36.710632, 29.781576, 32.807522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087570, 30.418547, 33.021976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308659, 30.097696, 33.112389>,  <37.441311, 29.905186, 33.166634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.308659, 30.097696, 33.112389>,  <37.087570, 30.418547, 33.021976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308659, 30.097696, 33.112389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685596, 0.283485, -0.670518,
		0.473764, 0.525577, 0.706624,
		0.552726, -0.802126, 0.226029,
		37.474476, 29.857059, 33.180199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646767, 30.639917, 32.917057>,  <37.087570, 30.418547, 33.021976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646767, 30.639917, 32.917057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.734375, 30.249828, 32.904625>,  <37.786942, 30.015774, 32.897163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.734375, 30.249828, 32.904625>,  <37.646767, 30.639917, 32.917057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734375, 30.249828, 32.904625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444343, 0.128054, -0.886657,
		0.868670, 0.180386, 0.461381,
		0.219023, -0.975224, -0.031083,
		37.800083, 29.957260, 32.895302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321255, 30.604345, 32.639484>,  <37.646767, 30.639917, 32.917057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321255, 30.604345, 32.639484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225967, 30.217194, 32.607338>,  <38.168797, 29.984901, 32.588051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225967, 30.217194, 32.607338>,  <38.321255, 30.604345, 32.639484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225967, 30.217194, 32.607338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542740, -0.064043, -0.837455,
		0.805410, -0.243117, 0.540564,
		-0.238219, -0.967881, -0.080368,
		38.154503, 29.926830, 32.583229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896202, 30.292690, 32.459869>,  <38.321255, 30.604345, 32.639484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896202, 30.292690, 32.459869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622673, 30.019644, 32.356777>,  <38.458557, 29.855816, 32.294922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.622673, 30.019644, 32.356777>,  <38.896202, 30.292690, 32.459869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622673, 30.019644, 32.356777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425950, -0.086674, -0.900585,
		0.592416, -0.725619, 0.350030,
		-0.683820, -0.682616, -0.257730,
		38.417526, 29.814859, 32.279457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254013, 29.597477, 32.354797>,  <38.896202, 30.292690, 32.459869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254013, 29.597477, 32.354797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908245, 29.627916, 32.156010>,  <38.700783, 29.646179, 32.036736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908245, 29.627916, 32.156010>,  <39.254013, 29.597477, 32.354797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908245, 29.627916, 32.156010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494082, -0.054322, -0.867717,
		-0.093030, -0.995619, 0.009357,
		-0.864424, 0.076100, -0.496971,
		38.648918, 29.650745, 32.006920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195084, 29.024496, 31.878788>,  <39.254013, 29.597477, 32.354797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195084, 29.024496, 31.878788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927128, 29.285469, 31.737036>,  <38.766354, 29.442053, 31.651983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.927128, 29.285469, 31.737036>,  <39.195084, 29.024496, 31.878788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927128, 29.285469, 31.737036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377086, -0.112194, -0.919358,
		-0.639576, -0.749498, -0.170865,
		-0.669887, 0.652431, -0.354382,
		38.726162, 29.481197, 31.630722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014759, 28.638968, 31.375650>,  <39.195084, 29.024496, 31.878788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014759, 28.638968, 31.375650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917110, 29.020288, 31.304522>,  <38.858521, 29.249081, 31.261845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.917110, 29.020288, 31.304522>,  <39.014759, 28.638968, 31.375650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917110, 29.020288, 31.304522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396804, -0.069119, -0.915297,
		-0.884844, -0.294009, -0.361399,
		-0.244126, 0.953300, -0.177824,
		38.843872, 29.306278, 31.251175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467567, 28.511017, 30.956289>,  <39.014759, 28.638968, 31.375650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467567, 28.511017, 30.956289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623035, 28.875610, 30.902430>,  <38.716316, 29.094366, 30.870113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623035, 28.875610, 30.902430>,  <38.467567, 28.511017, 30.956289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623035, 28.875610, 30.902430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127547, -0.197960, -0.971877,
		-0.912506, 0.360566, -0.193199,
		0.388671, 0.911485, -0.134650,
		38.739635, 29.149055, 30.862034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183628, 28.596622, 30.340767>,  <38.467567, 28.511017, 30.956289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183628, 28.596622, 30.340767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.460270, 28.884527, 30.364826>,  <38.626255, 29.057270, 30.379261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.460270, 28.884527, 30.364826>,  <38.183628, 28.596622, 30.340767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460270, 28.884527, 30.364826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218783, -0.129403, -0.967155,
		-0.688339, 0.682053, -0.246968,
		0.691609, 0.719763, 0.060148,
		38.667751, 29.100456, 30.382870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022171, 28.989286, 29.674431>,  <38.183628, 28.596622, 30.340767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022171, 28.989286, 29.674431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390446, 29.078062, 29.802856>,  <38.611412, 29.131327, 29.879911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390446, 29.078062, 29.802856>,  <38.022171, 28.989286, 29.674431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390446, 29.078062, 29.802856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355449, -0.136976, -0.924605,
		-0.161226, 0.965392, -0.204999,
		0.920686, 0.221937, 0.321063,
		38.666653, 29.144644, 29.899176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306408, 29.483759, 29.180597>,  <38.022171, 28.989286, 29.674431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306408, 29.483759, 29.180597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617214, 29.311260, 29.364019>,  <38.803699, 29.207762, 29.474072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.617214, 29.311260, 29.364019>,  <38.306408, 29.483759, 29.180597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617214, 29.311260, 29.364019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383852, -0.252746, -0.888131,
		0.498900, 0.866110, -0.030854,
		0.777017, -0.431246, 0.458553,
		38.850319, 29.181887, 29.501585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896912, 29.784082, 28.913902>,  <38.306408, 29.483759, 29.180597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896912, 29.784082, 28.913902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980492, 29.418457, 29.052946>,  <39.030640, 29.199081, 29.136372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.980492, 29.418457, 29.052946>,  <38.896912, 29.784082, 28.913902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980492, 29.418457, 29.052946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315178, -0.273544, -0.908755,
		0.925745, 0.299440, 0.230936,
		0.208947, -0.914062, 0.347609,
		39.043175, 29.144238, 29.157228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376839, 30.461147, 29.111265>,  <38.896912, 29.784082, 28.913902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376839, 30.461147, 29.111265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315292, 30.829439, 28.967833>,  <39.278362, 31.050415, 28.881773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.315292, 30.829439, 28.967833>,  <39.376839, 30.461147, 29.111265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315292, 30.829439, 28.967833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700357, 0.154368, 0.696900,
		0.697011, 0.358366, 0.621088,
		-0.153869, 0.920730, -0.358580,
		39.269131, 31.105658, 28.860258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462963, 30.917191, 29.697500>,  <39.376839, 30.461147, 29.111265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462963, 30.917191, 29.697500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232895, 31.101833, 29.427359>,  <39.094852, 31.212618, 29.265274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.232895, 31.101833, 29.427359>,  <39.462963, 30.917191, 29.697500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232895, 31.101833, 29.427359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688555, 0.172555, 0.704356,
		0.441670, 0.870141, 0.218593,
		-0.575169, 0.461606, -0.675352,
		39.060345, 31.240314, 29.224752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233788, 31.578081, 30.059935>,  <39.462963, 30.917191, 29.697500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233788, 31.578081, 30.059935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979317, 31.502213, 29.760788>,  <38.826633, 31.456692, 29.581301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.979317, 31.502213, 29.760788>,  <39.233788, 31.578081, 30.059935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979317, 31.502213, 29.760788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765797, 0.273310, 0.582115,
		0.093988, 0.943041, -0.319124,
		-0.636178, -0.189673, -0.747865,
		38.788464, 31.445311, 29.536428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774635, 32.128010, 30.174212>,  <39.233788, 31.578081, 30.059935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774635, 32.128010, 30.174212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606743, 31.875816, 29.913038>,  <38.506008, 31.724501, 29.756334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.606743, 31.875816, 29.913038>,  <38.774635, 32.128010, 30.174212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606743, 31.875816, 29.913038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898845, 0.188774, 0.395528,
		-0.126116, 0.752900, -0.645938,
		-0.419729, -0.630480, -0.652933,
		38.480824, 31.686672, 29.717157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197163, 32.405643, 29.688032>,  <38.774635, 32.128010, 30.174212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197163, 32.405643, 29.688032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.102711, 32.017174, 29.701059>,  <38.046040, 31.784092, 29.708876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.102711, 32.017174, 29.701059>,  <38.197163, 32.405643, 29.688032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102711, 32.017174, 29.701059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833611, 0.219674, 0.506789,
		-0.499335, 0.092519, -0.861455,
		-0.236127, -0.971176, 0.032566,
		38.031872, 31.725821, 29.710829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532310, 32.411037, 29.649157>,  <38.197163, 32.405643, 29.688032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532310, 32.411037, 29.649157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582607, 32.044064, 29.800154>,  <37.612785, 31.823879, 29.890751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.582607, 32.044064, 29.800154>,  <37.532310, 32.411037, 29.649157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582607, 32.044064, 29.800154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875865, 0.076032, 0.476528,
		-0.465886, -0.390549, -0.793991,
		0.125739, -0.917437, 0.377490,
		37.620327, 31.768833, 29.913401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849297, 32.140827, 29.720079>,  <37.532310, 32.411037, 29.649157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849297, 32.140827, 29.720079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071590, 31.882195, 29.929111>,  <37.204967, 31.727015, 30.054531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071590, 31.882195, 29.929111>,  <36.849297, 32.140827, 29.720079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071590, 31.882195, 29.929111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648852, 0.055650, 0.758877,
		-0.519756, -0.760814, -0.388607,
		0.555739, -0.646579, 0.522580,
		37.238312, 31.688221, 30.085886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494411, 31.581139, 29.888369>,  <36.849297, 32.140827, 29.720079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494411, 31.581139, 29.888369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774258, 31.646877, 30.166515>,  <36.942165, 31.686321, 30.333403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.774258, 31.646877, 30.166515>,  <36.494411, 31.581139, 29.888369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774258, 31.646877, 30.166515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709550, 0.045179, 0.703205,
		0.084162, -0.985365, 0.148229,
		0.699611, 0.164358, 0.695364,
		36.984142, 31.696182, 30.375126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301594, 31.317703, 30.476967>,  <36.494411, 31.581139, 29.888369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301594, 31.317703, 30.476967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568851, 31.578787, 30.619831>,  <36.729206, 31.735437, 30.705549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568851, 31.578787, 30.619831>,  <36.301594, 31.317703, 30.476967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568851, 31.578787, 30.619831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564843, 0.132513, 0.814489,
		0.484295, -0.745931, 0.457215,
		0.668139, 0.652708, 0.357158,
		36.769295, 31.774599, 30.726978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373516, 31.246990, 31.164116>,  <36.301594, 31.317703, 30.476967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373516, 31.246990, 31.164116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.534950, 31.612913, 31.170464>,  <36.631809, 31.832466, 31.174273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.534950, 31.612913, 31.170464>,  <36.373516, 31.246990, 31.164116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534950, 31.612913, 31.170464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490505, 0.201690, 0.847777,
		0.772351, -0.349931, 0.530115,
		0.403582, 0.914806, 0.015868,
		36.656025, 31.887356, 31.175224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317127, 31.329138, 31.797575>,  <36.373516, 31.246990, 31.164116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317127, 31.329138, 31.797575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344471, 31.696913, 31.642677>,  <36.360878, 31.917578, 31.549738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344471, 31.696913, 31.642677>,  <36.317127, 31.329138, 31.797575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344471, 31.696913, 31.642677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589483, 0.350376, 0.727838,
		0.804883, 0.178517, 0.565946,
		0.068363, 0.919440, -0.387244,
		36.364979, 31.972744, 31.526505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430256, 31.805225, 32.394958>,  <36.317127, 31.329138, 31.797575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430256, 31.805225, 32.394958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310974, 32.064228, 32.114441>,  <36.239407, 32.219631, 31.946131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310974, 32.064228, 32.114441>,  <36.430256, 31.805225, 32.394958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310974, 32.064228, 32.114441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447779, 0.553958, 0.701872,
		0.842953, 0.523324, 0.124749,
		-0.298201, 0.647505, -0.701294,
		36.221516, 32.258480, 31.904053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.313576, 31.179638, 26.842810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043995, 31.275602, 26.563314>,  <41.882248, 31.333181, 26.395617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043995, 31.275602, 26.563314>,  <42.313576, 31.179638, 26.842810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043995, 31.275602, 26.563314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645906, 0.267754, 0.714921,
		0.358606, 0.933141, -0.025494,
		-0.673948, 0.239909, -0.698740,
		41.841812, 31.347574, 26.353693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027004, 31.830547, 27.058819>,  <42.313576, 31.179638, 26.842810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027004, 31.830547, 27.058819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752682, 31.665531, 26.818991>,  <41.588089, 31.566523, 26.675095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752682, 31.665531, 26.818991>,  <42.027004, 31.830547, 27.058819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752682, 31.665531, 26.818991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709874, 0.197528, 0.676063,
		-0.160470, 0.889266, -0.428316,
		-0.685804, -0.412538, -0.599570,
		41.546940, 31.541769, 26.639120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415504, 32.366779, 27.019695>,  <42.027004, 31.830547, 27.058819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415504, 32.366779, 27.019695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271549, 32.004383, 26.930559>,  <41.185177, 31.786945, 26.877077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271549, 32.004383, 26.930559>,  <41.415504, 32.366779, 27.019695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271549, 32.004383, 26.930559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788779, 0.167894, 0.591303,
		-0.498302, 0.388577, -0.775051,
		-0.359893, -0.905991, -0.222839,
		41.163582, 31.732586, 26.863707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727062, 32.439404, 27.119755>,  <41.415504, 32.366779, 27.019695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727062, 32.439404, 27.119755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758987, 32.041740, 27.090675>,  <40.778145, 31.803143, 27.073227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758987, 32.041740, 27.090675>,  <40.727062, 32.439404, 27.119755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758987, 32.041740, 27.090675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809758, -0.107197, 0.576889,
		-0.581311, 0.012825, -0.813581,
		0.079815, -0.994155, -0.072700,
		40.782932, 31.743494, 27.068865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133526, 32.203365, 26.978243>,  <40.727062, 32.439404, 27.119755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133526, 32.203365, 26.978243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309025, 31.877802, 27.130585>,  <40.414326, 31.682463, 27.221991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309025, 31.877802, 27.130585>,  <40.133526, 32.203365, 26.978243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309025, 31.877802, 27.130585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807707, -0.171441, 0.564108,
		-0.393839, -0.555120, -0.732620,
		0.438748, -0.813910, 0.380854,
		40.440651, 31.633629, 27.244841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623638, 31.730755, 27.076654>,  <40.133526, 32.203365, 26.978243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623638, 31.730755, 27.076654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912067, 31.576950, 27.307201>,  <40.085125, 31.484667, 27.445530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912067, 31.576950, 27.307201>,  <39.623638, 31.730755, 27.076654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912067, 31.576950, 27.307201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684796, -0.269009, 0.677266,
		-0.105367, -0.883055, -0.457287,
		0.721077, -0.384510, 0.576367,
		40.128391, 31.461597, 27.480112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360809, 31.108376, 27.273724>,  <39.623638, 31.730755, 27.076654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360809, 31.108376, 27.273724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647152, 31.164856, 27.547253>,  <39.818958, 31.198744, 27.711370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647152, 31.164856, 27.547253>,  <39.360809, 31.108376, 27.273724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647152, 31.164856, 27.547253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659736, -0.183972, 0.728630,
		0.228687, -0.972737, -0.038542,
		0.715856, 0.141201, 0.683822,
		39.861908, 31.207216, 27.752399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198624, 30.581245, 27.770302>,  <39.360809, 31.108376, 27.273724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198624, 30.581245, 27.770302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436672, 30.857048, 27.935429>,  <39.579502, 31.022530, 28.034504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436672, 30.857048, 27.935429>,  <39.198624, 30.581245, 27.770302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436672, 30.857048, 27.935429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526805, -0.053209, 0.848319,
		0.606888, -0.722322, 0.331570,
		0.595117, 0.689507, 0.412815,
		39.615208, 31.063900, 28.059273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363426, 30.356033, 28.401520>,  <39.198624, 30.581245, 27.770302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363426, 30.356033, 28.401520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423969, 30.750292, 28.431437>,  <39.460297, 30.986847, 28.449387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423969, 30.750292, 28.431437>,  <39.363426, 30.356033, 28.401520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423969, 30.750292, 28.431437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550215, 0.021152, 0.834755,
		0.821190, -0.167500, 0.545518,
		0.151361, 0.985645, 0.074791,
		39.469376, 31.045986, 28.453875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528061, 29.583561, 28.421574>,  <39.363426, 30.356033, 28.401520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528061, 29.583561, 28.421574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390987, 29.256516, 28.606646>,  <39.308743, 29.060287, 28.717690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390987, 29.256516, 28.606646>,  <39.528061, 29.583561, 28.421574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390987, 29.256516, 28.606646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367575, -0.569930, -0.734894,
		0.864556, -0.081765, 0.495840,
		-0.342683, -0.817615, 0.462681,
		39.288181, 29.011230, 28.745449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042507, 29.110275, 28.383890>,  <39.528061, 29.583561, 28.421574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042507, 29.110275, 28.383890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717518, 28.884157, 28.440918>,  <39.522522, 28.748487, 28.475136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717518, 28.884157, 28.440918>,  <40.042507, 29.110275, 28.383890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717518, 28.884157, 28.440918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250683, -0.559537, -0.789985,
		0.526347, -0.606104, 0.596319,
		-0.812476, -0.565294, 0.142571,
		39.473774, 28.714569, 28.483688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300434, 28.415913, 28.524649>,  <40.042507, 29.110275, 28.383890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300434, 28.415913, 28.524649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945763, 28.384474, 28.342382>,  <39.732960, 28.365610, 28.233023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945763, 28.384474, 28.342382>,  <40.300434, 28.415913, 28.524649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945763, 28.384474, 28.342382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427467, -0.515041, -0.742970,
		-0.176291, -0.853555, 0.490271,
		-0.886675, -0.078596, -0.455664,
		39.679760, 28.360895, 28.205683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207809, 27.723280, 28.275820>,  <40.300434, 28.415913, 28.524649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207809, 27.723280, 28.275820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926785, 27.929512, 28.079624>,  <39.758167, 28.053251, 27.961906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926785, 27.929512, 28.079624>,  <40.207809, 27.723280, 28.275820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926785, 27.929512, 28.079624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239512, -0.477721, -0.845232,
		-0.670103, -0.711308, 0.212141,
		-0.702564, 0.515582, -0.490489,
		39.716015, 28.084187, 27.932478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036507, 27.267635, 27.731222>,  <40.207809, 27.723280, 28.275820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036507, 27.267635, 27.731222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860580, 27.601067, 27.597530>,  <39.755024, 27.801126, 27.517315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860580, 27.601067, 27.597530>,  <40.036507, 27.267635, 27.731222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860580, 27.601067, 27.597530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017421, -0.380006, -0.924820,
		-0.897921, -0.400924, 0.181653,
		-0.439812, 0.833580, -0.334231,
		39.728638, 27.851141, 27.497261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488163, 27.086115, 27.234383>,  <40.036507, 27.267635, 27.731222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488163, 27.086115, 27.234383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600773, 27.462744, 27.160429>,  <39.668339, 27.688721, 27.116056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600773, 27.462744, 27.160429>,  <39.488163, 27.086115, 27.234383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600773, 27.462744, 27.160429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135041, -0.229636, -0.963863,
		-0.950004, 0.246384, -0.191800,
		0.281525, 0.941574, -0.184883,
		39.685230, 27.745216, 27.104963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199890, 27.381159, 26.604113>,  <39.488163, 27.086115, 27.234383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199890, 27.381159, 26.604113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518204, 27.616978, 26.659487>,  <39.709190, 27.758469, 26.692711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518204, 27.616978, 26.659487>,  <39.199890, 27.381159, 26.604113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518204, 27.616978, 26.659487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251355, -0.113577, -0.961208,
		-0.550957, 0.799707, -0.238569,
		0.795781, 0.589549, 0.138434,
		39.756939, 27.793842, 26.701017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309345, 27.736027, 25.963436>,  <39.199890, 27.381159, 26.604113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309345, 27.736027, 25.963436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656403, 27.810127, 26.147993>,  <39.864635, 27.854588, 26.258726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656403, 27.810127, 26.147993>,  <39.309345, 27.736027, 25.963436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656403, 27.810127, 26.147993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476780, -0.046842, -0.877773,
		-0.140998, 0.981574, -0.128967,
		0.867640, 0.185253, 0.461390,
		39.916695, 27.865704, 26.286409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621601, 28.187439, 25.536787>,  <39.309345, 27.736027, 25.963436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621601, 28.187439, 25.536787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934788, 28.077221, 25.759869>,  <40.122700, 28.011089, 25.893717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934788, 28.077221, 25.759869>,  <39.621601, 28.187439, 25.536787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934788, 28.077221, 25.759869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563955, -0.063918, -0.823328,
		0.262512, 0.959160, 0.105350,
		0.782970, -0.275547, 0.557703,
		40.169678, 27.994556, 25.927179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255978, 28.581005, 25.298666>,  <39.621601, 28.187439, 25.536787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255978, 28.581005, 25.298666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394581, 28.248491, 25.472515>,  <40.477741, 28.048983, 25.576824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394581, 28.248491, 25.472515>,  <40.255978, 28.581005, 25.298666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394581, 28.248491, 25.472515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665679, -0.108534, -0.738304,
		0.660912, 0.545148, 0.515761,
		0.346507, -0.831285, 0.434625,
		40.498531, 27.999105, 25.602903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045383, 28.672235, 25.186859>,  <40.255978, 28.581005, 25.298666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045383, 28.672235, 25.186859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926987, 28.297775, 25.262762>,  <40.855949, 28.073099, 25.308304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926987, 28.297775, 25.262762>,  <41.045383, 28.672235, 25.186859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926987, 28.297775, 25.262762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434072, -0.308791, -0.846304,
		0.850865, -0.168129, 0.497757,
		-0.295991, -0.936152, 0.189759,
		40.838188, 28.016930, 25.319689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683136, 28.344030, 25.127857>,  <41.045383, 28.672235, 25.186859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683136, 28.344030, 25.127857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408638, 28.055241, 25.092463>,  <41.243938, 27.881968, 25.071226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408638, 28.055241, 25.092463>,  <41.683136, 28.344030, 25.127857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408638, 28.055241, 25.092463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503050, -0.383211, -0.774654,
		0.525370, -0.576112, 0.626163,
		-0.686241, -0.721972, -0.088486,
		41.202766, 27.838650, 25.065916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085667, 27.741230, 25.000866>,  <41.683136, 28.344030, 25.127857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085667, 27.741230, 25.000866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717274, 27.657539, 24.869398>,  <41.496239, 27.607325, 24.790518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717274, 27.657539, 24.869398>,  <42.085667, 27.741230, 25.000866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717274, 27.657539, 24.869398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385680, -0.369994, -0.845195,
		0.055233, -0.905167, 0.421452,
		-0.920977, -0.209228, -0.328669,
		41.440979, 27.594770, 24.770798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055119, 27.094688, 24.634077>,  <42.085667, 27.741230, 25.000866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055119, 27.094688, 24.634077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736893, 27.296656, 24.500130>,  <41.545959, 27.417835, 24.419762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736893, 27.296656, 24.500130>,  <42.055119, 27.094688, 24.634077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736893, 27.296656, 24.500130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193257, -0.312354, -0.930100,
		-0.574223, -0.804669, 0.150918,
		-0.795563, 0.504919, -0.334869,
		41.498222, 27.448132, 24.399670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.352257, 30.888893, 20.834833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636555, 30.895941, 21.116123>,  <36.807133, 30.900169, 21.284897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636555, 30.895941, 21.116123>,  <36.352257, 30.888893, 20.834833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636555, 30.895941, 21.116123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675688, -0.260949, 0.689457,
		0.195654, -0.965192, -0.173563,
		0.710750, 0.017620, 0.703225,
		36.849781, 30.901226, 21.327091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278843, 30.261868, 21.278955>,  <36.352257, 30.888893, 20.834833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278843, 30.261868, 21.278955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471806, 30.532841, 21.501080>,  <36.587582, 30.695425, 21.634354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471806, 30.532841, 21.501080>,  <36.278843, 30.261868, 21.278955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471806, 30.532841, 21.501080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586316, -0.221274, 0.779276,
		0.650784, -0.701514, 0.290446,
		0.482404, 0.677434, 0.555310,
		36.616528, 30.736071, 21.667673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291546, 30.002934, 21.966936>,  <36.278843, 30.261868, 21.278955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291546, 30.002934, 21.966936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388351, 30.383444, 22.043354>,  <36.446434, 30.611750, 22.089205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388351, 30.383444, 22.043354>,  <36.291546, 30.002934, 21.966936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388351, 30.383444, 22.043354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464068, -0.059427, 0.883804,
		0.852096, -0.302553, 0.427075,
		0.242018, 0.951278, 0.191043,
		36.460957, 30.668827, 22.100666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462254, 30.085417, 22.712210>,  <36.291546, 30.002934, 21.966936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462254, 30.085417, 22.712210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381821, 30.458071, 22.591133>,  <36.333561, 30.681664, 22.518488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381821, 30.458071, 22.591133>,  <36.462254, 30.085417, 22.712210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381821, 30.458071, 22.591133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386725, 0.208403, 0.898338,
		0.900005, 0.297698, 0.318380,
		-0.201083, 0.931635, -0.302691,
		36.321495, 30.737562, 22.500326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685291, 30.560570, 23.319952>,  <36.462254, 30.085417, 22.712210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685291, 30.560570, 23.319952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476955, 30.807199, 23.083794>,  <36.351955, 30.955177, 22.942099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.476955, 30.807199, 23.083794>,  <36.685291, 30.560570, 23.319952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476955, 30.807199, 23.083794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423064, 0.414266, 0.805854,
		0.741449, 0.669493, 0.045085,
		-0.520836, 0.616573, -0.590396,
		36.320705, 30.992172, 22.906675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921299, 31.239677, 23.518148>,  <36.685291, 30.560570, 23.319952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921299, 31.239677, 23.518148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555279, 31.210642, 23.359446>,  <36.335667, 31.193220, 23.264225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555279, 31.210642, 23.359446>,  <36.921299, 31.239677, 23.518148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555279, 31.210642, 23.359446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391781, 0.393782, 0.831531,
		0.095874, 0.916333, -0.388770,
		-0.915050, -0.072591, -0.396755,
		36.280766, 31.188864, 23.240419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669479, 31.916309, 23.591057>,  <36.921299, 31.239677, 23.518148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669479, 31.916309, 23.591057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347000, 31.702356, 23.489906>,  <36.153515, 31.573984, 23.429216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347000, 31.702356, 23.489906>,  <36.669479, 31.916309, 23.591057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347000, 31.702356, 23.489906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546207, 0.508603, 0.665568,
		-0.227389, 0.674701, -0.702191,
		-0.806196, -0.534885, -0.252877,
		36.105141, 31.541891, 23.414043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124676, 32.332066, 23.770880>,  <36.669479, 31.916309, 23.591057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124676, 32.332066, 23.770880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875755, 32.025204, 23.708641>,  <35.726402, 31.841085, 23.671297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.875755, 32.025204, 23.708641>,  <36.124676, 32.332066, 23.770880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875755, 32.025204, 23.708641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656925, 0.403737, 0.636746,
		-0.425663, 0.498465, -0.755211,
		-0.622302, -0.767156, -0.155598,
		35.689064, 31.795057, 23.661963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291569, 32.536316, 23.644918>,  <36.124676, 32.332066, 23.770880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291569, 32.536316, 23.644918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325760, 32.162632, 23.783447>,  <35.346275, 31.938421, 23.866566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325760, 32.162632, 23.783447>,  <35.291569, 32.536316, 23.644918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325760, 32.162632, 23.783447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699933, 0.191075, 0.688175,
		-0.709076, -0.301224, -0.637554,
		0.085474, -0.934213, 0.346323,
		35.351402, 31.882368, 23.887344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604240, 32.185066, 23.683260>,  <35.291569, 32.536316, 23.644918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604240, 32.185066, 23.683260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854149, 32.028332, 23.953409>,  <35.004093, 31.934292, 24.115498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.854149, 32.028332, 23.953409>,  <34.604240, 32.185066, 23.683260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854149, 32.028332, 23.953409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657597, 0.202305, 0.725700,
		-0.420985, -0.897518, -0.131275,
		0.624771, -0.391835, 0.675372,
		35.041580, 31.910782, 24.156021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192291, 32.001812, 24.129677>,  <34.604240, 32.185066, 23.683260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192291, 32.001812, 24.129677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.535351, 31.972172, 24.333225>,  <34.741188, 31.954388, 24.455355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.535351, 31.972172, 24.333225>,  <34.192291, 32.001812, 24.129677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535351, 31.972172, 24.333225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513281, -0.063009, 0.855904,
		-0.031341, -0.995260, -0.092064,
		0.857648, -0.074080, 0.508874,
		34.792645, 31.949944, 24.485888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104778, 31.486185, 24.584534>,  <34.192291, 32.001812, 24.129677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104778, 31.486185, 24.584534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.425476, 31.648983, 24.759604>,  <34.617897, 31.746662, 24.864645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.425476, 31.648983, 24.759604>,  <34.104778, 31.486185, 24.584534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425476, 31.648983, 24.759604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455151, -0.058831, 0.888469,
		0.387350, -0.911534, 0.138076,
		0.801747, 0.406994, 0.437674,
		34.666000, 31.771080, 24.890905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347820, 31.052210, 25.177460>,  <34.104778, 31.486185, 24.584534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347820, 31.052210, 25.177460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469913, 31.427635, 25.241877>,  <34.543171, 31.652889, 25.280527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469913, 31.427635, 25.241877>,  <34.347820, 31.052210, 25.177460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469913, 31.427635, 25.241877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420560, -0.018866, 0.907069,
		0.854378, -0.344596, 0.388963,
		0.305234, 0.938561, 0.161042,
		34.561485, 31.709204, 25.290190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611156, 31.065298, 25.751577>,  <34.347820, 31.052210, 25.177460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611156, 31.065298, 25.751577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528992, 31.453184, 25.698729>,  <34.479694, 31.685917, 25.667019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528992, 31.453184, 25.698729>,  <34.611156, 31.065298, 25.751577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528992, 31.453184, 25.698729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473540, 0.019666, 0.880553,
		0.856485, 0.243439, 0.455160,
		-0.205410, 0.969717, -0.132122,
		34.467369, 31.744099, 25.659092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104706, 30.674622, 26.246403>,  <34.611156, 31.065298, 25.751577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104706, 30.674622, 26.246403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017807, 30.302261, 26.363863>,  <34.965668, 30.078846, 26.434340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.017807, 30.302261, 26.363863>,  <35.104706, 30.674622, 26.246403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017807, 30.302261, 26.363863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304440, -0.350449, -0.885721,
		0.927427, -0.103021, 0.359537,
		-0.217247, -0.930899, 0.293652,
		34.952633, 30.022991, 26.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749382, 30.296059, 26.269320>,  <35.104706, 30.674622, 26.246403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749382, 30.296059, 26.269320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441250, 30.045675, 26.220699>,  <35.256371, 29.895445, 26.191526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441250, 30.045675, 26.220699>,  <35.749382, 30.296059, 26.269320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441250, 30.045675, 26.220699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519352, -0.505310, -0.689156,
		0.369962, -0.594002, 0.714346,
		-0.770326, -0.625958, -0.121550,
		35.210152, 29.857887, 26.184235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017498, 29.546692, 26.341400>,  <35.749382, 30.296059, 26.269320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017498, 29.546692, 26.341400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670124, 29.547636, 26.143080>,  <35.461700, 29.548203, 26.024088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670124, 29.547636, 26.143080>,  <36.017498, 29.546692, 26.341400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670124, 29.547636, 26.143080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440557, -0.455063, -0.773839,
		-0.227446, -0.890456, 0.394153,
		-0.868434, 0.002359, -0.495799,
		35.409595, 29.548344, 25.994341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823391, 28.742414, 26.206329>,  <36.017498, 29.546692, 26.341400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823391, 28.742414, 26.206329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635994, 28.973431, 25.938908>,  <35.523556, 29.112040, 25.778456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635994, 28.973431, 25.938908>,  <35.823391, 28.742414, 26.206329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635994, 28.973431, 25.938908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470398, -0.477483, -0.742116,
		-0.747823, -0.662162, -0.047975,
		-0.468494, 0.577539, -0.668552,
		35.495445, 29.146692, 25.738342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680630, 28.298870, 25.639956>,  <35.823391, 28.742414, 26.206329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680630, 28.298870, 25.639956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.633556, 28.664223, 25.484068>,  <35.605312, 28.883434, 25.390535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.633556, 28.664223, 25.484068>,  <35.680630, 28.298870, 25.639956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633556, 28.664223, 25.484068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427363, -0.307662, -0.850121,
		-0.896388, -0.266597, -0.354139,
		-0.117685, 0.913384, -0.389718,
		35.598251, 28.938238, 25.367153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299492, 28.193729, 25.080364>,  <35.680630, 28.298870, 25.639956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299492, 28.193729, 25.080364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495598, 28.538506, 25.028671>,  <35.613262, 28.745371, 24.997656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.495598, 28.538506, 25.028671>,  <35.299492, 28.193729, 25.080364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495598, 28.538506, 25.028671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470234, -0.386424, -0.793445,
		-0.733842, 0.328227, -0.594763,
		0.490261, 0.861942, -0.129231,
		35.642677, 28.797089, 24.989902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236244, 28.369347, 24.364441>,  <35.299492, 28.193729, 25.080364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236244, 28.369347, 24.364441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535103, 28.605680, 24.486221>,  <35.714417, 28.747480, 24.559290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535103, 28.605680, 24.486221>,  <35.236244, 28.369347, 24.364441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535103, 28.605680, 24.486221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515641, -0.226226, -0.826399,
		-0.419392, 0.774426, -0.473682,
		0.747144, 0.590835, 0.304449,
		35.759247, 28.782930, 24.577557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356171, 28.666624, 23.771671>,  <35.236244, 28.369347, 24.364441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356171, 28.666624, 23.771671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689167, 28.732338, 23.983320>,  <35.888966, 28.771767, 24.110310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689167, 28.732338, 23.983320>,  <35.356171, 28.666624, 23.771671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689167, 28.732338, 23.983320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532726, 0.024973, -0.845919,
		-0.152185, 0.986097, -0.066728,
		0.832492, 0.164284, 0.529120,
		35.938915, 28.781624, 24.142056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674088, 29.199404, 23.390200>,  <35.356171, 28.666624, 23.771671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674088, 29.199404, 23.390200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939735, 28.992088, 23.605726>,  <36.099125, 28.867699, 23.735043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.939735, 28.992088, 23.605726>,  <35.674088, 29.199404, 23.390200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939735, 28.992088, 23.605726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626430, -0.007622, -0.779440,
		0.408081, 0.855172, 0.319609,
		0.664120, -0.518288, 0.538816,
		36.138973, 28.836601, 23.767370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294930, 29.409309, 23.114563>,  <35.674088, 29.199404, 23.390200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294930, 29.409309, 23.114563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383011, 29.069735, 23.306736>,  <36.435860, 28.865990, 23.422041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383011, 29.069735, 23.306736>,  <36.294930, 29.409309, 23.114563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383011, 29.069735, 23.306736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666932, -0.228388, -0.709253,
		0.711836, 0.476598, 0.515891,
		0.220206, -0.848936, 0.480434,
		36.449074, 28.815054, 23.450867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020111, 29.399273, 23.278963>,  <36.294930, 29.409309, 23.114563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020111, 29.399273, 23.278963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891933, 29.022552, 23.238323>,  <36.815025, 28.796520, 23.213940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.891933, 29.022552, 23.238323>,  <37.020111, 29.399273, 23.278963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891933, 29.022552, 23.238323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712500, -0.168961, -0.681025,
		0.624225, -0.290622, 0.725177,
		-0.320448, -0.941802, -0.101599,
		36.795799, 28.740011, 23.207844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658039, 29.094725, 23.281134>,  <37.020111, 29.399273, 23.278963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658039, 29.094725, 23.281134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406437, 28.830627, 23.116970>,  <37.255474, 28.672169, 23.018473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.406437, 28.830627, 23.116970>,  <37.658039, 29.094725, 23.281134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406437, 28.830627, 23.116970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688561, -0.228091, -0.688374,
		0.360883, -0.715581, 0.598087,
		-0.629005, -0.660242, -0.410407,
		37.217735, 28.632555, 22.993849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088112, 28.671530, 23.127821>,  <37.658039, 29.094725, 23.281134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088112, 28.671530, 23.127821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768333, 28.572727, 22.908777>,  <37.576466, 28.513445, 22.777351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768333, 28.572727, 22.908777>,  <38.088112, 28.671530, 23.127821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768333, 28.572727, 22.908777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596340, -0.216169, -0.773078,
		0.072580, -0.944594, 0.320116,
		-0.799444, -0.247008, -0.547610,
		37.528500, 28.498625, 22.744493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320206, 28.104784, 22.681868>,  <38.088112, 28.671530, 23.127821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320206, 28.104784, 22.681868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988548, 28.243099, 22.506159>,  <37.789555, 28.326088, 22.400734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988548, 28.243099, 22.506159>,  <38.320206, 28.104784, 22.681868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988548, 28.243099, 22.506159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432006, -0.102402, -0.896038,
		-0.354822, -0.932708, -0.064477,
		-0.829139, 0.345788, -0.439270,
		37.739807, 28.346836, 22.374378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987095, 27.390867, 22.949650>,  <38.320206, 28.104784, 22.681868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987095, 27.390867, 22.949650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196255, 27.084433, 23.099150>,  <38.321751, 26.900572, 23.188850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.196255, 27.084433, 23.099150>,  <37.987095, 27.390867, 22.949650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196255, 27.084433, 23.099150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572898, 0.008815, 0.819579,
		-0.631164, -0.642676, -0.434280,
		0.522896, -0.766087, 0.373751,
		38.353123, 26.854607, 23.211275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460747, 26.898407, 23.238150>,  <37.987095, 27.390867, 22.949650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460747, 26.898407, 23.238150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799160, 26.797886, 23.426224>,  <38.002209, 26.737574, 23.539068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799160, 26.797886, 23.426224>,  <37.460747, 26.898407, 23.238150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799160, 26.797886, 23.426224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504522, -0.092373, 0.858443,
		-0.172302, -0.963489, -0.204942,
		0.846032, -0.251309, 0.470185,
		38.052971, 26.722494, 23.567280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307533, 26.295822, 23.564671>,  <37.460747, 26.898407, 23.238150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307533, 26.295822, 23.564671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618244, 26.449869, 23.763987>,  <37.804672, 26.542297, 23.883577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.618244, 26.449869, 23.763987>,  <37.307533, 26.295822, 23.564671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618244, 26.449869, 23.763987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497331, -0.110287, 0.860522,
		0.386358, -0.916253, 0.105863,
		0.776781, 0.385119, 0.498292,
		37.851280, 26.565405, 23.913475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365524, 25.927698, 24.101686>,  <37.307533, 26.295822, 23.564671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365524, 25.927698, 24.101686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587425, 26.235378, 24.228544>,  <37.720566, 26.419987, 24.304659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.587425, 26.235378, 24.228544>,  <37.365524, 25.927698, 24.101686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587425, 26.235378, 24.228544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357426, -0.123888, 0.925688,
		0.751332, -0.626881, 0.206206,
		0.554750, 0.769202, 0.317144,
		37.753849, 26.466139, 24.323689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584358, 25.674320, 24.718208>,  <37.365524, 25.927698, 24.101686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584358, 25.674320, 24.718208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654919, 26.067686, 24.735088>,  <37.697254, 26.303705, 24.745216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654919, 26.067686, 24.735088>,  <37.584358, 25.674320, 24.718208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654919, 26.067686, 24.735088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457586, 0.043972, 0.888077,
		0.871492, -0.175967, 0.457753,
		0.176400, 0.983414, 0.042199,
		37.707840, 26.362711, 24.747747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898026, 25.839355, 25.331055>,  <37.584358, 25.674320, 24.718208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898026, 25.839355, 25.331055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704456, 26.168200, 25.211088>,  <37.588314, 26.365507, 25.139109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.704456, 26.168200, 25.211088>,  <37.898026, 25.839355, 25.331055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704456, 26.168200, 25.211088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326922, 0.148073, 0.933379,
		0.811752, 0.549733, 0.197111,
		-0.483923, 0.822112, -0.299918,
		37.559280, 26.414833, 25.121113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052246, 26.317350, 25.964348>,  <37.898026, 25.839355, 25.331055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052246, 26.317350, 25.964348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730339, 26.444969, 25.764126>,  <37.537193, 26.521540, 25.643993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.730339, 26.444969, 25.764126>,  <38.052246, 26.317350, 25.964348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730339, 26.444969, 25.764126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468638, 0.176050, 0.865670,
		0.364311, 0.931244, 0.007838,
		-0.804771, 0.319046, -0.500554,
		37.488907, 26.540684, 25.613960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834709, 26.793787, 26.293306>,  <38.052246, 26.317350, 25.964348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834709, 26.793787, 26.293306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508190, 26.728048, 26.071806>,  <37.312279, 26.688604, 25.938906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.508190, 26.728048, 26.071806>,  <37.834709, 26.793787, 26.293306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508190, 26.728048, 26.071806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575161, 0.142815, 0.805477,
		-0.053294, 0.976009, -0.211106,
		-0.816302, -0.164347, -0.553751,
		37.263298, 26.678743, 25.905680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462856, 27.390318, 26.357090>,  <37.834709, 26.793787, 26.293306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462856, 27.390318, 26.357090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240639, 27.069424, 26.269648>,  <37.107307, 26.876886, 26.217182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.240639, 27.069424, 26.269648>,  <37.462856, 27.390318, 26.357090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240639, 27.069424, 26.269648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592731, 0.197708, 0.780757,
		-0.583132, 0.563318, -0.585346,
		-0.555542, -0.802237, -0.218606,
		37.073975, 26.828753, 26.204065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789463, 27.520620, 26.672758>,  <37.462856, 27.390318, 26.357090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789463, 27.520620, 26.672758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751041, 27.128506, 26.603697>,  <36.727989, 26.893236, 26.562260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751041, 27.128506, 26.603697>,  <36.789463, 27.520620, 26.672758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751041, 27.128506, 26.603697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595117, -0.082481, 0.799395,
		-0.797878, 0.179532, -0.575464,
		-0.096053, -0.980288, -0.172653,
		36.722225, 26.834419, 26.551901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108978, 27.412701, 26.606382>,  <36.789463, 27.520620, 26.672758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108978, 27.412701, 26.606382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274651, 27.061197, 26.701242>,  <36.374054, 26.850296, 26.758158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.274651, 27.061197, 26.701242>,  <36.108978, 27.412701, 26.606382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274651, 27.061197, 26.701242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676357, -0.122786, 0.726267,
		-0.609094, -0.461204, -0.645209,
		0.414180, -0.878757, 0.237151,
		36.398903, 26.797569, 26.772388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546730, 26.991425, 26.764284>,  <36.108978, 27.412701, 26.606382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546730, 26.991425, 26.764284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847157, 26.811529, 26.957628>,  <36.027412, 26.703592, 27.073635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.847157, 26.811529, 26.957628>,  <35.546730, 26.991425, 26.764284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847157, 26.811529, 26.957628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613685, -0.205530, 0.762331,
		-0.243507, -0.869189, -0.430366,
		0.751063, -0.449742, 0.483360,
		36.072475, 26.676607, 27.102636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215954, 26.393343, 27.140379>,  <35.546730, 26.991425, 26.764284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215954, 26.393343, 27.140379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576687, 26.400358, 27.313074>,  <35.793125, 26.404568, 27.416691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.576687, 26.400358, 27.313074>,  <35.215954, 26.393343, 27.140379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576687, 26.400358, 27.313074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421766, -0.181427, 0.888368,
		0.093911, -0.983248, -0.156219,
		0.901828, 0.017540, 0.431738,
		35.847237, 26.405621, 27.442596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193836, 25.827866, 27.692225>,  <35.215954, 26.393343, 27.140379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193836, 25.827866, 27.692225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476261, 26.095455, 27.785133>,  <35.645718, 26.256008, 27.840879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.476261, 26.095455, 27.785133>,  <35.193836, 25.827866, 27.692225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476261, 26.095455, 27.785133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320934, 0.009902, 0.947050,
		0.631252, -0.743220, 0.221688,
		0.706061, 0.668974, 0.232274,
		35.688080, 26.296146, 27.854816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.771099, 26.631538, 24.090776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596127, 26.985416, 24.026323>,  <41.491142, 27.197744, 23.987652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.596127, 26.985416, 24.026323>,  <41.771099, 26.631538, 24.090776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596127, 26.985416, 24.026323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174361, -0.092344, -0.980342,
		-0.882186, -0.456929, -0.113862,
		-0.437432, 0.884697, -0.161135,
		41.464897, 27.250826, 23.977983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201355, 26.624847, 23.539000>,  <41.771099, 26.631538, 24.090776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201355, 26.624847, 23.539000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371956, 26.985592, 23.566544>,  <41.474316, 27.202038, 23.583069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371956, 26.985592, 23.566544>,  <41.201355, 26.624847, 23.539000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371956, 26.985592, 23.566544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098356, 0.029434, -0.994716,
		-0.899122, 0.431023, -0.076150,
		0.426504, 0.901861, 0.068859,
		41.499908, 27.256149, 23.587202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022026, 26.932178, 22.897659>,  <41.201355, 26.624847, 23.539000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022026, 26.932178, 22.897659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310242, 27.181372, 23.019453>,  <41.483173, 27.330887, 23.092529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310242, 27.181372, 23.019453>,  <41.022026, 26.932178, 22.897659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310242, 27.181372, 23.019453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184244, 0.251319, -0.950207,
		-0.668486, 0.740763, 0.066305,
		0.720542, 0.622984, 0.304484,
		41.526405, 27.368267, 23.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960796, 27.576883, 22.461582>,  <41.022026, 26.932178, 22.897659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960796, 27.576883, 22.461582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.336586, 27.573467, 22.598585>,  <41.562061, 27.571417, 22.680788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.336586, 27.573467, 22.598585>,  <40.960796, 27.576883, 22.461582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336586, 27.573467, 22.598585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331245, 0.278045, -0.901647,
		-0.087533, 0.960530, 0.264046,
		0.939476, -0.008540, 0.342509,
		41.618427, 27.570906, 22.701338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402420, 28.159687, 22.109821>,  <40.960796, 27.576883, 22.461582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402420, 28.159687, 22.109821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682182, 27.920729, 22.266768>,  <41.850040, 27.777353, 22.360935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.682182, 27.920729, 22.266768>,  <41.402420, 28.159687, 22.109821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682182, 27.920729, 22.266768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568584, 0.132431, -0.811896,
		0.433060, 0.790938, 0.432292,
		0.699408, -0.597394, 0.392364,
		41.892006, 27.741510, 22.384476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027290, 28.509285, 22.079082>,  <41.402420, 28.159687, 22.109821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027290, 28.509285, 22.079082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097439, 28.115673, 22.091288>,  <42.139530, 27.879507, 22.098612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.097439, 28.115673, 22.091288>,  <42.027290, 28.509285, 22.079082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097439, 28.115673, 22.091288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388051, 0.040607, -0.920743,
		0.904799, 0.173316, 0.388974,
		0.175374, -0.984029, 0.030514,
		42.150051, 27.820465, 22.100441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745415, 28.342054, 21.737541>,  <42.027290, 28.509285, 22.079082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745415, 28.342054, 21.737541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.564350, 27.985384, 21.738892>,  <42.455711, 27.771381, 21.739702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.564350, 27.985384, 21.738892>,  <42.745415, 28.342054, 21.737541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564350, 27.985384, 21.738892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354389, -0.183378, -0.916941,
		0.818233, -0.413869, 0.399008,
		-0.452663, -0.891676, 0.003375,
		42.428551, 27.717882, 21.739904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210091, 27.856092, 21.552940>,  <42.745415, 28.342054, 21.737541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210091, 27.856092, 21.552940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.873169, 27.664837, 21.453411>,  <42.671017, 27.550083, 21.393694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.873169, 27.664837, 21.453411>,  <43.210091, 27.856092, 21.552940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873169, 27.664837, 21.453411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363153, -0.162278, -0.917489,
		0.398307, -0.863163, 0.310325,
		-0.842301, -0.478138, -0.248824,
		42.620480, 27.521397, 21.378763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401440, 27.212275, 21.254690>,  <43.210091, 27.856092, 21.552940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401440, 27.212275, 21.254690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032475, 27.242994, 21.103296>,  <42.811096, 27.261427, 21.012461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.032475, 27.242994, 21.103296>,  <43.401440, 27.212275, 21.254690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032475, 27.242994, 21.103296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371006, -0.095940, -0.923661,
		-0.107262, -0.992419, 0.059998,
		-0.922415, 0.076814, -0.378484,
		42.755749, 27.266033, 20.989752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430492, 26.693689, 20.731302>,  <43.401440, 27.212275, 21.254690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430492, 26.693689, 20.731302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.119881, 26.937681, 20.668142>,  <42.933514, 27.084076, 20.630247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.119881, 26.937681, 20.668142>,  <43.430492, 26.693689, 20.731302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119881, 26.937681, 20.668142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185156, -0.018626, -0.982533,
		-0.602264, -0.792200, -0.098477,
		-0.776528, 0.609978, -0.157898,
		42.886921, 27.120674, 20.620773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160187, 26.223564, 20.244650>,  <43.430492, 26.693689, 20.731302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160187, 26.223564, 20.244650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.037445, 26.603401, 20.218994>,  <42.963802, 26.831305, 20.203602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.037445, 26.603401, 20.218994>,  <43.160187, 26.223564, 20.244650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037445, 26.603401, 20.218994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200109, -0.001514, -0.979773,
		-0.930484, -0.313477, -0.189558,
		-0.306850, 0.949595, -0.064138,
		42.945389, 26.888279, 20.199753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588238, 26.342804, 19.695862>,  <43.160187, 26.223564, 20.244650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588238, 26.342804, 19.695862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797001, 26.679106, 19.753471>,  <42.922256, 26.880888, 19.788038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.797001, 26.679106, 19.753471>,  <42.588238, 26.342804, 19.695862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797001, 26.679106, 19.753471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213376, 0.034799, -0.976350,
		-0.825885, 0.540294, -0.161235,
		0.521905, 0.840757, 0.144025,
		42.953571, 26.931334, 19.796679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826527, 26.495346, 19.071571>,  <42.588238, 26.342804, 19.695862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826527, 26.495346, 19.071571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008118, 26.781904, 19.283487>,  <43.117073, 26.953840, 19.410637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.008118, 26.781904, 19.283487>,  <42.826527, 26.495346, 19.071571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008118, 26.781904, 19.283487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531193, 0.259765, -0.806446,
		-0.715356, 0.647532, -0.262617,
		0.453982, 0.716397, 0.529789,
		43.144314, 26.996822, 19.442425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399700, 26.137945, 18.688082>,  <42.826527, 26.495346, 19.071571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399700, 26.137945, 18.688082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.504345, 26.438803, 18.446144>,  <42.567131, 26.619316, 18.300982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.504345, 26.438803, 18.446144>,  <42.399700, 26.137945, 18.688082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504345, 26.438803, 18.446144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838112, 0.487827, 0.244116,
		0.478669, 0.443062, 0.758005,
		0.261617, 0.752144, -0.604843,
		42.582829, 26.664446, 18.264690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975979, 26.448965, 19.183756>,  <42.399700, 26.137945, 18.688082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975979, 26.448965, 19.183756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659679, 26.421421, 18.940453>,  <41.469902, 26.404894, 18.794470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659679, 26.421421, 18.940453>,  <41.975979, 26.448965, 19.183756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659679, 26.421421, 18.940453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611894, 0.117368, 0.782183,
		0.017529, 0.990698, -0.134944,
		-0.790746, -0.068861, -0.608259,
		41.422455, 26.400763, 18.757975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431438, 26.975122, 19.400074>,  <41.975979, 26.448965, 19.183756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431438, 26.975122, 19.400074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227859, 26.712202, 19.177750>,  <41.105713, 26.554449, 19.044355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.227859, 26.712202, 19.177750>,  <41.431438, 26.975122, 19.400074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227859, 26.712202, 19.177750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737762, 0.000420, 0.675061,
		-0.443485, 0.753628, -0.485146,
		-0.508949, -0.657301, -0.555811,
		41.075176, 26.515011, 19.011005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792858, 27.206152, 19.473646>,  <41.431438, 26.975122, 19.400074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792858, 27.206152, 19.473646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781490, 26.815588, 19.388027>,  <40.774670, 26.581249, 19.336657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.781490, 26.815588, 19.388027>,  <40.792858, 27.206152, 19.473646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781490, 26.815588, 19.388027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783546, -0.111204, 0.611301,
		-0.620683, 0.185086, -0.761903,
		-0.028417, -0.976410, -0.214046,
		40.772964, 26.522665, 19.323814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088551, 27.008007, 19.540932>,  <40.792858, 27.206152, 19.473646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088551, 27.008007, 19.540932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292431, 26.664129, 19.554379>,  <40.414761, 26.457804, 19.562447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.292431, 26.664129, 19.554379>,  <40.088551, 27.008007, 19.540932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292431, 26.664129, 19.554379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532977, -0.284841, 0.796744,
		-0.675379, -0.424021, -0.603381,
		0.509704, -0.859693, 0.033618,
		40.445343, 26.406221, 19.564465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565727, 26.492592, 19.539469>,  <40.088551, 27.008007, 19.540932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565727, 26.492592, 19.539469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887035, 26.303431, 19.684307>,  <40.079823, 26.189934, 19.771210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.887035, 26.303431, 19.684307>,  <39.565727, 26.492592, 19.539469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887035, 26.303431, 19.684307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479117, -0.151881, 0.864511,
		-0.353836, -0.867925, -0.348578,
		0.803273, -0.472905, 0.362097,
		40.128017, 26.161560, 19.792936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319592, 25.942533, 19.909357>,  <39.565727, 26.492592, 19.539469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319592, 25.942533, 19.909357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.686340, 25.998430, 20.058928>,  <39.906391, 26.031967, 20.148670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.686340, 25.998430, 20.058928>,  <39.319592, 25.942533, 19.909357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686340, 25.998430, 20.058928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370790, -0.048825, 0.927432,
		0.147857, -0.988984, 0.007048,
		0.916871, 0.139741, 0.373924,
		39.961403, 26.040352, 20.171104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316414, 25.443644, 20.366154>,  <39.319592, 25.942533, 19.909357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316414, 25.443644, 20.366154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609486, 25.688643, 20.484833>,  <39.785328, 25.835642, 20.556040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.609486, 25.688643, 20.484833>,  <39.316414, 25.443644, 20.366154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609486, 25.688643, 20.484833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388331, 0.018227, 0.921340,
		0.558910, -0.790263, 0.251206,
		0.732679, 0.612497, 0.296696,
		39.829288, 25.872391, 20.573841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525494, 25.173319, 21.052425>,  <39.316414, 25.443644, 20.366154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525494, 25.173319, 21.052425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667221, 25.546864, 21.032997>,  <39.752258, 25.770990, 21.021341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.667221, 25.546864, 21.032997>,  <39.525494, 25.173319, 21.052425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667221, 25.546864, 21.032997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411577, 0.202371, 0.888623,
		0.839681, -0.294863, 0.456060,
		0.354316, 0.933864, -0.048568,
		39.773518, 25.827023, 21.018427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845917, 25.294571, 21.683054>,  <39.525494, 25.173319, 21.052425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845917, 25.294571, 21.683054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756817, 25.644186, 21.510338>,  <39.703358, 25.853954, 21.406708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756817, 25.644186, 21.510338>,  <39.845917, 25.294571, 21.683054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756817, 25.644186, 21.510338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498001, 0.278749, 0.821154,
		0.838080, 0.397943, 0.373180,
		-0.222749, 0.874036, -0.431790,
		39.689991, 25.906397, 21.380800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307178, 25.760210, 22.067171>,  <39.845917, 25.294571, 21.683054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307178, 25.760210, 22.067171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.973385, 25.913116, 21.908421>,  <39.773109, 26.004860, 21.813171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.973385, 25.913116, 21.908421>,  <40.307178, 25.760210, 22.067171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973385, 25.913116, 21.908421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343134, 0.203063, 0.917074,
		0.431157, 0.901465, -0.038285,
		-0.834484, 0.382266, -0.396875,
		39.723042, 26.027796, 21.789358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261368, 26.147552, 22.598423>,  <40.307178, 25.760210, 22.067171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261368, 26.147552, 22.598423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922314, 26.189852, 22.390446>,  <39.718884, 26.215231, 22.265659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922314, 26.189852, 22.390446>,  <40.261368, 26.147552, 22.598423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922314, 26.189852, 22.390446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506954, 0.127792, 0.852447,
		0.156588, 0.986147, -0.054712,
		-0.847631, 0.105747, -0.519942,
		39.668026, 26.221575, 22.234463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920300, 26.829399, 22.771423>,  <40.261368, 26.147552, 22.598423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920300, 26.829399, 22.771423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618484, 26.636904, 22.592951>,  <39.437393, 26.521406, 22.485868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.618484, 26.636904, 22.592951>,  <39.920300, 26.829399, 22.771423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618484, 26.636904, 22.592951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595921, 0.217693, 0.772973,
		-0.274854, 0.849129, -0.451039,
		-0.754542, -0.481238, -0.446180,
		39.392120, 26.492533, 22.459097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353111, 27.264759, 22.704042>,  <39.920300, 26.829399, 22.771423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353111, 27.264759, 22.704042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194000, 26.898100, 22.719673>,  <39.098534, 26.678104, 22.729052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.194000, 26.898100, 22.719673>,  <39.353111, 27.264759, 22.704042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194000, 26.898100, 22.719673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601949, 0.292882, 0.742884,
		-0.692410, 0.271980, -0.668278,
		-0.397777, -0.916650, 0.039077,
		39.074669, 26.623104, 22.731396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727383, 27.449648, 22.696234>,  <39.353111, 27.264759, 22.704042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727383, 27.449648, 22.696234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731171, 27.068094, 22.816244>,  <38.733444, 26.839163, 22.888250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731171, 27.068094, 22.816244>,  <38.727383, 27.449648, 22.696234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731171, 27.068094, 22.816244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638276, 0.225201, 0.736131,
		-0.769750, -0.198466, -0.606710,
		0.009465, -0.953884, 0.300024,
		38.734009, 26.781929, 22.906252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204903, 27.599554, 22.055609>,  <38.727383, 27.449648, 22.696234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204903, 27.599554, 22.055609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932796, 27.879528, 21.968586>,  <37.769535, 28.047512, 21.916372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932796, 27.879528, 21.968586>,  <38.204903, 27.599554, 22.055609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932796, 27.879528, 21.968586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258402, -0.048748, -0.964807,
		-0.685908, -0.712540, -0.147703,
		-0.680264, 0.699936, -0.217558,
		37.728718, 28.089508, 21.903318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670830, 27.357729, 21.604181>,  <38.204903, 27.599554, 22.055609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670830, 27.357729, 21.604181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721760, 27.753300, 21.573683>,  <37.752316, 27.990643, 21.555384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.721760, 27.753300, 21.573683>,  <37.670830, 27.357729, 21.604181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721760, 27.753300, 21.573683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316132, -0.113325, -0.941922,
		-0.940133, 0.095822, -0.327060,
		0.127321, 0.988926, -0.076248,
		37.759956, 28.049978, 21.550808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588085, 27.510420, 20.868292>,  <37.670830, 27.357729, 21.604181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588085, 27.510420, 20.868292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741505, 27.851885, 21.009232>,  <37.833557, 28.056765, 21.093796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.741505, 27.851885, 21.009232>,  <37.588085, 27.510420, 20.868292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741505, 27.851885, 21.009232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341386, 0.223450, -0.912976,
		-0.858108, 0.470455, -0.205726,
		0.383545, 0.853664, 0.352351,
		37.856567, 28.107985, 21.114937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586826, 28.072634, 20.276266>,  <37.588085, 27.510420, 20.868292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586826, 28.072634, 20.276266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849380, 28.225645, 20.536367>,  <38.006912, 28.317451, 20.692429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.849380, 28.225645, 20.536367>,  <37.586826, 28.072634, 20.276266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849380, 28.225645, 20.536367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503610, 0.419592, -0.755195,
		-0.561725, 0.823173, 0.082768,
		0.656385, 0.382529, 0.650254,
		38.046295, 28.340405, 20.731443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629723, 28.845043, 20.095726>,  <37.586826, 28.072634, 20.276266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629723, 28.845043, 20.095726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944927, 28.688200, 20.285585>,  <38.134048, 28.594093, 20.399502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944927, 28.688200, 20.285585>,  <37.629723, 28.845043, 20.095726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944927, 28.688200, 20.285585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587999, 0.250812, -0.768993,
		0.182480, 0.885068, 0.428201,
		0.788009, -0.392107, 0.474651,
		38.181332, 28.570568, 20.427980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139091, 29.332441, 19.987179>,  <37.629723, 28.845043, 20.095726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139091, 29.332441, 19.987179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320591, 28.990297, 20.087160>,  <38.429489, 28.785011, 20.147148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320591, 28.990297, 20.087160>,  <38.139091, 29.332441, 19.987179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320591, 28.990297, 20.087160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545305, 0.044669, -0.837047,
		0.704810, 0.516106, 0.486700,
		0.453745, -0.855359, 0.249953,
		38.456715, 28.733690, 20.162146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814304, 29.517452, 19.798182>,  <38.139091, 29.332441, 19.987179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814304, 29.517452, 19.798182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788517, 29.119257, 19.826019>,  <38.773045, 28.880339, 19.842722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.788517, 29.119257, 19.826019>,  <38.814304, 29.517452, 19.798182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788517, 29.119257, 19.826019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470212, -0.091816, -0.877765,
		0.880196, -0.023864, 0.474010,
		-0.064469, -0.995490, 0.069595,
		38.769176, 28.820610, 19.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353897, 29.977568, 19.923510>,  <38.814304, 29.517452, 19.798182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353897, 29.977568, 19.923510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287254, 30.350117, 19.794029>,  <39.247269, 30.573647, 19.716341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287254, 30.350117, 19.794029>,  <39.353897, 29.977568, 19.923510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287254, 30.350117, 19.794029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830803, 0.044204, 0.554808,
		0.531043, 0.361370, 0.766424,
		-0.166612, 0.931374, -0.323702,
		39.237270, 30.629530, 19.696918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302139, 30.481773, 20.577486>,  <39.353897, 29.977568, 19.923510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302139, 30.481773, 20.577486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112049, 30.657446, 20.272520>,  <38.997993, 30.762850, 20.089540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112049, 30.657446, 20.272520>,  <39.302139, 30.481773, 20.577486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112049, 30.657446, 20.272520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745006, 0.260155, 0.614235,
		0.468106, 0.859907, 0.203559,
		-0.475228, 0.439180, -0.762416,
		38.969482, 30.789200, 20.043795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316181, 31.203968, 20.711462>,  <39.302139, 30.481773, 20.577486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316181, 31.203968, 20.711462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002079, 31.148933, 20.469986>,  <38.813618, 31.115913, 20.325100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002079, 31.148933, 20.469986>,  <39.316181, 31.203968, 20.711462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002079, 31.148933, 20.469986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616247, 0.268311, 0.740438,
		0.060102, 0.953456, -0.295481,
		-0.785256, -0.137587, -0.603691,
		38.766502, 31.107656, 20.288879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779629, 31.674353, 20.935457>,  <39.316181, 31.203968, 20.711462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779629, 31.674353, 20.935457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537380, 31.422464, 20.740860>,  <38.392033, 31.271332, 20.624102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.537380, 31.422464, 20.740860>,  <38.779629, 31.674353, 20.935457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537380, 31.422464, 20.740860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771977, 0.316607, 0.551191,
		-0.193070, 0.709374, -0.677874,
		-0.605620, -0.629722, -0.486493,
		38.355694, 31.233547, 20.594912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148376, 31.962177, 21.077360>,  <38.779629, 31.674353, 20.935457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148376, 31.962177, 21.077360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027996, 31.623508, 20.901827>,  <37.955769, 31.420307, 20.796507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.027996, 31.623508, 20.901827>,  <38.148376, 31.962177, 21.077360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027996, 31.623508, 20.901827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836541, 0.013460, 0.547738,
		-0.457847, 0.531947, -0.712326,
		-0.300956, -0.846670, -0.438834,
		37.937710, 31.369507, 20.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428696, 32.036270, 20.925613>,  <38.148376, 31.962177, 21.077360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428696, 32.036270, 20.925613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488659, 31.641342, 20.946533>,  <37.524635, 31.404387, 20.959085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488659, 31.641342, 20.946533>,  <37.428696, 32.036270, 20.925613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488659, 31.641342, 20.946533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772647, -0.083979, 0.629257,
		-0.616884, -0.134738, -0.775435,
		0.149905, -0.987316, 0.052299,
		37.533630, 31.345148, 20.962223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798092, 31.623222, 20.638807>,  <37.428696, 32.036270, 20.925613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798092, 31.623222, 20.638807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998310, 31.387897, 20.892845>,  <37.118443, 31.246702, 21.045267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998310, 31.387897, 20.892845>,  <36.798092, 31.623222, 20.638807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998310, 31.387897, 20.892845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812222, -0.065267, 0.579686,
		-0.299584, -0.805997, -0.510508,
		0.500544, -0.588311, 0.635095,
		37.148472, 31.211405, 21.083374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.455112, 30.571365, 20.069258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.363182, 30.187717, 20.135313>,  <44.308025, 29.957529, 20.174946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.363182, 30.187717, 20.135313>,  <44.455112, 30.571365, 20.069258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363182, 30.187717, 20.135313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496693, 0.261512, 0.827591,
		-0.836944, 0.108178, -0.536490,
		-0.229826, -0.959119, 0.165140,
		44.294235, 29.899982, 20.184855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728527, 30.629448, 20.341906>,  <44.455112, 30.571365, 20.069258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728527, 30.629448, 20.341906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.839096, 30.265135, 20.464584>,  <43.905437, 30.046547, 20.538191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.839096, 30.265135, 20.464584>,  <43.728527, 30.629448, 20.341906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839096, 30.265135, 20.464584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374136, 0.191969, 0.907287,
		-0.885219, -0.365540, -0.287693,
		0.276422, -0.910784, 0.306697,
		43.922024, 29.991899, 20.556593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045708, 30.347099, 20.770283>,  <43.728527, 30.629448, 20.341906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045708, 30.347099, 20.770283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.367352, 30.125799, 20.857294>,  <43.560337, 29.993019, 20.909500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.367352, 30.125799, 20.857294>,  <43.045708, 30.347099, 20.770283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367352, 30.125799, 20.857294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165434, 0.143206, 0.975768,
		-0.570997, -0.820612, 0.023627,
		0.804110, -0.553253, 0.217528,
		43.608585, 29.959824, 20.922552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774715, 29.909828, 21.187031>,  <43.045708, 30.347099, 20.770283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774715, 29.909828, 21.187031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.170246, 29.942738, 21.236761>,  <43.407562, 29.962482, 21.266600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.170246, 29.942738, 21.236761>,  <42.774715, 29.909828, 21.187031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170246, 29.942738, 21.236761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139042, 0.208041, 0.968187,
		0.053788, -0.974654, 0.217155,
		0.988825, 0.082270, 0.124328,
		43.466892, 29.967419, 21.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826660, 29.522951, 21.827009>,  <42.774715, 29.909828, 21.187031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826660, 29.522951, 21.827009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.134857, 29.771593, 21.770508>,  <43.319775, 29.920778, 21.736607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.134857, 29.771593, 21.770508>,  <42.826660, 29.522951, 21.827009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134857, 29.771593, 21.770508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071150, 0.304071, 0.949989,
		0.633469, -0.721906, 0.278511,
		0.770490, 0.621604, -0.141256,
		43.366005, 29.958075, 21.728130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148396, 29.459946, 22.462685>,  <42.826660, 29.522951, 21.827009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148396, 29.459946, 22.462685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.313728, 29.790913, 22.310616>,  <43.412930, 29.989492, 22.219374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.313728, 29.790913, 22.310616>,  <43.148396, 29.459946, 22.462685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313728, 29.790913, 22.310616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114321, 0.461359, 0.879817,
		0.903375, -0.320196, 0.285287,
		0.413334, 0.827419, -0.380175,
		43.437729, 30.039139, 22.196564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629055, 29.728369, 23.067844>,  <43.148396, 29.459946, 22.462685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629055, 29.728369, 23.067844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.496307, 30.024946, 22.834564>,  <43.416660, 30.202892, 22.694595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.496307, 30.024946, 22.834564>,  <43.629055, 29.728369, 23.067844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496307, 30.024946, 22.834564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003117, 0.617375, 0.786663,
		0.943321, 0.262885, -0.202575,
		-0.331866, 0.741444, -0.583203,
		43.396748, 30.247379, 22.659603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761997, 30.288473, 23.398859>,  <43.629055, 29.728369, 23.067844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761997, 30.288473, 23.398859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.507317, 30.451019, 23.136723>,  <43.354507, 30.548548, 22.979441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.507317, 30.451019, 23.136723>,  <43.761997, 30.288473, 23.398859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507317, 30.451019, 23.136723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347620, 0.607350, 0.714343,
		0.688306, 0.682636, -0.245443,
		-0.636706, 0.406366, -0.655341,
		43.316303, 30.572929, 22.940121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710938, 31.040600, 23.589003>,  <43.761997, 30.288473, 23.398859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710938, 31.040600, 23.589003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.392563, 31.005491, 23.349407>,  <43.201538, 30.984426, 23.205650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.392563, 31.005491, 23.349407>,  <43.710938, 31.040600, 23.589003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392563, 31.005491, 23.349407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509033, 0.632589, 0.583709,
		0.327679, 0.769498, -0.548178,
		-0.795934, -0.087772, -0.598986,
		43.153782, 30.979160, 23.169712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488903, 31.717192, 23.483522>,  <43.710938, 31.040600, 23.589003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488903, 31.717192, 23.483522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168137, 31.509169, 23.365896>,  <42.975677, 31.384354, 23.295321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.168137, 31.509169, 23.365896>,  <43.488903, 31.717192, 23.483522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168137, 31.509169, 23.365896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583840, 0.577732, 0.570401,
		-0.126752, 0.629098, -0.766922,
		-0.801913, -0.520059, -0.294064,
		42.927563, 31.353151, 23.277678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899254, 32.263554, 23.401844>,  <43.488903, 31.717192, 23.483522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899254, 32.263554, 23.401844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745975, 31.897287, 23.450356>,  <42.654007, 31.677526, 23.479464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.745975, 31.897287, 23.450356>,  <42.899254, 32.263554, 23.401844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745975, 31.897287, 23.450356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598692, 0.346212, 0.722292,
		-0.703369, 0.204170, -0.680871,
		-0.383196, -0.915670, 0.121280,
		42.631016, 31.622587, 23.486740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146801, 32.287537, 23.303783>,  <42.899254, 32.263554, 23.401844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146801, 32.287537, 23.303783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.246277, 31.976286, 23.534494>,  <42.305962, 31.789536, 23.672920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.246277, 31.976286, 23.534494>,  <42.146801, 32.287537, 23.303783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246277, 31.976286, 23.534494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413319, 0.453291, 0.789743,
		-0.875970, -0.434791, -0.208888,
		0.248686, -0.778128, 0.576777,
		42.320881, 31.742847, 23.707527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625286, 32.334553, 22.871721>,  <42.146801, 32.287537, 23.303783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625286, 32.334553, 22.871721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314484, 32.565941, 22.772423>,  <41.128002, 32.704773, 22.712845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.314484, 32.565941, 22.772423>,  <41.625286, 32.334553, 22.871721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314484, 32.565941, 22.772423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410752, 0.167086, -0.896306,
		-0.477011, -0.798406, -0.367436,
		-0.777009, 0.578473, -0.248245,
		41.081379, 32.739483, 22.697948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432060, 32.050949, 22.126038>,  <41.625286, 32.334553, 22.871721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432060, 32.050949, 22.126038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.268116, 32.412479, 22.175213>,  <41.169750, 32.629398, 22.204718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.268116, 32.412479, 22.175213>,  <41.432060, 32.050949, 22.126038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268116, 32.412479, 22.175213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238761, 0.236384, -0.941868,
		-0.880345, -0.356683, -0.312683,
		-0.409861, 0.903825, 0.122938,
		41.145157, 32.683628, 22.212093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909058, 32.097549, 21.606791>,  <41.432060, 32.050949, 22.126038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909058, 32.097549, 21.606791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013645, 32.469463, 21.710430>,  <41.076397, 32.692612, 21.772614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.013645, 32.469463, 21.710430>,  <40.909058, 32.097549, 21.606791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013645, 32.469463, 21.710430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351034, 0.158453, -0.922858,
		-0.899116, 0.332249, -0.284957,
		0.261466, 0.929787, 0.259099,
		41.092087, 32.748398, 21.788160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556084, 32.543926, 21.218065>,  <40.909058, 32.097549, 21.606791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556084, 32.543926, 21.218065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863556, 32.772324, 21.333368>,  <41.048038, 32.909363, 21.402550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863556, 32.772324, 21.333368>,  <40.556084, 32.543926, 21.218065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863556, 32.772324, 21.333368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204046, 0.208218, -0.956562,
		-0.606208, 0.794113, 0.043546,
		0.768685, 0.570990, 0.288259,
		41.094162, 32.943623, 21.419846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446934, 33.159645, 20.822878>,  <40.556084, 32.543926, 21.218065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446934, 33.159645, 20.822878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824982, 33.198017, 20.947805>,  <41.051811, 33.221039, 21.022762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824982, 33.198017, 20.947805>,  <40.446934, 33.159645, 20.822878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824982, 33.198017, 20.947805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277067, 0.271271, -0.921763,
		-0.173144, 0.957711, 0.229806,
		0.945122, 0.095926, 0.312319,
		41.108517, 33.226795, 21.041500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713448, 33.627968, 20.343224>,  <40.446934, 33.159645, 20.822878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713448, 33.627968, 20.343224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044121, 33.458759, 20.491629>,  <41.242523, 33.357235, 20.580671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044121, 33.458759, 20.491629>,  <40.713448, 33.627968, 20.343224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044121, 33.458759, 20.491629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473107, 0.165659, -0.865290,
		0.304574, 0.890849, 0.337081,
		0.826683, -0.423020, 0.371012,
		41.292126, 33.331852, 20.602932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246273, 34.064320, 20.054726>,  <40.713448, 33.627968, 20.343224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246273, 34.064320, 20.054726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.432869, 33.731491, 20.174753>,  <41.544827, 33.531796, 20.246771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.432869, 33.731491, 20.174753>,  <41.246273, 34.064320, 20.054726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432869, 33.731491, 20.174753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396968, -0.106219, -0.911666,
		0.790443, 0.544405, 0.280755,
		0.466494, -0.832071, 0.300071,
		41.572819, 33.481869, 20.264774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945000, 34.125988, 20.048346>,  <41.246273, 34.064320, 20.054726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945000, 34.125988, 20.048346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909271, 33.729725, 20.007139>,  <41.887833, 33.491966, 19.982416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909271, 33.729725, 20.007139>,  <41.945000, 34.125988, 20.048346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909271, 33.729725, 20.007139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289477, 0.073143, -0.954386,
		0.953008, -0.115069, 0.280241,
		-0.089323, -0.990661, -0.103016,
		41.882473, 33.432526, 19.976234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546268, 33.909054, 19.802345>,  <41.945000, 34.125988, 20.048346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546268, 33.909054, 19.802345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335155, 33.584324, 19.702438>,  <42.208488, 33.389484, 19.642494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.335155, 33.584324, 19.702438>,  <42.546268, 33.909054, 19.802345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335155, 33.584324, 19.702438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281880, 0.109985, -0.953125,
		0.801243, -0.573446, 0.170790,
		-0.527781, -0.811827, -0.249768,
		42.176823, 33.340775, 19.627508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932552, 33.556290, 19.390509>,  <42.546268, 33.909054, 19.802345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932552, 33.556290, 19.390509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562634, 33.427055, 19.310148>,  <42.340683, 33.349514, 19.261932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562634, 33.427055, 19.310148>,  <42.932552, 33.556290, 19.390509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562634, 33.427055, 19.310148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202488, 0.029065, -0.978853,
		0.322097, -0.945922, 0.038542,
		-0.924799, -0.323090, -0.200899,
		42.285194, 33.330128, 19.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075619, 33.003670, 18.949156>,  <42.932552, 33.556290, 19.390509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075619, 33.003670, 18.949156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.688633, 33.067375, 18.870523>,  <42.456440, 33.105598, 18.823343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.688633, 33.067375, 18.870523>,  <43.075619, 33.003670, 18.949156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688633, 33.067375, 18.870523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161042, -0.211613, -0.963995,
		-0.195135, -0.964289, 0.179079,
		-0.967465, 0.159270, -0.196584,
		42.398392, 33.115154, 18.811548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841179, 32.435871, 18.531246>,  <43.075619, 33.003670, 18.949156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841179, 32.435871, 18.531246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.593704, 32.741001, 18.456066>,  <42.445217, 32.924080, 18.410957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.593704, 32.741001, 18.456066>,  <42.841179, 32.435871, 18.531246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593704, 32.741001, 18.456066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103757, -0.157803, -0.982004,
		-0.778753, -0.627058, 0.018483,
		-0.618690, 0.762822, -0.187951,
		42.408096, 32.969849, 18.399681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343578, 32.142170, 18.091270>,  <42.841179, 32.435871, 18.531246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343578, 32.142170, 18.091270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305531, 32.536613, 18.036818>,  <42.282700, 32.773281, 18.004145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.305531, 32.536613, 18.036818>,  <42.343578, 32.142170, 18.091270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305531, 32.536613, 18.036818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063501, -0.142486, -0.987758,
		-0.993438, -0.085313, 0.076173,
		-0.095122, 0.986113, -0.136134,
		42.276993, 32.832447, 17.995977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978821, 31.456366, 18.048395>,  <42.343578, 32.142170, 18.091270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978821, 31.456366, 18.048395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731140, 31.333754, 17.759222>,  <41.582531, 31.260187, 17.585718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731140, 31.333754, 17.759222>,  <41.978821, 31.456366, 18.048395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731140, 31.333754, 17.759222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667527, -0.279356, 0.690195,
		-0.413520, 0.909945, -0.031639,
		-0.619201, -0.306529, -0.722932,
		41.545380, 31.241795, 17.542343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403538, 31.790287, 18.260925>,  <41.978821, 31.456366, 18.048395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403538, 31.790287, 18.260925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.274300, 31.501280, 18.016441>,  <41.196758, 31.327875, 17.869751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.274300, 31.501280, 18.016441>,  <41.403538, 31.790287, 18.260925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274300, 31.501280, 18.016441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873375, -0.021072, 0.486593,
		-0.364452, 0.691030, -0.624221,
		-0.323096, -0.722519, -0.611208,
		41.177372, 31.284525, 17.833078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807972, 31.979366, 17.980267>,  <41.403538, 31.790287, 18.260925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807972, 31.979366, 17.980267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842663, 31.580883, 17.982960>,  <40.863476, 31.341793, 17.984575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842663, 31.580883, 17.982960>,  <40.807972, 31.979366, 17.980267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842663, 31.580883, 17.982960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800158, -0.065631, 0.596187,
		-0.593486, -0.057091, -0.802817,
		0.086726, -0.996209, 0.006731,
		40.868679, 31.282021, 17.984980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141918, 31.837412, 17.998405>,  <40.807972, 31.979366, 17.980267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141918, 31.837412, 17.998405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.336849, 31.503408, 18.100601>,  <40.453808, 31.303007, 18.161919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.336849, 31.503408, 18.100601>,  <40.141918, 31.837412, 17.998405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336849, 31.503408, 18.100601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787302, -0.293593, 0.542180,
		-0.377717, -0.465361, -0.800480,
		0.487325, -0.835010, 0.255485,
		40.483047, 31.252905, 18.177248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652706, 31.317720, 17.771223>,  <40.141918, 31.837412, 17.998405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652706, 31.317720, 17.771223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.894520, 31.109680, 18.012566>,  <40.039608, 30.984856, 18.157372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.894520, 31.109680, 18.012566>,  <39.652706, 31.317720, 17.771223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894520, 31.109680, 18.012566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734230, -0.070046, 0.675278,
		-0.308950, -0.851228, -0.424219,
		0.604530, -0.520101, 0.603356,
		40.075878, 30.953650, 18.193573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267067, 30.828821, 18.089806>,  <39.652706, 31.317720, 17.771223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267067, 30.828821, 18.089806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575764, 30.858538, 18.342436>,  <39.760983, 30.876368, 18.494015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.575764, 30.858538, 18.342436>,  <39.267067, 30.828821, 18.089806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575764, 30.858538, 18.342436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615063, -0.165127, 0.770993,
		0.161571, -0.983470, -0.081740,
		0.771746, 0.074295, 0.631576,
		39.807289, 30.880825, 18.531908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185543, 30.243443, 18.464319>,  <39.267067, 30.828821, 18.089806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185543, 30.243443, 18.464319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393600, 30.512619, 18.674690>,  <39.518436, 30.674124, 18.800913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393600, 30.512619, 18.674690>,  <39.185543, 30.243443, 18.464319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393600, 30.512619, 18.674690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595952, -0.155128, 0.787894,
		0.611791, -0.723248, 0.320350,
		0.520148, 0.672939, 0.525927,
		39.549644, 30.714500, 18.832468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431732, 29.926945, 19.117071>,  <39.185543, 30.243443, 18.464319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431732, 29.926945, 19.117071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445312, 30.323452, 19.168043>,  <39.453461, 30.561356, 19.198627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445312, 30.323452, 19.168043>,  <39.431732, 29.926945, 19.117071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445312, 30.323452, 19.168043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634979, -0.077069, 0.768675,
		0.771783, -0.107014, 0.626817,
		0.033950, 0.991266, 0.127432,
		39.455498, 30.620832, 19.206272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454308, 29.383554, 19.551643>,  <39.431732, 29.926945, 19.117071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454308, 29.383554, 19.551643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253975, 29.038181, 19.527464>,  <39.133778, 28.830957, 19.512957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.253975, 29.038181, 19.527464>,  <39.454308, 29.383554, 19.551643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253975, 29.038181, 19.527464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619316, -0.308690, -0.721913,
		0.604664, -0.398992, 0.689338,
		-0.500829, -0.863433, -0.060448,
		39.103725, 28.779152, 19.509329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033859, 28.898748, 19.579918>,  <39.454308, 29.383554, 19.551643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033859, 28.898748, 19.579918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735493, 28.681145, 19.426207>,  <39.556473, 28.550583, 19.333981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.735493, 28.681145, 19.426207>,  <40.033859, 28.898748, 19.579918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735493, 28.681145, 19.426207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549324, -0.176214, -0.816818,
		0.376641, -0.820367, 0.430277,
		-0.745912, -0.544009, -0.384278,
		39.511719, 28.517942, 19.310923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271019, 28.178484, 19.251747>,  <40.033859, 28.898748, 19.579918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271019, 28.178484, 19.251747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934845, 28.284863, 19.062880>,  <39.733139, 28.348690, 18.949558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.934845, 28.284863, 19.062880>,  <40.271019, 28.178484, 19.251747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934845, 28.284863, 19.062880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493623, 0.016150, -0.869526,
		-0.223624, -0.963852, -0.144852,
		-0.840433, 0.265949, -0.472168,
		39.682716, 28.364647, 18.921228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194759, 27.682919, 18.708147>,  <40.271019, 28.178484, 19.251747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194759, 27.682919, 18.708147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966827, 27.995502, 18.606474>,  <39.830067, 28.183054, 18.545469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.966827, 27.995502, 18.606474>,  <40.194759, 27.682919, 18.708147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966827, 27.995502, 18.606474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484172, 0.069349, -0.872220,
		-0.663979, -0.620087, -0.417879,
		-0.569832, 0.781462, -0.254183,
		39.795879, 28.229940, 18.530220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903145, 27.544514, 17.943876>,  <40.194759, 27.682919, 18.708147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903145, 27.544514, 17.943876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896217, 27.930527, 18.048500>,  <39.892059, 28.162134, 18.111275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.896217, 27.930527, 18.048500>,  <39.903145, 27.544514, 17.943876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896217, 27.930527, 18.048500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331613, 0.252335, -0.909043,
		-0.943257, 0.070993, -0.324387,
		-0.017318, 0.965032, 0.261559,
		39.891022, 28.220036, 18.126968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618942, 27.866442, 17.398504>,  <39.903145, 27.544514, 17.943876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618942, 27.866442, 17.398504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819996, 28.162708, 17.576841>,  <39.940628, 28.340467, 17.683844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.819996, 28.162708, 17.576841>,  <39.618942, 27.866442, 17.398504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819996, 28.162708, 17.576841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194646, 0.405522, -0.893121,
		-0.842301, 0.535695, 0.059662,
		0.502634, 0.740664, 0.445843,
		39.970787, 28.384907, 17.710594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505756, 28.357672, 16.917521>,  <39.618942, 27.866442, 17.398504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505756, 28.357672, 16.917521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.794727, 28.508101, 17.149614>,  <39.968109, 28.598358, 17.288870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.794727, 28.508101, 17.149614>,  <39.505756, 28.357672, 16.917521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794727, 28.508101, 17.149614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394487, 0.465015, -0.792554,
		-0.567874, 0.801456, 0.187583,
		0.722426, 0.376072, 0.580234,
		40.011456, 28.620922, 17.323685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527691, 28.934685, 16.656572>,  <39.505756, 28.357672, 16.917521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527691, 28.934685, 16.656572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.892815, 28.865891, 16.804731>,  <40.111889, 28.824614, 16.893627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.892815, 28.865891, 16.804731>,  <39.527691, 28.934685, 16.656572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892815, 28.865891, 16.804731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408323, 0.369119, -0.834879,
		0.006867, 0.913330, 0.407163,
		0.912812, -0.171987, 0.370399,
		40.166656, 28.814295, 16.915852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007248, 29.512510, 16.502836>,  <39.527691, 28.934685, 16.656572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007248, 29.512510, 16.502836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198563, 29.162859, 16.536655>,  <40.313351, 28.953068, 16.556948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198563, 29.162859, 16.536655>,  <40.007248, 29.512510, 16.502836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198563, 29.162859, 16.536655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348973, 0.100825, -0.931693,
		0.805893, 0.475118, 0.353270,
		0.478282, -0.874127, 0.084549,
		40.342049, 28.900621, 16.562019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.107277, 30.575771, 31.255241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410851, 30.315302, 31.255049>,  <34.592995, 30.159021, 31.254932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410851, 30.315302, 31.255049>,  <34.107277, 30.575771, 31.255241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410851, 30.315302, 31.255049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040766, -0.046775, -0.998073,
		0.649895, 0.757487, -0.062045,
		0.758930, -0.651172, -0.000481,
		34.638531, 30.119949, 31.254904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758636, 30.973812, 30.890667>,  <34.107277, 30.575771, 31.255241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758636, 30.973812, 30.890667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822819, 30.579418, 30.908928>,  <34.861328, 30.342781, 30.919886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822819, 30.579418, 30.908928>,  <34.758636, 30.973812, 30.890667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822819, 30.579418, 30.908928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066256, -0.035389, -0.997175,
		0.984817, 0.163025, 0.059649,
		0.160454, -0.985987, 0.045653,
		34.870956, 30.283623, 30.922625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440483, 30.827709, 30.450562>,  <34.758636, 30.973812, 30.890667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440483, 30.827709, 30.450562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203568, 30.505924, 30.468628>,  <35.061420, 30.312853, 30.479467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203568, 30.505924, 30.468628>,  <35.440483, 30.827709, 30.450562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203568, 30.505924, 30.468628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127816, -0.149158, -0.980518,
		0.795526, -0.574972, 0.191167,
		-0.592284, -0.804462, 0.045168,
		35.025883, 30.264585, 30.482178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747887, 30.489819, 29.906689>,  <35.440483, 30.827709, 30.450562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747887, 30.489819, 29.906689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399464, 30.303988, 29.970474>,  <35.190411, 30.192490, 30.008745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399464, 30.303988, 29.970474>,  <35.747887, 30.489819, 29.906689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399464, 30.303988, 29.970474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146845, -0.063494, -0.987120,
		0.468717, -0.883254, -0.012914,
		-0.871058, -0.464576, 0.159462,
		35.138145, 30.164614, 30.018312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789993, 29.913589, 29.487967>,  <35.747887, 30.489819, 29.906689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789993, 29.913589, 29.487967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404366, 29.989735, 29.562090>,  <35.172989, 30.035421, 29.606564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404366, 29.989735, 29.562090>,  <35.789993, 29.913589, 29.487967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404366, 29.989735, 29.562090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203276, -0.079491, -0.975889,
		-0.171046, -0.978490, 0.115332,
		-0.964066, 0.190366, 0.185306,
		35.115147, 30.046843, 29.617682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487019, 29.396093, 29.153927>,  <35.789993, 29.913589, 29.487967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487019, 29.396093, 29.153927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199261, 29.667469, 29.213524>,  <35.026608, 29.830294, 29.249283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199261, 29.667469, 29.213524>,  <35.487019, 29.396093, 29.153927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199261, 29.667469, 29.213524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338974, -0.155673, -0.927827,
		-0.606279, -0.717974, 0.341962,
		-0.719390, 0.678439, 0.148994,
		34.983444, 29.871000, 29.258223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920883, 29.010494, 28.924234>,  <35.487019, 29.396093, 29.153927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920883, 29.010494, 28.924234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835987, 29.400843, 28.903740>,  <34.785049, 29.635052, 28.891443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.835987, 29.400843, 28.903740>,  <34.920883, 29.010494, 28.924234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835987, 29.400843, 28.903740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200489, -0.094802, -0.975098,
		-0.956429, -0.196685, 0.215773,
		-0.212242, 0.975873, -0.051238,
		34.772316, 29.693605, 28.888369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250259, 29.153355, 28.526680>,  <34.920883, 29.010494, 28.924234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250259, 29.153355, 28.526680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422729, 29.513458, 28.502602>,  <34.526211, 29.729521, 28.488153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422729, 29.513458, 28.502602>,  <34.250259, 29.153355, 28.526680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422729, 29.513458, 28.502602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035392, -0.049790, -0.998133,
		-0.901576, 0.432497, 0.010394,
		0.431171, 0.900260, -0.060197,
		34.552082, 29.783537, 28.484543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867573, 29.444061, 27.986012>,  <34.250259, 29.153355, 28.526680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867573, 29.444061, 27.986012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199223, 29.660173, 28.043480>,  <34.398212, 29.789841, 28.077961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199223, 29.660173, 28.043480>,  <33.867573, 29.444061, 27.986012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199223, 29.660173, 28.043480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066616, 0.159680, -0.984919,
		-0.555075, 0.826195, 0.096404,
		0.829129, 0.540281, 0.143672,
		34.447960, 29.822258, 28.086582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785786, 30.021072, 27.567835>,  <33.867573, 29.444061, 27.986012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785786, 30.021072, 27.567835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175072, 29.973217, 27.646360>,  <34.408642, 29.944504, 27.693476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.175072, 29.973217, 27.646360>,  <33.785786, 30.021072, 27.567835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175072, 29.973217, 27.646360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204229, 0.057830, -0.977213,
		0.105558, 0.991132, 0.080715,
		0.973215, -0.119637, 0.196314,
		34.467037, 29.937326, 27.705254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111095, 30.576462, 27.240953>,  <33.785786, 30.021072, 27.567835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111095, 30.576462, 27.240953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371143, 30.276165, 27.287830>,  <34.527172, 30.095987, 27.315956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371143, 30.276165, 27.287830>,  <34.111095, 30.576462, 27.240953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371143, 30.276165, 27.287830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256115, 0.071306, -0.964013,
		0.715367, 0.656738, 0.238634,
		0.650119, -0.750741, 0.117191,
		34.566177, 30.050943, 27.322989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413776, 30.678703, 26.625223>,  <34.111095, 30.576462, 27.240953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413776, 30.678703, 26.625223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569374, 30.331488, 26.748636>,  <34.662735, 30.123159, 26.822683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569374, 30.331488, 26.748636>,  <34.413776, 30.678703, 26.625223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569374, 30.331488, 26.748636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231793, -0.231911, -0.944716,
		0.891601, 0.439009, 0.110992,
		0.388998, -0.868037, 0.308531,
		34.686073, 30.071075, 26.841196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617943, 31.413294, 26.435951>,  <34.413776, 30.678703, 26.625223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617943, 31.413294, 26.435951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433472, 31.703918, 26.232218>,  <34.322788, 31.878294, 26.109978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.433472, 31.703918, 26.232218>,  <34.617943, 31.413294, 26.435951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433472, 31.703918, 26.232218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390340, 0.349370, 0.851807,
		0.796837, 0.591649, 0.122484,
		-0.461178, 0.726562, -0.509336,
		34.295116, 31.921886, 26.079416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686440, 32.030731, 26.884357>,  <34.617943, 31.413294, 26.435951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686440, 32.030731, 26.884357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402840, 32.139839, 26.624228>,  <34.232681, 32.205303, 26.468149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402840, 32.139839, 26.624228>,  <34.686440, 32.030731, 26.884357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402840, 32.139839, 26.624228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532555, 0.397421, 0.747289,
		0.462288, 0.876159, -0.136506,
		-0.708995, 0.272766, -0.650326,
		34.190140, 32.221668, 26.429131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639118, 32.691830, 26.954718>,  <34.686440, 32.030731, 26.884357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639118, 32.691830, 26.954718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294346, 32.580288, 26.785339>,  <34.087482, 32.513363, 26.683712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294346, 32.580288, 26.785339>,  <34.639118, 32.691830, 26.954718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294346, 32.580288, 26.785339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507017, 0.472340, 0.720992,
		-0.001041, 0.836143, -0.548510,
		-0.861935, -0.278854, -0.423447,
		34.035767, 32.496632, 26.658306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267467, 33.256283, 27.038271>,  <34.639118, 32.691830, 26.954718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267467, 33.256283, 27.038271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000633, 32.969799, 26.956259>,  <33.840534, 32.797909, 26.907051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.000633, 32.969799, 26.956259>,  <34.267467, 33.256283, 27.038271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000633, 32.969799, 26.956259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623295, 0.385830, 0.680175,
		-0.408041, 0.581531, -0.703793,
		-0.667087, -0.716210, -0.205031,
		33.800507, 32.754936, 26.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599983, 33.641617, 26.870094>,  <34.267467, 33.256283, 27.038271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599983, 33.641617, 26.870094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511543, 33.264874, 26.971298>,  <33.458477, 33.038826, 27.032021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511543, 33.264874, 26.971298>,  <33.599983, 33.641617, 26.870094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511543, 33.264874, 26.971298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671066, 0.335178, 0.661306,
		-0.707661, -0.023568, -0.706159,
		-0.221104, -0.941860, 0.253008,
		33.445213, 32.982315, 27.047201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901829, 33.584270, 26.864731>,  <33.599983, 33.641617, 26.870094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901829, 33.584270, 26.864731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016479, 33.288223, 27.108065>,  <33.085270, 33.110596, 27.254065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016479, 33.288223, 27.108065>,  <32.901829, 33.584270, 26.864731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016479, 33.288223, 27.108065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725950, 0.246570, 0.642027,
		-0.625173, -0.625642, -0.466616,
		0.286625, -0.740119, 0.608334,
		33.102467, 33.066189, 27.290565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285305, 33.498791, 27.263220>,  <32.901829, 33.584270, 26.864731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285305, 33.498791, 27.263220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561092, 33.305328, 27.478891>,  <32.726562, 33.189251, 27.608295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561092, 33.305328, 27.478891>,  <32.285305, 33.498791, 27.263220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561092, 33.305328, 27.478891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599289, 0.037170, 0.799669,
		-0.406807, -0.874468, -0.264222,
		0.689464, -0.483656, 0.539180,
		32.767933, 33.160233, 27.640646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881954, 32.965405, 27.612804>,  <32.285305, 33.498791, 27.263220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881954, 32.965405, 27.612804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225994, 32.997929, 27.814245>,  <32.432419, 33.017445, 27.935110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.225994, 32.997929, 27.814245>,  <31.881954, 32.965405, 27.612804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225994, 32.997929, 27.814245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481369, -0.197401, 0.854000,
		0.168852, -0.976945, -0.130644,
		0.860101, 0.081311, 0.503603,
		32.484024, 33.022324, 27.965326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838266, 32.435486, 28.271017>,  <31.881954, 32.965405, 27.612804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838266, 32.435486, 28.271017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149906, 32.671547, 28.355610>,  <32.336891, 32.813183, 28.406366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.149906, 32.671547, 28.355610>,  <31.838266, 32.435486, 28.271017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149906, 32.671547, 28.355610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179813, -0.112804, 0.977212,
		0.600559, -0.799372, 0.018231,
		0.779099, 0.590152, 0.211483,
		32.383636, 32.848591, 28.419054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018196, 32.159317, 28.940502>,  <31.838266, 32.435486, 28.271017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018196, 32.159317, 28.940502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162910, 32.530846, 28.908493>,  <32.249741, 32.753761, 28.889288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.162910, 32.530846, 28.908493>,  <32.018196, 32.159317, 28.940502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162910, 32.530846, 28.908493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306691, 0.199639, 0.930637,
		0.880369, -0.312153, 0.357087,
		0.361789, 0.928819, -0.080022,
		32.271446, 32.809490, 28.884487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639690, 32.279564, 29.364290>,  <32.018196, 32.159317, 28.940502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639690, 32.279564, 29.364290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465073, 32.635944, 29.314272>,  <32.360302, 32.849773, 29.284260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465073, 32.635944, 29.314272>,  <32.639690, 32.279564, 29.364290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465073, 32.635944, 29.314272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293996, -0.009907, 0.955755,
		0.850292, 0.453991, 0.266261,
		-0.436543, 0.890951, -0.125048,
		32.334110, 32.903229, 29.276758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698418, 32.592113, 29.957605>,  <32.639690, 32.279564, 29.364290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698418, 32.592113, 29.957605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426014, 32.835041, 29.793955>,  <32.262573, 32.980797, 29.695765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426014, 32.835041, 29.793955>,  <32.698418, 32.592113, 29.957605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426014, 32.835041, 29.793955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506091, 0.013451, 0.862375,
		0.529244, 0.794341, 0.298200,
		-0.681009, 0.607323, -0.409128,
		32.221710, 33.017239, 29.671217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637897, 33.131886, 30.304789>,  <32.698418, 32.592113, 29.957605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637897, 33.131886, 30.304789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291813, 33.106899, 30.105789>,  <32.084164, 33.091908, 29.986389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291813, 33.106899, 30.105789>,  <32.637897, 33.131886, 30.304789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291813, 33.106899, 30.105789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499583, 0.022843, 0.865965,
		-0.042727, 0.997786, -0.050970,
		-0.865212, -0.062464, -0.497500,
		32.032249, 33.088161, 29.956539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183479, 33.143681, 30.657242>,  <32.637897, 33.131886, 30.304789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183479, 33.143681, 30.657242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257122, 32.846905, 30.399366>,  <33.301308, 32.668839, 30.244640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257122, 32.846905, 30.399366>,  <33.183479, 33.143681, 30.657242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257122, 32.846905, 30.399366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175114, 0.620650, -0.764283,
		0.967182, 0.253601, -0.015661,
		0.184103, -0.741944, -0.644690,
		33.312351, 32.624321, 30.205959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654015, 33.350742, 30.246368>,  <33.183479, 33.143681, 30.657242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654015, 33.350742, 30.246368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486057, 33.053986, 30.037264>,  <33.385281, 32.875931, 29.911800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486057, 33.053986, 30.037264>,  <33.654015, 33.350742, 30.246368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486057, 33.053986, 30.037264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129463, 0.619072, -0.774589,
		0.898291, -0.257568, -0.355994,
		-0.419896, -0.741895, -0.522762,
		33.360088, 32.831417, 29.880436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722847, 34.120621, 30.101507>,  <33.654015, 33.350742, 30.246368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722847, 34.120621, 30.101507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.868206, 34.257069, 30.448282>,  <33.955421, 34.338936, 30.656347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.868206, 34.257069, 30.448282>,  <33.722847, 34.120621, 30.101507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868206, 34.257069, 30.448282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931604, -0.140512, -0.335216,
		0.007468, 0.929460, -0.368848,
		0.363397, 0.341117, 0.866938,
		33.977226, 34.359406, 30.708364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190868, 34.734421, 30.004450>,  <33.722847, 34.120621, 30.101507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190868, 34.734421, 30.004450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.278118, 34.502834, 30.318705>,  <34.330467, 34.363884, 30.507257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.278118, 34.502834, 30.318705>,  <34.190868, 34.734421, 30.004450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278118, 34.502834, 30.318705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904720, -0.181890, -0.385224,
		0.365929, 0.794808, 0.484124,
		0.218122, -0.578962, 0.785637,
		34.343555, 34.329147, 30.554396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707809, 34.971497, 30.391731>,  <34.190868, 34.734421, 30.004450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707809, 34.971497, 30.391731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725609, 34.572231, 30.408194>,  <34.736286, 34.332672, 30.418070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725609, 34.572231, 30.408194>,  <34.707809, 34.971497, 30.391731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725609, 34.572231, 30.408194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859904, 0.017297, -0.510163,
		0.508513, 0.058089, 0.859093,
		0.044495, -0.998162, 0.041155,
		34.738956, 34.272781, 30.420540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402016, 34.897690, 30.440096>,  <34.707809, 34.971497, 30.391731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402016, 34.897690, 30.440096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279140, 34.527027, 30.353426>,  <35.205414, 34.304630, 30.301424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279140, 34.527027, 30.353426>,  <35.402016, 34.897690, 30.440096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279140, 34.527027, 30.353426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794642, -0.124493, -0.594176,
		0.523621, -0.354701, 0.774602,
		-0.307187, -0.926655, -0.216673,
		35.186985, 34.249031, 30.288424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960999, 34.439003, 30.435806>,  <35.402016, 34.897690, 30.440096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960999, 34.439003, 30.435806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703503, 34.234715, 30.207853>,  <35.549004, 34.112141, 30.071081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703503, 34.234715, 30.207853>,  <35.960999, 34.439003, 30.435806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703503, 34.234715, 30.207853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682438, -0.046196, -0.729482,
		0.346235, -0.858505, 0.378273,
		-0.643739, -0.510720, -0.569882,
		35.510380, 34.081497, 30.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330635, 33.841335, 30.110188>,  <35.960999, 34.439003, 30.435806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330635, 33.841335, 30.110188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004520, 33.868698, 29.880188>,  <35.808849, 33.885117, 29.742188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004520, 33.868698, 29.880188>,  <36.330635, 33.841335, 30.110188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004520, 33.868698, 29.880188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542470, -0.257127, -0.799757,
		-0.202556, -0.963953, 0.172525,
		-0.815290, 0.068406, -0.574999,
		35.759933, 33.889221, 29.707687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291676, 33.187511, 29.714413>,  <36.330635, 33.841335, 30.110188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291676, 33.187511, 29.714413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094990, 33.474445, 29.516972>,  <35.976978, 33.646606, 29.398506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094990, 33.474445, 29.516972>,  <36.291676, 33.187511, 29.714413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094990, 33.474445, 29.516972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535119, -0.198251, -0.821185,
		-0.686923, -0.667926, -0.286377,
		-0.491716, 0.717336, -0.493603,
		35.947475, 33.689648, 29.368891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215836, 32.896679, 29.074875>,  <36.291676, 33.187511, 29.714413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215836, 32.896679, 29.074875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165909, 33.286652, 29.001198>,  <36.135952, 33.520634, 28.956991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165909, 33.286652, 29.001198>,  <36.215836, 32.896679, 29.074875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165909, 33.286652, 29.001198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429104, -0.114341, -0.895989,
		-0.894589, -0.190875, -0.404075,
		-0.124819, 0.974932, -0.184193,
		36.128464, 33.579132, 28.945940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831543, 32.992466, 28.387403>,  <36.215836, 32.896679, 29.074875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831543, 32.992466, 28.387403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014656, 33.335251, 28.482103>,  <36.124523, 33.540924, 28.538923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014656, 33.335251, 28.482103>,  <35.831543, 32.992466, 28.387403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014656, 33.335251, 28.482103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311198, 0.094996, -0.945585,
		-0.832823, 0.506546, -0.223198,
		0.457780, 0.856964, 0.236750,
		36.151989, 33.592339, 28.553129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750069, 33.355675, 27.913984>,  <35.831543, 32.992466, 28.387403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750069, 33.355675, 27.913984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071049, 33.538532, 28.067398>,  <36.263638, 33.648247, 28.159447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071049, 33.538532, 28.067398>,  <35.750069, 33.355675, 27.913984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071049, 33.538532, 28.067398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421840, 0.020013, -0.906449,
		-0.422056, 0.889166, -0.176783,
		0.802446, 0.457146, 0.383533,
		36.311783, 33.675674, 28.182457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934174, 33.697704, 27.312275>,  <35.750069, 33.355675, 27.913984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934174, 33.697704, 27.312275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263573, 33.758305, 27.530964>,  <36.461212, 33.794662, 27.662178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263573, 33.758305, 27.530964>,  <35.934174, 33.697704, 27.312275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263573, 33.758305, 27.530964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564882, -0.129638, -0.814925,
		-0.052584, 0.979919, -0.192335,
		0.823495, 0.151498, 0.546722,
		36.510620, 33.803753, 27.694981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339027, 34.336708, 26.997107>,  <35.934174, 33.697704, 27.312275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339027, 34.336708, 26.997107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604336, 34.131401, 27.214960>,  <36.763523, 34.008217, 27.345673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604336, 34.131401, 27.214960>,  <36.339027, 34.336708, 26.997107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604336, 34.131401, 27.214960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607516, -0.055705, -0.792352,
		0.437024, 0.856421, 0.274868,
		0.663276, -0.513264, 0.544633,
		36.803318, 33.977421, 27.378349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069572, 34.653534, 26.753672>,  <36.339027, 34.336708, 26.997107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069572, 34.653534, 26.753672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143070, 34.295395, 26.915947>,  <37.187168, 34.080509, 27.013311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143070, 34.295395, 26.915947>,  <37.069572, 34.653534, 26.753672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143070, 34.295395, 26.915947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609102, -0.220219, -0.761905,
		0.771513, 0.387102, 0.504896,
		0.183747, -0.895352, 0.405686,
		37.198193, 34.026791, 27.037653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747654, 34.601746, 26.702377>,  <37.069572, 34.653534, 26.753672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747654, 34.601746, 26.702377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599304, 34.232738, 26.745117>,  <37.510296, 34.011333, 26.770761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599304, 34.232738, 26.745117>,  <37.747654, 34.601746, 26.702377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599304, 34.232738, 26.745117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492198, -0.292823, -0.819753,
		0.787523, -0.251436, 0.562661,
		-0.370875, -0.922515, 0.106849,
		37.488041, 33.955982, 26.777172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302917, 34.209805, 26.545319>,  <37.747654, 34.601746, 26.702377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302917, 34.209805, 26.545319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033840, 33.913982, 26.536041>,  <37.872395, 33.736488, 26.530476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033840, 33.913982, 26.536041>,  <38.302917, 34.209805, 26.545319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033840, 33.913982, 26.536041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599118, -0.526022, -0.603622,
		0.434214, -0.419946, 0.796934,
		-0.672693, -0.739558, -0.023191,
		37.832031, 33.692116, 26.529083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464905, 33.490582, 26.899757>,  <38.302917, 34.209805, 26.545319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464905, 33.490582, 26.899757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200249, 33.418629, 26.608587>,  <38.041454, 33.375458, 26.433886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200249, 33.418629, 26.608587>,  <38.464905, 33.490582, 26.899757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200249, 33.418629, 26.608587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626681, -0.665700, -0.405111,
		-0.411706, -0.724214, 0.553184,
		-0.661641, -0.179883, -0.727923,
		38.001755, 33.364662, 26.390209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512783, 32.708935, 26.763748>,  <38.464905, 33.490582, 26.899757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512783, 32.708935, 26.763748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339890, 32.869930, 26.440966>,  <38.236153, 32.966526, 26.247295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.339890, 32.869930, 26.440966>,  <38.512783, 32.708935, 26.763748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339890, 32.869930, 26.440966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506574, -0.631946, -0.586538,
		-0.746029, -0.662303, 0.069255,
		-0.432231, 0.402491, -0.806956,
		38.210220, 32.990677, 26.198879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468605, 32.133083, 26.296642>,  <38.512783, 32.708935, 26.763748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468605, 32.133083, 26.296642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435097, 32.458004, 26.065765>,  <38.414993, 32.652958, 25.927240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.435097, 32.458004, 26.065765>,  <38.468605, 32.133083, 26.296642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435097, 32.458004, 26.065765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644110, -0.397819, -0.653347,
		-0.760332, -0.426506, -0.489885,
		-0.083771, 0.812301, -0.577191,
		38.409966, 32.701694, 25.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577789, 31.863394, 25.685469>,  <38.468605, 32.133083, 26.296642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577789, 31.863394, 25.685469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617142, 32.253513, 25.606359>,  <38.640751, 32.487583, 25.558893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617142, 32.253513, 25.606359>,  <38.577789, 31.863394, 25.685469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617142, 32.253513, 25.606359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643410, -0.213949, -0.735017,
		-0.759174, -0.054940, -0.648565,
		0.098378, 0.975299, -0.197774,
		38.646656, 32.546104, 25.547028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483658, 31.939041, 24.915030>,  <38.577789, 31.863394, 25.685469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483658, 31.939041, 24.915030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677078, 32.256977, 25.061680>,  <38.793129, 32.447739, 25.149670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677078, 32.256977, 25.061680>,  <38.483658, 31.939041, 24.915030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677078, 32.256977, 25.061680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647853, -0.043325, -0.760533,
		-0.588616, 0.605273, -0.535888,
		0.483547, 0.794838, 0.366626,
		38.822144, 32.495430, 25.171667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528725, 32.386204, 24.335506>,  <38.483658, 31.939041, 24.915030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528725, 32.386204, 24.335506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814560, 32.489265, 24.595652>,  <38.986061, 32.551102, 24.751740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.814560, 32.489265, 24.595652>,  <38.528725, 32.386204, 24.335506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814560, 32.489265, 24.595652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588294, 0.281702, -0.757994,
		-0.378509, 0.924261, 0.049726,
		0.714592, 0.257654, 0.650364,
		39.028938, 32.566563, 24.790760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867901, 32.833210, 24.000593>,  <38.528725, 32.386204, 24.335506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867901, 32.833210, 24.000593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140118, 32.757294, 24.283676>,  <39.303448, 32.711746, 24.453526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.140118, 32.757294, 24.283676>,  <38.867901, 32.833210, 24.000593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140118, 32.757294, 24.283676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731906, 0.221370, -0.644444,
		-0.034358, 0.956544, 0.289558,
		0.680538, -0.189787, 0.707706,
		39.344280, 32.700359, 24.495989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384487, 33.367561, 23.882994>,  <38.867901, 32.833210, 24.000593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384487, 33.367561, 23.882994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.559265, 33.076897, 24.095049>,  <39.664131, 32.902500, 24.222282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.559265, 33.076897, 24.095049>,  <39.384487, 33.367561, 23.882994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559265, 33.076897, 24.095049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807961, 0.058047, -0.586370,
		0.395318, 0.684542, 0.612475,
		0.436947, -0.726659, 0.530136,
		39.690350, 32.858898, 24.254089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933903, 33.630508, 24.155134>,  <39.384487, 33.367561, 23.882994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933903, 33.630508, 24.155134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978474, 33.237240, 24.097237>,  <40.005215, 33.001278, 24.062498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978474, 33.237240, 24.097237>,  <39.933903, 33.630508, 24.155134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978474, 33.237240, 24.097237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746800, 0.178936, -0.640524,
		0.655647, -0.036725, 0.754174,
		0.111426, -0.983175, -0.144746,
		40.011902, 32.942287, 24.053812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523468, 33.636543, 23.921743>,  <39.933903, 33.630508, 24.155134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523468, 33.636543, 23.921743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.411449, 33.258984, 23.851732>,  <40.344238, 33.032448, 23.809727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.411449, 33.258984, 23.851732>,  <40.523468, 33.636543, 23.921743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411449, 33.258984, 23.851732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677373, -0.065095, -0.732754,
		0.680251, -0.323760, 0.657600,
		-0.280043, -0.943897, -0.175025,
		40.327435, 32.975815, 23.799225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100018, 33.397499, 23.702290>,  <40.523468, 33.636543, 23.921743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100018, 33.397499, 23.702290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835773, 33.129078, 23.567659>,  <40.677227, 32.968025, 23.486881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.835773, 33.129078, 23.567659>,  <41.100018, 33.397499, 23.702290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835773, 33.129078, 23.567659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533853, -0.104699, -0.839070,
		0.527819, -0.733983, 0.427407,
		-0.660612, -0.671049, -0.336577,
		40.637589, 32.927765, 23.466686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486195, 32.723080, 23.454674>,  <41.100018, 33.397499, 23.702290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486195, 32.723080, 23.454674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136257, 32.771717, 23.267115>,  <40.926296, 32.800900, 23.154579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136257, 32.771717, 23.267115>,  <41.486195, 32.723080, 23.454674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136257, 32.771717, 23.267115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468506, -0.033594, -0.882821,
		-0.123092, -0.992012, -0.027575,
		-0.874843, 0.121587, -0.468899,
		40.873806, 32.808193, 23.126446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480324, 32.127834, 23.823572>,  <41.486195, 32.723080, 23.454674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480324, 32.127834, 23.823572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.767868, 31.898582, 23.980932>,  <41.940395, 31.761030, 24.075348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.767868, 31.898582, 23.980932>,  <41.480324, 32.127834, 23.823572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767868, 31.898582, 23.980932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523452, -0.073894, 0.848845,
		-0.457429, -0.816125, -0.353125,
		0.718858, -0.573131, 0.393402,
		41.983524, 31.726643, 24.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126228, 31.644733, 24.271004>,  <41.480324, 32.127834, 23.823572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126228, 31.644733, 24.271004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.499771, 31.665899, 24.412489>,  <41.723896, 31.678598, 24.497379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.499771, 31.665899, 24.412489>,  <41.126228, 31.644733, 24.271004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499771, 31.665899, 24.412489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344365, -0.133990, 0.929225,
		0.096567, -0.989569, -0.106904,
		0.933857, 0.052918, 0.353712,
		41.779926, 31.681774, 24.518602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198219, 30.994673, 24.656963>,  <41.126228, 31.644733, 24.271004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198219, 30.994673, 24.656963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484852, 31.242676, 24.784781>,  <41.656830, 31.391478, 24.861471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.484852, 31.242676, 24.784781>,  <41.198219, 30.994673, 24.656963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484852, 31.242676, 24.784781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118523, -0.343224, 0.931745,
		0.687362, -0.705542, -0.172462,
		0.716579, 0.620006, 0.319542,
		41.699825, 31.428677, 24.880644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666264, 30.557461, 24.834379>,  <41.198219, 30.994673, 24.656963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666264, 30.557461, 24.834379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763210, 30.899593, 25.017534>,  <41.821377, 31.104874, 25.127428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.763210, 30.899593, 25.017534>,  <41.666264, 30.557461, 24.834379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763210, 30.899593, 25.017534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082940, -0.451965, 0.888171,
		0.966633, -0.253242, -0.038600,
		0.242368, 0.855334, 0.457889,
		41.835922, 31.156193, 25.154902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068188, 30.426706, 25.438620>,  <41.666264, 30.557461, 24.834379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068188, 30.426706, 25.438620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902462, 30.781937, 25.518280>,  <41.803024, 30.995075, 25.566076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.902462, 30.781937, 25.518280>,  <42.068188, 30.426706, 25.438620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902462, 30.781937, 25.518280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293916, -0.337649, 0.894207,
		0.861367, 0.311953, 0.400915,
		-0.414319, 0.888076, 0.199152,
		41.778168, 31.048359, 25.578026>
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
