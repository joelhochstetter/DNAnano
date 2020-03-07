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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.499130, 47.781227, 55.675659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892410, 47.838722, 55.720665>,  <37.128380, 47.873219, 55.747669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892410, 47.838722, 55.720665>,  <36.499130, 47.781227, 55.675659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892410, 47.838722, 55.720665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163037, -0.414304, -0.895417,
		-0.082086, 0.898717, -0.430778,
		0.983199, 0.143734, 0.112515,
		37.187370, 47.881844, 55.754421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788658, 48.242172, 55.117702>,  <36.499130, 47.781227, 55.675659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788658, 48.242172, 55.117702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092682, 48.028503, 55.265739>,  <37.275097, 47.900303, 55.354561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092682, 48.028503, 55.265739>,  <36.788658, 48.242172, 55.117702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092682, 48.028503, 55.265739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227338, -0.314952, -0.921478,
		0.608788, 0.784516, -0.117946,
		0.760062, -0.534172, 0.370090,
		37.320702, 47.868252, 55.376766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318378, 48.425205, 54.748852>,  <36.788658, 48.242172, 55.117702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318378, 48.425205, 54.748852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435081, 48.084518, 54.922958>,  <37.505104, 47.880108, 55.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435081, 48.084518, 54.922958>,  <37.318378, 48.425205, 54.748852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435081, 48.084518, 54.922958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252973, -0.370154, -0.893863,
		0.922432, 0.370906, 0.107463,
		0.291761, -0.851713, 0.435271,
		37.522610, 47.829006, 55.053539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829060, 48.285572, 54.364872>,  <37.318378, 48.425205, 54.748852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829060, 48.285572, 54.364872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757568, 47.927887, 54.529037>,  <37.714676, 47.713276, 54.627537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757568, 47.927887, 54.529037>,  <37.829060, 48.285572, 54.364872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757568, 47.927887, 54.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495977, -0.442132, -0.747346,
		0.849743, 0.069984, 0.522531,
		-0.178725, -0.894215, 0.410410,
		37.703949, 47.659622, 54.652161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508331, 47.823963, 54.305698>,  <37.829060, 48.285572, 54.364872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508331, 47.823963, 54.305698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230530, 47.547935, 54.387146>,  <38.063847, 47.382317, 54.436016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230530, 47.547935, 54.387146>,  <38.508331, 47.823963, 54.305698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230530, 47.547935, 54.387146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546500, -0.690034, -0.474542,
		0.467972, -0.218296, 0.856358,
		-0.694507, -0.690072, 0.203618,
		38.022179, 47.340916, 54.448231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820084, 47.215771, 54.471642>,  <38.508331, 47.823963, 54.305698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820084, 47.215771, 54.471642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456764, 47.094002, 54.356880>,  <38.238773, 47.020939, 54.288025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456764, 47.094002, 54.356880>,  <38.820084, 47.215771, 54.471642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456764, 47.094002, 54.356880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415372, -0.575155, -0.704744,
		0.049530, -0.759290, 0.648864,
		-0.908302, -0.304426, -0.286900,
		38.184273, 47.002674, 54.270809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914127, 46.487156, 54.407818>,  <38.820084, 47.215771, 54.471642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914127, 46.487156, 54.407818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580116, 46.554253, 54.198212>,  <38.379711, 46.594513, 54.072449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580116, 46.554253, 54.198212>,  <38.914127, 46.487156, 54.407818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580116, 46.554253, 54.198212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320955, -0.625064, -0.711536,
		-0.446900, -0.762337, 0.468106,
		-0.835026, 0.167744, -0.524017,
		38.329609, 46.604576, 54.041008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758327, 45.876873, 54.094704>,  <38.914127, 46.487156, 54.407818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758327, 45.876873, 54.094704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517029, 46.110817, 53.877804>,  <38.372250, 46.251183, 53.747665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517029, 46.110817, 53.877804>,  <38.758327, 45.876873, 54.094704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517029, 46.110817, 53.877804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289768, -0.472706, -0.832216,
		-0.743053, -0.659158, 0.115686,
		-0.603248, 0.584858, -0.542248,
		38.336056, 46.286274, 53.715130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459305, 45.401794, 53.531353>,  <38.758327, 45.876873, 54.094704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459305, 45.401794, 53.531353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439430, 45.781292, 53.406509>,  <38.427505, 46.008991, 53.331604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439430, 45.781292, 53.406509>,  <38.459305, 45.401794, 53.531353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439430, 45.781292, 53.406509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264633, -0.288821, -0.920083,
		-0.963069, -0.128306, -0.236720,
		-0.049682, 0.948747, -0.312109,
		38.424526, 46.065914, 53.312878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041039, 45.331169, 52.893963>,  <38.459305, 45.401794, 53.531353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041039, 45.331169, 52.893963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228325, 45.684349, 52.880268>,  <38.340698, 45.896255, 52.872051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228325, 45.684349, 52.880268>,  <38.041039, 45.331169, 52.893963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228325, 45.684349, 52.880268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304903, -0.197813, -0.931614,
		-0.829342, 0.425757, -0.361834,
		0.468216, 0.882950, -0.034240,
		38.368790, 45.949234, 52.869995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880455, 45.557804, 52.240208>,  <38.041039, 45.331169, 52.893963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880455, 45.557804, 52.240208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203682, 45.759468, 52.362091>,  <38.397617, 45.880466, 52.435219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203682, 45.759468, 52.362091>,  <37.880455, 45.557804, 52.240208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203682, 45.759468, 52.362091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414034, -0.118120, -0.902565,
		-0.419045, 0.855495, -0.304188,
		0.808070, 0.504159, 0.304706,
		38.446102, 45.910717, 52.453503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936348, 46.136608, 51.770134>,  <37.880455, 45.557804, 52.240208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936348, 46.136608, 51.770134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285255, 46.071320, 51.954529>,  <38.494598, 46.032146, 52.065166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285255, 46.071320, 51.954529>,  <37.936348, 46.136608, 51.770134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285255, 46.071320, 51.954529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443101, -0.135068, -0.886238,
		0.206918, 0.977300, -0.045492,
		0.872265, -0.163221, 0.460991,
		38.546936, 46.022354, 52.092827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491699, 46.422256, 51.366077>,  <37.936348, 46.136608, 51.770134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491699, 46.422256, 51.366077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692131, 46.179726, 51.613068>,  <38.812389, 46.034206, 51.761261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692131, 46.179726, 51.613068>,  <38.491699, 46.422256, 51.366077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692131, 46.179726, 51.613068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589563, -0.283152, -0.756465,
		0.633510, 0.743093, 0.215589,
		0.501079, -0.606332, 0.617480,
		38.842453, 45.997826, 51.798313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129555, 46.559364, 51.203213>,  <38.491699, 46.422256, 51.366077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129555, 46.559364, 51.203213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156433, 46.202415, 51.381721>,  <39.172562, 45.988247, 51.488827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156433, 46.202415, 51.381721>,  <39.129555, 46.559364, 51.203213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156433, 46.202415, 51.381721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499574, -0.357082, -0.789252,
		0.863661, 0.275980, 0.421812,
		0.067196, -0.892372, 0.446270,
		39.176594, 45.934704, 51.515602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805836, 46.328522, 51.246586>,  <39.129555, 46.559364, 51.203213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805836, 46.328522, 51.246586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613647, 45.979733, 51.284134>,  <39.498333, 45.770458, 51.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613647, 45.979733, 51.284134>,  <39.805836, 46.328522, 51.246586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613647, 45.979733, 51.284134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663041, -0.431221, -0.611903,
		0.574043, -0.231759, 0.785342,
		-0.480470, -0.871972, 0.093874,
		39.469505, 45.718140, 51.312298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337246, 45.912956, 51.155182>,  <39.805836, 46.328522, 51.246586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337246, 45.912956, 51.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016640, 45.675076, 51.130188>,  <39.824276, 45.532345, 51.115192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016640, 45.675076, 51.130188>,  <40.337246, 45.912956, 51.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016640, 45.675076, 51.130188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468046, -0.558881, -0.684532,
		0.372173, -0.577906, 0.726300,
		-0.801511, -0.594706, -0.062487,
		39.776188, 45.496662, 51.111443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586109, 45.306618, 51.077438>,  <40.337246, 45.912956, 51.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586109, 45.306618, 51.077438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210960, 45.228836, 50.962494>,  <39.985870, 45.182167, 50.893528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210960, 45.228836, 50.962494>,  <40.586109, 45.306618, 51.077438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210960, 45.228836, 50.962494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346544, -0.565983, -0.748044,
		-0.017183, -0.801157, 0.598208,
		-0.937876, -0.194452, -0.287362,
		39.929596, 45.170502, 50.876286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643555, 44.582150, 50.807655>,  <40.586109, 45.306618, 51.077438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643555, 44.582150, 50.807655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311783, 44.730927, 50.640942>,  <40.112720, 44.820190, 50.540913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311783, 44.730927, 50.640942>,  <40.643555, 44.582150, 50.807655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311783, 44.730927, 50.640942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142255, -0.580869, -0.801471,
		-0.540194, -0.724053, 0.428880,
		-0.829430, 0.371939, -0.416782,
		40.062954, 44.842510, 50.515907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310005, 44.019398, 50.512886>,  <40.643555, 44.582150, 50.807655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310005, 44.019398, 50.512886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166954, 44.336399, 50.315285>,  <40.081123, 44.526600, 50.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166954, 44.336399, 50.315285>,  <40.310005, 44.019398, 50.512886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166954, 44.336399, 50.315285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264183, -0.421526, -0.867481,
		-0.895716, -0.440746, -0.058615,
		-0.357631, 0.792502, -0.494005,
		40.059666, 44.574150, 50.167084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166466, 43.795284, 49.845058>,  <40.310005, 44.019398, 50.512886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166466, 43.795284, 49.845058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148628, 44.185970, 49.761112>,  <40.137928, 44.420380, 49.710743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148628, 44.185970, 49.761112>,  <40.166466, 43.795284, 49.845058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148628, 44.185970, 49.761112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522189, -0.156307, -0.838384,
		-0.851664, -0.146975, -0.503058,
		-0.044590, 0.976712, -0.209870,
		40.135250, 44.478985, 49.698151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894360, 43.858341, 49.162254>,  <40.166466, 43.795284, 49.845058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894360, 43.858341, 49.162254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101753, 44.194912, 49.223152>,  <40.226189, 44.396854, 49.259689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101753, 44.194912, 49.223152>,  <39.894360, 43.858341, 49.162254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101753, 44.194912, 49.223152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459190, -0.123786, -0.879671,
		-0.721334, 0.526001, -0.450556,
		0.518481, 0.841427, 0.152244,
		40.257298, 44.447342, 49.268826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042301, 44.100609, 48.417919>,  <39.894360, 43.858341, 49.162254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042301, 44.100609, 48.417919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315628, 44.270927, 48.655163>,  <40.479626, 44.373119, 48.797508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315628, 44.270927, 48.655163>,  <40.042301, 44.100609, 48.417919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315628, 44.270927, 48.655163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598159, 0.139341, -0.789171,
		-0.418669, 0.894026, -0.159479,
		0.683317, 0.425795, 0.593107,
		40.520622, 44.398666, 48.833096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199287, 44.726933, 48.062477>,  <40.042301, 44.100609, 48.417919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199287, 44.726933, 48.062477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490631, 44.644058, 48.323727>,  <40.665436, 44.594334, 48.480476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490631, 44.644058, 48.323727>,  <40.199287, 44.726933, 48.062477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490631, 44.644058, 48.323727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684369, 0.266731, -0.678597,
		-0.033613, 0.941238, 0.336067,
		0.728361, -0.207184, 0.653120,
		40.709141, 44.581902, 48.519661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675846, 45.230843, 47.989315>,  <40.199287, 44.726933, 48.062477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675846, 45.230843, 47.989315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888466, 44.964382, 48.198582>,  <41.016037, 44.804508, 48.324142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888466, 44.964382, 48.198582>,  <40.675846, 45.230843, 47.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888466, 44.964382, 48.198582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769184, 0.120974, -0.627472,
		0.354699, 0.735945, 0.576693,
		0.531550, -0.666146, 0.523167,
		41.047932, 44.764538, 48.355534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285458, 45.486656, 48.066525>,  <40.675846, 45.230843, 47.989315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285458, 45.486656, 48.066525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318382, 45.088528, 48.086803>,  <41.338135, 44.849651, 48.098972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318382, 45.088528, 48.086803>,  <41.285458, 45.486656, 48.066525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318382, 45.088528, 48.086803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742060, 0.027248, -0.669780,
		0.665261, 0.092750, 0.740827,
		0.082308, -0.995317, 0.050700,
		41.343075, 44.789932, 48.102013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052818, 45.331741, 48.128410>,  <41.285458, 45.486656, 48.066525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052818, 45.331741, 48.128410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903030, 44.987347, 47.990726>,  <41.813160, 44.780712, 47.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903030, 44.987347, 47.990726>,  <42.052818, 45.331741, 48.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903030, 44.987347, 47.990726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624716, 0.040059, -0.779824,
		0.685204, -0.507055, 0.522869,
		-0.374468, -0.860982, -0.344214,
		41.790691, 44.729053, 47.887463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619808, 44.902050, 47.929329>,  <42.052818, 45.331741, 48.128410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619808, 44.902050, 47.929329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294868, 44.771858, 47.735771>,  <42.099907, 44.693741, 47.619637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294868, 44.771858, 47.735771>,  <42.619808, 44.902050, 47.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294868, 44.771858, 47.735771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472879, 0.117964, -0.873195,
		0.341292, -0.938161, 0.058087,
		-0.812345, -0.325483, -0.483897,
		42.051167, 44.674213, 47.590603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925289, 44.409885, 47.289799>,  <42.619808, 44.902050, 47.929329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925289, 44.409885, 47.289799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545471, 44.490631, 47.193787>,  <42.317581, 44.539078, 47.136181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545471, 44.490631, 47.193787>,  <42.925289, 44.409885, 47.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545471, 44.490631, 47.193787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215715, -0.135192, -0.967052,
		-0.227666, -0.970038, 0.084825,
		-0.949545, 0.201867, -0.240030,
		42.260609, 44.551189, 47.121777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726398, 43.972599, 46.703773>,  <42.925289, 44.409885, 47.289799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726398, 43.972599, 46.703773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462570, 44.273136, 46.712276>,  <42.304272, 44.453457, 46.717381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462570, 44.273136, 46.712276>,  <42.726398, 43.972599, 46.703773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462570, 44.273136, 46.712276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028006, 0.003701, -0.999601,
		-0.751121, -0.659902, 0.018601,
		-0.659570, 0.751342, 0.021261,
		42.264698, 44.498539, 46.718655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203220, 43.770660, 46.171211>,  <42.726398, 43.972599, 46.703773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203220, 43.770660, 46.171211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165817, 44.167049, 46.209629>,  <42.143375, 44.404884, 46.232681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165817, 44.167049, 46.209629>,  <42.203220, 43.770660, 46.171211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165817, 44.167049, 46.209629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158046, 0.080471, -0.984147,
		-0.982994, -0.107205, 0.149095,
		-0.093508, 0.990975, 0.096046,
		42.137764, 44.464340, 46.238441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644779, 43.914074, 45.866932>,  <42.203220, 43.770660, 46.171211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644779, 43.914074, 45.866932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837486, 44.264580, 45.870262>,  <41.953110, 44.474884, 45.872261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837486, 44.264580, 45.870262>,  <41.644779, 43.914074, 45.866932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837486, 44.264580, 45.870262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221515, 0.130973, -0.966321,
		-0.847841, 0.463694, 0.257204,
		0.481764, 0.876261, 0.008329,
		41.982014, 44.527458, 45.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153702, 44.417656, 45.574345>,  <41.644779, 43.914074, 45.866932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153702, 44.417656, 45.574345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498863, 44.618340, 45.550041>,  <41.705959, 44.738750, 45.535461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498863, 44.618340, 45.550041>,  <41.153702, 44.417656, 45.574345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498863, 44.618340, 45.550041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242124, 0.304894, -0.921095,
		-0.443600, 0.809522, 0.384569,
		0.862899, 0.501711, -0.060754,
		41.757732, 44.768852, 45.531815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984470, 45.065327, 45.323029>,  <41.153702, 44.417656, 45.574345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984470, 45.065327, 45.323029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373672, 45.055565, 45.231239>,  <41.607193, 45.049709, 45.176167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373672, 45.055565, 45.231239>,  <40.984470, 45.065327, 45.323029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373672, 45.055565, 45.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212938, 0.288329, -0.933555,
		0.088943, 0.957221, 0.275350,
		0.973009, -0.024401, -0.229473,
		41.665577, 45.048244, 45.162399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085602, 45.661240, 44.924122>,  <40.984470, 45.065327, 45.323029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085602, 45.661240, 44.924122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381622, 45.410667, 44.826225>,  <41.559235, 45.260323, 44.767487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381622, 45.410667, 44.826225>,  <41.085602, 45.661240, 44.924122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381622, 45.410667, 44.826225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206371, 0.134838, -0.969139,
		0.640103, 0.767723, -0.029491,
		0.740054, -0.626435, -0.244746,
		41.603638, 45.222736, 44.752800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495575, 45.998745, 44.371796>,  <41.085602, 45.661240, 44.924122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495575, 45.998745, 44.371796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543465, 45.602528, 44.344975>,  <41.572201, 45.364799, 44.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543465, 45.602528, 44.344975>,  <41.495575, 45.998745, 44.371796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543465, 45.602528, 44.344975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079300, 0.057781, -0.995175,
		0.989635, 0.124466, -0.071632,
		0.119727, -0.990540, -0.067053,
		41.579384, 45.305367, 44.324860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029282, 45.818169, 43.914314>,  <41.495575, 45.998745, 44.371796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029282, 45.818169, 43.914314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790726, 45.497890, 43.936958>,  <41.647591, 45.305725, 43.950546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790726, 45.497890, 43.936958>,  <42.029282, 45.818169, 43.914314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790726, 45.497890, 43.936958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014958, -0.059430, -0.998120,
		0.802555, -0.596117, 0.023467,
		-0.596391, -0.800695, 0.056613,
		41.611809, 45.257683, 43.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402752, 45.266262, 43.644798>,  <42.029282, 45.818169, 43.914314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402752, 45.266262, 43.644798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015823, 45.169163, 43.615490>,  <41.783669, 45.110905, 43.597904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015823, 45.169163, 43.615490>,  <42.402752, 45.266262, 43.644798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015823, 45.169163, 43.615490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109257, -0.138277, -0.984349,
		0.228818, -0.960184, 0.160280,
		-0.967319, -0.242748, -0.073267,
		41.725628, 45.096340, 43.593510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439190, 44.817154, 43.075218>,  <42.402752, 45.266262, 43.644798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439190, 44.817154, 43.075218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049416, 44.886475, 43.132404>,  <41.815552, 44.928066, 43.166718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049416, 44.886475, 43.132404>,  <42.439190, 44.817154, 43.075218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049416, 44.886475, 43.132404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142474, 0.015353, -0.989679,
		-0.173713, -0.984748, 0.009731,
		-0.974435, 0.173307, 0.142968,
		41.757084, 44.938465, 43.175293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121441, 44.250790, 42.782661>,  <42.439190, 44.817154, 43.075218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121441, 44.250790, 42.782661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848915, 44.543083, 42.799805>,  <41.685398, 44.718460, 42.810089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848915, 44.543083, 42.799805>,  <42.121441, 44.250790, 42.782661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848915, 44.543083, 42.799805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198304, -0.127903, -0.971759,
		-0.704619, -0.670571, 0.232049,
		-0.681313, 0.730736, 0.042854,
		41.644520, 44.762302, 42.812660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633308, 43.985409, 42.484734>,  <42.121441, 44.250790, 42.782661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633308, 43.985409, 42.484734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552330, 44.376854, 42.470100>,  <41.503742, 44.611721, 42.461319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552330, 44.376854, 42.470100>,  <41.633308, 43.985409, 42.484734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552330, 44.376854, 42.470100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263934, -0.090501, -0.960286,
		-0.943057, -0.184746, 0.276610,
		-0.202442, 0.978611, -0.036587,
		41.491596, 44.670437, 42.459126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024265, 44.015106, 42.208218>,  <41.633308, 43.985409, 42.484734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024265, 44.015106, 42.208218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155312, 44.387630, 42.144569>,  <41.233940, 44.611145, 42.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155312, 44.387630, 42.144569>,  <41.024265, 44.015106, 42.208218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155312, 44.387630, 42.144569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433089, -0.001654, -0.901349,
		-0.839703, 0.364212, 0.402801,
		0.327616, 0.931315, -0.159125,
		41.253597, 44.667027, 42.096832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479797, 44.327244, 41.849354>,  <41.024265, 44.015106, 42.208218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479797, 44.327244, 41.849354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786797, 44.570015, 41.766804>,  <40.970997, 44.715679, 41.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786797, 44.570015, 41.766804>,  <40.479797, 44.327244, 41.849354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786797, 44.570015, 41.766804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218026, -0.055602, -0.974358,
		-0.602842, 0.792808, 0.089653,
		0.767494, 0.606930, -0.206372,
		41.017044, 44.752094, 41.704891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218983, 44.892368, 41.390152>,  <40.479797, 44.327244, 41.849354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218983, 44.892368, 41.390152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612366, 44.854568, 41.328339>,  <40.848396, 44.831886, 41.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612366, 44.854568, 41.328339>,  <40.218983, 44.892368, 41.390152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612366, 44.854568, 41.328339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152315, 0.030262, -0.987869,
		0.098032, 0.995065, 0.015367,
		0.983458, -0.094502, -0.154530,
		40.907402, 44.826218, 41.281979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357227, 45.388432, 40.919529>,  <40.218983, 44.892368, 41.390152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357227, 45.388432, 40.919529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622704, 45.089287, 40.913635>,  <40.781990, 44.909801, 40.910099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622704, 45.089287, 40.913635>,  <40.357227, 45.388432, 40.919529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622704, 45.089287, 40.913635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184933, -0.144965, -0.972000,
		0.724784, 0.647834, -0.234516,
		0.663692, -0.747861, -0.014738,
		40.821812, 44.864929, 40.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432652, 45.483139, 40.241074>,  <40.357227, 45.388432, 40.919529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432652, 45.483139, 40.241074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658478, 45.164421, 40.327217>,  <40.793972, 44.973190, 40.378902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658478, 45.164421, 40.327217>,  <40.432652, 45.483139, 40.241074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658478, 45.164421, 40.327217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142883, -0.162632, -0.976286,
		0.812927, 0.581949, 0.022033,
		0.564566, -0.796798, 0.215358,
		40.827847, 44.925381, 40.391823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132694, 45.525719, 39.913219>,  <40.432652, 45.483139, 40.241074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132694, 45.525719, 39.913219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044128, 45.140884, 39.976929>,  <40.990990, 44.909985, 40.015156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044128, 45.140884, 39.976929>,  <41.132694, 45.525719, 39.913219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044128, 45.140884, 39.976929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069228, -0.178420, -0.981516,
		0.972720, -0.206294, 0.106108,
		-0.221413, -0.962086, 0.159272,
		40.977703, 44.852257, 40.024712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664772, 45.180782, 39.544537>,  <41.132694, 45.525719, 39.913219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664772, 45.180782, 39.544537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385979, 44.900963, 39.607578>,  <41.218700, 44.733070, 39.645401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385979, 44.900963, 39.607578>,  <41.664772, 45.180782, 39.544537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385979, 44.900963, 39.607578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137870, -0.346408, -0.927897,
		0.703707, -0.625002, 0.337889,
		-0.696985, -0.699553, 0.157601,
		41.176884, 44.691097, 39.654858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896591, 44.512653, 39.330070>,  <41.664772, 45.180782, 39.544537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896591, 44.512653, 39.330070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498390, 44.474751, 39.329346>,  <41.259472, 44.452007, 39.328911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498390, 44.474751, 39.329346>,  <41.896591, 44.512653, 39.330070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498390, 44.474751, 39.329346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039407, -0.396442, -0.917213,
		0.086195, -0.913156, 0.398392,
		-0.995499, -0.094759, -0.001813,
		41.199741, 44.446323, 39.328800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760693, 43.887173, 38.980534>,  <41.896591, 44.512653, 39.330070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760693, 43.887173, 38.980534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400764, 44.058826, 38.949112>,  <41.184807, 44.161819, 38.930260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400764, 44.058826, 38.949112>,  <41.760693, 43.887173, 38.980534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400764, 44.058826, 38.949112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060061, -0.300204, -0.951982,
		-0.432117, -0.851890, 0.295903,
		-0.899815, 0.429140, -0.078558,
		41.130821, 44.187569, 38.925545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196400, 43.399738, 38.602947>,  <41.760693, 43.887173, 38.980534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196400, 43.399738, 38.602947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072311, 43.777428, 38.558762>,  <40.997856, 44.004040, 38.532249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072311, 43.777428, 38.558762>,  <41.196400, 43.399738, 38.602947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072311, 43.777428, 38.558762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026618, -0.107528, -0.993846,
		-0.950290, -0.311256, 0.008224,
		-0.310225, 0.944223, -0.110468,
		40.979244, 44.060696, 38.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742325, 43.342812, 38.004139>,  <41.196400, 43.399738, 38.602947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742325, 43.342812, 38.004139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834816, 43.729546, 38.047512>,  <40.890312, 43.961586, 38.073536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834816, 43.729546, 38.047512>,  <40.742325, 43.342812, 38.004139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834816, 43.729546, 38.047512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123861, 0.081287, -0.988965,
		-0.964983, 0.242107, -0.100958,
		0.231229, 0.966838, 0.108428,
		40.904186, 44.019596, 38.080040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335449, 43.730740, 37.522449>,  <40.742325, 43.342812, 38.004139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335449, 43.730740, 37.522449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630272, 43.992828, 37.588707>,  <40.807163, 44.150082, 37.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630272, 43.992828, 37.588707>,  <40.335449, 43.730740, 37.522449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630272, 43.992828, 37.588707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196633, 0.026583, -0.980117,
		-0.646598, 0.754968, -0.109246,
		0.737053, 0.655222, 0.165640,
		40.851387, 44.189396, 37.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284225, 44.269165, 37.027725>,  <40.335449, 43.730740, 37.522449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284225, 44.269165, 37.027725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661812, 44.311249, 37.152855>,  <40.888363, 44.336498, 37.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661812, 44.311249, 37.152855>,  <40.284225, 44.269165, 37.027725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661812, 44.311249, 37.152855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272965, 0.283944, -0.919166,
		-0.185528, 0.953052, 0.239316,
		0.943965, 0.105206, 0.312829,
		40.945000, 44.342812, 37.246704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451511, 45.021172, 36.793045>,  <40.284225, 44.269165, 37.027725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451511, 45.021172, 36.793045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775360, 44.798138, 36.866375>,  <40.969669, 44.664318, 36.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775360, 44.798138, 36.866375>,  <40.451511, 45.021172, 36.793045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775360, 44.798138, 36.866375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333391, 0.179808, -0.925483,
		0.483074, 0.810411, 0.331471,
		0.809623, -0.557586, 0.183324,
		41.018246, 44.630863, 36.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071880, 45.410027, 36.441525>,  <40.451511, 45.021172, 36.793045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071880, 45.410027, 36.441525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179924, 45.025650, 36.465611>,  <41.244751, 44.795025, 36.480061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179924, 45.025650, 36.465611>,  <41.071880, 45.410027, 36.441525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179924, 45.025650, 36.465611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361722, 0.043320, -0.931279,
		0.892299, 0.273332, 0.359296,
		0.270113, -0.960944, 0.060216,
		41.260960, 44.737366, 36.483677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739246, 45.387386, 36.171978>,  <41.071880, 45.410027, 36.441525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739246, 45.387386, 36.171978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612701, 45.010189, 36.130650>,  <41.536774, 44.783871, 36.105854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612701, 45.010189, 36.130650>,  <41.739246, 45.387386, 36.171978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612701, 45.010189, 36.130650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370800, -0.022678, -0.928436,
		0.873166, -0.332036, 0.356837,
		-0.316366, -0.942994, -0.103317,
		41.517792, 44.727291, 36.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394638, 44.987083, 35.965950>,  <41.739246, 45.387386, 36.171978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394638, 44.987083, 35.965950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058342, 44.808308, 35.843704>,  <41.856564, 44.701042, 35.770355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058342, 44.808308, 35.843704>,  <42.394638, 44.987083, 35.965950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058342, 44.808308, 35.843704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338242, 0.007202, -0.941032,
		0.422788, -0.894534, 0.145119,
		-0.840739, -0.446942, -0.305614,
		41.806122, 44.674225, 35.752022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626297, 44.517643, 35.499207>,  <42.394638, 44.987083, 35.965950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626297, 44.517643, 35.499207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235863, 44.524334, 35.412518>,  <42.001602, 44.528347, 35.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235863, 44.524334, 35.412518>,  <42.626297, 44.517643, 35.499207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235863, 44.524334, 35.412518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216865, 0.007146, -0.976175,
		-0.014784, -0.999835, -0.010603,
		-0.976090, 0.016731, -0.216724,
		41.943035, 44.529350, 35.347500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488762, 44.021130, 34.980724>,  <42.626297, 44.517643, 35.499207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488762, 44.021130, 34.980724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175209, 44.268696, 34.960815>,  <41.987080, 44.417236, 34.948868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175209, 44.268696, 34.960815>,  <42.488762, 44.021130, 34.980724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175209, 44.268696, 34.960815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052671, -0.013593, -0.998519,
		-0.618676, -0.785340, -0.021944,
		-0.783879, 0.618915, -0.049774,
		41.940044, 44.454369, 34.945885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099178, 43.660778, 34.532272>,  <42.488762, 44.021130, 34.980724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099178, 43.660778, 34.532272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980415, 44.042698, 34.526726>,  <41.909157, 44.271851, 34.523399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980415, 44.042698, 34.526726>,  <42.099178, 43.660778, 34.532272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980415, 44.042698, 34.526726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086914, 0.012564, -0.996137,
		-0.950941, -0.296969, -0.086717,
		-0.296911, 0.954804, -0.013863,
		41.891342, 44.329140, 34.522568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705399, 43.642693, 33.915173>,  <42.099178, 43.660778, 34.532272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705399, 43.642693, 33.915173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753624, 44.035400, 33.973953>,  <41.782558, 44.271027, 34.009220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753624, 44.035400, 33.973953>,  <41.705399, 43.642693, 33.915173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753624, 44.035400, 33.973953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026709, 0.144766, -0.989105,
		-0.992347, 0.123170, -0.008770,
		0.120559, 0.981770, 0.146948,
		41.789791, 44.329933, 34.018036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257908, 43.896725, 33.441235>,  <41.705399, 43.642693, 33.915173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257908, 43.896725, 33.441235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541183, 44.172375, 33.502651>,  <41.711147, 44.337765, 33.539501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541183, 44.172375, 33.502651>,  <41.257908, 43.896725, 33.441235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541183, 44.172375, 33.502651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114733, 0.102251, -0.988120,
		-0.696642, 0.717387, -0.006653,
		0.708185, 0.689130, 0.153540,
		41.753639, 44.379112, 33.548714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265324, 44.435917, 32.861954>,  <41.257908, 43.896725, 33.441235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265324, 44.435917, 32.861954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622658, 44.498974, 33.030289>,  <41.837059, 44.536808, 33.131290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622658, 44.498974, 33.030289>,  <41.265324, 44.435917, 32.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622658, 44.498974, 33.030289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363665, 0.296563, -0.883062,
		-0.264017, 0.941912, 0.207599,
		0.893332, 0.157646, 0.420838,
		41.890659, 44.546268, 33.156540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525185, 45.120979, 32.552826>,  <41.265324, 44.435917, 32.861954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525185, 45.120979, 32.552826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823906, 44.891415, 32.687237>,  <42.003139, 44.753677, 32.767883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823906, 44.891415, 32.687237>,  <41.525185, 45.120979, 32.552826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823906, 44.891415, 32.687237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513920, 0.177321, -0.839311,
		0.422106, 0.799490, 0.427368,
		0.746802, -0.573911, 0.336026,
		42.047947, 44.719242, 32.788044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<45.164806, 43.664806, 32.393745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.780296, 43.763371, 32.443104>,  <44.549591, 43.822510, 32.472717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.780296, 43.763371, 32.443104>,  <45.164806, 43.664806, 32.393745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780296, 43.763371, 32.443104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154076, 0.109324, 0.981992,
		0.228484, 0.962980, -0.143057,
		-0.961278, 0.246411, 0.123394,
		44.491913, 43.837296, 32.480122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996616, 44.348110, 32.736935>,  <45.164806, 43.664806, 32.393745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996616, 44.348110, 32.736935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697144, 44.095081, 32.816265>,  <44.517460, 43.943264, 32.863865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.697144, 44.095081, 32.816265>,  <44.996616, 44.348110, 32.736935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697144, 44.095081, 32.816265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083705, 0.206574, 0.974844,
		-0.657625, 0.746448, -0.101709,
		-0.748681, -0.632568, 0.198329,
		44.472538, 43.905312, 32.875763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498775, 44.639572, 33.230221>,  <44.996616, 44.348110, 32.736935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498775, 44.639572, 33.230221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.437325, 44.244350, 33.235123>,  <44.400455, 44.007217, 33.238064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.437325, 44.244350, 33.235123>,  <44.498775, 44.639572, 33.230221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437325, 44.244350, 33.235123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048532, 0.019932, 0.998623,
		-0.986936, 0.152822, -0.051014,
		-0.153629, -0.988053, 0.012255,
		44.391235, 43.947933, 33.238800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904957, 44.608875, 33.685318>,  <44.498775, 44.639572, 33.230221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904957, 44.608875, 33.685318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.129524, 44.278809, 33.660324>,  <44.264263, 44.080769, 33.645329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.129524, 44.278809, 33.660324>,  <43.904957, 44.608875, 33.685318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129524, 44.278809, 33.660324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060931, -0.034083, 0.997560,
		-0.825286, -0.563856, 0.031143,
		0.561419, -0.825169, -0.062484,
		44.297951, 44.031258, 33.641579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578178, 44.221054, 34.193874>,  <43.904957, 44.608875, 33.685318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578178, 44.221054, 34.193874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.941780, 44.080345, 34.104454>,  <44.159939, 43.995922, 34.050804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.941780, 44.080345, 34.104454>,  <43.578178, 44.221054, 34.193874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941780, 44.080345, 34.104454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261083, 0.062493, 0.963291,
		-0.324887, -0.933998, 0.148647,
		0.909001, -0.351770, -0.223548,
		44.214481, 43.974815, 34.037388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659916, 43.571156, 34.566589>,  <43.578178, 44.221054, 34.193874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659916, 43.571156, 34.566589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.028557, 43.707951, 34.493179>,  <44.249741, 43.790028, 34.449131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.028557, 43.707951, 34.493179>,  <43.659916, 43.571156, 34.566589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028557, 43.707951, 34.493179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199476, -0.011730, 0.979832,
		0.332942, -0.939629, -0.079030,
		0.921607, 0.341992, -0.183529,
		44.305038, 43.810547, 34.438122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100292, 43.234432, 34.960423>,  <43.659916, 43.571156, 34.566589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100292, 43.234432, 34.960423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.318314, 43.558167, 34.872890>,  <44.449127, 43.752407, 34.820370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.318314, 43.558167, 34.872890>,  <44.100292, 43.234432, 34.960423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318314, 43.558167, 34.872890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248723, 0.093166, 0.964083,
		0.800657, -0.579906, -0.150520,
		0.545055, 0.809338, -0.218830,
		44.481831, 43.800968, 34.807243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712967, 43.124203, 35.446587>,  <44.100292, 43.234432, 34.960423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712967, 43.124203, 35.446587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.736076, 43.507896, 35.335934>,  <44.749943, 43.738113, 35.269543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.736076, 43.507896, 35.335934>,  <44.712967, 43.124203, 35.446587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736076, 43.507896, 35.335934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424469, 0.227197, 0.876474,
		0.903597, -0.168058, -0.394041,
		0.057774, 0.959238, -0.276630,
		44.753410, 43.795670, 35.252945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454006, 43.327122, 35.596355>,  <44.712967, 43.124203, 35.446587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454006, 43.327122, 35.596355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.226280, 43.655144, 35.573040>,  <45.089645, 43.851955, 35.559052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.226280, 43.655144, 35.573040>,  <45.454006, 43.327122, 35.596355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226280, 43.655144, 35.573040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298683, 0.272369, 0.914661,
		0.765945, 0.503319, -0.399999,
		-0.569313, 0.820052, -0.058286,
		45.055485, 43.901161, 35.555553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825237, 43.832249, 35.966702>,  <45.454006, 43.327122, 35.596355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825237, 43.832249, 35.966702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.465820, 44.006886, 35.948803>,  <45.250168, 44.111668, 35.938065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.465820, 44.006886, 35.948803>,  <45.825237, 43.832249, 35.966702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465820, 44.006886, 35.948803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105432, 0.313704, 0.943649,
		0.426025, 0.843195, -0.327908,
		-0.898547, 0.436591, -0.044746,
		45.196255, 44.137863, 35.935379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914635, 44.442799, 36.433830>,  <45.825237, 43.832249, 35.966702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914635, 44.442799, 36.433830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.519417, 44.398064, 36.391392>,  <45.282284, 44.371223, 36.365929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.519417, 44.398064, 36.391392>,  <45.914635, 44.442799, 36.433830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519417, 44.398064, 36.391392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129513, 0.228963, 0.964781,
		-0.083611, 0.966989, -0.240711,
		-0.988046, -0.111841, -0.106094,
		45.223003, 44.364510, 36.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652767, 44.986393, 36.852264>,  <45.914635, 44.442799, 36.433830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652767, 44.986393, 36.852264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362778, 44.714912, 36.805302>,  <45.188786, 44.552025, 36.777122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.362778, 44.714912, 36.805302>,  <45.652767, 44.986393, 36.852264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362778, 44.714912, 36.805302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280047, 0.134720, 0.950486,
		-0.629275, 0.721956, -0.287735,
		-0.724973, -0.678697, -0.117406,
		45.145287, 44.511303, 36.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115623, 45.302120, 37.116871>,  <45.652767, 44.986393, 36.852264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115623, 45.302120, 37.116871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.997360, 44.920071, 37.124020>,  <44.926403, 44.690842, 37.128307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.997360, 44.920071, 37.124020>,  <45.115623, 45.302120, 37.116871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997360, 44.920071, 37.124020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418742, 0.146389, 0.896228,
		-0.858629, 0.257489, -0.443233,
		-0.295654, -0.955128, 0.017872,
		44.908665, 44.633533, 37.129383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372147, 45.236816, 37.338436>,  <45.115623, 45.302120, 37.116871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372147, 45.236816, 37.338436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.547104, 44.885834, 37.417187>,  <44.652077, 44.675243, 37.464436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.547104, 44.885834, 37.417187>,  <44.372147, 45.236816, 37.338436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547104, 44.885834, 37.417187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291152, 0.068957, 0.954188,
		-0.850833, -0.474676, -0.225312,
		0.437394, -0.877455, 0.196874,
		44.678322, 44.622597, 37.476250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897671, 44.943203, 37.778980>,  <44.372147, 45.236816, 37.338436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897671, 44.943203, 37.778980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.218048, 44.710190, 37.834332>,  <44.410275, 44.570381, 37.867542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.218048, 44.710190, 37.834332>,  <43.897671, 44.943203, 37.778980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218048, 44.710190, 37.834332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324244, -0.227705, 0.918159,
		-0.503346, -0.780261, -0.371261,
		0.800942, -0.582531, 0.138380,
		44.458332, 44.535431, 37.875847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691761, 44.339088, 38.000084>,  <43.897671, 44.943203, 37.778980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691761, 44.339088, 38.000084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.069633, 44.356796, 38.130077>,  <44.296356, 44.367420, 38.208073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.069633, 44.356796, 38.130077>,  <43.691761, 44.339088, 38.000084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069633, 44.356796, 38.130077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322489, -0.055230, 0.944961,
		0.059783, -0.997492, -0.037898,
		0.944684, 0.044271, 0.324982,
		44.353039, 44.370079, 38.227573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613342, 43.851505, 38.584270>,  <43.691761, 44.339088, 38.000084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613342, 43.851505, 38.584270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949493, 44.064846, 38.622829>,  <44.151184, 44.192852, 38.645966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.949493, 44.064846, 38.622829>,  <43.613342, 43.851505, 38.584270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949493, 44.064846, 38.622829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088774, -0.040010, 0.995248,
		0.534678, -0.844944, 0.013724,
		0.840380, 0.533356, 0.096401,
		44.201607, 44.224854, 38.651749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963181, 43.564789, 39.115513>,  <43.613342, 43.851505, 38.584270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963181, 43.564789, 39.115513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.142525, 43.921551, 39.091892>,  <44.250130, 44.135609, 39.077721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.142525, 43.921551, 39.091892>,  <43.963181, 43.564789, 39.115513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142525, 43.921551, 39.091892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084727, 0.108171, 0.990515,
		0.889830, -0.439101, 0.124067,
		0.448357, 0.891902, -0.059050,
		44.277031, 44.189121, 39.074177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438480, 43.555233, 39.653996>,  <43.963181, 43.564789, 39.115513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438480, 43.555233, 39.653996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.380714, 43.945873, 39.590256>,  <44.346054, 44.180256, 39.552013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.380714, 43.945873, 39.590256>,  <44.438480, 43.555233, 39.653996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380714, 43.945873, 39.590256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173854, 0.133489, 0.975682,
		0.974124, 0.168610, 0.150508,
		-0.144419, 0.976602, -0.159348,
		44.337387, 44.238853, 39.542450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833836, 43.945839, 40.107334>,  <44.438480, 43.555233, 39.653996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833836, 43.945839, 40.107334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.582581, 44.236488, 39.996002>,  <44.431828, 44.410877, 39.929203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.582581, 44.236488, 39.996002>,  <44.833836, 43.945839, 40.107334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582581, 44.236488, 39.996002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048559, 0.393613, 0.917993,
		0.776587, 0.563108, -0.282526,
		-0.628135, 0.726621, -0.278331,
		44.394138, 44.454475, 39.912502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119522, 44.466614, 40.396564>,  <44.833836, 43.945839, 40.107334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119522, 44.466614, 40.396564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.745270, 44.588379, 40.325092>,  <44.520718, 44.661438, 40.282207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.745270, 44.588379, 40.325092>,  <45.119522, 44.466614, 40.396564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745270, 44.588379, 40.325092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003987, 0.515301, 0.857000,
		0.352955, 0.801124, -0.483346,
		-0.935632, 0.304409, -0.178683,
		44.464581, 44.679703, 40.271488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047951, 45.191528, 40.637798>,  <45.119522, 44.466614, 40.396564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047951, 45.191528, 40.637798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.667747, 45.067245, 40.638138>,  <44.439625, 44.992676, 40.638340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.667747, 45.067245, 40.638138>,  <45.047951, 45.191528, 40.637798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.667747, 45.067245, 40.638138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115838, 0.356904, 0.926931,
		-0.288303, 0.880956, -0.375231,
		-0.950507, -0.310703, 0.000849,
		44.382595, 44.974033, 40.638393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659924, 45.781975, 40.929249>,  <45.047951, 45.191528, 40.637798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659924, 45.781975, 40.929249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.429550, 45.456581, 40.961624>,  <44.291328, 45.261345, 40.981049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.429550, 45.456581, 40.961624>,  <44.659924, 45.781975, 40.929249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429550, 45.456581, 40.961624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218589, 0.248645, 0.943607,
		-0.787732, 0.525760, -0.321021,
		-0.575931, -0.813481, 0.080940,
		44.256771, 45.212536, 40.985905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156410, 45.925091, 41.376541>,  <44.659924, 45.781975, 40.929249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156410, 45.925091, 41.376541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.111641, 45.529030, 41.410160>,  <44.084782, 45.291393, 41.430332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.111641, 45.529030, 41.410160>,  <44.156410, 45.925091, 41.376541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111641, 45.529030, 41.410160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088928, 0.094218, 0.991572,
		-0.989730, 0.103502, -0.098597,
		-0.111919, -0.990157, 0.084047,
		44.078064, 45.231983, 41.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530922, 45.846550, 41.609241>,  <44.156410, 45.925091, 41.376541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530922, 45.846550, 41.609241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.720123, 45.504105, 41.692505>,  <43.833645, 45.298637, 41.742462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.720123, 45.504105, 41.692505>,  <43.530922, 45.846550, 41.609241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720123, 45.504105, 41.692505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163728, 0.146732, 0.975532,
		-0.865712, -0.495514, -0.070765,
		0.473006, -0.856116, 0.208157,
		43.862026, 45.247269, 41.754951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099159, 45.554909, 42.193729>,  <43.530922, 45.846550, 41.609241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099159, 45.554909, 42.193729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446815, 45.357616, 42.208244>,  <43.655411, 45.239239, 42.216953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.446815, 45.357616, 42.208244>,  <43.099159, 45.554909, 42.193729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446815, 45.357616, 42.208244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001761, 0.076453, 0.997072,
		-0.494564, -0.866531, 0.067317,
		0.869140, -0.493234, 0.036285,
		43.707558, 45.209648, 42.219131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000874, 45.131161, 42.728062>,  <43.099159, 45.554909, 42.193729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000874, 45.131161, 42.728062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.398323, 45.127708, 42.683098>,  <43.636791, 45.125637, 42.656120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.398323, 45.127708, 42.683098>,  <43.000874, 45.131161, 42.728062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398323, 45.127708, 42.683098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112714, 0.056287, 0.992032,
		-0.002242, -0.998377, 0.056902,
		0.993625, -0.008638, -0.112405,
		43.696411, 45.125118, 42.649376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189571, 44.796562, 43.266476>,  <43.000874, 45.131161, 42.728062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189571, 44.796562, 43.266476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.545349, 44.966267, 43.198486>,  <43.758816, 45.068089, 43.157692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.545349, 44.966267, 43.198486>,  <43.189571, 44.796562, 43.266476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545349, 44.966267, 43.198486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113456, 0.155307, 0.981330,
		0.442741, -0.892121, 0.090001,
		0.889442, 0.424264, -0.169977,
		43.812183, 45.093544, 43.147491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667061, 44.436893, 43.642475>,  <43.189571, 44.796562, 43.266476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667061, 44.436893, 43.642475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.812607, 44.800308, 43.560349>,  <43.899937, 45.018356, 43.511070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.812607, 44.800308, 43.560349>,  <43.667061, 44.436893, 43.642475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812607, 44.800308, 43.560349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257336, 0.113796, 0.959598,
		0.895197, -0.402005, -0.192393,
		0.363869, 0.908539, -0.205320,
		43.921768, 45.072868, 43.498753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312820, 44.394493, 43.925194>,  <43.667061, 44.436893, 43.642475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312820, 44.394493, 43.925194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.264206, 44.790104, 43.891586>,  <44.235039, 45.027470, 43.871422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.264206, 44.790104, 43.891586>,  <44.312820, 44.394493, 43.925194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264206, 44.790104, 43.891586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236311, 0.111043, 0.965312,
		0.964047, 0.097461, -0.247213,
		-0.121532, 0.989025, -0.084020,
		44.227745, 45.086811, 43.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984756, 44.773098, 44.161484>,  <44.312820, 44.394493, 43.925194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984756, 44.773098, 44.161484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.676773, 45.026970, 44.187862>,  <44.491985, 45.179295, 44.203690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.676773, 45.026970, 44.187862>,  <44.984756, 44.773098, 44.161484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676773, 45.026970, 44.187862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283446, 0.247594, 0.926475,
		0.571687, 0.732037, -0.370534,
		-0.769956, 0.634679, 0.065946,
		44.445786, 45.217373, 44.207645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201775, 45.491852, 44.245674>,  <44.984756, 44.773098, 44.161484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201775, 45.491852, 44.245674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.818092, 45.486511, 44.358635>,  <44.587883, 45.483307, 44.426411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.818092, 45.486511, 44.358635>,  <45.201775, 45.491852, 44.245674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818092, 45.486511, 44.358635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268292, 0.272034, 0.924130,
		-0.089157, 0.962195, -0.257355,
		-0.959203, -0.013347, 0.282403,
		44.530331, 45.482506, 44.443356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002029, 46.116222, 44.637829>,  <45.201775, 45.491852, 44.245674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002029, 46.116222, 44.637829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.707825, 45.873508, 44.758381>,  <44.531303, 45.727879, 44.830711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.707825, 45.873508, 44.758381>,  <45.002029, 46.116222, 44.637829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707825, 45.873508, 44.758381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226656, 0.198836, 0.953463,
		-0.638473, 0.769595, -0.008714,
		-0.735513, -0.606785, 0.301385,
		44.487171, 45.691471, 44.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799149, 46.480213, 45.218304>,  <45.002029, 46.116222, 44.637829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799149, 46.480213, 45.218304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.661201, 46.106201, 45.251244>,  <44.578434, 45.881794, 45.271008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.661201, 46.106201, 45.251244>,  <44.799149, 46.480213, 45.218304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661201, 46.106201, 45.251244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112167, 0.046056, 0.992622,
		-0.931927, 0.351556, 0.088997,
		-0.344864, -0.935033, 0.082354,
		44.557743, 45.825691, 45.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295425, 46.547138, 45.691532>,  <44.799149, 46.480213, 45.218304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295425, 46.547138, 45.691532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.369209, 46.154106, 45.700516>,  <44.413479, 45.918285, 45.705906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.369209, 46.154106, 45.700516>,  <44.295425, 46.547138, 45.691532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369209, 46.154106, 45.700516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023153, 0.027187, 0.999362,
		-0.982568, -0.183819, 0.027764,
		0.184457, -0.982584, 0.022457,
		44.424545, 45.859329, 45.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992882, 46.295158, 46.208157>,  <44.295425, 46.547138, 45.691532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992882, 46.295158, 46.208157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.255447, 46.002502, 46.134594>,  <44.412987, 45.826908, 46.090458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.255447, 46.002502, 46.134594>,  <43.992882, 46.295158, 46.208157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255447, 46.002502, 46.134594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088745, -0.167199, 0.981921,
		-0.749161, -0.660870, -0.044823,
		0.656416, -0.731639, -0.183908,
		44.452374, 45.783012, 46.079422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723328, 45.762360, 46.580437>,  <43.992882, 46.295158, 46.208157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723328, 45.762360, 46.580437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.100700, 45.656693, 46.500290>,  <44.327126, 45.593292, 46.452202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.100700, 45.656693, 46.500290>,  <43.723328, 45.762360, 46.580437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100700, 45.656693, 46.500290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127197, -0.269721, 0.954501,
		-0.306194, -0.925994, -0.220862,
		0.943433, -0.264170, -0.200371,
		44.383732, 45.577442, 46.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812767, 45.039017, 46.953388>,  <43.723328, 45.762360, 46.580437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812767, 45.039017, 46.953388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.175148, 45.194439, 46.886139>,  <44.392578, 45.287693, 46.845791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.175148, 45.194439, 46.886139>,  <43.812767, 45.039017, 46.953388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175148, 45.194439, 46.886139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264944, -0.210598, 0.940985,
		0.330224, -0.897034, -0.293739,
		0.905957, 0.388560, -0.168120,
		44.446934, 45.311008, 46.835705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256790, 44.630611, 47.254684>,  <43.812767, 45.039017, 46.953388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256790, 44.630611, 47.254684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.492783, 44.952194, 47.224823>,  <44.634380, 45.145145, 47.206905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.492783, 44.952194, 47.224823>,  <44.256790, 44.630611, 47.254684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492783, 44.952194, 47.224823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309826, -0.140042, 0.940423,
		0.745604, -0.577965, -0.331710,
		0.589985, 0.803955, -0.074652,
		44.669777, 45.193382, 47.202427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964367, 44.475346, 47.553711>,  <44.256790, 44.630611, 47.254684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964367, 44.475346, 47.553711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.913635, 44.871708, 47.571690>,  <44.883198, 45.109524, 47.582478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.913635, 44.871708, 47.571690>,  <44.964367, 44.475346, 47.553711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913635, 44.871708, 47.571690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559466, 0.034044, 0.828154,
		0.819093, 0.130176, -0.558696,
		-0.126826, 0.990906, 0.044944,
		44.875587, 45.168980, 47.585175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572323, 44.639156, 47.870701>,  <44.964367, 44.475346, 47.553711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572323, 44.639156, 47.870701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.359543, 44.977787, 47.878059>,  <45.231876, 45.180965, 47.882477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.359543, 44.977787, 47.878059>,  <45.572323, 44.639156, 47.870701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359543, 44.977787, 47.878059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466705, 0.274986, 0.840576,
		0.706553, 0.455730, -0.541380,
		-0.531948, 0.846577, 0.018400,
		45.199959, 45.231762, 47.883579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.061993, 45.096329, 47.978802>,  <45.572323, 44.639156, 47.870701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.061993, 45.096329, 47.978802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.718918, 45.249302, 48.116276>,  <45.513073, 45.341087, 48.198761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.718918, 45.249302, 48.116276>,  <46.061993, 45.096329, 47.978802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.718918, 45.249302, 48.116276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439465, 0.198247, 0.876110,
		0.266920, 0.902464, -0.338100,
		-0.857685, 0.382435, 0.343686,
		45.461613, 45.364033, 48.219383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289749, 45.581184, 48.363060>,  <46.061993, 45.096329, 47.978802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289749, 45.581184, 48.363060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911827, 45.590763, 48.493767>,  <45.685074, 45.596508, 48.572193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911827, 45.590763, 48.493767>,  <46.289749, 45.581184, 48.363060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911827, 45.590763, 48.493767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324791, 0.199801, 0.924441,
		-0.043156, 0.979544, -0.196548,
		-0.944801, 0.023942, 0.326769,
		45.628387, 45.597946, 48.591797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269608, 46.150116, 48.764004>,  <46.289749, 45.581184, 48.363060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269608, 46.150116, 48.764004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.947830, 45.942253, 48.879128>,  <45.754765, 45.817535, 48.948200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.947830, 45.942253, 48.879128>,  <46.269608, 46.150116, 48.764004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947830, 45.942253, 48.879128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075639, 0.390946, 0.917300,
		-0.589196, 0.759684, -0.275187,
		-0.804442, -0.519655, 0.287806,
		45.706497, 45.786358, 48.965469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805241, 46.604794, 49.205658>,  <46.269608, 46.150116, 48.764004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805241, 46.604794, 49.205658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713272, 46.222237, 49.277721>,  <45.658092, 45.992702, 49.320961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713272, 46.222237, 49.277721>,  <45.805241, 46.604794, 49.205658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713272, 46.222237, 49.277721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222315, 0.128612, 0.966455,
		-0.947477, 0.262261, 0.183048,
		-0.229921, -0.956388, 0.180162,
		45.644295, 45.935322, 49.331772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356590, 46.603630, 49.817711>,  <45.805241, 46.604794, 49.205658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356590, 46.603630, 49.817711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496437, 46.228874, 49.817085>,  <45.580345, 46.004021, 49.816711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.496437, 46.228874, 49.817085>,  <45.356590, 46.603630, 49.817711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496437, 46.228874, 49.817085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086746, 0.030711, 0.995757,
		-0.932869, -0.348267, 0.092008,
		0.349615, -0.936892, -0.001562,
		45.601322, 45.947807, 49.816616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922016, 46.173489, 50.312397>,  <45.356590, 46.603630, 49.817711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922016, 46.173489, 50.312397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.273193, 45.990490, 50.255966>,  <45.483902, 45.880692, 50.222107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.273193, 45.990490, 50.255966>,  <44.922016, 46.173489, 50.312397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273193, 45.990490, 50.255966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120864, -0.073327, 0.989957,
		-0.463249, -0.886181, -0.009082,
		0.877947, -0.457499, -0.141076,
		45.536579, 45.853241, 50.213642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938492, 45.664303, 50.724236>,  <44.922016, 46.173489, 50.312397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938492, 45.664303, 50.724236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.329819, 45.703953, 50.651497>,  <45.564613, 45.727741, 50.607853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.329819, 45.703953, 50.651497>,  <44.938492, 45.664303, 50.724236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329819, 45.703953, 50.651497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179121, 0.035817, 0.983175,
		0.103972, -0.994430, 0.017285,
		0.978317, 0.099127, -0.181847,
		45.623314, 45.733688, 50.596943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336533, 45.364510, 51.216972>,  <44.938492, 45.664303, 50.724236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336533, 45.364510, 51.216972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.647797, 45.582832, 51.092674>,  <45.834557, 45.713825, 51.018097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.647797, 45.582832, 51.092674>,  <45.336533, 45.364510, 51.216972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647797, 45.582832, 51.092674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348249, 0.036772, 0.936680,
		0.522673, -0.837104, -0.161462,
		0.778162, 0.545806, -0.310741,
		45.881245, 45.746574, 50.999451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007793, 45.063511, 51.494934>,  <45.336533, 45.364510, 51.216972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007793, 45.063511, 51.494934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.090637, 45.445713, 51.410919>,  <46.140343, 45.675034, 51.360512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.090637, 45.445713, 51.410919>,  <46.007793, 45.063511, 51.494934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090637, 45.445713, 51.410919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610342, 0.041592, 0.791045,
		0.764584, -0.292024, -0.574572,
		0.207106, 0.955506, -0.210035,
		46.152767, 45.732365, 51.347908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729946, 45.180611, 51.615791>,  <46.007793, 45.063511, 51.494934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729946, 45.180611, 51.615791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.600761, 45.559174, 51.616913>,  <46.523251, 45.786312, 51.617588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.600761, 45.559174, 51.616913>,  <46.729946, 45.180611, 51.615791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600761, 45.559174, 51.616913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453550, 0.152169, 0.878144,
		0.830656, 0.284880, -0.478388,
		-0.322961, 0.946408, 0.002807,
		46.503872, 45.843098, 51.617756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.247940, 45.576324, 51.884670>,  <46.729946, 45.180611, 51.615791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.247940, 45.576324, 51.884670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.936539, 45.824532, 51.922386>,  <46.749699, 45.973457, 51.945015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.936539, 45.824532, 51.922386>,  <47.247940, 45.576324, 51.884670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936539, 45.824532, 51.922386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332523, 0.280353, 0.900461,
		0.532317, 0.732366, -0.424592,
		-0.778503, 0.620518, 0.094292,
		46.702988, 46.010685, 51.950672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.507992, 46.171772, 52.016754>,  <47.247940, 45.576324, 51.884670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.507992, 46.171772, 52.016754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.134140, 46.183083, 52.158558>,  <46.909828, 46.189869, 52.243641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.134140, 46.183083, 52.158558>,  <47.507992, 46.171772, 52.016754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134140, 46.183083, 52.158558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343925, 0.325525, 0.880766,
		-0.090495, 0.945110, -0.313970,
		-0.934626, 0.028277, 0.354506,
		46.853752, 46.191566, 52.264908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.402710, 46.878704, 52.363907>,  <47.507992, 46.171772, 52.016754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.402710, 46.878704, 52.363907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.109337, 46.663383, 52.529942>,  <46.933311, 46.534191, 52.629562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.109337, 46.663383, 52.529942>,  <47.402710, 46.878704, 52.363907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.109337, 46.663383, 52.529942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255332, 0.347762, 0.902146,
		-0.629982, 0.767652, -0.117614,
		-0.733436, -0.538305, 0.415090,
		46.889305, 46.501892, 52.654469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144760, 47.355499, 52.829319>,  <47.402710, 46.878704, 52.363907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144760, 47.355499, 52.829319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.018860, 46.992935, 52.941994>,  <46.943321, 46.775394, 53.009598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.018860, 46.992935, 52.941994>,  <47.144760, 47.355499, 52.829319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018860, 46.992935, 52.941994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145533, 0.247172, 0.957980,
		-0.937951, 0.342518, 0.054116,
		-0.314750, -0.906414, 0.281683,
		46.924435, 46.721012, 53.026497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594933, 47.406990, 53.286797>,  <47.144760, 47.355499, 52.829319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594933, 47.406990, 53.286797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.709557, 47.035782, 53.382011>,  <46.778332, 46.813057, 53.439140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.709557, 47.035782, 53.382011>,  <46.594933, 47.406990, 53.286797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709557, 47.035782, 53.382011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124632, 0.282454, 0.951150,
		-0.949921, -0.242894, 0.196601,
		0.286559, -0.928021, 0.238036,
		46.795525, 46.757374, 53.453423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369522, 47.355061, 54.002895>,  <46.594933, 47.406990, 53.286797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369522, 47.355061, 54.002895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.664871, 47.090187, 53.951805>,  <46.842083, 46.931263, 53.921150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.664871, 47.090187, 53.951805>,  <46.369522, 47.355061, 54.002895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.664871, 47.090187, 53.951805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342035, 0.204478, 0.917170,
		-0.581216, -0.720905, 0.377471,
		0.738377, -0.662182, -0.127729,
		46.886383, 46.891533, 53.913486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.400333, 47.011955, 54.691303>,  <46.369522, 47.355061, 54.002895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.400333, 47.011955, 54.691303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.752922, 46.916664, 54.528206>,  <46.964474, 46.859489, 54.430347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.752922, 46.916664, 54.528206>,  <46.400333, 47.011955, 54.691303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752922, 46.916664, 54.528206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459818, 0.236284, 0.856000,
		-0.107578, -0.942029, 0.317819,
		0.881472, -0.238226, -0.407743,
		47.017365, 46.845196, 54.405884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806660, 46.721317, 55.247345>,  <46.400333, 47.011955, 54.691303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806660, 46.721317, 55.247345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.116676, 46.775711, 55.000504>,  <47.302685, 46.808350, 54.852398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.116676, 46.775711, 55.000504>,  <46.806660, 46.721317, 55.247345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.116676, 46.775711, 55.000504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524643, 0.405862, 0.748348,
		0.352226, -0.903761, 0.243214,
		0.775040, 0.135987, -0.617107,
		47.349190, 46.816505, 54.815372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471127, 46.442364, 55.531227>,  <46.806660, 46.721317, 55.247345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471127, 46.442364, 55.531227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.539795, 46.745163, 55.279045>,  <47.580994, 46.926842, 55.127735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.539795, 46.745163, 55.279045>,  <47.471127, 46.442364, 55.531227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539795, 46.745163, 55.279045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581790, 0.438543, 0.684982,
		0.795016, -0.484384, -0.365132,
		0.171668, 0.757002, -0.630459,
		47.591297, 46.972263, 55.089909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.159122, 46.607830, 55.711803>,  <47.471127, 46.442364, 55.531227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.159122, 46.607830, 55.711803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.040604, 46.905876, 55.472801>,  <47.969494, 47.084705, 55.329399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.040604, 46.905876, 55.472801>,  <48.159122, 46.607830, 55.711803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.040604, 46.905876, 55.472801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617355, 0.626751, 0.475453,
		0.728753, -0.227996, -0.645706,
		-0.296296, 0.745118, -0.597501,
		47.951714, 47.129410, 55.293552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.760872, 46.902424, 55.431942>,  <48.159122, 46.607830, 55.711803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.760872, 46.902424, 55.431942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.474380, 47.181213, 55.417809>,  <48.302486, 47.348488, 55.409328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.474380, 47.181213, 55.417809>,  <48.760872, 46.902424, 55.431942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.474380, 47.181213, 55.417809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649135, 0.683942, 0.332937,
		0.256214, 0.215523, -0.942287,
		-0.716225, 0.696975, -0.035332,
		48.259514, 47.390305, 55.407207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.014381, 47.496784, 55.186855>,  <48.760872, 46.902424, 55.431942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.014381, 47.496784, 55.186855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.692337, 47.625198, 55.386345>,  <48.499111, 47.702248, 55.506039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.692337, 47.625198, 55.386345>,  <49.014381, 47.496784, 55.186855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.692337, 47.625198, 55.386345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536080, 0.753664, 0.380276,
		-0.253790, 0.573522, -0.778886,
		-0.805115, 0.321035, 0.498726,
		48.450802, 47.721508, 55.535961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.174805, 48.223446, 55.144955>,  <49.014381, 47.496784, 55.186855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.174805, 48.223446, 55.144955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.893196, 48.157837, 55.421349>,  <48.724232, 48.118469, 55.587185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.893196, 48.157837, 55.421349>,  <49.174805, 48.223446, 55.144955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.893196, 48.157837, 55.421349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375967, 0.739358, 0.558569,
		-0.602501, 0.653028, -0.458854,
		-0.704018, -0.164025, 0.690981,
		48.681992, 48.108631, 55.628643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<47.824665, 47.873501, 56.595467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.082443, 47.924255, 56.293846>,  <48.237110, 47.954708, 56.112873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.082443, 47.924255, 56.293846>,  <47.824665, 47.873501, 56.595467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.082443, 47.924255, 56.293846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630259, -0.470244, -0.617773,
		-0.432972, 0.873368, -0.223077,
		0.644444, 0.126882, -0.754051,
		48.275776, 47.962318, 56.067631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388153, 48.148903, 56.110321>,  <47.824665, 47.873501, 56.595467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388153, 48.148903, 56.110321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.721146, 48.015182, 55.933586>,  <47.920940, 47.934952, 55.827545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.721146, 48.015182, 55.933586>,  <47.388153, 48.148903, 56.110321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721146, 48.015182, 55.933586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549679, -0.598342, -0.582957,
		-0.069488, 0.728170, -0.681866,
		0.832481, -0.334299, -0.441837,
		47.970890, 47.914894, 55.801033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266045, 48.248535, 55.330936>,  <47.388153, 48.148903, 56.110321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266045, 48.248535, 55.330936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.576492, 47.997017, 55.349884>,  <47.762760, 47.846104, 55.361252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.576492, 47.997017, 55.349884>,  <47.266045, 48.248535, 55.330936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.576492, 47.997017, 55.349884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322574, -0.460448, -0.827003,
		0.541830, 0.626577, -0.560199,
		0.776123, -0.628800, 0.047367,
		47.809330, 47.808376, 55.364094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.504921, 48.153927, 54.677101>,  <47.266045, 48.248535, 55.330936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.504921, 48.153927, 54.677101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.603058, 47.829430, 54.889397>,  <47.661942, 47.634731, 55.016773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.603058, 47.829430, 54.889397>,  <47.504921, 48.153927, 54.677101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603058, 47.829430, 54.889397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154951, -0.573249, -0.804596,
		0.956973, 0.115163, -0.266346,
		0.245342, -0.811248, 0.530739,
		47.676659, 47.586056, 55.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.911469, 47.888348, 54.238037>,  <47.504921, 48.153927, 54.677101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.911469, 47.888348, 54.238037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.818855, 47.595795, 54.494621>,  <47.763287, 47.420261, 54.648571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.818855, 47.595795, 54.494621>,  <47.911469, 47.888348, 54.238037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.818855, 47.595795, 54.494621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203359, -0.608419, -0.767119,
		0.951335, -0.308058, -0.007866,
		-0.231531, -0.731387, 0.641457,
		47.749397, 47.376377, 54.687057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.186634, 47.270870, 53.999653>,  <47.911469, 47.888348, 54.238037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.186634, 47.270870, 53.999653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.915215, 47.107803, 54.244072>,  <47.752361, 47.009964, 54.390724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.915215, 47.107803, 54.244072>,  <48.186634, 47.270870, 53.999653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.915215, 47.107803, 54.244072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373536, -0.524766, -0.764913,
		0.632487, -0.747279, 0.203800,
		-0.678551, -0.407671, 0.611043,
		47.711651, 46.985500, 54.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.205723, 46.516754, 54.015881>,  <48.186634, 47.270870, 53.999653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.205723, 46.516754, 54.015881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.834320, 46.623558, 54.119091>,  <47.611477, 46.687641, 54.181019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.834320, 46.623558, 54.119091>,  <48.205723, 46.516754, 54.015881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834320, 46.623558, 54.119091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359276, -0.470517, -0.805937,
		-0.093788, -0.841022, 0.532810,
		-0.928506, 0.267013, 0.258030,
		47.555767, 46.703663, 54.196499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.757950, 46.034462, 53.721729>,  <48.205723, 46.516754, 54.015881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.757950, 46.034462, 53.721729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.482567, 46.315895, 53.792156>,  <47.317337, 46.484753, 53.834412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.482567, 46.315895, 53.792156>,  <47.757950, 46.034462, 53.721729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482567, 46.315895, 53.792156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455595, -0.230645, -0.859788,
		-0.564319, -0.672145, 0.479337,
		-0.688460, 0.703579, 0.176069,
		47.276028, 46.526970, 53.844978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181267, 45.604202, 53.809856>,  <47.757950, 46.034462, 53.721729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181267, 45.604202, 53.809856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.081314, 45.964199, 53.666988>,  <47.021343, 46.180199, 53.581268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.081314, 45.964199, 53.666988>,  <47.181267, 45.604202, 53.809856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081314, 45.964199, 53.666988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495378, -0.435768, -0.751470,
		-0.831960, -0.010849, 0.554729,
		-0.249886, 0.899994, -0.357168,
		47.006348, 46.234196, 53.559837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527222, 45.604237, 53.504551>,  <47.181267, 45.604202, 53.809856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527222, 45.604237, 53.504551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.642281, 45.952103, 53.344086>,  <46.711315, 46.160824, 53.247807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.642281, 45.952103, 53.344086>,  <46.527222, 45.604237, 53.504551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642281, 45.952103, 53.344086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533629, -0.202291, -0.821169,
		-0.795297, 0.450283, 0.405891,
		0.287650, 0.869669, -0.401165,
		46.728577, 46.213005, 53.223736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993107, 45.726200, 53.185902>,  <46.527222, 45.604237, 53.504551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993107, 45.726200, 53.185902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.272507, 45.953434, 53.011826>,  <46.440147, 46.089775, 52.907379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.272507, 45.953434, 53.011826>,  <45.993107, 45.726200, 53.185902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272507, 45.953434, 53.011826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482462, -0.075305, -0.872674,
		-0.528522, 0.819520, 0.221477,
		0.698495, 0.568082, -0.435187,
		46.482056, 46.123859, 52.881268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.603317, 46.206589, 52.721870>,  <45.993107, 45.726200, 53.185902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.603317, 46.206589, 52.721870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.986023, 46.192886, 52.606331>,  <46.215645, 46.184666, 52.537006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.986023, 46.192886, 52.606331>,  <45.603317, 46.206589, 52.721870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.986023, 46.192886, 52.606331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290767, -0.085524, -0.952964,
		0.007943, 0.995747, -0.091788,
		0.956761, -0.034258, -0.288851,
		46.273052, 46.182610, 52.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563057, 46.606953, 52.116577>,  <45.603317, 46.206589, 52.721870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563057, 46.606953, 52.116577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.909622, 46.411362, 52.076103>,  <46.117561, 46.294006, 52.051819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.909622, 46.411362, 52.076103>,  <45.563057, 46.606953, 52.116577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909622, 46.411362, 52.076103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181440, -0.119511, -0.976113,
		0.465202, 0.864072, -0.192265,
		0.866410, -0.488974, -0.101181,
		46.169544, 46.264668, 52.045750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896393, 47.009712, 51.574360>,  <45.563057, 46.606953, 52.116577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896393, 47.009712, 51.574360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.074142, 46.652489, 51.602592>,  <46.180794, 46.438156, 51.619534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.074142, 46.652489, 51.602592>,  <45.896393, 47.009712, 51.574360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.074142, 46.652489, 51.602592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177908, -0.165193, -0.970082,
		0.877998, 0.418523, -0.232289,
		0.444374, -0.893056, 0.070580,
		46.207455, 46.384571, 51.623768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395519, 47.005116, 51.115479>,  <45.896393, 47.009712, 51.574360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395519, 47.005116, 51.115479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.281189, 46.630211, 51.195320>,  <46.212593, 46.405266, 51.243225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.281189, 46.630211, 51.195320>,  <46.395519, 47.005116, 51.115479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281189, 46.630211, 51.195320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293615, -0.112624, -0.949266,
		0.912193, -0.329929, -0.243005,
		-0.285822, -0.937263, 0.199607,
		46.195442, 46.349033, 51.255203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689671, 46.633030, 50.569588>,  <46.395519, 47.005116, 51.115479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689671, 46.633030, 50.569588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.440605, 46.359200, 50.721191>,  <46.291164, 46.194901, 50.812153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.440605, 46.359200, 50.721191>,  <46.689671, 46.633030, 50.569588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.440605, 46.359200, 50.721191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226603, -0.305854, -0.924718,
		0.748961, -0.661672, 0.035317,
		-0.622662, -0.684575, 0.379009,
		46.253807, 46.153828, 50.834896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.887974, 45.872166, 50.372684>,  <46.689671, 46.633030, 50.569588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.887974, 45.872166, 50.372684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.495819, 45.864952, 50.451195>,  <46.260529, 45.860622, 50.498302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.495819, 45.864952, 50.451195>,  <46.887974, 45.872166, 50.372684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495819, 45.864952, 50.451195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180543, -0.317392, -0.930949,
		0.079088, -0.948123, 0.307910,
		-0.980382, -0.018036, 0.196278,
		46.201706, 45.859543, 50.510078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678684, 45.202091, 50.050514>,  <46.887974, 45.872166, 50.372684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678684, 45.202091, 50.050514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.349464, 45.426758, 50.084274>,  <46.151932, 45.561558, 50.104530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.349464, 45.426758, 50.084274>,  <46.678684, 45.202091, 50.050514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349464, 45.426758, 50.084274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209523, -0.162121, -0.964270,
		-0.527916, -0.811323, 0.251115,
		-0.823046, 0.561668, 0.084404,
		46.102551, 45.595257, 50.109596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176842, 44.777405, 49.789837>,  <46.678684, 45.202091, 50.050514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176842, 44.777405, 49.789837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001053, 45.136707, 49.790199>,  <45.895580, 45.352291, 49.790417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001053, 45.136707, 49.790199>,  <46.176842, 44.777405, 49.789837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001053, 45.136707, 49.790199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374684, -0.182392, -0.909035,
		-0.816382, -0.399832, 0.416718,
		-0.439468, 0.898258, 0.000909,
		45.869213, 45.406185, 49.790474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400238, 44.683212, 49.743584>,  <46.176842, 44.777405, 49.789837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400238, 44.683212, 49.743584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.495995, 45.048672, 49.612167>,  <45.553448, 45.267948, 49.533318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.495995, 45.048672, 49.612167>,  <45.400238, 44.683212, 49.743584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495995, 45.048672, 49.612167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545725, -0.153255, -0.823831,
		-0.803041, 0.376513, 0.461912,
		0.239393, 0.913647, -0.328543,
		45.567814, 45.322765, 49.513603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817307, 44.888538, 49.441280>,  <45.400238, 44.683212, 49.743584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817307, 44.888538, 49.441280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.079788, 45.140934, 49.275749>,  <45.237278, 45.292370, 49.176430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.079788, 45.140934, 49.275749>,  <44.817307, 44.888538, 49.441280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079788, 45.140934, 49.275749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532039, -0.002013, -0.846717,
		-0.535102, 0.775789, 0.334390,
		0.656201, 0.630989, -0.413827,
		45.276649, 45.330231, 49.151600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398895, 45.248650, 48.946812>,  <44.817307, 44.888538, 49.441280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398895, 45.248650, 48.946812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.769669, 45.372726, 48.862362>,  <44.992134, 45.447174, 48.811691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.769669, 45.372726, 48.862362>,  <44.398895, 45.248650, 48.946812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769669, 45.372726, 48.862362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269134, 0.157550, -0.950129,
		-0.261460, 0.937527, 0.229522,
		0.926933, 0.310193, -0.211128,
		45.047749, 45.465786, 48.799023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300304, 45.815903, 48.540741>,  <44.398895, 45.248650, 48.946812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300304, 45.815903, 48.540741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.665955, 45.673046, 48.463982>,  <44.885345, 45.587334, 48.417927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.665955, 45.673046, 48.463982>,  <44.300304, 45.815903, 48.540741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665955, 45.673046, 48.463982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170547, 0.090668, -0.981169,
		0.367813, 0.929640, 0.021973,
		0.914127, -0.357139, -0.191896,
		44.940193, 45.565903, 48.406414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591042, 46.351055, 48.171013>,  <44.300304, 45.815903, 48.540741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591042, 46.351055, 48.171013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.787987, 46.019382, 48.065159>,  <44.906155, 45.820377, 48.001648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.787987, 46.019382, 48.065159>,  <44.591042, 46.351055, 48.171013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787987, 46.019382, 48.065159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453184, 0.015354, -0.891285,
		0.743103, 0.558764, -0.368214,
		0.492364, -0.829185, -0.264632,
		44.935696, 45.770626, 47.985767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601322, 46.413334, 47.456718>,  <44.591042, 46.351055, 48.171013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601322, 46.413334, 47.456718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.750275, 46.046082, 47.510929>,  <44.839645, 45.825729, 47.543457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.750275, 46.046082, 47.510929>,  <44.601322, 46.413334, 47.456718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750275, 46.046082, 47.510929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247639, -0.239031, -0.938903,
		0.894432, 0.316067, -0.316375,
		0.372380, -0.918132, 0.135526,
		44.861988, 45.770641, 47.551586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279060, 46.331947, 47.103291>,  <44.601322, 46.413334, 47.456718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279060, 46.331947, 47.103291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.086914, 45.982010, 47.128292>,  <44.971626, 45.772049, 47.143291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.086914, 45.982010, 47.128292>,  <45.279060, 46.331947, 47.103291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086914, 45.982010, 47.128292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000336, -0.071445, -0.997444,
		0.877069, -0.479115, 0.034614,
		-0.480364, -0.874839, 0.062501,
		44.942806, 45.719559, 47.147041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646801, 45.822330, 46.680180>,  <45.279060, 46.331947, 47.103291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646801, 45.822330, 46.680180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.286064, 45.653591, 46.717548>,  <45.069622, 45.552349, 46.739967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.286064, 45.653591, 46.717548>,  <45.646801, 45.822330, 46.680180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286064, 45.653591, 46.717548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026459, -0.161887, -0.986454,
		0.431255, -0.892098, 0.134835,
		-0.901842, -0.421846, 0.093419,
		45.015511, 45.527039, 46.745575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627205, 45.299629, 46.337105>,  <45.646801, 45.822330, 46.680180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627205, 45.299629, 46.337105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.235588, 45.377953, 46.359528>,  <45.000618, 45.424946, 46.372982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.235588, 45.377953, 46.359528>,  <45.627205, 45.299629, 46.337105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235588, 45.377953, 46.359528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054987, 0.010922, -0.998427,
		-0.196109, -0.980582, 0.000073,
		-0.979039, 0.195805, 0.056061,
		44.941875, 45.436695, 46.376347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323647, 44.845879, 45.858273>,  <45.627205, 45.299629, 46.337105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323647, 44.845879, 45.858273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.045036, 45.126415, 45.918900>,  <44.877869, 45.294735, 45.955276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.045036, 45.126415, 45.918900>,  <45.323647, 44.845879, 45.858273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045036, 45.126415, 45.918900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299656, -0.092384, -0.949564,
		-0.651963, -0.706817, 0.274508,
		-0.696528, 0.701338, 0.151571,
		44.836079, 45.336815, 45.964371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.229256, 42.684555, 33.382236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264046, 43.080696, 33.339081>,  <44.284920, 43.318382, 33.313187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.264046, 43.080696, 33.339081>,  <44.229256, 42.684555, 33.382236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264046, 43.080696, 33.339081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268959, -0.080938, -0.959745,
		-0.959217, 0.112489, 0.259324,
		0.086972, 0.990351, -0.107892,
		44.290138, 43.377800, 33.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535904, 43.073586, 33.032562>,  <44.229256, 42.684555, 33.382236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535904, 43.073586, 33.032562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869911, 43.285534, 32.973251>,  <44.070316, 43.412704, 32.937664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869911, 43.285534, 32.973251>,  <43.535904, 43.073586, 33.032562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869911, 43.285534, 32.973251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204501, 0.048690, -0.977655,
		-0.510813, 0.846679, 0.149016,
		0.835015, 0.529872, -0.148275,
		44.120415, 43.444496, 32.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423355, 43.760040, 32.800022>,  <43.535904, 43.073586, 33.032562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423355, 43.760040, 32.800022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766495, 43.626148, 32.644051>,  <43.972378, 43.545815, 32.550468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766495, 43.626148, 32.644051>,  <43.423355, 43.760040, 32.800022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766495, 43.626148, 32.644051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312446, 0.262698, -0.912890,
		0.408003, 0.904957, 0.120772,
		0.857852, -0.334727, -0.389932,
		44.023849, 43.525730, 32.527069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102863, 44.190681, 33.366566>,  <43.423355, 43.760040, 32.800022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102863, 44.190681, 33.366566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798088, 44.384838, 33.195061>,  <42.615223, 44.501331, 33.092155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798088, 44.384838, 33.195061>,  <43.102863, 44.190681, 33.366566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798088, 44.384838, 33.195061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346848, 0.253262, 0.903081,
		0.546941, 0.836809, -0.024612,
		-0.761940, 0.485395, -0.428765,
		42.569508, 44.530457, 33.066433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062851, 44.940155, 33.676102>,  <43.102863, 44.190681, 33.366566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062851, 44.940155, 33.676102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711426, 44.819656, 33.527847>,  <42.500568, 44.747356, 33.438896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.711426, 44.819656, 33.527847>,  <43.062851, 44.940155, 33.676102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711426, 44.819656, 33.527847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457384, 0.307161, 0.834537,
		-0.137558, 0.902719, -0.407647,
		-0.878566, -0.301249, -0.370636,
		42.447857, 44.729282, 33.416656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592659, 45.312019, 33.933079>,  <43.062851, 44.940155, 33.676102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592659, 45.312019, 33.933079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346947, 45.018318, 33.817471>,  <42.199520, 44.842098, 33.748108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346947, 45.018318, 33.817471>,  <42.592659, 45.312019, 33.933079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346947, 45.018318, 33.817471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481222, 0.058306, 0.874658,
		-0.625372, 0.676364, -0.389156,
		-0.614277, -0.734256, -0.289018,
		42.162663, 44.798042, 33.730766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100552, 45.567280, 34.194782>,  <42.592659, 45.312019, 33.933079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100552, 45.567280, 34.194782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016342, 45.181263, 34.132343>,  <41.965816, 44.949654, 34.094879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.016342, 45.181263, 34.132343>,  <42.100552, 45.567280, 34.194782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016342, 45.181263, 34.132343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421209, -0.054552, 0.905321,
		-0.882192, 0.256339, -0.395002,
		-0.210521, -0.965046, -0.156098,
		41.953186, 44.891750, 34.085514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441891, 45.521374, 34.401268>,  <42.100552, 45.567280, 34.194782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441891, 45.521374, 34.401268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613091, 45.160709, 34.425972>,  <41.715813, 44.944309, 34.440796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613091, 45.160709, 34.425972>,  <41.441891, 45.521374, 34.401268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613091, 45.160709, 34.425972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439336, -0.147852, 0.886072,
		-0.789808, -0.406375, -0.459415,
		0.428003, -0.901664, 0.061760,
		41.741493, 44.890209, 34.444500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889572, 45.143604, 34.754982>,  <41.441891, 45.521374, 34.401268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889572, 45.143604, 34.754982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225540, 44.938850, 34.827106>,  <41.427120, 44.815998, 34.870380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225540, 44.938850, 34.827106>,  <40.889572, 45.143604, 34.754982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225540, 44.938850, 34.827106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301641, -0.164115, 0.939190,
		-0.451170, -0.843229, -0.292250,
		0.839916, -0.511889, 0.180309,
		41.477516, 44.785282, 34.881199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671040, 44.460640, 34.979408>,  <40.889572, 45.143604, 34.754982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671040, 44.460640, 34.979408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049469, 44.505638, 35.100925>,  <41.276527, 44.532635, 35.173836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.049469, 44.505638, 35.100925>,  <40.671040, 44.460640, 34.979408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049469, 44.505638, 35.100925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275490, -0.213999, 0.937181,
		0.170436, -0.970335, -0.171469,
		0.946074, 0.112492, 0.303791,
		41.333290, 44.539387, 35.192062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712521, 43.932880, 35.535809>,  <40.671040, 44.460640, 34.979408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712521, 43.932880, 35.535809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032516, 44.166721, 35.589840>,  <41.224514, 44.307026, 35.622257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.032516, 44.166721, 35.589840>,  <40.712521, 43.932880, 35.535809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032516, 44.166721, 35.589840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004896, -0.218755, 0.975767,
		0.599988, -0.781269, -0.172141,
		0.799994, 0.584606, 0.135076,
		41.272514, 44.342102, 35.630363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123356, 43.523163, 35.968636>,  <40.712521, 43.932880, 35.535809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123356, 43.523163, 35.968636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.242584, 43.901104, 36.022900>,  <41.314121, 44.127869, 36.055458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.242584, 43.901104, 36.022900>,  <41.123356, 43.523163, 35.968636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242584, 43.901104, 36.022900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022231, -0.135210, 0.990568,
		0.954285, -0.298274, -0.019297,
		0.298069, 0.944855, 0.135660,
		41.332005, 44.184559, 36.063599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503426, 43.429497, 36.561844>,  <41.123356, 43.523163, 35.968636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503426, 43.429497, 36.561844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437080, 43.823841, 36.552330>,  <41.397274, 44.060448, 36.546619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.437080, 43.823841, 36.552330>,  <41.503426, 43.429497, 36.561844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437080, 43.823841, 36.552330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052160, 0.032860, 0.998098,
		0.984768, 0.164311, -0.056872,
		-0.165867, 0.985861, -0.023789,
		41.387321, 44.119598, 36.545193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046150, 43.830910, 36.965725>,  <41.503426, 43.429497, 36.561844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046150, 43.830910, 36.965725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751625, 44.101357, 36.955021>,  <41.574909, 44.263622, 36.948597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.751625, 44.101357, 36.955021>,  <42.046150, 43.830910, 36.965725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751625, 44.101357, 36.955021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079917, -0.047627, 0.995663,
		0.671906, 0.735257, 0.089101,
		-0.736312, 0.676113, -0.026759,
		41.530731, 44.304192, 36.946995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179523, 44.339066, 37.556526>,  <42.046150, 43.830910, 36.965725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179523, 44.339066, 37.556526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791801, 44.375942, 37.465366>,  <41.559166, 44.398067, 37.410671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791801, 44.375942, 37.465366>,  <42.179523, 44.339066, 37.556526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791801, 44.375942, 37.465366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222166, 0.068443, 0.972604,
		0.105266, 0.993386, -0.045860,
		-0.969310, 0.092193, -0.227902,
		41.501007, 44.403599, 37.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864101, 44.923382, 37.950630>,  <42.179523, 44.339066, 37.556526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864101, 44.923382, 37.950630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.548653, 44.700130, 37.847427>,  <41.359383, 44.566177, 37.785507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.548653, 44.700130, 37.847427>,  <41.864101, 44.923382, 37.950630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548653, 44.700130, 37.847427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324087, 0.020713, 0.945800,
		-0.522538, 0.829493, -0.197218,
		-0.788620, -0.558133, -0.258005,
		41.312065, 44.532692, 37.770027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279957, 45.259190, 38.228302>,  <41.864101, 44.923382, 37.950630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279957, 45.259190, 38.228302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154091, 44.883957, 38.170349>,  <41.078571, 44.658817, 38.135578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154091, 44.883957, 38.170349>,  <41.279957, 45.259190, 38.228302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154091, 44.883957, 38.170349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504290, 0.035902, 0.862788,
		-0.804163, 0.344552, -0.484362,
		-0.314665, -0.938080, -0.144884,
		41.059692, 44.602531, 38.126884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453720, 45.212994, 38.372746>,  <41.279957, 45.259190, 38.228302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453720, 45.212994, 38.372746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595955, 44.841854, 38.417732>,  <40.681293, 44.619171, 38.444725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.595955, 44.841854, 38.417732>,  <40.453720, 45.212994, 38.372746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595955, 44.841854, 38.417732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360283, -0.025041, 0.932507,
		-0.862413, -0.372103, -0.343194,
		0.355583, -0.927853, 0.112466,
		40.702629, 44.563499, 38.451473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997112, 44.773045, 38.756443>,  <40.453720, 45.212994, 38.372746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997112, 44.773045, 38.756443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361877, 44.624386, 38.826061>,  <40.580738, 44.535191, 38.867832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.361877, 44.624386, 38.826061>,  <39.997112, 44.773045, 38.756443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361877, 44.624386, 38.826061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165710, 0.054533, 0.984666,
		-0.375441, -0.926770, -0.011857,
		0.911913, -0.371649, 0.174049,
		40.635452, 44.512890, 38.878277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922447, 44.305939, 39.262547>,  <39.997112, 44.773045, 38.756443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922447, 44.305939, 39.262547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316513, 44.370796, 39.285019>,  <40.552952, 44.409710, 39.298504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316513, 44.370796, 39.285019>,  <39.922447, 44.305939, 39.262547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316513, 44.370796, 39.285019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061207, 0.026154, 0.997782,
		0.160315, -0.986420, 0.035690,
		0.985166, 0.162144, 0.056183,
		40.612064, 44.419441, 39.301872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065857, 44.001781, 39.908924>,  <39.922447, 44.305939, 39.262547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065857, 44.001781, 39.908924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415916, 44.173504, 39.819653>,  <40.625954, 44.276539, 39.766090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415916, 44.173504, 39.819653>,  <40.065857, 44.001781, 39.908924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415916, 44.173504, 39.819653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246705, 0.000883, 0.969090,
		0.416238, -0.903156, -0.105141,
		0.875147, 0.429311, -0.223181,
		40.678459, 44.302296, 39.752697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638775, 43.610870, 40.244732>,  <40.065857, 44.001781, 39.908924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638775, 43.610870, 40.244732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735924, 43.994331, 40.185413>,  <40.794212, 44.224407, 40.149822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735924, 43.994331, 40.185413>,  <40.638775, 43.610870, 40.244732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735924, 43.994331, 40.185413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284659, 0.075717, 0.955634,
		0.927353, -0.274308, -0.254501,
		0.242868, 0.958656, -0.148300,
		40.808784, 44.281929, 40.140923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329041, 43.741913, 40.491722>,  <40.638775, 43.610870, 40.244732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329041, 43.741913, 40.491722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183487, 44.113884, 40.470482>,  <41.096153, 44.337067, 40.457737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183487, 44.113884, 40.470482>,  <41.329041, 43.741913, 40.491722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183487, 44.113884, 40.470482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418309, 0.214094, 0.882712,
		0.832229, 0.298992, -0.466903,
		-0.363885, 0.929929, -0.053105,
		41.074322, 44.392864, 40.454552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868019, 44.125011, 40.690231>,  <41.329041, 43.741913, 40.491722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868019, 44.125011, 40.690231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544762, 44.349182, 40.762703>,  <41.350807, 44.483685, 40.806187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544762, 44.349182, 40.762703>,  <41.868019, 44.125011, 40.690231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544762, 44.349182, 40.762703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336555, 0.186954, 0.922919,
		0.483358, 0.806826, -0.339701,
		-0.808143, 0.560428, 0.181175,
		41.302319, 44.517311, 40.817055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200695, 44.646381, 41.085361>,  <41.868019, 44.125011, 40.690231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200695, 44.646381, 41.085361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813210, 44.719028, 41.153027>,  <41.580719, 44.762615, 41.193626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.813210, 44.719028, 41.153027>,  <42.200695, 44.646381, 41.085361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813210, 44.719028, 41.153027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206127, 0.209041, 0.955936,
		0.138254, 0.960894, -0.239937,
		-0.968709, 0.181619, 0.169165,
		41.522598, 44.773514, 41.203777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207851, 45.255547, 41.458351>,  <42.200695, 44.646381, 41.085361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207851, 45.255547, 41.458351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848824, 45.103107, 41.547020>,  <41.633408, 45.011642, 41.600220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.848824, 45.103107, 41.547020>,  <42.207851, 45.255547, 41.458351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848824, 45.103107, 41.547020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108298, 0.296803, 0.948778,
		-0.427372, 0.875597, -0.225128,
		-0.897566, -0.381100, 0.221671,
		41.579556, 44.988777, 41.613522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821720, 45.813713, 41.882126>,  <42.207851, 45.255547, 41.458351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821720, 45.813713, 41.882126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641884, 45.461521, 41.942284>,  <41.533981, 45.250206, 41.978378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641884, 45.461521, 41.942284>,  <41.821720, 45.813713, 41.882126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641884, 45.461521, 41.942284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035611, 0.185902, 0.981923,
		-0.892526, 0.436105, -0.114934,
		-0.449588, -0.880484, 0.150392,
		41.507008, 45.197376, 41.987400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287754, 45.973812, 42.398079>,  <41.821720, 45.813713, 41.882126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287754, 45.973812, 42.398079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338013, 45.577179, 42.410591>,  <41.368168, 45.339199, 42.418098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.338013, 45.577179, 42.410591>,  <41.287754, 45.973812, 42.398079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338013, 45.577179, 42.410591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061788, 0.023646, 0.997809,
		-0.990150, -0.127301, -0.058297,
		0.125643, -0.991582, 0.031279,
		41.375706, 45.279705, 42.419975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739197, 45.691963, 42.875809>,  <41.287754, 45.973812, 42.398079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739197, 45.691963, 42.875809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015182, 45.402660, 42.864109>,  <41.180775, 45.229080, 42.857090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015182, 45.402660, 42.864109>,  <40.739197, 45.691963, 42.875809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015182, 45.402660, 42.864109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190261, -0.220201, 0.956720,
		-0.698392, -0.654536, -0.289537,
		0.689964, -0.723253, -0.029254,
		41.222172, 45.185684, 42.855331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503361, 45.182800, 43.397926>,  <40.739197, 45.691963, 42.875809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503361, 45.182800, 43.397926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885887, 45.093937, 43.321930>,  <41.115402, 45.040619, 43.276333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.885887, 45.093937, 43.321930>,  <40.503361, 45.182800, 43.397926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885887, 45.093937, 43.321930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137613, -0.231257, 0.963111,
		-0.257911, -0.947186, -0.190582,
		0.956318, -0.222171, -0.189989,
		41.172783, 45.027287, 43.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600361, 44.483467, 43.658924>,  <40.503361, 45.182800, 43.397926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600361, 44.483467, 43.658924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941788, 44.691841, 43.661976>,  <41.146645, 44.816864, 43.663807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941788, 44.691841, 43.661976>,  <40.600361, 44.483467, 43.658924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941788, 44.691841, 43.661976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181365, -0.310830, 0.933001,
		0.488401, -0.794993, -0.359792,
		0.853564, 0.520932, 0.007625,
		41.197857, 44.848122, 43.664265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106178, 44.060802, 44.005905>,  <40.600361, 44.483467, 43.658924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106178, 44.060802, 44.005905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241119, 44.437336, 44.009724>,  <41.322083, 44.663254, 44.012016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241119, 44.437336, 44.009724>,  <41.106178, 44.060802, 44.005905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241119, 44.437336, 44.009724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423557, -0.160835, 0.891478,
		0.840710, -0.296700, -0.452965,
		0.337353, 0.941330, 0.009546,
		41.342327, 44.719734, 44.012589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.967567, 44.034523, 44.219246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824265, 44.406368, 44.253807>,  <41.738281, 44.629475, 44.274544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824265, 44.406368, 44.253807>,  <41.967567, 44.034523, 44.219246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824265, 44.406368, 44.253807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368515, 0.055769, 0.927947,
		0.857815, 0.364287, -0.362557,
		-0.358259, 0.929615, 0.086406,
		41.716785, 44.685253, 44.279728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538910, 44.431320, 44.354622>,  <41.967567, 44.034523, 44.219246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538910, 44.431320, 44.354622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259323, 44.686615, 44.483685>,  <42.091572, 44.839790, 44.561123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259323, 44.686615, 44.483685>,  <42.538910, 44.431320, 44.354622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259323, 44.686615, 44.483685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505353, 0.121548, 0.854309,
		0.506030, 0.760187, -0.407491,
		-0.698965, 0.638233, 0.322655,
		42.049633, 44.878086, 44.580482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879345, 44.989567, 44.613552>,  <42.538910, 44.431320, 44.354622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879345, 44.989567, 44.613552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525124, 44.995296, 44.799278>,  <42.312592, 44.998734, 44.910713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525124, 44.995296, 44.799278>,  <42.879345, 44.989567, 44.613552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525124, 44.995296, 44.799278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464107, 0.070108, 0.883000,
		-0.019905, 0.997437, -0.068732,
		-0.885555, 0.014323, 0.464313,
		42.259457, 44.999592, 44.938572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290874, 45.637772, 44.842117>,  <42.879345, 44.989567, 44.613552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290874, 45.637772, 44.842117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658226, 45.554089, 44.707764>,  <43.878635, 45.503880, 44.627151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658226, 45.554089, 44.707764>,  <43.290874, 45.637772, 44.842117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658226, 45.554089, 44.707764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301759, 0.178835, -0.936461,
		0.255979, 0.961380, 0.101109,
		0.918377, -0.209204, -0.335883,
		43.933739, 45.491329, 44.606998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440159, 46.058018, 44.256153>,  <43.290874, 45.637772, 44.842117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440159, 46.058018, 44.256153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759521, 45.817268, 44.249134>,  <43.951138, 45.672821, 44.244923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759521, 45.817268, 44.249134>,  <43.440159, 46.058018, 44.256153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759521, 45.817268, 44.249134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053401, 0.099800, -0.993573,
		0.599752, 0.792334, 0.111821,
		0.798402, -0.601869, -0.017544,
		43.999043, 45.636707, 44.243870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896317, 46.339138, 43.705605>,  <43.440159, 46.058018, 44.256153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896317, 46.339138, 43.705605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001671, 45.958134, 43.766727>,  <44.064884, 45.729530, 43.803402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001671, 45.958134, 43.766727>,  <43.896317, 46.339138, 43.705605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001671, 45.958134, 43.766727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173394, -0.109074, -0.978794,
		0.948979, 0.284298, 0.136431,
		0.263388, -0.952511, 0.152804,
		44.080688, 45.672379, 43.812569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299213, 46.277325, 43.226414>,  <43.896317, 46.339138, 43.705605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299213, 46.277325, 43.226414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200684, 45.900936, 43.319283>,  <44.141567, 45.675102, 43.375004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.200684, 45.900936, 43.319283>,  <44.299213, 46.277325, 43.226414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200684, 45.900936, 43.319283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008411, -0.237473, -0.971358,
		0.969151, -0.241223, 0.050581,
		-0.246325, -0.940967, 0.232176,
		44.126785, 45.618645, 43.388935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810566, 45.839737, 42.833691>,  <44.299213, 46.277325, 43.226414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810566, 45.839737, 42.833691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516380, 45.583427, 42.921783>,  <44.339867, 45.429642, 42.974640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516380, 45.583427, 42.921783>,  <44.810566, 45.839737, 42.833691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516380, 45.583427, 42.921783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056542, -0.265854, -0.962354,
		0.675199, -0.720230, 0.159295,
		-0.735466, -0.640773, 0.220228,
		44.295742, 45.391197, 42.987850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003639, 45.211491, 42.572441>,  <44.810566, 45.839737, 42.833691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003639, 45.211491, 42.572441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604439, 45.191277, 42.587601>,  <44.364918, 45.179150, 42.596699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604439, 45.191277, 42.587601>,  <45.003639, 45.211491, 42.572441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604439, 45.191277, 42.587601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020990, -0.300606, -0.953518,
		0.059582, -0.952409, 0.298944,
		-0.998003, -0.050537, 0.037902,
		44.305038, 45.176117, 42.598972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892166, 44.644680, 42.264481>,  <45.003639, 45.211491, 42.572441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892166, 44.644680, 42.264481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530960, 44.814507, 42.238247>,  <44.314236, 44.916401, 42.222507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.530960, 44.814507, 42.238247>,  <44.892166, 44.644680, 42.264481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530960, 44.814507, 42.238247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116462, -0.388886, -0.913895,
		-0.413517, -0.817625, 0.400617,
		-0.903017, 0.424568, -0.065589,
		44.260056, 44.941875, 42.218571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510742, 44.150700, 41.955574>,  <44.892166, 44.644680, 42.264481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510742, 44.150700, 41.955574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306755, 44.488045, 41.887840>,  <44.184364, 44.690453, 41.847198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306755, 44.488045, 41.887840>,  <44.510742, 44.150700, 41.955574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306755, 44.488045, 41.887840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158033, -0.285367, -0.945299,
		-0.845552, -0.455310, 0.278807,
		-0.509967, 0.843361, -0.169339,
		44.153767, 44.741055, 41.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871731, 43.960411, 41.607624>,  <44.510742, 44.150700, 41.955574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871731, 43.960411, 41.607624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958344, 44.344379, 41.536442>,  <44.010311, 44.574760, 41.493732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958344, 44.344379, 41.536442>,  <43.871731, 43.960411, 41.607624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958344, 44.344379, 41.536442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027563, -0.176197, -0.983969,
		-0.975885, 0.217969, -0.011695,
		0.216536, 0.959919, -0.177956,
		44.023304, 44.632355, 41.483055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457172, 44.150726, 40.997772>,  <43.871731, 43.960411, 41.607624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457172, 44.150726, 40.997772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709366, 44.461189, 41.001198>,  <43.860683, 44.647465, 41.003254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709366, 44.461189, 41.001198>,  <43.457172, 44.150726, 40.997772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709366, 44.461189, 41.001198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043068, 0.045992, -0.998013,
		-0.775005, 0.628865, 0.062425,
		0.630487, 0.776153, 0.008560,
		43.898510, 44.694035, 41.003765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145752, 44.592251, 40.596130>,  <43.457172, 44.150726, 40.997772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145752, 44.592251, 40.596130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533241, 44.689152, 40.617630>,  <43.765736, 44.747292, 40.630531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533241, 44.689152, 40.617630>,  <43.145752, 44.592251, 40.596130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533241, 44.689152, 40.617630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071206, -0.063872, -0.995414,
		-0.237704, 0.968110, -0.079124,
		0.968724, 0.242248, 0.053752,
		43.823860, 44.761826, 40.633755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233112, 44.964832, 40.047096>,  <43.145752, 44.592251, 40.596130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233112, 44.964832, 40.047096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620811, 44.891254, 40.112480>,  <43.853432, 44.847107, 40.151711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620811, 44.891254, 40.112480>,  <43.233112, 44.964832, 40.047096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620811, 44.891254, 40.112480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110622, -0.267677, -0.957137,
		0.219816, 0.945787, -0.239098,
		0.969249, -0.183944, 0.163464,
		43.911587, 44.836071, 40.161518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604626, 45.411163, 39.580822>,  <43.233112, 44.964832, 40.047096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604626, 45.411163, 39.580822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852913, 45.113960, 39.680939>,  <44.001884, 44.935638, 39.741009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852913, 45.113960, 39.680939>,  <43.604626, 45.411163, 39.580822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852913, 45.113960, 39.680939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242976, -0.121221, -0.962428,
		0.745431, 0.658215, 0.105289,
		0.620722, -0.743006, 0.250292,
		44.039131, 44.891060, 39.756027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081394, 45.519432, 39.156860>,  <43.604626, 45.411163, 39.580822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081394, 45.519432, 39.156860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167282, 45.148121, 39.278316>,  <44.218815, 44.925335, 39.351189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167282, 45.148121, 39.278316>,  <44.081394, 45.519432, 39.156860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167282, 45.148121, 39.278316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341195, -0.220011, -0.913882,
		0.915139, 0.299832, 0.269482,
		0.214723, -0.928276, 0.303642,
		44.231697, 44.869637, 39.369408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.719040, 45.428474, 38.969181>,  <44.081394, 45.519432, 39.156860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.719040, 45.428474, 38.969181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575294, 45.056618, 39.001759>,  <44.489048, 44.833504, 39.021305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575294, 45.056618, 39.001759>,  <44.719040, 45.428474, 38.969181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575294, 45.056618, 39.001759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442052, -0.246440, -0.862472,
		0.821858, -0.273935, 0.499509,
		-0.359360, -0.929638, 0.081445,
		44.467487, 44.777725, 39.026192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295265, 44.921398, 38.693607>,  <44.719040, 45.428474, 38.969181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295265, 44.921398, 38.693607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960983, 44.701733, 38.695145>,  <44.760414, 44.569935, 38.696068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960983, 44.701733, 38.695145>,  <45.295265, 44.921398, 38.693607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960983, 44.701733, 38.695145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277141, -0.427765, -0.860355,
		0.474118, -0.717939, 0.509682,
		-0.835706, -0.549163, 0.003841,
		44.710270, 44.536983, 38.696297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594715, 44.335831, 38.531288>,  <45.295265, 44.921398, 38.693607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594715, 44.335831, 38.531288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203049, 44.339573, 38.450153>,  <44.968048, 44.341820, 38.401470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203049, 44.339573, 38.450153>,  <45.594715, 44.335831, 38.531288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203049, 44.339573, 38.450153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191841, -0.284770, -0.939204,
		-0.066548, -0.958550, 0.277043,
		-0.979167, 0.009354, -0.202841,
		44.909298, 44.342381, 38.389301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.486603, 43.747791, 38.043800>,  <45.594715, 44.335831, 38.531288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.486603, 43.747791, 38.043800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173988, 43.990139, 37.984295>,  <44.986420, 44.135548, 37.948589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173988, 43.990139, 37.984295>,  <45.486603, 43.747791, 38.043800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173988, 43.990139, 37.984295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107325, -0.104336, -0.988734,
		-0.614565, -0.788693, 0.016517,
		-0.781532, 0.605869, -0.148767,
		44.939529, 44.171898, 37.939663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102993, 43.432526, 37.514336>,  <45.486603, 43.747791, 38.043800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102993, 43.432526, 37.514336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994659, 43.817329, 37.528049>,  <44.929657, 44.048214, 37.536278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994659, 43.817329, 37.528049>,  <45.102993, 43.432526, 37.514336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994659, 43.817329, 37.528049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065708, 0.017058, -0.997693,
		-0.960380, -0.272466, 0.058592,
		-0.270838, 0.962014, 0.034285,
		44.913406, 44.105934, 37.538334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550655, 43.409977, 37.155426>,  <45.102993, 43.432526, 37.514336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550655, 43.409977, 37.155426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690689, 43.784389, 37.141033>,  <44.774708, 44.009037, 37.132397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690689, 43.784389, 37.141033>,  <44.550655, 43.409977, 37.155426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690689, 43.784389, 37.141033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061444, -0.015384, -0.997992,
		-0.934701, 0.351593, 0.052128,
		0.350085, 0.936027, -0.035983,
		44.795715, 44.065197, 37.130238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188992, 43.661552, 36.556381>,  <44.550655, 43.409977, 37.155426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188992, 43.661552, 36.556381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479454, 43.928646, 36.621899>,  <44.653732, 44.088902, 36.661209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479454, 43.928646, 36.621899>,  <44.188992, 43.661552, 36.556381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479454, 43.928646, 36.621899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001463, 0.239728, -0.970839,
		-0.687532, 0.704738, 0.175056,
		0.726153, 0.667739, 0.163789,
		44.697300, 44.128967, 36.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916649, 44.258747, 36.330029>,  <44.188992, 43.661552, 36.556381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916649, 44.258747, 36.330029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316208, 44.270733, 36.315525>,  <44.555943, 44.277924, 36.306824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316208, 44.270733, 36.315525>,  <43.916649, 44.258747, 36.330029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316208, 44.270733, 36.315525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038139, 0.064715, -0.997175,
		-0.027536, 0.997454, 0.065787,
		0.998893, 0.029968, -0.036260,
		44.615875, 44.279724, 36.304646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012657, 44.657932, 35.874229>,  <43.916649, 44.258747, 36.330029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012657, 44.657932, 35.874229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380226, 44.501259, 35.892799>,  <44.600769, 44.407253, 35.903942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380226, 44.501259, 35.892799>,  <44.012657, 44.657932, 35.874229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380226, 44.501259, 35.892799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032340, -0.042488, -0.998574,
		0.393099, 0.919118, -0.026376,
		0.918927, -0.391685, 0.046426,
		44.655903, 44.383755, 35.906727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418476, 45.033489, 35.482647>,  <44.012657, 44.657932, 35.874229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418476, 45.033489, 35.482647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597054, 44.676323, 35.505939>,  <44.704201, 44.462025, 35.519917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597054, 44.676323, 35.505939>,  <44.418476, 45.033489, 35.482647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597054, 44.676323, 35.505939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007600, -0.061295, -0.998091,
		0.894779, 0.446035, -0.020579,
		0.446445, -0.892914, 0.058235,
		44.730988, 44.408447, 35.523411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668945, 45.025452, 34.792187>,  <44.418476, 45.033489, 35.482647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668945, 45.025452, 34.792187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706429, 44.652782, 34.932590>,  <44.728920, 44.429180, 35.016830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706429, 44.652782, 34.932590>,  <44.668945, 45.025452, 34.792187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.706429, 44.652782, 34.932590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000204, -0.352540, -0.935797,
		0.995600, 0.087762, -0.032845,
		0.093707, -0.931672, 0.351007,
		44.734539, 44.373280, 35.037891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334824, 44.703312, 34.550114>,  <44.668945, 45.025452, 34.792187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334824, 44.703312, 34.550114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055504, 44.423473, 34.610703>,  <44.887913, 44.255569, 34.647057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055504, 44.423473, 34.610703>,  <45.334824, 44.703312, 34.550114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.055504, 44.423473, 34.610703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030841, -0.182005, -0.982814,
		0.715141, -0.690969, 0.105518,
		-0.698299, -0.699597, 0.151470,
		44.846016, 44.213593, 34.656143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537102, 44.121002, 34.084473>,  <45.334824, 44.703312, 34.550114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537102, 44.121002, 34.084473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161407, 44.030212, 34.187477>,  <44.935989, 43.975739, 34.249279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161407, 44.030212, 34.187477>,  <45.537102, 44.121002, 34.084473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161407, 44.030212, 34.187477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199447, -0.249699, -0.947561,
		0.279377, -0.941345, 0.189256,
		-0.939239, -0.226980, 0.257509,
		44.879635, 43.962120, 34.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343483, 43.433743, 33.792969>,  <45.537102, 44.121002, 34.084473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343483, 43.433743, 33.792969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008339, 43.641190, 33.861126>,  <44.807255, 43.765656, 33.902020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008339, 43.641190, 33.861126>,  <45.343483, 43.433743, 33.792969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008339, 43.641190, 33.861126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328422, -0.229559, -0.916210,
		-0.436046, -0.823614, 0.362663,
		-0.837856, 0.518617, 0.170395,
		44.756981, 43.796776, 33.912243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910610, 42.878574, 33.676403>,  <45.343483, 43.433743, 33.792969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910610, 42.878574, 33.676403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708519, 43.223732, 33.671200>,  <44.587265, 43.430824, 33.668076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.708519, 43.223732, 33.671200>,  <44.910610, 42.878574, 33.676403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708519, 43.223732, 33.671200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469998, -0.287769, -0.834441,
		-0.723774, -0.415465, 0.550944,
		-0.505225, 0.862889, -0.013012,
		44.556950, 43.482597, 33.667297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.715881, 44.577076, 45.568058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.630463, 44.964539, 45.618805>,  <44.579212, 45.197018, 45.649254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.630463, 44.964539, 45.618805>,  <44.715881, 44.577076, 45.568058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630463, 44.964539, 45.618805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560777, -0.015201, -0.827828,
		-0.799955, -0.247924, 0.546448,
		-0.213545, 0.968660, 0.126870,
		44.566399, 45.255138, 45.656864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089565, 44.635906, 45.295055>,  <44.715881, 44.577076, 45.568058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089565, 44.635906, 45.295055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.203972, 45.018948, 45.308884>,  <44.272614, 45.248772, 45.317181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.203972, 45.018948, 45.308884>,  <44.089565, 44.635906, 45.295055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203972, 45.018948, 45.308884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460457, 0.168989, -0.871449,
		-0.840343, 0.233328, 0.489267,
		0.286013, 0.957602, 0.034571,
		44.289776, 45.306229, 45.319256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506344, 44.904587, 45.126984>,  <44.089565, 44.635906, 45.295055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506344, 44.904587, 45.126984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.811501, 45.147625, 45.038597>,  <43.994595, 45.293446, 44.985565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.811501, 45.147625, 45.038597>,  <43.506344, 44.904587, 45.126984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811501, 45.147625, 45.038597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371025, 0.131543, -0.919259,
		-0.529467, 0.783281, 0.325785,
		0.762893, 0.607592, -0.220969,
		44.040367, 45.329903, 44.972305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922550, 45.323425, 45.386116>,  <43.506344, 44.904587, 45.126984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922550, 45.323425, 45.386116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.555542, 45.167477, 45.417507>,  <42.335339, 45.073906, 45.436340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.555542, 45.167477, 45.417507>,  <42.922550, 45.323425, 45.386116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555542, 45.167477, 45.417507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170796, -0.208085, 0.963083,
		-0.359152, 0.897050, 0.257511,
		-0.917518, -0.389875, 0.078478,
		42.280285, 45.050514, 45.441051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576771, 45.719582, 45.918732>,  <42.922550, 45.323425, 45.386116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576771, 45.719582, 45.918732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.386269, 45.368004, 45.908646>,  <42.271965, 45.157059, 45.902596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.386269, 45.368004, 45.908646>,  <42.576771, 45.719582, 45.918732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386269, 45.368004, 45.908646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049836, -0.055607, 0.997208,
		-0.877891, 0.473674, 0.070286,
		-0.476260, -0.878943, -0.025211,
		42.243389, 45.104321, 45.901081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091614, 45.716599, 46.442921>,  <42.576771, 45.719582, 45.918732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091614, 45.716599, 46.442921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.087830, 45.322159, 46.376556>,  <42.085560, 45.085495, 46.336739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.087830, 45.322159, 46.376556>,  <42.091614, 45.716599, 46.442921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087830, 45.322159, 46.376556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246638, -0.158487, 0.956061,
		-0.969062, 0.049963, -0.241710,
		-0.009460, -0.986096, -0.165907,
		42.084991, 45.026329, 46.326786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390293, 45.445210, 46.677185>,  <42.091614, 45.716599, 46.442921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390293, 45.445210, 46.677185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657112, 45.147217, 46.674366>,  <41.817204, 44.968422, 46.672676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.657112, 45.147217, 46.674366>,  <41.390293, 45.445210, 46.677185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657112, 45.147217, 46.674366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261002, -0.242535, 0.934374,
		-0.697800, -0.621433, -0.356225,
		0.667048, -0.744981, -0.007045,
		41.857227, 44.923721, 46.672253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039555, 44.826565, 46.898769>,  <41.390293, 45.445210, 46.677185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039555, 44.826565, 46.898769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417709, 44.715946, 46.967785>,  <41.644604, 44.649574, 47.009193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.417709, 44.715946, 46.967785>,  <41.039555, 44.826565, 46.898769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417709, 44.715946, 46.967785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305508, -0.567262, 0.764774,
		-0.113618, -0.775718, -0.620767,
		0.945386, -0.276542, 0.172537,
		41.701324, 44.632984, 47.019547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980804, 44.122654, 47.015686>,  <41.039555, 44.826565, 46.898769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980804, 44.122654, 47.015686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302124, 44.276485, 47.197594>,  <41.494915, 44.368782, 47.306740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.302124, 44.276485, 47.197594>,  <40.980804, 44.122654, 47.015686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302124, 44.276485, 47.197594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380059, -0.256897, 0.888572,
		0.458552, -0.886626, -0.060203,
		0.803296, 0.384576, 0.454770,
		41.543114, 44.391857, 47.334026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205692, 43.677883, 47.513390>,  <40.980804, 44.122654, 47.015686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205692, 43.677883, 47.513390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400314, 44.001190, 47.646034>,  <41.517086, 44.195175, 47.725620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400314, 44.001190, 47.646034>,  <41.205692, 43.677883, 47.513390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400314, 44.001190, 47.646034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361158, -0.159531, 0.918757,
		0.795507, -0.566786, 0.214294,
		0.486552, 0.808272, 0.331608,
		41.546280, 44.243671, 47.745518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460140, 43.506294, 48.201855>,  <41.205692, 43.677883, 47.513390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460140, 43.506294, 48.201855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448120, 43.905563, 48.180855>,  <41.440910, 44.145123, 48.168255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.448120, 43.905563, 48.180855>,  <41.460140, 43.506294, 48.201855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448120, 43.905563, 48.180855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614285, 0.022991, 0.788749,
		0.788512, 0.055946, 0.612470,
		-0.030046, 0.998169, -0.052495,
		41.439106, 44.205013, 48.165108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633385, 43.766560, 48.955296>,  <41.460140, 43.506294, 48.201855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633385, 43.766560, 48.955296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444206, 44.061607, 48.762535>,  <41.330700, 44.238636, 48.646877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444206, 44.061607, 48.762535>,  <41.633385, 43.766560, 48.955296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444206, 44.061607, 48.762535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593618, 0.137421, 0.792927,
		0.651105, 0.661080, 0.372874,
		-0.472947, 0.737623, -0.481905,
		41.302322, 44.282894, 48.617962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691021, 44.293064, 49.386253>,  <41.633385, 43.766560, 48.955296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691021, 44.293064, 49.386253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400368, 44.398014, 49.132271>,  <41.225975, 44.460983, 48.979881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.400368, 44.398014, 49.132271>,  <41.691021, 44.293064, 49.386253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400368, 44.398014, 49.132271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586258, 0.245070, 0.772168,
		0.358205, 0.933328, -0.024257,
		-0.726630, 0.262374, -0.634956,
		41.182377, 44.476727, 48.941784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372604, 44.917583, 49.672188>,  <41.691021, 44.293064, 49.386253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372604, 44.917583, 49.672188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.104149, 44.776764, 49.411224>,  <40.943077, 44.692272, 49.254646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.104149, 44.776764, 49.411224>,  <41.372604, 44.917583, 49.672188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104149, 44.776764, 49.411224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740266, 0.365422, 0.564334,
		0.039732, 0.861701, -0.505858,
		-0.671139, -0.352047, -0.652407,
		40.902805, 44.671150, 49.215504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996536, 45.453934, 49.560490>,  <41.372604, 44.917583, 49.672188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996536, 45.453934, 49.560490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780251, 45.133183, 49.458805>,  <40.650478, 44.940731, 49.397793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.780251, 45.133183, 49.458805>,  <40.996536, 45.453934, 49.560490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780251, 45.133183, 49.458805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728827, 0.295669, 0.617568,
		-0.420050, 0.519205, -0.744301,
		-0.540711, -0.801877, -0.254215,
		40.618038, 44.892620, 49.382542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313148, 45.714485, 49.504299>,  <40.996536, 45.453934, 49.560490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313148, 45.714485, 49.504299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267227, 45.329159, 49.601326>,  <40.239674, 45.097961, 49.659542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.267227, 45.329159, 49.601326>,  <40.313148, 45.714485, 49.504299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267227, 45.329159, 49.601326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778081, 0.239008, 0.580917,
		-0.617584, -0.122047, -0.776978,
		-0.114805, -0.963317, 0.242570,
		40.232784, 45.040165, 49.674099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606834, 45.592087, 49.523647>,  <40.313148, 45.714485, 49.504299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606834, 45.592087, 49.523647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764648, 45.298416, 49.744671>,  <39.859337, 45.122215, 49.877285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764648, 45.298416, 49.744671>,  <39.606834, 45.592087, 49.523647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764648, 45.298416, 49.744671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698593, 0.150980, 0.699409,
		-0.596916, -0.661959, -0.453324,
		0.394537, -0.734177, 0.552563,
		39.883011, 45.078163, 49.910439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089779, 45.434769, 49.922981>,  <39.606834, 45.592087, 49.523647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089779, 45.434769, 49.922981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375626, 45.230221, 50.113907>,  <39.547134, 45.107491, 50.228462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375626, 45.230221, 50.113907>,  <39.089779, 45.434769, 49.922981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375626, 45.230221, 50.113907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462582, 0.166391, 0.870823,
		-0.524733, -0.843099, -0.117645,
		0.714614, -0.511369, 0.477313,
		39.590012, 45.076809, 50.257099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766834, 45.010960, 50.367832>,  <39.089779, 45.434769, 49.922981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766834, 45.010960, 50.367832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126991, 45.060177, 50.534763>,  <39.343086, 45.089706, 50.634922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.126991, 45.060177, 50.534763>,  <38.766834, 45.010960, 50.367832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126991, 45.060177, 50.534763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430503, 0.113125, 0.895472,
		0.062960, -0.985934, 0.154821,
		0.900391, 0.123030, 0.417325,
		39.397110, 45.097088, 50.659962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785522, 44.605774, 50.942261>,  <38.766834, 45.010960, 50.367832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785522, 44.605774, 50.942261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066513, 44.884457, 51.000397>,  <39.235107, 45.051666, 51.035278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066513, 44.884457, 51.000397>,  <38.785522, 44.605774, 50.942261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066513, 44.884457, 51.000397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457224, 0.285285, 0.842353,
		0.545409, -0.658189, 0.518958,
		0.702478, 0.696707, 0.145343,
		39.277256, 45.093468, 51.043999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945480, 44.574848, 51.643547>,  <38.785522, 44.605774, 50.942261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945480, 44.574848, 51.643547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111778, 44.921070, 51.531849>,  <39.211555, 45.128803, 51.464832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.111778, 44.921070, 51.531849>,  <38.945480, 44.574848, 51.643547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111778, 44.921070, 51.531849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357092, 0.437729, 0.825154,
		0.836445, -0.243339, 0.491065,
		0.415745, 0.865552, -0.279242,
		39.236504, 45.180737, 51.448078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203224, 44.793228, 52.201427>,  <38.945480, 44.574848, 51.643547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203224, 44.793228, 52.201427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187508, 45.128254, 51.983459>,  <39.178078, 45.329269, 51.852680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.187508, 45.128254, 51.983459>,  <39.203224, 44.793228, 52.201427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187508, 45.128254, 51.983459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315419, 0.507060, 0.802123,
		0.948139, 0.203392, 0.244264,
		-0.039289, 0.837569, -0.544917,
		39.175720, 45.379524, 51.819984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587952, 45.245308, 52.589664>,  <39.203224, 44.793228, 52.201427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587952, 45.245308, 52.589664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355164, 45.476982, 52.361328>,  <39.215492, 45.615986, 52.224327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.355164, 45.476982, 52.361328>,  <39.587952, 45.245308, 52.589664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355164, 45.476982, 52.361328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319412, 0.482745, 0.815434,
		0.747858, 0.656889, -0.095943,
		-0.581966, 0.579184, -0.570843,
		39.180573, 45.650738, 52.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700878, 45.930523, 52.771893>,  <39.587952, 45.245308, 52.589664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700878, 45.930523, 52.771893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352020, 45.962208, 52.578773>,  <39.142708, 45.981216, 52.462902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352020, 45.962208, 52.578773>,  <39.700878, 45.930523, 52.771893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352020, 45.962208, 52.578773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389827, 0.483792, 0.783569,
		0.295639, 0.871591, -0.391058,
		-0.872143, 0.079209, -0.482797,
		39.090378, 45.985970, 52.433933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474098, 46.684067, 52.832943>,  <39.700878, 45.930523, 52.771893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474098, 46.684067, 52.832943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161987, 46.463112, 52.715622>,  <38.974720, 46.330540, 52.645229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161987, 46.463112, 52.715622>,  <39.474098, 46.684067, 52.832943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161987, 46.463112, 52.715622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578307, 0.458651, 0.674685,
		-0.238164, 0.696065, -0.677327,
		-0.780282, -0.552388, -0.293305,
		38.927902, 46.297394, 52.627632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921082, 47.135132, 52.944237>,  <39.474098, 46.684067, 52.832943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921082, 47.135132, 52.944237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765350, 46.769287, 52.900589>,  <38.671913, 46.549778, 52.874401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765350, 46.769287, 52.900589>,  <38.921082, 47.135132, 52.944237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765350, 46.769287, 52.900589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655437, 0.191849, 0.730476,
		-0.647169, 0.355914, -0.674164,
		-0.389325, -0.914614, -0.109120,
		38.648552, 46.494904, 52.867851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278965, 47.225704, 52.755714>,  <38.921082, 47.135132, 52.944237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278965, 47.225704, 52.755714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337914, 46.891327, 52.967178>,  <38.373283, 46.690701, 53.094059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.337914, 46.891327, 52.967178>,  <38.278965, 47.225704, 52.755714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337914, 46.891327, 52.967178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608226, 0.344902, 0.714916,
		-0.779964, -0.426903, -0.457613,
		0.147368, -0.835941, 0.528664,
		38.382122, 46.640545, 53.125778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635815, 47.099529, 52.956322>,  <38.278965, 47.225704, 52.755714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635815, 47.099529, 52.956322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877022, 46.880051, 53.187943>,  <38.021748, 46.748363, 53.326916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.877022, 46.880051, 53.187943>,  <37.635815, 47.099529, 52.956322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877022, 46.880051, 53.187943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574239, 0.205283, 0.792533,
		-0.553729, -0.810427, -0.191293,
		0.603021, -0.548696, 0.579050,
		38.057930, 46.715443, 53.361656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218361, 46.734383, 53.339943>,  <37.635815, 47.099529, 52.956322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218361, 46.734383, 53.339943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.550140, 46.708641, 53.561890>,  <37.749207, 46.693195, 53.695057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.550140, 46.708641, 53.561890>,  <37.218361, 46.734383, 53.339943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550140, 46.708641, 53.561890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518719, 0.279801, 0.807863,
		-0.207239, -0.957899, 0.198700,
		0.829447, -0.064351, 0.554866,
		37.798973, 46.689335, 53.728348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978836, 46.539150, 53.970417>,  <37.218361, 46.734383, 53.339943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978836, 46.539150, 53.970417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343956, 46.675209, 54.060829>,  <37.563030, 46.756844, 54.115078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343956, 46.675209, 54.060829>,  <36.978836, 46.539150, 53.970417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343956, 46.675209, 54.060829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387670, 0.547571, 0.741538,
		0.128458, -0.764506, 0.631688,
		0.912804, 0.340143, 0.226036,
		37.617798, 46.777252, 54.128639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063801, 46.482197, 54.720390>,  <36.978836, 46.539150, 53.970417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063801, 46.482197, 54.720390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356964, 46.732071, 54.612610>,  <37.532864, 46.881996, 54.547939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356964, 46.732071, 54.612610>,  <37.063801, 46.482197, 54.720390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356964, 46.732071, 54.612610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099361, 0.490110, 0.865979,
		0.673028, -0.607913, 0.421277,
		0.732913, 0.624687, -0.269455,
		37.576839, 46.919476, 54.531773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439987, 46.525906, 55.295540>,  <37.063801, 46.482197, 54.720390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439987, 46.525906, 55.295540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558121, 46.856232, 55.103367>,  <37.629002, 47.054428, 54.988064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558121, 46.856232, 55.103367>,  <37.439987, 46.525906, 55.295540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558121, 46.856232, 55.103367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027018, 0.509879, 0.859822,
		0.955013, -0.240952, 0.172895,
		0.295332, 0.825812, -0.480430,
		37.646721, 47.103977, 54.959236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077213, 46.780262, 55.649906>,  <37.439987, 46.525906, 55.295540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077213, 46.780262, 55.649906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926102, 47.099541, 55.462219>,  <37.835434, 47.291107, 55.349606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926102, 47.099541, 55.462219>,  <38.077213, 46.780262, 55.649906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926102, 47.099541, 55.462219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050226, 0.523691, 0.850426,
		0.924534, 0.297703, -0.237927,
		-0.377775, 0.798198, -0.469218,
		37.812771, 47.339001, 55.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409412, 47.346333, 55.849594>,  <38.077213, 46.780262, 55.649906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409412, 47.346333, 55.849594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068939, 47.515892, 55.725792>,  <37.864655, 47.617630, 55.651512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068939, 47.515892, 55.725792>,  <38.409412, 47.346333, 55.849594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068939, 47.515892, 55.725792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035875, 0.541311, 0.840057,
		0.523638, 0.726147, -0.445548,
		-0.851185, 0.423902, -0.309502,
		37.813583, 47.643063, 55.632942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400963, 48.086449, 56.135738>,  <38.409412, 47.346333, 55.849594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400963, 48.086449, 56.135738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026215, 47.998550, 56.026943>,  <37.801365, 47.945812, 55.961666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026215, 47.998550, 56.026943>,  <38.400963, 48.086449, 56.135738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026215, 47.998550, 56.026943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343749, 0.436342, 0.831530,
		-0.064043, 0.872536, -0.484334,
		-0.936875, -0.219743, -0.271988,
		37.745152, 47.932629, 55.945347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
