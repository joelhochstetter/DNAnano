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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<3.051013, 4.761612, 1.634694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804722, 4.698669, 1.325859>,  <2.656947, 4.660904, 1.140558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804722, 4.698669, 1.325859>,  <3.051013, 4.761612, 1.634694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804722, 4.698669, 1.325859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093961, -0.958203, 0.270221,
		-0.782336, 0.238929, 0.575207,
		-0.615728, -0.157356, -0.772087,
		2.620003, 4.651463, 1.094233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301055, 4.550719, 1.895914>,  <3.051013, 4.761612, 1.634694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301055, 4.550719, 1.895914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.421436, 4.408966, 1.541775>,  <2.493665, 4.323915, 1.329291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.421436, 4.408966, 1.541775>,  <2.301055, 4.550719, 1.895914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.421436, 4.408966, 1.541775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189558, -0.932094, 0.308657,
		-0.934612, 0.074937, -0.347684,
		0.300945, -0.354381, -0.885351,
		2.511722, 4.302651, 1.276170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922752, 3.984586, 1.810772>,  <2.301055, 4.550719, 1.895914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922752, 3.984586, 1.810772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254551, 3.942131, 1.591438>,  <2.453630, 3.916658, 1.459838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.254551, 3.942131, 1.591438>,  <1.922752, 3.984586, 1.810772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.254551, 3.942131, 1.591438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018659, -0.986496, 0.162722,
		-0.558200, -0.124746, -0.820275,
		0.829497, -0.106137, -0.548334,
		2.503400, 3.910290, 1.426938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.891399, 3.321755, 1.485102>,  <1.922752, 3.984586, 1.810772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.891399, 3.321755, 1.485102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281025, 3.407715, 1.456779>,  <2.514801, 3.459291, 1.439786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281025, 3.407715, 1.456779>,  <1.891399, 3.321755, 1.485102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.281025, 3.407715, 1.456779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216247, -0.976267, 0.011841,
		-0.066581, -0.026846, -0.997420,
		0.974066, 0.214900, -0.070806,
		2.573245, 3.472185, 1.435538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.175833, 2.914098, 0.929589>,  <1.891399, 3.321755, 1.485102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.175833, 2.914098, 0.929589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.445904, 3.011292, 1.208183>,  <2.607947, 3.069607, 1.375340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.445904, 3.011292, 1.208183>,  <2.175833, 2.914098, 0.929589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.445904, 3.011292, 1.208183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171554, -0.970025, 0.172107,
		0.717428, 0.003282, -0.696624,
		0.675178, 0.242983, 0.696486,
		2.648457, 3.084187, 1.417129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.712678, 2.561283, 0.779159>,  <2.175833, 2.914098, 0.929589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.712678, 2.561283, 0.779159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.735107, 2.610573, 1.175476>,  <2.748565, 2.640147, 1.413266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.735107, 2.610573, 1.175476>,  <2.712678, 2.561283, 0.779159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.735107, 2.610573, 1.175476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052647, -0.991339, 0.120313,
		0.997038, 0.045416, -0.062075,
		0.056073, 0.123225, 0.990793,
		2.751929, 2.647540, 1.472714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228045, 2.130484, 0.939612>,  <2.712678, 2.561283, 0.779159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228045, 2.130484, 0.939612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007835, 2.185493, 1.268978>,  <2.875710, 2.218499, 1.466598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.007835, 2.185493, 1.268978>,  <3.228045, 2.130484, 0.939612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.007835, 2.185493, 1.268978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031147, -0.989035, 0.144359,
		0.834238, 0.053826, 0.548770,
		-0.550524, 0.137523, 0.823415,
		2.842678, 2.226750, 1.516002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.474663, 1.687443, 1.372700>,  <3.228045, 2.130484, 0.939612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.474663, 1.687443, 1.372700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118652, 1.767670, 1.536469>,  <2.905046, 1.815806, 1.634730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118652, 1.767670, 1.536469>,  <3.474663, 1.687443, 1.372700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.118652, 1.767670, 1.536469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099829, -0.961977, 0.254235,
		0.444845, 0.185403, 0.876207,
		-0.890027, 0.200566, 0.409422,
		2.851645, 1.827839, 1.659295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.111666, 0.642724, 2.023834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.765374, 0.547211, 2.199787>,  <3.557599, 0.489903, 2.305359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.765374, 0.547211, 2.199787>,  <4.111666, 0.642724, 2.023834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.765374, 0.547211, 2.199787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368966, 0.898316, -0.238523,
		-0.338198, -0.368798, -0.865800,
		-0.865729, -0.238783, 0.439882,
		3.505656, 0.475576, 2.331752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.454995, 0.629962, 1.639490>,  <4.111666, 0.642724, 2.023834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.454995, 0.629962, 1.639490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.366481, 0.757065, 2.008286>,  <3.313372, 0.833327, 2.229563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.366481, 0.757065, 2.008286>,  <3.454995, 0.629962, 1.639490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.366481, 0.757065, 2.008286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441956, 0.810089, -0.385266,
		-0.869314, -0.492732, -0.038826,
		-0.221286, 0.317758, 0.921988,
		3.300095, 0.852392, 2.284882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.790629, 0.756821, 1.615106>,  <3.454995, 0.629962, 1.639490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.790629, 0.756821, 1.615106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.966096, 0.989120, 1.889420>,  <3.071376, 1.128500, 2.054008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.966096, 0.989120, 1.889420>,  <2.790629, 0.756821, 1.615106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.966096, 0.989120, 1.889420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350447, 0.813262, -0.464534,
		-0.827501, -0.036555, 0.560274,
		0.438668, 0.580749, 0.685785,
		3.097696, 1.163345, 2.095155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.282847, 1.174690, 2.016701>,  <2.790629, 0.756821, 1.615106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.282847, 1.174690, 2.016701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622779, 1.374008, 2.085392>,  <2.826738, 1.493599, 2.126606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.622779, 1.374008, 2.085392>,  <2.282847, 1.174690, 2.016701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.622779, 1.374008, 2.085392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490408, 0.866963, -0.088743,
		-0.193101, -0.008800, 0.981139,
		0.849830, 0.498295, 0.171727,
		2.877728, 1.523497, 2.136910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.047870, 1.809618, 2.371589>,  <2.282847, 1.174690, 2.016701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.047870, 1.809618, 2.371589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.413807, 1.855957, 2.216854>,  <2.633369, 1.883760, 2.124013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.413807, 1.855957, 2.216854>,  <2.047870, 1.809618, 2.371589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.413807, 1.855957, 2.216854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142097, 0.989050, -0.039858,
		0.377984, 0.091432, 0.921286,
		0.914842, 0.115847, -0.386837,
		2.688260, 1.890711, 2.100803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.331231, 2.364496, 2.727811>,  <2.047870, 1.809618, 2.371589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.331231, 2.364496, 2.727811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.538302, 2.338852, 2.386543>,  <2.662545, 2.323466, 2.181782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.538302, 2.338852, 2.386543>,  <2.331231, 2.364496, 2.727811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.538302, 2.338852, 2.386543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018545, 0.996114, -0.086103,
		0.855375, 0.060395, 0.514477,
		0.517678, -0.064109, -0.853170,
		2.693606, 2.319619, 2.130592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.729173, 3.015586, 2.686500>,  <2.331231, 2.364496, 2.727811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.729173, 3.015586, 2.686500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.760285, 2.879333, 2.311710>,  <2.778953, 2.797582, 2.086837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.760285, 2.879333, 2.311710>,  <2.729173, 3.015586, 2.686500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.760285, 2.879333, 2.311710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077794, 0.939029, -0.334921,
		0.993931, -0.046841, 0.099537,
		0.077780, -0.340632, -0.936974,
		2.783619, 2.777144, 2.030618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344193, 3.224789, 2.476862>,  <2.729173, 3.015586, 2.686500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344193, 3.224789, 2.476862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.107932, 3.186203, 2.156406>,  <2.966176, 3.163052, 1.964133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.107932, 3.186203, 2.156406>,  <3.344193, 3.224789, 2.476862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107932, 3.186203, 2.156406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172951, 0.954622, -0.242456,
		0.788173, -0.281766, -0.547166,
		-0.590653, -0.096464, -0.801139,
		2.930736, 3.157264, 1.916065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
