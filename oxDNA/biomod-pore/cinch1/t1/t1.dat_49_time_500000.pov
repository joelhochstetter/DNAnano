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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.281452, 32.476440, 22.809608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927151, 32.352535, 22.947872>,  <42.714569, 32.278191, 23.030830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927151, 32.352535, 22.947872>,  <43.281452, 32.476440, 22.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927151, 32.352535, 22.947872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309759, -0.160107, -0.937238,
		0.345664, -0.937237, 0.045864,
		-0.885757, -0.309763, 0.345661,
		42.661423, 32.259605, 23.051571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050579, 31.883499, 22.477907>,  <43.281452, 32.476440, 22.809608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050579, 31.883499, 22.477907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746555, 32.121613, 22.582169>,  <42.564140, 32.264481, 22.644726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746555, 32.121613, 22.582169>,  <43.050579, 31.883499, 22.477907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746555, 32.121613, 22.582169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264938, 0.082396, -0.960739,
		-0.593390, -0.799279, 0.095087,
		-0.760063, 0.595285, 0.260652,
		42.518536, 32.300198, 22.660364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455975, 31.513077, 22.311058>,  <43.050579, 31.883499, 22.477907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455975, 31.513077, 22.311058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387951, 31.907066, 22.323135>,  <42.347137, 32.143459, 22.330381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387951, 31.907066, 22.323135>,  <42.455975, 31.513077, 22.311058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387951, 31.907066, 22.323135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243367, -0.012288, -0.969856,
		-0.954910, -0.172277, 0.241799,
		-0.170055, 0.984972, 0.030193,
		42.336933, 32.202557, 22.332193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840126, 31.722670, 22.105383>,  <42.455975, 31.513077, 22.311058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840126, 31.722670, 22.105383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073879, 32.041050, 22.042194>,  <42.214130, 32.232079, 22.004282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073879, 32.041050, 22.042194>,  <41.840126, 31.722670, 22.105383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073879, 32.041050, 22.042194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240357, -0.016152, -0.970550,
		-0.775061, 0.605147, 0.181873,
		0.584388, 0.795950, -0.157970,
		42.249195, 32.279835, 21.994804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211452, 31.875933, 22.501122>,  <41.840126, 31.722670, 22.105383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211452, 31.875933, 22.501122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846905, 31.921505, 22.659328>,  <40.628178, 31.948849, 22.754251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846905, 31.921505, 22.659328>,  <41.211452, 31.875933, 22.501122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846905, 31.921505, 22.659328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370935, -0.189114, 0.909199,
		0.178383, 0.975323, 0.130092,
		-0.911365, 0.113930, 0.395516,
		40.573494, 31.955685, 22.777983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261177, 32.438435, 23.122782>,  <41.211452, 31.875933, 22.501122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261177, 32.438435, 23.122782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933128, 32.213810, 23.166702>,  <40.736301, 32.079037, 23.193054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933128, 32.213810, 23.166702>,  <41.261177, 32.438435, 23.122782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933128, 32.213810, 23.166702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287875, -0.239104, 0.927339,
		-0.494502, 0.792137, 0.357752,
		-0.820120, -0.561559, 0.109799,
		40.687092, 32.045341, 23.199642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207993, 32.600525, 23.760080>,  <41.261177, 32.438435, 23.122782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207993, 32.600525, 23.760080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977299, 32.281475, 23.689445>,  <40.838882, 32.090046, 23.647064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977299, 32.281475, 23.689445>,  <41.207993, 32.600525, 23.760080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977299, 32.281475, 23.689445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189066, -0.340610, 0.920999,
		-0.794756, 0.497781, 0.347243,
		-0.576730, -0.797621, -0.176588,
		40.804279, 32.042191, 23.636469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738472, 32.589764, 24.356899>,  <41.207993, 32.600525, 23.760080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738472, 32.589764, 24.356899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759499, 32.228268, 24.186962>,  <40.772114, 32.011372, 24.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759499, 32.228268, 24.186962>,  <40.738472, 32.589764, 24.356899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759499, 32.228268, 24.186962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230485, -0.424925, 0.875394,
		-0.971655, 0.051900, -0.230637,
		0.052570, -0.903740, -0.424842,
		40.775269, 31.957146, 24.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263615, 32.195534, 24.696735>,  <40.738472, 32.589764, 24.356899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263615, 32.195534, 24.696735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501762, 31.926224, 24.521355>,  <40.644650, 31.764639, 24.416126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501762, 31.926224, 24.521355>,  <40.263615, 32.195534, 24.696735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501762, 31.926224, 24.521355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046977, -0.573947, 0.817544,
		-0.802079, -0.466142, -0.373338,
		0.595368, -0.673273, -0.438453,
		40.680374, 31.724241, 24.389818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985058, 31.615835, 24.983536>,  <40.263615, 32.195534, 24.696735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985058, 31.615835, 24.983536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339218, 31.507843, 24.832180>,  <40.551712, 31.443047, 24.741365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339218, 31.507843, 24.832180>,  <39.985058, 31.615835, 24.983536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339218, 31.507843, 24.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119362, -0.654688, 0.746415,
		-0.449247, -0.706040, -0.547434,
		0.885398, -0.269982, -0.378391,
		40.604839, 31.426847, 24.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936863, 30.923698, 24.804228>,  <39.985058, 31.615835, 24.983536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936863, 30.923698, 24.804228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315323, 31.020996, 24.889668>,  <40.542400, 31.079374, 24.940931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315323, 31.020996, 24.889668>,  <39.936863, 30.923698, 24.804228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315323, 31.020996, 24.889668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004195, -0.650570, 0.759435,
		0.323689, -0.719438, -0.614519,
		0.946154, 0.243243, 0.213600,
		40.599171, 31.093969, 24.953747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201286, 30.289560, 25.105936>,  <39.936863, 30.923698, 24.804228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201286, 30.289560, 25.105936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502045, 30.521637, 25.231178>,  <40.682499, 30.660883, 25.306324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502045, 30.521637, 25.231178>,  <40.201286, 30.289560, 25.105936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502045, 30.521637, 25.231178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058314, -0.531583, 0.844997,
		0.656700, -0.617089, -0.433527,
		0.751894, 0.580190, 0.313106,
		40.727612, 30.695694, 25.325109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873547, 29.860546, 25.278419>,  <40.201286, 30.289560, 25.105936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873547, 29.860546, 25.278419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949402, 30.210529, 25.456627>,  <40.994915, 30.420519, 25.563551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949402, 30.210529, 25.456627>,  <40.873547, 29.860546, 25.278419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949402, 30.210529, 25.456627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172963, -0.476427, 0.862033,
		0.966500, -0.086413, -0.241682,
		0.189634, 0.874957, 0.445520,
		41.006290, 30.473017, 25.590282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376480, 29.591118, 25.719540>,  <40.873547, 29.860546, 25.278419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376480, 29.591118, 25.719540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228096, 29.926254, 25.879745>,  <41.139065, 30.127337, 25.975870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228096, 29.926254, 25.879745>,  <41.376480, 29.591118, 25.719540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228096, 29.926254, 25.879745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033864, -0.418797, 0.907448,
		0.928030, 0.350192, 0.126985,
		-0.370962, 0.837839, 0.400516,
		41.116806, 30.177607, 25.999901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752125, 29.749002, 26.311836>,  <41.376480, 29.591118, 25.719540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752125, 29.749002, 26.311836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396793, 29.926228, 26.360126>,  <41.183594, 30.032562, 26.389101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396793, 29.926228, 26.360126>,  <41.752125, 29.749002, 26.311836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396793, 29.926228, 26.360126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046461, -0.348259, 0.936246,
		0.456858, 0.826082, 0.329953,
		-0.888325, 0.443062, 0.120725,
		41.130295, 30.059147, 26.396343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727196, 29.688042, 26.975723>,  <41.752125, 29.749002, 26.311836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727196, 29.688042, 26.975723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360291, 29.832058, 26.907608>,  <41.140148, 29.918468, 26.866739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360291, 29.832058, 26.907608>,  <41.727196, 29.688042, 26.975723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360291, 29.832058, 26.907608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303350, -0.354507, 0.884479,
		0.258081, 0.862957, 0.434395,
		-0.917264, 0.360041, -0.170286,
		41.085110, 29.940071, 26.856522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469131, 30.203991, 27.420340>,  <41.727196, 29.688042, 26.975723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469131, 30.203991, 27.420340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121883, 30.059963, 27.283688>,  <40.913532, 29.973547, 27.201696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121883, 30.059963, 27.283688>,  <41.469131, 30.203991, 27.420340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121883, 30.059963, 27.283688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234594, -0.308904, 0.921707,
		-0.437408, 0.880301, 0.183697,
		-0.868124, -0.360068, -0.341631,
		40.861446, 29.951942, 27.181198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008179, 30.443422, 27.901392>,  <41.469131, 30.203991, 27.420340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008179, 30.443422, 27.901392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853779, 30.126339, 27.712662>,  <40.761139, 29.936089, 27.599424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853779, 30.126339, 27.712662>,  <41.008179, 30.443422, 27.901392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853779, 30.126339, 27.712662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288006, -0.382344, 0.877990,
		-0.876390, 0.474789, -0.080721,
		-0.385997, -0.792710, -0.471824,
		40.737980, 29.888527, 27.571114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475151, 30.261641, 28.268593>,  <41.008179, 30.443422, 27.901392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475151, 30.261641, 28.268593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516193, 29.922348, 28.060757>,  <40.540817, 29.718773, 27.936054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516193, 29.922348, 28.060757>,  <40.475151, 30.261641, 28.268593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516193, 29.922348, 28.060757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111816, -0.528872, 0.841303,
		-0.988418, -0.028223, -0.149110,
		0.102604, -0.848232, -0.519591,
		40.546974, 29.667879, 27.904879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961891, 29.889221, 28.521225>,  <40.475151, 30.261641, 28.268593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961891, 29.889221, 28.521225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221214, 29.630295, 28.360882>,  <40.376808, 29.474939, 28.264677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221214, 29.630295, 28.360882>,  <39.961891, 29.889221, 28.521225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221214, 29.630295, 28.360882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207883, -0.656973, 0.724687,
		-0.732452, -0.386486, -0.560484,
		0.648304, -0.647314, -0.400857,
		40.415707, 29.436100, 28.240625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660042, 29.246225, 28.736368>,  <39.961891, 29.889221, 28.521225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660042, 29.246225, 28.736368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022488, 29.133427, 28.610237>,  <40.239956, 29.065746, 28.534559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022488, 29.133427, 28.610237>,  <39.660042, 29.246225, 28.736368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022488, 29.133427, 28.610237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013509, -0.725732, 0.687845,
		-0.422814, -0.627527, -0.653788,
		0.906116, -0.281999, -0.315327,
		40.294323, 29.048826, 28.515638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614815, 28.624296, 28.640072>,  <39.660042, 29.246225, 28.736368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614815, 28.624296, 28.640072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007053, 28.689682, 28.683346>,  <40.242397, 28.728912, 28.709311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007053, 28.689682, 28.683346>,  <39.614815, 28.624296, 28.640072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007053, 28.689682, 28.683346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058835, -0.771895, 0.633022,
		0.186982, -0.614376, -0.766537,
		0.980600, 0.163463, 0.108184,
		40.301235, 28.738720, 28.715801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894951, 27.959164, 28.502371>,  <39.614815, 28.624296, 28.640072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894951, 27.959164, 28.502371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155014, 28.174675, 28.716663>,  <40.311054, 28.303982, 28.845240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155014, 28.174675, 28.716663>,  <39.894951, 27.959164, 28.502371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155014, 28.174675, 28.716663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019228, -0.716543, 0.697278,
		0.759554, -0.443041, -0.476228,
		0.650160, 0.538777, 0.535734,
		40.350063, 28.336308, 28.877384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473106, 27.467260, 28.780600>,  <39.894951, 27.959164, 28.502371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473106, 27.467260, 28.780600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500320, 27.801670, 28.998383>,  <40.516651, 28.002316, 29.129053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500320, 27.801670, 28.998383>,  <40.473106, 27.467260, 28.780600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500320, 27.801670, 28.998383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008332, -0.546181, 0.837625,
		0.997648, -0.052455, -0.044127,
		0.068039, 0.836023, 0.544460,
		40.520733, 28.052477, 29.161720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095142, 27.425190, 29.255421>,  <40.473106, 27.467260, 28.780600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095142, 27.425190, 29.255421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818169, 27.649944, 29.436451>,  <40.651985, 27.784796, 29.545069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818169, 27.649944, 29.436451>,  <41.095142, 27.425190, 29.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818169, 27.649944, 29.436451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054473, -0.584779, 0.809362,
		0.719423, 0.585081, 0.374312,
		-0.692432, 0.561884, 0.452575,
		40.610439, 27.818510, 29.572224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386677, 27.265087, 29.987995>,  <41.095142, 27.425190, 29.255421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386677, 27.265087, 29.987995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012325, 27.406002, 29.990257>,  <40.787716, 27.490551, 29.991613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012325, 27.406002, 29.990257>,  <41.386677, 27.265087, 29.987995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012325, 27.406002, 29.990257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130080, -0.360393, 0.923686,
		0.327438, 0.863720, 0.383109,
		-0.935876, 0.352285, 0.005654,
		40.731564, 27.511688, 29.991953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308571, 27.641554, 30.547892>,  <41.386677, 27.265087, 29.987995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308571, 27.641554, 30.547892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939671, 27.495525, 30.497009>,  <40.718330, 27.407907, 30.466480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939671, 27.495525, 30.497009>,  <41.308571, 27.641554, 30.547892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939671, 27.495525, 30.497009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117022, -0.049984, 0.991871,
		-0.368462, 0.929636, 0.003376,
		-0.922248, -0.365072, -0.127205,
		40.662994, 27.386003, 30.458847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748367, 27.993448, 31.013451>,  <41.308571, 27.641554, 30.547892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748367, 27.993448, 31.013451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586018, 27.643745, 30.906910>,  <40.488609, 27.433924, 30.842985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586018, 27.643745, 30.906910>,  <40.748367, 27.993448, 31.013451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586018, 27.643745, 30.906910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454894, -0.059522, 0.888554,
		-0.792678, 0.481801, -0.373536,
		-0.405872, -0.874257, -0.266350,
		40.464256, 27.381468, 30.827005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057178, 27.997009, 31.256500>,  <40.748367, 27.993448, 31.013451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057178, 27.997009, 31.256500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148495, 27.611038, 31.204662>,  <40.203285, 27.379456, 31.173559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148495, 27.611038, 31.204662>,  <40.057178, 27.997009, 31.256500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148495, 27.611038, 31.204662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402432, -0.214732, 0.889910,
		-0.886528, -0.151006, -0.437340,
		0.228293, -0.964928, -0.129596,
		40.216984, 27.321560, 31.165783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556828, 27.435966, 31.182337>,  <40.057178, 27.997009, 31.256500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556828, 27.435966, 31.182337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880268, 27.329185, 31.392063>,  <40.074333, 27.265118, 31.517899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880268, 27.329185, 31.392063>,  <39.556828, 27.435966, 31.182337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880268, 27.329185, 31.392063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552961, -0.040350, 0.832230,
		-0.201009, -0.962865, -0.180241,
		0.808597, -0.266952, 0.524315,
		40.122849, 27.249100, 31.549358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002121, 27.849707, 31.568443>,  <39.556828, 27.435966, 31.182337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002121, 27.849707, 31.568443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839527, 27.484364, 31.577808>,  <38.741970, 27.265158, 31.583427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839527, 27.484364, 31.577808>,  <39.002121, 27.849707, 31.568443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839527, 27.484364, 31.577808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892882, 0.402544, 0.201794,
		-0.193734, 0.061121, -0.979148,
		-0.406484, -0.913358, 0.023413,
		38.717583, 27.210356, 31.584833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377472, 27.932064, 31.260782>,  <39.002121, 27.849707, 31.568443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377472, 27.932064, 31.260782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325733, 27.595203, 31.470181>,  <38.294689, 27.393087, 31.595819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325733, 27.595203, 31.470181>,  <38.377472, 27.932064, 31.260782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325733, 27.595203, 31.470181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899814, 0.321512, 0.294897,
		-0.416659, -0.432905, -0.799368,
		-0.129344, -0.842154, 0.523495,
		38.286930, 27.342558, 31.627230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886112, 27.410410, 30.990553>,  <38.377472, 27.932064, 31.260782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886112, 27.410410, 30.990553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890392, 27.394775, 31.390224>,  <37.892960, 27.385395, 31.630028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890392, 27.394775, 31.390224>,  <37.886112, 27.410410, 30.990553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890392, 27.394775, 31.390224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981004, 0.193142, 0.018061,
		-0.193690, -0.980392, -0.036284,
		0.010699, -0.039093, 0.999178,
		37.893604, 27.383051, 31.689978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627857, 26.773798, 30.742472>,  <37.886112, 27.410410, 30.990553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627857, 26.773798, 30.742472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231537, 26.719769, 30.745708>,  <36.993744, 26.687351, 30.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231537, 26.719769, 30.745708>,  <37.627857, 26.773798, 30.742472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231537, 26.719769, 30.745708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113442, 0.796566, -0.593813,
		0.073763, -0.589269, -0.804562,
		-0.990803, -0.135073, 0.008091,
		36.934296, 26.679247, 30.748137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310757, 26.749348, 29.992376>,  <37.627857, 26.773798, 30.742472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310757, 26.749348, 29.992376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045570, 26.861420, 30.270073>,  <36.886459, 26.928663, 30.436691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045570, 26.861420, 30.270073>,  <37.310757, 26.749348, 29.992376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045570, 26.861420, 30.270073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366195, 0.687458, -0.627139,
		-0.652976, -0.670000, -0.353161,
		-0.662966, 0.280181, 0.694244,
		36.846680, 26.945475, 30.478346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528503, 26.476517, 29.851492>,  <37.310757, 26.749348, 29.992376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528503, 26.476517, 29.851492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663181, 26.825474, 29.993233>,  <36.743988, 27.034847, 30.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663181, 26.825474, 29.993233>,  <36.528503, 26.476517, 29.851492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663181, 26.825474, 29.993233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099526, 0.407188, -0.907906,
		-0.936338, 0.270422, 0.223925,
		0.336698, 0.872393, 0.354352,
		36.764191, 27.087193, 30.099539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120434, 27.092836, 29.513685>,  <36.528503, 26.476517, 29.851492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120434, 27.092836, 29.513685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502758, 27.161419, 29.609203>,  <36.732155, 27.202568, 29.666513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502758, 27.161419, 29.609203>,  <36.120434, 27.092836, 29.513685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502758, 27.161419, 29.609203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168257, 0.347022, -0.922640,
		-0.241059, 0.922051, 0.302840,
		0.955814, 0.171456, 0.238794,
		36.789501, 27.212856, 29.680841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215771, 27.773130, 29.303585>,  <36.120434, 27.092836, 29.513685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215771, 27.773130, 29.303585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598759, 27.663094, 29.338409>,  <36.828552, 27.597071, 29.359304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598759, 27.663094, 29.338409>,  <36.215771, 27.773130, 29.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598759, 27.663094, 29.338409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227029, 0.532019, -0.815729,
		0.178084, 0.800799, 0.571845,
		0.957467, -0.275094, 0.087060,
		36.885998, 27.580564, 29.364527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583202, 28.310829, 29.084217>,  <36.215771, 27.773130, 29.303585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583202, 28.310829, 29.084217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859562, 28.027466, 29.026497>,  <37.025375, 27.857449, 28.991865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859562, 28.027466, 29.026497>,  <36.583202, 28.310829, 29.084217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859562, 28.027466, 29.026497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379700, 0.525414, -0.761425,
		0.615218, 0.471274, 0.631988,
		0.690895, -0.708408, -0.144302,
		37.066830, 27.814943, 28.983206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339706, 28.604435, 29.029194>,  <36.583202, 28.310829, 29.084217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339706, 28.604435, 29.029194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343117, 28.239906, 28.864552>,  <37.345161, 28.021189, 28.765766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343117, 28.239906, 28.864552>,  <37.339706, 28.604435, 29.029194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343117, 28.239906, 28.864552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330059, 0.391118, -0.859120,
		0.943922, -0.128530, 0.304124,
		0.008526, -0.911321, -0.411607,
		37.345676, 27.966511, 28.741070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995476, 28.430361, 28.815672>,  <37.339706, 28.604435, 29.029194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995476, 28.430361, 28.815672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746571, 28.220139, 28.583611>,  <37.597229, 28.094006, 28.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746571, 28.220139, 28.583611>,  <37.995476, 28.430361, 28.815672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746571, 28.220139, 28.583611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331580, 0.494394, -0.803510,
		0.709114, -0.692363, -0.133380,
		-0.622263, -0.525555, -0.580156,
		37.559891, 28.062471, 28.409563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325874, 28.426607, 28.075012>,  <37.995476, 28.430361, 28.815672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325874, 28.426607, 28.075012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957222, 28.286560, 28.008057>,  <37.736031, 28.202532, 27.967882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957222, 28.286560, 28.008057>,  <38.325874, 28.426607, 28.075012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957222, 28.286560, 28.008057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018423, 0.391376, -0.920046,
		0.387609, -0.851035, -0.354258,
		-0.921640, -0.350092, -0.167379,
		37.680733, 28.181524, 27.957840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439339, 28.314770, 27.469236>,  <38.325874, 28.426607, 28.075012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439339, 28.314770, 27.469236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042728, 28.282253, 27.509789>,  <37.804764, 28.262743, 27.534121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042728, 28.282253, 27.509789>,  <38.439339, 28.314770, 27.469236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042728, 28.282253, 27.509789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127297, 0.450845, -0.883478,
		0.026109, -0.888893, -0.457370,
		-0.991521, -0.081289, 0.101382,
		37.745274, 28.257866, 27.540203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146004, 27.959246, 26.946009>,  <38.439339, 28.314770, 27.469236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146004, 27.959246, 26.946009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823162, 28.165684, 27.060715>,  <37.629459, 28.289547, 27.129539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823162, 28.165684, 27.060715>,  <38.146004, 27.959246, 26.946009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823162, 28.165684, 27.060715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047158, 0.427800, -0.902642,
		-0.588529, -0.742046, -0.320939,
		-0.807100, 0.516096, 0.286766,
		37.581032, 28.320513, 27.146744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630444, 27.781364, 26.432724>,  <38.146004, 27.959246, 26.946009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630444, 27.781364, 26.432724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554138, 28.141560, 26.589050>,  <37.508354, 28.357676, 26.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554138, 28.141560, 26.589050>,  <37.630444, 27.781364, 26.432724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554138, 28.141560, 26.589050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045574, 0.389571, -0.919868,
		-0.980578, -0.193286, -0.033277,
		-0.190762, 0.900486, 0.390814,
		37.496910, 28.411705, 26.706295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171200, 28.125364, 25.960894>,  <37.630444, 27.781364, 26.432724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171200, 28.125364, 25.960894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280243, 28.461853, 26.147671>,  <37.345669, 28.663746, 26.259737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280243, 28.461853, 26.147671>,  <37.171200, 28.125364, 25.960894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280243, 28.461853, 26.147671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009867, 0.487741, -0.872933,
		-0.962076, 0.233358, 0.141261,
		0.272605, 0.841221, 0.466941,
		37.362026, 28.714220, 26.287752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787106, 28.748140, 25.661777>,  <37.171200, 28.125364, 25.960894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787106, 28.748140, 25.661777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080406, 28.911469, 25.879261>,  <37.256386, 29.009466, 26.009750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080406, 28.911469, 25.879261>,  <36.787106, 28.748140, 25.661777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080406, 28.911469, 25.879261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021064, 0.785596, -0.618382,
		-0.679633, 0.464881, 0.567437,
		0.733250, 0.408320, 0.543709,
		37.300381, 29.033964, 26.042374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543392, 29.330313, 25.821014>,  <36.787106, 28.748140, 25.661777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543392, 29.330313, 25.821014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941044, 29.373222, 25.815277>,  <37.179634, 29.398968, 25.811834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941044, 29.373222, 25.815277>,  <36.543392, 29.330313, 25.821014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941044, 29.373222, 25.815277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088179, 0.725977, -0.682043,
		-0.062754, 0.679301, 0.731172,
		0.994126, 0.107275, -0.014342,
		37.239281, 29.405405, 25.810974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642014, 29.981499, 25.623350>,  <36.543392, 29.330313, 25.821014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642014, 29.981499, 25.623350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018597, 29.853012, 25.582413>,  <37.244545, 29.775919, 25.557850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018597, 29.853012, 25.582413>,  <36.642014, 29.981499, 25.623350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018597, 29.853012, 25.582413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227418, 0.829210, -0.510580,
		0.248871, 0.457415, 0.853718,
		0.941459, -0.321219, -0.102342,
		37.301033, 29.756647, 25.551710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162167, 30.540863, 25.784384>,  <36.642014, 29.981499, 25.623350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162167, 30.540863, 25.784384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384197, 30.290318, 25.565456>,  <37.517418, 30.139990, 25.434101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384197, 30.290318, 25.565456>,  <37.162167, 30.540863, 25.784384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384197, 30.290318, 25.565456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375719, 0.775847, -0.506850,
		0.742106, 0.075706, 0.665994,
		0.555081, -0.626363, -0.547316,
		37.550720, 30.102409, 25.401262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841740, 30.913458, 25.743195>,  <37.162167, 30.540863, 25.784384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841740, 30.913458, 25.743195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819168, 30.650909, 25.442265>,  <37.805626, 30.493380, 25.261707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819168, 30.650909, 25.442265>,  <37.841740, 30.913458, 25.743195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819168, 30.650909, 25.442265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446696, 0.657304, -0.606972,
		0.892905, -0.370310, 0.256109,
		-0.056426, -0.656371, -0.752325,
		37.802238, 30.453999, 25.216566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408985, 31.037924, 25.346519>,  <37.841740, 30.913458, 25.743195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408985, 31.037924, 25.346519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182205, 30.818630, 25.100590>,  <38.046139, 30.687054, 24.953032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182205, 30.818630, 25.100590>,  <38.408985, 31.037924, 25.346519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182205, 30.818630, 25.100590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448304, 0.420816, -0.788630,
		0.691084, -0.722739, 0.007197,
		-0.566945, -0.548236, -0.614825,
		38.012123, 30.654160, 24.916142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817669, 30.828527, 24.794640>,  <38.408985, 31.037924, 25.346519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817669, 30.828527, 24.794640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442413, 30.830959, 24.656155>,  <38.217262, 30.832418, 24.573065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442413, 30.830959, 24.656155>,  <38.817669, 30.828527, 24.794640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442413, 30.830959, 24.656155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328109, 0.335117, -0.883200,
		0.110652, -0.942157, -0.316380,
		-0.938137, 0.006079, -0.346211,
		38.160973, 30.832783, 24.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904175, 30.433102, 24.212023>,  <38.817669, 30.828527, 24.794640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904175, 30.433102, 24.212023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561890, 30.636715, 24.174820>,  <38.356518, 30.758883, 24.152498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561890, 30.636715, 24.174820>,  <38.904175, 30.433102, 24.212023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561890, 30.636715, 24.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277789, 0.300248, -0.912515,
		-0.436574, -0.806683, -0.398328,
		-0.855708, 0.509031, -0.093007,
		38.305176, 30.789425, 24.146917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667759, 30.301632, 23.488483>,  <38.904175, 30.433102, 24.212023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667759, 30.301632, 23.488483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480705, 30.633217, 23.611214>,  <38.368473, 30.832169, 23.684853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480705, 30.633217, 23.611214>,  <38.667759, 30.301632, 23.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480705, 30.633217, 23.611214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224610, 0.447165, -0.865791,
		-0.854910, -0.335955, -0.395302,
		-0.467632, 0.828962, 0.306827,
		38.340416, 30.881905, 23.703262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296036, 30.540035, 23.010416>,  <38.667759, 30.301632, 23.488483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296036, 30.540035, 23.010416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371071, 30.872913, 23.219131>,  <38.416092, 31.072641, 23.344360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371071, 30.872913, 23.219131>,  <38.296036, 30.540035, 23.010416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371071, 30.872913, 23.219131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198986, 0.488006, -0.849856,
		-0.961882, 0.263247, -0.074053,
		0.187584, 0.832196, 0.521787,
		38.427345, 31.122572, 23.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867901, 31.046947, 22.731794>,  <38.296036, 30.540035, 23.010416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867901, 31.046947, 22.731794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157452, 31.243137, 22.925880>,  <38.331181, 31.360851, 23.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157452, 31.243137, 22.925880>,  <37.867901, 31.046947, 22.731794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157452, 31.243137, 22.925880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286957, 0.425528, -0.858244,
		-0.627421, 0.760499, 0.167285,
		0.723878, 0.490476, 0.485215,
		38.374615, 31.390280, 23.071445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796566, 31.788692, 22.612949>,  <37.867901, 31.046947, 22.731794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796566, 31.788692, 22.612949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177666, 31.724010, 22.715801>,  <38.406326, 31.685202, 22.777514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177666, 31.724010, 22.715801>,  <37.796566, 31.788692, 22.612949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177666, 31.724010, 22.715801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300495, 0.625402, -0.720122,
		-0.044363, 0.763363, 0.644444,
		0.952751, -0.161705, 0.257132,
		38.463490, 31.675499, 22.792940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083008, 31.849285, 22.693510>,  <37.796566, 31.788692, 22.612949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083008, 31.849285, 22.693510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943462, 32.058353, 22.382355>,  <36.859734, 32.183792, 22.195662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943462, 32.058353, 22.382355>,  <37.083008, 31.849285, 22.693510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943462, 32.058353, 22.382355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932388, -0.277343, 0.231805,
		-0.094585, 0.806163, 0.584085,
		-0.348865, 0.522668, -0.777889,
		36.838802, 32.215153, 22.148989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660133, 32.325886, 22.970030>,  <37.083008, 31.849285, 22.693510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660133, 32.325886, 22.970030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545452, 32.258995, 22.592705>,  <36.476643, 32.218861, 22.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545452, 32.258995, 22.592705>,  <36.660133, 32.325886, 22.970030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545452, 32.258995, 22.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936791, -0.157190, 0.312591,
		-0.200553, 0.973307, -0.111590,
		-0.286706, -0.167227, -0.943310,
		36.459438, 32.208828, 22.309711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075436, 32.785591, 22.758158>,  <36.660133, 32.325886, 22.970030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075436, 32.785591, 22.758158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078766, 32.411526, 22.616508>,  <36.080765, 32.187088, 22.531519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078766, 32.411526, 22.616508>,  <36.075436, 32.785591, 22.758158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078766, 32.411526, 22.616508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881448, -0.174093, 0.439023,
		-0.472208, 0.308487, -0.825746,
		0.008324, -0.935162, -0.354123,
		36.081264, 32.130978, 22.510271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470825, 32.618076, 22.801918>,  <36.075436, 32.785591, 22.758158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470825, 32.618076, 22.801918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630013, 32.257763, 22.732391>,  <35.725525, 32.041576, 22.690676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.630013, 32.257763, 22.732391>,  <35.470825, 32.618076, 22.801918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630013, 32.257763, 22.732391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754435, -0.429148, 0.496650,
		-0.521967, -0.066517, -0.850369,
		0.397969, -0.900782, -0.173818,
		35.749405, 31.987528, 22.680246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986851, 32.022449, 22.507423>,  <35.470825, 32.618076, 22.801918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986851, 32.022449, 22.507423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269772, 31.881489, 22.752548>,  <35.439522, 31.796913, 22.899624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269772, 31.881489, 22.752548>,  <34.986851, 32.022449, 22.507423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269772, 31.881489, 22.752548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705571, -0.405345, 0.581262,
		0.043564, -0.843510, -0.535344,
		0.707299, -0.352401, 0.612814,
		35.481960, 31.775768, 22.936392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939831, 31.287979, 22.597128>,  <34.986851, 32.022449, 22.507423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939831, 31.287979, 22.597128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106487, 31.428875, 22.932350>,  <35.206482, 31.513412, 23.133484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106487, 31.428875, 22.932350>,  <34.939831, 31.287979, 22.597128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106487, 31.428875, 22.932350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731540, -0.417382, 0.539113,
		0.539686, -0.837687, 0.083780,
		0.416640, 0.352240, 0.838057,
		35.231480, 31.534548, 23.183767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270649, 30.745783, 23.083128>,  <34.939831, 31.287979, 22.597128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270649, 30.745783, 23.083128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133816, 31.069843, 23.273556>,  <35.051716, 31.264278, 23.387812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133816, 31.069843, 23.273556>,  <35.270649, 30.745783, 23.083128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133816, 31.069843, 23.273556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559349, -0.582654, 0.589613,
		0.755057, -0.064594, 0.652469,
		-0.342078, 0.810149, 0.476067,
		35.031193, 31.312889, 23.416376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327705, 30.716375, 23.855032>,  <35.270649, 30.745783, 23.083128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327705, 30.716375, 23.855032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049484, 30.998653, 23.801075>,  <34.882549, 31.168020, 23.768702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049484, 30.998653, 23.801075>,  <35.327705, 30.716375, 23.855032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049484, 30.998653, 23.801075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593447, -0.458474, 0.661530,
		0.404995, 0.540183, 0.737687,
		-0.695557, 0.705694, -0.134890,
		34.840816, 31.210361, 23.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086697, 30.944103, 24.566483>,  <35.327705, 30.716375, 23.855032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086697, 30.944103, 24.566483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798370, 31.062866, 24.315956>,  <34.625374, 31.134125, 24.165640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798370, 31.062866, 24.315956>,  <35.086697, 30.944103, 24.566483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798370, 31.062866, 24.315956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690695, -0.383297, 0.613208,
		-0.057998, 0.874602, 0.481359,
		-0.720817, 0.296907, -0.626314,
		34.582127, 31.151937, 24.128061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642132, 31.054939, 25.099154>,  <35.086697, 30.944103, 24.566483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642132, 31.054939, 25.099154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452431, 31.079178, 24.747833>,  <34.338612, 31.093721, 24.537041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452431, 31.079178, 24.747833>,  <34.642132, 31.054939, 25.099154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452431, 31.079178, 24.747833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831822, -0.357616, 0.424480,
		-0.288372, 0.931901, 0.220006,
		-0.474251, 0.060598, -0.878302,
		34.310154, 31.097357, 24.484343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011036, 31.413725, 25.205347>,  <34.642132, 31.054939, 25.099154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011036, 31.413725, 25.205347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994820, 31.140194, 24.913940>,  <33.985092, 30.976076, 24.739096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994820, 31.140194, 24.913940>,  <34.011036, 31.413725, 25.205347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994820, 31.140194, 24.913940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757585, -0.454358, 0.468641,
		-0.651477, 0.570912, -0.499637,
		-0.040538, -0.683826, -0.728518,
		33.982658, 30.935045, 24.695385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310547, 31.308231, 25.192963>,  <34.011036, 31.413725, 25.205347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310547, 31.308231, 25.192963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 30.993774, 25.008263>,  <33.573463, 30.805099, 24.897442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 30.993774, 25.008263>,  <33.310547, 31.308231, 25.192963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474869, 30.993774, 25.008263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719956, -0.590452, 0.364732,
		-0.559372, 0.182602, -0.808554,
		0.410811, -0.786145, -0.461748,
		33.598110, 30.757931, 24.869738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715324, 31.053232, 24.867544>,  <33.310547, 31.308231, 25.192963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715324, 31.053232, 24.867544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974430, 30.748524, 24.863560>,  <33.129894, 30.565699, 24.861168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974430, 30.748524, 24.863560>,  <32.715324, 31.053232, 24.867544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974430, 30.748524, 24.863560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675774, -0.580579, 0.454156,
		-0.351748, -0.287455, -0.890866,
		0.647768, -0.761773, -0.009962,
		33.168762, 30.519991, 24.860571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396782, 30.417917, 24.500618>,  <32.715324, 31.053232, 24.867544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396782, 30.417917, 24.500618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689541, 30.282089, 24.736927>,  <32.865196, 30.200592, 24.878712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689541, 30.282089, 24.736927>,  <32.396782, 30.417917, 24.500618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689541, 30.282089, 24.736927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601778, -0.728825, 0.326615,
		0.319660, -0.594563, -0.737775,
		0.731902, -0.339571, 0.590772,
		32.909111, 30.180218, 24.914158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341965, 29.633909, 24.471697>,  <32.396782, 30.417917, 24.500618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341965, 29.633909, 24.471697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558666, 29.761166, 24.782898>,  <32.688686, 29.837519, 24.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558666, 29.761166, 24.782898>,  <32.341965, 29.633909, 24.471697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558666, 29.761166, 24.782898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691323, -0.357832, 0.627717,
		0.478098, -0.877919, 0.026082,
		0.541752, 0.318141, 0.778005,
		32.721191, 29.856607, 25.016300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284424, 29.049438, 25.009726>,  <32.341965, 29.633909, 24.471697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284424, 29.049438, 25.009726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429085, 29.359440, 25.217026>,  <32.515881, 29.545441, 25.341406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429085, 29.359440, 25.217026>,  <32.284424, 29.049438, 25.009726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429085, 29.359440, 25.217026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454121, -0.339043, 0.823908,
		0.814239, -0.533313, 0.229330,
		0.361648, 0.775002, 0.518251,
		32.537579, 29.591940, 25.372501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725220, 28.819157, 25.593979>,  <32.284424, 29.049438, 25.009726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725220, 28.819157, 25.593979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634186, 29.195854, 25.693031>,  <32.579567, 29.421873, 25.752462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634186, 29.195854, 25.693031>,  <32.725220, 28.819157, 25.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634186, 29.195854, 25.693031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249034, -0.302138, 0.920160,
		0.941375, 0.147746, 0.303288,
		-0.227585, 0.941745, 0.247631,
		32.565910, 29.478378, 25.767321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012306, 29.020311, 26.236046>,  <32.725220, 28.819157, 25.593979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012306, 29.020311, 26.236046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681072, 29.239231, 26.187485>,  <32.482330, 29.370583, 26.158348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681072, 29.239231, 26.187485>,  <33.012306, 29.020311, 26.236046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681072, 29.239231, 26.187485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400851, -0.426670, 0.810723,
		0.391910, 0.720011, 0.572705,
		-0.828085, 0.547300, -0.121401,
		32.432648, 29.403421, 26.151064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934448, 29.315571, 26.795568>,  <33.012306, 29.020311, 26.236046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934448, 29.315571, 26.795568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570469, 29.398087, 26.651661>,  <32.352081, 29.447596, 26.565317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570469, 29.398087, 26.651661>,  <32.934448, 29.315571, 26.795568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570469, 29.398087, 26.651661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412552, -0.361805, 0.836001,
		0.042292, 0.909143, 0.414330,
		-0.909952, 0.206289, -0.359767,
		32.297482, 29.459972, 26.543732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645233, 29.749857, 27.214930>,  <32.934448, 29.315571, 26.795568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645233, 29.749857, 27.214930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315613, 29.578613, 27.066517>,  <32.117840, 29.475866, 26.977470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315613, 29.578613, 27.066517>,  <32.645233, 29.749857, 27.214930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315613, 29.578613, 27.066517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243830, -0.323144, 0.914399,
		-0.511359, 0.843979, 0.161901,
		-0.824050, -0.428110, -0.371030,
		32.068398, 29.450180, 26.955208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119392, 29.967005, 27.584673>,  <32.645233, 29.749857, 27.214930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119392, 29.967005, 27.584673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955820, 29.640430, 27.421600>,  <31.857676, 29.444485, 27.323757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955820, 29.640430, 27.421600>,  <32.119392, 29.967005, 27.584673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955820, 29.640430, 27.421600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325023, -0.287144, 0.901060,
		-0.852722, 0.500979, -0.147939,
		-0.408932, -0.816437, -0.407683,
		31.833141, 29.395500, 27.299295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525303, 29.915314, 27.779366>,  <32.119392, 29.967005, 27.584673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525303, 29.915314, 27.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595072, 29.530800, 27.694038>,  <31.636932, 29.300091, 27.642841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595072, 29.530800, 27.694038>,  <31.525303, 29.915314, 27.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595072, 29.530800, 27.694038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254529, -0.253292, 0.933305,
		-0.951205, -0.108494, -0.288856,
		0.174423, -0.961287, -0.213318,
		31.647398, 29.242414, 27.630043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973059, 29.483328, 28.053871>,  <31.525303, 29.915314, 27.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973059, 29.483328, 28.053871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260593, 29.214020, 27.984608>,  <31.433115, 29.052435, 27.943050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260593, 29.214020, 27.984608>,  <30.973059, 29.483328, 28.053871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260593, 29.214020, 27.984608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017694, -0.266721, 0.963611,
		-0.694954, -0.689615, -0.203641,
		0.718836, -0.673268, -0.173157,
		31.476244, 29.012039, 27.932661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706331, 28.931067, 28.469891>,  <30.973059, 29.483328, 28.053871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706331, 28.931067, 28.469891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069159, 28.798271, 28.366348>,  <31.286856, 28.718594, 28.304222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069159, 28.798271, 28.366348>,  <30.706331, 28.931067, 28.469891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069159, 28.798271, 28.366348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066011, -0.495121, 0.866313,
		-0.415772, -0.802894, -0.427194,
		0.907070, -0.331989, -0.258857,
		31.341280, 28.698673, 28.288691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737543, 28.208359, 28.476562>,  <30.706331, 28.931067, 28.469891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737543, 28.208359, 28.476562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120453, 28.321854, 28.498913>,  <31.350199, 28.389950, 28.512323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120453, 28.321854, 28.498913>,  <30.737543, 28.208359, 28.476562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120453, 28.321854, 28.498913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179319, -0.733986, 0.655064,
		0.226878, -0.617055, -0.753505,
		0.957273, 0.283737, 0.055876,
		31.407635, 28.406975, 28.515675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069540, 27.576456, 28.479445>,  <30.737543, 28.208359, 28.476562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069540, 27.576456, 28.479445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335245, 27.833973, 28.631382>,  <31.494669, 27.988483, 28.722546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335245, 27.833973, 28.631382>,  <31.069540, 27.576456, 28.479445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335245, 27.833973, 28.631382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298315, -0.694255, 0.654995,
		0.685391, -0.321775, -0.653222,
		0.664264, 0.643794, 0.379846,
		31.534525, 28.027111, 28.745337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746716, 27.325836, 28.414835>,  <31.069540, 27.576456, 28.479445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746716, 27.325836, 28.414835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802294, 27.601521, 28.699280>,  <31.835640, 27.766932, 28.869947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802294, 27.601521, 28.699280>,  <31.746716, 27.325836, 28.414835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802294, 27.601521, 28.699280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507137, -0.666295, 0.546683,
		0.850592, 0.284674, -0.442102,
		0.138944, 0.689211, 0.711114,
		31.843977, 27.808283, 28.912615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385136, 27.254496, 28.627924>,  <31.746716, 27.325836, 28.414835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385136, 27.254496, 28.627924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253151, 27.490669, 28.922546>,  <32.173962, 27.632374, 29.099319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253151, 27.490669, 28.922546>,  <32.385136, 27.254496, 28.627924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253151, 27.490669, 28.922546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541924, -0.520398, 0.659928,
		0.772946, 0.616906, -0.148260,
		-0.329960, 0.590434, 0.736556,
		32.154163, 27.667799, 29.143513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987267, 27.428869, 28.920557>,  <32.385136, 27.254496, 28.627924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987267, 27.428869, 28.920557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686279, 27.470486, 29.180702>,  <32.505688, 27.495457, 29.336790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686279, 27.470486, 29.180702>,  <32.987267, 27.428869, 28.920557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686279, 27.470486, 29.180702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565219, -0.404916, 0.718728,
		0.338121, 0.908415, 0.245878,
		-0.752464, 0.104042, 0.650364,
		32.460541, 27.501698, 29.375811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339989, 27.431370, 29.493078>,  <32.987267, 27.428869, 28.920557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339989, 27.431370, 29.493078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971111, 27.374043, 29.636757>,  <32.749786, 27.339645, 29.722965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971111, 27.374043, 29.636757>,  <33.339989, 27.431370, 29.493078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971111, 27.374043, 29.636757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383579, -0.457377, 0.802293,
		0.049305, 0.877648, 0.476763,
		-0.922191, -0.143320, 0.359198,
		32.694454, 27.331047, 29.744516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300503, 27.718596, 30.240053>,  <33.339989, 27.431370, 29.493078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300503, 27.718596, 30.240053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022968, 27.438290, 30.173687>,  <32.856449, 27.270107, 30.133867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022968, 27.438290, 30.173687>,  <33.300503, 27.718596, 30.240053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022968, 27.438290, 30.173687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347840, -0.527852, 0.774842,
		-0.630558, 0.479899, 0.609994,
		-0.693833, -0.700763, -0.165913,
		32.814819, 27.228060, 30.123913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193871, 27.461885, 30.913324>,  <33.300503, 27.718596, 30.240053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193871, 27.461885, 30.913324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969948, 27.208088, 30.700146>,  <32.835594, 27.055809, 30.572239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969948, 27.208088, 30.700146>,  <33.193871, 27.461885, 30.913324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969948, 27.208088, 30.700146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078873, -0.681053, 0.727974,
		-0.824860, 0.365491, 0.431304,
		-0.559808, -0.634494, -0.532946,
		32.802006, 27.017740, 30.540262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687428, 27.226006, 31.365353>,  <33.193871, 27.461885, 30.913324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687428, 27.226006, 31.365353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741684, 26.964863, 31.067257>,  <32.774239, 26.808176, 30.888399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741684, 26.964863, 31.067257>,  <32.687428, 27.226006, 31.365353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741684, 26.964863, 31.067257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008077, -0.752893, 0.658094,
		-0.990726, -0.083243, -0.107394,
		0.135638, -0.652858, -0.745238,
		32.782375, 26.769005, 30.843685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368187, 26.625324, 31.571634>,  <32.687428, 27.226006, 31.365353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368187, 26.625324, 31.571634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605888, 26.486652, 31.281345>,  <32.748508, 26.403450, 31.107172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605888, 26.486652, 31.281345>,  <32.368187, 26.625324, 31.571634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605888, 26.486652, 31.281345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069331, -0.876891, 0.475664,
		-0.801282, -0.332981, -0.497062,
		0.594256, -0.346679, -0.725723,
		32.784164, 26.382648, 31.063629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089809, 25.997431, 31.158350>,  <32.368187, 26.625324, 31.571634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089809, 25.997431, 31.158350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488480, 25.977791, 31.132339>,  <32.727680, 25.966007, 31.116734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488480, 25.977791, 31.132339>,  <32.089809, 25.997431, 31.158350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488480, 25.977791, 31.132339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013173, -0.884660, 0.466051,
		-0.080411, -0.463645, -0.882365,
		0.996675, -0.049099, -0.065028,
		32.787483, 25.963060, 31.112831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333584, 25.239962, 30.907383>,  <32.089809, 25.997431, 31.158350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333584, 25.239962, 30.907383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635601, 25.426926, 31.091316>,  <32.816811, 25.539104, 31.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635601, 25.426926, 31.091316>,  <32.333584, 25.239962, 30.907383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635601, 25.426926, 31.091316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204709, -0.834292, 0.511909,
		0.622905, -0.292380, -0.725606,
		0.755039, 0.467408, 0.459832,
		32.862114, 25.567148, 31.229265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713043, 24.746822, 30.874210>,  <32.333584, 25.239962, 30.907383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713043, 24.746822, 30.874210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882004, 24.978142, 31.153393>,  <32.983379, 25.116934, 31.320902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882004, 24.978142, 31.153393>,  <32.713043, 24.746822, 30.874210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882004, 24.978142, 31.153393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257555, -0.814863, 0.519292,
		0.869047, -0.039588, -0.493144,
		0.422402, 0.578301, 0.697958,
		33.008724, 25.151632, 31.362780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335304, 24.459249, 31.039469>,  <32.713043, 24.746822, 30.874210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335304, 24.459249, 31.039469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267418, 24.701477, 31.350464>,  <33.226688, 24.846813, 31.537060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267418, 24.701477, 31.350464>,  <33.335304, 24.459249, 31.039469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267418, 24.701477, 31.350464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444657, -0.657004, 0.608790,
		0.879476, 0.449034, -0.157769,
		-0.169713, 0.605569, 0.777486,
		33.216503, 24.883148, 31.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003132, 24.406767, 31.472366>,  <33.335304, 24.459249, 31.039469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003132, 24.406767, 31.472366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757393, 24.579594, 31.736454>,  <33.609947, 24.683290, 31.894907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757393, 24.579594, 31.736454>,  <34.003132, 24.406767, 31.472366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757393, 24.579594, 31.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261517, -0.677950, 0.687017,
		0.744434, 0.594728, 0.303507,
		-0.614351, 0.432067, 0.660220,
		33.573086, 24.709213, 31.934521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343494, 24.412836, 32.127155>,  <34.003132, 24.406767, 31.472366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343494, 24.412836, 32.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958332, 24.452374, 32.227592>,  <33.727234, 24.476097, 32.287857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958332, 24.452374, 32.227592>,  <34.343494, 24.412836, 32.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958332, 24.452374, 32.227592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157863, -0.548331, 0.821226,
		0.218858, 0.830399, 0.512385,
		-0.962902, 0.098845, 0.251096,
		33.669460, 24.482027, 32.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322964, 24.397354, 32.825394>,  <34.343494, 24.412836, 32.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322964, 24.397354, 32.825394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938210, 24.304470, 32.767624>,  <33.707359, 24.248739, 32.732964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938210, 24.304470, 32.767624>,  <34.322964, 24.397354, 32.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938210, 24.304470, 32.767624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061767, -0.330002, 0.941957,
		-0.266392, 0.914974, 0.303080,
		-0.961884, -0.232209, -0.144425,
		33.649643, 24.234808, 32.724297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851891, 24.787973, 33.366695>,  <34.322964, 24.397354, 32.825394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851891, 24.787973, 33.366695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650791, 24.473541, 33.222851>,  <33.530132, 24.284882, 33.136543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650791, 24.473541, 33.222851>,  <33.851891, 24.787973, 33.366695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650791, 24.473541, 33.222851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134236, -0.339973, 0.930806,
		-0.853947, 0.516233, 0.065400,
		-0.502747, -0.786080, -0.359616,
		33.499966, 24.237717, 33.114967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287189, 24.778399, 33.726170>,  <33.851891, 24.787973, 33.366695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287189, 24.778399, 33.726170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286232, 24.398998, 33.599461>,  <33.285656, 24.171358, 33.523438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286232, 24.398998, 33.599461>,  <33.287189, 24.778399, 33.726170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286232, 24.398998, 33.599461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322810, -0.299077, 0.897968,
		-0.946461, 0.104407, -0.305469,
		-0.002395, -0.948500, -0.316768,
		33.285515, 24.114449, 33.504429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668568, 24.543354, 34.056549>,  <33.287189, 24.778399, 33.726170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668568, 24.543354, 34.056549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881798, 24.221077, 33.953251>,  <33.009735, 24.027712, 33.891273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881798, 24.221077, 33.953251>,  <32.668568, 24.543354, 34.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881798, 24.221077, 33.953251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364675, -0.494223, 0.789148,
		-0.763439, -0.326503, -0.557275,
		0.533078, -0.805692, -0.258242,
		33.041721, 23.979370, 33.875778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281651, 23.962152, 34.216263>,  <32.668568, 24.543354, 34.056549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281651, 23.962152, 34.216263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652084, 23.812801, 34.194496>,  <32.874344, 23.723190, 34.181435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652084, 23.812801, 34.194496>,  <32.281651, 23.962152, 34.216263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652084, 23.812801, 34.194496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229308, -0.671451, 0.704679,
		-0.299651, -0.640111, -0.707437,
		0.926082, -0.373379, -0.054418,
		32.929909, 23.700787, 34.178169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252796, 23.247387, 34.056995>,  <32.281651, 23.962152, 34.216263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252796, 23.247387, 34.056995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584526, 23.317329, 34.269276>,  <32.783566, 23.359295, 34.396645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584526, 23.317329, 34.269276>,  <32.252796, 23.247387, 34.056995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584526, 23.317329, 34.269276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225445, -0.764321, 0.604142,
		0.511262, -0.620675, -0.594452,
		0.829328, 0.174858, 0.530697,
		32.833324, 23.369787, 34.428486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326462, 22.575541, 34.438465>,  <32.252796, 23.247387, 34.056995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326462, 22.575541, 34.438465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586052, 22.834339, 34.598579>,  <32.741806, 22.989618, 34.694649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586052, 22.834339, 34.598579>,  <32.326462, 22.575541, 34.438465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586052, 22.834339, 34.598579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027232, -0.545547, 0.837638,
		0.760326, -0.532702, -0.371662,
		0.648970, 0.646999, 0.400287,
		32.780743, 23.028439, 34.718666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876797, 22.180969, 34.629810>,  <32.326462, 22.575541, 34.438465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876797, 22.180969, 34.629810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853680, 22.517357, 34.845005>,  <32.839809, 22.719189, 34.974121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853680, 22.517357, 34.845005>,  <32.876797, 22.180969, 34.629810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853680, 22.517357, 34.845005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094403, -0.531872, 0.841546,
		0.993855, 0.099420, -0.048653,
		-0.057789, 0.840968, 0.537989,
		32.836342, 22.769648, 35.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543213, 22.180210, 35.072926>,  <32.876797, 22.180969, 34.629810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543213, 22.180210, 35.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263847, 22.389530, 35.268223>,  <33.096230, 22.515121, 35.385403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263847, 22.389530, 35.268223>,  <33.543213, 22.180210, 35.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263847, 22.389530, 35.268223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202070, -0.510258, 0.835945,
		0.686579, 0.682492, 0.250627,
		-0.698411, 0.523298, 0.488243,
		33.054325, 22.546520, 35.414696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815613, 22.549454, 35.687721>,  <33.543213, 22.180210, 35.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815613, 22.549454, 35.687721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430431, 22.443996, 35.710426>,  <33.199322, 22.380722, 35.724049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430431, 22.443996, 35.710426>,  <33.815613, 22.549454, 35.687721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430431, 22.443996, 35.710426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161190, -0.393928, 0.904897,
		-0.216209, 0.880519, 0.421829,
		-0.962949, -0.263641, 0.056760,
		33.141548, 22.364904, 35.727455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653900, 21.839607, 35.886299>,  <33.815613, 22.549454, 35.687721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653900, 21.839607, 35.886299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330261, 21.657539, 36.034988>,  <33.136078, 21.548298, 36.124203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330261, 21.657539, 36.034988>,  <33.653900, 21.839607, 35.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330261, 21.657539, 36.034988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567309, -0.770022, 0.291937,
		0.153351, 0.447086, 0.881248,
		-0.809101, -0.455171, 0.371719,
		33.087532, 21.520988, 36.146503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885139, 21.607756, 36.647449>,  <33.653900, 21.839607, 35.886299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885139, 21.607756, 36.647449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577522, 21.431530, 36.462204>,  <33.392952, 21.325794, 36.351055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577522, 21.431530, 36.462204>,  <33.885139, 21.607756, 36.647449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577522, 21.431530, 36.462204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431262, -0.892401, 0.132794,
		-0.471786, -0.097598, 0.876295,
		-0.769046, -0.440563, -0.463113,
		33.346809, 21.299360, 36.323269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749920, 22.258198, 37.022526>,  <33.885139, 21.607756, 36.647449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749920, 22.258198, 37.022526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357758, 22.284882, 36.948391>,  <33.122459, 22.300892, 36.903912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357758, 22.284882, 36.948391>,  <33.749920, 22.258198, 37.022526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357758, 22.284882, 36.948391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052304, 0.818960, 0.571462,
		0.189903, 0.569960, -0.799426,
		-0.980409, 0.066709, -0.185335,
		33.063637, 22.304893, 36.892792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473129, 22.845499, 36.621666>,  <33.749920, 22.258198, 37.022526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473129, 22.845499, 36.621666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222309, 22.723186, 36.908249>,  <33.071815, 22.649799, 37.080196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222309, 22.723186, 36.908249>,  <33.473129, 22.845499, 36.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222309, 22.723186, 36.908249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188179, 0.833034, 0.520234,
		-0.755907, 0.461035, -0.464814,
		-0.627052, -0.305780, 0.716453,
		33.034195, 22.631453, 37.123184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929424, 23.315222, 36.954380>,  <33.473129, 22.845499, 36.621666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929424, 23.315222, 36.954380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018093, 23.048271, 37.238766>,  <33.071297, 22.888102, 37.409397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018093, 23.048271, 37.238766>,  <32.929424, 23.315222, 36.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018093, 23.048271, 37.238766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103726, 0.741105, 0.663328,
		-0.969588, -0.073298, 0.233508,
		0.221674, -0.667376, 0.710964,
		33.084595, 22.848059, 37.452053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692818, 23.760035, 37.468452>,  <32.929424, 23.315222, 36.954380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692818, 23.760035, 37.468452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763618, 24.131916, 37.597649>,  <32.806099, 24.355045, 37.675167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763618, 24.131916, 37.597649>,  <32.692818, 23.760035, 37.468452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763618, 24.131916, 37.597649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195472, 0.354836, -0.914266,
		-0.964605, 0.098688, 0.244537,
		0.176997, 0.929705, 0.322986,
		32.816719, 24.410828, 37.694546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118546, 24.296724, 37.308575>,  <32.692818, 23.760035, 37.468452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118546, 24.296724, 37.308575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442310, 24.521961, 37.375244>,  <32.636570, 24.657104, 37.415245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442310, 24.521961, 37.375244>,  <32.118546, 24.296724, 37.308575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442310, 24.521961, 37.375244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151718, 0.474702, -0.866972,
		-0.567305, 0.676450, 0.469660,
		0.809411, 0.563093, 0.166671,
		32.685135, 24.690889, 37.425247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865406, 24.982246, 37.333961>,  <32.118546, 24.296724, 37.308575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865406, 24.982246, 37.333961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235840, 24.931408, 37.191853>,  <32.458099, 24.900906, 37.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235840, 24.931408, 37.191853>,  <31.865406, 24.982246, 37.333961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235840, 24.931408, 37.191853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230143, 0.555875, -0.798772,
		0.299007, 0.821493, 0.485536,
		0.926082, -0.127096, -0.355272,
		32.513664, 24.893280, 37.085270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098442, 25.667263, 37.054161>,  <31.865406, 24.982246, 37.333961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098442, 25.667263, 37.054161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331211, 25.394066, 36.877575>,  <32.470871, 25.230146, 36.771626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331211, 25.394066, 36.877575>,  <32.098442, 25.667263, 37.054161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331211, 25.394066, 36.877575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008781, 0.548083, -0.836378,
		0.813199, 0.482827, 0.324937,
		0.581919, -0.682995, -0.441461,
		32.505787, 25.189167, 36.745136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747257, 25.896072, 36.897938>,  <32.098442, 25.667263, 37.054161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747257, 25.896072, 36.897938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681221, 25.586773, 36.653046>,  <32.641598, 25.401194, 36.506111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681221, 25.586773, 36.653046>,  <32.747257, 25.896072, 36.897938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681221, 25.586773, 36.653046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214537, 0.577733, -0.787527,
		0.962663, -0.261359, 0.070513,
		-0.165089, -0.773250, -0.612233,
		32.631695, 25.354797, 36.469376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265827, 25.987095, 36.410038>,  <32.747257, 25.896072, 36.897938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265827, 25.987095, 36.410038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961468, 25.772129, 36.264591>,  <32.778851, 25.643150, 36.177322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961468, 25.772129, 36.264591>,  <33.265827, 25.987095, 36.410038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961468, 25.772129, 36.264591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095653, 0.461360, -0.882042,
		0.641778, -0.705928, -0.299644,
		-0.760902, -0.537413, -0.363615,
		32.733196, 25.610905, 36.155506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524647, 25.801537, 35.769794>,  <33.265827, 25.987095, 36.410038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524647, 25.801537, 35.769794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126461, 25.793747, 35.807053>,  <32.887550, 25.789074, 35.829407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126461, 25.793747, 35.807053>,  <33.524647, 25.801537, 35.769794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126461, 25.793747, 35.807053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080500, 0.694322, -0.715148,
		-0.050748, -0.719401, -0.692739,
		-0.995462, -0.019474, 0.093147,
		32.827824, 25.787905, 35.834995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247585, 25.608179, 35.161400>,  <33.524647, 25.801537, 35.769794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247585, 25.608179, 35.161400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943054, 25.799614, 35.336369>,  <32.760338, 25.914474, 35.441349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943054, 25.799614, 35.336369>,  <33.247585, 25.608179, 35.161400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943054, 25.799614, 35.336369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125965, 0.552611, -0.823865,
		-0.636016, -0.682329, -0.360431,
		-0.761326, 0.478590, 0.437419,
		32.714657, 25.943192, 35.467594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773304, 25.601583, 34.562553>,  <33.247585, 25.608179, 35.161400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773304, 25.601583, 34.562553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620117, 25.868710, 34.817852>,  <32.528206, 26.028986, 34.971031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620117, 25.868710, 34.817852>,  <32.773304, 25.601583, 34.562553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620117, 25.868710, 34.817852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004787, 0.692345, -0.721551,
		-0.923750, -0.273275, -0.268341,
		-0.382966, 0.667817, 0.638245,
		32.505226, 26.069056, 35.009327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113747, 25.835772, 34.312084>,  <32.773304, 25.601583, 34.562553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113747, 25.835772, 34.312084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231537, 26.133789, 34.551479>,  <32.302212, 26.312599, 34.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231537, 26.133789, 34.551479>,  <32.113747, 25.835772, 34.312084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231537, 26.133789, 34.551479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167709, 0.656830, -0.735152,
		-0.940828, 0.116111, 0.318371,
		0.294475, 0.745045, 0.598491,
		32.319878, 26.357304, 34.731026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638865, 26.430281, 34.098278>,  <32.113747, 25.835772, 34.312084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638865, 26.430281, 34.098278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946012, 26.592426, 34.296692>,  <32.130302, 26.689714, 34.415741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946012, 26.592426, 34.296692>,  <31.638865, 26.430281, 34.098278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946012, 26.592426, 34.296692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022394, 0.790839, -0.611615,
		-0.640213, 0.458533, 0.616340,
		0.767871, 0.405366, 0.496037,
		32.176373, 26.714037, 34.445503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400232, 27.073807, 34.492493>,  <31.638865, 26.430281, 34.098278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400232, 27.073807, 34.492493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783747, 27.104824, 34.383156>,  <32.013855, 27.123434, 34.317554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783747, 27.104824, 34.383156>,  <31.400232, 27.073807, 34.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783747, 27.104824, 34.383156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188212, 0.894030, -0.406554,
		0.212854, 0.441245, 0.871777,
		0.958785, 0.077542, -0.273346,
		32.071381, 27.128086, 34.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512558, 27.767841, 34.540546>,  <31.400232, 27.073807, 34.492493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512558, 27.767841, 34.540546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812830, 27.638229, 34.310249>,  <31.992994, 27.560463, 34.172070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812830, 27.638229, 34.310249>,  <31.512558, 27.767841, 34.540546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812830, 27.638229, 34.310249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078145, 0.908895, -0.409638,
		0.656027, 0.262516, 0.707611,
		0.750681, -0.324030, -0.575745,
		32.038033, 27.541021, 34.137527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937134, 28.348085, 34.503525>,  <31.512558, 27.767841, 34.540546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937134, 28.348085, 34.503525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120247, 28.129490, 34.223015>,  <32.230114, 27.998333, 34.054710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120247, 28.129490, 34.223015>,  <31.937134, 28.348085, 34.503525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120247, 28.129490, 34.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032436, 0.798518, -0.601096,
		0.888471, 0.252426, 0.383275,
		0.457785, -0.546488, -0.701273,
		32.257584, 27.965544, 34.012634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567486, 28.699949, 34.312553>,  <31.937134, 28.348085, 34.503525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567486, 28.699949, 34.312553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440281, 28.465691, 34.014324>,  <32.363956, 28.325136, 33.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440281, 28.465691, 34.014324>,  <32.567486, 28.699949, 34.312553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440281, 28.465691, 34.014324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029720, 0.779858, -0.625250,
		0.947620, -0.220997, -0.230600,
		-0.318014, -0.585646, -0.745577,
		32.344875, 28.289997, 33.790649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930325, 28.953552, 33.802422>,  <32.567486, 28.699949, 34.312553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930325, 28.953552, 33.802422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655788, 28.733463, 33.612183>,  <32.491066, 28.601410, 33.498039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655788, 28.733463, 33.612183>,  <32.930325, 28.953552, 33.802422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655788, 28.733463, 33.612183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029052, 0.674160, -0.738014,
		0.726699, -0.492712, -0.478689,
		-0.686341, -0.550221, -0.475597,
		32.449886, 28.568398, 33.469501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047970, 28.966238, 32.994663>,  <32.930325, 28.953552, 33.802422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047970, 28.966238, 32.994663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665596, 28.855148, 33.032745>,  <32.436172, 28.788494, 33.055595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665596, 28.855148, 33.032745>,  <33.047970, 28.966238, 32.994663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665596, 28.855148, 33.032745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218081, 0.454594, -0.863588,
		0.196561, -0.846293, -0.495127,
		-0.955931, -0.277725, 0.095205,
		32.378819, 28.771830, 33.061306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948067, 28.610369, 32.430698>,  <33.047970, 28.966238, 32.994663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948067, 28.610369, 32.430698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585766, 28.731060, 32.549736>,  <32.368385, 28.803474, 32.621159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585766, 28.731060, 32.549736>,  <32.948067, 28.610369, 32.430698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585766, 28.731060, 32.549736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117631, 0.495633, -0.860529,
		-0.407147, -0.814436, -0.413430,
		-0.905756, 0.301730, 0.297599,
		32.314037, 28.821579, 32.639015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463238, 28.506762, 31.876963>,  <32.948067, 28.610369, 32.430698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463238, 28.506762, 31.876963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278645, 28.770325, 32.114574>,  <32.167889, 28.928463, 32.257141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278645, 28.770325, 32.114574>,  <32.463238, 28.506762, 31.876963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278645, 28.770325, 32.114574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410361, 0.435108, -0.801427,
		-0.786533, -0.613614, 0.069593,
		-0.461486, 0.658907, 0.594030,
		32.140198, 28.967997, 32.292782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819265, 28.494453, 31.540554>,  <32.463238, 28.506762, 31.876963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819265, 28.494453, 31.540554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834894, 28.825066, 31.765167>,  <31.844271, 29.023434, 31.899935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834894, 28.825066, 31.765167>,  <31.819265, 28.494453, 31.540554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834894, 28.825066, 31.765167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264130, 0.550518, -0.791938,
		-0.963695, -0.117376, 0.239820,
		0.039071, 0.826530, 0.561535,
		31.846615, 29.073025, 31.933628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294167, 28.995638, 31.398914>,  <31.819265, 28.494453, 31.540554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294167, 28.995638, 31.398914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563770, 29.244904, 31.557598>,  <31.725533, 29.394463, 31.652809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563770, 29.244904, 31.557598>,  <31.294167, 28.995638, 31.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563770, 29.244904, 31.557598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076193, 0.592801, -0.801737,
		-0.734782, 0.510152, 0.447035,
		0.674010, 0.623163, 0.396710,
		31.765974, 29.431852, 31.676611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070740, 29.735121, 31.352365>,  <31.294167, 28.995638, 31.398914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070740, 29.735121, 31.352365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469904, 29.729649, 31.377636>,  <31.709402, 29.726366, 31.392797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469904, 29.729649, 31.377636>,  <31.070740, 29.735121, 31.352365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469904, 29.729649, 31.377636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059669, 0.570801, -0.818917,
		-0.024858, 0.820975, 0.570424,
		0.997909, -0.013680, 0.063176,
		31.769276, 29.725544, 31.396589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126060, 30.365871, 31.158110>,  <31.070740, 29.735121, 31.352365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126060, 30.365871, 31.158110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505371, 30.239376, 31.147072>,  <31.732958, 30.163479, 31.140450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505371, 30.239376, 31.147072>,  <31.126060, 30.365871, 31.158110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505371, 30.239376, 31.147072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161427, 0.555251, -0.815866,
		0.273332, 0.769213, 0.577582,
		0.948278, -0.316240, -0.027596,
		31.789854, 30.144505, 31.138792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610821, 31.019911, 31.040600>,  <31.126060, 30.365871, 31.158110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610821, 31.019911, 31.040600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832960, 30.700508, 30.947674>,  <31.966244, 30.508865, 30.891918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832960, 30.700508, 30.947674>,  <31.610821, 31.019911, 31.040600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832960, 30.700508, 30.947674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278571, 0.441839, -0.852746,
		0.783571, 0.408857, 0.467817,
		0.555351, -0.798508, -0.232317,
		31.999565, 30.460957, 30.877979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337429, 31.269896, 30.930492>,  <31.610821, 31.019911, 31.040600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337429, 31.269896, 30.930492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268883, 30.927010, 30.736248>,  <32.227753, 30.721279, 30.619701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268883, 30.927010, 30.736248>,  <32.337429, 31.269896, 30.930492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268883, 30.927010, 30.736248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232796, 0.443713, -0.865404,
		0.957308, -0.261352, 0.123517,
		-0.171369, -0.857213, -0.485612,
		32.217472, 30.669846, 30.590565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791027, 31.274977, 30.416594>,  <32.337429, 31.269896, 30.930492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791027, 31.274977, 30.416594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568226, 30.973869, 30.276260>,  <32.434544, 30.793205, 30.192060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568226, 30.973869, 30.276260>,  <32.791027, 31.274977, 30.416594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568226, 30.973869, 30.276260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058931, 0.385543, -0.920806,
		0.828415, -0.533570, -0.170388,
		-0.557006, -0.752768, -0.350833,
		32.401123, 30.748039, 30.171011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157326, 30.885242, 29.884542>,  <32.791027, 31.274977, 30.416594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157326, 30.885242, 29.884542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762112, 30.840591, 29.841976>,  <32.524982, 30.813801, 29.816437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762112, 30.840591, 29.841976>,  <33.157326, 30.885242, 29.884542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762112, 30.840591, 29.841976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065000, 0.324304, -0.943717,
		0.139856, -0.939343, -0.313168,
		-0.988036, -0.111628, -0.106413,
		32.465702, 30.807102, 29.810053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101311, 30.658943, 29.267302>,  <33.157326, 30.885242, 29.884542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101311, 30.658943, 29.267302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718029, 30.750595, 29.335831>,  <32.488060, 30.805586, 29.376949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718029, 30.750595, 29.335831>,  <33.101311, 30.658943, 29.267302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718029, 30.750595, 29.335831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065966, 0.405751, -0.911600,
		-0.278392, -0.884797, -0.373675,
		-0.958200, 0.229132, 0.171324,
		32.430569, 30.819334, 29.387228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653324, 30.405277, 28.733006>,  <33.101311, 30.658943, 29.267302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653324, 30.405277, 28.733006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482914, 30.723236, 28.905815>,  <32.380669, 30.914011, 29.009501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482914, 30.723236, 28.905815>,  <32.653324, 30.405277, 28.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482914, 30.723236, 28.905815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116051, 0.425566, -0.897455,
		-0.897238, -0.432474, -0.089053,
		-0.426024, 0.794896, 0.432022,
		32.355106, 30.961704, 29.035421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140564, 30.495829, 28.243374>,  <32.653324, 30.405277, 28.733006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140564, 30.495829, 28.243374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187328, 30.820873, 28.471756>,  <32.215389, 31.015900, 28.608786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187328, 30.820873, 28.471756>,  <32.140564, 30.495829, 28.243374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187328, 30.820873, 28.471756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220748, 0.581780, -0.782817,
		-0.968298, -0.034515, 0.247401,
		0.116914, 0.812613, 0.570956,
		32.222401, 31.064657, 28.643044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646870, 30.889482, 28.026733>,  <32.140564, 30.495829, 28.243374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646870, 30.889482, 28.026733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905767, 31.149582, 28.185856>,  <32.061108, 31.305641, 28.281330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905767, 31.149582, 28.185856>,  <31.646870, 30.889482, 28.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905767, 31.149582, 28.185856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188625, 0.642256, -0.742919,
		-0.738577, 0.405813, 0.538350,
		0.647245, 0.650249, 0.397808,
		32.099941, 31.344656, 28.305199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347097, 31.566580, 28.014086>,  <31.646870, 30.889482, 28.026733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347097, 31.566580, 28.014086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736685, 31.636246, 28.072128>,  <31.970436, 31.678045, 28.106953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736685, 31.636246, 28.072128>,  <31.347097, 31.566580, 28.014086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736685, 31.636246, 28.072128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038261, 0.757215, -0.652045,
		-0.223438, 0.629518, 0.744166,
		0.973967, 0.174164, 0.145104,
		32.028873, 31.688496, 28.115660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419027, 32.286789, 28.214371>,  <31.347097, 31.566580, 28.014086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419027, 32.286789, 28.214371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782972, 32.199863, 28.072994>,  <32.001339, 32.147709, 27.988169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782972, 32.199863, 28.072994>,  <31.419027, 32.286789, 28.214371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782972, 32.199863, 28.072994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141297, 0.638645, -0.756418,
		0.390107, 0.738177, 0.550373,
		0.909864, -0.217318, -0.353442,
		32.055931, 32.134666, 27.966961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721401, 32.944511, 28.173113>,  <31.419027, 32.286789, 28.214371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721401, 32.944511, 28.173113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917349, 32.681858, 27.943726>,  <32.034916, 32.524265, 27.806093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917349, 32.681858, 27.943726>,  <31.721401, 32.944511, 28.173113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917349, 32.681858, 27.943726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017780, 0.665188, -0.746464,
		0.871614, 0.355474, 0.337530,
		0.489870, -0.656630, -0.573467,
		32.064308, 32.484871, 27.771685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168301, 33.347603, 27.805794>,  <31.721401, 32.944511, 28.173113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168301, 33.347603, 27.805794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184929, 33.018078, 27.579659>,  <32.194904, 32.820362, 27.443977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184929, 33.018078, 27.579659>,  <32.168301, 33.347603, 27.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184929, 33.018078, 27.579659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027808, 0.564655, -0.824858,
		0.998749, 0.050008, 0.000563,
		0.041567, -0.823811, -0.565339,
		32.197399, 32.770935, 27.410057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613529, 33.447773, 27.250929>,  <32.168301, 33.347603, 27.805794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613529, 33.447773, 27.250929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417477, 33.122562, 27.125225>,  <32.299843, 32.927437, 27.049803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417477, 33.122562, 27.125225>,  <32.613529, 33.447773, 27.250929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417477, 33.122562, 27.125225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048472, 0.334554, -0.941129,
		0.870298, -0.476514, -0.124568,
		-0.490136, -0.813024, -0.314260,
		32.270435, 32.878654, 27.030947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011436, 33.054844, 26.684256>,  <32.613529, 33.447773, 27.250929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011436, 33.054844, 26.684256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628395, 32.951092, 26.634094>,  <32.398571, 32.888840, 26.603996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628395, 32.951092, 26.634094>,  <33.011436, 33.054844, 26.684256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628395, 32.951092, 26.634094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033889, 0.330847, -0.943076,
		0.286097, -0.907340, -0.308029,
		-0.957601, -0.259372, -0.125403,
		32.341114, 32.873280, 26.596474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035496, 32.696995, 26.080032>,  <33.011436, 33.054844, 26.684256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035496, 32.696995, 26.080032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649658, 32.794952, 26.119202>,  <32.418156, 32.853725, 26.142702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649658, 32.794952, 26.119202>,  <33.035496, 32.696995, 26.080032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649658, 32.794952, 26.119202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077264, 0.092609, -0.992700,
		-0.252177, -0.965116, -0.070408,
		-0.964591, 0.244896, 0.097923,
		32.360279, 32.868420, 26.148579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627541, 32.314198, 25.570168>,  <33.035496, 32.696995, 26.080032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627541, 32.314198, 25.570168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383621, 32.610306, 25.683411>,  <32.237270, 32.787971, 25.751356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383621, 32.610306, 25.683411>,  <32.627541, 32.314198, 25.570168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383621, 32.610306, 25.683411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271986, 0.140055, -0.952055,
		-0.744428, -0.657561, 0.115938,
		-0.609796, 0.740269, 0.283108,
		32.200684, 32.832386, 25.768343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025738, 32.184895, 25.158188>,  <32.627541, 32.314198, 25.570168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025738, 32.184895, 25.158188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998495, 32.562263, 25.287994>,  <31.982149, 32.788685, 25.365879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998495, 32.562263, 25.287994>,  <32.025738, 32.184895, 25.158188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998495, 32.562263, 25.287994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479577, 0.254269, -0.839853,
		-0.874853, -0.212830, 0.435127,
		-0.068107, 0.943425, 0.324517,
		31.978064, 32.845291, 25.385349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345833, 32.463211, 24.876047>,  <32.025738, 32.184895, 25.158188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345833, 32.463211, 24.876047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520004, 32.802898, 24.995533>,  <31.624508, 33.006710, 25.067225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520004, 32.802898, 24.995533>,  <31.345833, 32.463211, 24.876047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520004, 32.802898, 24.995533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521462, 0.508421, -0.685263,
		-0.733810, 0.142615, 0.664216,
		0.435430, 0.849217, 0.298717,
		31.650633, 33.057663, 25.085148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893682, 32.991474, 24.994465>,  <31.345833, 32.463211, 24.876047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893682, 32.991474, 24.994465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232401, 33.187721, 24.912262>,  <31.435633, 33.305470, 24.862940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232401, 33.187721, 24.912262>,  <30.893682, 32.991474, 24.994465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232401, 33.187721, 24.912262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494751, 0.584594, -0.643017,
		-0.195336, 0.646178, 0.737765,
		0.846797, 0.490615, -0.205505,
		31.486441, 33.334908, 24.850611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740362, 33.695805, 24.834776>,  <30.893682, 32.991474, 24.994465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740362, 33.695805, 24.834776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093319, 33.625477, 24.660202>,  <31.305092, 33.583282, 24.555458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093319, 33.625477, 24.660202>,  <30.740362, 33.695805, 24.834776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093319, 33.625477, 24.660202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275214, 0.559482, -0.781817,
		0.381633, 0.809981, 0.445295,
		0.882391, -0.175816, -0.436434,
		31.358036, 33.572731, 24.529272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646517, 34.000008, 25.490261>,  <30.740362, 33.695805, 24.834776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646517, 34.000008, 25.490261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387348, 33.739655, 25.331993>,  <30.231848, 33.583443, 25.237032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387348, 33.739655, 25.331993>,  <30.646517, 34.000008, 25.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387348, 33.739655, 25.331993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568357, 0.067278, 0.820026,
		-0.507118, 0.756194, -0.413523,
		-0.647920, -0.650879, -0.395671,
		30.192972, 33.544392, 25.213291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129385, 34.199249, 25.899900>,  <30.646517, 34.000008, 25.490261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129385, 34.199249, 25.899900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991364, 33.859070, 25.741070>,  <29.908550, 33.654961, 25.645771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991364, 33.859070, 25.741070>,  <30.129385, 34.199249, 25.899900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991364, 33.859070, 25.741070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510764, -0.184789, 0.839627,
		-0.787439, 0.492526, -0.370619,
		-0.345052, -0.850453, -0.397075,
		29.887848, 33.603935, 25.621946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347549, 34.239685, 25.958767>,  <30.129385, 34.199249, 25.899900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347549, 34.239685, 25.958767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499912, 33.870243, 25.941471>,  <29.591330, 33.648579, 25.931093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499912, 33.870243, 25.941471>,  <29.347549, 34.239685, 25.958767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499912, 33.870243, 25.941471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463616, -0.231244, 0.855328,
		-0.799982, -0.305752, -0.516279,
		0.380904, -0.923603, -0.043240,
		29.614183, 33.593163, 25.928499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932421, 33.968803, 26.372921>,  <29.347549, 34.239685, 25.958767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932421, 33.968803, 26.372921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197660, 33.670151, 26.351620>,  <29.356804, 33.490959, 26.338839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197660, 33.670151, 26.351620>,  <28.932421, 33.968803, 26.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197660, 33.670151, 26.351620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379371, -0.396547, 0.835960,
		-0.645275, -0.534121, -0.546201,
		0.663097, -0.746636, -0.053252,
		29.396589, 33.446159, 26.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530457, 33.329826, 26.501492>,  <28.932421, 33.968803, 26.372921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530457, 33.329826, 26.501492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909704, 33.239697, 26.591198>,  <29.137253, 33.185619, 26.645021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909704, 33.239697, 26.591198>,  <28.530457, 33.329826, 26.501492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909704, 33.239697, 26.591198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303575, -0.432256, 0.849115,
		-0.094382, -0.873147, -0.478233,
		0.948121, -0.225321, 0.224269,
		29.194141, 33.172100, 26.658478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562855, 32.678814, 26.638763>,  <28.530457, 33.329826, 26.501492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562855, 32.678814, 26.638763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899193, 32.819004, 26.803761>,  <29.100996, 32.903118, 26.902760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899193, 32.819004, 26.803761>,  <28.562855, 32.678814, 26.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899193, 32.819004, 26.803761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131171, -0.607419, 0.783477,
		0.525145, -0.712888, -0.464772,
		0.840843, 0.350475, 0.412493,
		29.151445, 32.924145, 26.927509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999693, 32.089062, 26.998192>,  <28.562855, 32.678814, 26.638763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999693, 32.089062, 26.998192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132990, 32.434837, 27.148766>,  <29.212969, 32.642303, 27.239109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132990, 32.434837, 27.148766>,  <28.999693, 32.089062, 26.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132990, 32.434837, 27.148766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054757, -0.380835, 0.923020,
		0.941249, -0.328204, -0.079577,
		0.333244, 0.864435, 0.376432,
		29.232964, 32.694168, 27.261696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443213, 31.899830, 27.444845>,  <28.999693, 32.089062, 26.998192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443213, 31.899830, 27.444845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345894, 32.264378, 27.577641>,  <29.287502, 32.483105, 27.657318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345894, 32.264378, 27.577641>,  <29.443213, 31.899830, 27.444845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345894, 32.264378, 27.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004564, -0.343345, 0.939198,
		0.969941, 0.226990, 0.087694,
		-0.243298, 0.911367, 0.331988,
		29.272905, 32.537788, 27.677237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882595, 31.899120, 28.081430>,  <29.443213, 31.899830, 27.444845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882595, 31.899120, 28.081430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609423, 32.186344, 28.135094>,  <29.445520, 32.358677, 28.167292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609423, 32.186344, 28.135094>,  <29.882595, 31.899120, 28.081430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609423, 32.186344, 28.135094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091139, -0.265976, 0.959662,
		0.724776, 0.643155, 0.247086,
		-0.682930, 0.718059, 0.134157,
		29.404543, 32.401760, 28.175341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961798, 32.100952, 28.774775>,  <29.882595, 31.899120, 28.081430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961798, 32.100952, 28.774775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597683, 32.241886, 28.687836>,  <29.379215, 32.326447, 28.635672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597683, 32.241886, 28.687836>,  <29.961798, 32.100952, 28.774775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597683, 32.241886, 28.687836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243967, -0.032403, 0.969242,
		0.334456, 0.935312, 0.115454,
		-0.910285, 0.352336, -0.217348,
		29.324598, 32.347588, 28.622631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754276, 32.615967, 29.305471>,  <29.961798, 32.100952, 28.774775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754276, 32.615967, 29.305471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409847, 32.487885, 29.147472>,  <29.203190, 32.411037, 29.052673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409847, 32.487885, 29.147472>,  <29.754276, 32.615967, 29.305471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409847, 32.487885, 29.147472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337995, -0.219926, 0.915091,
		-0.379884, 0.921468, 0.081146,
		-0.861073, -0.320202, -0.394998,
		29.151525, 32.391823, 29.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244904, 32.745644, 29.811905>,  <29.754276, 32.615967, 29.305471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244904, 32.745644, 29.811905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058998, 32.463531, 29.597775>,  <28.947454, 32.294266, 29.469296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058998, 32.463531, 29.597775>,  <29.244904, 32.745644, 29.811905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058998, 32.463531, 29.597775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449186, -0.333210, 0.828977,
		-0.763037, 0.625740, -0.161938,
		-0.464765, -0.705280, -0.535326,
		28.919569, 32.251945, 29.437178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788710, 32.485882, 30.303478>,  <29.244904, 32.745644, 29.811905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788710, 32.485882, 30.303478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707985, 32.220013, 30.015736>,  <28.659550, 32.060490, 29.843090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707985, 32.220013, 30.015736>,  <28.788710, 32.485882, 30.303478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707985, 32.220013, 30.015736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376316, -0.625472, 0.683499,
		-0.904245, 0.408643, -0.123902,
		-0.201810, -0.664677, -0.719359,
		28.647442, 32.020611, 29.799929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949141, 32.357910, 30.332977>,  <28.788710, 32.485882, 30.303478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949141, 32.357910, 30.332977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225674, 32.104504, 30.194000>,  <28.391594, 31.952459, 30.110615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225674, 32.104504, 30.194000>,  <27.949141, 32.357910, 30.332977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225674, 32.104504, 30.194000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228641, -0.647969, 0.726539,
		-0.685405, -0.422841, -0.592811,
		0.691333, -0.633515, -0.347443,
		28.433073, 31.914450, 30.089767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597862, 31.789999, 30.365879>,  <27.949141, 32.357910, 30.332977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597862, 31.789999, 30.365879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979374, 31.674358, 30.333076>,  <28.208281, 31.604975, 30.313395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979374, 31.674358, 30.333076>,  <27.597862, 31.789999, 30.365879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979374, 31.674358, 30.333076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159363, -0.717966, 0.677590,
		-0.254770, -0.633203, -0.730853,
		0.953779, -0.289101, -0.082007,
		28.265509, 31.587627, 30.308474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558365, 31.086149, 30.420038>,  <27.597862, 31.789999, 30.365879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558365, 31.086149, 30.420038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941288, 31.165619, 30.504032>,  <28.171041, 31.213301, 30.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941288, 31.165619, 30.504032>,  <27.558365, 31.086149, 30.420038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941288, 31.165619, 30.504032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042747, -0.621126, 0.782544,
		0.285899, -0.758111, -0.586114,
		0.957306, 0.198674, 0.209986,
		28.228479, 31.225222, 30.567028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841944, 30.474398, 30.604458>,  <27.558365, 31.086149, 30.420038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841944, 30.474398, 30.604458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124262, 30.717960, 30.749279>,  <28.293653, 30.864098, 30.836172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124262, 30.717960, 30.749279>,  <27.841944, 30.474398, 30.604458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124262, 30.717960, 30.749279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219241, -0.673733, 0.705703,
		0.673637, -0.418705, -0.609015,
		0.705795, 0.608909, 0.362054,
		28.336000, 30.900633, 30.857895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422123, 30.170341, 30.640364>,  <27.841944, 30.474398, 30.604458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422123, 30.170341, 30.640364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504835, 30.455013, 30.908916>,  <28.554462, 30.625816, 31.070047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504835, 30.455013, 30.908916>,  <28.422123, 30.170341, 30.640364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504835, 30.455013, 30.908916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460953, -0.676146, 0.574759,
		0.862997, 0.190627, -0.467865,
		0.206781, 0.711679, 0.671382,
		28.566870, 30.668516, 31.110331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141668, 30.103731, 30.881697>,  <28.422123, 30.170341, 30.640364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141668, 30.103731, 30.881697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002422, 30.345573, 31.168266>,  <28.918875, 30.490679, 31.340208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.002422, 30.345573, 31.168266>,  <29.141668, 30.103731, 30.881697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002422, 30.345573, 31.168266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417471, -0.584283, 0.695940,
		0.839365, 0.541355, -0.049007,
		-0.348116, 0.604606, 0.716426,
		28.897987, 30.526955, 31.383194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674343, 30.313303, 31.308626>,  <29.141668, 30.103731, 30.881697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674343, 30.313303, 31.308626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341900, 30.325863, 31.530716>,  <29.142433, 30.333399, 31.663969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341900, 30.325863, 31.530716>,  <29.674343, 30.313303, 31.308626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341900, 30.325863, 31.530716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438391, -0.577300, 0.688867,
		0.342160, 0.815928, 0.466034,
		-0.831108, 0.031398, 0.555225,
		29.092567, 30.335281, 31.697283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860415, 30.447239, 31.977558>,  <29.674343, 30.313303, 31.308626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860415, 30.447239, 31.977558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504461, 30.266800, 32.004734>,  <29.290890, 30.158537, 32.021042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504461, 30.266800, 32.004734>,  <29.860415, 30.447239, 31.977558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504461, 30.266800, 32.004734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362690, -0.609273, 0.705154,
		-0.276700, 0.652147, 0.705791,
		-0.889884, -0.451100, 0.067942,
		29.237495, 30.131470, 32.025116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940186, 30.131336, 32.616222>,  <29.860415, 30.447239, 31.977558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940186, 30.131336, 32.616222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634022, 29.939259, 32.444847>,  <29.450323, 29.824013, 32.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634022, 29.939259, 32.444847>,  <29.940186, 30.131336, 32.616222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634022, 29.939259, 32.444847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216731, -0.819207, 0.530968,
		-0.605948, 0.313553, 0.731103,
		-0.765411, -0.480192, -0.428440,
		29.404398, 29.795200, 32.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350956, 30.003822, 33.148632>,  <29.940186, 30.131336, 32.616222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350956, 30.003822, 33.148632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316385, 29.711315, 32.877995>,  <29.295643, 29.535810, 32.715614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316385, 29.711315, 32.877995>,  <29.350956, 30.003822, 33.148632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316385, 29.711315, 32.877995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013365, -0.678221, 0.734737,
		-0.996169, 0.072543, 0.048842,
		-0.086426, -0.731269, -0.676592,
		29.290457, 29.491934, 32.675018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054146, 29.495241, 33.527008>,  <29.350956, 30.003822, 33.148632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054146, 29.495241, 33.527008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163099, 29.289589, 33.201683>,  <29.228472, 29.166199, 33.006489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163099, 29.289589, 33.201683>,  <29.054146, 29.495241, 33.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163099, 29.289589, 33.201683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048948, -0.836777, 0.545352,
		-0.960944, -0.188354, -0.202757,
		0.272381, -0.514128, -0.813315,
		29.244814, 29.135351, 32.957687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617960, 28.954159, 33.463337>,  <29.054146, 29.495241, 33.527008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617960, 28.954159, 33.463337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964239, 28.871941, 33.280769>,  <29.172007, 28.822611, 33.171227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964239, 28.871941, 33.280769>,  <28.617960, 28.954159, 33.463337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964239, 28.871941, 33.280769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042311, -0.878496, 0.475872,
		-0.498778, -0.431273, -0.751814,
		0.865696, -0.205544, -0.456423,
		29.223948, 28.810278, 33.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586784, 28.275984, 33.436073>,  <28.617960, 28.954159, 33.463337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586784, 28.275984, 33.436073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965633, 28.333786, 33.321480>,  <29.192944, 28.368467, 33.252724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965633, 28.333786, 33.321480>,  <28.586784, 28.275984, 33.436073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965633, 28.333786, 33.321480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272568, -0.833435, 0.480721,
		-0.169299, -0.533389, -0.828754,
		0.947124, 0.144506, -0.286484,
		29.249771, 28.377138, 33.235535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794874, 27.699957, 33.029255>,  <28.586784, 28.275984, 33.436073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794874, 27.699957, 33.029255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140190, 27.849339, 33.165058>,  <29.347380, 27.938967, 33.246540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140190, 27.849339, 33.165058>,  <28.794874, 27.699957, 33.029255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140190, 27.849339, 33.165058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216119, -0.881415, 0.420000,
		0.456098, -0.289207, -0.841626,
		0.863289, 0.373452, 0.339509,
		29.399178, 27.961374, 33.266911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280338, 27.175699, 32.757504>,  <28.794874, 27.699957, 33.029255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280338, 27.175699, 32.757504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464743, 27.371143, 33.053810>,  <29.575384, 27.488411, 33.231594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464743, 27.371143, 33.053810>,  <29.280338, 27.175699, 32.757504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464743, 27.371143, 33.053810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239842, -0.872300, 0.426110,
		0.854369, -0.018775, -0.519328,
		0.461009, 0.488611, 0.740763,
		29.603046, 27.517727, 33.276039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825336, 26.860603, 32.860126>,  <29.280338, 27.175699, 32.757504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825336, 26.860603, 32.860126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785702, 27.049713, 33.210365>,  <29.761921, 27.163179, 33.420509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785702, 27.049713, 33.210365>,  <29.825336, 26.860603, 32.860126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785702, 27.049713, 33.210365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190907, -0.854548, 0.483013,
		0.976594, 0.215017, -0.005581,
		-0.099087, 0.472773, 0.875595,
		29.755976, 27.191545, 33.473045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357595, 26.606960, 33.162838>,  <29.825336, 26.860603, 32.860126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357595, 26.606960, 33.162838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110300, 26.753437, 33.441029>,  <29.961924, 26.841322, 33.607944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110300, 26.753437, 33.441029>,  <30.357595, 26.606960, 33.162838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110300, 26.753437, 33.441029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139445, -0.819702, 0.555557,
		0.773523, 0.440447, 0.455706,
		-0.618237, 0.366190, 0.695476,
		29.924829, 26.863295, 33.649670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693951, 26.645983, 33.895485>,  <30.357595, 26.606960, 33.162838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693951, 26.645983, 33.895485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298706, 26.611271, 33.946251>,  <30.061560, 26.590445, 33.976711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298706, 26.611271, 33.946251>,  <30.693951, 26.645983, 33.895485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298706, 26.611271, 33.946251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147262, -0.771394, 0.619084,
		0.044178, 0.630413, 0.775002,
		-0.988110, -0.086779, 0.126915,
		30.002274, 26.585238, 33.984325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628937, 26.725941, 34.675350>,  <30.693951, 26.645983, 33.895485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628937, 26.725941, 34.675350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330421, 26.520184, 34.506378>,  <30.151312, 26.396729, 34.404995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330421, 26.520184, 34.506378>,  <30.628937, 26.725941, 34.675350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330421, 26.520184, 34.506378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235638, -0.797717, 0.555088,
		-0.622516, 0.314715, 0.716539,
		-0.746290, -0.514395, -0.422433,
		30.106535, 26.365866, 34.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459911, 26.228565, 35.255554>,  <30.628937, 26.725941, 34.675350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459911, 26.228565, 35.255554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286951, 26.068806, 34.932194>,  <30.183174, 25.972950, 34.738178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286951, 26.068806, 34.932194>,  <30.459911, 26.228565, 35.255554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286951, 26.068806, 34.932194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031369, -0.902667, 0.429195,
		-0.901135, 0.160226, 0.402843,
		-0.432401, -0.399399, -0.808399,
		30.157230, 25.948986, 34.689674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959152, 25.856119, 35.531681>,  <30.459911, 26.228565, 35.255554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959152, 25.856119, 35.531681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963964, 25.721085, 35.155193>,  <29.966852, 25.640064, 34.929302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963964, 25.721085, 35.155193>,  <29.959152, 25.856119, 35.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963964, 25.721085, 35.155193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072845, -0.939081, 0.335888,
		-0.997271, 0.064522, -0.035890,
		0.012032, -0.337586, -0.941218,
		29.967573, 25.619808, 34.872829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343721, 25.450733, 35.463203>,  <29.959152, 25.856119, 35.531681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343721, 25.450733, 35.463203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597677, 25.322052, 35.182228>,  <29.750051, 25.244844, 35.013641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597677, 25.322052, 35.182228>,  <29.343721, 25.450733, 35.463203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597677, 25.322052, 35.182228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135653, -0.941480, 0.308568,
		-0.760600, -0.100619, -0.641376,
		0.634890, -0.321701, -0.702440,
		29.788145, 25.225542, 34.971497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033222, 24.863575, 35.297516>,  <29.343721, 25.450733, 35.463203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033222, 24.863575, 35.297516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401442, 24.820248, 35.147388>,  <29.622374, 24.794250, 35.057312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401442, 24.820248, 35.147388>,  <29.033222, 24.863575, 35.297516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401442, 24.820248, 35.147388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047081, -0.923015, 0.381872,
		-0.387786, -0.369201, -0.844579,
		0.920546, -0.108320, -0.375315,
		29.677605, 24.787752, 35.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030928, 24.183683, 34.973137>,  <29.033222, 24.863575, 35.297516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030928, 24.183683, 34.973137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413591, 24.261280, 35.060017>,  <29.643188, 24.307838, 35.112144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.413591, 24.261280, 35.060017>,  <29.030928, 24.183683, 34.973137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413591, 24.261280, 35.060017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059294, -0.859955, 0.506914,
		0.285116, -0.472065, -0.834184,
		0.956657, 0.193992, 0.217196,
		29.700588, 24.319477, 35.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425200, 23.583593, 34.797863>,  <29.030928, 24.183683, 34.973137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425200, 23.583593, 34.797863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674271, 23.782913, 35.039181>,  <29.823713, 23.902506, 35.183971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674271, 23.782913, 35.039181>,  <29.425200, 23.583593, 34.797863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674271, 23.782913, 35.039181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138618, -0.829062, 0.541701,
		0.770101, -0.253679, -0.585314,
		0.622680, 0.498299, 0.603297,
		29.861074, 23.932404, 35.220169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767532, 22.879782, 34.654037>,  <29.425200, 23.583593, 34.797863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767532, 22.879782, 34.654037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539907, 22.659325, 34.409935>,  <29.403332, 22.527050, 34.263474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539907, 22.659325, 34.409935>,  <29.767532, 22.879782, 34.654037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539907, 22.659325, 34.409935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068146, 0.707975, -0.702942,
		0.819464, -0.441606, -0.365325,
		-0.569064, -0.551141, -0.610254,
		29.369188, 22.493982, 34.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111549, 22.869434, 34.041451>,  <29.767532, 22.879782, 34.654037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111549, 22.869434, 34.041451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729038, 22.803432, 33.944862>,  <29.499533, 22.763830, 33.886909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729038, 22.803432, 33.944862>,  <30.111549, 22.869434, 34.041451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729038, 22.803432, 33.944862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059249, 0.699230, -0.712438,
		0.286402, -0.695594, -0.658880,
		-0.956276, -0.165006, -0.241474,
		29.442156, 22.753931, 33.872421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.074219, 23.035498, 33.349777>,  <30.111549, 22.869434, 34.041451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.074219, 23.035498, 33.349777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682640, 23.015690, 33.428986>,  <29.447693, 23.003805, 33.476509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682640, 23.015690, 33.428986>,  <30.074219, 23.035498, 33.349777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682640, 23.015690, 33.428986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182646, 0.645612, -0.741502,
		-0.091126, -0.762058, -0.641064,
		-0.978947, -0.049518, 0.198018,
		29.388956, 23.000835, 33.488392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664499, 22.805468, 32.669991>,  <30.074219, 23.035498, 33.349777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664499, 22.805468, 32.669991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426229, 22.997303, 32.927723>,  <29.283268, 23.112404, 33.082363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426229, 22.997303, 32.927723>,  <29.664499, 22.805468, 32.669991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426229, 22.997303, 32.927723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347406, 0.569442, -0.745013,
		-0.724212, -0.667630, -0.172589,
		-0.595673, 0.479589, 0.644336,
		29.247528, 23.141180, 33.121025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956413, 22.789795, 32.393517>,  <29.664499, 22.805468, 32.669991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956413, 22.789795, 32.393517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998442, 23.091125, 32.653194>,  <29.023659, 23.271925, 32.809002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998442, 23.091125, 32.653194>,  <28.956413, 22.789795, 32.393517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998442, 23.091125, 32.653194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257393, 0.651166, -0.713955,
		-0.960577, -0.092081, 0.262322,
		0.105073, 0.753328, 0.649196,
		29.029964, 23.317123, 32.847954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272095, 23.188742, 32.413036>,  <28.956413, 22.789795, 32.393517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272095, 23.188742, 32.413036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588285, 23.410873, 32.516384>,  <28.778000, 23.544153, 32.578392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588285, 23.410873, 32.516384>,  <28.272095, 23.188742, 32.413036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588285, 23.410873, 32.516384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204458, 0.636883, -0.743355,
		-0.577358, 0.534780, 0.616983,
		0.790477, 0.555329, 0.258369,
		28.825428, 23.577473, 32.593895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051678, 23.887844, 32.397163>,  <28.272095, 23.188742, 32.413036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051678, 23.887844, 32.397163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440533, 23.975079, 32.431538>,  <28.673845, 24.027418, 32.452164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440533, 23.975079, 32.431538>,  <28.051678, 23.887844, 32.397163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440533, 23.975079, 32.431538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141831, 0.839145, -0.525091,
		-0.186629, 0.498272, 0.846696,
		0.972139, 0.218085, 0.085938,
		28.732174, 24.040504, 32.457317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106697, 24.567616, 32.584862>,  <28.051678, 23.887844, 32.397163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106697, 24.567616, 32.584862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467453, 24.474770, 32.439140>,  <28.683907, 24.419062, 32.351707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467453, 24.474770, 32.439140>,  <28.106697, 24.567616, 32.584862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467453, 24.474770, 32.439140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067562, 0.757185, -0.649697,
		0.426652, 0.610567, 0.667215,
		0.901889, -0.232116, -0.364306,
		28.738020, 24.405134, 32.329849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431093, 25.237276, 32.610943>,  <28.106697, 24.567616, 32.584862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431093, 25.237276, 32.610943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644749, 25.001072, 32.368954>,  <28.772942, 24.859348, 32.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644749, 25.001072, 32.368954>,  <28.431093, 25.237276, 32.610943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644749, 25.001072, 32.368954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072839, 0.745093, -0.662972,
		0.842253, 0.310053, 0.440996,
		0.534139, -0.590512, -0.604972,
		28.804991, 24.823919, 32.187462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160690, 25.444736, 32.489452>,  <28.431093, 25.237276, 32.610943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160690, 25.444736, 32.489452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052517, 25.238087, 32.164501>,  <28.987612, 25.114096, 31.969530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052517, 25.238087, 32.164501>,  <29.160690, 25.444736, 32.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052517, 25.238087, 32.164501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212466, 0.790991, -0.573751,
		0.939001, -0.327766, -0.104146,
		-0.270435, -0.516625, -0.812381,
		28.971386, 25.083099, 31.920788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570435, 25.768593, 31.970148>,  <29.160690, 25.444736, 32.489452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570435, 25.768593, 31.970148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292803, 25.566463, 31.765053>,  <29.126223, 25.445185, 31.641996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292803, 25.566463, 31.765053>,  <29.570435, 25.768593, 31.970148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292803, 25.566463, 31.765053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024607, 0.728473, -0.684632,
		0.719461, -0.462584, -0.518065,
		-0.694097, -0.505314, -0.512725,
		29.084579, 25.414865, 31.611231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828775, 25.773293, 31.358780>,  <29.570435, 25.768593, 31.970148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828775, 25.773293, 31.358780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442928, 25.687157, 31.297932>,  <29.211420, 25.635475, 31.261423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442928, 25.687157, 31.297932>,  <29.828775, 25.773293, 31.358780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442928, 25.687157, 31.297932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005763, 0.594055, -0.804404,
		0.263589, -0.775066, -0.574277,
		-0.964617, -0.215342, -0.152120,
		29.153543, 25.622555, 31.252296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754183, 25.781481, 30.609058>,  <29.828775, 25.773293, 31.358780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754183, 25.781481, 30.609058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376984, 25.802219, 30.740551>,  <29.150663, 25.814663, 30.819447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376984, 25.802219, 30.740551>,  <29.754183, 25.781481, 30.609058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376984, 25.802219, 30.740551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194069, 0.716775, -0.669755,
		-0.270352, -0.695375, -0.665856,
		-0.942999, 0.051848, 0.328732,
		29.094084, 25.817774, 30.839170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346163, 25.756348, 30.052883>,  <29.754183, 25.781481, 30.609058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346163, 25.756348, 30.052883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080534, 25.920868, 30.302631>,  <28.921156, 26.019579, 30.452480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080534, 25.920868, 30.302631>,  <29.346163, 25.756348, 30.052883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080534, 25.920868, 30.302631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258143, 0.657609, -0.707752,
		-0.701691, -0.631176, -0.330526,
		-0.664073, 0.411299, 0.624372,
		28.881311, 26.044258, 30.489943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693085, 25.842209, 29.659737>,  <29.346163, 25.756348, 30.052883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693085, 25.842209, 29.659737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698399, 26.101173, 29.964546>,  <28.701588, 26.256552, 30.147432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698399, 26.101173, 29.964546>,  <28.693085, 25.842209, 29.659737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698399, 26.101173, 29.964546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397616, 0.702668, -0.590050,
		-0.917456, -0.295154, 0.266755,
		0.013285, 0.647411, 0.762025,
		28.702385, 26.295397, 30.193153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020878, 26.137569, 29.662052>,  <28.693085, 25.842209, 29.659737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020878, 26.137569, 29.662052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237423, 26.389633, 29.884701>,  <28.367350, 26.540871, 30.018290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237423, 26.389633, 29.884701>,  <28.020878, 26.137569, 29.662052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237423, 26.389633, 29.884701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342848, 0.769933, -0.538199,
		-0.767713, 0.100522, 0.632860,
		0.541361, 0.630157, 0.556624,
		28.399832, 26.578680, 30.051687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609373, 26.689085, 29.791079>,  <28.020878, 26.137569, 29.662052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609373, 26.689085, 29.791079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990526, 26.806866, 29.820248>,  <28.219217, 26.877535, 29.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990526, 26.806866, 29.820248>,  <27.609373, 26.689085, 29.791079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990526, 26.806866, 29.820248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207512, 0.808069, -0.551328,
		-0.221264, 0.510218, 0.831096,
		0.952881, 0.294451, 0.072921,
		28.276390, 26.895201, 29.842123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567675, 27.371775, 30.049452>,  <27.609373, 26.689085, 29.791079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567675, 27.371775, 30.049452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930626, 27.354946, 29.882172>,  <28.148397, 27.344849, 29.781803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930626, 27.354946, 29.882172>,  <27.567675, 27.371775, 30.049452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930626, 27.354946, 29.882172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140741, 0.907124, -0.396634,
		0.396046, 0.418756, 0.817185,
		0.907381, -0.042074, -0.418199,
		28.202841, 27.342323, 29.756712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705372, 28.018709, 30.055239>,  <27.567675, 27.371775, 30.049452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705372, 28.018709, 30.055239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979464, 27.879704, 29.799210>,  <28.143919, 27.796301, 29.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979464, 27.879704, 29.799210>,  <27.705372, 28.018709, 30.055239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979464, 27.879704, 29.799210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042234, 0.896307, -0.441418,
		0.727100, 0.275441, 0.628854,
		0.685231, -0.347514, -0.640072,
		28.185034, 27.775450, 29.607187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151316, 28.510496, 29.924191>,  <27.705372, 28.018709, 30.055239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151316, 28.510496, 29.924191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209406, 28.290939, 29.594917>,  <28.244261, 28.159206, 29.397354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.209406, 28.290939, 29.594917>,  <28.151316, 28.510496, 29.924191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.209406, 28.290939, 29.594917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136422, 0.835165, -0.532812,
		0.979948, -0.034921, 0.196168,
		0.145226, -0.548890, -0.823182,
		28.252974, 28.126272, 29.347963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726765, 28.799475, 29.623981>,  <28.151316, 28.510496, 29.924191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726765, 28.799475, 29.623981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541288, 28.602928, 29.329079>,  <28.430002, 28.485001, 29.152138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541288, 28.602928, 29.329079>,  <28.726765, 28.799475, 29.623981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541288, 28.602928, 29.329079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047027, 0.817299, -0.574292,
		0.884748, -0.300965, -0.355866,
		-0.463691, -0.491368, -0.737257,
		28.402182, 28.455517, 29.107903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039293, 29.052212, 29.042650>,  <28.726765, 28.799475, 29.623981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039293, 29.052212, 29.042650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682371, 28.912178, 28.928646>,  <28.468218, 28.828157, 28.860245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682371, 28.912178, 28.928646>,  <29.039293, 29.052212, 29.042650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682371, 28.912178, 28.928646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167089, 0.842635, -0.511905,
		0.419367, -0.409155, -0.810384,
		-0.892307, -0.350082, -0.285008,
		28.414679, 28.807154, 28.843143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110231, 29.022533, 28.390697>,  <29.039293, 29.052212, 29.042650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110231, 29.022533, 28.390697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716297, 29.036041, 28.458767>,  <28.479937, 29.044146, 28.499609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716297, 29.036041, 28.458767>,  <29.110231, 29.022533, 28.390697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716297, 29.036041, 28.458767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066112, 0.833810, -0.548078,
		-0.160399, -0.551017, -0.818933,
		-0.984836, 0.033770, 0.170171,
		28.420847, 29.046173, 28.509819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869192, 29.299114, 27.743105>,  <29.110231, 29.022533, 28.390697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869192, 29.299114, 27.743105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547192, 29.300854, 27.980408>,  <28.353991, 29.301897, 28.122789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547192, 29.300854, 27.980408>,  <28.869192, 29.299114, 27.743105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547192, 29.300854, 27.980408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351811, 0.801683, -0.483252,
		-0.477705, -0.597733, -0.643827,
		-0.805001, 0.004347, 0.593257,
		28.305691, 29.302158, 28.158384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188253, 29.223894, 27.372442>,  <28.869192, 29.299114, 27.743105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188253, 29.223894, 27.372442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098965, 29.402351, 27.719112>,  <28.045391, 29.509426, 27.927114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098965, 29.402351, 27.719112>,  <28.188253, 29.223894, 27.372442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098965, 29.402351, 27.719112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430298, 0.752692, -0.498296,
		-0.874652, -0.484159, 0.023958,
		-0.223222, 0.446144, 0.866676,
		28.031998, 29.536194, 27.979115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554800, 29.300232, 27.239523>,  <28.188253, 29.223894, 27.372442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554800, 29.300232, 27.239523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663294, 29.563477, 27.520470>,  <27.728390, 29.721424, 27.689037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663294, 29.563477, 27.520470>,  <27.554800, 29.300232, 27.239523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663294, 29.563477, 27.520470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494561, 0.721317, -0.484883,
		-0.825737, -0.215847, 0.521123,
		0.271234, 0.658113, 0.702367,
		27.744663, 29.760910, 27.731180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001413, 29.729469, 27.464203>,  <27.554800, 29.300232, 27.239523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001413, 29.729469, 27.464203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295044, 29.975132, 27.580097>,  <27.471222, 30.122530, 27.649633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.295044, 29.975132, 27.580097>,  <27.001413, 29.729469, 27.464203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.295044, 29.975132, 27.580097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410944, 0.741440, -0.530464,
		-0.540610, 0.270334, 0.796655,
		0.734075, 0.614155, 0.289738,
		27.515266, 30.159378, 27.667019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588032, 30.220299, 27.648502>,  <27.001413, 29.729469, 27.464203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588032, 30.220299, 27.648502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951584, 30.380692, 27.602627>,  <27.169714, 30.476927, 27.575102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951584, 30.380692, 27.602627>,  <26.588032, 30.220299, 27.648502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951584, 30.380692, 27.602627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415826, 0.850104, -0.323129,
		-0.032072, 0.341375, 0.939380,
		0.908878, 0.400982, -0.114688,
		27.224247, 30.500986, 27.568220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396393, 30.896889, 27.861876>,  <26.588032, 30.220299, 27.648502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396393, 30.896889, 27.861876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758560, 30.907295, 27.692387>,  <26.975861, 30.913538, 27.590693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.758560, 30.907295, 27.692387>,  <26.396393, 30.896889, 27.861876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758560, 30.907295, 27.692387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265554, 0.813437, -0.517496,
		0.331210, 0.581072, 0.743409,
		0.905418, 0.026015, -0.423724,
		27.030186, 30.915100, 27.565269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562885, 31.567146, 27.988781>,  <26.396393, 30.896889, 27.861876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562885, 31.567146, 27.988781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762302, 31.426369, 27.671898>,  <26.881952, 31.341902, 27.481768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762302, 31.426369, 27.671898>,  <26.562885, 31.567146, 27.988781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762302, 31.426369, 27.671898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398940, 0.718200, -0.570119,
		0.769612, 0.600272, 0.217649,
		0.498542, -0.351942, -0.792208,
		26.911865, 31.320786, 27.434235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793802, 32.199860, 27.670980>,  <26.562885, 31.567146, 27.988781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793802, 32.199860, 27.670980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806845, 31.906910, 27.398933>,  <26.814671, 31.731138, 27.235706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806845, 31.906910, 27.398933>,  <26.793802, 32.199860, 27.670980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806845, 31.906910, 27.398933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246655, 0.653535, -0.715579,
		0.968555, 0.191086, -0.159336,
		0.032606, -0.732379, -0.680117,
		26.816626, 31.687197, 27.194899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140850, 32.475979, 27.166748>,  <26.793802, 32.199860, 27.670980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140850, 32.475979, 27.166748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914192, 32.184525, 27.012859>,  <26.778198, 32.009651, 26.920527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914192, 32.184525, 27.012859>,  <27.140850, 32.475979, 27.166748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914192, 32.184525, 27.012859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327489, 0.627608, -0.706300,
		0.756087, -0.274228, -0.594249,
		-0.566643, -0.728633, -0.384720,
		26.744200, 31.965935, 26.897444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292429, 32.550877, 26.576788>,  <27.140850, 32.475979, 27.166748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292429, 32.550877, 26.576788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967777, 32.320621, 26.537003>,  <26.772985, 32.182468, 26.513132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967777, 32.320621, 26.537003>,  <27.292429, 32.550877, 26.576788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967777, 32.320621, 26.537003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388204, 0.658712, -0.644513,
		0.436526, -0.484494, -0.758097,
		-0.811630, -0.575642, -0.099463,
		26.724289, 32.147930, 26.507164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281733, 32.544060, 25.950241>,  <27.292429, 32.550877, 26.576788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281733, 32.544060, 25.950241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919161, 32.410248, 26.053371>,  <26.701618, 32.329960, 26.115250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919161, 32.410248, 26.053371>,  <27.281733, 32.544060, 25.950241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919161, 32.410248, 26.053371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382690, 0.392241, -0.836478,
		0.178694, -0.856877, -0.483560,
		-0.906431, -0.334527, 0.257827,
		26.647232, 32.309891, 26.130720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020288, 32.264442, 25.325445>,  <27.281733, 32.544060, 25.950241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020288, 32.264442, 25.325445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705050, 32.345444, 25.557961>,  <26.515907, 32.394047, 25.697470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705050, 32.345444, 25.557961>,  <27.020288, 32.264442, 25.325445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705050, 32.345444, 25.557961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498050, 0.345164, -0.795492,
		-0.361732, -0.916435, -0.171164,
		-0.788096, 0.202506, 0.581288,
		26.468620, 32.406197, 25.732347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422682, 32.216511, 24.861666>,  <27.020288, 32.264442, 25.325445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422682, 32.216511, 24.861666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266811, 32.397842, 25.182327>,  <26.173290, 32.506641, 25.374723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266811, 32.397842, 25.182327>,  <26.422682, 32.216511, 24.861666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266811, 32.397842, 25.182327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610535, 0.524532, -0.593391,
		-0.689493, -0.720667, 0.072375,
		-0.389674, 0.453326, 0.801654,
		26.149910, 32.533840, 25.422823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690075, 32.115231, 24.969378>,  <26.422682, 32.216511, 24.861666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690075, 32.115231, 24.969378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791063, 32.463150, 25.138947>,  <25.851656, 32.671902, 25.240688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791063, 32.463150, 25.138947>,  <25.690075, 32.115231, 24.969378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791063, 32.463150, 25.138947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644164, 0.478008, -0.597127,
		-0.722018, -0.122318, 0.680976,
		0.252472, 0.869797, 0.423923,
		25.866804, 32.724091, 25.266123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177530, 32.468292, 24.871607>,  <25.690075, 32.115231, 24.969378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177530, 32.468292, 24.871607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408953, 32.763161, 25.011234>,  <25.547806, 32.940083, 25.095011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408953, 32.763161, 25.011234>,  <25.177530, 32.468292, 24.871607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408953, 32.763161, 25.011234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662398, 0.674367, -0.326278,
		-0.475923, -0.042452, 0.878462,
		0.578555, 0.737174, 0.349067,
		25.582520, 32.984314, 25.115955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745930, 32.840466, 25.317770>,  <25.177530, 32.468292, 24.871607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745930, 32.840466, 25.317770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046686, 33.050026, 25.157677>,  <25.227140, 33.175762, 25.061621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046686, 33.050026, 25.157677>,  <24.745930, 32.840466, 25.317770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046686, 33.050026, 25.157677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658900, 0.576339, -0.483408,
		-0.022589, 0.627184, 0.778543,
		0.751891, 0.523902, -0.400233,
		25.272253, 33.207195, 25.037607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629101, 33.511726, 25.360456>,  <24.745930, 32.840466, 25.317770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629101, 33.511726, 25.360456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856983, 33.462299, 25.035454>,  <24.993713, 33.432644, 24.840452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856983, 33.462299, 25.035454>,  <24.629101, 33.511726, 25.360456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856983, 33.462299, 25.035454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635146, 0.561204, -0.530697,
		0.521560, 0.818401, 0.241237,
		0.569706, -0.123569, -0.812506,
		25.027895, 33.425228, 24.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578650, 34.106323, 25.105864>,  <24.629101, 33.511726, 25.360456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578650, 34.106323, 25.105864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670130, 33.845016, 24.817158>,  <24.725018, 33.688232, 24.643934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670130, 33.845016, 24.817158>,  <24.578650, 34.106323, 25.105864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670130, 33.845016, 24.817158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531582, 0.537317, -0.654760,
		0.815547, 0.533420, -0.224379,
		0.228699, -0.653264, -0.721764,
		24.738739, 33.649036, 24.600628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182411, 34.811249, 24.803947>,  <24.578650, 34.106323, 25.105864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182411, 34.811249, 24.803947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964691, 35.120754, 24.674313>,  <23.834059, 35.306458, 24.596531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.964691, 35.120754, 24.674313>,  <24.182411, 34.811249, 24.803947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.964691, 35.120754, 24.674313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835716, -0.533716, 0.129329,
		-0.072900, 0.341238, 0.937146,
		-0.544301, 0.773759, -0.324086,
		23.801401, 35.352882, 24.577087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.590597, 34.885685, 25.151333>,  <24.182411, 34.811249, 24.803947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.590597, 34.885685, 25.151333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453068, 35.083324, 24.831921>,  <23.370550, 35.201908, 24.640274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.453068, 35.083324, 24.831921>,  <23.590597, 34.885685, 25.151333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.453068, 35.083324, 24.831921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920651, -0.344811, 0.183051,
		-0.184896, 0.798104, 0.573448,
		-0.343825, 0.494100, -0.798530,
		23.349920, 35.231556, 24.592361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.812336, 34.886822, 25.268772>,  <23.590597, 34.885685, 25.151333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.812336, 34.886822, 25.268772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.658869, 35.248665, 25.194485>,  <22.566788, 35.465771, 25.149912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.658869, 35.248665, 25.194485>,  <22.812336, 34.886822, 25.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658869, 35.248665, 25.194485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895390, 0.413618, 0.164918,
		0.226002, -0.103017, -0.968664,
		-0.383667, 0.904604, -0.185719,
		22.543768, 35.520046, 25.138769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.307539, 34.768131, 25.792006>,  <22.812336, 34.886822, 25.268772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.307539, 34.768131, 25.792006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.038090, 35.062344, 25.763088>,  <21.876421, 35.238873, 25.745737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.038090, 35.062344, 25.763088>,  <22.307539, 34.768131, 25.792006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.038090, 35.062344, 25.763088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693712, 0.662988, 0.281445,
		0.254941, 0.139437, -0.956850,
		-0.673624, 0.735530, -0.072294,
		21.836002, 35.283001, 25.741400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623556, 34.700508, 26.001781>,  <22.307539, 34.768131, 25.792006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623556, 34.700508, 26.001781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227678, 34.680279, 25.948189>,  <20.990152, 34.668140, 25.916033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.227678, 34.680279, 25.948189>,  <21.623556, 34.700508, 26.001781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227678, 34.680279, 25.948189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143111, -0.314493, -0.938410,
		0.005324, -0.947912, 0.318490,
		-0.989693, -0.050576, -0.133982,
		20.930771, 34.665108, 25.907993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466253, 34.075634, 25.641510>,  <21.623556, 34.700508, 26.001781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466253, 34.075634, 25.641510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189962, 34.355183, 25.567245>,  <21.024187, 34.522911, 25.522688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189962, 34.355183, 25.567245>,  <21.466253, 34.075634, 25.641510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189962, 34.355183, 25.567245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046679, -0.299308, -0.953014,
		-0.721607, -0.649606, 0.239362,
		-0.690727, 0.698875, -0.185660,
		20.982744, 34.564846, 25.511547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852736, 33.700577, 25.269598>,  <21.466253, 34.075634, 25.641510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852736, 33.700577, 25.269598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857807, 34.090668, 25.181259>,  <20.860851, 34.324722, 25.128256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.857807, 34.090668, 25.181259>,  <20.852736, 33.700577, 25.269598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857807, 34.090668, 25.181259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193945, -0.214272, -0.957326,
		-0.980931, 0.054972, 0.186423,
		0.012681, 0.975226, -0.220848,
		20.861610, 34.383236, 25.115005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231911, 33.875507, 25.051722>,  <20.852736, 33.700577, 25.269598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231911, 33.875507, 25.051722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496515, 34.128071, 24.889866>,  <20.655277, 34.279610, 24.792753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.496515, 34.128071, 24.889866>,  <20.231911, 33.875507, 25.051722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.496515, 34.128071, 24.889866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311279, -0.259709, -0.914142,
		-0.682283, 0.730669, 0.024743,
		0.661510, 0.631406, -0.404637,
		20.694967, 34.317493, 24.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811018, 34.197842, 24.612911>,  <20.231911, 33.875507, 25.051722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811018, 34.197842, 24.612911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189243, 34.255466, 24.496185>,  <20.416178, 34.290043, 24.426149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189243, 34.255466, 24.496185>,  <19.811018, 34.197842, 24.612911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189243, 34.255466, 24.496185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286463, -0.057052, -0.956391,
		-0.154432, 0.987922, -0.012677,
		0.945563, 0.144066, -0.291814,
		20.472912, 34.298687, 24.408642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880848, 34.776455, 24.289885>,  <19.811018, 34.197842, 24.612911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.880848, 34.776455, 24.289885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195385, 34.582096, 24.137268>,  <20.384108, 34.465481, 24.045698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195385, 34.582096, 24.137268>,  <19.880848, 34.776455, 24.289885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195385, 34.582096, 24.137268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383544, 0.100194, -0.918071,
		0.484316, 0.868254, -0.107576,
		0.786341, -0.485897, -0.381540,
		20.431288, 34.436329, 24.022806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025082, 35.117355, 23.773020>,  <19.880848, 34.776455, 24.289885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025082, 35.117355, 23.773020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233219, 34.784706, 23.695415>,  <20.358101, 34.585117, 23.648853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.233219, 34.784706, 23.695415>,  <20.025082, 35.117355, 23.773020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233219, 34.784706, 23.695415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172582, 0.120094, -0.977647,
		0.836338, 0.542193, -0.081034,
		0.520342, -0.831628, -0.194011,
		20.389322, 34.535217, 23.637213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482458, 35.334396, 23.321690>,  <20.025082, 35.117355, 23.773020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.482458, 35.334396, 23.321690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416510, 34.942665, 23.274811>,  <20.376940, 34.707626, 23.246683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416510, 34.942665, 23.274811>,  <20.482458, 35.334396, 23.321690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416510, 34.942665, 23.274811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067810, 0.129797, -0.989219,
		0.983981, -0.155146, -0.087808,
		-0.164871, -0.979328, -0.117198,
		20.367048, 34.648869, 23.239651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799805, 35.187496, 22.665319>,  <20.482458, 35.334396, 23.321690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799805, 35.187496, 22.665319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606718, 34.843075, 22.729282>,  <20.490866, 34.636421, 22.767660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606718, 34.843075, 22.729282>,  <20.799805, 35.187496, 22.665319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606718, 34.843075, 22.729282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120437, -0.115590, -0.985969,
		0.867457, -0.495200, -0.047906,
		-0.482714, -0.861055, 0.159909,
		20.461905, 34.584759, 22.777256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.167557, 34.651131, 22.319880>,  <20.799805, 35.187496, 22.665319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.167557, 34.651131, 22.319880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791288, 34.526981, 22.374737>,  <20.565527, 34.452492, 22.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791288, 34.526981, 22.374737>,  <21.167557, 34.651131, 22.319880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791288, 34.526981, 22.374737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034066, -0.315739, -0.948234,
		0.337611, -0.896647, 0.286433,
		-0.940670, -0.310376, 0.137142,
		20.509087, 34.433868, 22.415880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.157701, 33.924580, 22.258854>,  <21.167557, 34.651131, 22.319880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.157701, 33.924580, 22.258854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796867, 34.075134, 22.174404>,  <20.580368, 34.165466, 22.123734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796867, 34.075134, 22.174404>,  <21.157701, 33.924580, 22.258854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.796867, 34.075134, 22.174404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049462, -0.395820, -0.916995,
		-0.428721, -0.837648, 0.338445,
		-0.902082, 0.376394, -0.211128,
		20.526241, 34.188053, 22.111067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.809156, 33.400585, 21.920031>,  <21.157701, 33.924580, 22.258854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.809156, 33.400585, 21.920031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615360, 33.733082, 21.810993>,  <20.499083, 33.932579, 21.745571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.615360, 33.733082, 21.810993>,  <20.809156, 33.400585, 21.920031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615360, 33.733082, 21.810993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107169, -0.365660, -0.924558,
		-0.868208, -0.418725, 0.266242,
		-0.484490, 0.831241, -0.272594,
		20.470013, 33.982452, 21.729216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235203, 33.165768, 21.523438>,  <20.809156, 33.400585, 21.920031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235203, 33.165768, 21.523438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327436, 33.544388, 21.433212>,  <20.382776, 33.771561, 21.379076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.327436, 33.544388, 21.433212>,  <20.235203, 33.165768, 21.523438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327436, 33.544388, 21.433212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010369, -0.229407, -0.973275,
		-0.972997, 0.226760, -0.043083,
		0.230583, 0.946548, -0.225564,
		20.396612, 33.828354, 21.365543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.857109, 33.257965, 20.925478>,  <20.235203, 33.165768, 21.523438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.857109, 33.257965, 20.925478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045658, 33.610718, 20.921696>,  <20.158787, 33.822369, 20.919426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045658, 33.610718, 20.921696>,  <19.857109, 33.257965, 20.925478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045658, 33.610718, 20.921696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074337, -0.050414, -0.995958,
		-0.878796, 0.468763, -0.089321,
		0.471372, 0.881884, -0.009457,
		20.187069, 33.875282, 20.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485973, 33.583405, 20.360868>,  <19.857109, 33.257965, 20.925478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485973, 33.583405, 20.360868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842365, 33.756008, 20.417374>,  <20.056200, 33.859570, 20.451277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.842365, 33.756008, 20.417374>,  <19.485973, 33.583405, 20.360868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.842365, 33.756008, 20.417374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131370, 0.052819, -0.989925,
		-0.434622, 0.900562, -0.009627,
		0.890980, 0.431508, 0.141262,
		20.109659, 33.885460, 20.459753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606052, 34.051830, 19.760416>,  <19.485973, 33.583405, 20.360868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606052, 34.051830, 19.760416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972673, 34.025707, 19.918236>,  <20.192646, 34.010033, 20.012928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972673, 34.025707, 19.918236>,  <19.606052, 34.051830, 19.760416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972673, 34.025707, 19.918236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391967, -0.049031, -0.918672,
		0.079337, 0.996660, -0.019343,
		0.916552, -0.065303, 0.394548,
		20.247639, 34.006115, 20.036600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994205, 34.608086, 19.661470>,  <19.606052, 34.051830, 19.760416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994205, 34.608086, 19.661470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256243, 34.308422, 19.700676>,  <20.413465, 34.128624, 19.724199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.256243, 34.308422, 19.700676>,  <19.994205, 34.608086, 19.661470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256243, 34.308422, 19.700676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335660, 0.172350, -0.926082,
		0.676894, 0.639570, 0.364369,
		0.655093, -0.749163, 0.098015,
		20.452770, 34.083672, 19.730080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568745, 34.792393, 19.249460>,  <19.994205, 34.608086, 19.661470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568745, 34.792393, 19.249460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683464, 34.414154, 19.310909>,  <20.752295, 34.187210, 19.347778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683464, 34.414154, 19.310909>,  <20.568745, 34.792393, 19.249460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683464, 34.414154, 19.310909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500318, 0.011090, -0.865770,
		0.816964, 0.325161, 0.476279,
		0.286796, -0.945594, 0.153624,
		20.769503, 34.130474, 19.356997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.377676, 34.812851, 19.098557>,  <20.568745, 34.792393, 19.249460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.377676, 34.812851, 19.098557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232340, 34.443623, 19.048084>,  <21.145138, 34.222084, 19.017801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.232340, 34.443623, 19.048084>,  <21.377676, 34.812851, 19.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.232340, 34.443623, 19.048084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724670, -0.194894, -0.660962,
		0.585523, -0.331595, 0.739735,
		-0.363341, -0.923072, -0.126182,
		21.123337, 34.166702, 19.010229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.957476, 34.380596, 19.168409>,  <21.377676, 34.812851, 19.098557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.957476, 34.380596, 19.168409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698572, 34.141857, 18.978745>,  <21.543230, 33.998615, 18.864946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.698572, 34.141857, 18.978745>,  <21.957476, 34.380596, 19.168409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.698572, 34.141857, 18.978745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679284, -0.169373, -0.714064,
		0.345878, -0.784273, 0.515058,
		-0.647258, -0.596849, -0.474161,
		21.504395, 33.962803, 18.836496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.330187, 33.864143, 18.818272>,  <21.957476, 34.380596, 19.168409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.330187, 33.864143, 18.818272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986435, 33.849407, 18.614269>,  <21.780184, 33.840565, 18.491867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.986435, 33.849407, 18.614269>,  <22.330187, 33.864143, 18.818272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986435, 33.849407, 18.614269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510952, -0.100467, -0.853718,
		-0.019784, -0.994258, 0.105165,
		-0.859382, -0.036845, -0.510006,
		21.728621, 33.838356, 18.461267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.552549, 33.405483, 18.239616>,  <22.330187, 33.864143, 18.818272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.552549, 33.405483, 18.239616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217413, 33.592865, 18.127495>,  <22.016331, 33.705296, 18.060223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.217413, 33.592865, 18.127495>,  <22.552549, 33.405483, 18.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.217413, 33.592865, 18.127495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371059, 0.112065, -0.921822,
		-0.400421, -0.876350, -0.267718,
		-0.837841, 0.468456, -0.280304,
		21.966061, 33.733402, 18.043404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.186298, 33.048832, 17.610527>,  <22.552549, 33.405483, 18.239616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.186298, 33.048832, 17.610527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081812, 33.434853, 17.618870>,  <22.019119, 33.666466, 17.623875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.081812, 33.434853, 17.618870>,  <22.186298, 33.048832, 17.610527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.081812, 33.434853, 17.618870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413194, 0.131316, -0.901125,
		-0.872374, -0.226774, -0.433056,
		-0.261218, 0.965054, 0.020855,
		22.003447, 33.724369, 17.625126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.025099, 33.343735, 16.983057>,  <22.186298, 33.048832, 17.610527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.025099, 33.343735, 16.983057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.157087, 33.672729, 17.168369>,  <22.236280, 33.870129, 17.279556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.157087, 33.672729, 17.168369>,  <22.025099, 33.343735, 16.983057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157087, 33.672729, 17.168369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482898, 0.274625, -0.831499,
		-0.811128, 0.498088, -0.306560,
		0.329970, 0.822490, 0.463282,
		22.256079, 33.919476, 17.307354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.746611, 33.959293, 16.693867>,  <22.025099, 33.343735, 16.983057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.746611, 33.959293, 16.693867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.120659, 34.007420, 16.827175>,  <22.345089, 34.036293, 16.907160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.120659, 34.007420, 16.827175>,  <21.746611, 33.959293, 16.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120659, 34.007420, 16.827175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299415, 0.234631, -0.924824,
		-0.189464, 0.964610, 0.183386,
		0.935122, 0.120312, 0.333273,
		22.401196, 34.043514, 16.927156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926569, 34.574650, 16.434196>,  <21.746611, 33.959293, 16.693867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926569, 34.574650, 16.434196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259022, 34.367725, 16.515793>,  <22.458492, 34.243572, 16.564751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259022, 34.367725, 16.515793>,  <21.926569, 34.574650, 16.434196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.259022, 34.367725, 16.515793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417883, 0.339014, -0.842878,
		0.366873, 0.785786, 0.497940,
		0.831131, -0.517310, 0.203991,
		22.508362, 34.212532, 16.576990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525854, 34.972233, 16.444103>,  <21.926569, 34.574650, 16.434196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525854, 34.972233, 16.444103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.615337, 34.600075, 16.327953>,  <22.669027, 34.376781, 16.258263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.615337, 34.600075, 16.327953>,  <22.525854, 34.972233, 16.444103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.615337, 34.600075, 16.327953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583177, 0.366487, -0.724977,
		0.780935, -0.007158, 0.624572,
		0.223708, -0.930396, -0.290376,
		22.682449, 34.320957, 16.240841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225328, 34.979000, 16.274519>,  <22.525854, 34.972233, 16.444103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225328, 34.979000, 16.274519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088625, 34.671497, 16.058292>,  <23.006603, 34.486996, 15.928556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.088625, 34.671497, 16.058292>,  <23.225328, 34.979000, 16.274519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088625, 34.671497, 16.058292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615907, 0.251237, -0.746685,
		0.709831, -0.588124, 0.387621,
		-0.341759, -0.768759, -0.540566,
		22.986097, 34.440868, 15.896123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044897, 35.269836, 15.618294>,  <23.225328, 34.979000, 16.274519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044897, 35.269836, 15.618294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147041, 34.908726, 15.479859>,  <23.208328, 34.692059, 15.396798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147041, 34.908726, 15.479859>,  <23.044897, 35.269836, 15.618294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147041, 34.908726, 15.479859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576614, 0.429533, -0.694995,
		0.776084, -0.022083, 0.630242,
		0.255362, -0.902781, -0.346087,
		23.223650, 34.637890, 15.376033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.632725, 35.285503, 15.265100>,  <23.044897, 35.269836, 15.618294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.632725, 35.285503, 15.265100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513210, 35.658546, 15.346065>,  <23.441502, 35.882374, 15.394644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.513210, 35.658546, 15.346065>,  <23.632725, 35.285503, 15.265100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.513210, 35.658546, 15.346065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326630, -0.299230, 0.896535,
		0.896682, 0.201760, 0.394023,
		-0.298789, 0.932606, 0.202413,
		23.423574, 35.938328, 15.406789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.939865, 35.485115, 15.856407>,  <23.632725, 35.285503, 15.265100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.939865, 35.485115, 15.856407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599075, 35.691612, 15.821464>,  <23.394602, 35.815510, 15.800497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599075, 35.691612, 15.821464>,  <23.939865, 35.485115, 15.856407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.599075, 35.691612, 15.821464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229222, -0.217749, 0.948706,
		0.470743, 0.828297, 0.303851,
		-0.851973, 0.516246, -0.087360,
		23.343483, 35.846485, 15.795256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.814915, 35.987453, 16.383142>,  <23.939865, 35.485115, 15.856407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.814915, 35.987453, 16.383142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434135, 35.922920, 16.279015>,  <23.205667, 35.884201, 16.216537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434135, 35.922920, 16.279015>,  <23.814915, 35.987453, 16.383142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.434135, 35.922920, 16.279015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250309, -0.079896, 0.964864,
		-0.176467, 0.983660, 0.035673,
		-0.951948, -0.161337, -0.260318,
		23.148552, 35.874519, 16.200918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388083, 36.469223, 16.439039>,  <23.814915, 35.987453, 16.383142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388083, 36.469223, 16.439039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114071, 36.179085, 16.466209>,  <22.949663, 36.005001, 16.482512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.114071, 36.179085, 16.466209>,  <23.388083, 36.469223, 16.439039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.114071, 36.179085, 16.466209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252387, 0.323752, 0.911858,
		-0.683401, 0.607505, -0.404846,
		-0.685029, -0.725343, 0.067926,
		22.908562, 35.961483, 16.486588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.679331, 36.740452, 16.554691>,  <23.388083, 36.469223, 16.439039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.679331, 36.740452, 16.554691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691721, 36.370018, 16.705109>,  <22.699154, 36.147758, 16.795359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691721, 36.370018, 16.705109>,  <22.679331, 36.740452, 16.554691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691721, 36.370018, 16.705109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445919, 0.323903, 0.834412,
		-0.894537, -0.193529, -0.402927,
		0.030974, -0.926085, 0.376041,
		22.701014, 36.092194, 16.817921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.999674, 36.494602, 16.773441>,  <22.679331, 36.740452, 16.554691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.999674, 36.494602, 16.773441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292591, 36.327522, 16.988579>,  <22.468342, 36.227276, 17.117661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.292591, 36.327522, 16.988579>,  <21.999674, 36.494602, 16.773441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292591, 36.327522, 16.988579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490083, 0.225124, 0.842103,
		-0.472829, -0.880253, -0.039851,
		0.732292, -0.417701, 0.537842,
		22.512280, 36.202213, 17.149931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647352, 36.099945, 17.328545>,  <21.999674, 36.494602, 16.773441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647352, 36.099945, 17.328545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.018103, 36.177063, 17.457375>,  <22.240553, 36.223331, 17.534672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.018103, 36.177063, 17.457375>,  <21.647352, 36.099945, 17.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.018103, 36.177063, 17.457375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354603, 0.168298, 0.919746,
		0.123109, -0.966700, 0.224354,
		0.926877, 0.192786, 0.322076,
		22.296165, 36.234901, 17.553997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871279, 35.593876, 17.951559>,  <21.647352, 36.099945, 17.328545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871279, 35.593876, 17.951559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106554, 35.917095, 17.964752>,  <22.247719, 36.111027, 17.972668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.106554, 35.917095, 17.964752>,  <21.871279, 35.593876, 17.951559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106554, 35.917095, 17.964752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306287, 0.184836, 0.933822,
		0.748479, -0.559366, 0.356214,
		0.588190, 0.808050, 0.032981,
		22.283010, 36.159512, 17.974646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.031208, 35.519894, 18.566507>,  <21.871279, 35.593876, 17.951559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.031208, 35.519894, 18.566507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139238, 35.900265, 18.506107>,  <22.204056, 36.128487, 18.469868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.139238, 35.900265, 18.506107>,  <22.031208, 35.519894, 18.566507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139238, 35.900265, 18.506107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278410, 0.227258, 0.933189,
		0.921709, -0.209990, 0.326123,
		0.270074, 0.950925, -0.151002,
		22.220261, 36.185543, 18.460806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367025, 35.772789, 19.179564>,  <22.031208, 35.519894, 18.566507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367025, 35.772789, 19.179564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.268669, 36.116226, 18.999626>,  <22.209656, 36.322289, 18.891665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.268669, 36.116226, 18.999626>,  <22.367025, 35.772789, 19.179564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.268669, 36.116226, 18.999626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251758, 0.391594, 0.885027,
		0.936032, 0.330870, 0.119869,
		-0.245889, 0.858592, -0.449844,
		22.194902, 36.373802, 18.864674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479078, 36.254559, 19.671165>,  <22.367025, 35.772789, 19.179564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479078, 36.254559, 19.671165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265236, 36.482239, 19.421299>,  <22.136930, 36.618847, 19.271379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.265236, 36.482239, 19.421299>,  <22.479078, 36.254559, 19.671165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.265236, 36.482239, 19.421299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210230, 0.626352, 0.750658,
		0.818534, 0.532630, -0.215189,
		-0.534607, 0.569200, -0.624665,
		22.104855, 36.653000, 19.233900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746927, 36.948040, 19.692665>,  <22.479078, 36.254559, 19.671165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746927, 36.948040, 19.692665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366377, 36.991241, 19.577271>,  <22.138046, 37.017162, 19.508034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366377, 36.991241, 19.577271>,  <22.746927, 36.948040, 19.692665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366377, 36.991241, 19.577271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175071, 0.580987, 0.794861,
		0.253452, 0.806716, -0.533828,
		-0.951374, 0.108001, -0.288485,
		22.080965, 37.023643, 19.490725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590483, 37.524773, 19.892504>,  <22.746927, 36.948040, 19.692665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590483, 37.524773, 19.892504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.218121, 37.380703, 19.868195>,  <21.994703, 37.294262, 19.853609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.218121, 37.380703, 19.868195>,  <22.590483, 37.524773, 19.892504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.218121, 37.380703, 19.868195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199984, 0.363347, 0.909937,
		-0.305654, 0.859218, -0.410270,
		-0.930904, -0.360173, -0.060772,
		21.938848, 37.272652, 19.849962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272314, 38.041985, 20.233940>,  <22.590483, 37.524773, 19.892504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272314, 38.041985, 20.233940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012335, 37.738022, 20.238007>,  <21.856348, 37.555645, 20.240446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012335, 37.738022, 20.238007>,  <22.272314, 38.041985, 20.233940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012335, 37.738022, 20.238007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391523, 0.346274, 0.852528,
		-0.651365, 0.550119, -0.522583,
		-0.649948, -0.759910, 0.010167,
		21.817350, 37.510048, 20.241056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563549, 38.329655, 20.419971>,  <22.272314, 38.041985, 20.233940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563549, 38.329655, 20.419971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.551445, 37.943146, 20.522263>,  <21.544184, 37.711239, 20.583637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.551445, 37.943146, 20.522263>,  <21.563549, 38.329655, 20.419971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.551445, 37.943146, 20.522263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556494, 0.228813, 0.798724,
		-0.830301, -0.118144, -0.544649,
		-0.030258, -0.966275, 0.255730,
		21.542368, 37.653263, 20.598982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.048204, 38.304764, 20.807196>,  <21.563549, 38.329655, 20.419971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.048204, 38.304764, 20.807196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183489, 37.935040, 20.877914>,  <21.264660, 37.713203, 20.920345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183489, 37.935040, 20.877914>,  <21.048204, 38.304764, 20.807196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183489, 37.935040, 20.877914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380220, 0.037638, 0.924130,
		-0.860840, -0.379774, -0.338712,
		0.338212, -0.924313, 0.176798,
		21.284952, 37.657745, 20.930954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529976, 37.862762, 21.061848>,  <21.048204, 38.304764, 20.807196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529976, 37.862762, 21.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872171, 37.701202, 21.191467>,  <21.077488, 37.604267, 21.269239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872171, 37.701202, 21.191467>,  <20.529976, 37.862762, 21.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872171, 37.701202, 21.191467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419720, -0.174345, 0.890752,
		-0.303277, -0.898037, -0.318674,
		0.855487, -0.403899, 0.324049,
		21.128819, 37.580032, 21.288683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313063, 37.204594, 21.433233>,  <20.529976, 37.862762, 21.061848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.313063, 37.204594, 21.433233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684155, 37.277012, 21.563797>,  <20.906809, 37.320465, 21.642136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684155, 37.277012, 21.563797>,  <20.313063, 37.204594, 21.433233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684155, 37.277012, 21.563797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290948, -0.197029, 0.936231,
		0.233816, -0.963535, -0.130113,
		0.927728, 0.181050, 0.326407,
		20.962473, 37.331326, 21.661718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650803, 36.614758, 21.801825>,  <20.313063, 37.204594, 21.433233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650803, 36.614758, 21.801825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853790, 36.922047, 21.957935>,  <20.975582, 37.106419, 22.051601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853790, 36.922047, 21.957935>,  <20.650803, 36.614758, 21.801825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853790, 36.922047, 21.957935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212240, -0.327537, 0.920692,
		0.835123, -0.550055, -0.003168,
		0.507469, 0.768219, 0.390277,
		21.006031, 37.152512, 22.075018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939804, 36.290184, 22.317930>,  <20.650803, 36.614758, 21.801825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939804, 36.290184, 22.317930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.987394, 36.676105, 22.411736>,  <21.015949, 36.907658, 22.468019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.987394, 36.676105, 22.411736>,  <20.939804, 36.290184, 22.317930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987394, 36.676105, 22.411736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019256, -0.233905, 0.972069,
		0.992710, -0.120168, -0.009250,
		0.118975, 0.964805, 0.234514,
		21.023087, 36.965546, 22.482090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471302, 36.292309, 22.662981>,  <20.939804, 36.290184, 22.317930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471302, 36.292309, 22.662981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266861, 36.618683, 22.771072>,  <21.144197, 36.814507, 22.835928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.266861, 36.618683, 22.771072>,  <21.471302, 36.292309, 22.662981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266861, 36.618683, 22.771072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028025, -0.330046, 0.943549,
		0.859064, 0.474676, 0.191553,
		-0.511101, 0.815937, 0.270228,
		21.113531, 36.863464, 22.852140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747448, 36.510292, 23.375492>,  <21.471302, 36.292309, 22.662981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747448, 36.510292, 23.375492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396496, 36.701450, 23.358433>,  <21.185925, 36.816147, 23.348198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396496, 36.701450, 23.358433>,  <21.747448, 36.510292, 23.375492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396496, 36.701450, 23.358433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174310, -0.234676, 0.956317,
		0.447015, 0.846486, 0.289202,
		-0.877379, 0.477900, -0.042648,
		21.133282, 36.844822, 23.345638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720419, 37.063507, 23.984524>,  <21.747448, 36.510292, 23.375492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720419, 37.063507, 23.984524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345156, 36.982048, 23.872536>,  <21.119997, 36.933174, 23.805342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345156, 36.982048, 23.872536>,  <21.720419, 37.063507, 23.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345156, 36.982048, 23.872536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265846, -0.094269, 0.959395,
		-0.221768, 0.974496, 0.034301,
		-0.938160, -0.203644, -0.279972,
		21.063707, 36.920956, 23.788544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348387, 37.464756, 24.457289>,  <21.720419, 37.063507, 23.984524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348387, 37.464756, 24.457289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093420, 37.187904, 24.321846>,  <20.940439, 37.021793, 24.240580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.093420, 37.187904, 24.321846>,  <21.348387, 37.464756, 24.457289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.093420, 37.187904, 24.321846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396848, -0.081788, 0.914233,
		-0.660463, 0.717123, -0.222538,
		-0.637417, -0.692131, -0.338607,
		20.902195, 36.980267, 24.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686569, 37.705822, 24.552710>,  <21.348387, 37.464756, 24.457289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686569, 37.705822, 24.552710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660975, 37.306892, 24.538540>,  <20.645617, 37.067535, 24.530039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660975, 37.306892, 24.538540>,  <20.686569, 37.705822, 24.552710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660975, 37.306892, 24.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620884, 0.011996, 0.783810,
		-0.781286, 0.072150, -0.619989,
		-0.063989, -0.997322, -0.035424,
		20.641777, 37.007694, 24.527912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949060, 37.432701, 24.457390>,  <20.686569, 37.705822, 24.552710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949060, 37.432701, 24.457390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188896, 37.179352, 24.653076>,  <20.332798, 37.027344, 24.770487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188896, 37.179352, 24.653076>,  <19.949060, 37.432701, 24.457390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188896, 37.179352, 24.653076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564590, 0.098483, 0.819475,
		-0.567213, -0.767554, -0.298547,
		0.599589, -0.633373, 0.489214,
		20.368773, 36.989338, 24.799841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494972, 36.811497, 24.467997>,  <19.949060, 37.432701, 24.457390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494972, 36.811497, 24.467997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764112, 36.884708, 24.754707>,  <19.925596, 36.928635, 24.926735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764112, 36.884708, 24.754707>,  <19.494972, 36.811497, 24.467997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.764112, 36.884708, 24.754707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738177, 0.102405, 0.666789,
		0.048634, -0.977761, 0.204004,
		0.672852, 0.183019, 0.716780,
		19.965967, 36.939617, 24.969742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353277, 37.366596, 23.971645>,  <19.494972, 36.811497, 24.467997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353277, 37.366596, 23.971645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304865, 37.136105, 23.648335>,  <19.275818, 36.997810, 23.454348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.304865, 37.136105, 23.648335>,  <19.353277, 37.366596, 23.971645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304865, 37.136105, 23.648335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992445, 0.053753, 0.110289,
		-0.020105, 0.815518, -0.578382,
		-0.121033, -0.576229, -0.808276,
		19.268555, 36.963234, 23.405851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900471, 37.763584, 23.551983>,  <19.353277, 37.366596, 23.971645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900471, 37.763584, 23.551983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894258, 37.374012, 23.461456>,  <18.890532, 37.140270, 23.407141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.894258, 37.374012, 23.461456>,  <18.900471, 37.763584, 23.551983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.894258, 37.374012, 23.461456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983580, -0.025822, 0.178614,
		-0.179802, 0.225375, -0.957537,
		-0.015530, -0.973930, -0.226317,
		18.889599, 37.081833, 23.393560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253036, 37.675274, 23.061848>,  <18.900471, 37.763584, 23.551983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253036, 37.675274, 23.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354803, 37.359749, 23.285648>,  <18.415863, 37.170433, 23.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354803, 37.359749, 23.285648>,  <18.253036, 37.675274, 23.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354803, 37.359749, 23.285648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912079, -0.003363, 0.410001,
		-0.321533, -0.614621, -0.720318,
		0.254418, -0.788815, 0.559501,
		18.431128, 37.123104, 23.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.063263, 24.380026, 27.713263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359924, 24.582233, 27.889626>,  <30.537922, 24.703558, 27.995443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359924, 24.582233, 27.889626>,  <30.063263, 24.380026, 27.713263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359924, 24.582233, 27.889626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107790, 0.738576, -0.665497,
		-0.662067, 0.446043, 0.602257,
		0.741653, 0.505521, 0.440907,
		30.582420, 24.733891, 28.021898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859018, 25.033995, 27.866957>,  <30.063263, 24.380026, 27.713263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859018, 25.033995, 27.866957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.257135, 25.057476, 27.836113>,  <30.496006, 25.071564, 27.817606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.257135, 25.057476, 27.836113>,  <29.859018, 25.033995, 27.866957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257135, 25.057476, 27.836113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094516, 0.763789, -0.638509,
		0.021413, 0.642791, 0.765742,
		0.995293, 0.058702, -0.077109,
		30.555723, 25.075087, 27.812981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021542, 25.698444, 28.165483>,  <29.859018, 25.033995, 27.866957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021542, 25.698444, 28.165483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.317247, 25.594364, 27.917038>,  <30.494671, 25.531916, 27.767971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.317247, 25.594364, 27.917038>,  <30.021542, 25.698444, 28.165483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317247, 25.594364, 27.917038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118424, 0.857730, -0.500274,
		0.662918, 0.443391, 0.603278,
		0.739267, -0.260198, -0.621113,
		30.539028, 25.516304, 27.730703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400108, 26.352163, 28.069366>,  <30.021542, 25.698444, 28.165483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400108, 26.352163, 28.069366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550243, 26.117043, 27.782700>,  <30.640324, 25.975969, 27.610701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550243, 26.117043, 27.782700>,  <30.400108, 26.352163, 28.069366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550243, 26.117043, 27.782700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136428, 0.729738, -0.669977,
		0.916794, 0.349240, 0.193704,
		0.375335, -0.587804, -0.716665,
		30.662844, 25.940701, 27.567699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783882, 26.870127, 27.667463>,  <30.400108, 26.352163, 28.069366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783882, 26.870127, 27.667463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731325, 26.556438, 27.424900>,  <30.699791, 26.368225, 27.279362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.731325, 26.556438, 27.424900>,  <30.783882, 26.870127, 27.667463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731325, 26.556438, 27.424900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084844, 0.618365, -0.781298,
		0.987693, -0.051205, -0.147784,
		-0.131391, -0.784221, -0.606410,
		30.691908, 26.321173, 27.242977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362799, 26.836998, 27.159910>,  <30.783882, 26.870127, 27.667463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362799, 26.836998, 27.159910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.041229, 26.651146, 27.011410>,  <30.848288, 26.539635, 26.922310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.041229, 26.651146, 27.011410>,  <31.362799, 26.836998, 27.159910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041229, 26.651146, 27.011410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099661, 0.720651, -0.686098,
		0.586323, -0.514571, -0.625654,
		-0.803923, -0.464628, -0.371251,
		30.800053, 26.511757, 26.900034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489626, 26.806599, 26.420055>,  <31.362799, 26.836998, 27.159910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489626, 26.806599, 26.420055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092293, 26.763111, 26.435410>,  <30.853893, 26.737019, 26.444622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.092293, 26.763111, 26.435410>,  <31.489626, 26.806599, 26.420055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092293, 26.763111, 26.435410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094803, 0.580700, -0.808579,
		0.065616, -0.806826, -0.587134,
		-0.993331, -0.108718, 0.038386,
		30.794294, 26.730495, 26.446926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369944, 26.778648, 25.681000>,  <31.489626, 26.806599, 26.420055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369944, 26.778648, 25.681000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056320, 26.861794, 25.914940>,  <30.868147, 26.911680, 26.055304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.056320, 26.861794, 25.914940>,  <31.369944, 26.778648, 25.681000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056320, 26.861794, 25.914940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337722, 0.647700, -0.682956,
		-0.520768, -0.732992, -0.437633,
		-0.784056, 0.207864, 0.584849,
		30.821104, 26.924152, 26.090395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913618, 26.957338, 25.121429>,  <31.369944, 26.778648, 25.681000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913618, 26.957338, 25.121429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759357, 27.089272, 25.466099>,  <30.666801, 27.168432, 25.672901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759357, 27.089272, 25.466099>,  <30.913618, 26.957338, 25.121429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759357, 27.089272, 25.466099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406858, 0.777417, -0.479676,
		-0.828093, -0.535567, -0.165618,
		-0.385653, 0.329833, 0.861674,
		30.643661, 27.188221, 25.724602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137638, 27.081396, 24.908121>,  <30.913618, 26.957338, 25.121429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137638, 27.081396, 24.908121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243168, 27.298054, 25.227375>,  <30.306486, 27.428049, 25.418928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243168, 27.298054, 25.227375>,  <30.137638, 27.081396, 24.908121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243168, 27.298054, 25.227375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384733, 0.817871, -0.427865,
		-0.884522, -0.194189, 0.424161,
		0.263822, 0.541644, 0.798135,
		30.322315, 27.460546, 25.466816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584299, 27.465153, 24.999294>,  <30.137638, 27.081396, 24.908121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584299, 27.465153, 24.999294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.888645, 27.671932, 25.156189>,  <30.071253, 27.796000, 25.250326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.888645, 27.671932, 25.156189>,  <29.584299, 27.465153, 24.999294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888645, 27.671932, 25.156189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238447, 0.784895, -0.571911,
		-0.603514, 0.341619, 0.720464,
		0.760864, 0.516948, 0.392237,
		30.116905, 27.827017, 25.273861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266294, 28.031197, 25.242952>,  <29.584299, 27.465153, 24.999294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266294, 28.031197, 25.242952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651747, 28.132404, 25.208546>,  <29.883018, 28.193129, 25.187902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651747, 28.132404, 25.208546>,  <29.266294, 28.031197, 25.242952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651747, 28.132404, 25.208546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266818, 0.892843, -0.362823,
		-0.015002, 0.372578, 0.927880,
		0.963630, 0.253018, -0.086016,
		29.940836, 28.208309, 25.182741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299576, 28.666441, 25.604641>,  <29.266294, 28.031197, 25.242952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299576, 28.666441, 25.604641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617983, 28.680580, 25.362946>,  <29.809027, 28.689064, 25.217928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617983, 28.680580, 25.362946>,  <29.299576, 28.666441, 25.604641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617983, 28.680580, 25.362946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332308, 0.859905, -0.387473,
		0.505893, 0.509229, 0.696245,
		0.796018, 0.035348, -0.604241,
		29.856789, 28.691185, 25.181673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400679, 29.417442, 25.522537>,  <29.299576, 28.666441, 25.604641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400679, 29.417442, 25.522537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618141, 29.243820, 25.235195>,  <29.748619, 29.139647, 25.062790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618141, 29.243820, 25.235195>,  <29.400679, 29.417442, 25.522537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618141, 29.243820, 25.235195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057765, 0.834508, -0.547959,
		0.837317, 0.339398, 0.428614,
		0.543658, -0.434056, -0.718353,
		29.781239, 29.113604, 25.019690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095459, 29.717232, 25.452644>,  <29.400679, 29.417442, 25.522537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095459, 29.717232, 25.452644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.995054, 29.566757, 25.095886>,  <29.934811, 29.476473, 24.881832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.995054, 29.566757, 25.095886>,  <30.095459, 29.717232, 25.452644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995054, 29.566757, 25.095886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003514, 0.921033, -0.389468,
		0.967977, -0.100896, -0.229870,
		-0.251014, -0.376188, -0.891894,
		29.919750, 29.453901, 24.828318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479506, 30.057236, 24.965700>,  <30.095459, 29.717232, 25.452644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479506, 30.057236, 24.965700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.219763, 29.886787, 24.713745>,  <30.063917, 29.784519, 24.562572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.219763, 29.886787, 24.713745>,  <30.479506, 30.057236, 24.965700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219763, 29.886787, 24.713745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077096, 0.860892, -0.502913,
		0.756567, -0.278008, -0.591877,
		-0.649356, -0.426119, -0.629889,
		30.024956, 29.758951, 24.524778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714930, 30.233347, 24.256079>,  <30.479506, 30.057236, 24.965700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714930, 30.233347, 24.256079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320662, 30.165997, 24.260216>,  <30.084101, 30.125586, 24.262697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320662, 30.165997, 24.260216>,  <30.714930, 30.233347, 24.256079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320662, 30.165997, 24.260216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140230, 0.783736, -0.605057,
		0.093774, -0.597836, -0.796115,
		-0.985668, -0.168378, 0.010341,
		30.024961, 30.115482, 24.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497263, 30.436562, 23.637392>,  <30.714930, 30.233347, 24.256079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497263, 30.436562, 23.637392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.163012, 30.441990, 23.857044>,  <29.962461, 30.445248, 23.988834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.163012, 30.441990, 23.857044>,  <30.497263, 30.436562, 23.637392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163012, 30.441990, 23.857044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280875, 0.848561, -0.448390,
		-0.472055, -0.528923, -0.705269,
		-0.835628, 0.013573, 0.549129,
		29.912323, 30.446062, 24.021782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985991, 30.607552, 23.116972>,  <30.497263, 30.436562, 23.637392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985991, 30.607552, 23.116972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789978, 30.668671, 23.460255>,  <29.672371, 30.705341, 23.666225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789978, 30.668671, 23.460255>,  <29.985991, 30.607552, 23.116972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789978, 30.668671, 23.460255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478642, 0.775662, -0.411401,
		-0.728540, -0.612374, -0.306964,
		-0.490031, 0.152796, 0.858209,
		29.642969, 30.714510, 23.717718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291630, 30.640032, 22.934906>,  <29.985991, 30.607552, 23.116972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291630, 30.640032, 22.934906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.350920, 30.822826, 23.285721>,  <29.386494, 30.932503, 23.496210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.350920, 30.822826, 23.285721>,  <29.291630, 30.640032, 22.934906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350920, 30.822826, 23.285721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583287, 0.756557, -0.295631,
		-0.798627, -0.467743, 0.378696,
		0.148226, 0.456988, 0.877036,
		29.395388, 30.959923, 23.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677542, 30.819149, 23.122847>,  <29.291630, 30.640032, 22.934906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677542, 30.819149, 23.122847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.915836, 31.052151, 23.344036>,  <29.058813, 31.191952, 23.476749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.915836, 31.052151, 23.344036>,  <28.677542, 30.819149, 23.122847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915836, 31.052151, 23.344036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568352, 0.792210, -0.222213,
		-0.567513, -0.181904, 0.803019,
		0.595738, 0.582506, 0.552975,
		29.094559, 31.226902, 23.509928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290993, 31.157764, 23.622404>,  <28.677542, 30.819149, 23.122847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290993, 31.157764, 23.622404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.611256, 31.386433, 23.550694>,  <28.803413, 31.523634, 23.507668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.611256, 31.386433, 23.550694>,  <28.290993, 31.157764, 23.622404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611256, 31.386433, 23.550694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598893, 0.771927, -0.213207,
		0.016504, 0.278073, 0.960418,
		0.800659, 0.571669, -0.179275,
		28.851454, 31.557934, 23.496910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481174, 31.250998, 23.758909>,  <28.290993, 31.157764, 23.622404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481174, 31.250998, 23.758909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.098721, 31.328465, 23.670998>,  <26.869249, 31.374945, 23.618252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.098721, 31.328465, 23.670998>,  <27.481174, 31.250998, 23.758909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098721, 31.328465, 23.670998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291403, -0.552282, 0.781069,
		0.029888, 0.810850, 0.584490,
		-0.956133, 0.193667, -0.219777,
		26.811880, 31.386564, 23.605064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157436, 31.432055, 24.457317>,  <27.481174, 31.250998, 23.758909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157436, 31.432055, 24.457317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.898127, 31.299816, 24.182961>,  <26.742540, 31.220472, 24.018347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.898127, 31.299816, 24.182961>,  <27.157436, 31.432055, 24.457317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898127, 31.299816, 24.182961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257944, -0.752197, 0.606354,
		-0.716383, 0.570005, 0.402356,
		-0.648276, -0.330596, -0.685890,
		26.703644, 31.200638, 23.977194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542894, 31.352657, 24.880489>,  <27.157436, 31.432055, 24.457317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542894, 31.352657, 24.880489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.484957, 31.121277, 24.559387>,  <26.450193, 30.982449, 24.366726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.484957, 31.121277, 24.559387>,  <26.542894, 31.352657, 24.880489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484957, 31.121277, 24.559387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243500, -0.765521, 0.595555,
		-0.959024, 0.281735, -0.029970,
		-0.144846, -0.578449, -0.802755,
		26.441504, 30.947742, 24.318560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978586, 31.098152, 25.048571>,  <26.542894, 31.352657, 24.880489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978586, 31.098152, 25.048571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144775, 30.850418, 24.782097>,  <26.244490, 30.701777, 24.622213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.144775, 30.850418, 24.782097>,  <25.978586, 31.098152, 25.048571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144775, 30.850418, 24.782097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140176, -0.767236, 0.625860,
		-0.898739, -0.166645, -0.405582,
		0.415473, -0.619338, -0.666185,
		26.269417, 30.664618, 24.582241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547279, 30.381523, 25.080292>,  <25.978586, 31.098152, 25.048571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547279, 30.381523, 25.080292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.901649, 30.297222, 24.915020>,  <26.114271, 30.246641, 24.815857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.901649, 30.297222, 24.915020>,  <25.547279, 30.381523, 25.080292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901649, 30.297222, 24.915020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027866, -0.865016, 0.500970,
		-0.462986, -0.455336, -0.760469,
		0.885927, -0.210751, -0.413178,
		26.167427, 30.233997, 24.791067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501574, 29.629688, 24.753685>,  <25.547279, 30.381523, 25.080292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501574, 29.629688, 24.753685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.888184, 29.727283, 24.785435>,  <26.120150, 29.785841, 24.804485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.888184, 29.727283, 24.785435>,  <25.501574, 29.629688, 24.753685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888184, 29.727283, 24.785435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197821, -0.905645, 0.375065,
		0.163396, -0.346807, -0.923594,
		0.966524, 0.243990, 0.079374,
		26.178141, 29.800480, 24.809246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921207, 29.077406, 24.457432>,  <25.501574, 29.629688, 24.753685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921207, 29.077406, 24.457432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.138073, 29.275574, 24.728909>,  <26.268192, 29.394474, 24.891794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.138073, 29.275574, 24.728909>,  <25.921207, 29.077406, 24.457432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138073, 29.275574, 24.728909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255654, -0.866666, 0.428406,
		0.800439, -0.058756, -0.596528,
		0.542162, 0.495417, 0.678692,
		26.300722, 29.424198, 24.932516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526402, 28.644434, 24.603636>,  <25.921207, 29.077406, 24.457432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526402, 28.644434, 24.603636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.538548, 28.899506, 24.911518>,  <26.545835, 29.052549, 25.096247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.538548, 28.899506, 24.911518>,  <26.526402, 28.644434, 24.603636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538548, 28.899506, 24.911518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319061, -0.735957, 0.597133,
		0.947248, 0.227450, -0.225807,
		0.030366, 0.637679, 0.769704,
		26.547657, 29.090809, 25.142429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104237, 28.458797, 24.986389>,  <26.526402, 28.644434, 24.603636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104237, 28.458797, 24.986389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.878393, 28.679241, 25.232151>,  <26.742887, 28.811506, 25.379608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.878393, 28.679241, 25.232151>,  <27.104237, 28.458797, 24.986389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878393, 28.679241, 25.232151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168774, -0.651591, 0.739557,
		0.807917, 0.521258, 0.274882,
		-0.564610, 0.551108, 0.614406,
		26.709009, 28.844574, 25.416473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439514, 28.626852, 25.538221>,  <27.104237, 28.458797, 24.986389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439514, 28.626852, 25.538221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.065857, 28.682487, 25.669693>,  <26.841663, 28.715870, 25.748577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.065857, 28.682487, 25.669693>,  <27.439514, 28.626852, 25.538221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065857, 28.682487, 25.669693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143649, -0.696518, 0.703013,
		0.326714, 0.703929, 0.630667,
		-0.934143, 0.139090, 0.328681,
		26.785614, 28.724215, 25.768297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495329, 28.581406, 26.237978>,  <27.439514, 28.626852, 25.538221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495329, 28.581406, 26.237978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.111937, 28.492764, 26.166191>,  <26.881901, 28.439579, 26.123119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.111937, 28.492764, 26.166191>,  <27.495329, 28.581406, 26.237978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111937, 28.492764, 26.166191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077411, -0.807920, 0.584185,
		-0.274454, 0.546036, 0.791529,
		-0.958479, -0.221606, -0.179468,
		26.824392, 28.426281, 26.112350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167681, 28.514765, 26.942551>,  <27.495329, 28.581406, 26.237978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167681, 28.514765, 26.942551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.967026, 28.312603, 26.661716>,  <26.846634, 28.191305, 26.493216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.967026, 28.312603, 26.661716>,  <27.167681, 28.514765, 26.942551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967026, 28.312603, 26.661716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166238, -0.852779, 0.495108,
		-0.848955, 0.131651, 0.511803,
		-0.501637, -0.505406, -0.702086,
		26.816534, 28.160980, 26.451090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752033, 28.177841, 27.346642>,  <27.167681, 28.514765, 26.942551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752033, 28.177841, 27.346642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730059, 27.958992, 27.012543>,  <26.716873, 27.827682, 26.812084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.730059, 27.958992, 27.012543>,  <26.752033, 28.177841, 27.346642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730059, 27.958992, 27.012543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078966, -0.836270, 0.542602,
		-0.995362, -0.036147, 0.089147,
		-0.054938, -0.547125, -0.835246,
		26.713577, 27.794855, 26.761969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117601, 27.684166, 27.387831>,  <26.752033, 28.177841, 27.346642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117601, 27.684166, 27.387831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.376968, 27.521328, 27.130512>,  <26.532589, 27.423626, 26.976122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.376968, 27.521328, 27.130512>,  <26.117601, 27.684166, 27.387831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376968, 27.521328, 27.130512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017133, -0.836994, 0.546944,
		-0.761091, -0.365670, -0.535747,
		0.648418, -0.407095, -0.643294,
		26.571493, 27.399199, 26.937525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951977, 26.824385, 27.392599>,  <26.117601, 27.684166, 27.387831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951977, 26.824385, 27.392599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.284554, 26.885822, 27.179016>,  <26.484100, 26.922686, 27.050867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.284554, 26.885822, 27.179016>,  <25.951977, 26.824385, 27.392599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284554, 26.885822, 27.179016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367329, -0.872993, 0.320864,
		-0.416857, -0.462918, -0.782264,
		0.831444, 0.153594, -0.533957,
		26.533987, 26.931900, 27.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050444, 26.207497, 26.900526>,  <25.951977, 26.824385, 27.392599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050444, 26.207497, 26.900526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.389685, 26.398155, 26.993073>,  <26.593229, 26.512550, 27.048599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.389685, 26.398155, 26.993073>,  <26.050444, 26.207497, 26.900526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389685, 26.398155, 26.993073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435286, -0.875782, 0.208644,
		0.302075, -0.076241, -0.950231,
		0.848102, 0.476648, 0.231365,
		26.644115, 26.541149, 27.062483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624636, 25.718716, 26.777704>,  <26.050444, 26.207497, 26.900526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624636, 25.718716, 26.777704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.821554, 25.996067, 26.988178>,  <26.939705, 26.162477, 27.114462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.821554, 25.996067, 26.988178>,  <26.624636, 25.718716, 26.777704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821554, 25.996067, 26.988178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621044, -0.703362, 0.345812,
		0.609877, 0.156542, -0.776881,
		0.492295, 0.693381, 0.526184,
		26.969242, 26.204081, 27.146034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276171, 25.398298, 26.871557>,  <26.624636, 25.718716, 26.777704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276171, 25.398298, 26.871557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.271526, 25.680862, 27.154640>,  <27.268740, 25.850401, 27.324490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.271526, 25.680862, 27.154640>,  <27.276171, 25.398298, 26.871557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271526, 25.680862, 27.154640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582640, -0.570414, 0.578929,
		0.812648, 0.419061, -0.404958,
		-0.011613, 0.706410, 0.707707,
		27.268042, 25.892786, 27.366953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.930901, 25.309160, 27.176632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.723127, 25.521896, 27.444164>,  <27.598463, 25.649538, 27.604683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.723127, 25.521896, 27.444164>,  <27.930901, 25.309160, 27.176632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723127, 25.521896, 27.444164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290466, -0.626204, 0.723532,
		0.803629, 0.570098, 0.170789,
		-0.519433, 0.531842, 0.668830,
		27.567297, 25.681450, 27.644814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359598, 25.463676, 27.752449>,  <27.930901, 25.309160, 27.176632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359598, 25.463676, 27.752449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.995415, 25.499348, 27.913998>,  <27.776905, 25.520750, 28.010927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.995415, 25.499348, 27.913998>,  <28.359598, 25.463676, 27.752449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995415, 25.499348, 27.913998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275484, -0.597597, 0.752985,
		0.308501, 0.796822, 0.519520,
		-0.910459, 0.089177, 0.403871,
		27.722277, 25.526100, 28.035158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561035, 25.509853, 28.407879>,  <28.359598, 25.463676, 27.752449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561035, 25.509853, 28.407879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.177885, 25.395626, 28.395729>,  <27.947994, 25.327089, 28.388439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.177885, 25.395626, 28.395729>,  <28.561035, 25.509853, 28.407879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177885, 25.395626, 28.395729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206080, -0.757179, 0.619847,
		-0.200008, 0.587477, 0.784135,
		-0.957877, -0.285569, -0.030375,
		27.890522, 25.309956, 28.386616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366426, 25.468166, 29.092808>,  <28.561035, 25.509853, 28.407879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366426, 25.468166, 29.092808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.127361, 25.249905, 28.857841>,  <27.983921, 25.118948, 28.716862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.127361, 25.249905, 28.857841>,  <28.366426, 25.468166, 29.092808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127361, 25.249905, 28.857841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157651, -0.798348, 0.581194,
		-0.786094, 0.254752, 0.563167,
		-0.597664, -0.545657, -0.587415,
		27.948063, 25.086208, 28.681618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015629, 25.099125, 29.545109>,  <28.366426, 25.468166, 29.092808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015629, 25.099125, 29.545109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994907, 24.887791, 29.206127>,  <27.982475, 24.760990, 29.002739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994907, 24.887791, 29.206127>,  <28.015629, 25.099125, 29.545109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994907, 24.887791, 29.206127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094477, -0.847380, 0.522513,
		-0.994178, -0.052998, 0.093812,
		-0.051802, -0.528334, -0.847455,
		27.979366, 24.729290, 28.951891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738327, 24.564278, 29.769968>,  <28.015629, 25.099125, 29.545109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738327, 24.564278, 29.769968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.829748, 24.429741, 29.404533>,  <27.884602, 24.349020, 29.185272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.829748, 24.429741, 29.404533>,  <27.738327, 24.564278, 29.769968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829748, 24.429741, 29.404533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070538, -0.930237, 0.360116,
		-0.970973, -0.146749, -0.188883,
		0.228553, -0.336340, -0.913586,
		27.898314, 24.328838, 29.130457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360495, 23.943787, 29.658564>,  <27.738327, 24.564278, 29.769968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360495, 23.943787, 29.658564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663347, 23.939522, 29.397293>,  <27.845058, 23.936962, 29.240530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663347, 23.939522, 29.397293>,  <27.360495, 23.943787, 29.658564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663347, 23.939522, 29.397293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203717, -0.946153, 0.251584,
		-0.620687, -0.323546, -0.714190,
		0.757131, -0.010662, -0.653176,
		27.890486, 23.936323, 29.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279621, 23.270304, 29.273630>,  <27.360495, 23.943787, 29.658564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279621, 23.270304, 29.273630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665543, 23.375137, 29.265011>,  <27.897095, 23.438038, 29.259840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.665543, 23.375137, 29.265011>,  <27.279621, 23.270304, 29.273630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665543, 23.375137, 29.265011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252845, -0.902022, 0.349893,
		0.072267, -0.343026, -0.936542,
		0.964804, 0.262086, -0.021546,
		27.954985, 23.453764, 29.258547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623837, 22.704355, 29.138948>,  <27.279621, 23.270304, 29.273630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623837, 22.704355, 29.138948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930004, 22.910759, 29.292763>,  <28.113705, 23.034601, 29.385052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.930004, 22.910759, 29.292763>,  <27.623837, 22.704355, 29.138948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930004, 22.910759, 29.292763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417873, -0.852956, 0.312807,
		0.489405, -0.078740, -0.868495,
		0.765418, 0.516010, 0.384537,
		28.159630, 23.065561, 29.408123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211393, 22.243973, 29.042370>,  <27.623837, 22.704355, 29.138948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211393, 22.243973, 29.042370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299786, 22.512802, 29.325066>,  <28.352821, 22.674099, 29.494684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.299786, 22.512802, 29.325066>,  <28.211393, 22.243973, 29.042370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299786, 22.512802, 29.325066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550323, -0.684196, 0.478560,
		0.805178, 0.283183, -0.521053,
		0.220982, 0.672074, 0.706742,
		28.366081, 22.714424, 29.537088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866962, 22.129837, 29.036701>,  <28.211393, 22.243973, 29.042370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866962, 22.129837, 29.036701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.787260, 22.329594, 29.373962>,  <28.739439, 22.449448, 29.576319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.787260, 22.329594, 29.373962>,  <28.866962, 22.129837, 29.036701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787260, 22.329594, 29.373962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456516, -0.714033, 0.530801,
		0.867116, 0.490677, -0.085706,
		-0.199255, 0.499393, 0.843151,
		28.727484, 22.479412, 29.626907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536018, 22.039455, 29.381912>,  <28.866962, 22.129837, 29.036701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536018, 22.039455, 29.381912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.276997, 22.163563, 29.660309>,  <29.121584, 22.238028, 29.827347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.276997, 22.163563, 29.660309>,  <29.536018, 22.039455, 29.381912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276997, 22.163563, 29.660309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180686, -0.824787, 0.535798,
		0.740287, 0.472715, 0.478034,
		-0.647556, 0.310270, 0.695992,
		29.082729, 22.256643, 29.869106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945997, 22.172344, 30.041052>,  <29.536018, 22.039455, 29.381912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945997, 22.172344, 30.041052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.565876, 22.110195, 30.148968>,  <29.337803, 22.072906, 30.213717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.565876, 22.110195, 30.148968>,  <29.945997, 22.172344, 30.041052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565876, 22.110195, 30.148968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301668, -0.673747, 0.674583,
		0.076959, 0.722444, 0.687133,
		-0.950302, -0.155371, 0.269789,
		29.280785, 22.063583, 30.229904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893614, 22.374752, 30.751516>,  <29.945997, 22.172344, 30.041052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893614, 22.374752, 30.751516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.575827, 22.142212, 30.681259>,  <29.385155, 22.002687, 30.639105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.575827, 22.142212, 30.681259>,  <29.893614, 22.374752, 30.751516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575827, 22.142212, 30.681259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155318, -0.474101, 0.866663,
		-0.587109, 0.661256, 0.466953,
		-0.794468, -0.581352, -0.175643,
		29.337486, 21.967806, 30.628567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495350, 22.352192, 31.435724>,  <29.893614, 22.374752, 30.751516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495350, 22.352192, 31.435724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.376932, 22.030445, 31.229675>,  <29.305882, 21.837397, 31.106047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.376932, 22.030445, 31.229675>,  <29.495350, 22.352192, 31.435724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376932, 22.030445, 31.229675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059960, -0.553881, 0.830434,
		-0.953290, 0.214960, 0.212204,
		-0.296046, -0.804368, -0.515120,
		29.288118, 21.789135, 31.075140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036734, 22.076769, 32.009003>,  <29.495350, 22.352192, 31.435724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036734, 22.076769, 32.009003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123537, 21.795250, 31.738426>,  <29.175619, 21.626339, 31.576080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.123537, 21.795250, 31.738426>,  <29.036734, 22.076769, 32.009003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123537, 21.795250, 31.738426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143505, -0.662425, 0.735255,
		-0.965563, -0.256631, -0.042754,
		0.217010, -0.703800, -0.676441,
		29.188641, 21.584110, 31.535494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561718, 21.464317, 32.108490>,  <29.036734, 22.076769, 32.009003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561718, 21.464317, 32.108490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.901857, 21.330582, 31.945946>,  <29.105940, 21.250340, 31.848419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.901857, 21.330582, 31.945946>,  <28.561718, 21.464317, 32.108490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901857, 21.330582, 31.945946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066333, -0.697956, 0.713062,
		-0.522025, -0.633306, -0.571327,
		0.850347, -0.334338, -0.406359,
		29.156961, 21.230280, 31.824038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594219, 20.727085, 32.303421>,  <28.561718, 21.464317, 32.108490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594219, 20.727085, 32.303421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969149, 20.821812, 32.201168>,  <29.194105, 20.878647, 32.139816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969149, 20.821812, 32.201168>,  <28.594219, 20.727085, 32.303421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969149, 20.821812, 32.201168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347524, -0.689115, 0.635884,
		-0.025570, -0.684865, -0.728221,
		0.937322, 0.236815, -0.255628,
		29.250345, 20.892857, 32.124481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879986, 20.145170, 32.327831>,  <28.594219, 20.727085, 32.303421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879986, 20.145170, 32.327831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205763, 20.377174, 32.321266>,  <29.401230, 20.516376, 32.317329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205763, 20.377174, 32.321266>,  <28.879986, 20.145170, 32.327831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205763, 20.377174, 32.321266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483862, -0.663284, 0.570905,
		0.320247, -0.472909, -0.820853,
		0.814444, 0.580010, -0.016408,
		29.450096, 20.551178, 32.316345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353569, 19.712524, 32.154961>,  <28.879986, 20.145170, 32.327831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353569, 19.712524, 32.154961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531946, 20.018906, 32.340195>,  <29.638971, 20.202734, 32.451336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531946, 20.018906, 32.340195>,  <29.353569, 19.712524, 32.154961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531946, 20.018906, 32.340195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455258, -0.639559, 0.619439,
		0.770634, -0.065409, -0.633912,
		0.445941, 0.765955, 0.463088,
		29.665728, 20.248692, 32.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027153, 19.581478, 32.125141>,  <29.353569, 19.712524, 32.154961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027153, 19.581478, 32.125141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000914, 19.855122, 32.415710>,  <29.985170, 20.019308, 32.590054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.000914, 19.855122, 32.415710>,  <30.027153, 19.581478, 32.125141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000914, 19.855122, 32.415710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362842, -0.661803, 0.656021,
		0.929539, 0.306610, -0.204811,
		-0.065598, 0.684111, 0.726422,
		29.981234, 20.060354, 32.633636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637197, 19.477615, 32.417854>,  <30.027153, 19.581478, 32.125141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637197, 19.477615, 32.417854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393267, 19.675316, 32.665672>,  <30.246908, 19.793936, 32.814362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.393267, 19.675316, 32.665672>,  <30.637197, 19.477615, 32.417854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393267, 19.675316, 32.665672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138693, -0.703103, 0.697432,
		0.780306, 0.511237, 0.360221,
		-0.609825, 0.494250, 0.619540,
		30.210320, 19.823591, 32.851536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846313, 19.505285, 33.097443>,  <30.637197, 19.477615, 32.417854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846313, 19.505285, 33.097443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447910, 19.515491, 33.131653>,  <30.208868, 19.521614, 33.152180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447910, 19.515491, 33.131653>,  <30.846313, 19.505285, 33.097443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447910, 19.515491, 33.131653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062195, -0.488843, 0.870152,
		0.064009, 0.871999, 0.485305,
		-0.996009, 0.025514, 0.085524,
		30.149107, 19.523146, 33.157310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936110, 19.544094, 33.800373>,  <30.846313, 19.505285, 33.097443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936110, 19.544094, 33.800373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.250223, 19.565395, 34.047108>,  <31.438692, 19.578176, 34.195148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.250223, 19.565395, 34.047108>,  <30.936110, 19.544094, 33.800373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250223, 19.565395, 34.047108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246838, 0.886761, -0.390802,
		-0.567802, 0.459150, 0.683215,
		0.785285, 0.053255, 0.616840,
		31.485809, 19.581371, 34.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816963, 20.246017, 34.204742>,  <30.936110, 19.544094, 33.800373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816963, 20.246017, 34.204742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175070, 20.091740, 34.115536>,  <31.389933, 19.999172, 34.062012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175070, 20.091740, 34.115536>,  <30.816963, 20.246017, 34.204742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175070, 20.091740, 34.115536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245570, 0.844848, -0.475318,
		0.371747, 0.370769, 0.851079,
		0.895265, -0.385697, -0.223020,
		31.443649, 19.976030, 34.048630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193409, 20.779400, 34.287987>,  <30.816963, 20.246017, 34.204742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193409, 20.779400, 34.287987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447809, 20.551716, 34.079563>,  <31.600451, 20.415106, 33.954510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.447809, 20.551716, 34.079563>,  <31.193409, 20.779400, 34.287987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447809, 20.551716, 34.079563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344602, 0.813649, -0.468215,
		0.690471, 0.118228, 0.713633,
		0.636002, -0.569208, -0.521060,
		31.638611, 20.380953, 33.923244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816681, 21.222212, 34.231400>,  <31.193409, 20.779400, 34.287987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816681, 21.222212, 34.231400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878771, 20.933559, 33.961540>,  <31.916025, 20.760368, 33.799625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878771, 20.933559, 33.961540>,  <31.816681, 21.222212, 34.231400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878771, 20.933559, 33.961540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242612, 0.689860, -0.682080,
		0.957625, -0.057804, 0.282158,
		0.155223, -0.721631, -0.674651,
		31.925337, 20.717070, 33.759144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411690, 21.456713, 33.973808>,  <31.816681, 21.222212, 34.231400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411690, 21.456713, 33.973808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256302, 21.187790, 33.721748>,  <32.163071, 21.026436, 33.570511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256302, 21.187790, 33.721748>,  <32.411690, 21.456713, 33.973808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256302, 21.187790, 33.721748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058218, 0.664589, -0.744938,
		0.919621, -0.326071, -0.219031,
		-0.388469, -0.672309, -0.630153,
		32.139763, 20.986097, 33.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825748, 21.378874, 33.435066>,  <32.411690, 21.456713, 33.973808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825748, 21.378874, 33.435066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482159, 21.250874, 33.275188>,  <32.276005, 21.174072, 33.179260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482159, 21.250874, 33.275188>,  <32.825748, 21.378874, 33.435066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482159, 21.250874, 33.275188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164454, 0.566844, -0.807244,
		0.484884, -0.759136, -0.434280,
		-0.858978, -0.320000, -0.399697,
		32.224464, 21.154873, 33.155281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962635, 21.217051, 32.764660>,  <32.825748, 21.378874, 33.435066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962635, 21.217051, 32.764660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568272, 21.282532, 32.778473>,  <32.331654, 21.321821, 32.786762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568272, 21.282532, 32.778473>,  <32.962635, 21.217051, 32.764660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568272, 21.282532, 32.778473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091646, 0.701127, -0.707123,
		-0.139973, -0.693990, -0.706247,
		-0.985905, 0.163703, 0.034537,
		32.272499, 21.331642, 32.788834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749153, 21.197416, 32.090588>,  <32.962635, 21.217051, 32.764660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749153, 21.197416, 32.090588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447758, 21.397102, 32.261723>,  <32.266922, 21.516914, 32.364403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.447758, 21.397102, 32.261723>,  <32.749153, 21.197416, 32.090588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447758, 21.397102, 32.261723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002683, 0.648396, -0.761299,
		-0.657457, -0.574777, -0.487218,
		-0.753487, 0.499215, 0.427835,
		32.221710, 21.546867, 32.390072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208576, 21.323065, 31.601017>,  <32.749153, 21.197416, 32.090588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208576, 21.323065, 31.601017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098759, 21.577770, 31.889229>,  <32.032867, 21.730593, 32.062157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098759, 21.577770, 31.889229>,  <32.208576, 21.323065, 31.601017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098759, 21.577770, 31.889229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342145, 0.635594, -0.692067,
		-0.898646, -0.436526, 0.043369,
		-0.274540, 0.636762, 0.720529,
		32.016396, 21.768799, 32.105389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546568, 21.505121, 31.418051>,  <32.208576, 21.323065, 31.601017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546568, 21.505121, 31.418051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676659, 21.796463, 31.659290>,  <31.754713, 21.971268, 31.804033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676659, 21.796463, 31.659290>,  <31.546568, 21.505121, 31.418051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676659, 21.796463, 31.659290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343549, 0.685199, -0.642243,
		-0.881022, 0.001683, 0.473072,
		0.325229, 0.728354, 0.603097,
		31.774227, 22.014969, 31.840219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907324, 22.028822, 31.353542>,  <31.546568, 21.505121, 31.418051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907324, 22.028822, 31.353542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188776, 22.248062, 31.534424>,  <31.357647, 22.379606, 31.642954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188776, 22.248062, 31.534424>,  <30.907324, 22.028822, 31.353542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188776, 22.248062, 31.534424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376971, 0.827401, -0.416294,
		-0.602327, 0.122448, 0.788802,
		0.703630, 0.548101, 0.452206,
		31.399864, 22.412493, 31.670086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619608, 22.514696, 31.834822>,  <30.907324, 22.028822, 31.353542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619608, 22.514696, 31.834822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958057, 22.671356, 31.690220>,  <31.161127, 22.765352, 31.603458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958057, 22.671356, 31.690220>,  <30.619608, 22.514696, 31.834822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958057, 22.671356, 31.690220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507185, 0.800134, -0.320234,
		0.163834, 0.454308, 0.875650,
		0.846122, 0.391651, -0.361507,
		31.211893, 22.788851, 31.581768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579243, 23.227787, 31.828098>,  <30.619608, 22.514696, 31.834822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579243, 23.227787, 31.828098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888706, 23.188820, 31.577671>,  <31.074385, 23.165440, 31.427414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888706, 23.188820, 31.577671>,  <30.579243, 23.227787, 31.828098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888706, 23.188820, 31.577671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393224, 0.700966, -0.594997,
		0.496816, 0.706510, 0.504001,
		0.773659, -0.097419, -0.626068,
		31.120804, 23.159594, 31.389851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631397, 23.870243, 31.578655>,  <30.579243, 23.227787, 31.828098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631397, 23.870243, 31.578655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.845860, 23.674690, 31.303402>,  <30.974537, 23.557358, 31.138250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.845860, 23.674690, 31.303402>,  <30.631397, 23.870243, 31.578655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845860, 23.674690, 31.303402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374034, 0.593217, -0.712876,
		0.756727, 0.639599, 0.135198,
		0.536156, -0.488883, -0.688135,
		31.006706, 23.528025, 31.096962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959915, 24.403605, 31.203341>,  <30.631397, 23.870243, 31.578655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959915, 24.403605, 31.203341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978638, 24.070595, 30.982536>,  <30.989872, 23.870789, 30.850054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978638, 24.070595, 30.982536>,  <30.959915, 24.403605, 31.203341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978638, 24.070595, 30.982536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137509, 0.541983, -0.829063,
		0.989394, 0.114713, -0.089111,
		0.046807, -0.832524, -0.552009,
		30.992680, 23.820837, 30.816935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400166, 24.513029, 30.594971>,  <30.959915, 24.403605, 31.203341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400166, 24.513029, 30.594971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165642, 24.209007, 30.482861>,  <31.024927, 24.026594, 30.415594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165642, 24.209007, 30.482861>,  <31.400166, 24.513029, 30.594971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165642, 24.209007, 30.482861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111801, 0.418594, -0.901266,
		0.802334, -0.497087, -0.330401,
		-0.586311, -0.760055, -0.280277,
		30.989748, 23.980991, 30.398777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651442, 24.376245, 29.967207>,  <31.400166, 24.513029, 30.594971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651442, 24.376245, 29.967207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306885, 24.174088, 29.946888>,  <31.100151, 24.052794, 29.934696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.306885, 24.174088, 29.946888>,  <31.651442, 24.376245, 29.967207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306885, 24.174088, 29.946888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115334, 0.292005, -0.949437,
		0.494674, -0.811979, -0.309820,
		-0.861392, -0.505395, -0.050798,
		31.048468, 24.022469, 29.931648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698645, 23.852322, 29.440033>,  <31.651442, 24.376245, 29.967207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698645, 23.852322, 29.440033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312263, 23.946945, 29.481930>,  <31.080435, 24.003719, 29.507069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312263, 23.946945, 29.481930>,  <31.698645, 23.852322, 29.440033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312263, 23.946945, 29.481930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000538, 0.403026, -0.915188,
		-0.258711, -0.884087, -0.389177,
		-0.965955, 0.236560, 0.104743,
		31.022476, 24.017914, 29.513353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370014, 23.627337, 28.833027>,  <31.698645, 23.852322, 29.440033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370014, 23.627337, 28.833027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111238, 23.898914, 28.971882>,  <30.955973, 24.061861, 29.055195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.111238, 23.898914, 28.971882>,  <31.370014, 23.627337, 28.833027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111238, 23.898914, 28.971882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004930, 0.458950, -0.888449,
		-0.762525, -0.573062, -0.300260,
		-0.646941, 0.678944, 0.347135,
		30.917156, 24.102598, 29.076023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787100, 23.568748, 28.421343>,  <31.370014, 23.627337, 28.833027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787100, 23.568748, 28.421343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.801081, 23.932167, 28.587872>,  <30.809469, 24.150217, 28.687788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.801081, 23.932167, 28.587872>,  <30.787100, 23.568748, 28.421343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801081, 23.932167, 28.587872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119229, 0.417392, -0.900871,
		-0.992251, -0.018148, 0.122915,
		0.034955, 0.908545, 0.416322,
		30.811567, 24.204731, 28.712769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525084, 23.863905, 27.940855>,  <30.787100, 23.568748, 28.421343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525084, 23.863905, 27.940855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.599714, 24.195484, 28.151772>,  <30.644493, 24.394432, 28.278322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.599714, 24.195484, 28.151772>,  <30.525084, 23.863905, 27.940855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599714, 24.195484, 28.151772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162659, 0.555373, -0.815539,
		-0.968882, 0.066390, 0.238455,
		0.186575, 0.828947, 0.527292,
		30.655687, 24.444168, 28.309959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.448639, 34.874592, 17.682537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644863, 34.527073, 17.655567>,  <21.762598, 34.318562, 17.639385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644863, 34.527073, 17.655567>,  <21.448639, 34.874592, 17.682537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644863, 34.527073, 17.655567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509197, -0.348583, 0.786898,
		-0.707155, -0.351691, -0.613389,
		0.490561, -0.868794, -0.067423,
		21.792032, 34.266434, 17.635340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966553, 34.441811, 17.638777>,  <21.448639, 34.874592, 17.682537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966553, 34.441811, 17.638777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281755, 34.234821, 17.772202>,  <21.470877, 34.110626, 17.852257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.281755, 34.234821, 17.772202>,  <20.966553, 34.441811, 17.638777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281755, 34.234821, 17.772202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569052, -0.405381, 0.715434,
		-0.235001, -0.753581, -0.613914,
		0.788007, -0.517476, 0.333562,
		21.518158, 34.079578, 17.872271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664927, 33.879200, 17.717175>,  <20.966553, 34.441811, 17.638777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664927, 33.879200, 17.717175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991077, 33.866745, 17.948410>,  <21.186768, 33.859272, 18.087151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991077, 33.866745, 17.948410>,  <20.664927, 33.879200, 17.717175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991077, 33.866745, 17.948410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557455, -0.311650, 0.769492,
		0.156205, -0.949687, -0.271469,
		0.815379, -0.031133, 0.578089,
		21.235691, 33.857407, 18.121838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546141, 33.286510, 18.180290>,  <20.664927, 33.879200, 17.717175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546141, 33.286510, 18.180290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840174, 33.476532, 18.373775>,  <21.016594, 33.590546, 18.489866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.840174, 33.476532, 18.373775>,  <20.546141, 33.286510, 18.180290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.840174, 33.476532, 18.373775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494225, -0.112934, 0.861967,
		0.464110, -0.872679, 0.151768,
		0.735081, 0.475055, 0.483714,
		21.060698, 33.619049, 18.518890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612511, 32.970871, 18.817759>,  <20.546141, 33.286510, 18.180290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612511, 32.970871, 18.817759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.801464, 33.317261, 18.883419>,  <20.914837, 33.525093, 18.922815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.801464, 33.317261, 18.883419>,  <20.612511, 32.970871, 18.817759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801464, 33.317261, 18.883419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394710, 0.041322, 0.917876,
		0.788071, -0.498383, 0.361328,
		0.472385, 0.865972, 0.164152,
		20.943180, 33.577053, 18.932665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074465, 32.894314, 19.459232>,  <20.612511, 32.970871, 18.817759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074465, 32.894314, 19.459232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.975428, 33.280586, 19.427841>,  <20.916006, 33.512348, 19.409006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.975428, 33.280586, 19.427841>,  <21.074465, 32.894314, 19.459232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.975428, 33.280586, 19.427841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168063, 0.036963, 0.985083,
		0.954176, 0.257089, 0.153144,
		-0.247593, 0.965680, -0.078476,
		20.901150, 33.570290, 19.404299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439253, 33.188057, 20.003077>,  <21.074465, 32.894314, 19.459232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439253, 33.188057, 20.003077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137342, 33.435482, 19.915714>,  <20.956196, 33.583935, 19.863297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137342, 33.435482, 19.915714>,  <21.439253, 33.188057, 20.003077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137342, 33.435482, 19.915714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101737, 0.218536, 0.970511,
		0.648048, 0.754737, -0.102014,
		-0.754774, 0.618559, -0.218406,
		20.910910, 33.621048, 19.850193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367918, 33.671848, 20.554754>,  <21.439253, 33.188057, 20.003077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367918, 33.671848, 20.554754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032871, 33.789989, 20.370945>,  <20.831842, 33.860874, 20.260660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.032871, 33.789989, 20.370945>,  <21.367918, 33.671848, 20.554754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032871, 33.789989, 20.370945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298118, 0.457734, 0.837619,
		0.457734, 0.838597, -0.295356,
		-0.837619, 0.295356, -0.459521,
		20.781586, 33.878597, 20.233089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.332449, 34.417812, 20.563271>,  <21.367918, 33.671848, 20.554754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.332449, 34.417812, 20.563271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.961800, 34.268162, 20.548290>,  <20.739410, 34.178371, 20.539303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.961800, 34.268162, 20.548290>,  <21.332449, 34.417812, 20.563271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961800, 34.268162, 20.548290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258535, 0.561656, 0.785940,
		-0.273007, 0.737951, -0.617167,
		-0.926621, -0.374127, -0.037450,
		20.683813, 34.155922, 20.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945545, 34.948017, 20.855742>,  <21.332449, 34.417812, 20.563271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945545, 34.948017, 20.855742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.738255, 34.606365, 20.873238>,  <20.613880, 34.401375, 20.883736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.738255, 34.606365, 20.873238>,  <20.945545, 34.948017, 20.855742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738255, 34.606365, 20.873238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324174, 0.243500, 0.914122,
		-0.791426, 0.459541, -0.403073,
		-0.518224, -0.854125, 0.043741,
		20.582787, 34.350128, 20.886360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.439049, 35.111881, 21.273521>,  <20.945545, 34.948017, 20.855742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.439049, 35.111881, 21.273521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423391, 34.712280, 21.264847>,  <20.413998, 34.472519, 21.259642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.423391, 34.712280, 21.264847>,  <20.439049, 35.111881, 21.273521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423391, 34.712280, 21.264847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395713, -0.004431, 0.918363,
		-0.917539, 0.044531, -0.395143,
		-0.039144, -0.998998, -0.021687,
		20.411648, 34.412582, 21.258341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728245, 34.935989, 21.389248>,  <20.439049, 35.111881, 21.273521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728245, 34.935989, 21.389248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.978664, 34.648651, 21.510601>,  <20.128916, 34.476250, 21.583412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.978664, 34.648651, 21.510601>,  <19.728245, 34.935989, 21.389248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978664, 34.648651, 21.510601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352800, 0.086036, 0.931735,
		-0.695411, -0.690345, -0.199570,
		0.626048, -0.718347, 0.303383,
		20.166479, 34.433147, 21.601616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274834, 34.503357, 21.849375>,  <19.728245, 34.935989, 21.389248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274834, 34.503357, 21.849375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.659275, 34.428688, 21.930798>,  <19.889940, 34.383884, 21.979650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.659275, 34.428688, 21.930798>,  <19.274834, 34.503357, 21.849375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659275, 34.428688, 21.930798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195602, 0.060286, 0.978829,
		-0.194995, -0.980570, 0.021427,
		0.961102, -0.186675, 0.203557,
		19.947605, 34.372684, 21.991865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268307, 34.075638, 22.439882>,  <19.274834, 34.503357, 21.849375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268307, 34.075638, 22.439882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.645428, 34.208920, 22.443996>,  <19.871700, 34.288887, 22.446465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.645428, 34.208920, 22.443996>,  <19.268307, 34.075638, 22.439882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645428, 34.208920, 22.443996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022033, -0.093073, 0.995416,
		0.332630, -0.938251, -0.095091,
		0.942800, 0.333200, 0.010286,
		19.928268, 34.308880, 22.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542879, 33.722225, 22.975336>,  <19.268307, 34.075638, 22.439882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542879, 33.722225, 22.975336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.841558, 33.983166, 22.923378>,  <20.020765, 34.139732, 22.892202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.841558, 33.983166, 22.923378>,  <19.542879, 33.722225, 22.975336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841558, 33.983166, 22.923378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279973, -0.131096, 0.951015,
		0.603371, -0.746489, -0.280531,
		0.746699, 0.652355, -0.129897,
		20.065569, 34.178871, 22.884409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201588, 33.341564, 23.074858>,  <19.542879, 33.722225, 22.975336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201588, 33.341564, 23.074858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.265814, 33.731331, 23.137764>,  <20.304350, 33.965191, 23.175508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.265814, 33.731331, 23.137764>,  <20.201588, 33.341564, 23.074858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265814, 33.731331, 23.137764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485105, -0.216668, 0.847188,
		0.859588, -0.059739, -0.507484,
		0.160565, 0.974416, 0.157265,
		20.313984, 34.023655, 23.184944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902906, 33.447784, 23.252537>,  <20.201588, 33.341564, 23.074858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902906, 33.447784, 23.252537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.772945, 33.809277, 23.364040>,  <20.694969, 34.026173, 23.430943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.772945, 33.809277, 23.364040>,  <20.902906, 33.447784, 23.252537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772945, 33.809277, 23.364040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425380, -0.123611, 0.896533,
		0.844683, 0.409865, -0.344268,
		-0.324903, 0.903732, 0.278761,
		20.675474, 34.080395, 23.447668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.472469, 33.769329, 23.660263>,  <20.902906, 33.447784, 23.252537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.472469, 33.769329, 23.660263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158016, 33.993443, 23.764626>,  <20.969343, 34.127911, 23.827242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.158016, 33.993443, 23.764626>,  <21.472469, 33.769329, 23.660263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158016, 33.993443, 23.764626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343503, 0.045145, 0.938066,
		0.513808, 0.827067, -0.227951,
		-0.786134, 0.560288, 0.260904,
		20.922176, 34.161530, 23.842897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723049, 34.301247, 24.046787>,  <21.472469, 33.769329, 23.660263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723049, 34.301247, 24.046787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338814, 34.306271, 24.157864>,  <21.108273, 34.309284, 24.224510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338814, 34.306271, 24.157864>,  <21.723049, 34.301247, 24.046787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338814, 34.306271, 24.157864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268807, 0.296415, 0.916450,
		-0.070803, 0.954977, -0.288109,
		-0.960588, 0.012558, 0.277692,
		21.050638, 34.310040, 24.241171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.670652, 35.073662, 24.358072>,  <21.723049, 34.301247, 24.046787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.670652, 35.073662, 24.358072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.359282, 34.847763, 24.467697>,  <21.172459, 34.712223, 24.533472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.359282, 34.847763, 24.467697>,  <21.670652, 35.073662, 24.358072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359282, 34.847763, 24.467697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075493, 0.349203, 0.934001,
		-0.623177, 0.747743, -0.229195,
		-0.778429, -0.564746, 0.274064,
		21.125753, 34.678341, 24.549917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090738, 35.546146, 24.608982>,  <21.670652, 35.073662, 24.358072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090738, 35.546146, 24.608982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020266, 35.184628, 24.764988>,  <20.977982, 34.967716, 24.858591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.020266, 35.184628, 24.764988>,  <21.090738, 35.546146, 24.608982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020266, 35.184628, 24.764988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080113, 0.381735, 0.920793,
		-0.981092, 0.193474, 0.005150,
		-0.176184, -0.903796, 0.390016,
		20.967411, 34.913490, 24.881992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337769, 35.780994, 24.455982>,  <21.090738, 35.546146, 24.608982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337769, 35.780994, 24.455982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439554, 36.167057, 24.480396>,  <20.500626, 36.398693, 24.495045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439554, 36.167057, 24.480396>,  <20.337769, 35.780994, 24.455982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439554, 36.167057, 24.480396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283522, -0.014114, -0.958862,
		-0.924588, 0.261300, -0.277234,
		0.254463, 0.965155, 0.061034,
		20.515894, 36.456604, 24.498707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112440, 36.056946, 23.816645>,  <20.337769, 35.780994, 24.455982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112440, 36.056946, 23.816645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362087, 36.351101, 23.922234>,  <20.511875, 36.527596, 23.985586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362087, 36.351101, 23.922234>,  <20.112440, 36.056946, 23.816645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362087, 36.351101, 23.922234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050349, 0.299292, -0.952832,
		-0.779707, 0.607969, 0.149768,
		0.624117, 0.735389, 0.263970,
		20.549322, 36.571716, 24.001425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854073, 36.641041, 23.384380>,  <20.112440, 36.056946, 23.816645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854073, 36.641041, 23.384380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.217852, 36.743198, 23.515636>,  <20.436119, 36.804493, 23.594391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.217852, 36.743198, 23.515636>,  <19.854073, 36.641041, 23.384380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217852, 36.743198, 23.515636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116766, 0.600545, -0.791019,
		-0.399082, 0.757708, 0.516344,
		0.909450, 0.255390, 0.328141,
		20.490686, 36.819817, 23.614079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971010, 37.484741, 23.381742>,  <19.854073, 36.641041, 23.384380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971010, 37.484741, 23.381742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.315458, 37.283428, 23.352955>,  <20.522127, 37.162640, 23.335682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.315458, 37.283428, 23.352955>,  <19.971010, 37.484741, 23.381742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.315458, 37.283428, 23.352955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252446, 0.546151, -0.798743,
		0.441300, 0.669644, 0.597353,
		0.861119, -0.503285, -0.071967,
		20.573793, 37.132442, 23.331364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458588, 37.929390, 23.177834>,  <19.971010, 37.484741, 23.381742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.458588, 37.929390, 23.177834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.680613, 37.609184, 23.087425>,  <20.813828, 37.417061, 23.033180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.680613, 37.609184, 23.087425>,  <20.458588, 37.929390, 23.177834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.680613, 37.609184, 23.087425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359106, 0.475710, -0.802959,
		0.750299, 0.364527, 0.551518,
		0.555063, -0.800512, -0.226021,
		20.847132, 37.369030, 23.019619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175014, 38.140339, 22.949253>,  <20.458588, 37.929390, 23.177834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175014, 38.140339, 22.949253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.148537, 37.772339, 22.794743>,  <21.132650, 37.551537, 22.702036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.148537, 37.772339, 22.794743>,  <21.175014, 38.140339, 22.949253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148537, 37.772339, 22.794743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319143, 0.347269, -0.881789,
		0.945392, -0.181648, 0.270626,
		-0.066196, -0.920004, -0.386277,
		21.128677, 37.496338, 22.678860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.843267, 38.018627, 22.532953>,  <21.175014, 38.140339, 22.949253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.843267, 38.018627, 22.532953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.582703, 37.753326, 22.385574>,  <21.426363, 37.594147, 22.297148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.582703, 37.753326, 22.385574>,  <21.843267, 38.018627, 22.532953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.582703, 37.753326, 22.385574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460630, 0.040159, -0.886683,
		0.602895, -0.747314, 0.279355,
		-0.651412, -0.663256, -0.368447,
		21.387280, 37.554348, 22.275040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.202667, 37.455082, 22.217783>,  <21.843267, 38.018627, 22.532953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.202667, 37.455082, 22.217783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.843281, 37.464390, 22.042412>,  <21.627649, 37.469975, 21.937189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.843281, 37.464390, 22.042412>,  <22.202667, 37.455082, 22.217783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.843281, 37.464390, 22.042412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437149, -0.045281, -0.898248,
		-0.040763, -0.998703, 0.030507,
		-0.898465, 0.023279, -0.438428,
		21.573742, 37.471371, 21.910883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.362213, 37.231190, 21.567669>,  <22.202667, 37.455082, 22.217783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.362213, 37.231190, 21.567669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.976498, 37.312244, 21.499447>,  <21.745070, 37.360878, 21.458513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.976498, 37.312244, 21.499447>,  <22.362213, 37.231190, 21.567669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.976498, 37.312244, 21.499447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170032, -0.020114, -0.985233,
		-0.203076, -0.979047, -0.015060,
		-0.964287, 0.202638, -0.170554,
		21.687212, 37.373035, 21.448280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063131, 36.672100, 21.223495>,  <22.362213, 37.231190, 21.567669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063131, 36.672100, 21.223495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.820854, 36.976898, 21.131844>,  <21.675488, 37.159775, 21.076853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.820854, 36.976898, 21.131844>,  <22.063131, 36.672100, 21.223495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.820854, 36.976898, 21.131844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086183, -0.223441, -0.970900,
		-0.791016, -0.607815, 0.069667,
		-0.605694, 0.761993, -0.229129,
		21.639145, 37.205498, 21.063105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.405525, 36.379765, 20.935482>,  <22.063131, 36.672100, 21.223495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.405525, 36.379765, 20.935482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.446224, 36.761524, 20.823219>,  <21.470644, 36.990582, 20.755861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.446224, 36.761524, 20.823219>,  <21.405525, 36.379765, 20.935482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.446224, 36.761524, 20.823219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034114, -0.285301, -0.957831,
		-0.994225, 0.087882, -0.061587,
		0.101746, 0.954401, -0.280656,
		21.476748, 37.047844, 20.739023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.924433, 36.539860, 20.394333>,  <21.405525, 36.379765, 20.935482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.924433, 36.539860, 20.394333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.188389, 36.836082, 20.343548>,  <21.346764, 37.013817, 20.313078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.188389, 36.836082, 20.343548>,  <20.924433, 36.539860, 20.394333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188389, 36.836082, 20.343548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053010, -0.214440, -0.975298,
		-0.749488, 0.636861, -0.180764,
		0.659892, 0.740557, -0.126960,
		21.386356, 37.058250, 20.305460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686850, 36.910419, 19.798382>,  <20.924433, 36.539860, 20.394333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686850, 36.910419, 19.798382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.075277, 37.005569, 19.806736>,  <21.308334, 37.062660, 19.811749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.075277, 37.005569, 19.806736>,  <20.686850, 36.910419, 19.798382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075277, 37.005569, 19.806736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056138, -0.142411, -0.988214,
		-0.232096, 0.960799, -0.151645,
		0.971072, 0.237873, 0.020884,
		21.366598, 37.076931, 19.813002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834343, 37.176647, 19.116896>,  <20.686850, 36.910419, 19.798382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834343, 37.176647, 19.116896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.212790, 37.123688, 19.235104>,  <21.439857, 37.091911, 19.306028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.212790, 37.123688, 19.235104>,  <20.834343, 37.176647, 19.116896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.212790, 37.123688, 19.235104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241385, -0.319977, -0.916159,
		0.215858, 0.938129, -0.270777,
		0.946118, -0.132399, 0.295520,
		21.496624, 37.083969, 19.323759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.272961, 37.423805, 18.668045>,  <20.834343, 37.176647, 19.116896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.272961, 37.423805, 18.668045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535875, 37.178692, 18.843533>,  <21.693624, 37.031624, 18.948826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535875, 37.178692, 18.843533>,  <21.272961, 37.423805, 18.668045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535875, 37.178692, 18.843533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346620, -0.271110, -0.897972,
		0.669202, 0.742293, 0.034206,
		0.657285, -0.612781, 0.438720,
		21.733061, 36.994858, 18.975149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934748, 37.528259, 18.333206>,  <21.272961, 37.423805, 18.668045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934748, 37.528259, 18.333206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.998320, 37.160347, 18.476730>,  <22.036463, 36.939598, 18.562845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.998320, 37.160347, 18.476730>,  <21.934748, 37.528259, 18.333206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998320, 37.160347, 18.476730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552833, -0.218204, -0.804216,
		0.817996, 0.326177, 0.473805,
		0.158931, -0.919780, 0.358811,
		22.046000, 36.884415, 18.584373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531921, 37.390125, 18.075655>,  <21.934748, 37.528259, 18.333206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531921, 37.390125, 18.075655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.447550, 37.017761, 18.194931>,  <22.396927, 36.794342, 18.266497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.447550, 37.017761, 18.194931>,  <22.531921, 37.390125, 18.075655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447550, 37.017761, 18.194931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580687, -0.364723, -0.727860,
		0.786328, 0.019629, 0.617497,
		-0.210929, -0.930909, 0.298190,
		22.384272, 36.738487, 18.284388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.218960, 37.052425, 18.110210>,  <22.531921, 37.390125, 18.075655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.218960, 37.052425, 18.110210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908234, 36.806816, 18.054298>,  <22.721798, 36.659451, 18.020752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908234, 36.806816, 18.054298>,  <23.218960, 37.052425, 18.110210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908234, 36.806816, 18.054298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493939, -0.456421, -0.740070,
		0.390619, -0.643940, 0.657843,
		-0.776815, -0.614020, -0.139781,
		22.675190, 36.622612, 18.012363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500895, 36.411560, 17.993313>,  <23.218960, 37.052425, 18.110210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500895, 36.411560, 17.993313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.133627, 36.347759, 17.848248>,  <22.913267, 36.309479, 17.761208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.133627, 36.347759, 17.848248>,  <23.500895, 36.411560, 17.993313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.133627, 36.347759, 17.848248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391465, -0.506167, -0.768472,
		-0.060997, -0.847558, 0.527186,
		-0.918169, -0.159501, -0.362664,
		22.858175, 36.299908, 17.739449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410219, 35.656456, 17.826073>,  <23.500895, 36.411560, 17.993313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410219, 35.656456, 17.826073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161615, 35.884258, 17.610893>,  <23.012453, 36.020939, 17.481785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.161615, 35.884258, 17.610893>,  <23.410219, 35.656456, 17.826073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.161615, 35.884258, 17.610893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436040, -0.319005, -0.841490,
		-0.650844, -0.757559, -0.050065,
		-0.621507, 0.569509, -0.537948,
		22.975163, 36.055111, 17.449509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.122210, 35.243465, 17.307156>,  <23.410219, 35.656456, 17.826073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.122210, 35.243465, 17.307156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118273, 35.628494, 17.198814>,  <23.115911, 35.859512, 17.133810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.118273, 35.628494, 17.198814>,  <23.122210, 35.243465, 17.307156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.118273, 35.628494, 17.198814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349502, -0.250473, -0.902835,
		-0.936884, -0.103550, -0.333955,
		-0.009842, 0.962570, -0.270855,
		23.115320, 35.917267, 17.117558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.032564, 27.581343, 25.536514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257156, 27.766808, 25.810669>,  <26.391911, 27.878086, 25.975163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257156, 27.766808, 25.810669>,  <26.032564, 27.581343, 25.536514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257156, 27.766808, 25.810669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444853, 0.867536, -0.222456,
		-0.697744, -0.179992, 0.693366,
		0.561479, 0.463663, 0.685388,
		26.425600, 27.905907, 26.016285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582047, 28.042912, 25.864183>,  <26.032564, 27.581343, 25.536514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582047, 28.042912, 25.864183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950426, 28.184616, 25.929115>,  <26.171453, 28.269638, 25.968075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950426, 28.184616, 25.929115>,  <25.582047, 28.042912, 25.864183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950426, 28.184616, 25.929115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285062, 0.896484, -0.339200,
		-0.265692, 0.266112, 0.926603,
		0.920949, 0.354262, 0.162331,
		26.226711, 28.290895, 25.977814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544086, 28.672224, 26.174749>,  <25.582047, 28.042912, 25.864183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544086, 28.672224, 26.174749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925423, 28.708321, 26.059509>,  <26.154224, 28.729979, 25.990366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925423, 28.708321, 26.059509>,  <25.544086, 28.672224, 26.174749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925423, 28.708321, 26.059509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224029, 0.851145, -0.474724,
		0.202376, 0.517115, 0.831646,
		0.953339, 0.090240, -0.288100,
		26.211424, 28.735394, 25.973080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816401, 29.435356, 26.127600>,  <25.544086, 28.672224, 26.174749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816401, 29.435356, 26.127600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130194, 29.278301, 25.935593>,  <26.318470, 29.184069, 25.820389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130194, 29.278301, 25.935593>,  <25.816401, 29.435356, 26.127600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130194, 29.278301, 25.935593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003005, 0.776437, -0.630188,
		0.620141, 0.492930, 0.610283,
		0.784485, -0.392639, -0.480019,
		26.365540, 29.160509, 25.791588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459101, 29.938728, 26.090626>,  <25.816401, 29.435356, 26.127600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459101, 29.938728, 26.090626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472673, 29.673168, 25.791805>,  <26.480818, 29.513832, 25.612513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472673, 29.673168, 25.791805>,  <26.459101, 29.938728, 26.090626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472673, 29.673168, 25.791805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008943, 0.747250, -0.664483,
		0.999384, 0.029229, 0.019419,
		0.033933, -0.663900, -0.747051,
		26.482853, 29.473999, 25.567690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139681, 30.130655, 25.630375>,  <26.459101, 29.938728, 26.090626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139681, 30.130655, 25.630375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878155, 29.920769, 25.412312>,  <26.721239, 29.794836, 25.281473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878155, 29.920769, 25.412312>,  <27.139681, 30.130655, 25.630375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878155, 29.920769, 25.412312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220732, 0.556882, -0.800725,
		0.723744, -0.643858, -0.248274,
		-0.653813, -0.524718, -0.545160,
		26.682011, 29.763353, 25.248764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424416, 29.953384, 24.992460>,  <27.139681, 30.130655, 25.630375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424416, 29.953384, 24.992460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031879, 29.916103, 24.925186>,  <26.796358, 29.893734, 24.884821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031879, 29.916103, 24.925186>,  <27.424416, 29.953384, 24.992460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031879, 29.916103, 24.925186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065832, 0.658962, -0.749290,
		0.180664, -0.746379, -0.640530,
		-0.981339, -0.093202, -0.168187,
		26.737478, 29.888144, 24.874729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298948, 29.997881, 24.229069>,  <27.424416, 29.953384, 24.992460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298948, 29.997881, 24.229069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942793, 30.093075, 24.384281>,  <26.729099, 30.150190, 24.477409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942793, 30.093075, 24.384281>,  <27.298948, 29.997881, 24.229069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942793, 30.093075, 24.384281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115893, 0.705835, -0.698832,
		-0.440198, -0.667203, -0.600888,
		-0.890390, 0.237985, 0.388031,
		26.675676, 30.164471, 24.500690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808815, 29.958252, 23.657167>,  <27.298948, 29.997881, 24.229069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808815, 29.958252, 23.657167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641050, 30.188477, 23.937973>,  <26.540392, 30.326612, 24.106457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641050, 30.188477, 23.937973>,  <26.808815, 29.958252, 23.657167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641050, 30.188477, 23.937973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117449, 0.732412, -0.670655,
		-0.900167, -0.363730, -0.239581,
		-0.419410, 0.575564, 0.702013,
		26.515228, 30.361145, 24.148577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122353, 30.205183, 23.311199>,  <26.808815, 29.958252, 23.657167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122353, 30.205183, 23.311199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236858, 30.443821, 23.611099>,  <26.305563, 30.587004, 23.791040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236858, 30.443821, 23.611099>,  <26.122353, 30.205183, 23.311199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236858, 30.443821, 23.611099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056701, 0.791676, -0.608304,
		-0.956471, 0.131624, 0.260457,
		0.286266, 0.596593, 0.749752,
		26.322739, 30.622799, 23.836025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743761, 30.749441, 23.177828>,  <26.122353, 30.205183, 23.311199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743761, 30.749441, 23.177828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039438, 30.883308, 23.411610>,  <26.216845, 30.963629, 23.551880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039438, 30.883308, 23.411610>,  <25.743761, 30.749441, 23.177828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039438, 30.883308, 23.411610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090478, 0.909278, -0.406235,
		-0.667387, 0.247406, 0.702413,
		0.739194, 0.334669, 0.584456,
		26.261196, 30.983709, 23.586946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521826, 31.405935, 23.444656>,  <25.743761, 30.749441, 23.177828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521826, 31.405935, 23.444656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921669, 31.395679, 23.440102>,  <26.161575, 31.389526, 23.437368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921669, 31.395679, 23.440102>,  <25.521826, 31.405935, 23.444656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921669, 31.395679, 23.440102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019545, 0.927646, -0.372949,
		0.020127, 0.372580, 0.927782,
		0.999606, -0.025639, -0.011389,
		26.221550, 31.387987, 23.436686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770195, 32.040478, 23.701519>,  <25.521826, 31.405935, 23.444656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770195, 32.040478, 23.701519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052744, 31.894058, 23.459183>,  <26.222273, 31.806206, 23.313782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052744, 31.894058, 23.459183>,  <25.770195, 32.040478, 23.701519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052744, 31.894058, 23.459183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116598, 0.904382, -0.410486,
		0.698169, 0.219317, 0.681513,
		0.706374, -0.366052, -0.605839,
		26.264656, 31.784243, 23.277431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669979, 32.742546, 24.031662>,  <25.770195, 32.040478, 23.701519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669979, 32.742546, 24.031662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020338, 32.573090, 24.124039>,  <26.230553, 32.471416, 24.179464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020338, 32.573090, 24.124039>,  <25.669979, 32.742546, 24.031662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020338, 32.573090, 24.124039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301180, 0.853984, 0.424266,
		-0.376957, -0.302058, 0.875594,
		0.875896, -0.423641, 0.230941,
		26.283108, 32.445999, 24.193321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851398, 33.438530, 24.031811>,  <25.669979, 32.742546, 24.031662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851398, 33.438530, 24.031811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621946, 33.545589, 24.341473>,  <25.484276, 33.609825, 24.527269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621946, 33.545589, 24.341473>,  <25.851398, 33.438530, 24.031811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621946, 33.545589, 24.341473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718085, -0.290387, 0.632478,
		0.394085, 0.918717, -0.025619,
		-0.573629, 0.267647, 0.774154,
		25.449858, 33.625885, 24.573719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276434, 33.785992, 24.462688>,  <25.851398, 33.438530, 24.031811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276434, 33.785992, 24.462688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957708, 33.661152, 24.669640>,  <25.766474, 33.586246, 24.793810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957708, 33.661152, 24.669640>,  <26.276434, 33.785992, 24.462688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957708, 33.661152, 24.669640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597503, -0.279616, 0.751535,
		-0.089888, 0.907969, 0.409283,
		-0.796813, -0.312102, 0.517380,
		25.718664, 33.567520, 24.824854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351805, 34.000114, 25.173660>,  <26.276434, 33.785992, 24.462688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351805, 34.000114, 25.173660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117846, 33.676292, 25.153603>,  <25.977470, 33.481998, 25.141567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117846, 33.676292, 25.153603>,  <26.351805, 34.000114, 25.173660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117846, 33.676292, 25.153603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489017, -0.401285, 0.774488,
		-0.647113, 0.428476, 0.630598,
		-0.584899, -0.809554, -0.050145,
		25.942375, 33.433426, 25.138559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130892, 33.787483, 25.922516>,  <26.351805, 34.000114, 25.173660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130892, 33.787483, 25.922516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072828, 33.459835, 25.700535>,  <26.037991, 33.263245, 25.567347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072828, 33.459835, 25.700535>,  <26.130892, 33.787483, 25.922516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072828, 33.459835, 25.700535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325458, -0.569210, 0.755035,
		-0.934348, -0.071012, 0.349216,
		-0.145160, -0.819120, -0.554952,
		26.029280, 33.214100, 25.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713636, 33.328568, 26.390951>,  <26.130892, 33.787483, 25.922516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713636, 33.328568, 26.390951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839237, 33.076218, 26.107147>,  <25.914597, 32.924809, 25.936865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839237, 33.076218, 26.107147>,  <25.713636, 33.328568, 26.390951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839237, 33.076218, 26.107147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243898, -0.668627, 0.702461,
		-0.917560, -0.393621, -0.056081,
		0.314001, -0.630872, -0.709509,
		25.933437, 32.886955, 25.894295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440931, 32.646759, 26.579147>,  <25.713636, 33.328568, 26.390951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440931, 32.646759, 26.579147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734262, 32.597351, 26.311722>,  <25.910261, 32.567707, 26.151266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.734262, 32.597351, 26.311722>,  <25.440931, 32.646759, 26.579147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734262, 32.597351, 26.311722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284999, -0.836937, 0.467239,
		-0.617258, -0.533178, -0.578544,
		0.733327, -0.123522, -0.668562,
		25.954260, 32.560295, 26.111153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436636, 31.934021, 26.433908>,  <25.440931, 32.646759, 26.579147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436636, 31.934021, 26.433908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811808, 32.041901, 26.346687>,  <26.036911, 32.106628, 26.294355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811808, 32.041901, 26.346687>,  <25.436636, 31.934021, 26.433908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811808, 32.041901, 26.346687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344985, -0.790110, 0.506667,
		-0.035637, -0.550443, -0.834111,
		0.937931, 0.269700, -0.218052,
		26.093187, 32.122810, 26.281271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717892, 31.321762, 26.286509>,  <25.436636, 31.934021, 26.433908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717892, 31.321762, 26.286509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023941, 31.576355, 26.325443>,  <26.207571, 31.729111, 26.348804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023941, 31.576355, 26.325443>,  <25.717892, 31.321762, 26.286509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023941, 31.576355, 26.325443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525738, -0.704828, 0.476252,
		0.371732, -0.313218, -0.873905,
		0.765124, 0.636483, 0.097336,
		26.253479, 31.767300, 26.354645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249500, 30.921122, 26.234728>,  <25.717892, 31.321762, 26.286509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249500, 30.921122, 26.234728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398676, 31.246758, 26.412796>,  <26.488180, 31.442139, 26.519636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398676, 31.246758, 26.412796>,  <26.249500, 30.921122, 26.234728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398676, 31.246758, 26.412796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577080, -0.579206, 0.575759,
		0.726565, 0.042177, -0.685802,
		0.372937, 0.814089, 0.445171,
		26.510557, 31.490984, 26.546347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876844, 30.706530, 26.289837>,  <26.249500, 30.921122, 26.234728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876844, 30.706530, 26.289837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839809, 30.986523, 26.573090>,  <26.817589, 31.154518, 26.743042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839809, 30.986523, 26.573090>,  <26.876844, 30.706530, 26.289837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839809, 30.986523, 26.573090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737857, -0.429301, 0.520834,
		0.668577, 0.570721, -0.476741,
		-0.092585, 0.699984, 0.708131,
		26.812035, 31.196518, 26.785528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634066, 30.931480, 26.418612>,  <26.876844, 30.706530, 26.289837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634066, 30.931480, 26.418612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392626, 31.036510, 26.719734>,  <27.247761, 31.099527, 26.900408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392626, 31.036510, 26.719734>,  <27.634066, 30.931480, 26.418612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392626, 31.036510, 26.719734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508871, -0.600004, 0.617290,
		0.613772, 0.755679, 0.228547,
		-0.603602, 0.262574, 0.752808,
		27.211546, 31.115282, 26.945576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060432, 31.267181, 26.958349>,  <27.634066, 30.931480, 26.418612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060432, 31.267181, 26.958349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738874, 31.113052, 27.139580>,  <27.545940, 31.020575, 27.248318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738874, 31.113052, 27.139580>,  <28.060432, 31.267181, 26.958349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738874, 31.113052, 27.139580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594487, -0.544055, 0.592105,
		0.018347, 0.745339, 0.666433,
		-0.803895, -0.385323, 0.453077,
		27.497705, 30.997456, 27.275503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382797, 31.075602, 27.453630>,  <28.060432, 31.267181, 26.958349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382797, 31.075602, 27.453630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029963, 30.895473, 27.508965>,  <27.818262, 30.787395, 27.542166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029963, 30.895473, 27.508965>,  <28.382797, 31.075602, 27.453630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029963, 30.895473, 27.508965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423685, -0.629966, 0.650871,
		-0.205955, 0.632734, 0.746479,
		-0.882085, -0.450322, 0.138335,
		27.765337, 30.760376, 27.550465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200346, 31.028263, 28.244215>,  <28.382797, 31.075602, 27.453630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200346, 31.028263, 28.244215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008083, 30.742447, 28.040882>,  <27.892725, 30.570957, 27.918882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008083, 30.742447, 28.040882>,  <28.200346, 31.028263, 28.244215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008083, 30.742447, 28.040882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304874, -0.679691, 0.667137,
		-0.822204, 0.165687, 0.544544,
		-0.480658, -0.714540, -0.508331,
		27.863886, 30.528086, 27.888382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024954, 31.558081, 28.721672>,  <28.200346, 31.028263, 28.244215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024954, 31.558081, 28.721672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303659, 31.752575, 28.932610>,  <28.470882, 31.869272, 29.059172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303659, 31.752575, 28.932610>,  <28.024954, 31.558081, 28.721672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303659, 31.752575, 28.932610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246265, 0.528338, -0.812535,
		-0.673700, 0.696013, 0.248385,
		0.696766, 0.486236, 0.527344,
		28.512690, 31.898445, 29.090813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065132, 32.115570, 28.320618>,  <28.024954, 31.558081, 28.721672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065132, 32.115570, 28.320618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390802, 32.180420, 28.543629>,  <28.586205, 32.219330, 28.677435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390802, 32.180420, 28.543629>,  <28.065132, 32.115570, 28.320618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390802, 32.180420, 28.543629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368372, 0.597995, -0.711832,
		-0.448802, 0.784932, 0.427151,
		0.814174, 0.162121, 0.557528,
		28.635054, 32.229057, 28.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120869, 32.780697, 28.364388>,  <28.065132, 32.115570, 28.320618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120869, 32.780697, 28.364388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492548, 32.648266, 28.430084>,  <28.715555, 32.568806, 28.469501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492548, 32.648266, 28.430084>,  <28.120869, 32.780697, 28.364388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492548, 32.648266, 28.430084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329409, 0.540443, -0.774217,
		0.167565, 0.773504, 0.611240,
		0.929199, -0.331080, 0.164240,
		28.771307, 32.548943, 28.479357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596067, 33.371391, 28.422274>,  <28.120869, 32.780697, 28.364388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596067, 33.371391, 28.422274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838236, 33.068752, 28.323467>,  <28.983538, 32.887169, 28.264183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838236, 33.068752, 28.323467>,  <28.596067, 33.371391, 28.422274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838236, 33.068752, 28.323467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294859, 0.501491, -0.813366,
		0.739271, 0.419595, 0.526705,
		0.605422, -0.756602, -0.247017,
		29.019863, 32.841770, 28.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096500, 33.760380, 28.059690>,  <28.596067, 33.371391, 28.422274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096500, 33.760380, 28.059690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153313, 33.382030, 27.942966>,  <29.187401, 33.155022, 27.872932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153313, 33.382030, 27.942966>,  <29.096500, 33.760380, 28.059690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153313, 33.382030, 27.942966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304051, 0.322234, -0.896503,
		0.942009, 0.038607, 0.333361,
		0.142031, -0.945872, -0.291809,
		29.195923, 33.098270, 27.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795835, 33.680927, 27.823917>,  <29.096500, 33.760380, 28.059690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795835, 33.680927, 27.823917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586466, 33.390522, 27.645512>,  <29.460844, 33.216278, 27.538467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586466, 33.390522, 27.645512>,  <29.795835, 33.680927, 27.823917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586466, 33.390522, 27.645512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490092, 0.171674, -0.854598,
		0.697021, -0.665905, 0.265956,
		-0.523424, -0.726016, -0.446015,
		29.429440, 33.172718, 27.511707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287579, 33.429173, 27.433830>,  <29.795835, 33.680927, 27.823917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287579, 33.429173, 27.433830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947067, 33.285793, 27.280548>,  <29.742762, 33.199768, 27.188580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947067, 33.285793, 27.280548>,  <30.287579, 33.429173, 27.433830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947067, 33.285793, 27.280548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340475, 0.178351, -0.923183,
		0.399256, -0.916356, -0.029784,
		-0.851276, -0.358445, -0.383204,
		29.691685, 33.178261, 27.165586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502617, 33.026699, 26.809666>,  <30.287579, 33.429173, 27.433830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502617, 33.026699, 26.809666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106056, 33.053226, 26.764549>,  <29.868120, 33.069141, 26.737478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106056, 33.053226, 26.764549>,  <30.502617, 33.026699, 26.809666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106056, 33.053226, 26.764549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114202, 0.017841, -0.993297,
		-0.063862, -0.997639, -0.025262,
		-0.991403, 0.066319, -0.112793,
		29.808636, 33.073120, 26.730711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375410, 32.629993, 26.357042>,  <30.502617, 33.026699, 26.809666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375410, 32.629993, 26.357042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058882, 32.872486, 26.325314>,  <29.868965, 33.017982, 26.306276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058882, 32.872486, 26.325314>,  <30.375410, 32.629993, 26.357042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058882, 32.872486, 26.325314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116766, 0.022500, -0.992905,
		-0.600147, -0.794969, -0.088592,
		-0.791322, 0.606233, -0.079322,
		29.821486, 33.054356, 26.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898956, 32.307987, 25.772165>,  <30.375410, 32.629993, 26.357042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898956, 32.307987, 25.772165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835207, 32.697983, 25.834141>,  <29.796957, 32.931980, 25.871326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835207, 32.697983, 25.834141>,  <29.898956, 32.307987, 25.772165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835207, 32.697983, 25.834141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110753, 0.173612, -0.978566,
		-0.980987, -0.138795, -0.135651,
		-0.159371, 0.974984, 0.154939,
		29.787395, 32.990479, 25.880623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446377, 32.440815, 25.235779>,  <29.898956, 32.307987, 25.772165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446377, 32.440815, 25.235779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593075, 32.797295, 25.342560>,  <29.681093, 33.011181, 25.406628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593075, 32.797295, 25.342560>,  <29.446377, 32.440815, 25.235779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593075, 32.797295, 25.342560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102974, 0.246296, -0.963709,
		-0.924604, 0.380926, -0.001442,
		0.366747, 0.891198, 0.266952,
		29.703098, 33.064655, 25.422646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084558, 33.038052, 24.897058>,  <29.446377, 32.440815, 25.235779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084558, 33.038052, 24.897058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447241, 33.166069, 25.006939>,  <29.664850, 33.242878, 25.072866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447241, 33.166069, 25.006939>,  <29.084558, 33.038052, 24.897058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447241, 33.166069, 25.006939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144155, 0.376927, -0.914957,
		-0.396364, 0.869196, 0.295627,
		0.906706, 0.320039, 0.274699,
		29.719252, 33.262081, 25.089348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.044199, 29.677095, 32.081478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417498, 29.817646, 32.051586>,  <28.641478, 29.901978, 32.033649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417498, 29.817646, 32.051586>,  <28.044199, 29.677095, 32.081478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417498, 29.817646, 32.051586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344235, 0.815220, -0.465745,
		-0.102729, 0.460380, 0.881758,
		0.933246, 0.351378, -0.074732,
		28.697472, 29.923059, 32.029167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988552, 30.409906, 32.358997>,  <28.044199, 29.677095, 32.081478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988552, 30.409906, 32.358997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326208, 30.378716, 32.146832>,  <28.528803, 30.360001, 32.019531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326208, 30.378716, 32.146832>,  <27.988552, 30.409906, 32.358997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326208, 30.378716, 32.146832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181067, 0.889764, -0.418968,
		0.504618, 0.449710, 0.736967,
		0.844141, -0.077978, -0.530419,
		28.579451, 30.355322, 31.987705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257828, 31.073112, 32.330944>,  <27.988552, 30.409906, 32.358997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257828, 31.073112, 32.330944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.463375, 30.917736, 32.024990>,  <28.586704, 30.824511, 31.841417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.463375, 30.917736, 32.024990>,  <28.257828, 31.073112, 32.330944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463375, 30.917736, 32.024990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306212, 0.749827, -0.586510,
		0.801357, 0.535607, 0.266367,
		0.513868, -0.388439, -0.764889,
		28.617535, 30.801205, 31.795523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813633, 31.575354, 31.996658>,  <28.257828, 31.073112, 32.330944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813633, 31.575354, 31.996658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.697582, 31.294033, 31.737061>,  <28.627953, 31.125240, 31.581301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.697582, 31.294033, 31.737061>,  <28.813633, 31.575354, 31.996658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697582, 31.294033, 31.737061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169612, 0.705217, -0.688404,
		0.941838, -0.089646, -0.323890,
		-0.290125, -0.703301, -0.648995,
		28.610544, 31.083042, 31.542362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174192, 31.708857, 31.399250>,  <28.813633, 31.575354, 31.996658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174192, 31.708857, 31.399250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892599, 31.469242, 31.246639>,  <28.723642, 31.325474, 31.155073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892599, 31.469242, 31.246639>,  <29.174192, 31.708857, 31.399250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892599, 31.469242, 31.246639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020855, 0.554403, -0.831987,
		0.709910, -0.577748, -0.402783,
		-0.703983, -0.599036, -0.381528,
		28.681404, 31.289532, 31.132181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461332, 31.561106, 30.843132>,  <29.174192, 31.708857, 31.399250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461332, 31.561106, 30.843132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.093792, 31.428780, 30.757084>,  <28.873268, 31.349384, 30.705456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.093792, 31.428780, 30.757084>,  <29.461332, 31.561106, 30.843132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093792, 31.428780, 30.757084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124924, 0.273249, -0.953797,
		0.374311, -0.903270, -0.209748,
		-0.918850, -0.330814, -0.215120,
		28.818136, 31.329535, 30.692547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519955, 31.255693, 30.179384>,  <29.461332, 31.561106, 30.843132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519955, 31.255693, 30.179384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.129757, 31.341881, 30.197193>,  <28.895638, 31.393593, 30.207878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.129757, 31.341881, 30.197193>,  <29.519955, 31.255693, 30.179384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129757, 31.341881, 30.197193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029539, 0.328777, -0.943946,
		-0.218026, -0.919500, -0.327085,
		-0.975496, 0.215466, 0.044521,
		28.837109, 31.406521, 30.210548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175934, 31.052052, 29.499855>,  <29.519955, 31.255693, 30.179384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175934, 31.052052, 29.499855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.930809, 31.316349, 29.673233>,  <28.783733, 31.474928, 29.777260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.930809, 31.316349, 29.673233>,  <29.175934, 31.052052, 29.499855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930809, 31.316349, 29.673233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141369, 0.447992, -0.882790,
		-0.777480, -0.602261, -0.181127,
		-0.612813, 0.660745, 0.433446,
		28.746965, 31.514572, 29.803267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622103, 31.071886, 28.996960>,  <29.175934, 31.052052, 29.499855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622103, 31.071886, 28.996960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.644068, 31.394451, 29.232479>,  <28.657248, 31.587990, 29.373791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.644068, 31.394451, 29.232479>,  <28.622103, 31.071886, 28.996960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644068, 31.394451, 29.232479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094613, 0.591235, -0.800930,
		-0.993998, -0.011725, 0.108765,
		0.054914, 0.806414, 0.588796,
		28.660542, 31.636375, 29.409119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071762, 30.527678, 28.807575>,  <28.622103, 31.071886, 28.996960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071762, 30.527678, 28.807575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.959583, 30.313377, 28.488998>,  <27.892275, 30.184797, 28.297852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.959583, 30.313377, 28.488998>,  <28.071762, 30.527678, 28.807575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959583, 30.313377, 28.488998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190666, -0.844301, 0.500802,
		-0.940742, -0.011406, 0.338932,
		-0.280448, -0.535748, -0.796444,
		27.875448, 30.152653, 28.250065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550690, 30.093740, 29.028921>,  <28.071762, 30.527678, 28.807575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550690, 30.093740, 29.028921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.692625, 29.917496, 28.699085>,  <27.777786, 29.811749, 28.501183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.692625, 29.917496, 28.699085>,  <27.550690, 30.093740, 29.028921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692625, 29.917496, 28.699085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203795, -0.824323, 0.528166,
		-0.912445, -0.355462, -0.202708,
		0.354840, -0.440611, -0.824591,
		27.799078, 29.785313, 28.451708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304358, 29.438641, 29.082691>,  <27.550690, 30.093740, 29.028921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304358, 29.438641, 29.082691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.598118, 29.387569, 28.816051>,  <27.774374, 29.356928, 28.656069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.598118, 29.387569, 28.816051>,  <27.304358, 29.438641, 29.082691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598118, 29.387569, 28.816051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194622, -0.901287, 0.387046,
		-0.650213, -0.413982, -0.637058,
		0.734402, -0.127676, -0.666598,
		27.818438, 29.349266, 28.616072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184353, 28.847517, 28.549210>,  <27.304358, 29.438641, 29.082691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184353, 28.847517, 28.549210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.577005, 28.923828, 28.549755>,  <27.812597, 28.969614, 28.550081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.577005, 28.923828, 28.549755>,  <27.184353, 28.847517, 28.549210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577005, 28.923828, 28.549755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183439, -0.945794, 0.268000,
		0.052416, -0.262828, -0.963418,
		0.981633, 0.190776, 0.001362,
		27.871494, 28.981060, 28.550163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336206, 28.239407, 28.402653>,  <27.184353, 28.847517, 28.549210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336206, 28.239407, 28.402653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.671503, 28.418873, 28.526623>,  <27.872681, 28.526552, 28.601004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.671503, 28.418873, 28.526623>,  <27.336206, 28.239407, 28.402653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671503, 28.418873, 28.526623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302109, -0.855259, 0.421025,
		0.453965, -0.259289, -0.852458,
		0.838240, 0.448666, 0.309924,
		27.922976, 28.553473, 28.619600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755562, 27.839088, 28.178204>,  <27.336206, 28.239407, 28.402653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755562, 27.839088, 28.178204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.940805, 28.029133, 28.477482>,  <28.051952, 28.143160, 28.657049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.940805, 28.029133, 28.477482>,  <27.755562, 27.839088, 28.178204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940805, 28.029133, 28.477482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347000, -0.873986, 0.340205,
		0.815549, 0.102073, -0.569614,
		0.463109, 0.475111, 0.748198,
		28.079739, 28.171665, 28.701941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354971, 27.473516, 28.260649>,  <27.755562, 27.839088, 28.178204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354971, 27.473516, 28.260649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.328171, 27.669285, 28.608437>,  <28.312090, 27.786745, 28.817110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.328171, 27.669285, 28.608437>,  <28.354971, 27.473516, 28.260649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328171, 27.669285, 28.608437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265001, -0.831402, 0.488411,
		0.961917, 0.263136, -0.073991,
		-0.067002, 0.489419, 0.869471,
		28.308071, 27.816111, 28.869278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959589, 27.269440, 28.654533>,  <28.354971, 27.473516, 28.260649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959589, 27.269440, 28.654533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.698137, 27.402634, 28.926384>,  <28.541267, 27.482550, 29.089495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.698137, 27.402634, 28.926384>,  <28.959589, 27.269440, 28.654533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698137, 27.402634, 28.926384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318652, -0.693445, 0.646216,
		0.686463, 0.638949, 0.347149,
		-0.653628, 0.332984, 0.679627,
		28.502048, 27.502529, 29.130272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391382, 27.134422, 29.159557>,  <28.959589, 27.269440, 28.654533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391382, 27.134422, 29.159557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.025761, 27.175060, 29.316624>,  <28.806389, 27.199444, 29.410864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.025761, 27.175060, 29.316624>,  <29.391382, 27.134422, 29.159557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025761, 27.175060, 29.316624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227061, -0.674024, 0.702947,
		0.336081, 0.731690, 0.593026,
		-0.914053, 0.101594, 0.392665,
		28.751545, 27.205538, 29.434423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498175, 27.342115, 29.896633>,  <29.391382, 27.134422, 29.159557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498175, 27.342115, 29.896633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127869, 27.192585, 29.873947>,  <28.905685, 27.102867, 29.860336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.127869, 27.192585, 29.873947>,  <29.498175, 27.342115, 29.896633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127869, 27.192585, 29.873947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196913, -0.604728, 0.771705,
		-0.322779, 0.703249, 0.633447,
		-0.925764, -0.373824, -0.056715,
		28.850140, 27.080437, 29.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277767, 27.342520, 30.684938>,  <29.498175, 27.342115, 29.896633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277767, 27.342520, 30.684938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.024082, 27.116516, 30.473831>,  <28.871872, 26.980913, 30.347166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.024082, 27.116516, 30.473831>,  <29.277767, 27.342520, 30.684938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024082, 27.116516, 30.473831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042486, -0.656114, 0.753465,
		-0.771992, 0.500278, 0.392109,
		-0.634211, -0.565010, -0.527770,
		28.833818, 26.947014, 30.315500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711327, 27.162409, 31.137751>,  <29.277767, 27.342520, 30.684938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711327, 27.162409, 31.137751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.724298, 26.882622, 30.852180>,  <28.732082, 26.714750, 30.680838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.724298, 26.882622, 30.852180>,  <28.711327, 27.162409, 31.137751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724298, 26.882622, 30.852180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137302, -0.710649, 0.690019,
		-0.989998, 0.075647, -0.119085,
		0.032430, -0.699468, -0.713928,
		28.734028, 26.672781, 30.638002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183792, 26.618261, 31.490156>,  <28.711327, 27.162409, 31.137751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183792, 26.618261, 31.490156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373632, 26.455418, 31.177998>,  <28.487535, 26.357712, 30.990702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373632, 26.455418, 31.177998>,  <28.183792, 26.618261, 31.490156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373632, 26.455418, 31.177998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017025, -0.882198, 0.470570,
		-0.880037, -0.236619, -0.411759,
		0.474599, -0.407109, -0.780396,
		28.516012, 26.333284, 30.943878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876537, 26.009060, 31.451839>,  <28.183792, 26.618261, 31.490156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876537, 26.009060, 31.451839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220793, 25.944855, 31.258537>,  <28.427345, 25.906332, 31.142555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220793, 25.944855, 31.258537>,  <27.876537, 26.009060, 31.451839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220793, 25.944855, 31.258537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175106, -0.797855, 0.576858,
		-0.478162, -0.581087, -0.658558,
		0.860639, -0.160514, -0.483256,
		28.478985, 25.896700, 31.113560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.672108, 26.071749, 30.226652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374538, 26.144882, 30.483757>,  <33.195995, 26.188763, 30.638020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374538, 26.144882, 30.483757>,  <33.672108, 26.071749, 30.226652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374538, 26.144882, 30.483757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450501, 0.573213, -0.684453,
		-0.493581, -0.798748, -0.344063,
		-0.743927, 0.182833, 0.642764,
		33.151360, 26.199732, 30.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057178, 25.946646, 29.851151>,  <33.672108, 26.071749, 30.226652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057178, 25.946646, 29.851151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981258, 26.182152, 30.165432>,  <32.935707, 26.323456, 30.354000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981258, 26.182152, 30.165432>,  <33.057178, 25.946646, 29.851151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981258, 26.182152, 30.165432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485360, 0.639365, -0.596354,
		-0.853465, -0.494537, 0.164411,
		-0.189800, 0.588765, 0.785704,
		32.924316, 26.358782, 30.401144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336166, 26.091702, 29.783146>,  <33.057178, 25.946646, 29.851151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336166, 26.091702, 29.783146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484306, 26.372715, 30.026222>,  <32.573193, 26.541323, 30.172068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484306, 26.372715, 30.026222>,  <32.336166, 26.091702, 29.783146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484306, 26.372715, 30.026222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580998, 0.685640, -0.438565,
		-0.724763, -0.190643, 0.662098,
		0.370352, 0.702533, 0.607689,
		32.595413, 26.583475, 30.208529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804277, 26.454821, 30.036800>,  <32.336166, 26.091702, 29.783146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804277, 26.454821, 30.036800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129925, 26.685944, 30.059956>,  <32.325314, 26.824617, 30.073849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.129925, 26.685944, 30.059956>,  <31.804277, 26.454821, 30.036800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129925, 26.685944, 30.059956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493843, 0.741345, -0.454453,
		-0.305501, 0.341391, 0.888888,
		0.814118, 0.577806, 0.057888,
		32.374161, 26.859285, 30.077322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534496, 27.081013, 30.225916>,  <31.804277, 26.454821, 30.036800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534496, 27.081013, 30.225916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892748, 27.169907, 30.071793>,  <32.107700, 27.223244, 29.979319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892748, 27.169907, 30.071793>,  <31.534496, 27.081013, 30.225916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892748, 27.169907, 30.071793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377196, 0.838563, -0.393111,
		0.235740, 0.497417, 0.834867,
		0.895628, 0.222236, -0.385307,
		32.161438, 27.236578, 29.956200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697924, 27.812630, 30.401752>,  <31.534496, 27.081013, 30.225916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697924, 27.812630, 30.401752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928198, 27.721531, 30.087627>,  <32.066364, 27.666872, 29.899153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.928198, 27.721531, 30.087627>,  <31.697924, 27.812630, 30.401752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928198, 27.721531, 30.087627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415296, 0.745887, -0.520752,
		0.704354, 0.625927, 0.334814,
		0.575686, -0.227746, -0.785313,
		32.100903, 27.653208, 29.852034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556709, 28.357050, 30.107864>,  <31.697924, 27.812630, 30.401752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556709, 28.357050, 30.107864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759600, 28.152729, 29.830215>,  <31.881334, 28.030136, 29.663626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.759600, 28.152729, 29.830215>,  <31.556709, 28.357050, 30.107864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759600, 28.152729, 29.830215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352007, 0.612376, -0.707875,
		0.786646, 0.603389, 0.130807,
		0.507226, -0.510802, -0.694120,
		31.911768, 27.999489, 29.621979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086178, 28.763241, 29.763126>,  <31.556709, 28.357050, 30.107864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086178, 28.763241, 29.763126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992022, 28.470673, 29.507122>,  <31.935528, 28.295132, 29.353519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992022, 28.470673, 29.507122>,  <32.086178, 28.763241, 29.763126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992022, 28.470673, 29.507122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132968, 0.676560, -0.724283,
		0.962763, -0.085386, -0.256509,
		-0.235388, -0.731421, -0.640013,
		31.921406, 28.251245, 29.315119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466629, 28.904188, 29.236166>,  <32.086178, 28.763241, 29.763126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466629, 28.904188, 29.236166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161308, 28.672493, 29.121723>,  <31.978117, 28.533476, 29.053059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161308, 28.672493, 29.121723>,  <32.466629, 28.904188, 29.236166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161308, 28.672493, 29.121723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103172, 0.546467, -0.831101,
		0.637753, -0.604861, -0.476879,
		-0.763300, -0.579238, -0.286107,
		31.932318, 28.498722, 29.035891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620403, 28.851524, 28.636469>,  <32.466629, 28.904188, 29.236166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620403, 28.851524, 28.636469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245956, 28.711296, 28.647640>,  <32.021286, 28.627159, 28.654343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245956, 28.711296, 28.647640>,  <32.620403, 28.851524, 28.636469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245956, 28.711296, 28.647640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163576, 0.363739, -0.917026,
		0.311325, -0.863014, -0.397848,
		-0.936119, -0.350572, 0.027928,
		31.965120, 28.606125, 28.656019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634571, 28.420530, 28.082550>,  <32.620403, 28.851524, 28.636469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634571, 28.420530, 28.082550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255676, 28.534157, 28.141953>,  <32.028339, 28.602333, 28.177593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.255676, 28.534157, 28.141953>,  <32.634571, 28.420530, 28.082550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255676, 28.534157, 28.141953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081695, 0.234053, -0.968785,
		-0.309957, -0.929799, -0.198497,
		-0.947234, 0.284066, 0.148506,
		31.971506, 28.619377, 28.186504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231552, 28.009329, 27.664560>,  <32.634571, 28.420530, 28.082550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231552, 28.009329, 27.664560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004215, 28.332294, 27.727894>,  <31.867813, 28.526073, 27.765894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004215, 28.332294, 27.727894>,  <32.231552, 28.009329, 27.664560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004215, 28.332294, 27.727894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036801, 0.217185, -0.975436,
		-0.821969, -0.548555, -0.153149,
		-0.568342, 0.807414, 0.158332,
		31.833712, 28.574518, 27.775393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677864, 28.007854, 27.122280>,  <32.231552, 28.009329, 27.664560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677864, 28.007854, 27.122280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673338, 28.379108, 27.271107>,  <31.670622, 28.601862, 27.360403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673338, 28.379108, 27.271107>,  <31.677864, 28.007854, 27.122280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673338, 28.379108, 27.271107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067733, 0.370524, -0.926350,
		-0.997639, -0.035682, 0.058674,
		-0.011314, 0.928137, 0.372066,
		31.669943, 28.657549, 27.382727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293585, 28.406809, 26.707239>,  <31.677864, 28.007854, 27.122280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293585, 28.406809, 26.707239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.461248, 28.709427, 26.908016>,  <31.561846, 28.890999, 27.028482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.461248, 28.709427, 26.908016>,  <31.293585, 28.406809, 26.707239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461248, 28.709427, 26.908016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244756, 0.438225, -0.864901,
		-0.874300, 0.485384, -0.001483,
		0.419159, 0.756546, 0.501940,
		31.586996, 28.936390, 27.058598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650764, 28.313492, 26.362616>,  <31.293585, 28.406809, 26.707239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650764, 28.313492, 26.362616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540115, 28.033058, 26.099720>,  <30.473726, 27.864798, 25.941982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.540115, 28.033058, 26.099720>,  <30.650764, 28.313492, 26.362616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540115, 28.033058, 26.099720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079166, -0.698227, 0.711486,
		-0.957712, 0.144783, 0.248648,
		-0.276624, -0.701083, -0.657238,
		30.457129, 27.822733, 25.902548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094507, 27.860092, 26.729063>,  <30.650764, 28.313492, 26.362616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094507, 27.860092, 26.729063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.242954, 27.638580, 26.430908>,  <30.332024, 27.505674, 26.252016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.242954, 27.638580, 26.430908>,  <30.094507, 27.860092, 26.729063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242954, 27.638580, 26.430908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141832, -0.759488, 0.634871,
		-0.917690, -0.341332, -0.203317,
		0.371118, -0.553778, -0.745387,
		30.354290, 27.472446, 26.207293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676502, 27.326185, 26.712282>,  <30.094507, 27.860092, 26.729063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676502, 27.326185, 26.712282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016552, 27.213722, 26.534187>,  <30.220583, 27.146244, 26.427330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016552, 27.213722, 26.534187>,  <29.676502, 27.326185, 26.712282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016552, 27.213722, 26.534187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062524, -0.785648, 0.615506,
		-0.522854, -0.551096, -0.650321,
		0.850126, -0.281159, -0.445236,
		30.271589, 27.129375, 26.400616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538206, 26.525301, 26.663908>,  <29.676502, 27.326185, 26.712282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538206, 26.525301, 26.663908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.924906, 26.578804, 26.576729>,  <30.156925, 26.610907, 26.524422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.924906, 26.578804, 26.576729>,  <29.538206, 26.525301, 26.663908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924906, 26.578804, 26.576729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221976, -0.862097, 0.455539,
		-0.126962, -0.488772, -0.863124,
		0.966751, 0.133757, -0.217949,
		30.214931, 26.618931, 26.511345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785587, 25.836798, 26.452295>,  <29.538206, 26.525301, 26.663908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785587, 25.836798, 26.452295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.091433, 26.058475, 26.583893>,  <30.274940, 26.191483, 26.662851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.091433, 26.058475, 26.583893>,  <29.785587, 25.836798, 26.452295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091433, 26.058475, 26.583893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369871, -0.795368, 0.480193,
		0.527791, -0.245477, -0.813128,
		0.764612, 0.554194, 0.328993,
		30.320816, 26.224733, 26.682590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472111, 25.334866, 26.444071>,  <29.785587, 25.836798, 26.452295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472111, 25.334866, 26.444071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542866, 25.636761, 26.696762>,  <30.585318, 25.817898, 26.848377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.542866, 25.636761, 26.696762>,  <30.472111, 25.334866, 26.444071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542866, 25.636761, 26.696762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366720, -0.646171, 0.669313,
		0.913361, 0.113275, -0.391077,
		0.176886, 0.754739, 0.631728,
		30.595932, 25.863182, 26.886280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110687, 25.240973, 26.606688>,  <30.472111, 25.334866, 26.444071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110687, 25.240973, 26.606688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996721, 25.482121, 26.904781>,  <30.928341, 25.626808, 27.083637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996721, 25.482121, 26.904781>,  <31.110687, 25.240973, 26.606688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996721, 25.482121, 26.904781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247826, -0.704694, 0.664822,
		0.925962, 0.374106, 0.051372,
		-0.284916, 0.602868, 0.745233,
		30.911247, 25.662981, 27.128351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706221, 25.267933, 27.106520>,  <31.110687, 25.240973, 26.606688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706221, 25.267933, 27.106520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365395, 25.363026, 27.293053>,  <31.160898, 25.420082, 27.404972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365395, 25.363026, 27.293053>,  <31.706221, 25.267933, 27.106520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365395, 25.363026, 27.293053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227098, -0.634792, 0.738556,
		0.471605, 0.735202, 0.486896,
		-0.852066, 0.237734, 0.466333,
		31.109776, 25.434345, 27.432953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827375, 25.283094, 27.863455>,  <31.706221, 25.267933, 27.106520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827375, 25.283094, 27.863455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428455, 25.254204, 27.868801>,  <31.189104, 25.236870, 27.872009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428455, 25.254204, 27.868801>,  <31.827375, 25.283094, 27.863455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428455, 25.254204, 27.868801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049547, -0.527120, 0.848345,
		-0.054227, 0.846716, 0.529275,
		-0.997299, -0.072228, 0.013368,
		31.129265, 25.232536, 27.872812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641857, 25.379883, 28.543343>,  <31.827375, 25.283094, 27.863455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641857, 25.379883, 28.543343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320425, 25.193661, 28.395008>,  <31.127565, 25.081928, 28.306007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320425, 25.193661, 28.395008>,  <31.641857, 25.379883, 28.543343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320425, 25.193661, 28.395008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141652, -0.455553, 0.878866,
		-0.578094, 0.758770, 0.300127,
		-0.803581, -0.465553, -0.370834,
		31.079351, 25.053995, 28.283758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113523, 25.353609, 29.057066>,  <31.641857, 25.379883, 28.543343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113523, 25.353609, 29.057066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976357, 25.059841, 28.822788>,  <30.894056, 24.883581, 28.682222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.976357, 25.059841, 28.822788>,  <31.113523, 25.353609, 29.057066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976357, 25.059841, 28.822788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252868, -0.528312, 0.810521,
		-0.904690, 0.426046, -0.004543,
		-0.342919, -0.734419, -0.585692,
		30.873482, 24.839516, 28.647081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500410, 25.319145, 29.277864>,  <31.113523, 25.353609, 29.057066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500410, 25.319145, 29.277864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636951, 24.986588, 29.102474>,  <30.718876, 24.787052, 28.997240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636951, 24.986588, 29.102474>,  <30.500410, 25.319145, 29.277864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636951, 24.986588, 29.102474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177774, -0.515180, 0.838442,
		-0.922970, -0.208256, -0.323660,
		0.341354, -0.831396, -0.438473,
		30.739357, 24.737169, 28.970932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073215, 24.892845, 29.537960>,  <30.500410, 25.319145, 29.277864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073215, 24.892845, 29.537960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.328472, 24.629028, 29.379074>,  <30.481627, 24.470739, 29.283743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.328472, 24.629028, 29.379074>,  <30.073215, 24.892845, 29.537960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328472, 24.629028, 29.379074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101773, -0.583653, 0.805600,
		-0.763163, -0.473661, -0.439576,
		0.638141, -0.659541, -0.397217,
		30.519915, 24.431166, 29.259909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750816, 24.254955, 29.553391>,  <30.073215, 24.892845, 29.537960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750816, 24.254955, 29.553391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145441, 24.189602, 29.553253>,  <30.382215, 24.150391, 29.553171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145441, 24.189602, 29.553253>,  <29.750816, 24.254955, 29.553391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145441, 24.189602, 29.553253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076850, -0.465915, 0.881486,
		-0.144179, -0.869615, -0.472211,
		0.986563, -0.163382, -0.000345,
		30.441410, 24.140587, 29.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209093, 23.773861, 29.074959>,  <29.750816, 24.254955, 29.553391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209093, 23.773861, 29.074959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.832628, 23.668335, 29.159447>,  <28.606749, 23.605019, 29.210138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.832628, 23.668335, 29.159447>,  <29.209093, 23.773861, 29.074959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832628, 23.668335, 29.159447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337477, 0.700537, -0.628775,
		0.017914, -0.663061, -0.748351,
		-0.941164, -0.263815, 0.211218,
		28.550280, 23.589190, 29.222813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867331, 23.583914, 28.484007>,  <29.209093, 23.773861, 29.074959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867331, 23.583914, 28.484007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601749, 23.729763, 28.745148>,  <28.442402, 23.817272, 28.901833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601749, 23.729763, 28.745148>,  <28.867331, 23.583914, 28.484007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601749, 23.729763, 28.745148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370309, 0.598164, -0.710684,
		-0.649646, -0.713617, -0.262128,
		-0.663952, 0.364625, 0.652853,
		28.402563, 23.839149, 28.941004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383646, 23.779989, 28.071751>,  <28.867331, 23.583914, 28.484007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383646, 23.779989, 28.071751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206753, 23.945240, 28.390186>,  <28.100616, 24.044390, 28.581247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206753, 23.945240, 28.390186>,  <28.383646, 23.779989, 28.071751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206753, 23.945240, 28.390186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269804, 0.785210, -0.557361,
		-0.855357, -0.461271, -0.235783,
		-0.442233, 0.413127, 0.796088,
		28.074083, 24.069178, 28.629013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703880, 24.101538, 27.800760>,  <28.383646, 23.779989, 28.071751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703880, 24.101538, 27.800760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799892, 24.275551, 28.147892>,  <27.857500, 24.379959, 28.356171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.799892, 24.275551, 28.147892>,  <27.703880, 24.101538, 27.800760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799892, 24.275551, 28.147892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189413, 0.897772, -0.397653,
		-0.952107, -0.068929, 0.297895,
		0.240032, 0.435033, 0.867831,
		27.871902, 24.406061, 28.408241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193768, 24.529976, 27.773037>,  <27.703880, 24.101538, 27.800760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193768, 24.529976, 27.773037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.390163, 24.690525, 28.082314>,  <27.508001, 24.786856, 28.267879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.390163, 24.690525, 28.082314>,  <27.193768, 24.529976, 27.773037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390163, 24.690525, 28.082314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446357, 0.878094, -0.172386,
		-0.748127, -0.260480, 0.610292,
		0.490990, 0.401375, 0.773193,
		27.537460, 24.810938, 28.314272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653139, 24.995470, 28.264603>,  <27.193768, 24.529976, 27.773037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653139, 24.995470, 28.264603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034212, 25.105183, 28.317013>,  <27.262856, 25.171011, 28.348459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.034212, 25.105183, 28.317013>,  <26.653139, 24.995470, 28.264603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034212, 25.105183, 28.317013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227568, 0.929335, -0.290774,
		-0.201521, 0.247197, 0.947778,
		0.952681, 0.274281, 0.131027,
		27.320017, 25.187468, 28.356321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525253, 25.682552, 28.519367>,  <26.653139, 24.995470, 28.264603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525253, 25.682552, 28.519367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.893715, 25.633507, 28.371616>,  <27.114792, 25.604080, 28.282967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.893715, 25.633507, 28.371616>,  <26.525253, 25.682552, 28.519367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893715, 25.633507, 28.371616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131764, 0.794778, -0.592424,
		0.366211, 0.594385, 0.715958,
		0.921155, -0.122615, -0.369375,
		27.170061, 25.596722, 28.260803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945450, 26.339500, 28.535681>,  <26.525253, 25.682552, 28.519367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945450, 26.339500, 28.535681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.110205, 26.134365, 28.234390>,  <27.209057, 26.011284, 28.053616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.110205, 26.134365, 28.234390>,  <26.945450, 26.339500, 28.535681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110205, 26.134365, 28.234390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235467, 0.738623, -0.631658,
		0.880287, 0.437531, 0.183472,
		0.411886, -0.512838, -0.753224,
		27.233770, 25.980513, 28.008423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143732, 26.833549, 28.275377>,  <26.945450, 26.339500, 28.535681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143732, 26.833549, 28.275377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.175123, 26.552197, 27.992790>,  <27.193958, 26.383385, 27.823238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.175123, 26.552197, 27.992790>,  <27.143732, 26.833549, 28.275377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175123, 26.552197, 27.992790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256523, 0.670542, -0.696110,
		0.963347, 0.235856, -0.127809,
		0.078480, -0.703381, -0.706467,
		27.198668, 26.341183, 27.780849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571905, 27.139093, 27.816925>,  <27.143732, 26.833549, 28.275377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571905, 27.139093, 27.816925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.375898, 26.847347, 27.625965>,  <27.258295, 26.672300, 27.511389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.375898, 26.847347, 27.625965>,  <27.571905, 27.139093, 27.816925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375898, 26.847347, 27.625965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108978, 0.594619, -0.796588,
		0.864874, -0.338316, -0.370858,
		-0.490018, -0.729363, -0.477402,
		27.228893, 26.628538, 27.482744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824427, 27.121092, 27.207851>,  <27.571905, 27.139093, 27.816925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824427, 27.121092, 27.207851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.461206, 26.953911, 27.196812>,  <27.243275, 26.853601, 27.190187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.461206, 26.953911, 27.196812>,  <27.824427, 27.121092, 27.207851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461206, 26.953911, 27.196812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313438, 0.721734, -0.617136,
		0.277853, -0.551739, -0.786373,
		-0.908050, -0.417952, -0.027600,
		27.188791, 26.828526, 27.188532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730467, 27.122749, 26.493242>,  <27.824427, 27.121092, 27.207851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730467, 27.122749, 26.493242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.366913, 27.088181, 26.656441>,  <27.148781, 27.067438, 26.754360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.366913, 27.088181, 26.656441>,  <27.730467, 27.122749, 26.493242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366913, 27.088181, 26.656441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363259, 0.644626, -0.672681,
		-0.204870, -0.759597, -0.617285,
		-0.908884, -0.086423, 0.407995,
		27.094248, 27.062254, 26.778839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243435, 27.055870, 25.937943>,  <27.730467, 27.122749, 26.493242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243435, 27.055870, 25.937943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.028198, 27.149891, 26.261723>,  <26.899055, 27.206303, 26.455990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.028198, 27.149891, 26.261723>,  <27.243435, 27.055870, 25.937943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028198, 27.149891, 26.261723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480401, 0.703563, -0.523655,
		-0.692585, -0.670634, -0.265662,
		-0.538091, 0.235051, 0.809450,
		26.866772, 27.220406, 26.504557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506025, 27.051949, 25.734341>,  <27.243435, 27.055870, 25.937943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506025, 27.051949, 25.734341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.567163, 27.296539, 26.044884>,  <26.603846, 27.443295, 26.231209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.567163, 27.296539, 26.044884>,  <26.506025, 27.051949, 25.734341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.567163, 27.296539, 26.044884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396393, 0.757558, -0.518631,
		-0.905268, -0.228473, 0.358175,
		0.152845, 0.611479, 0.776359,
		26.613016, 27.479982, 26.277792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.515049, 28.153711, 30.236704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884953, 28.009521, 30.187920>,  <40.106895, 27.923008, 30.158649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.884953, 28.009521, 30.187920>,  <39.515049, 28.153711, 30.236704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884953, 28.009521, 30.187920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156894, 0.653138, -0.740807,
		0.346697, 0.665936, 0.660553,
		0.924762, -0.360473, -0.121960,
		40.162380, 27.901381, 30.151331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103058, 28.732944, 30.315594>,  <39.515049, 28.153711, 30.236704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103058, 28.732944, 30.315594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230625, 28.434116, 30.082294>,  <40.307163, 28.254820, 29.942314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.230625, 28.434116, 30.082294>,  <40.103058, 28.732944, 30.315594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230625, 28.434116, 30.082294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142459, 0.646175, -0.749775,
		0.937015, 0.156026, 0.312503,
		0.318916, -0.747070, -0.583249,
		40.326302, 28.209995, 29.907320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626217, 29.020437, 29.972374>,  <40.103058, 28.732944, 30.315594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626217, 29.020437, 29.972374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545383, 28.710701, 29.732521>,  <40.496883, 28.524860, 29.588610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545383, 28.710701, 29.732521>,  <40.626217, 29.020437, 29.972374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545383, 28.710701, 29.732521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191056, 0.569333, -0.799599,
		0.960551, -0.276153, 0.032888,
		-0.202087, -0.774339, -0.599634,
		40.484756, 28.478399, 29.552631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229507, 29.078453, 29.582935>,  <40.626217, 29.020437, 29.972374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229507, 29.078453, 29.582935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968285, 28.864094, 29.368896>,  <40.811550, 28.735477, 29.240473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.968285, 28.864094, 29.368896>,  <41.229507, 29.078453, 29.582935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968285, 28.864094, 29.368896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237136, 0.526338, -0.816538,
		0.719223, -0.660138, -0.216648,
		-0.653058, -0.535898, -0.535097,
		40.772366, 28.703323, 29.208368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530003, 28.856909, 28.903074>,  <41.229507, 29.078453, 29.582935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530003, 28.856909, 28.903074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.134804, 28.823132, 28.851330>,  <40.897686, 28.802864, 28.820284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.134804, 28.823132, 28.851330>,  <41.530003, 28.856909, 28.903074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134804, 28.823132, 28.851330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071080, 0.494987, -0.865988,
		0.137161, -0.864787, -0.483043,
		-0.987995, -0.084445, -0.129362,
		40.838406, 28.797798, 28.812521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490135, 28.902557, 28.173439>,  <41.530003, 28.856909, 28.903074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490135, 28.902557, 28.173439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110966, 28.934525, 28.296761>,  <40.883465, 28.953705, 28.370754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110966, 28.934525, 28.296761>,  <41.490135, 28.902557, 28.173439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110966, 28.934525, 28.296761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270887, 0.306812, -0.912407,
		-0.167511, -0.948409, -0.269186,
		-0.947924, 0.079919, 0.308306,
		40.826588, 28.958500, 28.389252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142967, 28.565327, 27.642124>,  <41.490135, 28.902557, 28.173439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142967, 28.565327, 27.642124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926777, 28.838661, 27.838467>,  <40.797062, 29.002661, 27.956272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926777, 28.838661, 27.838467>,  <41.142967, 28.565327, 27.642124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926777, 28.838661, 27.838467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321154, 0.371680, -0.871042,
		-0.777655, -0.628416, 0.018572,
		-0.540474, 0.683335, 0.490858,
		40.764633, 29.043661, 27.985723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488655, 28.554123, 27.351057>,  <41.142967, 28.565327, 27.642124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488655, 28.554123, 27.351057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535011, 28.919708, 27.506615>,  <40.562824, 29.139059, 27.599949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535011, 28.919708, 27.506615>,  <40.488655, 28.554123, 27.351057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535011, 28.919708, 27.506615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125769, 0.401886, -0.907012,
		-0.985267, 0.056205, 0.161524,
		0.115892, 0.913963, 0.388896,
		40.569778, 29.193897, 27.623283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026821, 28.992855, 26.933531>,  <40.488655, 28.554123, 27.351057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026821, 28.992855, 26.933531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261738, 29.239864, 27.142818>,  <40.402687, 29.388069, 27.268391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261738, 29.239864, 27.142818>,  <40.026821, 28.992855, 26.933531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261738, 29.239864, 27.142818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107980, 0.580891, -0.806788,
		-0.802142, 0.530315, 0.274471,
		0.587289, 0.617521, 0.523220,
		40.437923, 29.425121, 27.299784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790470, 29.535786, 26.603020>,  <40.026821, 28.992855, 26.933531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790470, 29.535786, 26.603020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114697, 29.664391, 26.798824>,  <40.309231, 29.741552, 26.916307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114697, 29.664391, 26.798824>,  <39.790470, 29.535786, 26.603020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114697, 29.664391, 26.798824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127553, 0.718855, -0.683357,
		-0.571593, 0.616342, 0.541667,
		0.810562, 0.321511, 0.489509,
		40.357864, 29.760843, 26.945677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782459, 30.215841, 26.569197>,  <39.790470, 29.535786, 26.603020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782459, 30.215841, 26.569197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168064, 30.141521, 26.645252>,  <40.399429, 30.096930, 26.690886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.168064, 30.141521, 26.645252>,  <39.782459, 30.215841, 26.569197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168064, 30.141521, 26.645252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264455, 0.597134, -0.757295,
		0.027169, 0.780326, 0.624782,
		0.964015, -0.185802, 0.190137,
		40.457268, 30.085781, 26.702293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049259, 30.800798, 26.502140>,  <39.782459, 30.215841, 26.569197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049259, 30.800798, 26.502140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385807, 30.585392, 26.483799>,  <40.587734, 30.456148, 26.472794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.385807, 30.585392, 26.483799>,  <40.049259, 30.800798, 26.502140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385807, 30.585392, 26.483799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299300, 0.534900, -0.790127,
		0.450022, 0.651064, 0.611225,
		0.841368, -0.538515, -0.045853,
		40.638218, 30.423838, 26.470043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523884, 31.263992, 26.354744>,  <40.049259, 30.800798, 26.502140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523884, 31.263992, 26.354744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699249, 30.922630, 26.241962>,  <40.804470, 30.717813, 26.174294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699249, 30.922630, 26.241962>,  <40.523884, 31.263992, 26.354744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699249, 30.922630, 26.241962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288176, 0.430619, -0.855290,
		0.851321, 0.293719, 0.434719,
		0.438413, -0.853403, -0.281953,
		40.830772, 30.666609, 26.157377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225800, 31.659534, 26.158873>,  <40.523884, 31.263992, 26.354744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225800, 31.659534, 26.158873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.155800, 31.308880, 25.979595>,  <41.113800, 31.098486, 25.872028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.155800, 31.308880, 25.979595>,  <41.225800, 31.659534, 26.158873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155800, 31.308880, 25.979595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109711, 0.435023, -0.893710,
		0.978436, -0.205572, 0.020048,
		-0.175001, -0.876639, -0.448196,
		41.103298, 31.045889, 25.845137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667740, 31.574043, 25.652130>,  <41.225800, 31.659534, 26.158873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667740, 31.574043, 25.652130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.370388, 31.329483, 25.543633>,  <41.191975, 31.182747, 25.478533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.370388, 31.329483, 25.543633>,  <41.667740, 31.574043, 25.652130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370388, 31.329483, 25.543633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064233, 0.338402, -0.938807,
		0.665775, -0.715315, -0.212290,
		-0.743382, -0.611399, -0.271246,
		41.147373, 31.146063, 25.462259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871632, 31.168306, 25.045908>,  <41.667740, 31.574043, 25.652130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871632, 31.168306, 25.045908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472202, 31.166878, 25.024570>,  <41.232544, 31.166021, 25.011768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.472202, 31.166878, 25.024570>,  <41.871632, 31.168306, 25.045908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472202, 31.166878, 25.024570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049832, 0.299169, -0.952898,
		0.019359, -0.954194, -0.298563,
		-0.998570, -0.003569, -0.053341,
		41.172630, 31.165808, 25.008568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749088, 30.953308, 24.353413>,  <41.871632, 31.168306, 25.045908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749088, 30.953308, 24.353413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.399590, 31.114765, 24.461960>,  <41.189892, 31.211639, 24.527088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.399590, 31.114765, 24.461960>,  <41.749088, 30.953308, 24.353413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399590, 31.114765, 24.461960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180056, 0.249866, -0.951392,
		-0.451826, -0.880137, -0.145641,
		-0.873746, 0.403640, 0.271370,
		41.137466, 31.235857, 24.543371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308895, 30.747759, 23.806492>,  <41.749088, 30.953308, 24.353413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308895, 30.747759, 23.806492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.115459, 31.052319, 23.979195>,  <40.999397, 31.235054, 24.082817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.115459, 31.052319, 23.979195>,  <41.308895, 30.747759, 23.806492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115459, 31.052319, 23.979195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369507, 0.269580, -0.889265,
		-0.793479, -0.589574, 0.150977,
		-0.483587, 0.761400, 0.431757,
		40.970383, 31.280739, 24.108723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653095, 30.734951, 23.566616>,  <41.308895, 30.747759, 23.806492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653095, 30.734951, 23.566616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697567, 31.112286, 23.691681>,  <40.724251, 31.338686, 23.766720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.697567, 31.112286, 23.691681>,  <40.653095, 30.734951, 23.566616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697567, 31.112286, 23.691681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470008, 0.327113, -0.819810,
		-0.875632, -0.055811, 0.479743,
		0.111175, 0.943335, 0.312663,
		40.730919, 31.395287, 23.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990948, 31.018713, 23.402433>,  <40.653095, 30.734951, 23.566616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990948, 31.018713, 23.402433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.236996, 31.322876, 23.485775>,  <40.384624, 31.505373, 23.535780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.236996, 31.322876, 23.485775>,  <39.990948, 31.018713, 23.402433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236996, 31.322876, 23.485775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388515, 0.522283, -0.759129,
		-0.686067, 0.386006, 0.616695,
		0.615117, 0.760408, 0.208352,
		40.421532, 31.550999, 23.548281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516151, 31.546471, 23.406036>,  <39.990948, 31.018713, 23.402433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516151, 31.546471, 23.406036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881062, 31.697235, 23.341927>,  <40.100010, 31.787693, 23.303461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.881062, 31.697235, 23.341927>,  <39.516151, 31.546471, 23.406036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881062, 31.697235, 23.341927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394914, 0.705721, -0.588219,
		-0.108596, 0.599914, 0.792660,
		0.912277, 0.376911, -0.160276,
		40.154743, 31.810308, 23.293844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100067, 32.175076, 23.708122>,  <39.516151, 31.546471, 23.406036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100067, 32.175076, 23.708122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850487, 31.914871, 23.534908>,  <38.700741, 31.758749, 23.430979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.850487, 31.914871, 23.534908>,  <39.100067, 32.175076, 23.708122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850487, 31.914871, 23.534908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434268, -0.172062, 0.884198,
		-0.649691, 0.739748, -0.175139,
		-0.623949, -0.650513, -0.433036,
		38.663303, 31.719717, 23.404997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409119, 32.216934, 24.120674>,  <39.100067, 32.175076, 23.708122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409119, 32.216934, 24.120674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385101, 31.894207, 23.885574>,  <38.370689, 31.700571, 23.744514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385101, 31.894207, 23.885574>,  <38.409119, 32.216934, 24.120674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385101, 31.894207, 23.885574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534808, -0.471167, 0.701415,
		-0.842838, 0.356446, -0.403200,
		-0.060042, -0.806814, -0.587747,
		38.367088, 31.652163, 23.709249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750935, 31.948952, 24.227867>,  <38.409119, 32.216934, 24.120674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750935, 31.948952, 24.227867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922096, 31.634624, 24.049255>,  <38.024796, 31.446028, 23.942089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.922096, 31.634624, 24.049255>,  <37.750935, 31.948952, 24.227867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922096, 31.634624, 24.049255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456512, -0.614307, 0.643602,
		-0.780058, -0.071556, -0.621602,
		0.427908, -0.785816, -0.446529,
		38.050468, 31.398880, 23.915297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179794, 31.460945, 23.911699>,  <37.750935, 31.948952, 24.227867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179794, 31.460945, 23.911699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519405, 31.263077, 23.985943>,  <37.723171, 31.144356, 24.030489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.519405, 31.263077, 23.985943>,  <37.179794, 31.460945, 23.911699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519405, 31.263077, 23.985943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472222, -0.552904, 0.686516,
		-0.236975, -0.670520, -0.703026,
		0.849028, -0.494671, 0.185609,
		37.774113, 31.114676, 24.041626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952572, 30.770721, 23.979671>,  <37.179794, 31.460945, 23.911699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952572, 30.770721, 23.979671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321644, 30.778999, 24.133675>,  <37.543087, 30.783966, 24.226076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321644, 30.778999, 24.133675>,  <36.952572, 30.770721, 23.979671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321644, 30.778999, 24.133675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269653, -0.679083, 0.682740,
		0.275582, -0.733770, -0.620996,
		0.922682, 0.020697, 0.385007,
		37.598450, 30.785208, 24.249176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277649, 30.169678, 23.947077>,  <36.952572, 30.770721, 23.979671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277649, 30.169678, 23.947077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474377, 30.318634, 24.261894>,  <37.592415, 30.408007, 24.450785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.474377, 30.318634, 24.261894>,  <37.277649, 30.169678, 23.947077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474377, 30.318634, 24.261894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187973, -0.837196, 0.513584,
		0.850162, -0.400536, -0.341753,
		0.491823, 0.372389, 0.787043,
		37.621925, 30.430351, 24.498007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649628, 29.620352, 24.239683>,  <37.277649, 30.169678, 23.947077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649628, 29.620352, 24.239683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660095, 29.886234, 24.538342>,  <37.666374, 30.045763, 24.717537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.660095, 29.886234, 24.538342>,  <37.649628, 29.620352, 24.239683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660095, 29.886234, 24.538342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111352, -0.740317, 0.662972,
		0.993436, -0.100489, 0.054644,
		0.026168, 0.664705, 0.746647,
		37.667946, 30.085646, 24.762335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216461, 29.351879, 24.606247>,  <37.649628, 29.620352, 24.239683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216461, 29.351879, 24.606247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029633, 29.586346, 24.871048>,  <37.917534, 29.727026, 25.029928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029633, 29.586346, 24.871048>,  <38.216461, 29.351879, 24.606247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029633, 29.586346, 24.871048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108990, -0.781145, 0.614763,
		0.877477, 0.214987, 0.428737,
		-0.467072, 0.586169, 0.662005,
		37.889511, 29.762196, 25.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359699, 29.069355, 25.217552>,  <38.216461, 29.351879, 24.606247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359699, 29.069355, 25.217552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077461, 29.333916, 25.319279>,  <37.908119, 29.492653, 25.380316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077461, 29.333916, 25.319279>,  <38.359699, 29.069355, 25.217552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077461, 29.333916, 25.319279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213327, -0.540513, 0.813841,
		0.675740, 0.519991, 0.522480,
		-0.705597, 0.661404, 0.254318,
		37.865784, 29.532337, 25.395575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546036, 29.463917, 25.823824>,  <38.359699, 29.069355, 25.217552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546036, 29.463917, 25.823824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146561, 29.444218, 25.829563>,  <37.906876, 29.432398, 25.833006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.146561, 29.444218, 25.829563>,  <38.546036, 29.463917, 25.823824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146561, 29.444218, 25.829563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039488, -0.559621, 0.827807,
		-0.032737, 0.827284, 0.560829,
		-0.998684, -0.049246, 0.014347,
		37.846954, 29.429443, 25.833868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414738, 29.562551, 26.528891>,  <38.546036, 29.463917, 25.823824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414738, 29.562551, 26.528891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090530, 29.399059, 26.361080>,  <37.896008, 29.300964, 26.260393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090530, 29.399059, 26.361080>,  <38.414738, 29.562551, 26.528891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090530, 29.399059, 26.361080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094058, -0.616140, 0.782001,
		-0.578114, 0.673284, 0.460947,
		-0.810517, -0.408730, -0.419527,
		37.847374, 29.276440, 26.235222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822105, 29.735321, 26.982918>,  <38.414738, 29.562551, 26.528891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822105, 29.735321, 26.982918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691311, 29.418751, 26.776337>,  <37.612835, 29.228807, 26.652388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691311, 29.418751, 26.776337>,  <37.822105, 29.735321, 26.982918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691311, 29.418751, 26.776337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182076, -0.483496, 0.856201,
		-0.927324, 0.373998, 0.013996,
		-0.326984, -0.791427, -0.516454,
		37.593216, 29.181322, 26.621401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189999, 29.521004, 27.289299>,  <37.822105, 29.735321, 26.982918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189999, 29.521004, 27.289299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295338, 29.181042, 27.106735>,  <37.358543, 28.977064, 26.997196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.295338, 29.181042, 27.106735>,  <37.189999, 29.521004, 27.289299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295338, 29.181042, 27.106735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274260, -0.519549, 0.809228,
		-0.924894, -0.087934, -0.369918,
		0.263349, -0.849903, -0.456410,
		37.374344, 28.926071, 26.969812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635574, 29.076305, 27.538319>,  <37.189999, 29.521004, 27.289299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635574, 29.076305, 27.538319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933266, 28.837852, 27.417824>,  <37.111881, 28.694780, 27.345528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.933266, 28.837852, 27.417824>,  <36.635574, 29.076305, 27.538319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933266, 28.837852, 27.417824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091808, -0.538028, 0.837913,
		-0.661581, -0.595946, -0.455148,
		0.744232, -0.596133, -0.301236,
		37.156536, 28.659012, 27.327454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392651, 28.444313, 27.618122>,  <36.635574, 29.076305, 27.538319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392651, 28.444313, 27.618122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785221, 28.370506, 27.597107>,  <37.020763, 28.326221, 27.584497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.785221, 28.370506, 27.597107>,  <36.392651, 28.444313, 27.618122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785221, 28.370506, 27.597107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079956, -0.642311, 0.762262,
		-0.174396, -0.743902, -0.645133,
		0.981424, -0.184517, -0.052537,
		37.079647, 28.315151, 27.581347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490707, 27.792873, 27.587313>,  <36.392651, 28.444313, 27.618122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490707, 27.792873, 27.587313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851246, 27.908787, 27.716064>,  <37.067570, 27.978334, 27.793316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.851246, 27.908787, 27.716064>,  <36.490707, 27.792873, 27.587313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851246, 27.908787, 27.716064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010416, -0.757475, 0.652781,
		0.432979, -0.585028, -0.685764,
		0.901344, 0.289783, 0.321877,
		37.121651, 27.995722, 27.812628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875721, 27.142084, 27.804564>,  <36.490707, 27.792873, 27.587313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875721, 27.142084, 27.804564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.091763, 27.424110, 27.988377>,  <37.221386, 27.593327, 28.098665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.091763, 27.424110, 27.988377>,  <36.875721, 27.142084, 27.804564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091763, 27.424110, 27.988377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093395, -0.592864, 0.799869,
		0.836402, -0.389092, -0.386056,
		0.540101, 0.705068, 0.459533,
		37.253792, 27.635632, 28.126236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552704, 26.898453, 28.118435>,  <36.875721, 27.142084, 27.804564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552704, 26.898453, 28.118435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435162, 27.220387, 28.324696>,  <37.364635, 27.413546, 28.448452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435162, 27.220387, 28.324696>,  <37.552704, 26.898453, 28.118435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435162, 27.220387, 28.324696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039566, -0.528764, 0.847846,
		0.955032, 0.269543, 0.123533,
		-0.293851, 0.804833, 0.515651,
		37.347008, 27.461836, 28.479391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902275, 26.814297, 28.746691>,  <37.552704, 26.898453, 28.118435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902275, 26.814297, 28.746691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654758, 27.112896, 28.844540>,  <37.506248, 27.292055, 28.903250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.654758, 27.112896, 28.844540>,  <37.902275, 26.814297, 28.746691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654758, 27.112896, 28.844540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002564, -0.313320, 0.949644,
		0.785553, 0.587002, 0.195792,
		-0.618789, 0.746498, 0.244624,
		37.469120, 27.336845, 28.917927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009644, 26.979589, 29.423893>,  <37.902275, 26.814297, 28.746691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009644, 26.979589, 29.423893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658508, 27.170418, 29.406872>,  <37.447826, 27.284914, 29.396658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658508, 27.170418, 29.406872>,  <38.009644, 26.979589, 29.423893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658508, 27.170418, 29.406872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132755, -0.156984, 0.978638,
		0.460198, 0.864732, 0.201139,
		-0.877835, 0.477069, -0.042554,
		37.395157, 27.313540, 29.394106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078266, 27.498447, 29.947134>,  <38.009644, 26.979589, 29.423893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078266, 27.498447, 29.947134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.704716, 27.370224, 29.883739>,  <37.480587, 27.293289, 29.845703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.704716, 27.370224, 29.883739>,  <38.078266, 27.498447, 29.947134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704716, 27.370224, 29.883739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047809, -0.327295, 0.943712,
		-0.354389, 0.888886, 0.290327,
		-0.933875, -0.320561, -0.158487,
		37.424553, 27.274055, 29.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.874893, 25.256721, 31.151709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.262949, 25.353058, 31.140202>,  <28.495783, 25.410860, 31.133297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.262949, 25.353058, 31.140202>,  <27.874893, 25.256721, 31.151709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262949, 25.353058, 31.140202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216268, -0.805208, 0.552149,
		0.109815, -0.541883, -0.833249,
		0.970139, 0.240839, -0.028768,
		28.553991, 25.425310, 31.131571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302244, 24.739433, 30.779819>,  <27.874893, 25.256721, 31.151709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302244, 24.739433, 30.779819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532858, 24.928829, 31.046177>,  <28.671227, 25.042467, 31.205992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.532858, 24.928829, 31.046177>,  <28.302244, 24.739433, 30.779819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532858, 24.928829, 31.046177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207547, -0.873110, 0.441139,
		0.790274, -0.116127, -0.601649,
		0.576534, 0.473492, 0.665894,
		28.705818, 25.070877, 31.245945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841736, 24.288153, 30.953045>,  <28.302244, 24.739433, 30.779819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841736, 24.288153, 30.953045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.863161, 24.537273, 31.265263>,  <28.876017, 24.686747, 31.452593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.863161, 24.537273, 31.265263>,  <28.841736, 24.288153, 30.953045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863161, 24.537273, 31.265263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217699, -0.770146, 0.599568,
		0.974545, 0.137808, -0.176835,
		0.053564, 0.622803, 0.780543,
		28.879230, 24.724113, 31.499426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542532, 24.183298, 31.226927>,  <28.841736, 24.288153, 30.953045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542532, 24.183298, 31.226927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.310818, 24.340111, 31.512791>,  <29.171789, 24.434198, 31.684309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.310818, 24.340111, 31.512791>,  <29.542532, 24.183298, 31.226927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310818, 24.340111, 31.512791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344627, -0.676742, 0.650579,
		0.738688, 0.623162, 0.256922,
		-0.579286, 0.392032, 0.714660,
		29.137032, 24.457720, 31.727188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922161, 24.159025, 31.773144>,  <29.542532, 24.183298, 31.226927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922161, 24.159025, 31.773144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575441, 24.230679, 31.959293>,  <29.367409, 24.273670, 32.070984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.575441, 24.230679, 31.959293>,  <29.922161, 24.159025, 31.773144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575441, 24.230679, 31.959293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250045, -0.651306, 0.716434,
		0.431436, 0.737368, 0.519761,
		-0.866799, 0.179132, 0.465372,
		29.315401, 24.284418, 32.098904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980322, 24.275354, 32.593586>,  <29.922161, 24.159025, 31.773144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980322, 24.275354, 32.593586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.593834, 24.194687, 32.529404>,  <29.361940, 24.146286, 32.490894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.593834, 24.194687, 32.529404>,  <29.980322, 24.275354, 32.593586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593834, 24.194687, 32.529404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009949, -0.592952, 0.805176,
		-0.257520, 0.779575, 0.570917,
		-0.966222, -0.201669, -0.160453,
		29.303967, 24.134186, 32.481266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627535, 24.421648, 33.183254>,  <29.980322, 24.275354, 32.593586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627535, 24.421648, 33.183254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397903, 24.157455, 32.989677>,  <29.260124, 23.998940, 32.873531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.397903, 24.157455, 32.989677>,  <29.627535, 24.421648, 33.183254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397903, 24.157455, 32.989677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163343, -0.486778, 0.858118,
		-0.802341, 0.571676, 0.171565,
		-0.574080, -0.660480, -0.483941,
		29.225679, 23.959312, 32.844494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122780, 24.214096, 33.736374>,  <29.627535, 24.421648, 33.183254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122780, 24.214096, 33.736374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.083950, 23.927814, 33.459724>,  <29.060652, 23.756046, 33.293736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.083950, 23.927814, 33.459724>,  <29.122780, 24.214096, 33.736374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083950, 23.927814, 33.459724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206778, -0.665240, 0.717425,
		-0.973560, 0.212657, -0.083413,
		-0.097075, -0.715704, -0.691624,
		29.054827, 23.713102, 33.252235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560736, 23.757282, 34.013145>,  <29.122780, 24.214096, 33.736374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560736, 23.757282, 34.013145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.744961, 23.557060, 33.719936>,  <28.855495, 23.436926, 33.544010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.744961, 23.557060, 33.719936>,  <28.560736, 23.757282, 34.013145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744961, 23.557060, 33.719936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044511, -0.811762, 0.582290,
		-0.886512, -0.300807, -0.351585,
		0.460560, -0.500557, -0.733025,
		28.883129, 23.406893, 33.500031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175335, 23.142754, 33.902935>,  <28.560736, 23.757282, 34.013145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175335, 23.142754, 33.902935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546705, 23.089302, 33.764271>,  <28.769527, 23.057232, 33.681072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546705, 23.089302, 33.764271>,  <28.175335, 23.142754, 33.902935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546705, 23.089302, 33.764271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067842, -0.856412, 0.511817,
		-0.365277, -0.498701, -0.786047,
		0.928424, -0.133628, -0.346660,
		28.825232, 23.049213, 33.660275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180786, 22.446716, 33.543213>,  <28.175335, 23.142754, 33.902935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180786, 22.446716, 33.543213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562670, 22.533722, 33.624424>,  <28.791800, 22.585926, 33.673149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562670, 22.533722, 33.624424>,  <28.180786, 22.446716, 33.543213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562670, 22.533722, 33.624424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114849, -0.898853, 0.422933,
		0.274484, -0.380460, -0.883124,
		0.954708, 0.217515, 0.203026,
		28.849083, 22.598976, 33.685333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577999, 21.837887, 33.359425>,  <28.180786, 22.446716, 33.543213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577999, 21.837887, 33.359425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.796642, 22.040951, 33.625809>,  <28.927828, 22.162788, 33.785637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.796642, 22.040951, 33.625809>,  <28.577999, 21.837887, 33.359425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796642, 22.040951, 33.625809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026443, -0.784421, 0.619666,
		0.836970, -0.356325, -0.415348,
		0.546610, 0.507658, 0.665959,
		28.960625, 22.193249, 33.825596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561024, 21.471901, 34.033268>,  <28.577999, 21.837887, 33.359425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561024, 21.471901, 34.033268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841019, 21.737885, 34.137455>,  <29.009016, 21.897474, 34.199966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841019, 21.737885, 34.137455>,  <28.561024, 21.471901, 34.033268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841019, 21.737885, 34.137455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186789, -0.522497, 0.831930,
		0.689292, -0.533690, -0.489949,
		0.699990, 0.664960, 0.260466,
		29.051016, 21.937372, 34.215595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093361, 21.064459, 34.228527>,  <28.561024, 21.471901, 34.033268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093361, 21.064459, 34.228527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104576, 21.424160, 34.403141>,  <29.111305, 21.639980, 34.507908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.104576, 21.424160, 34.403141>,  <29.093361, 21.064459, 34.228527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104576, 21.424160, 34.403141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160097, -0.435107, 0.886031,
		0.986703, 0.045044, -0.156168,
		0.028039, 0.899251, 0.436533,
		29.112988, 21.693935, 34.534100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392237, 20.518187, 33.684216>,  <29.093361, 21.064459, 34.228527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392237, 20.518187, 33.684216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659758, 20.314732, 33.467331>,  <29.820271, 20.192659, 33.337200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659758, 20.314732, 33.467331>,  <29.392237, 20.518187, 33.684216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659758, 20.314732, 33.467331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002556, 0.727749, -0.685839,
		0.743435, 0.460078, 0.485420,
		0.668804, -0.508636, -0.542210,
		29.860399, 20.162140, 33.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038902, 20.948135, 33.547329>,  <29.392237, 20.518187, 33.684216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038902, 20.948135, 33.547329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999733, 20.670120, 33.262421>,  <29.976231, 20.503311, 33.091476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.999733, 20.670120, 33.262421>,  <30.038902, 20.948135, 33.547329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999733, 20.670120, 33.262421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094060, 0.718972, -0.688644,
		0.990739, -0.000438, -0.135780,
		-0.097923, -0.695038, -0.712273,
		29.970356, 20.461609, 33.048740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279755, 21.288946, 32.985420>,  <30.038902, 20.948135, 33.547329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279755, 21.288946, 32.985420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.083437, 20.975487, 32.833099>,  <29.965647, 20.787411, 32.741707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.083437, 20.975487, 32.833099>,  <30.279755, 21.288946, 32.985420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083437, 20.975487, 32.833099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284539, 0.557267, -0.780058,
		0.823504, -0.274494, -0.496483,
		-0.490795, -0.783650, -0.380807,
		29.936199, 20.740393, 32.718857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321882, 21.442856, 32.357658>,  <30.279755, 21.288946, 32.985420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321882, 21.442856, 32.357658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.083601, 21.122932, 32.328144>,  <29.940632, 20.930979, 32.310436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.083601, 21.122932, 32.328144>,  <30.321882, 21.442856, 32.357658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083601, 21.122932, 32.328144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243400, 0.267300, -0.932367,
		0.765437, -0.537455, -0.353904,
		-0.595703, -0.799809, -0.073785,
		29.904890, 20.882990, 32.306007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463223, 21.093838, 31.726856>,  <30.321882, 21.442856, 32.357658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463223, 21.093838, 31.726856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088121, 21.032494, 31.851501>,  <29.863062, 20.995687, 31.926289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088121, 21.032494, 31.851501>,  <30.463223, 21.093838, 31.726856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088121, 21.032494, 31.851501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347195, 0.391216, -0.852294,
		0.008797, -0.907431, -0.420108,
		-0.937752, -0.153357, 0.311614,
		29.806795, 20.986486, 31.944986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215178, 20.745319, 31.205517>,  <30.463223, 21.093838, 31.726856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215178, 20.745319, 31.205517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915184, 20.919945, 31.404289>,  <29.735188, 21.024721, 31.523552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915184, 20.919945, 31.404289>,  <30.215178, 20.745319, 31.205517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915184, 20.919945, 31.404289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228191, 0.534379, -0.813860,
		-0.620852, -0.723774, -0.301154,
		-0.749981, 0.436565, 0.496930,
		29.690189, 21.050915, 31.553368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522867, 20.662485, 30.678305>,  <30.215178, 20.745319, 31.205517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522867, 20.662485, 30.678305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.411255, 20.944687, 30.938889>,  <29.344288, 21.114008, 31.095240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.411255, 20.944687, 30.938889>,  <29.522867, 20.662485, 30.678305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411255, 20.944687, 30.938889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390809, 0.536254, -0.748131,
		-0.877160, -0.463348, 0.126087,
		-0.279031, 0.705507, 0.651461,
		29.327545, 21.156340, 31.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883282, 20.823868, 30.335634>,  <29.522867, 20.662485, 30.678305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883282, 20.823868, 30.335634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998064, 21.111874, 30.588375>,  <29.066935, 21.284678, 30.740019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998064, 21.111874, 30.588375>,  <28.883282, 20.823868, 30.335634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998064, 21.111874, 30.588375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323150, 0.693687, -0.643718,
		-0.901792, -0.019462, 0.431731,
		0.286958, 0.720014, 0.631851,
		29.084152, 21.327877, 30.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334978, 21.248255, 30.381411>,  <28.883282, 20.823868, 30.335634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334978, 21.248255, 30.381411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655527, 21.465252, 30.482212>,  <28.847857, 21.595449, 30.542694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.655527, 21.465252, 30.482212>,  <28.334978, 21.248255, 30.381411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655527, 21.465252, 30.482212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227100, 0.665683, -0.710839,
		-0.553379, 0.512416, 0.656659,
		0.801372, 0.542491, 0.252005,
		28.895939, 21.627998, 30.557814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030720, 21.878447, 30.544504>,  <28.334978, 21.248255, 30.381411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030720, 21.878447, 30.544504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.409521, 21.910091, 30.419971>,  <28.636801, 21.929079, 30.345251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.409521, 21.910091, 30.419971>,  <28.030720, 21.878447, 30.544504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409521, 21.910091, 30.419971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243174, 0.809828, -0.533895,
		0.209890, 0.581308, 0.786147,
		0.947002, 0.079112, -0.311334,
		28.693623, 21.933825, 30.326571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121611, 22.482769, 30.816355>,  <28.030720, 21.878447, 30.544504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121611, 22.482769, 30.816355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.395086, 22.411346, 30.533318>,  <28.559172, 22.368494, 30.363495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.395086, 22.411346, 30.533318>,  <28.121611, 22.482769, 30.816355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395086, 22.411346, 30.533318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092412, 0.940618, -0.326645,
		0.723900, 0.288714, 0.626589,
		0.683688, -0.178554, -0.707594,
		28.600193, 22.357780, 30.321039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446190, 23.169355, 30.794659>,  <28.121611, 22.482769, 30.816355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446190, 23.169355, 30.794659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.550161, 22.968937, 30.464474>,  <28.612545, 22.848686, 30.266363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.550161, 22.968937, 30.464474>,  <28.446190, 23.169355, 30.794659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550161, 22.968937, 30.464474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040525, 0.848433, -0.527749,
		0.964777, 0.170628, 0.200227,
		0.259928, -0.501047, -0.825463,
		28.628139, 22.818623, 30.216835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707458, 23.648468, 30.369335>,  <28.446190, 23.169355, 30.794659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707458, 23.648468, 30.369335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630882, 23.357277, 30.106003>,  <28.584936, 23.182562, 29.948004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.630882, 23.357277, 30.106003>,  <28.707458, 23.648468, 30.369335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630882, 23.357277, 30.106003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211435, 0.685576, -0.696622,
		0.958461, 0.005834, -0.285166,
		-0.191439, -0.727978, -0.658331,
		28.573450, 23.138884, 29.908504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147156, 23.833456, 29.872492>,  <28.707458, 23.648468, 30.369335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147156, 23.833456, 29.872492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840145, 23.607700, 29.750923>,  <28.655939, 23.472248, 29.677982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.840145, 23.607700, 29.750923>,  <29.147156, 23.833456, 29.872492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.840145, 23.607700, 29.750923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262747, 0.709460, -0.653934,
		0.584692, -0.422059, -0.692822,
		-0.767528, -0.564387, -0.303921,
		28.609886, 23.438385, 29.659746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875980, 23.551521, 29.858589>,  <29.147156, 23.833456, 29.872492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875980, 23.551521, 29.858589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240074, 23.712311, 29.898357>,  <30.458530, 23.808784, 29.922218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240074, 23.712311, 29.898357>,  <29.875980, 23.551521, 29.858589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240074, 23.712311, 29.898357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122793, -0.491324, 0.862278,
		0.395463, -0.772669, -0.496581,
		0.910237, 0.401976, 0.099422,
		30.513145, 23.832903, 29.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307760, 22.951828, 30.014139>,  <29.875980, 23.551521, 29.858589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307760, 22.951828, 30.014139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526505, 23.262409, 30.139400>,  <30.657751, 23.448757, 30.214558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.526505, 23.262409, 30.139400>,  <30.307760, 22.951828, 30.014139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526505, 23.262409, 30.139400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377783, -0.562644, 0.735331,
		0.747144, -0.283819, -0.601018,
		0.546861, 0.776452, 0.313154,
		30.690563, 23.495344, 30.233347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002464, 22.708895, 30.096161>,  <30.307760, 22.951828, 30.014139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002464, 22.708895, 30.096161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983482, 23.042431, 30.316147>,  <30.972094, 23.242552, 30.448137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.983482, 23.042431, 30.316147>,  <31.002464, 22.708895, 30.096161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983482, 23.042431, 30.316147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552264, -0.436875, 0.710032,
		0.832318, 0.337420, -0.439767,
		-0.047456, 0.833839, 0.549964,
		30.969246, 23.292583, 30.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693707, 22.847578, 30.218641>,  <31.002464, 22.708895, 30.096161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693707, 22.847578, 30.218641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497545, 23.033974, 30.513222>,  <31.379848, 23.145811, 30.689970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497545, 23.033974, 30.513222>,  <31.693707, 22.847578, 30.218641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497545, 23.033974, 30.513222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697886, -0.296151, 0.652112,
		0.521977, 0.833756, -0.179974,
		-0.490402, 0.465989, 0.736451,
		31.350424, 23.173771, 30.734158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190884, 23.178801, 30.571428>,  <31.693707, 22.847578, 30.218641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190884, 23.178801, 30.571428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875517, 23.161282, 30.816860>,  <31.686296, 23.150770, 30.964119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.875517, 23.161282, 30.816860>,  <32.190884, 23.178801, 30.571428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875517, 23.161282, 30.816860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529362, -0.556372, 0.640490,
		0.313325, 0.829779, 0.461839,
		-0.788418, -0.043798, 0.613578,
		31.638992, 23.148142, 31.000935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473782, 23.101347, 31.258080>,  <32.190884, 23.178801, 30.571428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473782, 23.101347, 31.258080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086346, 23.024399, 31.321095>,  <31.853884, 22.978230, 31.358904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086346, 23.024399, 31.321095>,  <32.473782, 23.101347, 31.258080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086346, 23.024399, 31.321095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236190, -0.513811, 0.824750,
		-0.077712, 0.836058, 0.543110,
		-0.968595, -0.192370, 0.157539,
		31.795767, 22.966688, 31.368357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422897, 23.180626, 31.986588>,  <32.473782, 23.101347, 31.258080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422897, 23.180626, 31.986588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105618, 22.956696, 31.890728>,  <31.915251, 22.822336, 31.833212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.105618, 22.956696, 31.890728>,  <32.422897, 23.180626, 31.986588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105618, 22.956696, 31.890728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143695, -0.554485, 0.819694,
		-0.591769, 0.615742, 0.520260,
		-0.793197, -0.559828, -0.239648,
		31.867659, 22.788748, 31.818834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526779, 23.813824, 32.297920>,  <32.422897, 23.180626, 31.986588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526779, 23.813824, 32.297920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865910, 23.949665, 32.460819>,  <33.069389, 24.031170, 32.558559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865910, 23.949665, 32.460819>,  <32.526779, 23.813824, 32.297920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865910, 23.949665, 32.460819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032265, 0.733548, -0.678871,
		-0.529286, 0.588707, 0.610966,
		0.847830, 0.339604, 0.407252,
		33.120258, 24.051546, 32.582996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366768, 24.460407, 32.488091>,  <32.526779, 23.813824, 32.297920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366768, 24.460407, 32.488091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765160, 24.485577, 32.462574>,  <33.004192, 24.500679, 32.447262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765160, 24.485577, 32.462574>,  <32.366768, 24.460407, 32.488091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765160, 24.485577, 32.462574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087379, 0.839774, -0.535858,
		0.019853, 0.539276, 0.841895,
		0.995977, 0.062926, -0.063794,
		33.063953, 24.504454, 32.443436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636608, 25.184299, 32.698429>,  <32.366768, 24.460407, 32.488091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636608, 25.184299, 32.698429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913193, 25.017689, 32.462330>,  <33.079144, 24.917723, 32.320671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913193, 25.017689, 32.462330>,  <32.636608, 25.184299, 32.698429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913193, 25.017689, 32.462330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001105, 0.816435, -0.577436,
		0.722415, 0.399925, 0.564071,
		0.691458, -0.416526, -0.590247,
		33.120632, 24.892731, 32.285255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101273, 25.694544, 32.594894>,  <32.636608, 25.184299, 32.698429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101273, 25.694544, 32.594894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117653, 25.426826, 32.298149>,  <33.127483, 25.266195, 32.120102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.117653, 25.426826, 32.298149>,  <33.101273, 25.694544, 32.594894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117653, 25.426826, 32.298149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018489, 0.741855, -0.670305,
		0.998990, 0.041169, 0.018009,
		0.040956, -0.669295, -0.741867,
		33.129940, 25.226038, 32.075588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617165, 26.057619, 32.148655>,  <33.101273, 25.694544, 32.594894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617165, 26.057619, 32.148655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439522, 25.775558, 31.927555>,  <33.332935, 25.606323, 31.794895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439522, 25.775558, 31.927555>,  <33.617165, 26.057619, 32.148655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439522, 25.775558, 31.927555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031757, 0.604151, -0.796237,
		0.895412, -0.371166, -0.245913,
		-0.444105, -0.705151, -0.552751,
		33.306290, 25.564013, 31.761730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048809, 25.964733, 31.597248>,  <33.617165, 26.057619, 32.148655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048809, 25.964733, 31.597248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675606, 25.867405, 31.491203>,  <33.451683, 25.809008, 31.427576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675606, 25.867405, 31.491203>,  <34.048809, 25.964733, 31.597248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675606, 25.867405, 31.491203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055775, 0.630053, -0.774547,
		0.355497, -0.737448, -0.574275,
		-0.933012, -0.243319, -0.265113,
		33.395702, 25.794409, 31.411669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070992, 26.028660, 30.904388>,  <34.048809, 25.964733, 31.597248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070992, 26.028660, 30.904388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680473, 26.013355, 30.989597>,  <33.446163, 26.004173, 31.040722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680473, 26.013355, 30.989597>,  <34.070992, 26.028660, 30.904388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680473, 26.013355, 30.989597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197460, 0.560416, -0.804328,
		-0.088608, -0.827327, -0.554688,
		-0.976299, -0.038259, 0.213021,
		33.387585, 26.001877, 31.053503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.731733, 24.585754, 36.026295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475967, 24.389736, 35.789314>,  <30.322508, 24.272125, 35.647125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.475967, 24.389736, 35.789314>,  <30.731733, 24.585754, 36.026295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475967, 24.389736, 35.789314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093341, 0.814336, -0.572839,
		0.763173, -0.310983, -0.566442,
		-0.639417, -0.490047, -0.592452,
		30.284142, 24.242722, 35.611580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960789, 24.656170, 35.368019>,  <30.731733, 24.585754, 36.026295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960789, 24.656170, 35.368019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.581018, 24.553410, 35.295807>,  <30.353157, 24.491753, 35.252480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.581018, 24.553410, 35.295807>,  <30.960789, 24.656170, 35.368019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581018, 24.553410, 35.295807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099995, 0.792410, -0.601737,
		0.297644, -0.553252, -0.778023,
		-0.949425, -0.256902, -0.180534,
		30.296190, 24.476339, 35.241646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972389, 24.690573, 34.609283>,  <30.960789, 24.656170, 35.368019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972389, 24.690573, 34.609283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.594280, 24.719715, 34.736504>,  <30.367414, 24.737202, 34.812836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.594280, 24.719715, 34.736504>,  <30.972389, 24.690573, 34.609283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594280, 24.719715, 34.736504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118834, 0.830932, -0.543535,
		-0.303877, -0.551583, -0.776798,
		-0.945271, 0.072858, 0.318047,
		30.310699, 24.741573, 34.831917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520023, 24.883274, 33.956467>,  <30.972389, 24.690573, 34.609283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520023, 24.883274, 33.956467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300680, 24.974724, 34.278221>,  <30.169075, 25.029594, 34.471272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300680, 24.974724, 34.278221>,  <30.520023, 24.883274, 33.956467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300680, 24.974724, 34.278221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222839, 0.887171, -0.404068,
		-0.806007, -0.400822, -0.435540,
		-0.548357, 0.228626, 0.804384,
		30.136173, 25.043312, 34.519535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940538, 25.076223, 33.632481>,  <30.520023, 24.883274, 33.956467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940538, 25.076223, 33.632481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.948366, 25.242283, 33.996300>,  <29.953064, 25.341919, 34.214592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.948366, 25.242283, 33.996300>,  <29.940538, 25.076223, 33.632481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948366, 25.242283, 33.996300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337747, 0.858984, -0.384803,
		-0.941033, -0.299664, 0.157027,
		0.019571, 0.415148, 0.909543,
		29.954237, 25.366827, 34.269161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451208, 25.411324, 33.663956>,  <29.940538, 25.076223, 33.632481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451208, 25.411324, 33.663956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.636375, 25.583897, 33.973682>,  <29.747475, 25.687441, 34.159519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.636375, 25.583897, 33.973682>,  <29.451208, 25.411324, 33.663956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636375, 25.583897, 33.973682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312393, 0.896914, -0.312979,
		-0.829529, -0.097009, 0.549974,
		0.462917, 0.431433, 0.774321,
		29.775251, 25.713327, 34.205978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951584, 25.841667, 34.000351>,  <29.451208, 25.411324, 33.663956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951584, 25.841667, 34.000351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310534, 25.989975, 34.096058>,  <29.525904, 26.078960, 34.153484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310534, 25.989975, 34.096058>,  <28.951584, 25.841667, 34.000351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310534, 25.989975, 34.096058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, 0.913274, -0.269447,
		-0.318422, 0.168698, 0.932817,
		0.897373, 0.370772, 0.239270,
		29.579746, 26.101206, 34.167839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774317, 26.588303, 34.279312>,  <28.951584, 25.841667, 34.000351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774317, 26.588303, 34.279312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160566, 26.601822, 34.176216>,  <29.392317, 26.609934, 34.114361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.160566, 26.601822, 34.176216>,  <28.774317, 26.588303, 34.279312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160566, 26.601822, 34.176216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135995, 0.910678, -0.390092,
		0.221531, 0.411733, 0.883968,
		0.965624, 0.033798, -0.257737,
		29.450254, 26.611961, 34.098896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074158, 27.232197, 34.556076>,  <28.774317, 26.588303, 34.279312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074158, 27.232197, 34.556076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.340242, 27.111641, 34.282825>,  <29.499893, 27.039307, 34.118877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.340242, 27.111641, 34.282825>,  <29.074158, 27.232197, 34.556076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340242, 27.111641, 34.282825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048445, 0.930406, -0.363316,
		0.745081, 0.208588, 0.633518,
		0.665212, -0.301391, -0.683123,
		29.539806, 27.021223, 34.077888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581562, 27.799000, 34.589729>,  <29.074158, 27.232197, 34.556076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581562, 27.799000, 34.589729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.621412, 27.610588, 34.239140>,  <29.645323, 27.497541, 34.028786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.621412, 27.610588, 34.239140>,  <29.581562, 27.799000, 34.589729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621412, 27.610588, 34.239140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118928, 0.880178, -0.459501,
		0.987892, -0.058459, 0.143707,
		0.099626, -0.471029, -0.876474,
		29.651300, 27.469280, 33.976196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254820, 28.090769, 34.239628>,  <29.581562, 27.799000, 34.589729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254820, 28.090769, 34.239628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.032129, 27.936405, 33.945381>,  <29.898514, 27.843788, 33.768833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.032129, 27.936405, 33.945381>,  <30.254820, 28.090769, 34.239628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032129, 27.936405, 33.945381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108484, 0.844182, -0.524965,
		0.823578, -0.372068, -0.428118,
		-0.556732, -0.385906, -0.735613,
		29.865110, 27.820633, 33.724697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558201, 28.340933, 33.731468>,  <30.254820, 28.090769, 34.239628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558201, 28.340933, 33.731468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198248, 28.240456, 33.588856>,  <29.982277, 28.180170, 33.503288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.198248, 28.240456, 33.588856>,  <30.558201, 28.340933, 33.731468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198248, 28.240456, 33.588856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008444, 0.807297, -0.590085,
		0.436052, -0.534018, -0.724351,
		-0.899882, -0.251191, -0.356533,
		29.928284, 28.165098, 33.481895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128216, 28.416071, 33.156345>,  <30.558201, 28.340933, 33.731468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128216, 28.416071, 33.156345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511917, 28.522186, 33.117455>,  <31.742138, 28.585855, 33.094120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.511917, 28.522186, 33.117455>,  <31.128216, 28.416071, 33.156345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511917, 28.522186, 33.117455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280649, -0.854816, 0.436491,
		0.032684, -0.445993, -0.894439,
		0.959254, 0.265290, -0.097229,
		31.799694, 28.601774, 33.088287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465647, 27.925123, 32.741398>,  <31.128216, 28.416071, 33.156345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465647, 27.925123, 32.741398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741556, 28.106659, 32.967049>,  <31.907101, 28.215580, 33.102440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.741556, 28.106659, 32.967049>,  <31.465647, 27.925123, 32.741398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741556, 28.106659, 32.967049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247118, -0.879941, 0.405755,
		0.680549, -0.140472, -0.719111,
		0.689772, 0.453841, 0.564130,
		31.948488, 28.242811, 33.136288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035164, 27.499353, 32.737282>,  <31.465647, 27.925123, 32.741398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035164, 27.499353, 32.737282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.123360, 27.730072, 33.051910>,  <32.176277, 27.868504, 33.240688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.123360, 27.730072, 33.051910>,  <32.035164, 27.499353, 32.737282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123360, 27.730072, 33.051910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274904, -0.810473, 0.517264,
		0.935850, 0.102182, -0.337260,
		0.220485, 0.576796, 0.786571,
		32.189507, 27.903111, 33.287880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657398, 27.236145, 32.966969>,  <32.035164, 27.499353, 32.737282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657398, 27.236145, 32.966969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572262, 27.451202, 33.293316>,  <32.521179, 27.580236, 33.489124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.572262, 27.451202, 33.293316>,  <32.657398, 27.236145, 32.966969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572262, 27.451202, 33.293316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162424, -0.803912, 0.572140,
		0.963493, 0.254290, 0.083778,
		-0.212839, 0.537645, 0.815866,
		32.508411, 27.612495, 33.538074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201786, 27.217392, 33.503456>,  <32.657398, 27.236145, 32.966969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201786, 27.217392, 33.503456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868668, 27.318935, 33.700230>,  <32.668797, 27.379862, 33.818295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868668, 27.318935, 33.700230>,  <33.201786, 27.217392, 33.503456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868668, 27.318935, 33.700230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176514, -0.720492, 0.670622,
		0.524680, 0.645327, 0.555216,
		-0.832799, 0.253858, 0.491937,
		32.618828, 27.395092, 33.847809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377743, 27.361095, 34.224838>,  <33.201786, 27.217392, 33.503456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377743, 27.361095, 34.224838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984348, 27.288742, 34.222172>,  <32.748314, 27.245331, 34.220573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.984348, 27.288742, 34.222172>,  <33.377743, 27.361095, 34.224838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984348, 27.288742, 34.222172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107175, -0.611605, 0.783871,
		-0.145866, 0.770208, 0.620888,
		-0.983482, -0.180884, -0.006666,
		32.689304, 27.234476, 34.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251755, 27.182098, 34.979198>,  <33.377743, 27.361095, 34.224838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251755, 27.182098, 34.979198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907284, 27.054913, 34.820568>,  <32.700600, 26.978601, 34.725388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907284, 27.054913, 34.820568>,  <33.251755, 27.182098, 34.979198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907284, 27.054913, 34.820568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119283, -0.631996, 0.765737,
		-0.494112, 0.706739, 0.506332,
		-0.861176, -0.317963, -0.396579,
		32.648930, 26.959524, 34.701595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764324, 27.274588, 35.561913>,  <33.251755, 27.182098, 34.979198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764324, 27.274588, 35.561913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625538, 26.996765, 35.309814>,  <32.542267, 26.830072, 35.158554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625538, 26.996765, 35.309814>,  <32.764324, 27.274588, 35.561913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625538, 26.996765, 35.309814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146626, -0.623556, 0.767905,
		-0.926345, 0.358849, 0.114514,
		-0.346967, -0.694555, -0.630244,
		32.521446, 26.788399, 35.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299088, 26.902304, 35.998859>,  <32.764324, 27.274588, 35.561913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299088, 26.902304, 35.998859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.322590, 26.651981, 35.687756>,  <32.336693, 26.501787, 35.501091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.322590, 26.651981, 35.687756>,  <32.299088, 26.902304, 35.998859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322590, 26.651981, 35.687756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234511, -0.765957, 0.598594,
		-0.970336, 0.147222, -0.191763,
		0.058756, -0.625808, -0.777761,
		32.340218, 26.464239, 35.454426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679848, 26.461655, 35.984180>,  <32.299088, 26.902304, 35.998859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679848, 26.461655, 35.984180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.980391, 26.272308, 35.800274>,  <32.160717, 26.158701, 35.689930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.980391, 26.272308, 35.800274>,  <31.679848, 26.461655, 35.984180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980391, 26.272308, 35.800274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160421, -0.806853, 0.568553,
		-0.640097, -0.353432, -0.682174,
		0.751359, -0.473365, -0.459767,
		32.205799, 26.130299, 35.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547411, 25.806192, 35.908127>,  <31.679848, 26.461655, 35.984180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547411, 25.806192, 35.908127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.939352, 25.756676, 35.845436>,  <32.174519, 25.726965, 35.807823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.939352, 25.756676, 35.845436>,  <31.547411, 25.806192, 35.908127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939352, 25.756676, 35.845436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008340, -0.809405, 0.587191,
		-0.199545, -0.574054, -0.794131,
		0.979853, -0.123794, -0.156725,
		32.233307, 25.719538, 35.798420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662008, 25.084124, 35.593639>,  <31.547411, 25.806192, 35.908127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662008, 25.084124, 35.593639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983278, 25.242130, 35.772022>,  <32.176041, 25.336933, 35.879051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.983278, 25.242130, 35.772022>,  <31.662008, 25.084124, 35.593639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983278, 25.242130, 35.772022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134157, -0.849266, 0.510637,
		0.580444, -0.350302, -0.735101,
		0.803173, 0.395015, 0.445956,
		32.224232, 25.360634, 35.905807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131329, 24.480709, 35.700958>,  <31.662008, 25.084124, 35.593639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131329, 24.480709, 35.700958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280540, 24.768116, 35.935764>,  <32.370068, 24.940559, 36.076649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280540, 24.768116, 35.935764>,  <32.131329, 24.480709, 35.700958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280540, 24.768116, 35.935764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168993, -0.674713, 0.718474,
		0.912301, -0.168808, -0.373109,
		0.373026, 0.718517, 0.587014,
		32.392448, 24.983671, 36.111870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838013, 24.263161, 35.815338>,  <32.131329, 24.480709, 35.700958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838013, 24.263161, 35.815338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717575, 24.521423, 36.096043>,  <32.645313, 24.676382, 36.264465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717575, 24.521423, 36.096043>,  <32.838013, 24.263161, 35.815338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717575, 24.521423, 36.096043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289743, -0.639177, 0.712392,
		0.908511, 0.417826, 0.005377,
		-0.301093, 0.645658, 0.701761,
		32.627247, 24.715120, 36.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846115, 23.582375, 35.457806>,  <32.838013, 24.263161, 35.815338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846115, 23.582375, 35.457806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020473, 23.235931, 35.359947>,  <33.125088, 23.028065, 35.301231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020473, 23.235931, 35.359947>,  <32.846115, 23.582375, 35.457806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020473, 23.235931, 35.359947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374565, 0.421751, -0.825729,
		0.818351, 0.268294, 0.508252,
		0.435894, -0.866109, -0.244647,
		33.151241, 22.976099, 35.286552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681545, 23.715546, 35.375610>,  <32.846115, 23.582375, 35.457806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681545, 23.715546, 35.375610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439579, 23.483810, 35.157089>,  <33.294399, 23.344769, 35.025978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439579, 23.483810, 35.157089>,  <33.681545, 23.715546, 35.375610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439579, 23.483810, 35.157089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126770, 0.607243, -0.784337,
		0.786136, -0.543711, -0.293886,
		-0.604913, -0.579340, -0.546302,
		33.258106, 23.310009, 34.993198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021015, 23.507261, 34.830437>,  <33.681545, 23.715546, 35.375610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021015, 23.507261, 34.830437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645664, 23.448219, 34.705437>,  <33.420452, 23.412794, 34.630436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.645664, 23.448219, 34.705437>,  <34.021015, 23.507261, 34.830437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645664, 23.448219, 34.705437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203532, 0.494759, -0.844860,
		0.279315, -0.856403, -0.434231,
		-0.938380, -0.147603, -0.312499,
		33.364151, 23.403938, 34.611687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154728, 23.224251, 34.113998>,  <34.021015, 23.507261, 34.830437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154728, 23.224251, 34.113998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779594, 23.360512, 34.140602>,  <33.554516, 23.442268, 34.156563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779594, 23.360512, 34.140602>,  <34.154728, 23.224251, 34.113998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779594, 23.360512, 34.140602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150659, 0.572168, -0.806180,
		-0.312680, -0.746043, -0.587921,
		-0.937835, 0.340651, 0.066507,
		33.498245, 23.462708, 34.160553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864311, 22.999348, 33.565247>,  <34.154728, 23.224251, 34.113998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864311, 22.999348, 33.565247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630371, 23.307003, 33.668301>,  <33.490005, 23.491596, 33.730133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.630371, 23.307003, 33.668301>,  <33.864311, 22.999348, 33.565247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630371, 23.307003, 33.668301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040142, 0.344673, -0.937864,
		-0.810147, -0.538169, -0.232457,
		-0.584851, 0.769139, 0.257633,
		33.454914, 23.537745, 33.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323181, 22.940800, 33.036663>,  <33.864311, 22.999348, 33.565247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323181, 22.940800, 33.036663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337601, 23.317463, 33.170517>,  <33.346252, 23.543461, 33.250828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337601, 23.317463, 33.170517>,  <33.323181, 22.940800, 33.036663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337601, 23.317463, 33.170517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139851, 0.336310, -0.931310,
		-0.989516, -0.013227, 0.143815,
		0.036048, 0.941659, 0.334634,
		33.348415, 23.599960, 33.270908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757862, 23.239967, 32.655048>,  <33.323181, 22.940800, 33.036663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757862, 23.239967, 32.655048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.003387, 23.522972, 32.795139>,  <33.150703, 23.692776, 32.879196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.003387, 23.522972, 32.795139>,  <32.757862, 23.239967, 32.655048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003387, 23.522972, 32.795139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064050, 0.486806, -0.871159,
		-0.786851, 0.512294, 0.344122,
		0.613810, 0.707513, 0.350232,
		33.187531, 23.735226, 32.900208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133724, 22.972481, 32.606979>,  <32.757862, 23.239967, 32.655048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133724, 22.972481, 32.606979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.020615, 22.675102, 32.364548>,  <31.952749, 22.496675, 32.219090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.020615, 22.675102, 32.364548>,  <32.133724, 22.972481, 32.606979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020615, 22.675102, 32.364548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282309, -0.668383, 0.688161,
		-0.916702, 0.023492, 0.398881,
		-0.282772, -0.743446, -0.606076,
		31.935783, 22.452068, 32.182724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714756, 22.581280, 33.044159>,  <32.133724, 22.972481, 32.606979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714756, 22.581280, 33.044159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797415, 22.336456, 32.738823>,  <31.847010, 22.189562, 32.555622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797415, 22.336456, 32.738823>,  <31.714756, 22.581280, 33.044159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797415, 22.336456, 32.738823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016761, -0.782276, 0.622707,
		-0.978272, -0.115885, -0.171912,
		0.206645, -0.612058, -0.763336,
		31.859407, 22.152840, 32.509823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240696, 22.055964, 33.077251>,  <31.714756, 22.581280, 33.044159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240696, 22.055964, 33.077251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534763, 21.902779, 32.853512>,  <31.711203, 21.810867, 32.719269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.534763, 21.902779, 32.853512>,  <31.240696, 22.055964, 33.077251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534763, 21.902779, 32.853512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048473, -0.793326, 0.606864,
		-0.676152, -0.473259, -0.564663,
		0.735165, -0.382962, -0.559350,
		31.755314, 21.787889, 32.685707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958138, 21.451220, 32.810284>,  <31.240696, 22.055964, 33.077251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958138, 21.451220, 32.810284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.353725, 21.395008, 32.791546>,  <31.591078, 21.361282, 32.780304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.353725, 21.395008, 32.791546>,  <30.958138, 21.451220, 32.810284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353725, 21.395008, 32.791546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079577, -0.770743, 0.632157,
		-0.124937, -0.621456, -0.773423,
		0.988969, -0.140526, -0.046840,
		31.650415, 21.352850, 32.777493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041269, 20.765930, 32.738304>,  <30.958138, 21.451220, 32.810284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041269, 20.765930, 32.738304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407686, 20.878475, 32.852634>,  <31.627537, 20.946003, 32.921234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407686, 20.878475, 32.852634>,  <31.041269, 20.765930, 32.738304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407686, 20.878475, 32.852634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017919, -0.740651, 0.671651,
		0.400678, -0.610139, -0.683511,
		0.916044, 0.281364, 0.285830,
		31.682499, 20.962885, 32.938385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540346, 20.258204, 32.589413>,  <31.041269, 20.765930, 32.738304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540346, 20.258204, 32.589413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723104, 20.478874, 32.868526>,  <31.832760, 20.611277, 33.035995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.723104, 20.478874, 32.868526>,  <31.540346, 20.258204, 32.589413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723104, 20.478874, 32.868526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137028, -0.818736, 0.557580,
		0.878902, -0.159141, -0.449672,
		0.456896, 0.551676, 0.697782,
		31.860174, 20.644377, 33.077862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107738, 19.890511, 32.786499>,  <31.540346, 20.258204, 32.589413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107738, 19.890511, 32.786499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027515, 20.137630, 33.090630>,  <31.979382, 20.285902, 33.273109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.027515, 20.137630, 33.090630>,  <32.107738, 19.890511, 32.786499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027515, 20.137630, 33.090630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035757, -0.770965, 0.635873,
		0.979029, 0.154716, 0.132531,
		-0.200556, 0.617799, 0.760330,
		31.967348, 20.322969, 33.318729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381676, 19.520437, 33.257492>,  <32.107738, 19.890511, 32.786499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381676, 19.520437, 33.257492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153988, 19.784946, 33.452927>,  <32.017376, 19.943651, 33.570187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153988, 19.784946, 33.452927>,  <32.381676, 19.520437, 33.257492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153988, 19.784946, 33.452927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006495, -0.597845, 0.801585,
		0.822163, 0.453101, 0.344598,
		-0.569215, 0.661272, 0.488583,
		31.983223, 19.983328, 33.599503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587879, 19.434736, 33.904510>,  <32.381676, 19.520437, 33.257492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587879, 19.434736, 33.904510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.222443, 19.593849, 33.938271>,  <32.003181, 19.689318, 33.958527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.222443, 19.593849, 33.938271>,  <32.587879, 19.434736, 33.904510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222443, 19.593849, 33.938271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156582, -0.535683, 0.829774,
		0.375282, 0.744857, 0.551680,
		-0.913589, 0.397783, 0.084401,
		31.948366, 19.713184, 33.963593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.081537, 32.118160, 23.384123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723042, 31.977989, 23.492905>,  <29.507944, 31.893887, 23.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723042, 31.977989, 23.492905>,  <30.081537, 32.118160, 23.384123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723042, 31.977989, 23.492905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436862, -0.803574, 0.404253,
		0.076875, 0.481113, 0.873282,
		-0.896238, -0.350426, 0.271954,
		29.454170, 31.872862, 23.574492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974119, 31.930670, 24.082497>,  <30.081537, 32.118160, 23.384123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974119, 31.930670, 24.082497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699066, 31.709156, 23.894672>,  <29.534035, 31.576248, 23.781979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699066, 31.709156, 23.894672>,  <29.974119, 31.930670, 24.082497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699066, 31.709156, 23.894672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313542, -0.809802, 0.495896,
		-0.654868, 0.193767, 0.730480,
		-0.687632, -0.553783, -0.469559,
		29.492777, 31.543020, 23.753805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570555, 31.643318, 24.657261>,  <29.974119, 31.930670, 24.082497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570555, 31.643318, 24.657261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524435, 31.431400, 24.321159>,  <29.496763, 31.304249, 24.119499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524435, 31.431400, 24.321159>,  <29.570555, 31.643318, 24.657261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524435, 31.431400, 24.321159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148064, -0.845609, 0.512856,
		-0.982234, -0.065279, 0.175941,
		-0.115299, -0.529795, -0.840252,
		29.489845, 31.272461, 24.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162491, 31.043777, 24.922367>,  <29.570555, 31.643318, 24.657261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162491, 31.043777, 24.922367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296606, 30.958740, 24.555241>,  <29.377075, 30.907717, 24.334965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296606, 30.958740, 24.555241>,  <29.162491, 31.043777, 24.922367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296606, 30.958740, 24.555241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065562, -0.977110, 0.202379,
		-0.939831, -0.007683, -0.341554,
		0.335290, -0.212595, -0.917815,
		29.397192, 30.894962, 24.279896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804707, 30.424782, 24.595278>,  <29.162491, 31.043777, 24.922367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804707, 30.424782, 24.595278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169580, 30.431522, 24.431507>,  <29.388506, 30.435566, 24.333244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.169580, 30.431522, 24.431507>,  <28.804707, 30.424782, 24.595278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169580, 30.431522, 24.431507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045619, -0.997119, 0.060601,
		-0.407227, -0.073957, -0.910327,
		0.912187, 0.016849, -0.409428,
		29.443237, 30.436577, 24.308680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757177, 29.838743, 24.050415>,  <28.804707, 30.424782, 24.595278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757177, 29.838743, 24.050415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144140, 29.916908, 24.114830>,  <29.376318, 29.963808, 24.153479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144140, 29.916908, 24.114830>,  <28.757177, 29.838743, 24.050415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144140, 29.916908, 24.114830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170430, -0.972836, 0.156660,
		0.187277, -0.124109, -0.974435,
		0.967409, 0.195412, 0.161038,
		29.434362, 29.975533, 24.163141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132139, 29.297615, 23.709021>,  <28.757177, 29.838743, 24.050415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132139, 29.297615, 23.709021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423223, 29.437790, 23.944862>,  <29.597874, 29.521894, 24.086367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423223, 29.437790, 23.944862>,  <29.132139, 29.297615, 23.709021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423223, 29.437790, 23.944862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187314, -0.928487, 0.320664,
		0.659810, -0.122910, -0.741312,
		0.727712, 0.350435, 0.589602,
		29.641537, 29.542921, 24.121742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740335, 28.854664, 23.674025>,  <29.132139, 29.297615, 23.709021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740335, 28.854664, 23.674025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797159, 29.043926, 24.021805>,  <29.831253, 29.157484, 24.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797159, 29.043926, 24.021805>,  <29.740335, 28.854664, 23.674025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797159, 29.043926, 24.021805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194716, -0.874553, 0.444120,
		0.970518, 0.106205, -0.216369,
		0.142059, 0.473157, 0.869449,
		29.839777, 29.185873, 24.282640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209925, 28.459938, 23.987728>,  <29.740335, 28.854664, 23.674025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209925, 28.459938, 23.987728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135202, 28.682362, 24.311680>,  <30.090368, 28.815815, 24.506050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135202, 28.682362, 24.311680>,  <30.209925, 28.459938, 23.987728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135202, 28.682362, 24.311680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352350, -0.731618, 0.583596,
		0.917035, 0.394380, -0.059256,
		-0.186805, 0.556057, 0.809879,
		30.079161, 28.849178, 24.554644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870327, 28.698414, 24.422384>,  <30.209925, 28.459938, 23.987728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870327, 28.698414, 24.422384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546011, 28.682529, 24.655979>,  <30.351421, 28.672998, 24.796137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546011, 28.682529, 24.655979>,  <30.870327, 28.698414, 24.422384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546011, 28.682529, 24.655979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425742, -0.724699, 0.541807,
		0.401698, 0.687920, 0.604487,
		-0.810791, -0.039713, 0.583987,
		30.302774, 28.670616, 24.831175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184383, 28.499750, 25.141327>,  <30.870327, 28.698414, 24.422384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184383, 28.499750, 25.141327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791222, 28.430664, 25.166836>,  <30.555325, 28.389212, 25.182140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791222, 28.430664, 25.166836>,  <31.184383, 28.499750, 25.141327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791222, 28.430664, 25.166836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173616, -0.754197, 0.633280,
		-0.061281, 0.633526, 0.771291,
		-0.982905, -0.172717, 0.063773,
		30.496349, 28.378849, 25.185968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127972, 28.490431, 25.818424>,  <31.184383, 28.499750, 25.141327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127972, 28.490431, 25.818424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825260, 28.285622, 25.655884>,  <30.643633, 28.162735, 25.558359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825260, 28.285622, 25.655884>,  <31.127972, 28.490431, 25.818424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825260, 28.285622, 25.655884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110093, -0.712598, 0.692881,
		-0.644336, 0.479620, 0.595648,
		-0.756777, -0.512024, -0.406350,
		30.598227, 28.132015, 25.533979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966757, 28.978951, 26.414917>,  <31.127972, 28.490431, 25.818424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966757, 28.978951, 26.414917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313564, 29.100399, 26.572952>,  <31.521648, 29.173267, 26.667774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313564, 29.100399, 26.572952>,  <30.966757, 28.978951, 26.414917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313564, 29.100399, 26.572952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288168, 0.341322, -0.894683,
		-0.406498, 0.889558, 0.208438,
		0.867017, 0.303622, 0.395089,
		31.573669, 29.191486, 26.691479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019737, 29.600765, 26.117718>,  <30.966757, 28.978951, 26.414917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019737, 29.600765, 26.117718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397781, 29.531898, 26.228802>,  <31.624607, 29.490578, 26.295452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397781, 29.531898, 26.228802>,  <31.019737, 29.600765, 26.117718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397781, 29.531898, 26.228802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326749, 0.499712, -0.802199,
		-0.000661, 0.848909, 0.528539,
		0.945111, -0.172169, 0.277710,
		31.681314, 29.480247, 26.312115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384851, 30.178581, 25.951250>,  <31.019737, 29.600765, 26.117718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384851, 30.178581, 25.951250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687216, 29.924744, 26.015606>,  <31.868635, 29.772440, 26.054218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687216, 29.924744, 26.015606>,  <31.384851, 30.178581, 25.951250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687216, 29.924744, 26.015606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543635, 0.471524, -0.694353,
		0.364771, 0.612335, 0.701419,
		0.755912, -0.634596, 0.160888,
		31.913990, 29.734365, 26.063871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057770, 30.620853, 26.034197>,  <31.384851, 30.178581, 25.951250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057770, 30.620853, 26.034197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182095, 30.251091, 25.945770>,  <32.256687, 30.029234, 25.892714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182095, 30.251091, 25.945770>,  <32.057770, 30.620853, 26.034197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182095, 30.251091, 25.945770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564819, 0.366697, -0.739265,
		0.764446, 0.104908, 0.636095,
		0.310809, -0.924407, -0.221066,
		32.275337, 29.973768, 25.879450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861080, 30.623291, 26.052032>,  <32.057770, 30.620853, 26.034197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861080, 30.623291, 26.052032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775684, 30.283447, 25.859123>,  <32.724445, 30.079540, 25.743378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775684, 30.283447, 25.859123>,  <32.861080, 30.623291, 26.052032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775684, 30.283447, 25.859123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762247, 0.163915, -0.626188,
		0.611067, -0.501295, 0.612618,
		-0.213488, -0.849609, -0.482273,
		32.711639, 30.028564, 25.714441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408710, 30.175257, 26.123241>,  <32.861080, 30.623291, 26.052032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408710, 30.175257, 26.123241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209579, 30.092506, 25.786346>,  <33.090099, 30.042856, 25.584209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209579, 30.092506, 25.786346>,  <33.408710, 30.175257, 26.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209579, 30.092506, 25.786346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795899, 0.276824, -0.538436,
		0.344541, -0.938388, 0.026840,
		-0.497832, -0.206875, -0.842239,
		33.060230, 30.030445, 25.533674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909561, 29.739403, 25.576843>,  <33.408710, 30.175257, 26.123241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909561, 29.739403, 25.576843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592773, 29.886375, 25.381794>,  <33.402699, 29.974560, 25.264765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592773, 29.886375, 25.381794>,  <33.909561, 29.739403, 25.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592773, 29.886375, 25.381794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609644, 0.432197, -0.664485,
		-0.033406, -0.823528, -0.566292,
		-0.791971, 0.367434, -0.487621,
		33.355183, 29.996605, 25.235508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997906, 29.476252, 24.912899>,  <33.909561, 29.739403, 25.576843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997906, 29.476252, 24.912899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752430, 29.789696, 24.874229>,  <33.605145, 29.977762, 24.851027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752430, 29.789696, 24.874229>,  <33.997906, 29.476252, 24.912899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752430, 29.789696, 24.874229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713399, 0.497861, -0.493149,
		-0.338305, -0.371607, -0.864556,
		-0.613687, 0.783609, -0.096675,
		33.568325, 30.024778, 24.845226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094238, 29.694302, 24.290073>,  <33.997906, 29.476252, 24.912899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094238, 29.694302, 24.290073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957767, 30.029331, 24.460754>,  <33.875885, 30.230349, 24.563162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957767, 30.029331, 24.460754>,  <34.094238, 29.694302, 24.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957767, 30.029331, 24.460754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548149, 0.546038, -0.633541,
		-0.763632, 0.017749, -0.645408,
		-0.341173, 0.837572, 0.426701,
		33.855415, 30.280603, 24.588764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849304, 30.081362, 23.728029>,  <34.094238, 29.694302, 24.290073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849304, 30.081362, 23.728029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877045, 30.363262, 24.010452>,  <33.893688, 30.532402, 24.179907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877045, 30.363262, 24.010452>,  <33.849304, 30.081362, 23.728029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877045, 30.363262, 24.010452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462349, 0.604451, -0.648747,
		-0.883982, 0.371437, -0.283920,
		0.069353, 0.704750, 0.706058,
		33.897850, 30.574688, 24.222269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496059, 30.698978, 23.484335>,  <33.849304, 30.081362, 23.728029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496059, 30.698978, 23.484335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769516, 30.817429, 23.751152>,  <33.933590, 30.888498, 23.911243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769516, 30.817429, 23.751152>,  <33.496059, 30.698978, 23.484335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769516, 30.817429, 23.751152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395620, 0.617682, -0.679672,
		-0.613289, 0.728546, 0.305118,
		0.683638, 0.296125, 0.667045,
		33.974609, 30.906265, 23.951265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597450, 31.378271, 23.284275>,  <33.496059, 30.698978, 23.484335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597450, 31.378271, 23.284275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899841, 31.303307, 23.535152>,  <34.081276, 31.258327, 23.685678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899841, 31.303307, 23.535152>,  <33.597450, 31.378271, 23.284275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899841, 31.303307, 23.535152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602231, 0.574624, -0.554189,
		-0.256537, 0.796671, 0.547270,
		0.755980, -0.187413, 0.627192,
		34.126637, 31.247084, 23.723310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886692, 32.081745, 23.453203>,  <33.597450, 31.378271, 23.284275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886692, 32.081745, 23.453203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167179, 31.814346, 23.552322>,  <34.335472, 31.653906, 23.611794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167179, 31.814346, 23.552322>,  <33.886692, 32.081745, 23.453203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167179, 31.814346, 23.552322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693789, 0.559799, -0.453081,
		0.164168, 0.489627, 0.856338,
		0.701218, -0.668499, 0.247796,
		34.377544, 31.613796, 23.626661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471653, 32.444630, 23.815914>,  <33.886692, 32.081745, 23.453203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471653, 32.444630, 23.815914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630116, 32.105942, 23.673859>,  <34.725193, 31.902729, 23.588625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630116, 32.105942, 23.673859>,  <34.471653, 32.444630, 23.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630116, 32.105942, 23.673859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729100, 0.525189, -0.438851,
		0.558098, -0.085076, 0.825402,
		0.396156, -0.846722, -0.355136,
		34.748962, 31.851925, 23.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002705, 33.028927, 24.014542>,  <34.471653, 32.444630, 23.815914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002705, 33.028927, 24.014542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938427, 33.394577, 24.163433>,  <33.899860, 33.613968, 24.252768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938427, 33.394577, 24.163433>,  <34.002705, 33.028927, 24.014542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938427, 33.394577, 24.163433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559600, 0.226278, -0.797274,
		-0.813035, -0.336414, 0.475183,
		-0.160691, 0.914125, 0.372229,
		33.890221, 33.668816, 24.275103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201580, 33.332447, 24.143761>,  <34.002705, 33.028927, 24.014542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201580, 33.332447, 24.143761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534203, 33.500259, 23.998150>,  <33.733776, 33.600945, 23.910784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534203, 33.500259, 23.998150>,  <33.201580, 33.332447, 24.143761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534203, 33.500259, 23.998150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398500, -0.005942, -0.917149,
		-0.386932, 0.907723, 0.162241,
		0.831554, 0.419528, -0.364026,
		33.783669, 33.626118, 23.888943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517952, 33.462639, 23.981642>,  <33.201580, 33.332447, 24.143761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517952, 33.462639, 23.981642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158039, 33.494724, 24.153206>,  <31.942093, 33.513973, 24.256144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158039, 33.494724, 24.153206>,  <32.517952, 33.462639, 23.981642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158039, 33.494724, 24.153206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416370, -0.136188, 0.898938,
		0.130516, 0.987430, 0.089143,
		-0.899779, 0.080209, 0.428911,
		31.888105, 33.518787, 24.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558613, 33.990330, 24.629219>,  <32.517952, 33.462639, 23.981642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558613, 33.990330, 24.629219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224190, 33.783821, 24.703484>,  <32.023537, 33.659916, 24.748043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224190, 33.783821, 24.703484>,  <32.558613, 33.990330, 24.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224190, 33.783821, 24.703484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316897, -0.178178, 0.931573,
		-0.447861, 0.837687, 0.312571,
		-0.836061, -0.516268, 0.185661,
		31.973372, 33.628941, 24.759182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356419, 34.138340, 25.375048>,  <32.558613, 33.990330, 24.629219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356419, 34.138340, 25.375048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119156, 33.829777, 25.282875>,  <31.976797, 33.644638, 25.227571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119156, 33.829777, 25.282875>,  <32.356419, 34.138340, 25.375048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119156, 33.829777, 25.282875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045001, -0.317541, 0.947176,
		-0.803827, 0.551456, 0.223066,
		-0.593158, -0.771404, -0.230432,
		31.941208, 33.598354, 25.213745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821764, 34.071339, 25.871080>,  <32.356419, 34.138340, 25.375048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821764, 34.071339, 25.871080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871977, 33.707832, 25.711887>,  <31.902105, 33.489731, 25.616371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871977, 33.707832, 25.711887>,  <31.821764, 34.071339, 25.871080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871977, 33.707832, 25.711887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197938, -0.370147, 0.907641,
		-0.972143, -0.192716, 0.133413,
		0.125534, -0.908764, -0.397982,
		31.909637, 33.435204, 25.592493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360661, 33.621368, 26.227825>,  <31.821764, 34.071339, 25.871080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360661, 33.621368, 26.227825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657671, 33.402905, 26.072720>,  <31.835876, 33.271824, 25.979656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657671, 33.402905, 26.072720>,  <31.360661, 33.621368, 26.227825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657671, 33.402905, 26.072720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118397, -0.462777, 0.878533,
		-0.659271, -0.698244, -0.278960,
		0.742526, -0.546163, -0.387765,
		31.880428, 33.239056, 25.956390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050583, 33.018421, 26.322935>,  <31.360661, 33.621368, 26.227825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050583, 33.018421, 26.322935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448320, 32.996094, 26.286793>,  <31.686962, 32.982697, 26.265108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448320, 32.996094, 26.286793>,  <31.050583, 33.018421, 26.322935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448320, 32.996094, 26.286793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051984, -0.486107, 0.872352,
		-0.092612, -0.872115, -0.480456,
		0.994344, -0.055814, -0.090356,
		31.746624, 32.979351, 26.259686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156160, 32.430340, 26.459322>,  <31.050583, 33.018421, 26.322935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156160, 32.430340, 26.459322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518148, 32.591072, 26.515263>,  <31.735342, 32.687511, 26.548826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518148, 32.591072, 26.515263>,  <31.156160, 32.430340, 26.459322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518148, 32.591072, 26.515263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068529, -0.462063, 0.884195,
		0.419920, -0.790587, -0.445691,
		0.904970, 0.401834, 0.139852,
		31.789639, 32.711624, 26.557219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599447, 31.860968, 26.552967>,  <31.156160, 32.430340, 26.459322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599447, 31.860968, 26.552967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801695, 32.174301, 26.697598>,  <31.923044, 32.362301, 26.784376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801695, 32.174301, 26.697598>,  <31.599447, 31.860968, 26.552967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801695, 32.174301, 26.697598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383444, -0.579457, 0.719166,
		0.772865, -0.224981, -0.593350,
		0.505619, 0.783335, 0.361574,
		31.953381, 32.409302, 26.806070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210178, 31.633064, 26.724968>,  <31.599447, 31.860968, 26.552967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210178, 31.633064, 26.724968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191185, 31.961430, 26.952599>,  <32.179790, 32.158447, 27.089178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191185, 31.961430, 26.952599>,  <32.210178, 31.633064, 26.724968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191185, 31.961430, 26.952599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382019, -0.511484, 0.769705,
		0.922934, 0.253946, -0.289318,
		-0.047482, 0.820912, 0.569078,
		32.176941, 32.207703, 27.123322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814903, 31.658382, 27.010605>,  <32.210178, 31.633064, 26.724968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814903, 31.658382, 27.010605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603748, 31.900387, 27.249031>,  <32.477055, 32.045589, 27.392086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603748, 31.900387, 27.249031>,  <32.814903, 31.658382, 27.010605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603748, 31.900387, 27.249031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424894, -0.419554, 0.802147,
		0.735389, 0.676711, -0.035586,
		-0.527891, 0.605010, 0.596066,
		32.445381, 32.081890, 27.427851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248554, 31.855165, 27.520897>,  <32.814903, 31.658382, 27.010605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248554, 31.855165, 27.520897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894222, 31.942860, 27.684479>,  <32.681625, 31.995476, 27.782629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894222, 31.942860, 27.684479>,  <33.248554, 31.855165, 27.520897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894222, 31.942860, 27.684479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206858, -0.602338, 0.770973,
		0.415354, 0.767545, 0.488217,
		-0.885828, 0.219235, 0.408956,
		32.628475, 32.008629, 27.807165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307621, 31.826508, 28.225874>,  <33.248554, 31.855165, 27.520897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307621, 31.826508, 28.225874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909687, 31.805336, 28.191208>,  <32.670929, 31.792633, 28.170408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909687, 31.805336, 28.191208>,  <33.307621, 31.826508, 28.225874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909687, 31.805336, 28.191208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049799, -0.489467, 0.870598,
		-0.088498, 0.870414, 0.484301,
		-0.994831, -0.052928, -0.086663,
		32.611237, 31.789457, 28.165209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049961, 32.119556, 28.840876>,  <33.307621, 31.826508, 28.225874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049961, 32.119556, 28.840876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750507, 31.894749, 28.700203>,  <32.570835, 31.759865, 28.615799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750507, 31.894749, 28.700203>,  <33.049961, 32.119556, 28.840876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750507, 31.894749, 28.700203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203175, -0.310450, 0.928623,
		-0.631080, 0.766655, 0.118227,
		-0.748637, -0.562015, -0.351684,
		32.525917, 31.726145, 28.594698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465427, 32.108101, 29.365622>,  <33.049961, 32.119556, 28.840876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465427, 32.108101, 29.365622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384243, 31.794655, 29.130756>,  <32.335533, 31.606588, 28.989838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384243, 31.794655, 29.130756>,  <32.465427, 32.108101, 29.365622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384243, 31.794655, 29.130756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230604, -0.544523, 0.806422,
		-0.951645, 0.299075, -0.070187,
		-0.202962, -0.783613, -0.587161,
		32.323353, 31.559570, 28.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797958, 31.937799, 29.675549>,  <32.465427, 32.108101, 29.365622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797958, 31.937799, 29.675549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962397, 31.632195, 29.476639>,  <32.061058, 31.448832, 29.357292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962397, 31.632195, 29.476639>,  <31.797958, 31.937799, 29.675549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962397, 31.632195, 29.476639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087323, -0.575998, 0.812774,
		-0.907400, -0.290704, -0.303506,
		0.411095, -0.764015, -0.497276,
		32.085724, 31.402990, 29.327456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257025, 31.358618, 29.607838>,  <31.797958, 31.937799, 29.675549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257025, 31.358618, 29.607838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605083, 31.176208, 29.533123>,  <31.813919, 31.066763, 29.488295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605083, 31.176208, 29.533123>,  <31.257025, 31.358618, 29.607838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605083, 31.176208, 29.533123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118454, -0.561471, 0.818974,
		-0.478346, -0.690502, -0.542580,
		0.870146, -0.456023, -0.186785,
		31.866127, 31.039402, 29.477087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205416, 30.640179, 29.599712>,  <31.257025, 31.358618, 29.607838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205416, 30.640179, 29.599712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596001, 30.686260, 29.672646>,  <31.830353, 30.713909, 29.716406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596001, 30.686260, 29.672646>,  <31.205416, 30.640179, 29.599712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596001, 30.686260, 29.672646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093322, -0.536485, 0.838734,
		0.194445, -0.836010, -0.513107,
		0.976464, 0.115203, 0.182335,
		31.888941, 30.720821, 29.727346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450418, 29.946457, 29.799091>,  <31.205416, 30.640179, 29.599712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450418, 29.946457, 29.799091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746080, 30.197308, 29.897369>,  <31.923477, 30.347818, 29.956337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746080, 30.197308, 29.897369>,  <31.450418, 29.946457, 29.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746080, 30.197308, 29.897369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140451, -0.500276, 0.854399,
		0.658731, -0.597024, -0.457861,
		0.739153, 0.627126, 0.245695,
		31.967827, 30.385445, 29.971077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065624, 29.526175, 29.973442>,  <31.450418, 29.946457, 29.799091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065624, 29.526175, 29.973442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119503, 29.875980, 30.159809>,  <32.151833, 30.085863, 30.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119503, 29.875980, 30.159809>,  <32.065624, 29.526175, 29.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119503, 29.875980, 30.159809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208871, -0.484698, 0.849376,
		0.968622, -0.017094, -0.247950,
		0.134700, 0.874514, 0.465919,
		32.159912, 30.138334, 30.299585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665882, 29.439659, 30.498878>,  <32.065624, 29.526175, 29.973442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665882, 29.439659, 30.498878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478672, 29.775379, 30.609531>,  <32.366344, 29.976812, 30.675922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478672, 29.775379, 30.609531>,  <32.665882, 29.439659, 30.498878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478672, 29.775379, 30.609531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038535, -0.293352, 0.955228,
		0.882874, 0.457731, 0.104954,
		-0.468026, 0.839301, 0.276631,
		32.338264, 30.027170, 30.692520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983391, 29.605858, 31.110291>,  <32.665882, 29.439659, 30.498878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983391, 29.605858, 31.110291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628647, 29.790421, 31.119915>,  <32.415798, 29.901157, 31.125689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628647, 29.790421, 31.119915>,  <32.983391, 29.605858, 31.110291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628647, 29.790421, 31.119915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123468, -0.286855, 0.949984,
		0.445230, 0.839535, 0.311370,
		-0.886863, 0.461405, 0.024060,
		32.362587, 29.928843, 31.127132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990593, 29.998432, 31.652397>,  <32.983391, 29.605858, 31.110291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990593, 29.998432, 31.652397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608742, 29.916187, 31.566231>,  <32.379631, 29.866840, 31.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608742, 29.916187, 31.566231>,  <32.990593, 29.998432, 31.652397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608742, 29.916187, 31.566231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125076, -0.379634, 0.916643,
		-0.270254, 0.901998, 0.336693,
		-0.954630, -0.205614, -0.215417,
		32.322353, 29.854504, 31.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560425, 30.270100, 32.221149>,  <32.990593, 29.998432, 31.652397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560425, 30.270100, 32.221149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331074, 29.989437, 32.051956>,  <32.193462, 29.821039, 31.950439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331074, 29.989437, 32.051956>,  <32.560425, 30.270100, 32.221149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331074, 29.989437, 32.051956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285655, -0.312675, 0.905890,
		-0.767881, 0.640243, -0.021151,
		-0.573376, -0.701657, -0.422986,
		32.159061, 29.778940, 31.925060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044205, 30.216885, 32.647976>,  <32.560425, 30.270100, 32.221149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044205, 30.216885, 32.647976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983908, 29.874313, 32.450470>,  <31.947731, 29.668770, 32.331966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983908, 29.874313, 32.450470>,  <32.044205, 30.216885, 32.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983908, 29.874313, 32.450470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351398, -0.420436, 0.836512,
		-0.924011, 0.299604, -0.237572,
		-0.150739, -0.856429, -0.493768,
		31.938686, 29.617384, 32.302341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485916, 29.837423, 32.960896>,  <32.044205, 30.216885, 32.647976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485916, 29.837423, 32.960896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661058, 29.546165, 32.749958>,  <31.766144, 29.371410, 32.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661058, 29.546165, 32.749958>,  <31.485916, 29.837423, 32.960896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661058, 29.546165, 32.749958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080669, -0.616010, 0.783597,
		-0.895419, -0.300562, -0.328462,
		0.437856, -0.728144, -0.527341,
		31.792416, 29.327723, 32.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134874, 29.206789, 33.050461>,  <31.485916, 29.837423, 32.960896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134874, 29.206789, 33.050461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501560, 29.100052, 32.931515>,  <31.721573, 29.036009, 32.860149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501560, 29.100052, 32.931515>,  <31.134874, 29.206789, 33.050461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501560, 29.100052, 32.931515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008512, -0.757144, 0.653193,
		-0.399447, -0.596262, -0.696358,
		0.916717, -0.266844, -0.297363,
		31.776575, 29.019999, 32.842304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522335, 28.799362, 33.008381>,  <31.134874, 29.206789, 33.050461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522335, 28.799362, 33.008381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165304, 28.621849, 33.040295>,  <29.951086, 28.515341, 33.059444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165304, 28.621849, 33.040295>,  <30.522335, 28.799362, 33.008381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165304, 28.621849, 33.040295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411455, 0.729271, -0.546688,
		0.184426, -0.520789, -0.833526,
		-0.892576, -0.443782, 0.079785,
		29.897532, 28.488714, 33.064232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263336, 28.533356, 32.363071>,  <30.522335, 28.799362, 33.008381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263336, 28.533356, 32.363071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946396, 28.606728, 32.595806>,  <29.756231, 28.650751, 32.735447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946396, 28.606728, 32.595806>,  <30.263336, 28.533356, 32.363071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946396, 28.606728, 32.595806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249822, 0.772535, -0.583762,
		-0.556567, -0.607901, -0.566295,
		-0.792352, 0.183429, 0.581834,
		29.708691, 28.661757, 32.770355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689610, 28.502348, 31.913752>,  <30.263336, 28.533356, 32.363071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689610, 28.502348, 31.913752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578482, 28.690441, 32.248821>,  <29.511805, 28.803297, 32.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578482, 28.690441, 32.248821>,  <29.689610, 28.502348, 31.913752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578482, 28.690441, 32.248821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444615, 0.710038, -0.546043,
		-0.851548, -0.524144, 0.011810,
		-0.277820, 0.470232, 0.837674,
		29.495136, 28.831511, 32.500122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007803, 28.636440, 31.795736>,  <29.689610, 28.502348, 31.913752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007803, 28.636440, 31.795736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109291, 28.908981, 32.070366>,  <29.170183, 29.072506, 32.235146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109291, 28.908981, 32.070366>,  <29.007803, 28.636440, 31.795736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109291, 28.908981, 32.070366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307844, 0.729774, -0.610461,
		-0.916983, -0.056472, 0.394909,
		0.253720, 0.681353, 0.686575,
		29.185408, 29.113388, 32.276337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515089, 29.094597, 31.639248>,  <29.007803, 28.636440, 31.795736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515089, 29.094597, 31.639248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771013, 29.318035, 31.850384>,  <28.924568, 29.452097, 31.977066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771013, 29.318035, 31.850384>,  <28.515089, 29.094597, 31.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771013, 29.318035, 31.850384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283401, 0.809898, -0.513566,
		-0.714372, 0.178994, 0.676487,
		0.639810, 0.558594, 0.527841,
		28.962955, 29.485613, 32.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
