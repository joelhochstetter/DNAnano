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
	<24.287722, 34.652496, 35.304611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.163151, 34.878986, 34.999352>,  <24.088408, 35.014881, 34.816196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.163151, 34.878986, 34.999352>,  <24.287722, 34.652496, 35.304611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.163151, 34.878986, 34.999352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585629, 0.518097, 0.623390,
		0.748366, 0.641064, 0.170249,
		-0.311428, 0.566226, -0.763152,
		24.069723, 35.048855, 34.770405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072878, 34.508816, 35.467068>,  <24.287722, 34.652496, 35.304611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072878, 34.508816, 35.467068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132772, 34.524414, 35.862251>,  <25.168709, 34.533772, 36.099361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.132772, 34.524414, 35.862251>,  <25.072878, 34.508816, 35.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.132772, 34.524414, 35.862251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176413, -0.984242, 0.012110,
		0.972860, 0.172475, -0.154256,
		0.149737, 0.038994, 0.987957,
		25.177694, 34.536114, 36.158638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824570, 34.417980, 35.768780>,  <25.072878, 34.508816, 35.467068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824570, 34.417980, 35.768780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564257, 34.293491, 36.045799>,  <25.408070, 34.218800, 36.212009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564257, 34.293491, 36.045799>,  <25.824570, 34.417980, 35.768780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564257, 34.293491, 36.045799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165506, -0.948346, -0.270645,
		0.741006, -0.061510, 0.668676,
		-0.650783, -0.311219, 0.692549,
		25.369022, 34.200127, 36.253563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168140, 33.724392, 35.479801>,  <25.824570, 34.417980, 35.768780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168140, 33.724392, 35.479801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530548, 33.736301, 35.648678>,  <26.747993, 33.743446, 35.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530548, 33.736301, 35.648678>,  <26.168140, 33.724392, 35.479801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530548, 33.736301, 35.648678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320846, 0.602231, -0.731010,
		-0.276023, 0.797767, 0.536078,
		0.906018, 0.029777, 0.422189,
		26.802353, 33.745235, 35.775333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501362, 34.459801, 35.539745>,  <26.168140, 33.724392, 35.479801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501362, 34.459801, 35.539745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781523, 34.176838, 35.501762>,  <26.949619, 34.007061, 35.478973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781523, 34.176838, 35.501762>,  <26.501362, 34.459801, 35.539745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781523, 34.176838, 35.501762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393990, 0.494124, -0.774992,
		0.595154, 0.505393, 0.624796,
		0.700402, -0.707403, -0.094960,
		26.991644, 33.964619, 35.473274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157980, 34.783913, 35.629883>,  <26.501362, 34.459801, 35.539745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157980, 34.783913, 35.629883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186512, 34.449051, 35.412964>,  <27.203630, 34.248135, 35.282814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186512, 34.449051, 35.412964>,  <27.157980, 34.783913, 35.629883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186512, 34.449051, 35.412964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416645, 0.518986, -0.746365,
		0.906267, -0.172707, 0.385815,
		0.071330, -0.837153, -0.542297,
		27.207911, 34.197906, 35.250275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740559, 34.836452, 35.214699>,  <27.157980, 34.783913, 35.629883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740559, 34.836452, 35.214699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526312, 34.570450, 35.006516>,  <27.397764, 34.410847, 34.881603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526312, 34.570450, 35.006516>,  <27.740559, 34.836452, 35.214699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526312, 34.570450, 35.006516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197271, 0.500737, -0.842820,
		0.821095, -0.554101, -0.137017,
		-0.535618, -0.665007, -0.520461,
		27.365627, 34.370949, 34.850376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175770, 34.793774, 34.579010>,  <27.740559, 34.836452, 35.214699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175770, 34.793774, 34.579010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821281, 34.638031, 34.478600>,  <27.608587, 34.544586, 34.418354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.821281, 34.638031, 34.478600>,  <28.175770, 34.793774, 34.579010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821281, 34.638031, 34.478600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062030, 0.437254, -0.897197,
		0.459095, -0.810684, -0.363351,
		-0.886219, -0.389360, -0.251028,
		27.555414, 34.521225, 34.403294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406269, 34.353321, 33.987488>,  <28.175770, 34.793774, 34.579010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406269, 34.353321, 33.987488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009945, 34.404194, 33.969086>,  <27.772150, 34.434719, 33.958046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009945, 34.404194, 33.969086>,  <28.406269, 34.353321, 33.987488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009945, 34.404194, 33.969086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079139, 0.269376, -0.959778,
		-0.109676, -0.954600, -0.276966,
		-0.990812, 0.127183, -0.046002,
		27.712702, 34.442348, 33.955284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312548, 34.047234, 33.441715>,  <28.406269, 34.353321, 33.987488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312548, 34.047234, 33.441715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993490, 34.283474, 33.490646>,  <27.802055, 34.425217, 33.520004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.993490, 34.283474, 33.490646>,  <28.312548, 34.047234, 33.441715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993490, 34.283474, 33.490646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228670, 0.483808, -0.844772,
		-0.558103, -0.645852, -0.520957,
		-0.797641, 0.590597, 0.122327,
		27.754198, 34.460651, 33.527344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185806, 34.095154, 32.752163>,  <28.312548, 34.047234, 33.441715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185806, 34.095154, 32.752163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914143, 34.338654, 32.916195>,  <27.751144, 34.484753, 33.014614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914143, 34.338654, 32.916195>,  <28.185806, 34.095154, 32.752163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914143, 34.338654, 32.916195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206848, 0.694789, -0.688827,
		-0.704243, -0.382999, -0.597791,
		-0.679158, 0.608753, 0.410077,
		27.710396, 34.521278, 33.039219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616377, 34.276443, 32.263393>,  <28.185806, 34.095154, 32.752163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616377, 34.276443, 32.263393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717554, 34.555157, 32.531872>,  <27.778261, 34.722385, 32.692959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717554, 34.555157, 32.531872>,  <27.616377, 34.276443, 32.263393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717554, 34.555157, 32.531872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234733, 0.628832, -0.741263,
		-0.938573, 0.345050, -0.004500,
		0.252943, 0.696786, 0.671200,
		27.793436, 34.764191, 32.733231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130714, 34.752056, 32.232830>,  <27.616377, 34.276443, 32.263393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130714, 34.752056, 32.232830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423645, 34.965065, 32.402592>,  <27.599403, 35.092869, 32.504448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423645, 34.965065, 32.402592>,  <27.130714, 34.752056, 32.232830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423645, 34.965065, 32.402592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072329, 0.558892, -0.826080,
		-0.677100, 0.635658, 0.370775,
		0.732328, 0.532522, 0.424402,
		27.643343, 35.124821, 32.529911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896967, 35.375790, 32.437012>,  <27.130714, 34.752056, 32.232830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896967, 35.375790, 32.437012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288973, 35.435123, 32.383999>,  <27.524176, 35.470726, 32.352192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288973, 35.435123, 32.383999>,  <26.896967, 35.375790, 32.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288973, 35.435123, 32.383999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198901, 0.740201, -0.642293,
		0.002825, 0.655819, 0.754914,
		0.980016, 0.148338, -0.132534,
		27.582977, 35.479626, 32.344238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970942, 36.024529, 32.194180>,  <26.896967, 35.375790, 32.437012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970942, 36.024529, 32.194180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348480, 35.934788, 32.097168>,  <27.575003, 35.880943, 32.038960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348480, 35.934788, 32.097168>,  <26.970942, 36.024529, 32.194180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348480, 35.934788, 32.097168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042125, 0.646361, -0.761868,
		0.327690, 0.729303, 0.600614,
		0.943846, -0.224356, -0.242527,
		27.631634, 35.867481, 32.024410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216661, 36.624493, 32.015171>,  <26.970942, 36.024529, 32.194180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216661, 36.624493, 32.015171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458963, 36.358124, 31.840996>,  <27.604343, 36.198303, 31.736490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458963, 36.358124, 31.840996>,  <27.216661, 36.624493, 32.015171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458963, 36.358124, 31.840996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109630, 0.611912, -0.783291,
		0.788064, 0.426744, 0.443673,
		0.605753, -0.665923, -0.435442,
		27.640690, 36.158348, 31.710363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865025, 36.928612, 31.809029>,  <27.216661, 36.624493, 32.015171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865025, 36.928612, 31.809029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839342, 36.609982, 31.568581>,  <27.823933, 36.418804, 31.424311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839342, 36.609982, 31.568581>,  <27.865025, 36.928612, 31.809029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839342, 36.609982, 31.568581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154290, 0.587197, -0.794603,
		0.985937, -0.143766, 0.085201,
		-0.064207, -0.796575, -0.601121,
		27.820080, 36.371010, 31.388245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312002, 37.053951, 31.323738>,  <27.865025, 36.928612, 31.809029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312002, 37.053951, 31.323738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099497, 36.768814, 31.140602>,  <27.971994, 36.597733, 31.030722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099497, 36.768814, 31.140602>,  <28.312002, 37.053951, 31.323738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099497, 36.768814, 31.140602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104881, 0.480914, -0.870472,
		0.840691, -0.510466, -0.180727,
		-0.531261, -0.712844, -0.457838,
		27.940119, 36.554962, 31.003250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690920, 36.725914, 30.739429>,  <28.312002, 37.053951, 31.323738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690920, 36.725914, 30.739429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313389, 36.621147, 30.658846>,  <28.086870, 36.558285, 30.610497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313389, 36.621147, 30.658846>,  <28.690920, 36.725914, 30.739429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313389, 36.621147, 30.658846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126000, 0.278343, -0.952181,
		0.305476, -0.924078, -0.229704,
		-0.943826, -0.261926, -0.201461,
		28.030241, 36.542572, 30.598408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769228, 36.458652, 30.130831>,  <28.690920, 36.725914, 30.739429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769228, 36.458652, 30.130831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384506, 36.564487, 30.158894>,  <28.153673, 36.627987, 30.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384506, 36.564487, 30.158894>,  <28.769228, 36.458652, 30.130831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384506, 36.564487, 30.158894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046998, 0.412117, -0.909918,
		-0.269667, -0.871867, -0.408812,
		-0.961806, 0.264588, 0.070159,
		28.095964, 36.643864, 30.179941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420589, 36.191479, 29.584972>,  <28.769228, 36.458652, 30.130831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420589, 36.191479, 29.584972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204449, 36.514297, 29.680218>,  <28.074764, 36.707989, 29.737364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204449, 36.514297, 29.680218>,  <28.420589, 36.191479, 29.584972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204449, 36.514297, 29.680218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244748, 0.421491, -0.873180,
		-0.805059, -0.413546, -0.425275,
		-0.540350, 0.807047, 0.238111,
		28.042343, 36.756413, 29.751652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287447, 36.559174, 29.012102>,  <28.420589, 36.191479, 29.584972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287447, 36.559174, 29.012102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187176, 36.846966, 29.271181>,  <28.127012, 37.019642, 29.426628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.187176, 36.846966, 29.271181>,  <28.287447, 36.559174, 29.012102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187176, 36.846966, 29.271181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084072, 0.682710, -0.725836,
		-0.964412, -0.127500, -0.231630,
		-0.250680, 0.719479, 0.647695,
		28.111971, 37.062809, 29.465490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863449, 37.038689, 28.655243>,  <28.287447, 36.559174, 29.012102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863449, 37.038689, 28.655243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930725, 37.277187, 28.969236>,  <27.971090, 37.420288, 29.157633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930725, 37.277187, 28.969236>,  <27.863449, 37.038689, 28.655243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930725, 37.277187, 28.969236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279413, 0.734830, -0.618023,
		-0.945326, 0.323279, -0.043010,
		0.168189, 0.596251, 0.784983,
		27.981182, 37.456062, 29.204731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540449, 37.660667, 28.431206>,  <27.863449, 37.038689, 28.655243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540449, 37.660667, 28.431206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759521, 37.770836, 28.747227>,  <27.890965, 37.836937, 28.936840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759521, 37.770836, 28.747227>,  <27.540449, 37.660667, 28.431206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759521, 37.770836, 28.747227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140628, 0.961134, -0.237581,
		-0.824784, 0.019015, 0.565129,
		0.547682, 0.275426, 0.790054,
		27.923826, 37.853462, 28.984243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102043, 38.014034, 28.863926>,  <27.540449, 37.660667, 28.431206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102043, 38.014034, 28.863926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471439, 38.145950, 28.942312>,  <27.693077, 38.225101, 28.989344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471439, 38.145950, 28.942312>,  <27.102043, 38.014034, 28.863926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471439, 38.145950, 28.942312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246987, 0.902012, -0.354079,
		-0.293538, 0.278587, 0.914454,
		0.923490, 0.329794, 0.195968,
		27.748486, 38.244888, 29.001102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087423, 38.598179, 29.351030>,  <27.102043, 38.014034, 28.863926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087423, 38.598179, 29.351030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423071, 38.630852, 29.135920>,  <27.624460, 38.650455, 29.006853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423071, 38.630852, 29.135920>,  <27.087423, 38.598179, 29.351030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423071, 38.630852, 29.135920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193272, 0.968919, -0.154408,
		0.508451, 0.233504, 0.828827,
		0.839121, 0.081680, -0.537778,
		27.674807, 38.655357, 28.974586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562773, 39.141529, 29.606319>,  <27.087423, 38.598179, 29.351030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562773, 39.141529, 29.606319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656527, 39.088375, 29.221111>,  <27.712778, 39.056480, 28.989986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656527, 39.088375, 29.221111>,  <27.562773, 39.141529, 29.606319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656527, 39.088375, 29.221111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048464, 0.987784, -0.148100,
		0.970935, 0.081383, 0.225080,
		0.234384, -0.132887, -0.963019,
		27.726841, 39.048508, 28.932205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229885, 39.484318, 29.544479>,  <27.562773, 39.141529, 29.606319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229885, 39.484318, 29.544479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955910, 39.456940, 29.254328>,  <27.791525, 39.440514, 29.080236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955910, 39.456940, 29.254328>,  <28.229885, 39.484318, 29.544479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955910, 39.456940, 29.254328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138199, 0.989709, 0.037101,
		0.715376, 0.125659, -0.687348,
		-0.684937, -0.068450, -0.725380,
		27.750429, 39.436405, 29.036715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452799, 39.902359, 29.074049>,  <28.229885, 39.484318, 29.544479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452799, 39.902359, 29.074049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054363, 39.894375, 29.039627>,  <27.815302, 39.889584, 29.018974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054363, 39.894375, 29.039627>,  <28.452799, 39.902359, 29.074049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054363, 39.894375, 29.039627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026934, 0.996379, 0.080638,
		0.084134, 0.082641, -0.993021,
		-0.996090, -0.019962, -0.086055,
		27.755537, 39.888386, 29.013811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294601, 40.511333, 28.862284>,  <28.452799, 39.902359, 29.074049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294601, 40.511333, 28.862284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480482, 40.587936, 28.516479>,  <28.592010, 40.633896, 28.308996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480482, 40.587936, 28.516479>,  <28.294601, 40.511333, 28.862284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480482, 40.587936, 28.516479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033807, 0.979458, 0.198794,
		0.884823, -0.063152, 0.461628,
		0.464700, 0.191504, -0.864512,
		28.619892, 40.645386, 28.257126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451239, 41.149052, 28.941875>,  <28.294601, 40.511333, 28.862284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451239, 41.149052, 28.941875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543915, 41.127594, 28.553352>,  <28.599522, 41.114719, 28.320238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543915, 41.127594, 28.553352>,  <28.451239, 41.149052, 28.941875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543915, 41.127594, 28.553352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018959, 0.998538, -0.050629,
		0.972604, -0.006685, 0.232371,
		0.231692, -0.053647, -0.971309,
		28.613422, 41.111500, 28.261959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388296, 40.675312, 29.613651>,  <28.451239, 41.149052, 28.941875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388296, 40.675312, 29.613651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700129, 40.798008, 29.832067>,  <28.887228, 40.871628, 29.963118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700129, 40.798008, 29.832067>,  <28.388296, 40.675312, 29.613651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700129, 40.798008, 29.832067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383516, -0.455471, 0.803406,
		0.495145, -0.835737, -0.237435,
		0.779581, 0.306742, 0.546043,
		28.934004, 40.890030, 29.995880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852781, 40.189705, 29.832464>,  <28.388296, 40.675312, 29.613651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852781, 40.189705, 29.832464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803873, 40.486561, 30.096062>,  <28.774529, 40.664677, 30.254221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803873, 40.486561, 30.096062>,  <28.852781, 40.189705, 29.832464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803873, 40.486561, 30.096062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234779, -0.666759, 0.707327,
		0.964328, -0.068231, 0.255766,
		-0.122272, 0.742143, 0.658994,
		28.767191, 40.709206, 30.293760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143335, 39.931911, 30.347126>,  <28.852781, 40.189705, 29.832464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143335, 39.931911, 30.347126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914997, 40.224854, 30.495609>,  <28.777994, 40.400620, 30.584700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914997, 40.224854, 30.495609>,  <29.143335, 39.931911, 30.347126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914997, 40.224854, 30.495609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160373, -0.542857, 0.824370,
		0.805242, 0.411057, 0.427337,
		-0.570847, 0.732351, 0.371209,
		28.743744, 40.444557, 30.606972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479717, 40.221420, 30.937771>,  <29.143335, 39.931911, 30.347126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479717, 40.221420, 30.937771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080769, 40.204334, 30.914351>,  <28.841400, 40.194084, 30.900299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.080769, 40.204334, 30.914351>,  <29.479717, 40.221420, 30.937771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080769, 40.204334, 30.914351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020066, -0.613541, 0.789408,
		-0.069640, 0.788507, 0.611070,
		-0.997370, -0.042713, -0.058549,
		28.781557, 40.191521, 30.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003487, 40.424377, 31.485113>,  <29.479717, 40.221420, 30.937771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003487, 40.424377, 31.485113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832273, 40.134106, 31.269642>,  <28.729546, 39.959942, 31.140358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832273, 40.134106, 31.269642>,  <29.003487, 40.424377, 31.485113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832273, 40.134106, 31.269642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405343, -0.378581, 0.832089,
		-0.807765, 0.574511, -0.132105,
		-0.428032, -0.725681, -0.538679,
		28.703863, 39.916401, 31.108038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295656, 40.473606, 31.616962>,  <29.003487, 40.424377, 31.485113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295656, 40.473606, 31.616962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384996, 40.101963, 31.499060>,  <28.438601, 39.878979, 31.428318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384996, 40.101963, 31.499060>,  <28.295656, 40.473606, 31.616962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384996, 40.101963, 31.499060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305492, -0.353884, 0.883992,
		-0.925629, -0.107395, -0.362874,
		0.223351, -0.929103, -0.294757,
		28.452002, 39.823231, 31.410633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810873, 40.050636, 31.832350>,  <28.295656, 40.473606, 31.616962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810873, 40.050636, 31.832350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116848, 39.795341, 31.797644>,  <28.300432, 39.642166, 31.776819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116848, 39.795341, 31.797644>,  <27.810873, 40.050636, 31.832350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116848, 39.795341, 31.797644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167009, -0.326633, 0.930279,
		-0.622077, -0.697114, -0.356445,
		0.764937, -0.638234, -0.086766,
		28.346329, 39.603870, 31.771614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600883, 39.585342, 32.261730>,  <27.810873, 40.050636, 31.832350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600883, 39.585342, 32.261730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979986, 39.475117, 32.197460>,  <28.207449, 39.408981, 32.158897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979986, 39.475117, 32.197460>,  <27.600883, 39.585342, 32.261730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979986, 39.475117, 32.197460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062485, -0.654318, 0.753634,
		-0.312808, -0.704223, -0.637355,
		0.947759, -0.275568, -0.160672,
		28.264315, 39.392445, 32.149258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.590662, 38.863068, 32.086884>,  <27.600883, 39.585342, 32.261730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.590662, 38.863068, 32.086884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923859, 38.995743, 32.264019>,  <28.123777, 39.075348, 32.370300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923859, 38.995743, 32.264019>,  <27.590662, 38.863068, 32.086884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923859, 38.995743, 32.264019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088907, -0.709745, 0.698826,
		0.546095, -0.621489, -0.561722,
		0.832992, 0.331685, 0.442843,
		28.173756, 39.095249, 32.396873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966335, 38.193298, 32.202374>,  <27.590662, 38.863068, 32.086884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966335, 38.193298, 32.202374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177073, 38.432953, 32.443527>,  <28.303514, 38.576748, 32.588219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177073, 38.432953, 32.443527>,  <27.966335, 38.193298, 32.202374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177073, 38.432953, 32.443527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238474, -0.785011, 0.571741,
		0.815822, -0.157446, -0.556457,
		0.526843, 0.599140, 0.602883,
		28.335125, 38.612694, 32.624393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611744, 37.855495, 32.381523>,  <27.966335, 38.193298, 32.202374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611744, 37.855495, 32.381523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540304, 38.129288, 32.664249>,  <28.497440, 38.293564, 32.833885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540304, 38.129288, 32.664249>,  <28.611744, 37.855495, 32.381523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540304, 38.129288, 32.664249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249215, -0.663466, 0.705481,
		0.951837, 0.302148, -0.052087,
		-0.178602, 0.684484, 0.706812,
		28.486723, 38.334633, 32.876293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177658, 37.868984, 32.851414>,  <28.611744, 37.855495, 32.381523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177658, 37.868984, 32.851414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897873, 38.040283, 33.080273>,  <28.730001, 38.143063, 33.217590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897873, 38.040283, 33.080273>,  <29.177658, 37.868984, 32.851414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897873, 38.040283, 33.080273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271022, -0.581831, 0.766825,
		0.661287, 0.691430, 0.290904,
		-0.699462, 0.428250, 0.572149,
		28.688034, 38.168758, 33.251919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530849, 38.103760, 33.489998>,  <29.177658, 37.868984, 32.851414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530849, 38.103760, 33.489998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141331, 38.073753, 33.575878>,  <28.907619, 38.055752, 33.627407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141331, 38.073753, 33.575878>,  <29.530849, 38.103760, 33.489998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141331, 38.073753, 33.575878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218711, -0.567738, 0.793624,
		0.062362, 0.819784, 0.569267,
		-0.973795, -0.075013, 0.214702,
		28.849192, 38.051250, 33.640289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538216, 38.243382, 34.230160>,  <29.530849, 38.103760, 33.489998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538216, 38.243382, 34.230160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177929, 38.088428, 34.151527>,  <28.961758, 37.995457, 34.104347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177929, 38.088428, 34.151527>,  <29.538216, 38.243382, 34.230160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177929, 38.088428, 34.151527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070199, -0.576378, 0.814163,
		-0.428700, 0.719529, 0.546347,
		-0.900716, -0.387385, -0.196583,
		28.907715, 37.972214, 34.092552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271919, 38.073128, 34.941940>,  <29.538216, 38.243382, 34.230160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271919, 38.073128, 34.941940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091171, 37.853287, 34.660873>,  <28.982723, 37.721382, 34.492233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091171, 37.853287, 34.660873>,  <29.271919, 38.073128, 34.941940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091171, 37.853287, 34.660873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200271, -0.830066, 0.520462,
		-0.869314, 0.094456, 0.485151,
		-0.451868, -0.549607, -0.702672,
		28.955610, 37.688404, 34.450073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913340, 37.555275, 35.326271>,  <29.271919, 38.073128, 34.941940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913340, 37.555275, 35.326271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880810, 37.381435, 34.967495>,  <28.861292, 37.277130, 34.752228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880810, 37.381435, 34.967495>,  <28.913340, 37.555275, 35.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880810, 37.381435, 34.967495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198654, -0.888937, 0.412708,
		-0.976690, -0.144618, 0.158630,
		-0.081327, -0.434600, -0.896944,
		28.856411, 37.251057, 34.698410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332403, 36.928795, 35.320461>,  <28.913340, 37.555275, 35.326271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332403, 36.928795, 35.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559830, 36.862751, 34.998104>,  <28.696285, 36.823124, 34.804688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559830, 36.862751, 34.998104>,  <28.332403, 36.928795, 35.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559830, 36.862751, 34.998104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016245, -0.977206, 0.211672,
		-0.822476, -0.133442, -0.552926,
		0.568569, -0.165113, -0.805896,
		28.730400, 36.813217, 34.756336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985079, 36.360413, 34.999348>,  <28.332403, 36.928795, 35.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985079, 36.360413, 34.999348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367743, 36.365067, 34.882954>,  <28.597340, 36.367859, 34.813118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.367743, 36.365067, 34.882954>,  <27.985079, 36.360413, 34.999348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367743, 36.365067, 34.882954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066598, -0.981462, 0.179716,
		-0.283496, -0.191305, -0.939698,
		0.956658, 0.011633, -0.290981,
		28.654739, 36.368557, 34.795658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153866, 35.778141, 34.678974>,  <27.985079, 36.360413, 34.999348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153866, 35.778141, 34.678974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541121, 35.869911, 34.719120>,  <28.773474, 35.924973, 34.743206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541121, 35.869911, 34.719120>,  <28.153866, 35.778141, 34.678974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541121, 35.869911, 34.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223973, -0.972575, 0.062724,
		0.112002, -0.038247, -0.992971,
		0.968138, 0.229424, 0.100364,
		28.831562, 35.938740, 34.749229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490259, 35.371037, 34.209259>,  <28.153866, 35.778141, 34.678974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490259, 35.371037, 34.209259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730564, 35.478962, 34.510265>,  <28.874748, 35.543716, 34.690868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730564, 35.478962, 34.510265>,  <28.490259, 35.371037, 34.209259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730564, 35.478962, 34.510265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206838, -0.961730, 0.179705,
		0.772205, 0.047689, -0.633581,
		0.600764, 0.269818, 0.752517,
		28.910793, 35.559906, 34.736019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048620, 34.884224, 34.265575>,  <28.490259, 35.371037, 34.209259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048620, 34.884224, 34.265575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106663, 35.064102, 34.618103>,  <29.141487, 35.172028, 34.829620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106663, 35.064102, 34.618103>,  <29.048620, 34.884224, 34.265575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106663, 35.064102, 34.618103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346631, -0.857396, 0.380420,
		0.926710, 0.250291, -0.280291,
		0.145105, 0.449696, 0.881316,
		29.150194, 35.199013, 34.882500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716721, 34.628521, 34.476204>,  <29.048620, 34.884224, 34.265575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716721, 34.628521, 34.476204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531290, 34.743542, 34.811443>,  <29.420033, 34.812553, 35.012589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.531290, 34.743542, 34.811443>,  <29.716721, 34.628521, 34.476204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531290, 34.743542, 34.811443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223714, -0.877246, 0.424725,
		0.857351, 0.384386, 0.342339,
		-0.463574, 0.287552, 0.838101,
		29.392218, 34.829807, 35.062874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145136, 34.405445, 35.057892>,  <29.716721, 34.628521, 34.476204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145136, 34.405445, 35.057892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779337, 34.458462, 35.210800>,  <29.559858, 34.490273, 35.302544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779337, 34.458462, 35.210800>,  <30.145136, 34.405445, 35.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779337, 34.458462, 35.210800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135813, -0.789440, 0.598614,
		0.381119, 0.599348, 0.703939,
		-0.914496, 0.132539, 0.382270,
		29.504988, 34.498222, 35.325481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170029, 34.292057, 35.807274>,  <30.145136, 34.405445, 35.057892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170029, 34.292057, 35.807274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775921, 34.256912, 35.748589>,  <29.539455, 34.235825, 35.713379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775921, 34.256912, 35.748589>,  <30.170029, 34.292057, 35.807274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775921, 34.256912, 35.748589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063577, -0.608219, 0.791219,
		-0.158748, 0.788891, 0.593674,
		-0.985270, -0.087861, -0.146709,
		29.480339, 34.230553, 35.704575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859148, 34.307388, 36.496067>,  <30.170029, 34.292057, 35.807274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859148, 34.307388, 36.496067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588022, 34.127453, 36.263443>,  <29.425346, 34.019493, 36.123867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588022, 34.127453, 36.263443>,  <29.859148, 34.307388, 36.496067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588022, 34.127453, 36.263443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164006, -0.678551, 0.716010,
		-0.716706, 0.580703, 0.386157,
		-0.677816, -0.449836, -0.581560,
		29.384678, 33.992500, 36.088974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297489, 34.267395, 36.818832>,  <29.859148, 34.307388, 36.496067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297489, 34.267395, 36.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308506, 33.957031, 36.566734>,  <29.315117, 33.770813, 36.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308506, 33.957031, 36.566734>,  <29.297489, 34.267395, 36.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308506, 33.957031, 36.566734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030743, -0.630847, 0.775299,
		-0.999148, -0.001978, -0.041229,
		0.027543, -0.775905, -0.630248,
		29.316769, 33.724258, 36.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074703, 33.579735, 36.768631>,  <29.297489, 34.267395, 36.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074703, 33.579735, 36.768631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029137, 33.894382, 37.011368>,  <29.001797, 34.083172, 37.157009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029137, 33.894382, 37.011368>,  <29.074703, 33.579735, 36.768631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029137, 33.894382, 37.011368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104902, -0.597876, 0.794695,
		0.987936, 0.154188, -0.014409,
		-0.113918, 0.786619, 0.606838,
		28.994961, 34.130367, 37.193420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660175, 33.792145, 37.267918>,  <29.074703, 33.579735, 36.768631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660175, 33.792145, 37.267918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291887, 33.869415, 37.403542>,  <29.070915, 33.915779, 37.484917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291887, 33.869415, 37.403542>,  <29.660175, 33.792145, 37.267918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291887, 33.869415, 37.403542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186022, -0.546525, 0.816521,
		0.343037, 0.814858, 0.467261,
		-0.920718, 0.193176, 0.339060,
		29.015673, 33.927368, 37.505260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360285, 34.119015, 37.889572>,  <29.660175, 33.792145, 37.267918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360285, 34.119015, 37.889572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026863, 33.996887, 38.073730>,  <28.826809, 33.923611, 38.184227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026863, 33.996887, 38.073730>,  <29.360285, 34.119015, 37.889572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026863, 33.996887, 38.073730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545098, -0.319197, 0.775230,
		-0.089736, 0.897158, 0.432498,
		-0.833556, -0.305320, 0.460396,
		28.776796, 33.905293, 38.211849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286259, 34.709248, 38.306602>,  <29.360285, 34.119015, 37.889572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286259, 34.709248, 38.306602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646177, 34.635128, 38.148602>,  <29.862129, 34.590656, 38.053802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646177, 34.635128, 38.148602>,  <29.286259, 34.709248, 38.306602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646177, 34.635128, 38.148602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277715, 0.941494, 0.190954,
		0.336506, -0.281517, 0.898617,
		0.899799, -0.185303, -0.395000,
		29.916117, 34.579536, 38.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879084, 34.994278, 38.572201>,  <29.286259, 34.709248, 38.306602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879084, 34.994278, 38.572201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945024, 35.005302, 38.177826>,  <29.984589, 35.011917, 37.941200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945024, 35.005302, 38.177826>,  <29.879084, 34.994278, 38.572201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945024, 35.005302, 38.177826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527020, 0.842484, 0.111669,
		0.833711, -0.538015, 0.124363,
		0.164854, 0.027558, -0.985933,
		29.994480, 35.013569, 37.882046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598648, 35.200710, 38.493027>,  <29.879084, 34.994278, 38.572201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598648, 35.200710, 38.493027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378693, 35.295238, 38.172585>,  <30.246719, 35.351955, 37.980320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378693, 35.295238, 38.172585>,  <30.598648, 35.200710, 38.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378693, 35.295238, 38.172585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430093, 0.902317, -0.029040,
		0.715989, -0.360519, -0.597818,
		-0.549891, 0.236325, -0.801106,
		30.213726, 35.366135, 37.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095346, 35.505745, 38.942127>,  <30.598648, 35.200710, 38.493027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095346, 35.505745, 38.942127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194628, 35.142883, 38.806210>,  <31.254196, 34.925167, 38.724659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194628, 35.142883, 38.806210>,  <31.095346, 35.505745, 38.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194628, 35.142883, 38.806210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068214, -0.333531, 0.940268,
		-0.966304, -0.256555, -0.020902,
		0.248202, -0.907159, -0.339792,
		31.269089, 34.870735, 38.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704676, 34.867855, 39.293186>,  <31.095346, 35.505745, 38.942127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704676, 34.867855, 39.293186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066166, 34.756744, 39.162880>,  <31.283060, 34.690079, 39.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066166, 34.756744, 39.162880>,  <30.704676, 34.867855, 39.293186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066166, 34.756744, 39.162880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249767, -0.275914, 0.928164,
		-0.347709, -0.920168, -0.179969,
		0.903722, -0.277781, -0.325766,
		31.337282, 34.673412, 39.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832397, 34.216152, 39.722359>,  <30.704676, 34.867855, 39.293186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832397, 34.216152, 39.722359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188993, 34.335545, 39.586037>,  <31.402952, 34.407181, 39.504242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188993, 34.335545, 39.586037>,  <30.832397, 34.216152, 39.722359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188993, 34.335545, 39.586037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438237, -0.377467, 0.815762,
		0.114850, -0.876599, -0.467316,
		0.891492, 0.298485, -0.340806,
		31.456442, 34.425091, 39.483795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440197, 33.618423, 39.980373>,  <30.832397, 34.216152, 39.722359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440197, 33.618423, 39.980373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645781, 33.952484, 39.902016>,  <31.769131, 34.152920, 39.855000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645781, 33.952484, 39.902016>,  <31.440197, 33.618423, 39.980373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645781, 33.952484, 39.902016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563768, -0.156735, 0.810925,
		0.646538, -0.527222, -0.551385,
		0.513959, 0.835147, -0.195896,
		31.799969, 34.203030, 39.843246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122829, 33.513008, 40.089775>,  <31.440197, 33.618423, 39.980373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122829, 33.513008, 40.089775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122498, 33.912846, 40.101166>,  <32.122299, 34.152748, 40.108002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122498, 33.912846, 40.101166>,  <32.122829, 33.513008, 40.089775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122498, 33.912846, 40.101166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599082, -0.022309, 0.800377,
		0.800687, 0.017723, -0.598821,
		-0.000826, 0.999594, 0.028480,
		32.122250, 34.212723, 40.109711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757957, 33.706650, 40.160378>,  <32.122829, 33.513008, 40.089775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757957, 33.706650, 40.160378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559639, 34.030704, 40.285511>,  <32.440647, 34.225136, 40.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559639, 34.030704, 40.285511>,  <32.757957, 33.706650, 40.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559639, 34.030704, 40.285511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612584, 0.070913, 0.787218,
		0.615569, 0.581939, -0.531434,
		-0.495799, 0.810135, 0.312834,
		32.410900, 34.273746, 40.379360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209694, 34.225792, 40.359585>,  <32.757957, 33.706650, 40.160378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209694, 34.225792, 40.359585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871220, 34.303089, 40.558231>,  <32.668137, 34.349468, 40.677418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871220, 34.303089, 40.558231>,  <33.209694, 34.225792, 40.359585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871220, 34.303089, 40.558231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522125, 0.114297, 0.845176,
		0.106563, 0.974471, -0.197613,
		-0.846185, 0.193243, 0.496616,
		32.617363, 34.361061, 40.707214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498863, 34.696697, 40.857441>,  <33.209694, 34.225792, 40.359585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498863, 34.696697, 40.857441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143082, 34.601265, 41.013363>,  <32.929611, 34.544006, 41.106915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143082, 34.601265, 41.013363>,  <33.498863, 34.696697, 40.857441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143082, 34.601265, 41.013363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405159, -0.017005, 0.914088,
		-0.211454, 0.970974, 0.111788,
		-0.889457, -0.238579, 0.389803,
		32.876244, 34.529690, 41.130302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527241, 35.157707, 41.418411>,  <33.498863, 34.696697, 40.857441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527241, 35.157707, 41.418411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260025, 34.866417, 41.479610>,  <33.099697, 34.691643, 41.516331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260025, 34.866417, 41.479610>,  <33.527241, 35.157707, 41.418411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260025, 34.866417, 41.479610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340277, -0.116110, 0.933129,
		-0.661769, 0.675425, 0.325366,
		-0.668037, -0.728230, 0.152994,
		33.059612, 34.647949, 41.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272640, 35.328030, 42.011917>,  <33.527241, 35.157707, 41.418411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272640, 35.328030, 42.011917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193371, 34.936691, 41.988049>,  <33.145809, 34.701889, 41.973728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193371, 34.936691, 41.988049>,  <33.272640, 35.328030, 42.011917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193371, 34.936691, 41.988049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149715, -0.090376, 0.984590,
		-0.968666, 0.186183, 0.164384,
		-0.198170, -0.978350, -0.059670,
		33.133919, 34.643185, 41.970146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952499, 35.153446, 42.593540>,  <33.272640, 35.328030, 42.011917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952499, 35.153446, 42.593540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046112, 34.786827, 42.463821>,  <33.102280, 34.566856, 42.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046112, 34.786827, 42.463821>,  <32.952499, 35.153446, 42.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046112, 34.786827, 42.463821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174359, -0.288584, 0.941445,
		-0.956466, -0.276873, 0.092270,
		0.234033, -0.916548, -0.324296,
		33.116322, 34.511864, 42.366531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604980, 34.793747, 43.096195>,  <32.952499, 35.153446, 42.593540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604980, 34.793747, 43.096195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869526, 34.535130, 42.944096>,  <33.028252, 34.379959, 42.852837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869526, 34.535130, 42.944096>,  <32.604980, 34.793747, 43.096195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869526, 34.535130, 42.944096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166977, -0.367318, 0.914984,
		-0.731245, -0.668628, -0.134973,
		0.661362, -0.646541, -0.380245,
		33.067936, 34.341167, 42.830021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454689, 34.249989, 43.407497>,  <32.604980, 34.793747, 43.096195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454689, 34.249989, 43.407497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833420, 34.193771, 43.291721>,  <33.060658, 34.160042, 43.222256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833420, 34.193771, 43.291721>,  <32.454689, 34.249989, 43.407497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833420, 34.193771, 43.291721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235432, -0.310542, 0.920943,
		-0.219313, -0.940113, -0.260941,
		0.946823, -0.140541, -0.289438,
		33.117466, 34.151608, 43.204891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591183, 33.549225, 43.724068>,  <32.454689, 34.249989, 43.407497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591183, 33.549225, 43.724068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956131, 33.656044, 43.599964>,  <33.175102, 33.720135, 43.525501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956131, 33.656044, 43.599964>,  <32.591183, 33.549225, 43.724068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956131, 33.656044, 43.599964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400700, -0.427530, 0.810344,
		0.083761, -0.863655, -0.497075,
		0.912373, 0.267053, -0.310257,
		33.229843, 33.736160, 43.506886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017345, 32.934658, 43.716599>,  <32.591183, 33.549225, 43.724068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017345, 32.934658, 43.716599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221371, 33.266769, 43.806469>,  <33.343784, 33.466038, 43.860390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221371, 33.266769, 43.806469>,  <33.017345, 32.934658, 43.716599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221371, 33.266769, 43.806469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192740, -0.364891, 0.910882,
		0.838267, -0.421300, -0.346143,
		0.510059, 0.830278, 0.224674,
		33.374390, 33.515854, 43.873871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703529, 32.862572, 43.921013>,  <33.017345, 32.934658, 43.716599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703529, 32.862572, 43.921013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613789, 33.215706, 44.086067>,  <33.559944, 33.427586, 44.185101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613789, 33.215706, 44.086067>,  <33.703529, 32.862572, 43.921013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613789, 33.215706, 44.086067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010807, -0.421151, 0.906926,
		0.974449, 0.207929, 0.084944,
		-0.224350, 0.882835, 0.412637,
		33.546482, 33.480556, 44.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028915, 32.721992, 44.594803>,  <33.703529, 32.862572, 43.921013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028915, 32.721992, 44.594803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802498, 33.050713, 44.620831>,  <33.666645, 33.247944, 44.636448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802498, 33.050713, 44.620831>,  <34.028915, 32.721992, 44.594803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802498, 33.050713, 44.620831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219134, -0.226087, 0.949139,
		0.794715, 0.522998, 0.308061,
		-0.566046, 0.821802, 0.065068,
		33.632683, 33.297253, 44.640350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337017, 33.145943, 45.147846>,  <34.028915, 32.721992, 44.594803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337017, 33.145943, 45.147846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957153, 33.265072, 45.108971>,  <33.729237, 33.336548, 45.085644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957153, 33.265072, 45.108971>,  <34.337017, 33.145943, 45.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957153, 33.265072, 45.108971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183161, -0.276130, 0.943506,
		0.254160, 0.913812, 0.316779,
		-0.949660, 0.297823, -0.097193,
		33.672256, 33.354420, 45.079811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198208, 33.515652, 45.708553>,  <34.337017, 33.145943, 45.147846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198208, 33.515652, 45.708553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823418, 33.442158, 45.589676>,  <33.598545, 33.398060, 45.518349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823418, 33.442158, 45.589676>,  <34.198208, 33.515652, 45.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823418, 33.442158, 45.589676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223913, -0.337192, 0.914420,
		-0.268223, 0.923332, 0.274798,
		-0.936973, -0.183737, -0.297189,
		33.542324, 33.387035, 45.500519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724316, 33.774872, 46.206837>,  <34.198208, 33.515652, 45.708553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724316, 33.774872, 46.206837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486816, 33.520069, 46.010189>,  <33.344315, 33.367188, 45.892200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486816, 33.520069, 46.010189>,  <33.724316, 33.774872, 46.206837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486816, 33.520069, 46.010189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347355, -0.348197, 0.870691,
		-0.725814, 0.687738, -0.014525,
		-0.593750, -0.637005, -0.491615,
		33.308693, 33.328968, 45.862705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058369, 33.897358, 46.453979>,  <33.724316, 33.774872, 46.206837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058369, 33.897358, 46.453979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056587, 33.522419, 46.314636>,  <33.055519, 33.297455, 46.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056587, 33.522419, 46.314636>,  <33.058369, 33.897358, 46.453979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056587, 33.522419, 46.314636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395152, -0.318363, 0.861684,
		-0.918605, 0.141495, -0.368978,
		-0.004455, -0.937350, -0.348362,
		33.055252, 33.241215, 46.210129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375748, 33.694027, 46.527721>,  <33.058369, 33.897358, 46.453979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375748, 33.694027, 46.527721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586720, 33.356167, 46.491112>,  <32.713303, 33.153450, 46.469147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586720, 33.356167, 46.491112>,  <32.375748, 33.694027, 46.527721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586720, 33.356167, 46.491112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486048, -0.388339, 0.782912,
		-0.696832, -0.368446, -0.615364,
		0.527430, -0.844654, -0.091525,
		32.744949, 33.102772, 46.463654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948664, 33.131504, 46.816654>,  <32.375748, 33.694027, 46.527721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948664, 33.131504, 46.816654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315418, 32.973389, 46.794483>,  <32.535469, 32.878521, 46.781181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315418, 32.973389, 46.794483>,  <31.948664, 33.131504, 46.816654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315418, 32.973389, 46.794483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226269, -0.629124, 0.743644,
		-0.328824, -0.669293, -0.666274,
		0.916885, -0.395285, -0.055431,
		32.590485, 32.854805, 46.777855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707890, 32.500576, 47.027058>,  <31.948664, 33.131504, 46.816654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707890, 32.500576, 47.027058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105751, 32.510769, 47.067089>,  <32.344467, 32.516884, 47.091106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105751, 32.510769, 47.067089>,  <31.707890, 32.500576, 47.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105751, 32.510769, 47.067089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044921, -0.765836, 0.641465,
		0.092990, -0.642530, -0.760597,
		0.994653, 0.025483, 0.100078,
		32.404148, 32.518414, 47.097111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981880, 31.795145, 46.894115>,  <31.707890, 32.500576, 47.027058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981880, 31.795145, 46.894115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247471, 31.998827, 47.113148>,  <32.406826, 32.121037, 47.244568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247471, 31.998827, 47.113148>,  <31.981880, 31.795145, 46.894115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247471, 31.998827, 47.113148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045192, -0.703637, 0.709121,
		0.746385, -0.495587, -0.444188,
		0.663979, 0.509203, 0.547581,
		32.446663, 32.151588, 47.277420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104988, 31.388853, 47.433666>,  <31.981880, 31.795145, 46.894115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104988, 31.388853, 47.433666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302120, 31.694658, 47.599869>,  <32.420399, 31.878141, 47.699589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302120, 31.694658, 47.599869>,  <32.104988, 31.388853, 47.433666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302120, 31.694658, 47.599869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052549, -0.502800, 0.862804,
		0.868540, -0.403377, -0.287967,
		0.492826, 0.764512, 0.415505,
		32.449966, 31.924011, 47.724522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653858, 31.141870, 47.767620>,  <32.104988, 31.388853, 47.433666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653858, 31.141870, 47.767620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589539, 31.491802, 47.950405>,  <32.550945, 31.701761, 48.060074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589539, 31.491802, 47.950405>,  <32.653858, 31.141870, 47.767620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589539, 31.491802, 47.950405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125069, -0.441192, 0.888655,
		0.979030, 0.200050, -0.038469,
		-0.160803, 0.874831, 0.456960,
		32.541298, 31.754251, 48.087494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036392, 31.131168, 48.318623>,  <32.653858, 31.141870, 47.767620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036392, 31.131168, 48.318623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774693, 31.419264, 48.410896>,  <32.617672, 31.592121, 48.466263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774693, 31.419264, 48.410896>,  <33.036392, 31.131168, 48.318623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774693, 31.419264, 48.410896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078007, -0.367667, 0.926680,
		0.752249, 0.588280, 0.296728,
		-0.654245, 0.720241, 0.230687,
		32.578419, 31.635336, 48.480103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390980, 31.387953, 48.816513>,  <33.036392, 31.131168, 48.318623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390980, 31.387953, 48.816513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011082, 31.508400, 48.850727>,  <32.783142, 31.580669, 48.871254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011082, 31.508400, 48.850727>,  <33.390980, 31.387953, 48.816513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011082, 31.508400, 48.850727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011018, -0.240925, 0.970481,
		0.312839, 0.922649, 0.225499,
		-0.949742, 0.301120, 0.085536,
		32.726158, 31.598736, 48.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464020, 31.877485, 49.327892>,  <33.390980, 31.387953, 48.816513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464020, 31.877485, 49.327892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103947, 31.703480, 49.319538>,  <32.887901, 31.599077, 49.314526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103947, 31.703480, 49.319538>,  <33.464020, 31.877485, 49.327892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103947, 31.703480, 49.319538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160193, -0.375330, 0.912943,
		-0.404981, 0.818470, 0.407551,
		-0.900183, -0.435011, -0.020888,
		32.833893, 31.572977, 49.313271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313351, 31.791040, 49.971947>,  <33.464020, 31.877485, 49.327892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313351, 31.791040, 49.971947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024879, 31.542484, 49.849457>,  <32.851795, 31.393351, 49.775963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024879, 31.542484, 49.849457>,  <33.313351, 31.791040, 49.971947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024879, 31.542484, 49.849457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277030, -0.663851, 0.694663,
		-0.634944, 0.416144, 0.650900,
		-0.721180, -0.621390, -0.306224,
		32.808525, 31.356068, 49.757591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008602, 31.503700, 50.594627>,  <33.313351, 31.791040, 49.971947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008602, 31.503700, 50.594627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899879, 31.260841, 50.295963>,  <32.834644, 31.115126, 50.116764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899879, 31.260841, 50.295963>,  <33.008602, 31.503700, 50.594627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899879, 31.260841, 50.295963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216513, -0.794555, 0.567278,
		-0.937680, -0.007471, 0.347420,
		-0.271806, -0.607146, -0.746656,
		32.818336, 31.078697, 50.071968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471973, 31.083424, 50.886684>,  <33.008602, 31.503700, 50.594627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471973, 31.083424, 50.886684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635258, 30.891649, 50.575943>,  <32.733227, 30.776585, 50.389500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635258, 30.891649, 50.575943>,  <32.471973, 31.083424, 50.886684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635258, 30.891649, 50.575943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015226, -0.847292, 0.530909,
		-0.912761, -0.228550, -0.338573,
		0.408210, -0.479438, -0.776855,
		32.757721, 30.747818, 50.342888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093315, 30.451674, 50.792618>,  <32.471973, 31.083424, 50.886684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093315, 30.451674, 50.792618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425030, 30.380615, 50.580681>,  <32.624058, 30.337980, 50.453518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425030, 30.380615, 50.580681>,  <32.093315, 30.451674, 50.792618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425030, 30.380615, 50.580681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004300, -0.946071, 0.323931,
		-0.558810, -0.270909, -0.783798,
		0.829285, -0.177646, -0.529839,
		32.673817, 30.327322, 50.421730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963270, 29.812466, 50.444237>,  <32.093315, 30.451674, 50.792618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963270, 29.812466, 50.444237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361458, 29.823580, 50.407867>,  <32.600372, 29.830248, 50.386047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361458, 29.823580, 50.407867>,  <31.963270, 29.812466, 50.444237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361458, 29.823580, 50.407867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043830, -0.982768, 0.179571,
		-0.084364, -0.182743, -0.979535,
		0.995471, 0.027784, -0.090920,
		32.660099, 29.831915, 50.380592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100903, 29.231180, 50.058689>,  <31.963270, 29.812466, 50.444237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100903, 29.231180, 50.058689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444328, 29.330353, 50.238197>,  <32.650383, 29.389856, 50.345901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444328, 29.330353, 50.238197>,  <32.100903, 29.231180, 50.058689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444328, 29.330353, 50.238197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174819, -0.964414, 0.198352,
		0.481982, -0.091844, -0.871354,
		0.858564, 0.247931, 0.448774,
		32.701897, 29.404732, 50.372829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543964, 28.795019, 49.845539>,  <32.100903, 29.231180, 50.058689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543964, 28.795019, 49.845539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703373, 28.930309, 50.186546>,  <32.799019, 29.011482, 50.391151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703373, 28.930309, 50.186546>,  <32.543964, 28.795019, 49.845539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703373, 28.930309, 50.186546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044219, -0.935524, 0.350486,
		0.916092, -0.101979, -0.387784,
		0.398523, 0.338224, 0.852516,
		32.822929, 29.031776, 50.442303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952621, 28.212721, 50.124180>,  <32.543964, 28.795019, 49.845539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952621, 28.212721, 50.124180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941940, 28.430538, 50.459503>,  <32.935532, 28.561230, 50.660698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941940, 28.430538, 50.459503>,  <32.952621, 28.212721, 50.124180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941940, 28.430538, 50.459503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181440, -0.827316, 0.531627,
		0.983039, -0.137908, 0.120892,
		-0.026700, 0.544545, 0.838306,
		32.933929, 28.593903, 50.710995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385185, 27.883871, 50.513084>,  <32.952621, 28.212721, 50.124180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385185, 27.883871, 50.513084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136620, 28.093124, 50.746380>,  <32.987480, 28.218676, 50.886356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136620, 28.093124, 50.746380>,  <33.385185, 27.883871, 50.513084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136620, 28.093124, 50.746380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095064, -0.789271, 0.606642,
		0.777690, 0.321533, 0.540199,
		-0.621418, 0.523133, 0.583242,
		32.950195, 28.250065, 50.921352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578102, 27.697763, 51.171429>,  <33.385185, 27.883871, 50.513084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578102, 27.697763, 51.171429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221092, 27.860085, 51.250141>,  <33.006886, 27.957478, 51.297371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221092, 27.860085, 51.250141>,  <33.578102, 27.697763, 51.171429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221092, 27.860085, 51.250141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174252, -0.712735, 0.679445,
		0.415976, 0.572131, 0.706845,
		-0.892524, 0.405803, 0.196786,
		32.953335, 27.981825, 51.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507748, 27.724117, 51.886459>,  <33.578102, 27.697763, 51.171429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507748, 27.724117, 51.886459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131893, 27.741692, 51.750725>,  <32.906380, 27.752235, 51.669285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131893, 27.741692, 51.750725>,  <33.507748, 27.724117, 51.886459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131893, 27.741692, 51.750725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273387, -0.692782, 0.667317,
		-0.205769, 0.719807, 0.662975,
		-0.939637, 0.043936, -0.339339,
		32.850002, 27.754871, 51.648922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091507, 27.708931, 52.446152>,  <33.507748, 27.724117, 51.886459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091507, 27.708931, 52.446152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858047, 27.577175, 52.149273>,  <32.717972, 27.498121, 51.971146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858047, 27.577175, 52.149273>,  <33.091507, 27.708931, 52.446152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858047, 27.577175, 52.149273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374005, -0.702254, 0.605772,
		-0.720747, 0.631143, 0.286675,
		-0.583647, -0.329391, -0.742198,
		32.682953, 27.478357, 51.926613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416660, 27.578821, 52.745667>,  <33.091507, 27.708931, 52.446152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416660, 27.578821, 52.745667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424870, 27.351225, 52.416832>,  <32.429794, 27.214666, 52.219532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424870, 27.351225, 52.416832>,  <32.416660, 27.578821, 52.745667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424870, 27.351225, 52.416832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436415, -0.744888, 0.504662,
		-0.899511, 0.348414, -0.263605,
		0.020525, -0.568990, -0.822088,
		32.431026, 27.180529, 52.170204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745037, 27.490450, 52.685638>,  <32.416660, 27.578821, 52.745667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745037, 27.490450, 52.685638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003742, 27.225040, 52.535210>,  <32.158966, 27.065794, 52.444954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003742, 27.225040, 52.535210>,  <31.745037, 27.490450, 52.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003742, 27.225040, 52.535210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312515, -0.680349, 0.662917,
		-0.695722, -0.311223, -0.647387,
		0.646765, -0.663525, -0.376072,
		32.197773, 27.025984, 52.422386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425434, 26.983446, 52.431873>,  <31.745037, 27.490450, 52.685638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425434, 26.983446, 52.431873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783154, 26.844849, 52.545128>,  <31.997786, 26.761690, 52.613083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783154, 26.844849, 52.545128>,  <31.425434, 26.983446, 52.431873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783154, 26.844849, 52.545128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447102, -0.666404, 0.596662,
		-0.018055, -0.660187, -0.750884,
		0.894300, -0.346495, 0.283139,
		32.051445, 26.740900, 52.630070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428307, 26.292091, 52.208641>,  <31.425434, 26.983446, 52.431873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428307, 26.292091, 52.208641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632759, 26.396929, 52.536068>,  <31.755430, 26.459831, 52.732525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632759, 26.396929, 52.536068>,  <31.428307, 26.292091, 52.208641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632759, 26.396929, 52.536068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612183, -0.557479, 0.560758,
		0.603304, -0.787734, -0.124497,
		0.511133, 0.262093, 0.818566,
		31.786098, 26.475557, 52.781639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867022, 25.737129, 52.554016>,  <31.428307, 26.292091, 52.208641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867022, 25.737129, 52.554016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771791, 25.984602, 52.853497>,  <31.714653, 26.133085, 53.033184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771791, 25.984602, 52.853497>,  <31.867022, 25.737129, 52.554016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771791, 25.984602, 52.853497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722100, -0.628276, 0.289553,
		0.649533, -0.471703, 0.596325,
		-0.238074, 0.618680, 0.748703,
		31.700369, 26.170206, 53.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996155, 25.411339, 53.259056>,  <31.867022, 25.737129, 52.554016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996155, 25.411339, 53.259056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707245, 25.687979, 53.260208>,  <31.533899, 25.853962, 53.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707245, 25.687979, 53.260208>,  <31.996155, 25.411339, 53.259056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707245, 25.687979, 53.260208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650879, -0.681141, 0.335267,
		0.233829, 0.240283, 0.942119,
		-0.722275, 0.691600, 0.002875,
		31.490562, 25.895458, 53.261070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546888, 24.809851, 52.915607>,  <31.996155, 25.411339, 53.259056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546888, 24.809851, 52.915607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567883, 24.462814, 52.717808>,  <31.580479, 24.254593, 52.599129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567883, 24.462814, 52.717808>,  <31.546888, 24.809851, 52.915607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567883, 24.462814, 52.717808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059768, 0.497025, -0.865675,
		0.996831, 0.015880, 0.077941,
		0.052486, -0.867591, -0.494501,
		31.583628, 24.202538, 52.569458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041370, 25.038555, 52.414402>,  <31.546888, 24.809851, 52.915607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041370, 25.038555, 52.414402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 24.725605, 52.293056>,  <31.693256, 24.537834, 52.220249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 24.725605, 52.293056>,  <32.041370, 25.038555, 52.414402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823799, 24.725605, 52.293056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048003, 0.331915, -0.942087,
		0.837756, -0.526992, -0.142983,
		-0.543931, -0.782375, -0.303361,
		31.660620, 24.490892, 52.202049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400917, 24.488260, 51.981514>,  <32.041370, 25.038555, 52.414402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400917, 24.488260, 51.981514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027611, 24.598980, 51.889957>,  <31.803627, 24.665411, 51.835022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027611, 24.598980, 51.889957>,  <32.400917, 24.488260, 51.981514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027611, 24.598980, 51.889957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345721, 0.519466, -0.781430,
		-0.097396, -0.808417, -0.580496,
		-0.933269, 0.276798, -0.228893,
		31.747629, 24.682020, 51.821289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187279, 24.257196, 51.229633>,  <32.400917, 24.488260, 51.981514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187279, 24.257196, 51.229633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981462, 24.585436, 51.329121>,  <31.857973, 24.782379, 51.388813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981462, 24.585436, 51.329121>,  <32.187279, 24.257196, 51.229633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981462, 24.585436, 51.329121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297903, 0.443074, -0.845541,
		-0.804053, -0.360971, -0.472440,
		-0.514542, 0.820601, 0.248721,
		31.827101, 24.831615, 51.403736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910563, 24.539165, 50.541492>,  <32.187279, 24.257196, 51.229633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910563, 24.539165, 50.541492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859634, 24.871460, 50.758259>,  <31.829077, 25.070837, 50.888317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859634, 24.871460, 50.758259>,  <31.910563, 24.539165, 50.541492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859634, 24.871460, 50.758259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236881, 0.556015, -0.796702,
		-0.963160, 0.026933, -0.267577,
		-0.127319, 0.830736, 0.541912,
		31.821438, 25.120680, 50.920834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460482, 25.015833, 50.108604>,  <31.910563, 24.539165, 50.541492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460482, 25.015833, 50.108604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688023, 25.210302, 50.373947>,  <31.824547, 25.326984, 50.533154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688023, 25.210302, 50.373947>,  <31.460482, 25.015833, 50.108604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688023, 25.210302, 50.373947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287891, 0.637833, -0.714344,
		-0.770407, 0.597330, 0.222867,
		0.568851, 0.486174, 0.663357,
		31.858679, 25.356155, 50.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223337, 25.668478, 50.099197>,  <31.460482, 25.015833, 50.108604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223337, 25.668478, 50.099197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597548, 25.691998, 50.238533>,  <31.822073, 25.706110, 50.322132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597548, 25.691998, 50.238533>,  <31.223337, 25.668478, 50.099197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597548, 25.691998, 50.238533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162522, 0.803864, -0.572179,
		-0.313659, 0.591899, 0.742478,
		0.935524, 0.058800, 0.348336,
		31.878204, 25.709639, 50.343033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327351, 26.347630, 50.104794>,  <31.223337, 25.668478, 50.099197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327351, 26.347630, 50.104794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700069, 26.204971, 50.131798>,  <31.923700, 26.119377, 50.148003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700069, 26.204971, 50.131798>,  <31.327351, 26.347630, 50.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700069, 26.204971, 50.131798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308540, 0.680248, -0.664880,
		0.191200, 0.640364, 0.743892,
		0.931797, -0.356646, 0.067515,
		31.979609, 26.097977, 50.152054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689865, 26.917187, 50.105335>,  <31.327351, 26.347630, 50.104794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689865, 26.917187, 50.105335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984964, 26.662283, 50.016220>,  <32.162022, 26.509340, 49.962753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984964, 26.662283, 50.016220>,  <31.689865, 26.917187, 50.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984964, 26.662283, 50.016220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387232, 0.669795, -0.633582,
		0.552976, 0.381153, 0.740905,
		0.737746, -0.637258, -0.222786,
		32.206287, 26.471106, 49.949383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286270, 27.332844, 50.150642>,  <31.689865, 26.917187, 50.105335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286270, 27.332844, 50.150642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368073, 27.004957, 49.936634>,  <32.417152, 26.808226, 49.808231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368073, 27.004957, 49.936634>,  <32.286270, 27.332844, 50.150642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368073, 27.004957, 49.936634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522632, 0.553579, -0.648387,
		0.827668, -0.147020, 0.541618,
		0.204502, -0.819716, -0.535017,
		32.429424, 26.759043, 49.776131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895630, 27.403116, 49.954048>,  <32.286270, 27.332844, 50.150642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895630, 27.403116, 49.954048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776413, 27.133268, 49.683922>,  <32.704884, 26.971359, 49.521847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776413, 27.133268, 49.683922>,  <32.895630, 27.403116, 49.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776413, 27.133268, 49.683922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453618, 0.522384, -0.722044,
		0.839881, -0.521539, 0.150325,
		-0.298046, -0.674621, -0.675319,
		32.687000, 26.930882, 49.481327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563068, 27.061401, 49.556450>,  <32.895630, 27.403116, 49.954048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563068, 27.061401, 49.556450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233475, 27.053429, 49.329941>,  <33.035721, 27.048645, 49.194035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233475, 27.053429, 49.329941>,  <33.563068, 27.061401, 49.556450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233475, 27.053429, 49.329941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507574, 0.418232, -0.753293,
		0.251843, -0.908122, -0.334500,
		-0.823980, -0.019928, -0.566267,
		32.986282, 27.047449, 49.160061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756241, 26.962307, 48.858910>,  <33.563068, 27.061401, 49.556450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756241, 26.962307, 48.858910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388992, 27.103678, 48.787197>,  <33.168644, 27.188501, 48.744171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388992, 27.103678, 48.787197>,  <33.756241, 26.962307, 48.858910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388992, 27.103678, 48.787197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375349, 0.630375, -0.679514,
		-0.127147, -0.691169, -0.711420,
		-0.918121, 0.353429, -0.179280,
		33.113556, 27.209707, 48.733414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742428, 27.057272, 48.159782>,  <33.756241, 26.962307, 48.858910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742428, 27.057272, 48.159782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433128, 27.290562, 48.259335>,  <33.247551, 27.430536, 48.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433128, 27.290562, 48.259335>,  <33.742428, 27.057272, 48.159782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433128, 27.290562, 48.259335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198909, 0.595768, -0.778136,
		-0.602101, -0.552186, -0.576684,
		-0.773246, 0.583224, 0.248878,
		33.201153, 27.465528, 48.334000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488029, 27.152905, 47.596848>,  <33.742428, 27.057272, 48.159782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488029, 27.152905, 47.596848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323994, 27.437094, 47.825600>,  <33.225571, 27.607607, 47.962852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323994, 27.437094, 47.825600>,  <33.488029, 27.152905, 47.596848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323994, 27.437094, 47.825600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152714, 0.671673, -0.724937,
		-0.899169, -0.209955, -0.383946,
		-0.410090, 0.710475, 0.571885,
		33.200966, 27.650236, 47.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941265, 27.415579, 47.248600>,  <33.488029, 27.152905, 47.596848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941265, 27.415579, 47.248600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023895, 27.708534, 47.508118>,  <33.073471, 27.884308, 47.663830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023895, 27.708534, 47.508118>,  <32.941265, 27.415579, 47.248600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023895, 27.708534, 47.508118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043210, 0.669281, -0.741752,
		-0.977476, 0.125192, 0.169902,
		0.206574, 0.732386, 0.648797,
		33.085869, 27.928249, 47.702755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497097, 27.933468, 47.051151>,  <32.941265, 27.415579, 47.248600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497097, 27.933468, 47.051151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784367, 28.107233, 47.268597>,  <32.956726, 28.211493, 47.399063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784367, 28.107233, 47.268597>,  <32.497097, 27.933468, 47.051151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784367, 28.107233, 47.268597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188256, 0.630785, -0.752775,
		-0.669919, 0.642959, 0.371230,
		0.718170, 0.434412, 0.543616,
		32.999817, 28.237556, 47.431683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477852, 28.700937, 46.977215>,  <32.497097, 27.933468, 47.051151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477852, 28.700937, 46.977215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842255, 28.585241, 47.094795>,  <33.060898, 28.515823, 47.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842255, 28.585241, 47.094795>,  <32.477852, 28.700937, 46.977215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842255, 28.585241, 47.094795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406255, 0.506938, -0.760244,
		0.070879, 0.812006, 0.579329,
		0.911007, -0.289241, 0.293950,
		33.115555, 28.498468, 47.182980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878525, 29.302921, 46.963963>,  <32.477852, 28.700937, 46.977215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878525, 29.302921, 46.963963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098270, 28.971310, 46.922188>,  <33.230118, 28.772343, 46.897121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098270, 28.971310, 46.922188>,  <32.878525, 29.302921, 46.963963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098270, 28.971310, 46.922188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472227, 0.411155, -0.779714,
		0.689347, 0.379028, 0.617364,
		0.549366, -0.829029, -0.104442,
		33.263081, 28.722601, 46.890854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402172, 29.583740, 46.672626>,  <32.878525, 29.302921, 46.963963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402172, 29.583740, 46.672626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380730, 29.198126, 46.568504>,  <33.367863, 28.966757, 46.506031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380730, 29.198126, 46.568504>,  <33.402172, 29.583740, 46.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380730, 29.198126, 46.568504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107826, 0.253567, -0.961289,
		0.992723, -0.079599, 0.090355,
		-0.053606, -0.964037, -0.260305,
		33.364647, 28.908915, 46.490414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889801, 29.454357, 46.193447>,  <33.402172, 29.583740, 46.672626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889801, 29.454357, 46.193447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639782, 29.144136, 46.158051>,  <33.489769, 28.958004, 46.136814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639782, 29.144136, 46.158051>,  <33.889801, 29.454357, 46.193447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639782, 29.144136, 46.158051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095448, 0.036576, -0.994762,
		0.774728, -0.630221, 0.051164,
		-0.625049, -0.775554, -0.088490,
		33.452267, 28.911470, 46.131504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119602, 29.063484, 45.570679>,  <33.889801, 29.454357, 46.193447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119602, 29.063484, 45.570679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749180, 28.915062, 45.598202>,  <33.526924, 28.826010, 45.614716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749180, 28.915062, 45.598202>,  <34.119602, 29.063484, 45.570679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749180, 28.915062, 45.598202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156506, 0.211712, -0.964720,
		0.343397, -0.904155, -0.254130,
		-0.926058, -0.371055, 0.068805,
		33.471363, 28.803745, 45.618843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125732, 28.658772, 45.061440>,  <34.119602, 29.063484, 45.570679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125732, 28.658772, 45.061440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742527, 28.739719, 45.142689>,  <33.512604, 28.788288, 45.191441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742527, 28.739719, 45.142689>,  <34.125732, 28.658772, 45.061440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742527, 28.739719, 45.142689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196011, 0.054823, -0.979068,
		-0.209272, -0.977773, -0.012853,
		-0.958011, 0.202372, 0.203128,
		33.455124, 28.800430, 45.203629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715687, 28.275860, 44.516159>,  <34.125732, 28.658772, 45.061440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715687, 28.275860, 44.516159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493679, 28.582188, 44.646069>,  <33.360474, 28.765984, 44.724014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493679, 28.582188, 44.646069>,  <33.715687, 28.275860, 44.516159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493679, 28.582188, 44.646069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337874, 0.149224, -0.929286,
		-0.760129, -0.625502, 0.175928,
		-0.555018, 0.765819, 0.324771,
		33.327175, 28.811934, 44.743500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155605, 28.219284, 44.112595>,  <33.715687, 28.275860, 44.516159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155605, 28.219284, 44.112595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104359, 28.586475, 44.262741>,  <33.073612, 28.806791, 44.352829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104359, 28.586475, 44.262741>,  <33.155605, 28.219284, 44.112595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104359, 28.586475, 44.262741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421659, 0.292155, -0.858399,
		-0.897658, -0.268250, 0.349645,
		-0.128115, 0.917980, 0.375366,
		33.065926, 28.861870, 44.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484798, 28.394901, 44.016384>,  <33.155605, 28.219284, 44.112595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484798, 28.394901, 44.016384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682343, 28.741634, 44.043808>,  <32.800869, 28.949675, 44.060261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682343, 28.741634, 44.043808>,  <32.484798, 28.394901, 44.016384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682343, 28.741634, 44.043808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364689, 0.278057, -0.888643,
		-0.789368, 0.413865, 0.453446,
		0.493862, 0.866833, 0.068558,
		32.830502, 29.001684, 44.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039509, 28.728069, 43.586090>,  <32.484798, 28.394901, 44.016384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039509, 28.728069, 43.586090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338917, 28.984516, 43.653847>,  <32.518562, 29.138384, 43.694500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338917, 28.984516, 43.653847>,  <32.039509, 28.728069, 43.586090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338917, 28.984516, 43.653847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264843, 0.523223, -0.809998,
		-0.607932, 0.561434, 0.561436,
		0.748517, 0.641116, 0.169392,
		32.563473, 29.176851, 43.704666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749866, 29.296614, 43.537590>,  <32.039509, 28.728069, 43.586090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749866, 29.296614, 43.537590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121674, 29.400105, 43.432472>,  <32.344757, 29.462198, 43.369400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121674, 29.400105, 43.432472>,  <31.749866, 29.296614, 43.537590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121674, 29.400105, 43.432472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356817, 0.450916, -0.818142,
		-0.093175, 0.854246, 0.511451,
		0.929516, 0.258725, -0.262795,
		32.400528, 29.477722, 43.353634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673731, 29.927896, 43.242500>,  <31.749866, 29.296614, 43.537590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673731, 29.927896, 43.242500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025795, 29.800802, 43.101440>,  <32.237034, 29.724546, 43.016804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025795, 29.800802, 43.101440>,  <31.673731, 29.927896, 43.242500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025795, 29.800802, 43.101440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174177, 0.474927, -0.862616,
		0.441566, 0.820665, 0.362669,
		0.880160, -0.317733, -0.352652,
		32.289845, 29.705482, 42.995644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091805, 30.426683, 42.781448>,  <31.673731, 29.927896, 43.242500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091805, 30.426683, 42.781448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277126, 30.086210, 42.682793>,  <32.388321, 29.881926, 42.623600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277126, 30.086210, 42.682793>,  <32.091805, 30.426683, 42.781448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277126, 30.086210, 42.682793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099616, 0.326571, -0.939909,
		0.880581, 0.410896, 0.236094,
		0.463306, -0.851185, -0.246641,
		32.416119, 29.830854, 42.608799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718925, 30.530008, 42.353096>,  <32.091805, 30.426683, 42.781448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718925, 30.530008, 42.353096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604233, 30.153925, 42.279568>,  <32.535416, 29.928274, 42.235451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604233, 30.153925, 42.279568>,  <32.718925, 30.530008, 42.353096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604233, 30.153925, 42.279568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, 0.148747, -0.978940,
		0.947751, -0.306398, 0.088814,
		-0.286734, -0.940210, -0.183817,
		32.518211, 29.871862, 42.224422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149651, 30.237003, 41.941628>,  <32.718925, 30.530008, 42.353096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149651, 30.237003, 41.941628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835175, 29.994144, 41.895531>,  <32.646488, 29.848429, 41.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835175, 29.994144, 41.895531>,  <33.149651, 30.237003, 41.941628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835175, 29.994144, 41.895531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095687, 0.064636, -0.993311,
		0.610534, -0.791956, 0.007280,
		-0.786188, -0.607147, -0.115242,
		32.599319, 29.812000, 41.860958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364849, 29.697922, 41.420265>,  <33.149651, 30.237003, 41.941628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364849, 29.697922, 41.420265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966637, 29.720888, 41.390263>,  <32.727711, 29.734667, 41.372261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966637, 29.720888, 41.390263>,  <33.364849, 29.697922, 41.420265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966637, 29.720888, 41.390263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085436, 0.208540, -0.974275,
		-0.040295, -0.976327, -0.212513,
		-0.995528, 0.057414, -0.075010,
		32.667976, 29.738111, 41.367760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240234, 29.456659, 40.730019>,  <33.364849, 29.697922, 41.420265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240234, 29.456659, 40.730019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884926, 29.608261, 40.833813>,  <32.671741, 29.699223, 40.896091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884926, 29.608261, 40.833813>,  <33.240234, 29.456659, 40.730019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884926, 29.608261, 40.833813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052965, 0.476650, -0.877496,
		-0.456263, -0.793195, -0.403319,
		-0.888268, 0.379007, 0.259489,
		32.618446, 29.721964, 40.911659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805054, 29.381266, 40.109993>,  <33.240234, 29.456659, 40.730019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805054, 29.381266, 40.109993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652905, 29.686306, 40.319279>,  <32.561615, 29.869329, 40.444851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652905, 29.686306, 40.319279>,  <32.805054, 29.381266, 40.109993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652905, 29.686306, 40.319279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078799, 0.590411, -0.803247,
		-0.921470, -0.264303, -0.284668,
		-0.380372, 0.762600, 0.523219,
		32.538792, 29.915087, 40.476246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329010, 29.667545, 39.679039>,  <32.805054, 29.381266, 40.109993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329010, 29.667545, 39.679039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395958, 29.962116, 39.941235>,  <32.436127, 30.138859, 40.098553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395958, 29.962116, 39.941235>,  <32.329010, 29.667545, 39.679039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395958, 29.962116, 39.941235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115767, 0.674945, -0.728730,
		-0.979074, 0.046085, 0.198220,
		0.167371, 0.736427, 0.655486,
		32.446171, 30.183044, 40.137882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923315, 30.199459, 39.389721>,  <32.329010, 29.667545, 39.679039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923315, 30.199459, 39.389721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152416, 30.386906, 39.658749>,  <32.289875, 30.499374, 39.820168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152416, 30.386906, 39.658749>,  <31.923315, 30.199459, 39.389721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152416, 30.386906, 39.658749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055327, 0.796511, -0.602088,
		-0.817860, 0.382058, 0.430275,
		0.572751, 0.468618, 0.672572,
		32.324242, 30.527491, 39.860519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631329, 30.856827, 39.716515>,  <31.923315, 30.199459, 39.389721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631329, 30.856827, 39.716515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030144, 30.879789, 39.696041>,  <32.269432, 30.893566, 39.683758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030144, 30.879789, 39.696041>,  <31.631329, 30.856827, 39.716515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030144, 30.879789, 39.696041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076791, 0.780326, -0.620640,
		0.004313, 0.622733, 0.782423,
		0.997038, 0.057406, -0.051185,
		32.329254, 30.897011, 39.680687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766895, 31.547749, 39.653648>,  <31.631329, 30.856827, 39.716515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766895, 31.547749, 39.653648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120438, 31.399023, 39.540123>,  <32.332565, 31.309788, 39.472008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120438, 31.399023, 39.540123>,  <31.766895, 31.547749, 39.653648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120438, 31.399023, 39.540123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102679, 0.746181, -0.657778,
		0.456346, 0.552240, 0.697695,
		0.883858, -0.371813, -0.283813,
		32.385593, 31.287479, 39.454979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188881, 32.101685, 39.771507>,  <31.766895, 31.547749, 39.653648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188881, 32.101685, 39.771507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386585, 31.857012, 39.524429>,  <32.505207, 31.710207, 39.376183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386585, 31.857012, 39.524429>,  <32.188881, 32.101685, 39.771507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386585, 31.857012, 39.524429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213264, 0.774162, -0.595979,
		0.842748, 0.162837, 0.513089,
		0.494261, -0.611684, -0.617696,
		32.534863, 31.673506, 39.339119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734894, 32.453445, 39.534134>,  <32.188881, 32.101685, 39.771507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734894, 32.453445, 39.534134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722134, 32.145409, 39.279282>,  <32.714478, 31.960587, 39.126369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722134, 32.145409, 39.279282>,  <32.734894, 32.453445, 39.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722134, 32.145409, 39.279282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338001, 0.591590, -0.731968,
		0.940605, -0.238701, 0.241421,
		-0.031899, -0.770093, -0.637133,
		32.712563, 31.914381, 39.088142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482948, 32.379940, 39.253105>,  <32.734894, 32.453445, 39.534134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482948, 32.379940, 39.253105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206211, 32.241589, 38.999577>,  <33.040169, 32.158577, 38.847462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206211, 32.241589, 38.999577>,  <33.482948, 32.379940, 39.253105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206211, 32.241589, 38.999577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467116, 0.454970, -0.758159,
		0.550598, -0.820592, -0.153202,
		-0.691841, -0.345878, -0.633817,
		32.998657, 32.137825, 38.809433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848499, 32.111870, 38.677017>,  <33.482948, 32.379940, 39.253105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848499, 32.111870, 38.677017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474545, 32.205990, 38.570717>,  <33.250172, 32.262463, 38.506935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474545, 32.205990, 38.570717>,  <33.848499, 32.111870, 38.677017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474545, 32.205990, 38.570717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352509, 0.527728, -0.772813,
		-0.041600, -0.816171, -0.576311,
		-0.934883, 0.235304, -0.265754,
		33.194080, 32.276581, 38.490990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515022, 32.260918, 38.507698>,  <33.848499, 32.111870, 38.677017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515022, 32.260918, 38.507698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321175, 32.110638, 38.191723>,  <34.204868, 32.020470, 38.002136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321175, 32.110638, 38.191723>,  <34.515022, 32.260918, 38.507698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321175, 32.110638, 38.191723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182913, 0.839577, -0.511520,
		0.855388, -0.392381, -0.338155,
		-0.484619, -0.375695, -0.789936,
		34.175789, 31.997929, 37.954742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762066, 32.136261, 39.143047>,  <34.515022, 32.260918, 38.507698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762066, 32.136261, 39.143047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062305, 31.896206, 39.032463>,  <35.242451, 31.752172, 38.966110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062305, 31.896206, 39.032463>,  <34.762066, 32.136261, 39.143047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062305, 31.896206, 39.032463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133235, -0.272343, 0.952931,
		-0.647186, -0.752104, -0.124460,
		0.750599, -0.600141, -0.276463,
		35.287487, 31.716164, 38.949524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654285, 31.507164, 39.465458>,  <34.762066, 32.136261, 39.143047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654285, 31.507164, 39.465458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039421, 31.480968, 39.360649>,  <35.270500, 31.465252, 39.297764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039421, 31.480968, 39.360649>,  <34.654285, 31.507164, 39.465458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039421, 31.480968, 39.360649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192657, -0.513386, 0.836253,
		-0.189285, -0.855656, -0.481690,
		0.962837, -0.065489, -0.262024,
		35.328274, 31.461321, 39.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864502, 30.824272, 39.398365>,  <34.654285, 31.507164, 39.465458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864502, 30.824272, 39.398365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184521, 31.050322, 39.478916>,  <35.376534, 31.185951, 39.527248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184521, 31.050322, 39.478916>,  <34.864502, 30.824272, 39.398365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184521, 31.050322, 39.478916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299187, -0.666787, 0.682556,
		0.520005, -0.485830, -0.702541,
		0.800051, 0.565124, 0.201379,
		35.424538, 31.219858, 39.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471149, 30.322149, 39.404812>,  <34.864502, 30.824272, 39.398365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471149, 30.322149, 39.404812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606380, 30.642206, 39.602993>,  <35.687519, 30.834240, 39.721901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606380, 30.642206, 39.602993>,  <35.471149, 30.322149, 39.404812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606380, 30.642206, 39.602993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292453, -0.589712, 0.752802,
		0.894524, -0.109611, -0.433374,
		0.338081, 0.800141, 0.495456,
		35.707806, 30.882248, 39.751629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118484, 30.201248, 39.640045>,  <35.471149, 30.322149, 39.404812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118484, 30.201248, 39.640045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985298, 30.485451, 39.888020>,  <35.905388, 30.655972, 40.036804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985298, 30.485451, 39.888020>,  <36.118484, 30.201248, 39.640045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985298, 30.485451, 39.888020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325989, -0.530171, 0.782720,
		0.884796, 0.462710, -0.055088,
		-0.332967, 0.710505, 0.619932,
		35.885406, 30.698603, 40.073997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747929, 30.446646, 40.040985>,  <36.118484, 30.201248, 39.640045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747929, 30.446646, 40.040985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417660, 30.521914, 40.253723>,  <36.219498, 30.567074, 40.381367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417660, 30.521914, 40.253723>,  <36.747929, 30.446646, 40.040985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417660, 30.521914, 40.253723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352142, -0.564630, 0.746451,
		0.440756, 0.803608, 0.399936,
		-0.825670, 0.188168, 0.531848,
		36.169960, 30.578363, 40.413277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904888, 30.552748, 40.745701>,  <36.747929, 30.446646, 40.040985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904888, 30.552748, 40.745701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513103, 30.486774, 40.792084>,  <36.278030, 30.447191, 40.819912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513103, 30.486774, 40.792084>,  <36.904888, 30.552748, 40.745701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513103, 30.486774, 40.792084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179418, -0.450703, 0.874458,
		-0.091964, 0.877305, 0.471039,
		-0.979465, -0.164931, 0.115956,
		36.219265, 30.437296, 40.826870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958721, 30.550875, 41.376492>,  <36.904888, 30.552748, 40.745701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958721, 30.550875, 41.376492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598774, 30.404484, 41.281578>,  <36.382805, 30.316650, 41.224628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598774, 30.404484, 41.281578>,  <36.958721, 30.550875, 41.376492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598774, 30.404484, 41.281578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089353, -0.687162, 0.720989,
		-0.426916, 0.627591, 0.651054,
		-0.899866, -0.365976, -0.237283,
		36.328815, 30.294691, 41.210392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635746, 30.514114, 42.012897>,  <36.958721, 30.550875, 41.376492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635746, 30.514114, 42.012897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464874, 30.258717, 41.756821>,  <36.362350, 30.105478, 41.603176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464874, 30.258717, 41.756821>,  <36.635746, 30.514114, 42.012897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464874, 30.258717, 41.756821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099621, -0.736970, 0.668544,
		-0.898662, 0.221812, 0.378425,
		-0.427179, -0.638495, -0.640190,
		36.336720, 30.067167, 41.564762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029610, 30.295393, 42.221737>,  <36.635746, 30.514114, 42.012897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029610, 30.295393, 42.221737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113251, 29.994400, 41.971924>,  <36.163437, 29.813805, 41.822037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113251, 29.994400, 41.971924>,  <36.029610, 30.295393, 42.221737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113251, 29.994400, 41.971924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186906, -0.657635, 0.729782,
		-0.959866, -0.035870, -0.278157,
		0.209103, -0.752482, -0.624537,
		36.175983, 29.768656, 41.784561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596069, 29.797647, 42.446186>,  <36.029610, 30.295393, 42.221737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596069, 29.797647, 42.446186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845192, 29.594393, 42.208225>,  <35.994667, 29.472441, 42.065449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845192, 29.594393, 42.208225>,  <35.596069, 29.797647, 42.446186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845192, 29.594393, 42.208225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131036, -0.817388, 0.560987,
		-0.771323, -0.271434, -0.575660,
		0.622809, -0.508135, -0.594903,
		36.032036, 29.441952, 42.029755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260426, 29.014389, 42.122677>,  <35.596069, 29.797647, 42.446186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260426, 29.014389, 42.122677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657742, 29.029737, 42.166321>,  <35.896130, 29.038946, 42.192509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657742, 29.029737, 42.166321>,  <35.260426, 29.014389, 42.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657742, 29.029737, 42.166321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035989, -0.794000, 0.606851,
		0.109918, -0.606705, -0.787291,
		0.993289, 0.038370, 0.109110,
		35.955727, 29.041248, 42.199055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424061, 28.384663, 42.358997>,  <35.260426, 29.014389, 42.122677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424061, 28.384663, 42.358997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769722, 28.567493, 42.443199>,  <35.977119, 28.677193, 42.493721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769722, 28.567493, 42.443199>,  <35.424061, 28.384663, 42.358997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769722, 28.567493, 42.443199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182632, -0.674662, 0.715177,
		0.468913, -0.579579, -0.666490,
		0.864157, 0.457077, 0.210508,
		36.028969, 28.704617, 42.506351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988304, 27.917589, 42.292480>,  <35.424061, 28.384663, 42.358997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988304, 27.917589, 42.292480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103760, 28.210260, 42.539490>,  <36.173035, 28.385862, 42.687695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103760, 28.210260, 42.539490>,  <35.988304, 27.917589, 42.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103760, 28.210260, 42.539490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155248, -0.672207, 0.723903,
		0.944768, -0.113076, -0.307616,
		0.288638, 0.731677, 0.617525,
		36.190350, 28.429764, 42.724747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474430, 27.568880, 42.814438>,  <35.988304, 27.917589, 42.292480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474430, 27.568880, 42.814438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371227, 27.920630, 42.974506>,  <36.309303, 28.131680, 43.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371227, 27.920630, 42.974506>,  <36.474430, 27.568880, 42.814438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371227, 27.920630, 42.974506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178810, -0.363576, 0.914243,
		0.949452, 0.307437, -0.063435,
		-0.258009, 0.879372, 0.400170,
		36.293823, 28.184441, 43.094559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920589, 27.690454, 43.395927>,  <36.474430, 27.568880, 42.814438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920589, 27.690454, 43.395927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615170, 27.935684, 43.477058>,  <36.431919, 28.082821, 43.525738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615170, 27.935684, 43.477058>,  <36.920589, 27.690454, 43.395927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615170, 27.935684, 43.477058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093407, -0.415645, 0.904718,
		0.638961, 0.671850, 0.374629,
		-0.763547, 0.613072, 0.202825,
		36.386105, 28.119606, 43.537907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011063, 27.802258, 44.123940>,  <36.920589, 27.690454, 43.395927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011063, 27.802258, 44.123940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631432, 27.919855, 44.078636>,  <36.403652, 27.990414, 44.051453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631432, 27.919855, 44.078636>,  <37.011063, 27.802258, 44.123940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631432, 27.919855, 44.078636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248453, -0.477346, 0.842859,
		0.193731, 0.828075, 0.526080,
		-0.949073, 0.293995, -0.113261,
		36.346710, 28.008053, 44.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782040, 28.026794, 44.803322>,  <37.011063, 27.802258, 44.123940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782040, 28.026794, 44.803322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441566, 27.957745, 44.605053>,  <36.237282, 27.916315, 44.486092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.441566, 27.957745, 44.605053>,  <36.782040, 28.026794, 44.803322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441566, 27.957745, 44.605053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473179, -0.156303, 0.866989,
		-0.227140, 0.972507, 0.051359,
		-0.851181, -0.172626, -0.495673,
		36.186211, 27.905956, 44.456352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184193, 28.388275, 45.080101>,  <36.782040, 28.026794, 44.803322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184193, 28.388275, 45.080101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019459, 28.091442, 44.868553>,  <35.920616, 27.913342, 44.741627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019459, 28.091442, 44.868553>,  <36.184193, 28.388275, 45.080101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019459, 28.091442, 44.868553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506251, -0.296245, 0.809907,
		-0.757693, 0.601291, -0.253675,
		-0.411839, -0.742084, -0.528866,
		35.895908, 27.868816, 44.709892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485016, 28.354136, 45.307713>,  <36.184193, 28.388275, 45.080101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485016, 28.354136, 45.307713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564201, 28.003885, 45.131489>,  <35.611713, 27.793736, 45.025753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564201, 28.003885, 45.131489>,  <35.485016, 28.354136, 45.307713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564201, 28.003885, 45.131489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470066, -0.479205, 0.741216,
		-0.860146, 0.060361, -0.506464,
		0.197960, -0.875625, -0.440560,
		35.623589, 27.741198, 44.999321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910309, 28.007212, 45.266102>,  <35.485016, 28.354136, 45.307713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910309, 28.007212, 45.266102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168964, 27.702919, 45.243683>,  <35.324158, 27.520344, 45.230232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168964, 27.702919, 45.243683>,  <34.910309, 28.007212, 45.266102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168964, 27.702919, 45.243683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489533, -0.470219, 0.734338,
		-0.584987, -0.447418, -0.676467,
		0.646643, -0.760731, -0.056046,
		35.362957, 27.474699, 45.226868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550510, 27.353163, 45.180492>,  <34.910309, 28.007212, 45.266102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550510, 27.353163, 45.180492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915070, 27.267935, 45.321316>,  <35.133804, 27.216797, 45.405811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915070, 27.267935, 45.321316>,  <34.550510, 27.353163, 45.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915070, 27.267935, 45.321316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405099, -0.314046, 0.858644,
		-0.072389, -0.925190, -0.372537,
		0.911403, -0.213071, 0.352060,
		35.188492, 27.204014, 45.426933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352531, 26.933939, 45.712868>,  <34.550510, 27.353163, 45.180492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352531, 26.933939, 45.712868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735241, 27.006454, 45.803837>,  <34.964867, 27.049963, 45.858418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735241, 27.006454, 45.803837>,  <34.352531, 26.933939, 45.712868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735241, 27.006454, 45.803837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167097, -0.297371, 0.940026,
		0.238044, -0.937393, -0.254224,
		0.956772, 0.181288, 0.227423,
		35.022274, 27.060841, 45.872063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578358, 26.337776, 46.098537>,  <34.352531, 26.933939, 45.712868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578358, 26.337776, 46.098537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837460, 26.628742, 46.189121>,  <34.992920, 26.803322, 46.243473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837460, 26.628742, 46.189121>,  <34.578358, 26.337776, 46.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837460, 26.628742, 46.189121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042805, -0.262033, 0.964109,
		0.760648, -0.634197, -0.138596,
		0.647752, 0.727415, 0.226462,
		35.031784, 26.846968, 46.257061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041477, 26.089394, 46.642628>,  <34.578358, 26.337776, 46.098537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041477, 26.089394, 46.642628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051487, 26.488035, 46.674011>,  <35.057491, 26.727221, 46.692841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.051487, 26.488035, 46.674011>,  <35.041477, 26.089394, 46.642628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051487, 26.488035, 46.674011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317666, -0.082344, 0.944620,
		0.947872, 0.001286, -0.318647,
		0.025024, 0.996603, 0.078461,
		35.058994, 26.787016, 46.697548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718803, 26.274822, 46.968723>,  <35.041477, 26.089394, 46.642628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718803, 26.274822, 46.968723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473328, 26.589809, 46.991623>,  <35.326042, 26.778801, 47.005363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473328, 26.589809, 46.991623>,  <35.718803, 26.274822, 46.968723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473328, 26.589809, 46.991623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346336, 0.203329, 0.915810,
		0.709530, 0.581853, -0.397510,
		-0.613693, 0.787467, 0.057248,
		35.289219, 26.826050, 47.008797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149109, 26.768660, 47.346542>,  <35.718803, 26.274822, 46.968723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149109, 26.768660, 47.346542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775948, 26.906479, 47.388454>,  <35.552052, 26.989170, 47.413601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775948, 26.906479, 47.388454>,  <36.149109, 26.768660, 47.346542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775948, 26.906479, 47.388454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197427, 0.245980, 0.948955,
		0.301187, 0.905970, -0.297499,
		-0.932904, 0.344547, 0.104777,
		35.496075, 27.009844, 47.419888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212517, 27.409447, 47.604671>,  <36.149109, 26.768660, 47.346542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212517, 27.409447, 47.604671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836185, 27.307955, 47.694530>,  <35.610386, 27.247059, 47.748447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836185, 27.307955, 47.694530>,  <36.212517, 27.409447, 47.604671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836185, 27.307955, 47.694530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170216, 0.219399, 0.960672,
		-0.293039, 0.942064, -0.163227,
		-0.940827, -0.253730, 0.224647,
		35.553936, 27.231836, 47.761925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962074, 27.845657, 48.072861>,  <36.212517, 27.409447, 47.604671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962074, 27.845657, 48.072861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744743, 27.512331, 48.113625>,  <35.614346, 27.312336, 48.138081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744743, 27.512331, 48.113625>,  <35.962074, 27.845657, 48.072861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744743, 27.512331, 48.113625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084687, 0.066366, 0.994195,
		-0.835242, 0.548799, 0.034513,
		-0.543323, -0.833316, 0.101908,
		35.581745, 27.262337, 48.144196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643623, 28.004221, 48.699257>,  <35.962074, 27.845657, 48.072861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643623, 28.004221, 48.699257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611401, 27.609003, 48.646675>,  <35.592068, 27.371872, 48.615124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611401, 27.609003, 48.646675>,  <35.643623, 28.004221, 48.699257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611401, 27.609003, 48.646675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112642, -0.140065, 0.983714,
		-0.990365, 0.064439, 0.122578,
		-0.080559, -0.988043, -0.131457,
		35.587234, 27.312590, 48.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445354, 27.789480, 49.308651>,  <35.643623, 28.004221, 48.699257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445354, 27.789480, 49.308651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586803, 27.454374, 49.142227>,  <35.671673, 27.253311, 49.042374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586803, 27.454374, 49.142227>,  <35.445354, 27.789480, 49.308651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586803, 27.454374, 49.142227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516146, -0.196186, 0.833729,
		-0.780092, -0.509572, 0.363032,
		0.353623, -0.837763, -0.416057,
		35.692890, 27.203045, 49.017410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165192, 27.231201, 49.702175>,  <35.445354, 27.789480, 49.308651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165192, 27.231201, 49.702175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469074, 27.055223, 49.510635>,  <35.651405, 26.949636, 49.395714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469074, 27.055223, 49.510635>,  <35.165192, 27.231201, 49.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469074, 27.055223, 49.510635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349122, -0.345296, 0.871139,
		-0.548599, -0.828986, -0.108728,
		0.759706, -0.439947, -0.478847,
		35.696987, 26.923241, 49.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167419, 26.571533, 49.989452>,  <35.165192, 27.231201, 49.702175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167419, 26.571533, 49.989452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529343, 26.616152, 49.825073>,  <35.746498, 26.642923, 49.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529343, 26.616152, 49.825073>,  <35.167419, 26.571533, 49.989452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529343, 26.616152, 49.825073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425748, -0.254427, 0.868335,
		-0.007695, -0.960637, -0.277699,
		0.904809, 0.111548, -0.410947,
		35.800785, 26.649616, 49.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468273, 25.899763, 50.058403>,  <35.167419, 26.571533, 49.989452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468273, 25.899763, 50.058403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740730, 26.191940, 50.038437>,  <35.904205, 26.367247, 50.026459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740730, 26.191940, 50.038437>,  <35.468273, 25.899763, 50.058403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740730, 26.191940, 50.038437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391314, -0.305588, 0.868038,
		0.618801, -0.610792, -0.493983,
		0.681146, 0.730445, -0.049913,
		35.945072, 26.411074, 50.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005428, 25.500917, 50.442780>,  <35.468273, 25.899763, 50.058403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005428, 25.500917, 50.442780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123348, 25.882303, 50.417496>,  <36.194099, 26.111135, 50.402325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123348, 25.882303, 50.417496>,  <36.005428, 25.500917, 50.442780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123348, 25.882303, 50.417496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469900, -0.087055, 0.878416,
		0.832036, -0.288663, -0.473698,
		0.294804, 0.953465, -0.063210,
		36.211788, 26.168343, 50.398533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805016, 25.499966, 50.456554>,  <36.005428, 25.500917, 50.442780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805016, 25.499966, 50.456554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683598, 25.866516, 50.560951>,  <36.610744, 26.086447, 50.623589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683598, 25.866516, 50.560951>,  <36.805016, 25.499966, 50.456554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683598, 25.866516, 50.560951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657730, 0.003340, 0.753246,
		0.689384, 0.400309, -0.603741,
		-0.303548, 0.916374, 0.260992,
		36.592533, 26.141428, 50.639248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475498, 25.935822, 50.542660>,  <36.805016, 25.499966, 50.456554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475498, 25.935822, 50.542660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143978, 26.037100, 50.742252>,  <36.945068, 26.097868, 50.862007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143978, 26.037100, 50.742252>,  <37.475498, 25.935822, 50.542660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143978, 26.037100, 50.742252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496083, -0.080020, 0.864580,
		0.258838, 0.964100, -0.059286,
		-0.828797, 0.253197, 0.498986,
		36.895340, 26.113058, 50.891949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448586, 26.720549, 50.372890>,  <37.475498, 25.935822, 50.542660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448586, 26.720549, 50.372890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780567, 26.543436, 50.237171>,  <37.979755, 26.437168, 50.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780567, 26.543436, 50.237171>,  <37.448586, 26.720549, 50.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780567, 26.543436, 50.237171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217527, 0.816982, -0.534062,
		0.513673, 0.369440, 0.774373,
		0.829953, -0.442780, -0.339299,
		38.029552, 26.410603, 50.135380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945995, 26.449697, 50.801846>,  <37.448586, 26.720549, 50.372890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945995, 26.449697, 50.801846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241211, 26.472300, 51.070801>,  <38.418339, 26.485861, 51.232174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241211, 26.472300, 51.070801>,  <37.945995, 26.449697, 50.801846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241211, 26.472300, 51.070801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642619, 0.245009, -0.725955,
		-0.205763, 0.967873, 0.144514,
		0.738039, 0.056507, 0.672388,
		38.462624, 26.489252, 51.272518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257378, 27.100636, 50.757576>,  <37.945995, 26.449697, 50.801846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257378, 27.100636, 50.757576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533195, 26.866840, 50.928646>,  <38.698685, 26.726562, 51.031288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533195, 26.866840, 50.928646>,  <38.257378, 27.100636, 50.757576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533195, 26.866840, 50.928646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681640, 0.324201, -0.655942,
		0.244740, 0.743818, 0.621962,
		0.689542, -0.584490, 0.427672,
		38.740059, 26.691494, 51.056946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813217, 27.509787, 50.739750>,  <38.257378, 27.100636, 50.757576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813217, 27.509787, 50.739750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944347, 27.136429, 50.798138>,  <39.023026, 26.912415, 50.833168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944347, 27.136429, 50.798138>,  <38.813217, 27.509787, 50.739750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944347, 27.136429, 50.798138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775801, 0.177804, -0.605407,
		0.539129, 0.311712, 0.782417,
		0.327830, -0.933392, 0.145968,
		39.042698, 26.856411, 50.841927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500763, 27.551584, 50.789551>,  <38.813217, 27.509787, 50.739750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500763, 27.551584, 50.789551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460075, 27.165495, 50.693222>,  <39.435665, 26.933842, 50.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460075, 27.165495, 50.693222>,  <39.500763, 27.551584, 50.789551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460075, 27.165495, 50.693222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717793, 0.096403, -0.689550,
		0.688786, -0.243002, 0.683025,
		-0.101717, -0.965223, -0.240826,
		39.429562, 26.875927, 50.620975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214531, 27.347849, 50.647865>,  <39.500763, 27.551584, 50.789551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214531, 27.347849, 50.647865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942719, 27.103479, 50.485382>,  <39.779633, 26.956858, 50.387894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942719, 27.103479, 50.485382>,  <40.214531, 27.347849, 50.647865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942719, 27.103479, 50.485382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551120, -0.059612, -0.832294,
		0.484255, -0.789440, 0.377202,
		-0.679532, -0.610926, -0.406208,
		39.738857, 26.920202, 50.363518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637058, 26.784903, 50.325783>,  <40.214531, 27.347849, 50.647865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637058, 26.784903, 50.325783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268360, 26.800850, 50.171486>,  <40.047142, 26.810417, 50.078907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268360, 26.800850, 50.171486>,  <40.637058, 26.784903, 50.325783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268360, 26.800850, 50.171486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387396, 0.049482, -0.920584,
		-0.017615, -0.997979, -0.061055,
		-0.921745, 0.039869, -0.385741,
		39.991837, 26.812809, 50.055763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598827, 26.328218, 49.679394>,  <40.637058, 26.784903, 50.325783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598827, 26.328218, 49.679394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281857, 26.568174, 49.635239>,  <40.091675, 26.712147, 49.608746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281857, 26.568174, 49.635239>,  <40.598827, 26.328218, 49.679394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281857, 26.568174, 49.635239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216394, 0.107276, -0.970394,
		-0.570286, -0.792859, -0.214821,
		-0.792431, 0.599888, -0.110392,
		40.044128, 26.748140, 49.602119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491745, 26.376610, 48.923092>,  <40.598827, 26.328218, 49.679394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491745, 26.376610, 48.923092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233356, 26.657953, 49.041756>,  <40.078323, 26.826759, 49.112953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233356, 26.657953, 49.041756>,  <40.491745, 26.376610, 48.923092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233356, 26.657953, 49.041756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094602, 0.311868, -0.945404,
		-0.757479, -0.638766, -0.134918,
		-0.645969, 0.703361, 0.296662,
		40.039566, 26.868961, 49.130753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919765, 26.323174, 48.458912>,  <40.491745, 26.376610, 48.923092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919765, 26.323174, 48.458912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952961, 26.692083, 48.609917>,  <39.972878, 26.913429, 48.700520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952961, 26.692083, 48.609917>,  <39.919765, 26.323174, 48.458912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952961, 26.692083, 48.609917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192118, 0.386524, -0.902048,
		-0.977857, 0.002332, 0.209263,
		0.082989, 0.922277, 0.377517,
		39.977859, 26.968767, 48.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443375, 26.596920, 48.235638>,  <39.919765, 26.323174, 48.458912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443375, 26.596920, 48.235638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670444, 26.912436, 48.329918>,  <39.806686, 27.101746, 48.386486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670444, 26.912436, 48.329918>,  <39.443375, 26.596920, 48.235638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670444, 26.912436, 48.329918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162808, 0.388212, -0.907075,
		-0.806992, 0.476553, 0.348801,
		0.567678, 0.788790, 0.235697,
		39.840748, 27.149073, 48.400627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113071, 27.215750, 48.103588>,  <39.443375, 26.596920, 48.235638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113071, 27.215750, 48.103588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487358, 27.356581, 48.094898>,  <39.711929, 27.441078, 48.089684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487358, 27.356581, 48.094898>,  <39.113071, 27.215750, 48.103588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487358, 27.356581, 48.094898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252421, 0.625306, -0.738428,
		-0.246401, 0.696444, 0.673982,
		0.935719, 0.352077, -0.021721,
		39.768074, 27.462204, 48.088383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974400, 27.863432, 48.079411>,  <39.113071, 27.215750, 48.103588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974400, 27.863432, 48.079411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352776, 27.853262, 47.950069>,  <39.579800, 27.847160, 47.872463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352776, 27.853262, 47.950069>,  <38.974400, 27.863432, 48.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352776, 27.853262, 47.950069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244496, 0.599206, -0.762348,
		0.213138, 0.800192, 0.560594,
		0.945935, -0.025423, -0.323357,
		39.636555, 27.845634, 47.853062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171604, 28.584093, 47.860653>,  <38.974400, 27.863432, 48.079411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171604, 28.584093, 47.860653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430954, 28.345137, 47.671875>,  <39.586563, 28.201763, 47.558609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430954, 28.345137, 47.671875>,  <39.171604, 28.584093, 47.860653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430954, 28.345137, 47.671875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026813, 0.601599, -0.798348,
		0.760846, 0.530286, 0.374045,
		0.648378, -0.597391, -0.471943,
		39.625469, 28.165920, 47.530293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757244, 28.997641, 47.600014>,  <39.171604, 28.584093, 47.860653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757244, 28.997641, 47.600014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767334, 28.656548, 47.391319>,  <39.773388, 28.451891, 47.266102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767334, 28.656548, 47.391319>,  <39.757244, 28.997641, 47.600014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767334, 28.656548, 47.391319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093700, 0.521622, -0.848015,
		0.995281, -0.027493, 0.093061,
		0.025228, -0.852733, -0.521737,
		39.774902, 28.400728, 47.234798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207954, 29.169142, 47.003696>,  <39.757244, 28.997641, 47.600014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207954, 29.169142, 47.003696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048172, 28.822821, 46.883148>,  <39.952305, 28.615028, 46.810818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048172, 28.822821, 46.883148>,  <40.207954, 29.169142, 47.003696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048172, 28.822821, 46.883148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039332, 0.344623, -0.937917,
		0.915910, -0.362799, -0.171714,
		-0.399452, -0.865801, -0.301374,
		39.928337, 28.563080, 46.792736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510670, 29.009796, 46.408260>,  <40.207954, 29.169142, 47.003696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510670, 29.009796, 46.408260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161907, 28.817343, 46.371826>,  <39.952652, 28.701872, 46.349964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161907, 28.817343, 46.371826>,  <40.510670, 29.009796, 46.408260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161907, 28.817343, 46.371826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073369, 0.312277, -0.947154,
		0.484151, -0.819143, -0.307575,
		-0.871903, -0.481132, -0.091089,
		39.900337, 28.673004, 46.344498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480663, 28.738983, 45.779518>,  <40.510670, 29.009796, 46.408260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480663, 28.738983, 45.779518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094658, 28.723063, 45.883179>,  <39.863052, 28.713511, 45.945374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094658, 28.723063, 45.883179>,  <40.480663, 28.738983, 45.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094658, 28.723063, 45.883179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260869, 0.244877, -0.933800,
		-0.026295, -0.968737, -0.246693,
		-0.965016, -0.039800, 0.259152,
		39.805153, 28.711123, 45.960926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144512, 28.396355, 45.246571>,  <40.480663, 28.738983, 45.779518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144512, 28.396355, 45.246571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854568, 28.590618, 45.442005>,  <39.680603, 28.707176, 45.559265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854568, 28.590618, 45.442005>,  <40.144512, 28.396355, 45.246571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854568, 28.590618, 45.442005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449741, 0.203632, -0.869636,
		-0.521838, -0.850100, 0.070816,
		-0.724858, 0.485658, 0.488588,
		39.637112, 28.736315, 45.588581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522224, 28.168190, 44.967068>,  <40.144512, 28.396355, 45.246571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522224, 28.168190, 44.967068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 28.523495, 45.115131>,  <39.348160, 28.736677, 45.203972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413433, 28.523495, 45.115131>,  <39.522224, 28.168190, 44.967068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413433, 28.523495, 45.115131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428868, 0.232465, -0.872945,
		-0.861454, -0.396169, 0.317723,
		-0.271974, 0.888262, 0.370162,
		39.331841, 28.789974, 45.226181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751701, 28.222588, 44.739323>,  <39.522224, 28.168190, 44.967068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751701, 28.222588, 44.739323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878662, 28.592381, 44.823784>,  <38.954838, 28.814257, 44.874462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878662, 28.592381, 44.823784>,  <38.751701, 28.222588, 44.739323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878662, 28.592381, 44.823784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468890, 0.346544, -0.812434,
		-0.824256, 0.158862, 0.543475,
		0.317403, 0.924484, 0.211152,
		38.973885, 28.869726, 44.887131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135765, 28.682327, 44.555408>,  <38.751701, 28.222588, 44.739323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135765, 28.682327, 44.555408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470062, 28.901937, 44.559494>,  <38.670639, 29.033703, 44.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470062, 28.901937, 44.559494>,  <38.135765, 28.682327, 44.555408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470062, 28.901937, 44.559494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350487, 0.547656, -0.759758,
		-0.422721, 0.631382, 0.650126,
		0.835743, 0.549026, 0.010215,
		38.720787, 29.066645, 44.562557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973293, 29.431770, 44.416195>,  <38.135765, 28.682327, 44.555408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973293, 29.431770, 44.416195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361294, 29.400846, 44.323997>,  <38.594093, 29.382292, 44.268681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361294, 29.400846, 44.323997>,  <37.973293, 29.431770, 44.416195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361294, 29.400846, 44.323997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170116, 0.461454, -0.870701,
		0.173673, 0.883789, 0.434458,
		0.969999, -0.077309, -0.230489,
		38.652294, 29.377653, 44.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168907, 30.130424, 44.190125>,  <37.973293, 29.431770, 44.416195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168907, 30.130424, 44.190125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443512, 29.884371, 44.035046>,  <38.608273, 29.736738, 43.941998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443512, 29.884371, 44.035046>,  <38.168907, 30.130424, 44.190125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443512, 29.884371, 44.035046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125213, 0.425220, -0.896387,
		0.716258, 0.663924, 0.214895,
		0.686510, -0.615136, -0.387700,
		38.649464, 29.699829, 43.918736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411011, 30.478384, 43.697105>,  <38.168907, 30.130424, 44.190125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411011, 30.478384, 43.697105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536484, 30.111477, 43.598942>,  <38.611767, 29.891333, 43.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.536484, 30.111477, 43.598942>,  <38.411011, 30.478384, 43.697105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536484, 30.111477, 43.598942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086916, 0.229627, -0.969390,
		0.945541, 0.325413, -0.007694,
		0.313686, -0.917266, -0.245405,
		38.630589, 29.836296, 43.525322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789944, 30.638607, 43.095840>,  <38.411011, 30.478384, 43.697105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789944, 30.638607, 43.095840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749546, 30.241175, 43.075443>,  <38.725307, 30.002716, 43.063206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749546, 30.241175, 43.075443>,  <38.789944, 30.638607, 43.095840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749546, 30.241175, 43.075443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099328, 0.040929, -0.994213,
		0.989917, -0.105472, 0.094557,
		-0.100991, -0.993580, -0.050993,
		38.719250, 29.943100, 43.060146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352180, 30.468008, 42.708851>,  <38.789944, 30.638607, 43.095840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352180, 30.468008, 42.708851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061214, 30.194197, 42.689716>,  <38.886635, 30.029909, 42.678234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061214, 30.194197, 42.689716>,  <39.352180, 30.468008, 42.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061214, 30.194197, 42.689716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052232, 0.124750, -0.990812,
		0.684207, -0.718233, -0.126500,
		-0.727415, -0.684528, -0.047840,
		38.842991, 29.988838, 42.675365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573772, 30.022587, 42.289577>,  <39.352180, 30.468008, 42.708851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573772, 30.022587, 42.289577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176121, 29.980869, 42.278061>,  <38.937531, 29.955839, 42.271152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176121, 29.980869, 42.278061>,  <39.573772, 30.022587, 42.289577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176121, 29.980869, 42.278061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010372, 0.173006, -0.984866,
		0.107696, -0.979383, -0.170909,
		-0.994130, -0.104293, -0.028790,
		38.877880, 29.949581, 42.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461250, 29.829088, 41.663864>,  <39.573772, 30.022587, 42.289577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461250, 29.829088, 41.663864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079514, 29.916342, 41.745502>,  <38.850471, 29.968695, 41.794487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079514, 29.916342, 41.745502>,  <39.461250, 29.829088, 41.663864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079514, 29.916342, 41.745502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126570, 0.323612, -0.937686,
		-0.270591, -0.920702, -0.281226,
		-0.954337, 0.218135, 0.204100,
		38.793213, 29.981783, 41.806732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119057, 29.601257, 41.105087>,  <39.461250, 29.829088, 41.663864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119057, 29.601257, 41.105087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877934, 29.864098, 41.286125>,  <38.733261, 30.021803, 41.394749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877934, 29.864098, 41.286125>,  <39.119057, 29.601257, 41.105087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877934, 29.864098, 41.286125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171058, 0.447616, -0.877712,
		-0.779334, -0.606512, -0.157425,
		-0.602808, 0.657102, 0.452591,
		38.697090, 30.061228, 41.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547543, 29.566868, 40.723095>,  <39.119057, 29.601257, 41.105087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547543, 29.566868, 40.723095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568466, 29.925861, 40.898270>,  <38.581020, 30.141258, 41.003372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568466, 29.925861, 40.898270>,  <38.547543, 29.566868, 40.723095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568466, 29.925861, 40.898270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204889, 0.438850, -0.874889,
		-0.977387, -0.043965, 0.206839,
		0.052307, 0.897484, 0.437934,
		38.584160, 30.195107, 41.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007320, 29.980505, 40.413486>,  <38.547543, 29.566868, 40.723095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007320, 29.980505, 40.413486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234276, 30.251043, 40.601372>,  <38.370449, 30.413366, 40.714104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234276, 30.251043, 40.601372>,  <38.007320, 29.980505, 40.413486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234276, 30.251043, 40.601372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274292, 0.693075, -0.666642,
		-0.776423, 0.249409, 0.578759,
		0.567390, 0.676345, 0.469708,
		38.404491, 30.453947, 40.742283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626633, 30.589794, 40.341835>,  <38.007320, 29.980505, 40.413486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626633, 30.589794, 40.341835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999569, 30.712141, 40.418980>,  <38.223331, 30.785549, 40.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999569, 30.712141, 40.418980>,  <37.626633, 30.589794, 40.341835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999569, 30.712141, 40.418980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096606, 0.724683, -0.682277,
		-0.348450, 0.617480, 0.705196,
		0.932336, 0.305865, 0.192864,
		38.279270, 30.803900, 40.476837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486992, 31.273979, 40.554863>,  <37.626633, 30.589794, 40.341835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486992, 31.273979, 40.554863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872990, 31.249037, 40.452961>,  <38.104588, 31.234072, 40.391819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872990, 31.249037, 40.452961>,  <37.486992, 31.273979, 40.554863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872990, 31.249037, 40.452961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093444, 0.825849, -0.556095,
		0.245070, 0.560433, 0.791111,
		0.964992, -0.062358, -0.254760,
		38.162487, 31.230330, 40.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668167, 32.063797, 40.587387>,  <37.486992, 31.273979, 40.554863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668167, 32.063797, 40.587387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960159, 31.864586, 40.400158>,  <38.135353, 31.745058, 40.287819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960159, 31.864586, 40.400158>,  <37.668167, 32.063797, 40.587387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960159, 31.864586, 40.400158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211598, 0.815884, -0.538107,
		0.649888, 0.293764, 0.700962,
		0.729980, -0.498032, -0.468073,
		38.179153, 31.715176, 40.259735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313274, 32.488983, 40.489937>,  <37.668167, 32.063797, 40.587387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313274, 32.488983, 40.489937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391327, 32.235085, 40.190868>,  <38.438156, 32.082745, 40.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391327, 32.235085, 40.190868>,  <38.313274, 32.488983, 40.489937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391327, 32.235085, 40.190868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206156, 0.771843, -0.601463,
		0.958866, -0.036775, 0.281466,
		0.195129, -0.634749, -0.747675,
		38.449867, 32.044659, 39.966564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999249, 32.650177, 40.257439>,  <38.313274, 32.488983, 40.489937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999249, 32.650177, 40.257439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802025, 32.454899, 39.969395>,  <38.683689, 32.337730, 39.796570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802025, 32.454899, 39.969395>,  <38.999249, 32.650177, 40.257439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802025, 32.454899, 39.969395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265250, 0.703949, -0.658862,
		0.828575, -0.515866, -0.217592,
		-0.493058, -0.488200, -0.720107,
		38.654106, 32.308437, 39.753361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457462, 32.667763, 39.679474>,  <38.999249, 32.650177, 40.257439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457462, 32.667763, 39.679474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093597, 32.583111, 39.536514>,  <38.875278, 32.532322, 39.450741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093597, 32.583111, 39.536514>,  <39.457462, 32.667763, 39.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093597, 32.583111, 39.536514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172582, 0.590089, -0.788676,
		0.377801, -0.779108, -0.500258,
		-0.909660, -0.211628, -0.357396,
		38.820698, 32.519623, 39.429295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554840, 32.667309, 38.950893>,  <39.457462, 32.667763, 39.679474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554840, 32.667309, 38.950893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157375, 32.711761, 38.957577>,  <38.918896, 32.738434, 38.961586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157375, 32.711761, 38.957577>,  <39.554840, 32.667309, 38.950893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157375, 32.711761, 38.957577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074712, 0.764325, -0.640489,
		-0.083948, -0.635183, -0.767786,
		-0.993665, 0.111130, 0.016707,
		38.859276, 32.745102, 38.962589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320271, 32.650551, 38.255608>,  <39.554840, 32.667309, 38.950893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320271, 32.650551, 38.255608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052849, 32.848770, 38.477406>,  <38.892395, 32.967701, 38.610485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052849, 32.848770, 38.477406>,  <39.320271, 32.650551, 38.255608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052849, 32.848770, 38.477406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079723, 0.789092, -0.609079,
		-0.739376, -0.362998, -0.567059,
		-0.668556, 0.495546, 0.554496,
		38.852283, 32.997433, 38.643753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810143, 32.924259, 37.748333>,  <39.320271, 32.650551, 38.255608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810143, 32.924259, 37.748333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821945, 33.129509, 38.091454>,  <38.829025, 33.252659, 38.297325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821945, 33.129509, 38.091454>,  <38.810143, 32.924259, 37.748333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821945, 33.129509, 38.091454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017554, 0.858312, -0.512827,
		-0.999410, 0.000074, 0.034333,
		0.029507, 0.513128, 0.857805,
		38.830795, 33.283447, 38.348797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290817, 33.405678, 37.830578>,  <38.810143, 32.924259, 37.748333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290817, 33.405678, 37.830578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628365, 33.529846, 38.005634>,  <38.830891, 33.604347, 38.110668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628365, 33.529846, 38.005634>,  <38.290817, 33.405678, 37.830578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628365, 33.529846, 38.005634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029907, 0.841594, -0.539282,
		-0.535721, 0.441993, 0.719476,
		0.843865, 0.310422, 0.437640,
		38.881523, 33.622974, 38.136925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211739, 34.113041, 38.170273>,  <38.290817, 33.405678, 37.830578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211739, 34.113041, 38.170273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580235, 34.028290, 38.039780>,  <38.801331, 33.977440, 37.961483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580235, 34.028290, 38.039780>,  <38.211739, 34.113041, 38.170273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580235, 34.028290, 38.039780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067166, 0.739413, -0.669894,
		0.383159, 0.639043, 0.666943,
		0.921237, -0.211880, -0.326235,
		38.856606, 33.964725, 37.941910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625969, 34.676556, 38.118950>,  <38.211739, 34.113041, 38.170273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625969, 34.676556, 38.118950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841530, 34.440994, 37.878025>,  <38.970867, 34.299656, 37.733471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841530, 34.440994, 37.878025>,  <38.625969, 34.676556, 38.118950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841530, 34.440994, 37.878025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035183, 0.730133, -0.682399,
		0.841635, 0.346554, 0.414188,
		0.538900, -0.588903, -0.602312,
		39.003201, 34.264324, 37.697330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217033, 35.014221, 37.829174>,  <38.625969, 34.676556, 38.118950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217033, 35.014221, 37.829174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078812, 34.739384, 37.573521>,  <38.995876, 34.574482, 37.420128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078812, 34.739384, 37.573521>,  <39.217033, 35.014221, 37.829174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078812, 34.739384, 37.573521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007588, 0.679026, -0.734075,
		0.938367, -0.258514, -0.229428,
		-0.345556, -0.687091, -0.639137,
		38.975143, 34.533257, 37.381779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477417, 35.731960, 37.966320>,  <39.217033, 35.014221, 37.829174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477417, 35.731960, 37.966320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595257, 35.581303, 38.317627>,  <39.665962, 35.490910, 38.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595257, 35.581303, 38.317627>,  <39.477417, 35.731960, 37.966320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595257, 35.581303, 38.317627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063300, -0.909342, -0.411205,
		0.953521, 0.176736, -0.244053,
		0.294602, -0.376644, 0.878265,
		39.683636, 35.468311, 38.581108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029694, 35.223778, 37.912426>,  <39.477417, 35.731960, 37.966320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029694, 35.223778, 37.912426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067932, 35.372311, 38.281853>,  <40.090874, 35.461430, 38.503510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067932, 35.372311, 38.281853>,  <40.029694, 35.223778, 37.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067932, 35.372311, 38.281853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291518, -0.876692, 0.382660,
		0.951777, -0.305816, 0.024444,
		0.095594, 0.371333, 0.923566,
		40.096611, 35.483711, 38.558922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172810, 34.699856, 38.301479>,  <40.029694, 35.223778, 37.912426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172810, 34.699856, 38.301479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062153, 34.963142, 38.581543>,  <39.995758, 35.121113, 38.749580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062153, 34.963142, 38.581543>,  <40.172810, 34.699856, 38.301479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062153, 34.963142, 38.581543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371073, -0.745252, 0.553990,
		0.886438, -0.106551, 0.450415,
		-0.276644, 0.658215, 0.700158,
		39.979160, 35.160606, 38.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691799, 34.617619, 37.656326>,  <40.172810, 34.699856, 38.301479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691799, 34.617619, 37.656326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000641, 34.451500, 37.463913>,  <41.185944, 34.351830, 37.348465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000641, 34.451500, 37.463913>,  <40.691799, 34.617619, 37.656326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000641, 34.451500, 37.463913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404686, 0.262309, -0.876027,
		0.489987, 0.871048, 0.034466,
		0.772102, -0.415294, -0.481029,
		41.232273, 34.326912, 37.319603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909435, 35.143513, 37.202892>,  <40.691799, 34.617619, 37.656326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909435, 35.143513, 37.202892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055569, 34.800369, 37.058331>,  <41.143250, 34.594482, 36.971592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055569, 34.800369, 37.058331>,  <40.909435, 35.143513, 37.202892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055569, 34.800369, 37.058331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322774, 0.247414, -0.913566,
		0.873125, 0.450410, -0.186505,
		0.365335, -0.857856, -0.361404,
		41.165169, 34.543011, 36.949909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250114, 35.286232, 36.529644>,  <40.909435, 35.143513, 37.202892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250114, 35.286232, 36.529644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156673, 34.897392, 36.521149>,  <41.100609, 34.664089, 36.516052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156673, 34.897392, 36.521149>,  <41.250114, 35.286232, 36.529644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156673, 34.897392, 36.521149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262843, 0.084161, -0.961161,
		0.936133, -0.218945, -0.275170,
		-0.233600, -0.972101, -0.021238,
		41.086594, 34.605762, 36.514778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494118, 35.133148, 35.948257>,  <41.250114, 35.286232, 36.529644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494118, 35.133148, 35.948257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231369, 34.848507, 36.047974>,  <41.073719, 34.677723, 36.107803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231369, 34.848507, 36.047974>,  <41.494118, 35.133148, 35.948257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231369, 34.848507, 36.047974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330133, -0.025815, -0.943581,
		0.677888, -0.702110, -0.217966,
		-0.656871, -0.711600, 0.249289,
		41.034309, 34.635025, 36.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621819, 34.572578, 35.477448>,  <41.494118, 35.133148, 35.948257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621819, 34.572578, 35.477448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244167, 34.551918, 35.607651>,  <41.017578, 34.539520, 35.685772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244167, 34.551918, 35.607651>,  <41.621819, 34.572578, 35.477448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244167, 34.551918, 35.607651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322814, -0.054158, -0.944912,
		0.066439, -0.997195, 0.034457,
		-0.944128, -0.051655, 0.325507,
		40.960930, 34.536423, 35.705303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311672, 34.186905, 34.917999>,  <41.621819, 34.572578, 35.477448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311672, 34.186905, 34.917999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997356, 34.326496, 35.122253>,  <40.808769, 34.410252, 35.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997356, 34.326496, 35.122253>,  <41.311672, 34.186905, 34.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997356, 34.326496, 35.122253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564078, -0.065730, -0.823101,
		-0.253683, -0.934821, 0.248503,
		-0.785787, 0.348982, 0.510638,
		40.761620, 34.431190, 35.275444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705189, 33.796635, 34.721298>,  <41.311672, 34.186905, 34.917999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705189, 33.796635, 34.721298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556763, 34.132519, 34.879894>,  <40.467709, 34.334049, 34.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556763, 34.132519, 34.879894>,  <40.705189, 33.796635, 34.721298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556763, 34.132519, 34.879894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683387, 0.042153, -0.728839,
		-0.628726, -0.541396, 0.558206,
		-0.371060, 0.839710, 0.396485,
		40.445446, 34.384434, 34.998840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009865, 33.675339, 34.656788>,  <40.705189, 33.796635, 34.721298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009865, 33.675339, 34.656788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056206, 34.067913, 34.717937>,  <40.084011, 34.303455, 34.754627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056206, 34.067913, 34.717937>,  <40.009865, 33.675339, 34.656788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056206, 34.067913, 34.717937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771061, 0.185881, -0.609026,
		-0.626134, -0.047320, 0.778278,
		0.115848, 0.981432, 0.152873,
		40.090961, 34.362343, 34.763798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369915, 33.952034, 34.764095>,  <40.009865, 33.675339, 34.656788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369915, 33.952034, 34.764095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564789, 34.287735, 34.667503>,  <39.681713, 34.489155, 34.609550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564789, 34.287735, 34.667503>,  <39.369915, 33.952034, 34.764095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564789, 34.287735, 34.667503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679902, 0.190970, -0.708000,
		-0.548073, 0.509108, 0.663645,
		0.487185, 0.839249, -0.241478,
		39.710945, 34.539509, 34.595058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820766, 34.512775, 34.655674>,  <39.369915, 33.952034, 34.764095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820766, 34.512775, 34.655674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162888, 34.575245, 34.458057>,  <39.368160, 34.612728, 34.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162888, 34.575245, 34.458057>,  <38.820766, 34.512775, 34.655674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162888, 34.575245, 34.458057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514209, 0.138698, -0.846376,
		-0.063660, 0.977943, 0.198935,
		0.855299, 0.156175, -0.494037,
		39.419476, 34.622097, 34.309845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731163, 35.116421, 34.342175>,  <38.820766, 34.512775, 34.655674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731163, 35.116421, 34.342175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018337, 34.925755, 34.139252>,  <39.190643, 34.811356, 34.017498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.018337, 34.925755, 34.139252>,  <38.731163, 35.116421, 34.342175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018337, 34.925755, 34.139252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591002, -0.032307, -0.806023,
		0.367810, 0.878493, -0.304902,
		0.717937, -0.476661, -0.507308,
		39.233719, 34.782757, 33.987061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789944, 35.551655, 33.657330>,  <38.731163, 35.116421, 34.342175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789944, 35.551655, 33.657330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009232, 35.227539, 33.574501>,  <39.140804, 35.033070, 33.524803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009232, 35.227539, 33.574501>,  <38.789944, 35.551655, 33.657330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009232, 35.227539, 33.574501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438419, -0.067588, -0.896226,
		0.712210, 0.582115, -0.392301,
		0.548221, -0.810293, -0.207073,
		39.173698, 34.984451, 33.512379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077511, 35.671646, 32.967960>,  <38.789944, 35.551655, 33.657330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077511, 35.671646, 32.967960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091263, 35.277008, 33.031769>,  <39.099514, 35.040226, 33.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091263, 35.277008, 33.031769>,  <39.077511, 35.671646, 32.967960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091263, 35.277008, 33.031769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394325, -0.160059, -0.904925,
		0.918328, -0.031793, -0.394542,
		0.034379, -0.986595, 0.159523,
		39.101578, 34.981030, 33.079624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309654, 35.305202, 32.324001>,  <39.077511, 35.671646, 32.967960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309654, 35.305202, 32.324001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153183, 34.997002, 32.525322>,  <39.059299, 34.812080, 32.646114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153183, 34.997002, 32.525322>,  <39.309654, 35.305202, 32.324001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153183, 34.997002, 32.525322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302887, -0.408625, -0.860979,
		0.869046, -0.489237, -0.073530,
		-0.391177, -0.770502, 0.503297,
		39.035831, 34.765850, 32.676311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458370, 34.638313, 31.862789>,  <39.309654, 35.305202, 32.324001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458370, 34.638313, 31.862789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166870, 34.550964, 32.122398>,  <38.991970, 34.498554, 32.278164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166870, 34.550964, 32.122398>,  <39.458370, 34.638313, 31.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166870, 34.550964, 32.122398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453580, -0.556124, -0.696413,
		0.513016, -0.801898, 0.306226,
		-0.728752, -0.218373, 0.649025,
		38.948246, 34.485451, 32.317104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498329, 33.924431, 31.891548>,  <39.458370, 34.638313, 31.862789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498329, 33.924431, 31.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132771, 34.041458, 32.004120>,  <38.913437, 34.111675, 32.071663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132771, 34.041458, 32.004120>,  <39.498329, 33.924431, 31.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132771, 34.041458, 32.004120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400961, -0.542130, -0.738461,
		-0.063483, -0.787716, 0.612759,
		-0.913893, 0.292572, 0.281427,
		38.858604, 34.129230, 32.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151268, 33.325916, 31.965887>,  <39.498329, 33.924431, 31.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151268, 33.325916, 31.965887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861702, 33.599327, 31.928499>,  <38.687962, 33.763374, 31.906067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861702, 33.599327, 31.928499>,  <39.151268, 33.325916, 31.965887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861702, 33.599327, 31.928499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372738, -0.501519, -0.780734,
		-0.580536, -0.530339, 0.617833,
		-0.723909, 0.683534, -0.093473,
		38.644527, 33.804386, 31.900457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591316, 32.935009, 31.932348>,  <39.151268, 33.325916, 31.965887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591316, 32.935009, 31.932348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481735, 33.280376, 31.762903>,  <38.415985, 33.487598, 31.661236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481735, 33.280376, 31.762903>,  <38.591316, 32.935009, 31.932348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481735, 33.280376, 31.762903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459326, -0.504448, -0.731130,
		-0.844966, -0.005719, 0.534789,
		-0.273955, 0.863423, -0.423615,
		38.399548, 33.539402, 31.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867863, 32.934490, 31.680355>,  <38.591316, 32.935009, 31.932348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867863, 32.934490, 31.680355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050362, 33.209267, 31.454100>,  <38.159859, 33.374134, 31.318346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050362, 33.209267, 31.454100>,  <37.867863, 32.934490, 31.680355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050362, 33.209267, 31.454100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417350, -0.396218, -0.817821,
		-0.785914, 0.609196, 0.105924,
		0.456244, 0.686944, -0.565641,
		38.187233, 33.415348, 31.284407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322128, 33.215580, 31.276505>,  <37.867863, 32.934490, 31.680355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322128, 33.215580, 31.276505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649113, 33.340714, 31.083055>,  <37.845303, 33.415794, 30.966986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649113, 33.340714, 31.083055>,  <37.322128, 33.215580, 31.276505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649113, 33.340714, 31.083055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446951, -0.185081, -0.875203,
		-0.363301, 0.931601, -0.011476,
		0.817464, 0.312833, -0.483621,
		37.894352, 33.434563, 30.937969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085556, 33.642673, 30.729298>,  <37.322128, 33.215580, 31.276505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085556, 33.642673, 30.729298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426964, 33.454338, 30.640020>,  <37.631809, 33.341335, 30.586454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426964, 33.454338, 30.640020>,  <37.085556, 33.642673, 30.729298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426964, 33.454338, 30.640020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415026, -0.355312, -0.837560,
		0.315051, 0.807505, -0.498676,
		0.853520, -0.470838, -0.223194,
		37.683022, 33.313087, 30.573063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155849, 33.693821, 29.968349>,  <37.085556, 33.642673, 30.729298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155849, 33.693821, 29.968349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343994, 33.378479, 30.126972>,  <37.456882, 33.189274, 30.222145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343994, 33.378479, 30.126972>,  <37.155849, 33.693821, 29.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343994, 33.378479, 30.126972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494731, -0.607683, -0.621259,
		0.730752, 0.096029, -0.675855,
		0.470364, -0.788353, 0.396557,
		37.485104, 33.141972, 30.245939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483467, 33.251049, 29.398958>,  <37.155849, 33.693821, 29.968349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483467, 33.251049, 29.398958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359467, 33.079868, 29.738548>,  <37.285065, 32.977161, 29.942303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359467, 33.079868, 29.738548>,  <37.483467, 33.251049, 29.398958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359467, 33.079868, 29.738548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775459, -0.402817, -0.486212,
		0.550056, -0.809072, -0.206982,
		-0.310005, -0.427950, 0.848974,
		37.266464, 32.951485, 29.993240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525490, 32.530365, 29.416309>,  <37.483467, 33.251049, 29.398958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525490, 32.530365, 29.416309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226734, 32.718189, 29.604639>,  <37.047482, 32.830883, 29.717636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226734, 32.718189, 29.604639>,  <37.525490, 32.530365, 29.416309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226734, 32.718189, 29.604639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614552, -0.217040, -0.758432,
		-0.253950, -0.855803, 0.450678,
		-0.746884, 0.469568, 0.470819,
		37.002666, 32.859058, 29.745886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574646, 32.044724, 29.914078>,  <37.525490, 32.530365, 29.416309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574646, 32.044724, 29.914078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734474, 31.719227, 29.745235>,  <37.830372, 31.523930, 29.643930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734474, 31.719227, 29.745235>,  <37.574646, 32.044724, 29.914078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734474, 31.719227, 29.745235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796729, 0.080534, 0.598946,
		-0.453392, -0.575624, 0.680509,
		0.399572, -0.813739, -0.422104,
		37.854347, 31.475105, 29.618605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110565, 31.849043, 30.352522>,  <37.574646, 32.044724, 29.914078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110565, 31.849043, 30.352522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262314, 31.626551, 30.056768>,  <38.353363, 31.493055, 29.879316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262314, 31.626551, 30.056768>,  <38.110565, 31.849043, 30.352522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262314, 31.626551, 30.056768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782833, -0.233016, 0.576955,
		-0.493207, -0.797692, 0.347035,
		0.379368, -0.556229, -0.739385,
		38.376125, 31.459682, 29.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320381, 31.258060, 30.697304>,  <38.110565, 31.849043, 30.352522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320381, 31.258060, 30.697304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498577, 31.298964, 30.341532>,  <38.605495, 31.323505, 30.128069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498577, 31.298964, 30.341532>,  <38.320381, 31.258060, 30.697304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498577, 31.298964, 30.341532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894090, -0.102203, 0.436070,
		-0.046311, -0.989494, -0.136957,
		0.445486, 0.102257, -0.889430,
		38.632221, 31.329639, 30.074703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840931, 30.709225, 30.679510>,  <38.320381, 31.258060, 30.697304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840931, 30.709225, 30.679510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962894, 31.015789, 30.453363>,  <39.036072, 31.199728, 30.317675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962894, 31.015789, 30.453363>,  <38.840931, 30.709225, 30.679510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962894, 31.015789, 30.453363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890898, -0.019697, 0.453775,
		0.336643, -0.642046, -0.688802,
		0.304912, 0.766413, -0.565367,
		39.054367, 31.245712, 30.283754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512493, 30.630373, 30.632782>,  <38.840931, 30.709225, 30.679510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512493, 30.630373, 30.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460930, 31.015850, 30.539246>,  <39.429993, 31.247135, 30.483124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460930, 31.015850, 30.539246>,  <39.512493, 30.630373, 30.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460930, 31.015850, 30.539246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863973, 0.224890, 0.450527,
		0.486757, -0.143956, -0.861594,
		-0.128908, 0.963692, -0.233841,
		39.422256, 31.304958, 30.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987736, 31.094618, 30.149885>,  <39.512493, 30.630373, 30.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987736, 31.094618, 30.149885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816700, 31.345663, 30.410120>,  <39.714077, 31.496290, 30.566261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816700, 31.345663, 30.410120>,  <39.987736, 31.094618, 30.149885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816700, 31.345663, 30.410120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878393, 0.118474, 0.463022,
		0.213522, 0.769456, -0.601951,
		-0.427591, 0.627615, 0.650588,
		39.688423, 31.533947, 30.605297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505840, 31.517710, 30.329161>,  <39.987736, 31.094618, 30.149885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505840, 31.517710, 30.329161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266712, 31.592678, 30.640926>,  <40.123234, 31.637659, 30.827986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266712, 31.592678, 30.640926>,  <40.505840, 31.517710, 30.329161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266712, 31.592678, 30.640926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801525, 0.124074, 0.584947,
		0.012926, 0.974412, -0.224396,
		-0.597821, 0.187420, 0.779412,
		40.087364, 31.648905, 30.874750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725330, 32.169102, 30.554523>,  <40.505840, 31.517710, 30.329161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725330, 32.169102, 30.554523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553417, 31.962336, 30.850655>,  <40.450268, 31.838276, 31.028334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553417, 31.962336, 30.850655>,  <40.725330, 32.169102, 30.554523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553417, 31.962336, 30.850655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792011, 0.177908, 0.584010,
		-0.433593, 0.837346, 0.332940,
		-0.429785, -0.516915, 0.740327,
		40.424480, 31.807261, 31.072752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643490, 32.673416, 31.036524>,  <40.725330, 32.169102, 30.554523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643490, 32.673416, 31.036524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667835, 32.304787, 31.189884>,  <40.682442, 32.083611, 31.281900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667835, 32.304787, 31.189884>,  <40.643490, 32.673416, 31.036524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667835, 32.304787, 31.189884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759081, 0.292158, 0.581755,
		-0.648144, 0.255627, 0.717331,
		0.060862, -0.921574, 0.383402,
		40.686092, 32.028313, 31.304905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741592, 32.806938, 31.748306>,  <40.643490, 32.673416, 31.036524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741592, 32.806938, 31.748306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844173, 32.422424, 31.707975>,  <40.905724, 32.191715, 31.683777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844173, 32.422424, 31.707975>,  <40.741592, 32.806938, 31.748306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844173, 32.422424, 31.707975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743242, 0.129439, 0.656382,
		-0.617917, -0.243272, 0.747661,
		0.256456, -0.961283, -0.100828,
		40.921112, 32.134041, 31.677727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737160, 32.603760, 32.450809>,  <40.741592, 32.806938, 31.748306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737160, 32.603760, 32.450809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970402, 32.333858, 32.269836>,  <41.110348, 32.171917, 32.161251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970402, 32.333858, 32.269836>,  <40.737160, 32.603760, 32.450809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970402, 32.333858, 32.269836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691068, 0.119197, 0.712893,
		-0.427099, -0.728354, 0.535805,
		0.583105, -0.674754, -0.452433,
		41.145332, 32.131432, 32.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994095, 32.152016, 32.984241>,  <40.737160, 32.603760, 32.450809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994095, 32.152016, 32.984241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256004, 32.105873, 32.685452>,  <41.413151, 32.078190, 32.506180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256004, 32.105873, 32.685452>,  <40.994095, 32.152016, 32.984241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256004, 32.105873, 32.685452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755673, 0.080073, 0.650036,
		-0.015173, -0.990092, 0.139601,
		0.654773, -0.115356, -0.746971,
		41.452435, 32.071266, 32.461361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343109, 31.471395, 33.060684>,  <40.994095, 32.152016, 32.984241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343109, 31.471395, 33.060684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566849, 31.735935, 32.860783>,  <41.701092, 31.894659, 32.740841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566849, 31.735935, 32.860783>,  <41.343109, 31.471395, 33.060684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566849, 31.735935, 32.860783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756245, -0.160244, 0.634362,
		0.339451, -0.732762, -0.589773,
		0.559344, 0.661348, -0.499753,
		41.734653, 31.934340, 32.710857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950783, 31.247322, 33.181683>,  <41.343109, 31.471395, 33.060684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950783, 31.247322, 33.181683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039513, 31.603210, 33.022087>,  <42.092751, 31.816744, 32.926331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039513, 31.603210, 33.022087>,  <41.950783, 31.247322, 33.181683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039513, 31.603210, 33.022087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761546, 0.097467, 0.640740,
		0.608968, -0.445979, -0.655942,
		0.221824, 0.889721, -0.398988,
		42.106060, 31.870127, 32.902390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686722, 31.180586, 33.062847>,  <41.950783, 31.247322, 33.181683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686722, 31.180586, 33.062847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568882, 31.562241, 33.084145>,  <42.498180, 31.791233, 33.096924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568882, 31.562241, 33.084145>,  <42.686722, 31.180586, 33.062847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568882, 31.562241, 33.084145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725508, 0.187051, 0.662307,
		0.621973, 0.233740, -0.747339,
		-0.294598, 0.954137, 0.053240,
		42.480503, 31.848482, 33.100117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264835, 31.589252, 33.070221>,  <42.686722, 31.180586, 33.062847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264835, 31.589252, 33.070221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987717, 31.833916, 33.223015>,  <42.821445, 31.980713, 33.314690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987717, 31.833916, 33.223015>,  <43.264835, 31.589252, 33.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987717, 31.833916, 33.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659025, 0.321952, 0.679730,
		0.292781, 0.722650, -0.626144,
		-0.692795, 0.611657, 0.381983,
		42.779877, 32.017414, 33.337608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594669, 32.265320, 33.150173>,  <43.264835, 31.589252, 33.070221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594669, 32.265320, 33.150173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265572, 32.264809, 33.377537>,  <43.068115, 32.264500, 33.513954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265572, 32.264809, 33.377537>,  <43.594669, 32.265320, 33.150173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265572, 32.264809, 33.377537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557878, 0.189825, 0.807922,
		-0.108934, 0.981817, -0.155462,
		-0.822743, -0.001281, 0.568413,
		43.018749, 32.264423, 33.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761074, 32.757252, 33.588699>,  <43.594669, 32.265320, 33.150173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761074, 32.757252, 33.588699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451897, 32.596169, 33.784817>,  <43.266392, 32.499519, 33.902485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451897, 32.596169, 33.784817>,  <43.761074, 32.757252, 33.588699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451897, 32.596169, 33.784817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362865, 0.353322, 0.862260,
		-0.520468, 0.844388, -0.126971,
		-0.772944, -0.402706, 0.490292,
		43.220013, 32.475357, 33.931904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438374, 33.320637, 33.941994>,  <43.761074, 32.757252, 33.588699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438374, 33.320637, 33.941994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384243, 32.966835, 34.120583>,  <43.351765, 32.754555, 34.227737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384243, 32.966835, 34.120583>,  <43.438374, 33.320637, 33.941994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384243, 32.966835, 34.120583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455403, 0.344674, 0.820858,
		-0.879940, 0.314411, 0.356161,
		-0.135327, -0.884503, 0.446476,
		43.343643, 32.701485, 34.254524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096897, 33.548077, 34.569324>,  <43.438374, 33.320637, 33.941994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096897, 33.548077, 34.569324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231480, 33.181961, 34.657909>,  <43.312229, 32.962292, 34.711060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.231480, 33.181961, 34.657909>,  <43.096897, 33.548077, 34.569324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231480, 33.181961, 34.657909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215265, 0.303702, 0.928130,
		-0.916766, -0.264599, 0.299211,
		0.336453, -0.915288, 0.221465,
		43.332417, 32.907375, 34.724350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791584, 33.374989, 35.166656>,  <43.096897, 33.548077, 34.569324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791584, 33.374989, 35.166656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094193, 33.113644, 35.155327>,  <43.275757, 32.956837, 35.148529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094193, 33.113644, 35.155327>,  <42.791584, 33.374989, 35.166656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094193, 33.113644, 35.155327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266771, 0.268775, 0.925523,
		-0.597088, -0.707730, 0.377631,
		0.756518, -0.653360, -0.028320,
		43.321148, 32.917637, 35.146832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733685, 32.956074, 35.714676>,  <42.791584, 33.374989, 35.166656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733685, 32.956074, 35.714676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120995, 32.930286, 35.618099>,  <43.353378, 32.914814, 35.560154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120995, 32.930286, 35.618099>,  <42.733685, 32.956074, 35.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120995, 32.930286, 35.618099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248720, 0.154852, 0.956117,
		-0.024251, -0.985832, 0.165973,
		0.968272, -0.064468, -0.241441,
		43.411476, 32.910946, 35.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017498, 32.446281, 36.164574>,  <42.733685, 32.956074, 35.714676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017498, 32.446281, 36.164574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320644, 32.656754, 36.010284>,  <43.502533, 32.783035, 35.917713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320644, 32.656754, 36.010284>,  <43.017498, 32.446281, 36.164574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320644, 32.656754, 36.010284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204887, 0.369359, 0.906419,
		0.619406, -0.765971, 0.172117,
		0.757864, 0.526177, -0.385720,
		43.548004, 32.814606, 35.894569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552338, 32.327286, 36.652008>,  <43.017498, 32.446281, 36.164574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552338, 32.327286, 36.652008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673901, 32.649055, 36.447834>,  <43.746838, 32.842117, 36.325329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673901, 32.649055, 36.447834>,  <43.552338, 32.327286, 36.652008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673901, 32.649055, 36.447834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210332, 0.465902, 0.859474,
		0.929193, -0.368563, -0.027604,
		0.303909, 0.804423, -0.510433,
		43.765072, 32.890381, 36.294704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078945, 32.488674, 37.022156>,  <43.552338, 32.327286, 36.652008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078945, 32.488674, 37.022156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980419, 32.812218, 36.808590>,  <43.921303, 33.006344, 36.680450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980419, 32.812218, 36.808590>,  <44.078945, 32.488674, 37.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980419, 32.812218, 36.808590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370070, 0.587644, 0.719529,
		0.895755, -0.020357, -0.444082,
		-0.246315, 0.808863, -0.533919,
		43.906525, 33.054878, 36.648415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663315, 32.897911, 36.954422>,  <44.078945, 32.488674, 37.022156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663315, 32.897911, 36.954422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352314, 33.145542, 36.910179>,  <44.165714, 33.294121, 36.883633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352314, 33.145542, 36.910179>,  <44.663315, 32.897911, 36.954422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352314, 33.145542, 36.910179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333849, 0.555363, 0.761654,
		0.532946, 0.555264, -0.638475,
		-0.777504, 0.619075, -0.110605,
		44.119064, 33.331264, 36.876999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914520, 33.604286, 37.053001>,  <44.663315, 32.897911, 36.954422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914520, 33.604286, 37.053001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525665, 33.696404, 37.070469>,  <44.292351, 33.751675, 37.080948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525665, 33.696404, 37.070469>,  <44.914520, 33.604286, 37.053001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525665, 33.696404, 37.070469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191680, 0.673827, 0.713594,
		0.134914, 0.702084, -0.699197,
		-0.972140, 0.230296, 0.043667,
		44.234024, 33.765491, 37.083569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449509, 33.368069, 36.594395>,  <44.914520, 33.604286, 37.053001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449509, 33.368069, 36.594395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731781, 33.648655, 36.634293>,  <45.901146, 33.817009, 36.658230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731781, 33.648655, 36.634293>,  <45.449509, 33.368069, 36.594395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731781, 33.648655, 36.634293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380683, -0.256648, -0.888376,
		-0.597570, 0.664884, -0.448151,
		0.705685, 0.701470, 0.099745,
		45.943485, 33.859097, 36.664215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566505, 33.994820, 35.987541>,  <45.449509, 33.368069, 36.594395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566505, 33.994820, 35.987541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887585, 33.894009, 36.203747>,  <46.080231, 33.833523, 36.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887585, 33.894009, 36.203747>,  <45.566505, 33.994820, 35.987541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887585, 33.894009, 36.203747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394278, -0.455738, -0.798027,
		0.447459, 0.853689, -0.266450,
		0.802698, -0.252029, 0.540515,
		46.128395, 33.818401, 36.365902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233601, 34.333061, 35.667686>,  <45.566505, 33.994820, 35.987541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233601, 34.333061, 35.667686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325306, 34.005558, 35.878242>,  <46.380329, 33.809055, 36.004574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325306, 34.005558, 35.878242>,  <46.233601, 34.333061, 35.667686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325306, 34.005558, 35.878242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554734, -0.334465, -0.761842,
		0.799819, 0.466665, 0.377511,
		0.229260, -0.818753, 0.526387,
		46.394085, 33.759933, 36.036160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978165, 34.173553, 35.721500>,  <46.233601, 34.333061, 35.667686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978165, 34.173553, 35.721500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779694, 33.826290, 35.717186>,  <46.660610, 33.617931, 35.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779694, 33.826290, 35.717186>,  <46.978165, 34.173553, 35.721500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779694, 33.826290, 35.717186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700216, -0.392788, -0.596167,
		0.513330, -0.303352, 0.802789,
		-0.496174, -0.868156, -0.010782,
		46.630840, 33.565842, 35.713951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265854, 34.698875, 35.467651>,  <46.978165, 34.173553, 35.721500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265854, 34.698875, 35.467651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397411, 34.984875, 35.220879>,  <47.476345, 35.156475, 35.072815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397411, 34.984875, 35.220879>,  <47.265854, 34.698875, 35.467651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397411, 34.984875, 35.220879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713339, -0.616188, -0.333856,
		-0.618853, -0.330279, -0.712697,
		0.328890, 0.715002, -0.616930,
		47.496078, 35.199375, 35.035801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.367073, 32.263828, 47.451347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044598, 32.470589, 47.566505>,  <35.851112, 32.594643, 47.635601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044598, 32.470589, 47.566505>,  <36.367073, 32.263828, 47.451347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044598, 32.470589, 47.566505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066357, 0.404524, -0.912117,
		-0.587931, -0.754439, -0.291821,
		-0.806185, 0.516897, 0.287894,
		35.802742, 32.625656, 47.652874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811432, 32.195492, 46.903641>,  <36.367073, 32.263828, 47.451347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811432, 32.195492, 46.903641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708767, 32.532410, 47.093239>,  <35.647167, 32.734558, 47.206997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708767, 32.532410, 47.093239>,  <35.811432, 32.195492, 46.903641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708767, 32.532410, 47.093239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242569, 0.418590, -0.875182,
		-0.935567, -0.339601, 0.096878,
		-0.256661, 0.842290, 0.473995,
		35.631767, 32.785095, 47.235439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089073, 32.436108, 46.663147>,  <35.811432, 32.195492, 46.903641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089073, 32.436108, 46.663147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280426, 32.755516, 46.809311>,  <35.395237, 32.947159, 46.897011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280426, 32.755516, 46.809311>,  <35.089073, 32.436108, 46.663147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280426, 32.755516, 46.809311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197837, 0.503414, -0.841092,
		-0.855578, 0.330069, 0.398799,
		0.478379, 0.798517, 0.365410,
		35.423939, 32.995071, 46.918934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653553, 32.954563, 46.428848>,  <35.089073, 32.436108, 46.663147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653553, 32.954563, 46.428848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976536, 33.171677, 46.521282>,  <35.170326, 33.301945, 46.576744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.976536, 33.171677, 46.521282>,  <34.653553, 32.954563, 46.428848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976536, 33.171677, 46.521282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282453, 0.699605, -0.656333,
		-0.517919, 0.464687, 0.718210,
		0.807453, 0.542788, 0.231087,
		35.218773, 33.334515, 46.590607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402931, 33.638332, 46.412716>,  <34.653553, 32.954563, 46.428848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402931, 33.638332, 46.412716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799728, 33.666283, 46.370640>,  <35.037807, 33.683052, 46.345394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.799728, 33.666283, 46.370640>,  <34.402931, 33.638332, 46.412716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799728, 33.666283, 46.370640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126216, 0.575530, -0.807982,
		0.004086, 0.814791, 0.579741,
		0.991994, 0.069871, -0.105192,
		35.097328, 33.687244, 46.339081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521786, 34.308258, 46.115952>,  <34.402931, 33.638332, 46.412716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521786, 34.308258, 46.115952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844276, 34.094345, 46.014759>,  <35.037769, 33.965996, 45.954044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844276, 34.094345, 46.014759>,  <34.521786, 34.308258, 46.115952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844276, 34.094345, 46.014759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055578, 0.494193, -0.867574,
		0.588988, 0.685403, 0.428155,
		0.806228, -0.534787, -0.252981,
		35.086143, 33.933910, 45.938866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044994, 34.794933, 45.789143>,  <34.521786, 34.308258, 46.115952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044994, 34.794933, 45.789143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138493, 34.426201, 45.665470>,  <35.194592, 34.204960, 45.591267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138493, 34.426201, 45.665470>,  <35.044994, 34.794933, 45.789143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138493, 34.426201, 45.665470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309609, 0.372006, -0.875073,
		0.921687, 0.108817, 0.372361,
		0.233743, -0.921830, -0.309182,
		35.208614, 34.149651, 45.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685230, 34.955856, 45.445484>,  <35.044994, 34.794933, 45.789143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685230, 34.955856, 45.445484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592857, 34.586952, 45.321480>,  <35.537434, 34.365608, 45.247078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.592857, 34.586952, 45.321480>,  <35.685230, 34.955856, 45.445484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592857, 34.586952, 45.321480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308571, 0.232753, -0.922285,
		0.922743, -0.308646, 0.230832,
		-0.230933, -0.922260, -0.310011,
		35.523579, 34.310276, 45.228477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232635, 34.732803, 44.990223>,  <35.685230, 34.955856, 45.445484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232635, 34.732803, 44.990223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933636, 34.484474, 44.895714>,  <35.754234, 34.335476, 44.839008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.933636, 34.484474, 44.895714>,  <36.232635, 34.732803, 44.990223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933636, 34.484474, 44.895714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089869, 0.257901, -0.961983,
		0.658153, -0.740317, -0.136989,
		-0.747502, -0.620821, -0.236269,
		35.709385, 34.298229, 44.824833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457825, 34.327801, 44.407471>,  <36.232635, 34.732803, 44.990223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457825, 34.327801, 44.407471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058159, 34.329361, 44.391190>,  <35.818359, 34.330296, 44.381420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.058159, 34.329361, 44.391190>,  <36.457825, 34.327801, 44.407471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058159, 34.329361, 44.391190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040812, 0.035684, -0.998529,
		-0.002450, -0.999355, -0.035813,
		-0.999164, 0.003908, -0.040698,
		35.758411, 34.330532, 44.378979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291393, 33.719864, 44.047421>,  <36.457825, 34.327801, 44.407471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291393, 33.719864, 44.047421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998688, 33.991192, 44.020882>,  <35.823063, 34.153988, 44.004959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.998688, 33.991192, 44.020882>,  <36.291393, 33.719864, 44.047421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998688, 33.991192, 44.020882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092709, 0.002629, -0.995690,
		-0.675223, -0.734761, -0.064810,
		-0.731765, 0.678321, -0.066344,
		35.779160, 34.194687, 44.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204010, 33.670044, 43.329067>,  <36.291393, 33.719864, 44.047421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204010, 33.670044, 43.329067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951607, 33.966114, 43.421997>,  <35.800163, 34.143757, 43.477757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.951607, 33.966114, 43.421997>,  <36.204010, 33.670044, 43.329067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951607, 33.966114, 43.421997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091447, 0.368357, -0.925176,
		-0.770368, -0.562547, -0.300122,
		-0.631007, 0.740172, 0.232327,
		35.762306, 34.188164, 43.491695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708775, 33.690540, 42.702354>,  <36.204010, 33.670044, 43.329067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708775, 33.690540, 42.702354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733757, 34.031258, 42.910412>,  <35.748749, 34.235687, 43.035244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733757, 34.031258, 42.910412>,  <35.708775, 33.690540, 42.702354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733757, 34.031258, 42.910412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070302, 0.516107, -0.853634,
		-0.995568, 0.089886, -0.027647,
		0.062461, 0.851794, 0.520139,
		35.752495, 34.286797, 43.066452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205441, 34.087044, 42.425186>,  <35.708775, 33.690540, 42.702354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205441, 34.087044, 42.425186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475838, 34.328621, 42.594086>,  <35.638077, 34.473568, 42.695427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475838, 34.328621, 42.594086>,  <35.205441, 34.087044, 42.425186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475838, 34.328621, 42.594086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221873, 0.379610, -0.898148,
		-0.702717, 0.700824, 0.122614,
		0.675989, 0.603939, 0.422252,
		35.678635, 34.509804, 42.720760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961338, 34.760220, 42.265400>,  <35.205441, 34.087044, 42.425186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961338, 34.760220, 42.265400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349579, 34.795547, 42.354950>,  <35.582523, 34.816746, 42.408680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.349579, 34.795547, 42.354950>,  <34.961338, 34.760220, 42.265400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349579, 34.795547, 42.354950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101707, 0.692557, -0.714157,
		-0.218124, 0.715936, 0.663218,
		0.970607, 0.088321, 0.223879,
		35.640762, 34.822044, 42.422115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063786, 35.329956, 41.918362>,  <34.961338, 34.760220, 42.265400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063786, 35.329956, 41.918362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438915, 35.227848, 42.012444>,  <35.663994, 35.166584, 42.068893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.438915, 35.227848, 42.012444>,  <35.063786, 35.329956, 41.918362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438915, 35.227848, 42.012444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347006, 0.672806, -0.653390,
		0.008540, 0.694384, 0.719554,
		0.937824, -0.255270, 0.235209,
		35.720261, 35.151268, 42.083008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457733, 35.966141, 42.105267>,  <35.063786, 35.329956, 41.918362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457733, 35.966141, 42.105267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721809, 35.683304, 42.003941>,  <35.880257, 35.513603, 41.943146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721809, 35.683304, 42.003941>,  <35.457733, 35.966141, 42.105267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721809, 35.683304, 42.003941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470578, 0.652254, -0.594240,
		0.585410, 0.273105, 0.763354,
		0.660191, -0.707091, -0.253319,
		35.919868, 35.471176, 41.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160587, 36.428562, 42.029007>,  <35.457733, 35.966141, 42.105267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160587, 36.428562, 42.029007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163212, 36.077328, 41.837624>,  <36.164787, 35.866589, 41.722794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163212, 36.077328, 41.837624>,  <36.160587, 36.428562, 42.029007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163212, 36.077328, 41.837624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522903, 0.410852, -0.746842,
		0.852367, -0.245288, 0.461849,
		0.006560, -0.878086, -0.478458,
		36.165180, 35.813904, 41.694084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738998, 36.419102, 41.703136>,  <36.160587, 36.428562, 42.029007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738998, 36.419102, 41.703136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522942, 36.150208, 41.500614>,  <36.393307, 35.988873, 41.379101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522942, 36.150208, 41.500614>,  <36.738998, 36.419102, 41.703136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522942, 36.150208, 41.500614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442777, 0.284614, -0.850260,
		0.715675, -0.683445, 0.143917,
		-0.540145, -0.672233, -0.506305,
		36.360897, 35.948536, 41.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225731, 36.119579, 41.261173>,  <36.738998, 36.419102, 41.703136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225731, 36.119579, 41.261173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866226, 36.053787, 41.098610>,  <36.650524, 36.014313, 41.001072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.866226, 36.053787, 41.098610>,  <37.225731, 36.119579, 41.261173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866226, 36.053787, 41.098610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324873, 0.372625, -0.869257,
		0.294415, -0.913289, -0.281466,
		-0.898764, -0.164482, -0.406409,
		36.596596, 36.004444, 40.976688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364960, 35.867455, 40.546673>,  <37.225731, 36.119579, 41.261173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364960, 35.867455, 40.546673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982735, 35.979343, 40.509472>,  <36.753399, 36.046478, 40.487152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982735, 35.979343, 40.509472>,  <37.364960, 35.867455, 40.546673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982735, 35.979343, 40.509472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234661, 0.530899, -0.814297,
		-0.178403, -0.799938, -0.572949,
		-0.955566, 0.279722, -0.093000,
		36.696064, 36.063259, 40.481571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865746, 35.783401, 39.849194>,  <37.364960, 35.867455, 40.546673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865746, 35.783401, 39.849194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968418, 35.513638, 39.572273>,  <38.030022, 35.351780, 39.406120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968418, 35.513638, 39.572273>,  <37.865746, 35.783401, 39.849194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968418, 35.513638, 39.572273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284234, -0.631949, 0.721007,
		-0.923755, -0.381847, 0.029479,
		0.256685, -0.674413, -0.692301,
		38.045425, 35.311314, 39.364582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400921, 35.167465, 39.793976>,  <37.865746, 35.783401, 39.849194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400921, 35.167465, 39.793976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796879, 35.152199, 39.739353>,  <38.034454, 35.143040, 39.706577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.796879, 35.152199, 39.739353>,  <37.400921, 35.167465, 39.793976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796879, 35.152199, 39.739353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085168, -0.609946, 0.787853,
		-0.113363, -0.791523, -0.600533,
		0.989896, -0.038167, -0.136558,
		38.093849, 35.140747, 39.698387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662365, 34.425335, 39.925755>,  <37.400921, 35.167465, 39.793976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662365, 34.425335, 39.925755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999081, 34.637875, 39.963829>,  <38.201111, 34.765400, 39.986675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999081, 34.637875, 39.963829>,  <37.662365, 34.425335, 39.925755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999081, 34.637875, 39.963829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298027, -0.604487, 0.738766,
		0.450084, -0.593515, -0.667206,
		0.841786, 0.531353, 0.095186,
		38.251617, 34.797279, 39.992386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319256, 33.968285, 39.984367>,  <37.662365, 34.425335, 39.925755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319256, 33.968285, 39.984367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464260, 34.296139, 40.161808>,  <38.551262, 34.492851, 40.268272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.464260, 34.296139, 40.161808>,  <38.319256, 33.968285, 39.984367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464260, 34.296139, 40.161808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183448, -0.529421, 0.828288,
		0.913746, -0.218886, -0.342281,
		0.362511, 0.819636, 0.443602,
		38.573013, 34.542030, 40.294888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953304, 33.794178, 40.397346>,  <38.319256, 33.968285, 39.984367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953304, 33.794178, 40.397346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 34.139229, 40.559669>,  <38.760036, 34.346260, 40.657063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832512, 34.139229, 40.559669>,  <38.953304, 33.794178, 40.397346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832512, 34.139229, 40.559669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009403, -0.428356, 0.903561,
		0.953268, 0.269040, 0.137466,
		-0.301979, 0.862628, 0.405809,
		38.741917, 34.398018, 40.681412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231766, 33.765244, 41.037041>,  <38.953304, 33.794178, 40.397346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231766, 33.765244, 41.037041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938652, 34.035793, 41.066822>,  <38.762783, 34.198124, 41.084690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.938652, 34.035793, 41.066822>,  <39.231766, 33.765244, 41.037041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938652, 34.035793, 41.066822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348258, -0.466787, 0.812912,
		0.584587, 0.569761, 0.577608,
		-0.732786, 0.676374, 0.074453,
		38.718815, 34.238705, 41.089157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287987, 33.900085, 41.626495>,  <39.231766, 33.765244, 41.037041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287987, 33.900085, 41.626495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913265, 34.011444, 41.541740>,  <38.688435, 34.078259, 41.490887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913265, 34.011444, 41.541740>,  <39.287987, 33.900085, 41.626495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913265, 34.011444, 41.541740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316128, -0.414109, 0.853567,
		0.149886, 0.866607, 0.475947,
		-0.936802, 0.278398, -0.211890,
		38.632225, 34.094963, 41.478172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023952, 34.269096, 42.118736>,  <39.287987, 33.900085, 41.626495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023952, 34.269096, 42.118736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690811, 34.150158, 41.931999>,  <38.490925, 34.078796, 41.819958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.690811, 34.150158, 41.931999>,  <39.023952, 34.269096, 42.118736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690811, 34.150158, 41.931999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275745, -0.508424, 0.815763,
		-0.479913, 0.808142, 0.341454,
		-0.832855, -0.297341, -0.466840,
		38.440956, 34.060955, 41.791946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535107, 34.413139, 42.553947>,  <39.023952, 34.269096, 42.118736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535107, 34.413139, 42.553947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346916, 34.150394, 42.318260>,  <38.234001, 33.992748, 42.176846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.346916, 34.150394, 42.318260>,  <38.535107, 34.413139, 42.553947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346916, 34.150394, 42.318260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418665, -0.421634, 0.804328,
		-0.776769, 0.625105, -0.076636,
		-0.470477, -0.656862, -0.589223,
		38.205772, 33.953335, 42.141495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918926, 34.390438, 42.726559>,  <38.535107, 34.413139, 42.553947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918926, 34.390438, 42.726559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924484, 34.050476, 42.515858>,  <37.927818, 33.846500, 42.389439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.924484, 34.050476, 42.515858>,  <37.918926, 34.390438, 42.726559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924484, 34.050476, 42.515858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537817, -0.450465, 0.712625,
		-0.842947, 0.273393, -0.463354,
		0.013899, -0.849905, -0.526753,
		37.928654, 33.795506, 42.357830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268356, 33.944679, 42.581284>,  <37.918926, 34.390438, 42.726559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268356, 33.944679, 42.581284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543133, 33.654480, 42.564487>,  <37.708000, 33.480362, 42.554409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543133, 33.654480, 42.564487>,  <37.268356, 33.944679, 42.581284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543133, 33.654480, 42.564487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452504, -0.472235, 0.756461,
		-0.568639, -0.500646, -0.652689,
		0.686942, -0.725498, -0.041987,
		37.749214, 33.436832, 42.551891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897144, 33.329903, 42.900944>,  <37.268356, 33.944679, 42.581284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897144, 33.329903, 42.900944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279591, 33.215244, 42.876705>,  <37.509060, 33.146450, 42.862164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.279591, 33.215244, 42.876705>,  <36.897144, 33.329903, 42.900944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279591, 33.215244, 42.876705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141849, -0.633868, 0.760323,
		-0.256347, -0.718365, -0.646713,
		0.956119, -0.286642, -0.060591,
		37.566425, 33.129250, 42.858528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842072, 32.674324, 42.820030>,  <36.897144, 33.329903, 42.900944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842072, 32.674324, 42.820030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209393, 32.741295, 42.963528>,  <37.429783, 32.781475, 43.049625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209393, 32.741295, 42.963528>,  <36.842072, 32.674324, 42.820030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209393, 32.741295, 42.963528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113994, -0.755972, 0.644602,
		0.379122, -0.632832, -0.675122,
		0.918298, 0.167423, 0.358744,
		37.484882, 32.791523, 43.071152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238007, 32.001717, 42.874432>,  <36.842072, 32.674324, 42.820030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238007, 32.001717, 42.874432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403751, 32.253063, 43.137779>,  <37.503201, 32.403873, 43.295788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.403751, 32.253063, 43.137779>,  <37.238007, 32.001717, 42.874432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403751, 32.253063, 43.137779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225668, -0.629866, 0.743197,
		0.881688, -0.456529, -0.119192,
		0.414366, 0.628371, 0.658370,
		37.528061, 32.441574, 43.335289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785549, 31.553980, 43.198864>,  <37.238007, 32.001717, 42.874432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785549, 31.553980, 43.198864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685120, 31.858484, 43.438011>,  <37.624863, 32.041187, 43.581501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685120, 31.858484, 43.438011>,  <37.785549, 31.553980, 43.198864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685120, 31.858484, 43.438011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040639, -0.608819, 0.792268,
		0.967115, 0.223213, 0.121920,
		-0.251072, 0.761259, 0.597869,
		37.609798, 32.086861, 43.617371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196823, 31.485271, 43.872402>,  <37.785549, 31.553980, 43.198864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196823, 31.485271, 43.872402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.913994, 31.740253, 43.994843>,  <37.744297, 31.893244, 44.068306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.913994, 31.740253, 43.994843>,  <38.196823, 31.485271, 43.872402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913994, 31.740253, 43.994843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185145, -0.250883, 0.950147,
		0.682472, 0.728496, 0.059371,
		-0.707074, 0.637457, 0.306098,
		37.701870, 31.931490, 44.086674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484917, 31.913008, 44.456997>,  <38.196823, 31.485271, 43.872402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484917, 31.913008, 44.456997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089001, 31.957355, 44.492813>,  <37.851452, 31.983965, 44.514301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.089001, 31.957355, 44.492813>,  <38.484917, 31.913008, 44.456997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089001, 31.957355, 44.492813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089076, -0.009155, 0.995983,
		0.111245, 0.993793, -0.000814,
		-0.989793, 0.110871, 0.089542,
		37.792065, 31.990618, 44.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305176, 32.337975, 45.047409>,  <38.484917, 31.913008, 44.456997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305176, 32.337975, 45.047409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952515, 32.154648, 45.002464>,  <37.740917, 32.044651, 44.975498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952515, 32.154648, 45.002464>,  <38.305176, 32.337975, 45.047409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952515, 32.154648, 45.002464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107498, -0.036790, 0.993524,
		-0.459487, 0.888025, -0.016832,
		-0.881655, -0.458321, -0.112365,
		37.688019, 32.017151, 44.968754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940292, 32.633053, 45.605190>,  <38.305176, 32.337975, 45.047409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940292, 32.633053, 45.605190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708954, 32.322701, 45.504372>,  <37.570152, 32.136490, 45.443882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708954, 32.322701, 45.504372>,  <37.940292, 32.633053, 45.605190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708954, 32.322701, 45.504372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261471, -0.116357, 0.958172,
		-0.772753, 0.620058, -0.135575,
		-0.578347, -0.775880, -0.252042,
		37.535450, 32.089935, 45.428761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.193947, 32.667694, 45.997448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226841, 32.287064, 45.878963>,  <37.246578, 32.058685, 45.807873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.226841, 32.287064, 45.878963>,  <37.193947, 32.667694, 45.997448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226841, 32.287064, 45.878963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255895, -0.307412, 0.916523,
		-0.963201, 0.000430, -0.268783,
		0.082233, -0.951576, -0.296209,
		37.251511, 32.001591, 45.790100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626144, 32.219574, 46.177147>,  <37.193947, 32.667694, 45.997448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626144, 32.219574, 46.177147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918415, 31.947372, 46.155113>,  <37.093777, 31.784052, 46.141891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918415, 31.947372, 46.155113>,  <36.626144, 32.219574, 46.177147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918415, 31.947372, 46.155113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342621, -0.435278, 0.832552,
		-0.590533, -0.589448, -0.551200,
		0.730672, -0.680502, -0.055089,
		37.137615, 31.743221, 46.138588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397640, 31.598835, 46.440819>,  <36.626144, 32.219574, 46.177147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397640, 31.598835, 46.440819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790154, 31.525381, 46.464008>,  <37.025661, 31.481308, 46.477924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.790154, 31.525381, 46.464008>,  <36.397640, 31.598835, 46.440819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790154, 31.525381, 46.464008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103738, -0.250448, 0.962556,
		-0.162237, -0.950555, -0.264811,
		0.981284, -0.183633, 0.057977,
		37.084538, 31.470289, 46.481400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427280, 30.903498, 46.732601>,  <36.397640, 31.598835, 46.440819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427280, 30.903498, 46.732601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780087, 31.078062, 46.803696>,  <36.991772, 31.182800, 46.846352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.780087, 31.078062, 46.803696>,  <36.427280, 30.903498, 46.732601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780087, 31.078062, 46.803696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065920, -0.259196, 0.963572,
		0.466583, -0.861604, -0.199847,
		0.882018, 0.436413, 0.177733,
		37.044693, 31.208986, 46.857018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727505, 30.446661, 47.179104>,  <36.427280, 30.903498, 46.732601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727505, 30.446661, 47.179104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943565, 30.782623, 47.200241>,  <37.073200, 30.984201, 47.212921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.943565, 30.782623, 47.200241>,  <36.727505, 30.446661, 47.179104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943565, 30.782623, 47.200241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172704, -0.172082, 0.969825,
		0.823656, -0.514727, -0.238006,
		0.540151, 0.839907, 0.052841,
		37.105610, 31.034595, 47.216095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364586, 30.275654, 47.399567>,  <36.727505, 30.446661, 47.179104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364586, 30.275654, 47.399567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310940, 30.663252, 47.482571>,  <37.278751, 30.895811, 47.532375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.310940, 30.663252, 47.482571>,  <37.364586, 30.275654, 47.399567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310940, 30.663252, 47.482571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229710, -0.173303, 0.957705,
		0.963974, 0.176109, -0.199346,
		-0.134114, 0.968995, 0.207514,
		37.270706, 30.953951, 47.544827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858925, 30.268427, 47.897087>,  <37.364586, 30.275654, 47.399567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858925, 30.268427, 47.897087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660282, 30.611174, 47.952461>,  <37.541096, 30.816822, 47.985687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660282, 30.611174, 47.952461>,  <37.858925, 30.268427, 47.897087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660282, 30.611174, 47.952461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193744, -0.046041, 0.979971,
		0.846077, 0.513481, -0.143149,
		-0.496606, 0.856865, 0.138438,
		37.511299, 30.868233, 47.993992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354958, 30.686043, 48.265816>,  <37.858925, 30.268427, 47.897087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354958, 30.686043, 48.265816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992165, 30.837303, 48.339981>,  <37.774487, 30.928059, 48.384480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.992165, 30.837303, 48.339981>,  <38.354958, 30.686043, 48.265816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992165, 30.837303, 48.339981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211227, 0.027557, 0.977048,
		0.364360, 0.925335, -0.104869,
		-0.906987, 0.378149, 0.185415,
		37.720070, 30.950748, 48.395607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487801, 31.308889, 48.701077>,  <38.354958, 30.686043, 48.265816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487801, 31.308889, 48.701077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109356, 31.193678, 48.760292>,  <37.882290, 31.124552, 48.795822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.109356, 31.193678, 48.760292>,  <38.487801, 31.308889, 48.701077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109356, 31.193678, 48.760292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184781, -0.104732, 0.977183,
		-0.265953, 0.951877, 0.152310,
		-0.946110, -0.288029, 0.148035,
		37.825523, 31.107269, 48.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261898, 31.687973, 49.289970>,  <38.487801, 31.308889, 48.701077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261898, 31.687973, 49.289970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014202, 31.377167, 49.244732>,  <37.865585, 31.190683, 49.217587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014202, 31.377167, 49.244732>,  <38.261898, 31.687973, 49.289970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014202, 31.377167, 49.244732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071468, -0.199213, 0.977347,
		-0.781943, 0.597128, 0.178892,
		-0.619239, -0.777015, -0.113098,
		37.828430, 31.144062, 49.210804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767056, 31.738714, 49.816277>,  <38.261898, 31.687973, 49.289970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767056, 31.738714, 49.816277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763176, 31.356112, 49.699654>,  <37.760849, 31.126551, 49.629681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763176, 31.356112, 49.699654>,  <37.767056, 31.738714, 49.816277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763176, 31.356112, 49.699654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173529, -0.285536, 0.942527,
		-0.984781, 0.059732, -0.163212,
		-0.009696, -0.956505, -0.291555,
		37.760269, 31.069160, 49.612186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174068, 31.348103, 50.120949>,  <37.767056, 31.738714, 49.816277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174068, 31.348103, 50.120949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430279, 31.062639, 50.007519>,  <37.584003, 30.891361, 49.939461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430279, 31.062639, 50.007519>,  <37.174068, 31.348103, 50.120949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430279, 31.062639, 50.007519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180251, -0.498675, 0.847840,
		-0.746482, -0.491948, -0.448052,
		0.640526, -0.713659, -0.283578,
		37.622437, 30.848541, 49.922447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900112, 30.797737, 50.405907>,  <37.174068, 31.348103, 50.120949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900112, 30.797737, 50.405907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260029, 30.640850, 50.329433>,  <37.475979, 30.546719, 50.283550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.260029, 30.640850, 50.329433>,  <36.900112, 30.797737, 50.405907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260029, 30.640850, 50.329433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098466, -0.609377, 0.786743,
		-0.425073, -0.689077, -0.586930,
		0.899787, -0.392215, -0.191179,
		37.529964, 30.523186, 50.272079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742413, 30.121967, 50.579208>,  <36.900112, 30.797737, 50.405907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742413, 30.121967, 50.579208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140232, 30.162178, 50.568077>,  <37.378922, 30.186304, 50.561398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140232, 30.162178, 50.568077>,  <36.742413, 30.121967, 50.579208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140232, 30.162178, 50.568077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086516, -0.645977, 0.758438,
		0.058267, -0.756708, -0.651151,
		0.994545, 0.100527, -0.027828,
		37.438595, 30.192337, 50.559731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969402, 29.442167, 50.537415>,  <36.742413, 30.121967, 50.579208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969402, 29.442167, 50.537415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274742, 29.653141, 50.686604>,  <37.457947, 29.779726, 50.776115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.274742, 29.653141, 50.686604>,  <36.969402, 29.442167, 50.537415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274742, 29.653141, 50.686604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134658, -0.694610, 0.706671,
		0.631794, -0.489213, -0.601254,
		0.763350, 0.527434, 0.372974,
		37.503746, 29.811371, 50.798496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504372, 28.847544, 50.671360>,  <36.969402, 29.442167, 50.537415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504372, 28.847544, 50.671360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641865, 29.167128, 50.868748>,  <37.724361, 29.358877, 50.987183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.641865, 29.167128, 50.868748>,  <37.504372, 28.847544, 50.671360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641865, 29.167128, 50.868748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188116, -0.573423, 0.797370,
		0.920034, -0.181250, -0.347400,
		0.343731, 0.798958, 0.493472,
		37.744984, 29.406815, 51.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066582, 28.590460, 51.055302>,  <37.504372, 28.847544, 50.671360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066582, 28.590460, 51.055302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934486, 28.927238, 51.225979>,  <37.855228, 29.129305, 51.328384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934486, 28.927238, 51.225979>,  <38.066582, 28.590460, 51.055302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934486, 28.927238, 51.225979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295845, -0.521607, 0.800251,
		0.896335, 0.138041, 0.421341,
		-0.330242, 0.841944, 0.426696,
		37.835415, 29.179821, 51.353989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451565, 28.655022, 51.732441>,  <38.066582, 28.590460, 51.055302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451565, 28.655022, 51.732441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119080, 28.874794, 51.766396>,  <37.919586, 29.006657, 51.786770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.119080, 28.874794, 51.766396>,  <38.451565, 28.655022, 51.732441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119080, 28.874794, 51.766396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087196, -0.279643, 0.956136,
		0.549070, 0.787353, 0.280352,
		-0.831215, 0.549431, 0.084890,
		37.869717, 29.039623, 51.791862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547276, 29.041590, 52.406704>,  <38.451565, 28.655022, 51.732441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547276, 29.041590, 52.406704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155697, 29.033703, 52.325439>,  <37.920750, 29.028971, 52.276680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155697, 29.033703, 52.325439>,  <38.547276, 29.041590, 52.406704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155697, 29.033703, 52.325439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174239, -0.437703, 0.882076,
		-0.106317, 0.898903, 0.425052,
		-0.978947, -0.019719, -0.203159,
		37.862011, 29.027786, 52.264492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298080, 29.282650, 53.085117>,  <38.547276, 29.041590, 52.406704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298080, 29.282650, 53.085117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020515, 29.095156, 52.866474>,  <37.853977, 28.982660, 52.735291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020515, 29.095156, 52.866474>,  <38.298080, 29.282650, 53.085117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020515, 29.095156, 52.866474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329170, -0.468649, 0.819765,
		-0.640417, 0.748770, 0.170908,
		-0.693911, -0.468734, -0.546603,
		37.812344, 28.954536, 52.702492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694302, 29.483051, 53.382622>,  <38.298080, 29.282650, 53.085117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694302, 29.483051, 53.382622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584850, 29.153555, 53.183994>,  <37.519180, 28.955856, 53.064819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584850, 29.153555, 53.183994>,  <37.694302, 29.483051, 53.382622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584850, 29.153555, 53.183994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202396, -0.455396, 0.866978,
		-0.940300, 0.337732, -0.042113,
		-0.273629, -0.823743, -0.496564,
		37.502762, 28.906433, 53.035027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067776, 29.296007, 53.628307>,  <37.694302, 29.483051, 53.382622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067776, 29.296007, 53.628307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245182, 28.971378, 53.476177>,  <37.351624, 28.776600, 53.384899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245182, 28.971378, 53.476177>,  <37.067776, 29.296007, 53.628307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245182, 28.971378, 53.476177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027197, -0.436330, 0.899376,
		-0.895855, -0.388541, -0.215590,
		0.443513, -0.811574, -0.380321,
		37.378235, 28.727905, 53.362080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637924, 28.655201, 53.586960>,  <37.067776, 29.296007, 53.628307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637924, 28.655201, 53.586960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027191, 28.567503, 53.614899>,  <37.260750, 28.514883, 53.631664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027191, 28.567503, 53.614899>,  <36.637924, 28.655201, 53.586960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027191, 28.567503, 53.614899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169087, -0.475484, 0.863322,
		-0.156067, -0.851966, -0.499797,
		0.973166, -0.219245, 0.069849,
		37.319141, 28.501730, 53.635853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785973, 27.901834, 53.654942>,  <36.637924, 28.655201, 53.586960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785973, 27.901834, 53.654942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017155, 28.169817, 53.841328>,  <37.155865, 28.330606, 53.953159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017155, 28.169817, 53.841328>,  <36.785973, 27.901834, 53.654942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017155, 28.169817, 53.841328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265993, -0.385152, 0.883689,
		0.771500, -0.634679, -0.044398,
		0.577958, 0.669956, 0.465964,
		37.190544, 28.370804, 53.981117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081810, 27.640003, 53.506706>,  <36.785973, 27.901834, 53.654942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081810, 27.640003, 53.506706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699051, 27.648382, 53.622578>,  <35.469395, 27.653410, 53.692101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699051, 27.648382, 53.622578>,  <36.081810, 27.640003, 53.506706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699051, 27.648382, 53.622578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220411, 0.597130, -0.771268,
		-0.189130, -0.801871, -0.566774,
		-0.956895, 0.020946, 0.289676,
		35.411983, 27.654667, 53.709480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655083, 27.407801, 52.982529>,  <36.081810, 27.640003, 53.506706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655083, 27.407801, 52.982529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434555, 27.660276, 53.200760>,  <35.302238, 27.811762, 53.331699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434555, 27.660276, 53.200760>,  <35.655083, 27.407801, 52.982529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434555, 27.660276, 53.200760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166117, 0.557794, -0.813186,
		-0.817593, -0.538951, -0.202669,
		-0.551315, 0.631188, 0.545577,
		35.269161, 27.849632, 53.364433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015259, 27.463057, 52.564041>,  <35.655083, 27.407801, 52.982529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015259, 27.463057, 52.564041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032776, 27.785036, 52.800732>,  <35.043285, 27.978224, 52.942745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.032776, 27.785036, 52.800732>,  <35.015259, 27.463057, 52.564041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032776, 27.785036, 52.800732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295173, 0.576278, -0.762087,
		-0.954440, -0.141290, 0.262834,
		0.043790, 0.804948, 0.591727,
		35.045914, 28.026520, 52.978249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446415, 27.831850, 52.299553>,  <35.015259, 27.463057, 52.564041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446415, 27.831850, 52.299553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668991, 28.092825, 52.505348>,  <34.802536, 28.249411, 52.628826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668991, 28.092825, 52.505348>,  <34.446415, 27.831850, 52.299553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668991, 28.092825, 52.505348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178640, 0.698661, -0.692791,
		-0.811455, 0.293592, 0.505317,
		0.556444, 0.652439, 0.514485,
		34.835922, 28.288557, 52.659695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030781, 28.415236, 52.283710>,  <34.446415, 27.831850, 52.299553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030781, 28.415236, 52.283710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401630, 28.538807, 52.368568>,  <34.624142, 28.612949, 52.419483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401630, 28.538807, 52.368568>,  <34.030781, 28.415236, 52.283710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401630, 28.538807, 52.368568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158113, 0.835685, -0.525957,
		-0.339767, 0.454085, 0.823629,
		0.927124, 0.308930, 0.212141,
		34.679768, 28.631485, 52.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933498, 29.087532, 52.334450>,  <34.030781, 28.415236, 52.283710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933498, 29.087532, 52.334450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328949, 29.043848, 52.293095>,  <34.566219, 29.017637, 52.268280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.328949, 29.043848, 52.293095>,  <33.933498, 29.087532, 52.334450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328949, 29.043848, 52.293095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033725, 0.830981, -0.555278,
		0.146557, 0.545476, 0.825214,
		0.988627, -0.109210, -0.103390,
		34.625538, 29.011086, 52.262077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304619, 29.768383, 52.634289>,  <33.933498, 29.087532, 52.334450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304619, 29.768383, 52.634289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536251, 29.584333, 52.365082>,  <34.675232, 29.473904, 52.203560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536251, 29.584333, 52.365082>,  <34.304619, 29.768383, 52.634289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536251, 29.584333, 52.365082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050572, 0.844197, -0.533643,
		0.813698, 0.274989, 0.512130,
		0.579084, -0.460123, -0.673014,
		34.709976, 29.446297, 52.163177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767147, 30.305578, 52.415096>,  <34.304619, 29.768383, 52.634289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767147, 30.305578, 52.415096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807560, 30.023357, 52.134529>,  <34.831806, 29.854025, 51.966190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807560, 30.023357, 52.134529>,  <34.767147, 30.305578, 52.415096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807560, 30.023357, 52.134529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200831, 0.704975, -0.680203,
		0.974402, -0.072146, 0.212920,
		0.101029, -0.705553, -0.701419,
		34.837868, 29.811691, 51.924103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438263, 30.442516, 52.144260>,  <34.767147, 30.305578, 52.415096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438263, 30.442516, 52.144260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201294, 30.260952, 51.878025>,  <35.059113, 30.152014, 51.718285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201294, 30.260952, 51.878025>,  <35.438263, 30.442516, 52.144260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201294, 30.260952, 51.878025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176950, 0.732680, -0.657167,
		0.785958, -0.507093, -0.353733,
		-0.592418, -0.453913, -0.665586,
		35.023567, 30.124779, 51.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777252, 30.395012, 51.485184>,  <35.438263, 30.442516, 52.144260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777252, 30.395012, 51.485184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386189, 30.374252, 51.403706>,  <35.151550, 30.361795, 51.354820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.386189, 30.374252, 51.403706>,  <35.777252, 30.395012, 51.485184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386189, 30.374252, 51.403706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136695, 0.579187, -0.803653,
		0.159687, -0.813541, -0.559152,
		-0.977658, -0.051900, -0.203696,
		35.092892, 30.358683, 51.342598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688461, 30.033533, 50.869690>,  <35.777252, 30.395012, 51.485184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688461, 30.033533, 50.869690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370823, 30.274275, 50.903595>,  <35.180241, 30.418720, 50.923939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370823, 30.274275, 50.903595>,  <35.688461, 30.033533, 50.869690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370823, 30.274275, 50.903595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153960, 0.334094, -0.929880,
		-0.587969, -0.725364, -0.357964,
		-0.794096, 0.601854, 0.084760,
		35.132595, 30.454830, 50.929024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507351, 30.129559, 50.165596>,  <35.688461, 30.033533, 50.869690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507351, 30.129559, 50.165596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326595, 30.426064, 50.364120>,  <35.218143, 30.603968, 50.483234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326595, 30.426064, 50.364120>,  <35.507351, 30.129559, 50.165596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326595, 30.426064, 50.364120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208335, 0.628664, -0.749252,
		-0.867406, -0.235179, -0.438517,
		-0.451888, 0.741265, 0.496311,
		35.191029, 30.648443, 50.513012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919468, 30.368385, 49.677189>,  <35.507351, 30.129559, 50.165596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919468, 30.368385, 49.677189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012810, 30.645800, 49.949821>,  <35.068813, 30.812248, 50.113403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.012810, 30.645800, 49.949821>,  <34.919468, 30.368385, 49.677189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012810, 30.645800, 49.949821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079731, 0.684929, -0.724234,
		-0.969118, 0.223345, 0.104534,
		0.233353, 0.693534, 0.681584,
		35.082817, 30.853859, 50.154297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663685, 30.909615, 49.475246>,  <34.919468, 30.368385, 49.677189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663685, 30.909615, 49.475246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939835, 31.062183, 49.721142>,  <35.105526, 31.153725, 49.868679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.939835, 31.062183, 49.721142>,  <34.663685, 30.909615, 49.475246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939835, 31.062183, 49.721142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185201, 0.728233, -0.659831,
		-0.699346, 0.569380, 0.432113,
		0.690374, 0.381423, 0.614736,
		35.146946, 31.176611, 49.905563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588505, 31.604033, 49.416801>,  <34.663685, 30.909615, 49.475246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588505, 31.604033, 49.416801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955864, 31.577044, 49.572746>,  <35.176281, 31.560850, 49.666313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.955864, 31.577044, 49.572746>,  <34.588505, 31.604033, 49.416801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955864, 31.577044, 49.572746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299987, 0.761220, -0.574936,
		-0.257977, 0.644974, 0.719345,
		0.918398, -0.067474, 0.389861,
		35.231384, 31.556801, 49.689705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744019, 32.253838, 49.578766>,  <34.588505, 31.604033, 49.416801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744019, 32.253838, 49.578766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092613, 32.058952, 49.556389>,  <35.301769, 31.942020, 49.542965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092613, 32.058952, 49.556389>,  <34.744019, 32.253838, 49.578766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092613, 32.058952, 49.556389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262579, 0.559908, -0.785847,
		0.414197, 0.670168, 0.615886,
		0.871489, -0.487214, -0.055940,
		35.354061, 31.912788, 49.539608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237930, 32.882092, 49.510818>,  <34.744019, 32.253838, 49.578766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237930, 32.882092, 49.510818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354099, 32.527798, 49.365974>,  <35.423801, 32.315220, 49.279068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354099, 32.527798, 49.365974>,  <35.237930, 32.882092, 49.510818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354099, 32.527798, 49.365974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220045, 0.430099, -0.875554,
		0.931254, 0.174602, 0.319813,
		0.290425, -0.885736, -0.362111,
		35.441227, 32.262077, 49.257339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849026, 32.975113, 49.228420>,  <35.237930, 32.882092, 49.510818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849026, 32.975113, 49.228420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691299, 32.666500, 49.028721>,  <35.596664, 32.481331, 48.908901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691299, 32.666500, 49.028721>,  <35.849026, 32.975113, 49.228420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691299, 32.666500, 49.028721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221748, 0.447327, -0.866445,
		0.891820, -0.452360, -0.005302,
		-0.394317, -0.771537, -0.499245,
		35.573006, 32.435040, 48.878948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334579, 32.856922, 48.726410>,  <35.849026, 32.975113, 49.228420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334579, 32.856922, 48.726410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991055, 32.690407, 48.606983>,  <35.784939, 32.590496, 48.535328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.991055, 32.690407, 48.606983>,  <36.334579, 32.856922, 48.726410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991055, 32.690407, 48.606983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099630, 0.435964, -0.894432,
		0.502515, -0.797893, -0.332934,
		-0.858809, -0.416295, -0.298573,
		35.733410, 32.565517, 48.517410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525101, 32.639591, 48.035164>,  <36.334579, 32.856922, 48.726410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525101, 32.639591, 48.035164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125839, 32.629818, 48.057426>,  <35.886284, 32.623955, 48.070786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125839, 32.629818, 48.057426>,  <36.525101, 32.639591, 48.035164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125839, 32.629818, 48.057426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060746, 0.369589, -0.927208,
		0.002083, -0.928874, -0.370390,
		-0.998151, -0.024431, 0.055656,
		35.826393, 32.622490, 48.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.801826, 33.315681, 30.042875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444553, 33.444225, 30.168699>,  <38.230190, 33.521351, 30.244194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.444553, 33.444225, 30.168699>,  <38.801826, 33.315681, 30.042875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444553, 33.444225, 30.168699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421449, 0.354241, 0.834802,
		0.156842, 0.878204, -0.451840,
		-0.893186, 0.321359, 0.314558,
		38.176598, 33.540634, 30.263067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000359, 33.946209, 30.479239>,  <38.801826, 33.315681, 30.042875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000359, 33.946209, 30.479239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636345, 33.821930, 30.589001>,  <38.417934, 33.747364, 30.654858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.636345, 33.821930, 30.589001>,  <39.000359, 33.946209, 30.479239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636345, 33.821930, 30.589001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132792, 0.408583, 0.903009,
		-0.392677, 0.858213, -0.330569,
		-0.910039, -0.310694, 0.274405,
		38.363335, 33.728722, 30.671322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612831, 34.462948, 30.673592>,  <39.000359, 33.946209, 30.479239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612831, 34.462948, 30.673592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452732, 34.148754, 30.862408>,  <38.356674, 33.960239, 30.975697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.452732, 34.148754, 30.862408>,  <38.612831, 34.462948, 30.673592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452732, 34.148754, 30.862408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096521, 0.476100, 0.874078,
		-0.911310, 0.395410, -0.114742,
		-0.400248, -0.785481, 0.472040,
		38.332657, 33.913109, 31.004019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094101, 34.668652, 31.160379>,  <38.612831, 34.462948, 30.673592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094101, 34.668652, 31.160379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.191555, 34.311329, 31.311455>,  <38.250027, 34.096935, 31.402100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.191555, 34.311329, 31.311455>,  <38.094101, 34.668652, 31.160379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191555, 34.311329, 31.311455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072479, 0.405103, 0.911393,
		-0.967154, -0.194675, 0.163444,
		0.243637, -0.893304, 0.377687,
		38.264645, 34.043339, 31.424761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651333, 34.620975, 31.731590>,  <38.094101, 34.668652, 31.160379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651333, 34.620975, 31.731590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957508, 34.371094, 31.793354>,  <38.141212, 34.221165, 31.830412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957508, 34.371094, 31.793354>,  <37.651333, 34.620975, 31.731590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957508, 34.371094, 31.793354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037400, 0.282733, 0.958469,
		-0.642421, -0.727875, 0.239779,
		0.765439, -0.624709, 0.154411,
		38.187141, 34.183681, 31.839678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567356, 34.480537, 32.433517>,  <37.651333, 34.620975, 31.731590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567356, 34.480537, 32.433517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944141, 34.381866, 32.342430>,  <38.170212, 34.322662, 32.287777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.944141, 34.381866, 32.342430>,  <37.567356, 34.480537, 32.433517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944141, 34.381866, 32.342430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291244, 0.263068, 0.919768,
		-0.166984, -0.932708, 0.319644,
		0.941962, -0.246681, -0.227717,
		38.226730, 34.307861, 32.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868603, 34.210205, 33.041035>,  <37.567356, 34.480537, 32.433517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868603, 34.210205, 33.041035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.207016, 34.280048, 32.839542>,  <38.410065, 34.321953, 32.718647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.207016, 34.280048, 32.839542>,  <37.868603, 34.210205, 33.041035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207016, 34.280048, 32.839542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468993, 0.205559, 0.858948,
		0.253528, -0.962941, 0.092018,
		0.846032, 0.174611, -0.503728,
		38.460827, 34.332432, 32.688423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394012, 33.891018, 33.311565>,  <37.868603, 34.210205, 33.041035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394012, 33.891018, 33.311565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592117, 34.180389, 33.119160>,  <38.710979, 34.354012, 33.003716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.592117, 34.180389, 33.119160>,  <38.394012, 33.891018, 33.311565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592117, 34.180389, 33.119160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505278, 0.210536, 0.836880,
		0.706692, -0.657517, -0.261262,
		0.495258, 0.723427, -0.481013,
		38.740696, 34.397419, 32.974857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123646, 33.730625, 33.452415>,  <38.394012, 33.891018, 33.311565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123646, 33.730625, 33.452415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.110405, 34.111038, 33.329494>,  <39.102459, 34.339287, 33.255741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.110405, 34.111038, 33.329494>,  <39.123646, 33.730625, 33.452415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110405, 34.111038, 33.329494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656202, 0.252600, 0.711050,
		0.753859, -0.178114, -0.632433,
		-0.033105, 0.951036, -0.307303,
		39.100475, 34.396347, 33.237305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758671, 33.866428, 33.271481>,  <39.123646, 33.730625, 33.452415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758671, 33.866428, 33.271481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575302, 34.215385, 33.339336>,  <39.465282, 34.424759, 33.380051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.575302, 34.215385, 33.339336>,  <39.758671, 33.866428, 33.271481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575302, 34.215385, 33.339336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634956, 0.187947, 0.749338,
		0.621836, 0.451225, -0.640091,
		-0.458423, 0.872394, 0.169636,
		39.437775, 34.477104, 33.390228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343586, 34.356308, 33.385532>,  <39.758671, 33.866428, 33.271481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343586, 34.356308, 33.385532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.001072, 34.480530, 33.550617>,  <39.795563, 34.555061, 33.649670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.001072, 34.480530, 33.550617>,  <40.343586, 34.356308, 33.385532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001072, 34.480530, 33.550617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498533, 0.287997, 0.817632,
		0.135057, 0.905878, -0.401428,
		-0.856285, 0.310552, 0.412715,
		39.744186, 34.573696, 33.674431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508518, 34.964195, 33.700424>,  <40.343586, 34.356308, 33.385532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508518, 34.964195, 33.700424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.161999, 34.866333, 33.874630>,  <39.954086, 34.807613, 33.979153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.161999, 34.866333, 33.874630>,  <40.508518, 34.964195, 33.700424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161999, 34.866333, 33.874630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351610, 0.320645, 0.879521,
		-0.354830, 0.915056, -0.191748,
		-0.866295, -0.244659, 0.435518,
		39.902111, 34.792934, 34.005283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429058, 35.495937, 34.120235>,  <40.508518, 34.964195, 33.700424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429058, 35.495937, 34.120235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216110, 35.196976, 34.279217>,  <40.088341, 35.017597, 34.374607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216110, 35.196976, 34.279217>,  <40.429058, 35.495937, 34.120235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216110, 35.196976, 34.279217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341427, 0.240054, 0.908737,
		-0.774606, 0.619481, 0.127388,
		-0.532365, -0.747407, 0.397454,
		40.056400, 34.972755, 34.398453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249969, 35.707726, 34.893394>,  <40.429058, 35.495937, 34.120235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249969, 35.707726, 34.893394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186905, 35.314774, 34.853260>,  <40.149067, 35.079002, 34.829178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186905, 35.314774, 34.853260>,  <40.249969, 35.707726, 34.893394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186905, 35.314774, 34.853260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442563, -0.161126, 0.882143,
		-0.882770, 0.094669, 0.460169,
		-0.157657, -0.982383, -0.100341,
		40.139606, 35.020058, 34.823158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885128, 35.447140, 35.522797>,  <40.249969, 35.707726, 34.893394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885128, 35.447140, 35.522797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068638, 35.135689, 35.351562>,  <40.178741, 34.948818, 35.248821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.068638, 35.135689, 35.351562>,  <39.885128, 35.447140, 35.522797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068638, 35.135689, 35.351562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415584, -0.237812, 0.877916,
		-0.785378, -0.580670, 0.214485,
		0.458772, -0.778632, -0.428089,
		40.206268, 34.902100, 35.223137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826630, 34.950096, 36.008144>,  <39.885128, 35.447140, 35.522797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826630, 34.950096, 36.008144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107922, 34.788338, 35.774246>,  <40.276699, 34.691284, 35.633907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107922, 34.788338, 35.774246>,  <39.826630, 34.950096, 36.008144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107922, 34.788338, 35.774246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486054, -0.326780, 0.810535,
		-0.518861, -0.854212, -0.033244,
		0.703232, -0.404396, -0.584746,
		40.318890, 34.667019, 35.598824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760544, 34.239780, 36.124290>,  <39.826630, 34.950096, 36.008144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760544, 34.239780, 36.124290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124706, 34.360001, 36.010563>,  <40.343204, 34.432133, 35.942326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.124706, 34.360001, 36.010563>,  <39.760544, 34.239780, 36.124290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124706, 34.360001, 36.010563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350289, -0.194269, 0.916273,
		0.220152, -0.933771, -0.282143,
		0.910401, 0.300551, -0.284321,
		40.397827, 34.450165, 35.925266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222340, 33.708580, 36.485283>,  <39.760544, 34.239780, 36.124290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222340, 33.708580, 36.485283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452885, 34.011684, 36.362900>,  <40.591209, 34.193546, 36.289471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452885, 34.011684, 36.362900>,  <40.222340, 33.708580, 36.485283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452885, 34.011684, 36.362900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642552, -0.188894, 0.742594,
		0.504911, -0.624599, -0.595770,
		0.576360, 0.757757, -0.305962,
		40.625793, 34.239010, 36.271111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826538, 33.346745, 36.421051>,  <40.222340, 33.708580, 36.485283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826538, 33.346745, 36.421051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933430, 33.731136, 36.449638>,  <40.997562, 33.961773, 36.466793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.933430, 33.731136, 36.449638>,  <40.826538, 33.346745, 36.421051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933430, 33.731136, 36.449638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687867, -0.242170, 0.684246,
		0.674855, -0.133684, -0.725740,
		0.267225, 0.960980, 0.071473,
		41.013596, 34.019432, 36.471081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589516, 33.382927, 36.556076>,  <40.826538, 33.346745, 36.421051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589516, 33.382927, 36.556076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.444809, 33.735958, 36.676193>,  <41.357986, 33.947777, 36.748264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.444809, 33.735958, 36.676193>,  <41.589516, 33.382927, 36.556076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444809, 33.735958, 36.676193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527404, -0.071865, 0.846570,
		0.768748, 0.464634, -0.439479,
		-0.361762, 0.882582, 0.300296,
		41.336281, 34.000732, 36.766281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186192, 33.679173, 36.704063>,  <41.589516, 33.382927, 36.556076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186192, 33.679173, 36.704063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905449, 33.884956, 36.901134>,  <41.737003, 34.008427, 37.019375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905449, 33.884956, 36.901134>,  <42.186192, 33.679173, 36.704063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905449, 33.884956, 36.901134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561519, -0.025977, 0.827056,
		0.438284, 0.857122, -0.270646,
		-0.701858, 0.514458, 0.492675,
		41.694893, 34.039295, 37.048939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361862, 34.410694, 37.040794>,  <42.186192, 33.679173, 36.704063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361862, 34.410694, 37.040794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088242, 34.191967, 37.233898>,  <41.924068, 34.060730, 37.349762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.088242, 34.191967, 37.233898>,  <42.361862, 34.410694, 37.040794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088242, 34.191967, 37.233898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602592, -0.050686, 0.796438,
		-0.411040, 0.835714, 0.364182,
		-0.684053, -0.546821, 0.482761,
		41.883026, 34.027920, 37.378727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006390, 34.087082, 37.208298>,  <42.361862, 34.410694, 37.040794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006390, 34.087082, 37.208298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393070, 33.990761, 37.173630>,  <43.625076, 33.932968, 37.152828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.393070, 33.990761, 37.173630>,  <43.006390, 34.087082, 37.208298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393070, 33.990761, 37.173630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179263, -0.395401, -0.900845,
		0.182651, 0.886382, -0.425400,
		0.966697, -0.240799, -0.086675,
		43.683079, 33.918522, 37.147629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193520, 34.241234, 36.567772>,  <43.006390, 34.087082, 37.208298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193520, 34.241234, 36.567772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470898, 33.968670, 36.661427>,  <43.637325, 33.805134, 36.717617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470898, 33.968670, 36.661427>,  <43.193520, 34.241234, 36.567772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470898, 33.968670, 36.661427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096576, -0.409929, -0.906990,
		0.714006, 0.606337, -0.350071,
		0.693446, -0.681405, 0.234134,
		43.678932, 33.764248, 36.731667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602657, 34.153675, 35.940701>,  <43.193520, 34.241234, 36.567772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602657, 34.153675, 35.940701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707912, 33.829380, 36.149876>,  <43.771065, 33.634804, 36.275379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.707912, 33.829380, 36.149876>,  <43.602657, 34.153675, 35.940701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707912, 33.829380, 36.149876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186681, -0.489003, -0.852072,
		0.946523, 0.321837, 0.022672,
		0.263142, -0.810738, 0.522934,
		43.786854, 33.586159, 36.306755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242493, 33.919624, 35.641262>,  <43.602657, 34.153675, 35.940701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242493, 33.919624, 35.641262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085182, 33.606106, 35.833515>,  <43.990795, 33.417995, 35.948868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.085182, 33.606106, 35.833515>,  <44.242493, 33.919624, 35.641262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085182, 33.606106, 35.833515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014612, -0.528013, -0.849110,
		0.919305, -0.326911, 0.219108,
		-0.393275, -0.783793, 0.480628,
		43.967201, 33.370968, 35.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560726, 33.400280, 35.299030>,  <44.242493, 33.919624, 35.641262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560726, 33.400280, 35.299030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266220, 33.221478, 35.502243>,  <44.089516, 33.114197, 35.624172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266220, 33.221478, 35.502243>,  <44.560726, 33.400280, 35.299030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266220, 33.221478, 35.502243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166385, -0.608124, -0.776209,
		0.655922, -0.656023, 0.373363,
		-0.736262, -0.447011, 0.508034,
		44.045341, 33.087376, 35.654652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630592, 32.716324, 35.174870>,  <44.560726, 33.400280, 35.299030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630592, 32.716324, 35.174870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254883, 32.805511, 35.279213>,  <44.029457, 32.859024, 35.341820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.254883, 32.805511, 35.279213>,  <44.630592, 32.716324, 35.174870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254883, 32.805511, 35.279213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318121, -0.280653, -0.905556,
		-0.128698, -0.933552, 0.334541,
		-0.939274, 0.222968, 0.260863,
		43.973099, 32.872402, 35.357471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.287174, 32.090725, 34.973042>,  <44.630592, 32.716324, 35.174870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.287174, 32.090725, 34.973042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.983479, 32.342216, 35.040268>,  <43.801262, 32.493111, 35.080605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.983479, 32.342216, 35.040268>,  <44.287174, 32.090725, 34.973042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983479, 32.342216, 35.040268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482378, -0.370305, -0.793842,
		-0.436877, -0.683791, 0.584438,
		-0.759243, 0.628731, 0.168068,
		43.755707, 32.530834, 35.090691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708828, 31.701197, 35.027912>,  <44.287174, 32.090725, 34.973042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708828, 31.701197, 35.027912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596191, 32.073368, 34.934097>,  <43.528610, 32.296669, 34.877808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.596191, 32.073368, 34.934097>,  <43.708828, 31.701197, 35.027912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596191, 32.073368, 34.934097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474123, -0.347428, -0.809012,
		-0.834213, -0.116613, 0.538971,
		-0.281595, 0.930427, -0.234539,
		43.511711, 32.352497, 34.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008099, 31.601717, 34.859951>,  <43.708828, 31.701197, 35.027912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008099, 31.601717, 34.859951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094486, 31.949736, 34.682690>,  <43.146320, 32.158546, 34.576332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.094486, 31.949736, 34.682690>,  <43.008099, 31.601717, 34.859951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094486, 31.949736, 34.682690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450351, -0.313938, -0.835839,
		-0.866338, 0.380087, 0.324024,
		0.215968, 0.870044, -0.443149,
		43.159275, 32.210751, 34.549744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457981, 31.771111, 34.609333>,  <43.008099, 31.601717, 34.859951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457981, 31.771111, 34.609333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682037, 32.018871, 34.389305>,  <42.816471, 32.167526, 34.257286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682037, 32.018871, 34.389305>,  <42.457981, 31.771111, 34.609333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682037, 32.018871, 34.389305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605130, -0.147531, -0.782338,
		-0.565734, 0.771088, 0.292180,
		0.560145, 0.619402, -0.550072,
		42.850082, 32.204693, 34.224285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952885, 32.250481, 34.327618>,  <42.457981, 31.771111, 34.609333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952885, 32.250481, 34.327618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286800, 32.255516, 34.107449>,  <42.487148, 32.258537, 33.975346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286800, 32.255516, 34.107449>,  <41.952885, 32.250481, 34.327618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286800, 32.255516, 34.107449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548384, -0.069963, -0.833295,
		-0.048996, 0.997470, -0.051504,
		0.834790, 0.012584, -0.550424,
		42.537239, 32.259293, 33.942322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846806, 32.721416, 33.829323>,  <41.952885, 32.250481, 34.327618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846806, 32.721416, 33.829323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135445, 32.488567, 33.679428>,  <42.308628, 32.348858, 33.589489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.135445, 32.488567, 33.679428>,  <41.846806, 32.721416, 33.829323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135445, 32.488567, 33.679428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478694, -0.028482, -0.877520,
		0.500154, 0.812599, -0.299213,
		0.721594, -0.582127, -0.374741,
		42.351921, 32.313931, 33.567005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061672, 33.093498, 33.152512>,  <41.846806, 32.721416, 33.829323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061672, 33.093498, 33.152512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178669, 32.712189, 33.122257>,  <42.248867, 32.483402, 33.104107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178669, 32.712189, 33.122257>,  <42.061672, 33.093498, 33.152512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178669, 32.712189, 33.122257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320053, -0.023058, -0.947119,
		0.901118, 0.301232, -0.311842,
		0.292493, -0.953272, -0.075632,
		42.266418, 32.426208, 33.099567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475155, 33.029167, 32.511524>,  <42.061672, 33.093498, 33.152512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475155, 33.029167, 32.511524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354385, 32.667084, 32.631153>,  <42.281925, 32.449833, 32.702930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354385, 32.667084, 32.631153>,  <42.475155, 33.029167, 32.511524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354385, 32.667084, 32.631153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393993, -0.167186, -0.903780,
		0.868109, -0.390703, -0.306168,
		-0.301922, -0.905207, 0.299070,
		42.263809, 32.395523, 32.720875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547802, 32.617279, 31.925230>,  <42.475155, 33.029167, 32.511524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547802, 32.617279, 31.925230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284306, 32.442165, 32.169987>,  <42.126209, 32.337097, 32.316841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.284306, 32.442165, 32.169987>,  <42.547802, 32.617279, 31.925230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284306, 32.442165, 32.169987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485627, -0.373773, -0.790228,
		0.574655, -0.817705, 0.033621,
		-0.658740, -0.437781, 0.611890,
		42.086685, 32.310833, 32.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365444, 32.008724, 31.558258>,  <42.547802, 32.617279, 31.925230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365444, 32.008724, 31.558258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078251, 32.031658, 31.835737>,  <41.905937, 32.045418, 32.002224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078251, 32.031658, 31.835737>,  <42.365444, 32.008724, 31.558258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078251, 32.031658, 31.835737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687023, -0.218461, -0.693018,
		0.111812, -0.974160, 0.196242,
		-0.717982, 0.057335, 0.693697,
		41.862858, 32.048859, 32.043846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936607, 31.431238, 31.430054>,  <42.365444, 32.008724, 31.558258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936607, 31.431238, 31.430054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698849, 31.643608, 31.671652>,  <41.556194, 31.771030, 31.816610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698849, 31.643608, 31.671652>,  <41.936607, 31.431238, 31.430054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698849, 31.643608, 31.671652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802093, -0.445381, -0.397846,
		0.057783, -0.720940, 0.690584,
		-0.594397, 0.530924, 0.603997,
		41.520531, 31.802885, 31.852850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399113, 30.932730, 31.588091>,  <41.936607, 31.431238, 31.430054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399113, 30.932730, 31.588091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240108, 31.296614, 31.636118>,  <41.144707, 31.514944, 31.664934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240108, 31.296614, 31.636118>,  <41.399113, 30.932730, 31.588091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240108, 31.296614, 31.636118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824236, -0.296490, -0.482419,
		-0.403262, -0.290731, 0.867673,
		-0.397510, 0.909708, 0.120068,
		41.120857, 31.569527, 31.672138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675381, 30.852453, 31.905422>,  <41.399113, 30.932730, 31.588091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675381, 30.852453, 31.905422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688457, 31.209646, 31.725861>,  <40.696304, 31.423962, 31.618124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688457, 31.209646, 31.725861>,  <40.675381, 30.852453, 31.905422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688457, 31.209646, 31.725861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883349, -0.184302, -0.430960,
		-0.467574, 0.410631, 0.782788,
		0.032696, 0.892981, -0.448905,
		40.698265, 31.477541, 31.591188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089989, 31.108364, 32.113483>,  <40.675381, 30.852453, 31.905422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089989, 31.108364, 32.113483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175510, 31.314867, 31.781757>,  <40.226826, 31.438768, 31.582722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175510, 31.314867, 31.781757>,  <40.089989, 31.108364, 32.113483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175510, 31.314867, 31.781757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947069, -0.098568, -0.305524,
		-0.239472, 0.850744, 0.467855,
		0.213807, 0.516255, -0.829317,
		40.239651, 31.469744, 31.532963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.626007, 33.042599, 43.692219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286400, 32.985508, 43.488731>,  <38.082634, 32.951252, 43.366638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286400, 32.985508, 43.488731>,  <38.626007, 33.042599, 43.692219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286400, 32.985508, 43.488731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433582, 0.362024, -0.825194,
		0.301946, -0.921177, -0.245481,
		-0.849020, -0.142728, -0.508717,
		38.031693, 32.942688, 43.336117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788628, 32.775455, 43.075043>,  <38.626007, 33.042599, 43.692219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788628, 32.775455, 43.075043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416027, 32.905067, 43.008934>,  <38.192467, 32.982834, 42.969269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416027, 32.905067, 43.008934>,  <38.788628, 32.775455, 43.075043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416027, 32.905067, 43.008934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299681, 0.426126, -0.853585,
		-0.206157, -0.844644, -0.494041,
		-0.931499, 0.324028, -0.165275,
		38.136578, 33.002277, 42.959351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699326, 32.634754, 42.342209>,  <38.788628, 32.775455, 43.075043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699326, 32.634754, 42.342209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408287, 32.895786, 42.426815>,  <38.233662, 33.052406, 42.477577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408287, 32.895786, 42.426815>,  <38.699326, 32.634754, 42.342209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408287, 32.895786, 42.426815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256921, 0.545113, -0.798025,
		-0.636073, -0.526301, -0.564286,
		-0.727601, 0.652579, 0.211513,
		38.190006, 33.091560, 42.490269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347916, 32.791279, 41.679642>,  <38.699326, 32.634754, 42.342209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347916, 32.791279, 41.679642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214794, 33.085304, 41.915916>,  <38.134922, 33.261719, 42.057682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214794, 33.085304, 41.915916>,  <38.347916, 32.791279, 41.679642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214794, 33.085304, 41.915916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052923, 0.639971, -0.766575,
		-0.941509, -0.223859, -0.251888,
		-0.332805, 0.735068, 0.590691,
		38.114952, 33.305824, 42.093124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662952, 33.004524, 41.403946>,  <38.347916, 32.791279, 41.679642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662952, 33.004524, 41.403946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820465, 33.304310, 41.616829>,  <37.914970, 33.484180, 41.744556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820465, 33.304310, 41.616829>,  <37.662952, 33.004524, 41.403946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820465, 33.304310, 41.616829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002795, 0.579957, -0.814642,
		-0.919201, 0.319301, 0.230469,
		0.393778, 0.749464, 0.532205,
		37.938599, 33.529148, 41.776489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392303, 33.659431, 41.204746>,  <37.662952, 33.004524, 41.403946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392303, 33.659431, 41.204746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714317, 33.795589, 41.399086>,  <37.907528, 33.877285, 41.515690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714317, 33.795589, 41.399086>,  <37.392303, 33.659431, 41.204746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714317, 33.795589, 41.399086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202248, 0.612443, -0.764205,
		-0.557684, 0.713475, 0.424196,
		0.805037, 0.340392, 0.485848,
		37.955830, 33.897709, 41.544842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380692, 34.437950, 41.137054>,  <37.392303, 33.659431, 41.204746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380692, 34.437950, 41.137054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752258, 34.341251, 41.249245>,  <37.975201, 34.283230, 41.316559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752258, 34.341251, 41.249245>,  <37.380692, 34.437950, 41.137054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752258, 34.341251, 41.249245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370259, 0.598207, -0.710674,
		0.004026, 0.764006, 0.645197,
		0.928920, -0.241751, 0.280472,
		38.030933, 34.268726, 41.333385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698902, 35.060955, 41.237045>,  <37.380692, 34.437950, 41.137054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698902, 35.060955, 41.237045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016571, 34.820057, 41.204567>,  <38.207172, 34.675518, 41.185081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016571, 34.820057, 41.204567>,  <37.698902, 35.060955, 41.237045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016571, 34.820057, 41.204567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428126, 0.649305, -0.628579,
		0.431283, 0.464435, 0.773495,
		0.794168, -0.602249, -0.081197,
		38.254822, 34.639381, 41.180206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336483, 35.493404, 41.167076>,  <37.698902, 35.060955, 41.237045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336483, 35.493404, 41.167076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432938, 35.134220, 41.019825>,  <38.490810, 34.918709, 40.931473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432938, 35.134220, 41.019825>,  <38.336483, 35.493404, 41.167076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432938, 35.134220, 41.019825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338274, 0.433303, -0.835356,
		0.909628, 0.076906, 0.408242,
		0.241136, -0.897961, -0.368129,
		38.505280, 34.864830, 40.909386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958290, 35.611538, 40.819023>,  <38.336483, 35.493404, 41.167076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958290, 35.611538, 40.819023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825211, 35.270313, 40.658230>,  <38.745361, 35.065578, 40.561752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825211, 35.270313, 40.658230>,  <38.958290, 35.611538, 40.819023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825211, 35.270313, 40.658230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180474, 0.360795, -0.915017,
		0.925603, -0.376974, 0.033920,
		-0.332699, -0.853064, -0.401987,
		38.725399, 35.014393, 40.537632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372028, 35.434772, 40.220322>,  <38.958290, 35.611538, 40.819023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372028, 35.434772, 40.220322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024254, 35.252747, 40.143391>,  <38.815590, 35.143532, 40.097233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024254, 35.252747, 40.143391>,  <39.372028, 35.434772, 40.220322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024254, 35.252747, 40.143391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039787, 0.323540, -0.945378,
		0.492434, -0.829601, -0.263193,
		-0.869440, -0.455064, -0.192329,
		38.763420, 35.116226, 40.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373543, 35.110977, 39.575298>,  <39.372028, 35.434772, 40.220322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373543, 35.110977, 39.575298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974812, 35.112564, 39.607079>,  <38.735573, 35.113518, 39.626148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974812, 35.112564, 39.607079>,  <39.373543, 35.110977, 39.575298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974812, 35.112564, 39.607079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071601, 0.390536, -0.917799,
		-0.034672, -0.920579, -0.389014,
		-0.996831, 0.003968, 0.079455,
		38.675762, 35.113754, 39.630917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941586, 34.814980, 38.965454>,  <39.373543, 35.110977, 39.575298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941586, 34.814980, 38.965454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718933, 35.098690, 39.138466>,  <38.585342, 35.268917, 39.242271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718933, 35.098690, 39.138466>,  <38.941586, 34.814980, 38.965454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718933, 35.098690, 39.138466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237891, 0.362757, -0.901008,
		-0.795969, -0.604427, -0.033192,
		-0.556635, 0.709278, 0.432531,
		38.551941, 35.311474, 39.268227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281700, 34.100945, 38.904713>,  <38.941586, 34.814980, 38.965454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281700, 34.100945, 38.904713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956299, 34.026836, 38.684208>,  <38.761059, 33.982372, 38.551907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956299, 34.026836, 38.684208>,  <39.281700, 34.100945, 38.904713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956299, 34.026836, 38.684208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384908, -0.539051, 0.749179,
		-0.435958, 0.821644, 0.367207,
		-0.813502, -0.185270, -0.551261,
		38.712250, 33.971256, 38.518829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562687, 34.174416, 39.320026>,  <39.281700, 34.100945, 38.904713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562687, 34.174416, 39.320026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559063, 33.886971, 39.041885>,  <38.556889, 33.714504, 38.875000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559063, 33.886971, 39.041885>,  <38.562687, 34.174416, 39.320026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559063, 33.886971, 39.041885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259490, -0.669870, 0.695658,
		-0.965703, 0.186742, -0.180402,
		-0.009063, -0.718611, -0.695353,
		38.556343, 33.671387, 38.833279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983082, 33.633858, 39.347198>,  <38.562687, 34.174416, 39.320026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983082, 33.633858, 39.347198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245850, 33.426598, 39.128117>,  <38.403511, 33.302242, 38.996670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245850, 33.426598, 39.128117>,  <37.983082, 33.633858, 39.347198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245850, 33.426598, 39.128117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138225, -0.796885, 0.588106,
		-0.741179, -0.310635, -0.595113,
		0.656923, -0.518151, -0.547697,
		38.442924, 33.271152, 38.963806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540199, 32.967243, 39.034531>,  <37.983082, 33.633858, 39.347198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540199, 32.967243, 39.034531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933716, 32.895695, 39.029583>,  <38.169827, 32.852764, 39.026615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933716, 32.895695, 39.029583>,  <37.540199, 32.967243, 39.034531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933716, 32.895695, 39.029583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148215, -0.850121, 0.505299,
		-0.100898, -0.495278, -0.862856,
		0.983795, -0.178871, -0.012368,
		38.228855, 32.842033, 39.025871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691002, 32.309116, 38.782478>,  <37.540199, 32.967243, 39.034531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691002, 32.309116, 38.782478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021545, 32.381737, 38.995712>,  <38.219872, 32.425308, 39.123653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021545, 32.381737, 38.995712>,  <37.691002, 32.309116, 38.782478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021545, 32.381737, 38.995712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017786, -0.937720, 0.346935,
		0.562869, -0.296173, -0.771660,
		0.826354, 0.181555, 0.533082,
		38.269451, 32.436203, 39.155636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158543, 31.714865, 38.730522>,  <37.691002, 32.309116, 38.782478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158543, 31.714865, 38.730522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302876, 31.891632, 39.059036>,  <38.389477, 31.997692, 39.256145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302876, 31.891632, 39.059036>,  <38.158543, 31.714865, 38.730522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302876, 31.891632, 39.059036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039393, -0.872601, 0.486843,
		0.931797, -0.208023, -0.297457,
		0.360836, 0.441921, 0.821282,
		38.411125, 32.024208, 39.305420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479698, 31.181931, 39.011532>,  <38.158543, 31.714865, 38.730522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479698, 31.181931, 39.011532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486061, 31.447475, 39.310604>,  <38.489880, 31.606802, 39.490047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486061, 31.447475, 39.310604>,  <38.479698, 31.181931, 39.011532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486061, 31.447475, 39.310604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028345, -0.747777, 0.663344,
		0.999472, 0.010640, -0.030713,
		0.015909, 0.663865, 0.747684,
		38.490833, 31.646635, 39.534908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998611, 31.069195, 39.464684>,  <38.479698, 31.181931, 39.011532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998611, 31.069195, 39.464684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757442, 31.282190, 39.702320>,  <38.612743, 31.409986, 39.844902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757442, 31.282190, 39.702320>,  <38.998611, 31.069195, 39.464684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757442, 31.282190, 39.702320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166304, -0.644420, 0.746368,
		0.780277, 0.548799, 0.299978,
		-0.602918, 0.532486, 0.594094,
		38.576569, 31.441936, 39.880547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422764, 31.252058, 40.032146>,  <38.998611, 31.069195, 39.464684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422764, 31.252058, 40.032146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031372, 31.219406, 40.107944>,  <38.796535, 31.199816, 40.153423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031372, 31.219406, 40.107944>,  <39.422764, 31.252058, 40.032146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031372, 31.219406, 40.107944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188243, -0.729207, 0.657892,
		0.084480, 0.679407, 0.728882,
		-0.978482, -0.081628, 0.189497,
		38.737827, 31.194918, 40.164795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490417, 31.120560, 40.702248>,  <39.422764, 31.252058, 40.032146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490417, 31.120560, 40.702248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113220, 31.012636, 40.624313>,  <38.886902, 30.947882, 40.577553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113220, 31.012636, 40.624313>,  <39.490417, 31.120560, 40.702248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113220, 31.012636, 40.624313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032923, -0.506939, 0.861353,
		-0.331173, 0.818666, 0.469158,
		-0.942995, -0.269811, -0.194837,
		38.830322, 30.931692, 40.565861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966438, 31.488657, 41.169598>,  <39.490417, 31.120560, 40.702248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966438, 31.488657, 41.169598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809570, 31.143602, 41.041813>,  <38.715450, 30.936569, 40.965141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809570, 31.143602, 41.041813>,  <38.966438, 31.488657, 41.169598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809570, 31.143602, 41.041813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121313, -0.295752, 0.947530,
		-0.911859, 0.410348, 0.011336,
		-0.392169, -0.862638, -0.319465,
		38.691921, 30.884811, 40.945972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574665, 31.250664, 41.763664>,  <38.966438, 31.488657, 41.169598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574665, 31.250664, 41.763664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570961, 30.932602, 41.521130>,  <38.568741, 30.741764, 41.375610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570961, 30.932602, 41.521130>,  <38.574665, 31.250664, 41.763664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570961, 30.932602, 41.521130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281625, -0.579744, 0.764580,
		-0.959480, 0.177837, -0.218569,
		-0.009256, -0.795154, -0.606336,
		38.568184, 30.694056, 41.339230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980389, 30.943747, 42.059505>,  <38.574665, 31.250664, 41.763664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980389, 30.943747, 42.059505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207798, 30.670015, 41.876869>,  <38.344246, 30.505777, 41.767288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207798, 30.670015, 41.876869>,  <37.980389, 30.943747, 42.059505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207798, 30.670015, 41.876869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096202, -0.606508, 0.789236,
		-0.817022, -0.404775, -0.410648,
		0.568525, -0.684328, -0.456590,
		38.378357, 30.464718, 41.739891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565952, 30.305214, 41.959972>,  <37.980389, 30.943747, 42.059505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565952, 30.305214, 41.959972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957607, 30.225197, 41.945759>,  <38.192600, 30.177187, 41.937229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957607, 30.225197, 41.945759>,  <37.565952, 30.305214, 41.959972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957607, 30.225197, 41.945759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109628, -0.667435, 0.736555,
		-0.171062, -0.717296, -0.675444,
		0.979142, -0.200044, -0.035537,
		38.251350, 30.165184, 41.935097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574432, 29.641039, 42.287064>,  <37.565952, 30.305214, 41.959972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574432, 29.641039, 42.287064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959915, 29.746727, 42.271790>,  <38.191204, 29.810139, 42.262627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959915, 29.746727, 42.271790>,  <37.574432, 29.641039, 42.287064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959915, 29.746727, 42.271790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195944, -0.602916, 0.773368,
		0.181316, -0.752782, -0.632806,
		0.963707, 0.264218, -0.038185,
		38.249027, 29.825993, 42.260334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241268, 29.129034, 41.947117>,  <37.574432, 29.641039, 42.287064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241268, 29.129034, 41.947117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851147, 29.107788, 42.032871>,  <36.617073, 29.095041, 42.084324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851147, 29.107788, 42.032871>,  <37.241268, 29.129034, 41.947117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851147, 29.107788, 42.032871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204565, 0.583187, -0.786159,
		-0.083270, -0.810600, -0.579650,
		-0.975304, -0.053113, 0.214383,
		36.558556, 29.091854, 42.097187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950741, 28.901594, 41.291618>,  <37.241268, 29.129034, 41.947117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950741, 28.901594, 41.291618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666111, 29.064447, 41.520668>,  <36.495331, 29.162159, 41.658096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666111, 29.064447, 41.520668>,  <36.950741, 28.901594, 41.291618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666111, 29.064447, 41.520668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311997, 0.547141, -0.776721,
		-0.629536, -0.731354, -0.262308,
		-0.711577, 0.407134, 0.572625,
		36.452637, 29.186588, 41.692455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447441, 28.951498, 40.853413>,  <36.950741, 28.901594, 41.291618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447441, 28.951498, 40.853413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336067, 29.176178, 41.165043>,  <36.269241, 29.310986, 41.352020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336067, 29.176178, 41.165043>,  <36.447441, 28.951498, 40.853413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336067, 29.176178, 41.165043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336668, 0.702611, -0.626891,
		-0.899516, -0.436840, -0.006524,
		-0.278435, 0.561702, 0.779080,
		36.252537, 29.344688, 41.398766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787395, 29.281326, 40.717026>,  <36.447441, 28.951498, 40.853413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787395, 29.281326, 40.717026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945190, 29.512281, 41.002964>,  <36.039867, 29.650854, 41.174526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945190, 29.512281, 41.002964>,  <35.787395, 29.281326, 40.717026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945190, 29.512281, 41.002964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264375, 0.816359, -0.513483,
		-0.880047, 0.013578, 0.474693,
		0.394492, 0.577385, 0.714844,
		36.063538, 29.685497, 41.217419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176239, 29.699860, 40.950329>,  <35.787395, 29.281326, 40.717026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176239, 29.699860, 40.950329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522247, 29.887098, 41.022575>,  <35.729855, 29.999441, 41.065922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522247, 29.887098, 41.022575>,  <35.176239, 29.699860, 40.950329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522247, 29.887098, 41.022575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329159, 0.801137, -0.499834,
		-0.378668, 0.372916, 0.847080,
		0.865023, 0.468095, 0.180616,
		35.781754, 30.027527, 41.076759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988506, 30.350801, 41.035477>,  <35.176239, 29.699860, 40.950329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988506, 30.350801, 41.035477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383793, 30.393724, 40.991829>,  <35.620964, 30.419477, 40.965641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383793, 30.393724, 40.991829>,  <34.988506, 30.350801, 41.035477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383793, 30.393724, 40.991829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151592, 0.784325, -0.601543,
		0.021039, 0.610999, 0.791352,
		0.988219, 0.107307, -0.109124,
		35.680260, 30.425917, 40.959091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099609, 31.032442, 41.020847>,  <34.988506, 30.350801, 41.035477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099609, 31.032442, 41.020847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420494, 30.876678, 40.839821>,  <35.613026, 30.783220, 40.731205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420494, 30.876678, 40.839821>,  <35.099609, 31.032442, 41.020847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420494, 30.876678, 40.839821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041895, 0.719433, -0.693297,
		0.595569, 0.575131, 0.560823,
		0.802211, -0.389411, -0.452567,
		35.661156, 30.759855, 40.704052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462784, 31.646675, 40.810818>,  <35.099609, 31.032442, 41.020847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462784, 31.646675, 40.810818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587536, 31.341242, 40.584660>,  <35.662388, 31.157982, 40.448963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587536, 31.341242, 40.584660>,  <35.462784, 31.646675, 40.810818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587536, 31.341242, 40.584660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161118, 0.543954, -0.823502,
		0.936362, 0.347927, 0.046619,
		0.311877, -0.763584, -0.565395,
		35.681099, 31.112167, 40.415043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026535, 31.955002, 40.443207>,  <35.462784, 31.646675, 40.810818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026535, 31.955002, 40.443207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919323, 31.638174, 40.223831>,  <35.854996, 31.448076, 40.092205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919323, 31.638174, 40.223831>,  <36.026535, 31.955002, 40.443207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919323, 31.638174, 40.223831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019395, 0.573586, -0.818916,
		0.963214, -0.208860, -0.169103,
		-0.268034, -0.792071, -0.548435,
		35.838913, 31.400553, 40.059299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466183, 31.968767, 39.815903>,  <36.026535, 31.955002, 40.443207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466183, 31.968767, 39.815903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143791, 31.745802, 39.736210>,  <35.950356, 31.612022, 39.688393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143791, 31.745802, 39.736210>,  <36.466183, 31.968767, 39.815903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143791, 31.745802, 39.736210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161538, 0.530907, -0.831891,
		0.569485, -0.638298, -0.517940,
		-0.805973, -0.557417, -0.199235,
		35.902000, 31.578577, 39.676441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460613, 31.766161, 39.170673>,  <36.466183, 31.968767, 39.815903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460613, 31.766161, 39.170673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082397, 31.808025, 39.293964>,  <35.855469, 31.833143, 39.367939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082397, 31.808025, 39.293964>,  <36.460613, 31.766161, 39.170673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082397, 31.808025, 39.293964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165371, 0.661156, -0.731796,
		-0.280379, -0.742913, -0.607839,
		-0.945537, 0.104661, 0.308231,
		35.798737, 31.839424, 39.386433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341259, 32.220596, 38.791706>,  <36.460613, 31.766161, 39.170673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341259, 32.220596, 38.791706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986759, 32.135288, 38.956181>,  <35.774059, 32.084103, 39.054863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986759, 32.135288, 38.956181>,  <36.341259, 32.220596, 38.791706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986759, 32.135288, 38.956181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434020, 0.692440, -0.576327,
		-0.161806, -0.689234, -0.706241,
		-0.886254, -0.213269, 0.411182,
		35.720882, 32.071308, 39.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.153603, 26.465870, 45.003784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898979, 26.770123, 45.054752>,  <35.746204, 26.952675, 45.085331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898979, 26.770123, 45.054752>,  <36.153603, 26.465870, 45.003784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898979, 26.770123, 45.054752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346067, 0.429359, -0.834199,
		-0.689227, -0.486919, -0.536541,
		-0.636556, 0.760632, 0.127419,
		35.708012, 26.998312, 45.092979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788704, 26.679813, 44.296173>,  <36.153603, 26.465870, 45.003784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788704, 26.679813, 44.296173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761723, 27.009209, 44.521500>,  <35.745533, 27.206846, 44.656696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761723, 27.009209, 44.521500>,  <35.788704, 26.679813, 44.296173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761723, 27.009209, 44.521500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102128, 0.567331, -0.817133,
		-0.992482, 0.002414, -0.122367,
		-0.067450, 0.823487, 0.563312,
		35.741489, 27.256254, 44.690495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212051, 27.061243, 44.034363>,  <35.788704, 26.679813, 44.296173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212051, 27.061243, 44.034363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447037, 27.321898, 44.226303>,  <35.588028, 27.478291, 44.341469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447037, 27.321898, 44.226303>,  <35.212051, 27.061243, 44.034363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447037, 27.321898, 44.226303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135658, 0.505271, -0.852231,
		-0.797802, 0.565747, 0.208427,
		0.587460, 0.651637, 0.479854,
		35.623276, 27.517389, 44.370258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286335, 27.670267, 43.659222>,  <35.212051, 27.061243, 44.034363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286335, 27.670267, 43.659222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509453, 27.808739, 43.960957>,  <35.643322, 27.891821, 44.141998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.509453, 27.808739, 43.960957>,  <35.286335, 27.670267, 43.659222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509453, 27.808739, 43.960957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333933, 0.738454, -0.585811,
		-0.759841, 0.578659, 0.296303,
		0.557791, 0.346178, 0.754341,
		35.676788, 27.912592, 44.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163960, 28.431204, 43.694225>,  <35.286335, 27.670267, 43.659222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163960, 28.431204, 43.694225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524773, 28.318697, 43.825211>,  <35.741261, 28.251192, 43.903801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524773, 28.318697, 43.825211>,  <35.163960, 28.431204, 43.694225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524773, 28.318697, 43.825211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429120, 0.666633, -0.609472,
		-0.046870, 0.690282, 0.722021,
		0.902031, -0.281267, 0.327459,
		35.795383, 28.234316, 43.923447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538807, 29.050692, 43.854534>,  <35.163960, 28.431204, 43.694225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538807, 29.050692, 43.854534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783745, 28.751741, 43.751411>,  <35.930706, 28.572371, 43.689537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.783745, 28.751741, 43.751411>,  <35.538807, 29.050692, 43.854534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783745, 28.751741, 43.751411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350573, 0.548970, -0.758769,
		0.708615, 0.374246, 0.598167,
		0.612342, -0.747377, -0.257808,
		35.967449, 28.527529, 43.674068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175575, 29.374807, 43.666786>,  <35.538807, 29.050692, 43.854534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175575, 29.374807, 43.666786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173317, 29.015493, 43.491035>,  <36.171963, 28.799904, 43.385586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173317, 29.015493, 43.491035>,  <36.175575, 29.374807, 43.666786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173317, 29.015493, 43.491035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431574, 0.394166, -0.811404,
		0.902060, -0.194200, 0.385453,
		-0.005642, -0.898287, -0.439374,
		36.171623, 28.746008, 43.359222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835377, 29.331514, 43.329327>,  <36.175575, 29.374807, 43.666786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835377, 29.331514, 43.329327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.589069, 29.071407, 43.151344>,  <36.441284, 28.915344, 43.044556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.589069, 29.071407, 43.151344>,  <36.835377, 29.331514, 43.329327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589069, 29.071407, 43.151344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168716, 0.442800, -0.880604,
		0.769652, -0.617318, -0.162952,
		-0.615768, -0.650266, -0.444954,
		36.404339, 28.876328, 43.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216835, 29.164396, 42.664543>,  <36.835377, 29.331514, 43.329327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216835, 29.164396, 42.664543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847725, 29.030924, 42.587460>,  <36.626259, 28.950840, 42.541210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847725, 29.030924, 42.587460>,  <37.216835, 29.164396, 42.664543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847725, 29.030924, 42.587460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003821, 0.508015, -0.861340,
		0.385310, -0.794090, -0.470061,
		-0.922780, -0.333679, -0.192709,
		36.570892, 28.930820, 42.529648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952255, 29.014095, 42.468708>,  <37.216835, 29.164396, 42.664543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952255, 29.014095, 42.468708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199932, 29.318834, 42.544804>,  <38.348537, 29.501677, 42.590462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.199932, 29.318834, 42.544804>,  <37.952255, 29.014095, 42.468708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199932, 29.318834, 42.544804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223339, -0.403132, 0.887471,
		0.752809, -0.507026, -0.419766,
		0.619192, 0.761846, 0.190243,
		38.385689, 29.547388, 42.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379261, 28.709421, 42.948910>,  <37.952255, 29.014095, 42.468708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379261, 28.709421, 42.948910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510044, 29.085901, 42.982948>,  <38.588516, 29.311789, 43.003372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510044, 29.085901, 42.982948>,  <38.379261, 28.709421, 42.948910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510044, 29.085901, 42.982948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474591, -0.241399, 0.846457,
		0.817227, -0.236372, -0.525612,
		0.326962, 0.941198, 0.085098,
		38.608131, 29.368261, 43.008476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086056, 28.750326, 43.054619>,  <38.379261, 28.709421, 42.948910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086056, 28.750326, 43.054619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.914734, 29.063425, 43.235222>,  <38.811943, 29.251286, 43.343586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.914734, 29.063425, 43.235222>,  <39.086056, 28.750326, 43.054619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914734, 29.063425, 43.235222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422023, -0.268553, 0.865896,
		0.799033, 0.561413, -0.215316,
		-0.428302, 0.782748, 0.451512,
		38.786243, 29.298250, 43.370674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637077, 28.968597, 43.502316>,  <39.086056, 28.750326, 43.054619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637077, 28.968597, 43.502316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332806, 29.188869, 43.639793>,  <39.150242, 29.321032, 43.722279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.332806, 29.188869, 43.639793>,  <39.637077, 28.968597, 43.502316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332806, 29.188869, 43.639793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275195, -0.205957, 0.939069,
		0.587911, 0.808909, 0.005123,
		-0.760676, 0.550679, 0.343692,
		39.104603, 29.354073, 43.742901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919521, 29.322903, 44.117073>,  <39.637077, 28.968597, 43.502316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919521, 29.322903, 44.117073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521404, 29.352573, 44.141998>,  <39.282532, 29.370377, 44.156956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.521404, 29.352573, 44.141998>,  <39.919521, 29.322903, 44.117073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521404, 29.352573, 44.141998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026115, -0.414004, 0.909900,
		0.093293, 0.907248, 0.410119,
		-0.995296, 0.074177, 0.062317,
		39.222816, 29.374826, 44.160694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783993, 29.791534, 44.650421>,  <39.919521, 29.322903, 44.117073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783993, 29.791534, 44.650421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466473, 29.551376, 44.611622>,  <39.275959, 29.407282, 44.588341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.466473, 29.551376, 44.611622>,  <39.783993, 29.791534, 44.650421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466473, 29.551376, 44.611622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112523, -0.301727, 0.946731,
		-0.597679, 0.740600, 0.307068,
		-0.793800, -0.600393, -0.097001,
		39.228333, 29.371258, 44.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276546, 30.100258, 45.030972>,  <39.783993, 29.791534, 44.650421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276546, 30.100258, 45.030972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186581, 29.710796, 45.015923>,  <39.132603, 29.477119, 45.006893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.186581, 29.710796, 45.015923>,  <39.276546, 30.100258, 45.030972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186581, 29.710796, 45.015923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294613, -0.104757, 0.949857,
		-0.928772, 0.202551, 0.310412,
		-0.224913, -0.973652, -0.037621,
		39.119106, 29.418701, 45.004635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953743, 29.935820, 45.673843>,  <39.276546, 30.100258, 45.030972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953743, 29.935820, 45.673843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071526, 29.576555, 45.543243>,  <39.142193, 29.360996, 45.464886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.071526, 29.576555, 45.543243>,  <38.953743, 29.935820, 45.673843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071526, 29.576555, 45.543243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241603, -0.260584, 0.934732,
		-0.924622, -0.354117, 0.140269,
		0.294453, -0.898163, -0.326498,
		39.159863, 29.307106, 45.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793339, 29.515717, 46.136883>,  <38.953743, 29.935820, 45.673843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793339, 29.515717, 46.136883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029930, 29.240307, 45.969028>,  <39.171883, 29.075062, 45.868317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.029930, 29.240307, 45.969028>,  <38.793339, 29.515717, 46.136883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029930, 29.240307, 45.969028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096813, -0.456025, 0.884685,
		-0.800490, -0.563895, -0.203070,
		0.591475, -0.688523, -0.419636,
		39.207375, 29.033751, 45.843136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571674, 28.826765, 46.354694>,  <38.793339, 29.515717, 46.136883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571674, 28.826765, 46.354694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951138, 28.791010, 46.233330>,  <39.178814, 28.769556, 46.160511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.951138, 28.791010, 46.233330>,  <38.571674, 28.826765, 46.354694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951138, 28.791010, 46.233330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195705, -0.587716, 0.785041,
		-0.248493, -0.804114, -0.540048,
		0.948658, -0.089388, -0.303412,
		39.235733, 28.764194, 46.142307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699802, 28.136023, 46.387417>,  <38.571674, 28.826765, 46.354694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699802, 28.136023, 46.387417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067101, 28.293764, 46.372902>,  <39.287479, 28.388409, 46.364193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067101, 28.293764, 46.372902>,  <38.699802, 28.136023, 46.387417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067101, 28.293764, 46.372902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325965, -0.700598, 0.634752,
		0.224894, -0.594684, -0.771864,
		0.918242, 0.394353, -0.036286,
		39.342575, 28.412069, 46.362015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123726, 27.569721, 46.539558>,  <38.699802, 28.136023, 46.387417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123726, 27.569721, 46.539558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381485, 27.873291, 46.577049>,  <39.536140, 28.055433, 46.599545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381485, 27.873291, 46.577049>,  <39.123726, 27.569721, 46.539558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381485, 27.873291, 46.577049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446591, -0.472995, 0.759495,
		0.620730, -0.447561, -0.643726,
		0.644400, 0.758923, 0.093725,
		39.574806, 28.100967, 46.605167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825745, 27.255060, 46.595779>,  <39.123726, 27.569721, 46.539558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825745, 27.255060, 46.595779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810982, 27.606146, 46.786884>,  <39.802124, 27.816797, 46.901546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810982, 27.606146, 46.786884>,  <39.825745, 27.255060, 46.595779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810982, 27.606146, 46.786884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260374, -0.453129, 0.852572,
		0.964802, 0.155864, -0.211810,
		-0.036908, 0.877713, 0.477763,
		39.799908, 27.869459, 46.930214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470036, 27.405546, 46.911880>,  <39.825745, 27.255060, 46.595779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470036, 27.405546, 46.911880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209080, 27.633564, 47.111652>,  <40.052505, 27.770374, 47.231518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.209080, 27.633564, 47.111652>,  <40.470036, 27.405546, 46.911880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209080, 27.633564, 47.111652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348419, -0.359630, 0.865604,
		0.673045, 0.738725, 0.036005,
		-0.652392, 0.570046, 0.499433,
		40.013363, 27.804577, 47.261482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.815800, 32.511036, 48.985531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035080, 32.228802, 48.805920>,  <32.166649, 32.059460, 48.698154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035080, 32.228802, 48.805920>,  <31.815800, 32.511036, 48.985531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035080, 32.228802, 48.805920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085527, 0.581371, -0.809131,
		0.831963, 0.405161, 0.379055,
		0.548200, -0.705586, -0.449027,
		32.199539, 32.017124, 48.671211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192841, 32.878170, 48.544357>,  <31.815800, 32.511036, 48.985531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192841, 32.878170, 48.544357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261272, 32.511112, 48.400883>,  <32.302334, 32.290878, 48.314796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261272, 32.511112, 48.400883>,  <32.192841, 32.878170, 48.544357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261272, 32.511112, 48.400883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353711, 0.396989, -0.846928,
		0.919575, 0.018025, 0.392500,
		0.171084, -0.917646, -0.358686,
		32.312599, 32.235817, 48.293278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796234, 33.028790, 48.274986>,  <32.192841, 32.878170, 48.544357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796234, 33.028790, 48.274986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686607, 32.691734, 48.089581>,  <32.620831, 32.489502, 47.978336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686607, 32.691734, 48.089581>,  <32.796234, 33.028790, 48.274986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686607, 32.691734, 48.089581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298936, 0.383448, -0.873845,
		0.914070, -0.378053, 0.146805,
		-0.274068, -0.842641, -0.463512,
		32.604385, 32.438942, 47.950527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328892, 32.852123, 47.911011>,  <32.796234, 33.028790, 48.274986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328892, 32.852123, 47.911011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025410, 32.656914, 47.738403>,  <32.843323, 32.539787, 47.634838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.025410, 32.656914, 47.738403>,  <33.328892, 32.852123, 47.911011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025410, 32.656914, 47.738403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328084, 0.286013, -0.900310,
		0.562792, -0.824638, -0.056885,
		-0.758700, -0.488024, -0.431516,
		32.797798, 32.510506, 47.608948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676926, 32.529514, 47.433270>,  <33.328892, 32.852123, 47.911011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676926, 32.529514, 47.433270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296417, 32.527653, 47.309937>,  <33.068111, 32.526535, 47.235939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.296417, 32.527653, 47.309937>,  <33.676926, 32.529514, 47.433270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296417, 32.527653, 47.309937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301955, 0.188755, -0.934449,
		0.062542, -0.982013, -0.178153,
		-0.951268, -0.004649, -0.308329,
		33.011036, 32.526257, 47.217438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605526, 32.037296, 46.890827>,  <33.676926, 32.529514, 47.433270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605526, 32.037296, 46.890827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312420, 32.301163, 46.824020>,  <33.136555, 32.459480, 46.783936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312420, 32.301163, 46.824020>,  <33.605526, 32.037296, 46.890827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312420, 32.301163, 46.824020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225629, 0.003978, -0.974205,
		-0.641982, -0.751552, -0.151754,
		-0.732769, 0.659662, -0.167018,
		33.092590, 32.499062, 46.773914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553585, 32.002068, 46.203140>,  <33.605526, 32.037296, 46.890827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553585, 32.002068, 46.203140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331036, 32.328079, 46.267864>,  <33.197506, 32.523685, 46.306698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331036, 32.328079, 46.267864>,  <33.553585, 32.002068, 46.203140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331036, 32.328079, 46.267864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230808, 0.338652, -0.912164,
		-0.798234, -0.470156, -0.376531,
		-0.556372, 0.815026, 0.161808,
		33.164124, 32.572586, 46.316406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026150, 32.058968, 45.665016>,  <33.553585, 32.002068, 46.203140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026150, 32.058968, 45.665016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027641, 32.423645, 45.829361>,  <33.028538, 32.642452, 45.927967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.027641, 32.423645, 45.829361>,  <33.026150, 32.058968, 45.665016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027641, 32.423645, 45.829361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222807, 0.399779, -0.889120,
		-0.974856, 0.094859, -0.201640,
		0.003730, 0.911690, 0.410862,
		33.028759, 32.697151, 45.952618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653061, 32.446201, 45.194260>,  <33.026150, 32.058968, 45.665016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653061, 32.446201, 45.194260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846130, 32.717171, 45.416298>,  <32.961971, 32.879753, 45.549522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846130, 32.717171, 45.416298>,  <32.653061, 32.446201, 45.194260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846130, 32.717171, 45.416298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282775, 0.479328, -0.830833,
		-0.828896, 0.557986, 0.039800,
		0.482671, 0.677419, 0.555097,
		32.990932, 32.920395, 45.582829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346199, 33.110004, 45.117950>,  <32.653061, 32.446201, 45.194260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346199, 33.110004, 45.117950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727367, 33.160831, 45.228081>,  <32.956066, 33.191326, 45.294159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727367, 33.160831, 45.228081>,  <32.346199, 33.110004, 45.117950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727367, 33.160831, 45.228081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141246, 0.617457, -0.773820,
		-0.268326, 0.776275, 0.570438,
		0.952917, 0.127064, 0.275326,
		33.013241, 33.198952, 45.310677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 33.763874, 45.183205>,  <32.346199, 33.110004, 45.117950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448483, 33.763874, 45.183205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811405, 33.614265, 45.106365>,  <33.029160, 33.524502, 45.060261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.811405, 33.614265, 45.106365>,  <32.448483, 33.763874, 45.183205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811405, 33.614265, 45.106365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099564, 0.634991, -0.766076,
		0.408507, 0.675942, 0.613372,
		0.907309, -0.374017, -0.192099,
		33.083599, 33.502060, 45.048737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647495, 34.244083, 44.791115>,  <32.448483, 33.763874, 45.183205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647495, 34.244083, 44.791115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932316, 33.967319, 44.743366>,  <33.103207, 33.801262, 44.714718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.932316, 33.967319, 44.743366>,  <32.647495, 34.244083, 44.791115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932316, 33.967319, 44.743366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332465, 0.482000, -0.810644,
		0.618426, 0.537533, 0.573243,
		0.712051, -0.691906, -0.119370,
		33.145931, 33.759747, 44.707554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381752, 34.632580, 44.715721>,  <32.647495, 34.244083, 44.791115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381752, 34.632580, 44.715721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390308, 34.266331, 44.555134>,  <33.395443, 34.046581, 44.458782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390308, 34.266331, 44.555134>,  <33.381752, 34.632580, 44.715721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390308, 34.266331, 44.555134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305333, 0.388361, -0.869452,
		0.952005, -0.103984, 0.287877,
		0.021392, -0.915622, -0.401472,
		33.396725, 33.991646, 44.434692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984814, 34.657948, 44.320827>,  <33.381752, 34.632580, 44.715721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984814, 34.657948, 44.320827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799286, 34.333958, 44.177269>,  <33.687969, 34.139565, 44.091133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.799286, 34.333958, 44.177269>,  <33.984814, 34.657948, 44.320827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799286, 34.333958, 44.177269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347242, 0.206484, -0.914761,
		0.815043, -0.548907, 0.185487,
		-0.463818, -0.809979, -0.358897,
		33.660141, 34.090965, 44.069599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491398, 34.177685, 44.401237>,  <33.984814, 34.657948, 44.320827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491398, 34.177685, 44.401237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889313, 34.203602, 44.369728>,  <35.128059, 34.219151, 44.350822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.889313, 34.203602, 44.369728>,  <34.491398, 34.177685, 44.401237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889313, 34.203602, 44.369728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099292, -0.438466, 0.893246,
		0.023337, -0.896409, -0.442613,
		0.994785, 0.064794, -0.078774,
		35.187748, 34.223042, 44.346096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752232, 33.472076, 44.417168>,  <34.491398, 34.177685, 44.401237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752232, 33.472076, 44.417168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035000, 33.730831, 44.531570>,  <35.204659, 33.886086, 44.600212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.035000, 33.730831, 44.531570>,  <34.752232, 33.472076, 44.417168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035000, 33.730831, 44.531570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056222, -0.351694, 0.934425,
		0.705059, -0.676641, -0.212249,
		0.706917, 0.646891, 0.286007,
		35.247074, 33.924900, 44.617374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206573, 33.113705, 44.786057>,  <34.752232, 33.472076, 44.417168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206573, 33.113705, 44.786057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277695, 33.487122, 44.910557>,  <35.320366, 33.711174, 44.985256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277695, 33.487122, 44.910557>,  <35.206573, 33.113705, 44.786057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277695, 33.487122, 44.910557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208446, -0.344842, 0.915224,
		0.961736, -0.097851, -0.255908,
		0.177803, 0.933547, 0.311251,
		35.331036, 33.767185, 45.003933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626083, 32.951015, 45.349754>,  <35.206573, 33.113705, 44.786057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626083, 32.951015, 45.349754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523228, 33.333881, 45.402996>,  <35.461514, 33.563602, 45.434940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.523228, 33.333881, 45.402996>,  <35.626083, 32.951015, 45.349754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523228, 33.333881, 45.402996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033565, -0.128808, 0.991101,
		0.965791, 0.259319, 0.000995,
		-0.257139, 0.957164, 0.133106,
		35.446087, 33.621029, 45.442928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200317, 33.311466, 45.730297>,  <35.626083, 32.951015, 45.349754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200317, 33.311466, 45.730297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870152, 33.529884, 45.787609>,  <35.672054, 33.660934, 45.821995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870152, 33.529884, 45.787609>,  <36.200317, 33.311466, 45.730297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870152, 33.529884, 45.787609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010378, -0.268440, 0.963241,
		0.564436, 0.793583, 0.227240,
		-0.825412, 0.546046, 0.143281,
		35.622528, 33.693699, 45.830593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341217, 33.820339, 46.277790>,  <36.200317, 33.311466, 45.730297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341217, 33.820339, 46.277790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951126, 33.732594, 46.266460>,  <35.717072, 33.679947, 46.259663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951126, 33.732594, 46.266460>,  <36.341217, 33.820339, 46.277790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951126, 33.732594, 46.266460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014689, -0.191990, 0.981287,
		-0.220700, 0.956566, 0.190457,
		-0.975231, -0.219367, -0.028321,
		35.658558, 33.666782, 46.257965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375027, 33.734440, 46.937126>,  <36.341217, 33.820339, 46.277790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375027, 33.734440, 46.937126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999401, 33.645706, 46.832088>,  <35.774025, 33.592464, 46.769066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.999401, 33.645706, 46.832088>,  <36.375027, 33.734440, 46.937126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999401, 33.645706, 46.832088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163424, -0.383954, 0.908775,
		-0.302420, 0.896309, 0.324303,
		-0.939061, -0.221833, -0.262593,
		35.717682, 33.579155, 46.753311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916752, 34.055794, 47.413803>,  <36.375027, 33.734440, 46.937126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916752, 34.055794, 47.413803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759758, 33.723331, 47.256252>,  <35.665562, 33.523853, 47.161720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759758, 33.723331, 47.256252>,  <35.916752, 34.055794, 47.413803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759758, 33.723331, 47.256252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155315, -0.362198, 0.919070,
		-0.906550, 0.421897, 0.013067,
		-0.392486, -0.831153, -0.393877,
		35.642014, 33.473984, 47.138088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293346, 33.833206, 47.834755>,  <35.916752, 34.055794, 47.413803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293346, 33.833206, 47.834755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394669, 33.500637, 47.636940>,  <35.455460, 33.301094, 47.518250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394669, 33.500637, 47.636940>,  <35.293346, 33.833206, 47.834755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394669, 33.500637, 47.636940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062931, -0.524292, 0.849210,
		-0.965338, -0.183984, -0.185127,
		0.253302, -0.831425, -0.494541,
		35.470657, 33.251209, 47.488579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674736, 33.243858, 48.016048>,  <35.293346, 33.833206, 47.834755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674736, 33.243858, 48.016048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016891, 33.064838, 47.911728>,  <35.222183, 32.957428, 47.849136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.016891, 33.064838, 47.911728>,  <34.674736, 33.243858, 48.016048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016891, 33.064838, 47.911728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016030, -0.526122, 0.850258,
		-0.517728, -0.723126, -0.457216,
		0.855395, -0.447532, -0.260796,
		35.273506, 32.930573, 47.833485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541332, 32.496227, 48.126183>,  <34.674736, 33.243858, 48.016048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541332, 32.496227, 48.126183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.937889, 32.547741, 48.116795>,  <35.175823, 32.578648, 48.111160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.937889, 32.547741, 48.116795>,  <34.541332, 32.496227, 48.126183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937889, 32.547741, 48.116795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110485, -0.727033, 0.677654,
		0.070209, -0.674416, -0.735006,
		0.991395, 0.128785, -0.023468,
		35.235306, 32.586376, 48.109753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921516, 31.833681, 47.920727>,  <34.541332, 32.496227, 48.126183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921516, 31.833681, 47.920727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139645, 32.063110, 48.165230>,  <35.270523, 32.200768, 48.311932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139645, 32.063110, 48.165230>,  <34.921516, 31.833681, 47.920727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139645, 32.063110, 48.165230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113678, -0.773097, 0.624017,
		0.830483, -0.270803, -0.486789,
		0.545320, 0.573573, 0.611260,
		35.303242, 32.235184, 48.348606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167206, 31.324511, 48.349247>,  <34.921516, 31.833681, 47.920727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167206, 31.324511, 48.349247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.289104, 31.672909, 48.503387>,  <35.362244, 31.881948, 48.595871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.289104, 31.672909, 48.503387>,  <35.167206, 31.324511, 48.349247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289104, 31.672909, 48.503387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144244, -0.442135, 0.885274,
		0.941448, -0.214198, -0.260375,
		0.304744, 0.870997, 0.385350,
		35.380527, 31.934208, 48.618992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771980, 31.143316, 48.688797>,  <35.167206, 31.324511, 48.349247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771980, 31.143316, 48.688797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658348, 31.484888, 48.863201>,  <35.590168, 31.689831, 48.967842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658348, 31.484888, 48.863201>,  <35.771980, 31.143316, 48.688797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658348, 31.484888, 48.863201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050891, -0.440676, 0.896222,
		0.957448, 0.276790, 0.081732,
		-0.284083, 0.853927, 0.436011,
		35.573124, 31.741066, 48.994003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514339, 31.337534, 48.593117>,  <35.771980, 31.143316, 48.688797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514339, 31.337534, 48.593117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908344, 31.277409, 48.559258>,  <37.144745, 31.241333, 48.538940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.908344, 31.277409, 48.559258>,  <36.514339, 31.337534, 48.593117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908344, 31.277409, 48.559258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022528, 0.374409, -0.926990,
		0.171033, 0.914999, 0.365410,
		0.985008, -0.150314, -0.084650,
		37.203846, 31.232315, 48.533863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811546, 31.906666, 48.345749>,  <36.514339, 31.337534, 48.593117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811546, 31.906666, 48.345749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036156, 31.601706, 48.217106>,  <37.170921, 31.418730, 48.139919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036156, 31.601706, 48.217106>,  <36.811546, 31.906666, 48.345749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036156, 31.601706, 48.217106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099514, 0.323623, -0.940939,
		0.821453, 0.560366, 0.105854,
		0.561527, -0.762403, -0.321605,
		37.204613, 31.372984, 48.120625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258270, 32.190395, 47.964981>,  <36.811546, 31.906666, 48.345749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258270, 32.190395, 47.964981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245686, 31.813122, 47.832676>,  <37.238136, 31.586756, 47.753292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245686, 31.813122, 47.832676>,  <37.258270, 32.190395, 47.964981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245686, 31.813122, 47.832676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296322, 0.324854, -0.898145,
		0.954570, 0.069755, -0.289708,
		-0.031463, -0.943188, -0.330765,
		37.236248, 31.530165, 47.733448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828182, 32.126530, 47.330208>,  <37.258270, 32.190395, 47.964981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828182, 32.126530, 47.330208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598701, 31.799078, 47.319561>,  <37.461014, 31.602608, 47.313171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598701, 31.799078, 47.319561>,  <37.828182, 32.126530, 47.330208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598701, 31.799078, 47.319561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065633, 0.078341, -0.994764,
		0.816428, -0.568954, -0.098673,
		-0.573705, -0.818630, -0.026618,
		37.426590, 31.553490, 47.311577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255535, 31.658054, 47.005932>,  <37.828182, 32.126530, 47.330208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255535, 31.658054, 47.005932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883717, 31.515478, 46.968197>,  <37.660625, 31.429932, 46.945557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883717, 31.515478, 46.968197>,  <38.255535, 31.658054, 47.005932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883717, 31.515478, 46.968197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126903, -0.069051, -0.989509,
		0.346188, -0.931762, 0.109419,
		-0.929542, -0.356442, -0.094339,
		37.604855, 31.408546, 46.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317265, 31.051128, 46.582451>,  <38.255535, 31.658054, 47.005932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317265, 31.051128, 46.582451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944786, 31.194098, 46.553814>,  <37.721298, 31.279879, 46.536633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944786, 31.194098, 46.553814>,  <38.317265, 31.051128, 46.582451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944786, 31.194098, 46.553814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123975, 0.125853, -0.984272,
		-0.342792, -0.925424, -0.161505,
		-0.931195, 0.357423, -0.071588,
		37.665428, 31.301325, 46.532337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996807, 30.840906, 45.907986>,  <38.317265, 31.051128, 46.582451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996807, 30.840906, 45.907986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747875, 31.138491, 46.005341>,  <37.598518, 31.317041, 46.063751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.747875, 31.138491, 46.005341>,  <37.996807, 30.840906, 45.907986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747875, 31.138491, 46.005341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212251, 0.138897, -0.967294,
		-0.753433, -0.653630, 0.071467,
		-0.622325, 0.743960, 0.243383,
		37.561176, 31.361679, 46.078354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425247, 30.749777, 45.487053>,  <37.996807, 30.840906, 45.907986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425247, 30.749777, 45.487053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410088, 31.135645, 45.591343>,  <37.400993, 31.367165, 45.653915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410088, 31.135645, 45.591343>,  <37.425247, 30.749777, 45.487053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410088, 31.135645, 45.591343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141852, 0.253078, -0.956990,
		-0.989162, -0.073255, 0.127249,
		-0.037900, 0.964669, 0.260726,
		37.398716, 31.425045, 45.669559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875038, 30.976210, 45.183998>,  <37.425247, 30.749777, 45.487053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875038, 30.976210, 45.183998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109585, 31.295906, 45.236740>,  <37.250313, 31.487724, 45.268383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.109585, 31.295906, 45.236740>,  <36.875038, 30.976210, 45.183998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109585, 31.295906, 45.236740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238578, 0.325948, -0.914789,
		-0.774116, 0.504944, 0.381807,
		0.586366, 0.799243, 0.131853,
		37.285496, 31.535679, 45.276295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567005, 31.432650, 44.751266>,  <36.875038, 30.976210, 45.183998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567005, 31.432650, 44.751266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921196, 31.603367, 44.824776>,  <37.133713, 31.705797, 44.868881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921196, 31.603367, 44.824776>,  <36.567005, 31.432650, 44.751266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921196, 31.603367, 44.824776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018606, 0.362597, -0.931760,
		-0.464306, 0.828474, 0.313131,
		0.885479, 0.426795, 0.183771,
		37.186840, 31.731405, 44.879906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505608, 32.157978, 44.535511>,  <36.567005, 31.432650, 44.751266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505608, 32.157978, 44.535511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902016, 32.104710, 44.540234>,  <37.139862, 32.072746, 44.543068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.902016, 32.104710, 44.540234>,  <36.505608, 32.157978, 44.535511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902016, 32.104710, 44.540234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083480, 0.547400, -0.832697,
		0.104432, 0.826207, 0.553603,
		0.991022, -0.133175, 0.011806,
		37.199322, 32.064758, 44.543774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806252, 32.836636, 44.351871>,  <36.505608, 32.157978, 44.535511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806252, 32.836636, 44.351871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085411, 32.556919, 44.289997>,  <37.252907, 32.389088, 44.252872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085411, 32.556919, 44.289997>,  <36.806252, 32.836636, 44.351871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085411, 32.556919, 44.289997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477279, 0.615140, -0.627540,
		0.533986, 0.364133, 0.763064,
		0.697899, -0.699292, -0.154683,
		37.294781, 32.347130, 44.243591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455143, 33.203106, 44.369667>,  <36.806252, 32.836636, 44.351871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455143, 33.203106, 44.369667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488419, 32.867298, 44.154900>,  <37.508385, 32.665813, 44.026039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.488419, 32.867298, 44.154900>,  <37.455143, 33.203106, 44.369667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488419, 32.867298, 44.154900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545515, 0.489254, -0.680473,
		0.833962, -0.236290, 0.498673,
		0.083189, -0.839522, -0.536919,
		37.513374, 32.615440, 43.993824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135132, 33.196114, 44.180367>,  <37.455143, 33.203106, 44.369667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135132, 33.196114, 44.180367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940224, 32.974392, 43.910458>,  <37.823280, 32.841358, 43.748512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.940224, 32.974392, 43.910458>,  <38.135132, 33.196114, 44.180367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940224, 32.974392, 43.910458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477290, 0.478028, -0.737349,
		0.731274, -0.681350, 0.031635,
		-0.487270, -0.554303, -0.674771,
		37.794044, 32.808102, 43.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.940002, 38.708317, 29.380951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580307, 38.563141, 29.283262>,  <28.364489, 38.476036, 29.224649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580307, 38.563141, 29.283262>,  <28.940002, 38.708317, 29.380951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580307, 38.563141, 29.283262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210670, -0.848562, 0.485347,
		-0.383388, 0.384992, 0.839520,
		-0.899239, -0.362938, -0.244222,
		28.310535, 38.454258, 29.209995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818842, 38.271523, 29.871452>,  <28.940002, 38.708317, 29.380951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818842, 38.271523, 29.871452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525421, 38.155758, 29.625479>,  <28.349369, 38.086300, 29.477894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.525421, 38.155758, 29.625479>,  <28.818842, 38.271523, 29.871452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525421, 38.155758, 29.625479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120540, -0.835051, 0.536805,
		-0.668861, 0.467898, 0.577665,
		-0.733550, -0.289416, -0.614933,
		28.305357, 38.068932, 29.440998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130888, 38.241714, 30.197937>,  <28.818842, 38.271523, 29.871452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130888, 38.241714, 30.197937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116623, 37.981159, 29.894775>,  <28.108065, 37.824825, 29.712877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.116623, 37.981159, 29.894775>,  <28.130888, 38.241714, 30.197937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116623, 37.981159, 29.894775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253925, -0.727592, 0.637285,
		-0.966566, 0.215178, -0.139456,
		-0.035662, -0.651389, -0.757905,
		28.105925, 37.785744, 29.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531298, 37.911175, 30.300596>,  <28.130888, 38.241714, 30.197937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531298, 37.911175, 30.300596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719702, 37.673882, 30.039454>,  <27.832745, 37.531506, 29.882769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.719702, 37.673882, 30.039454>,  <27.531298, 37.911175, 30.300596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719702, 37.673882, 30.039454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319918, -0.804584, 0.500298,
		-0.822070, -0.026788, -0.568756,
		0.471014, -0.593235, -0.652854,
		27.861004, 37.495911, 29.843596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040600, 37.611847, 29.948906>,  <27.531298, 37.911175, 30.300596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040600, 37.611847, 29.948906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348627, 37.357254, 29.931557>,  <27.533443, 37.204498, 29.921148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348627, 37.357254, 29.931557>,  <27.040600, 37.611847, 29.948906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348627, 37.357254, 29.931557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434078, -0.572574, 0.695511,
		-0.467515, -0.516765, -0.717206,
		0.770069, -0.636485, -0.043371,
		27.579647, 37.166309, 29.918545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810812, 36.971272, 30.095018>,  <27.040600, 37.611847, 29.948906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810812, 36.971272, 30.095018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201061, 36.898018, 30.143383>,  <27.435211, 36.854065, 30.172401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201061, 36.898018, 30.143383>,  <26.810812, 36.971272, 30.095018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201061, 36.898018, 30.143383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208818, -0.605329, 0.768096,
		-0.067473, -0.774622, -0.628815,
		0.975624, -0.183133, 0.120912,
		27.493748, 36.843079, 30.179657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780622, 36.339237, 30.314655>,  <26.810812, 36.971272, 30.095018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780622, 36.339237, 30.314655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170868, 36.384121, 30.390112>,  <27.405016, 36.411049, 30.435387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.170868, 36.384121, 30.390112>,  <26.780622, 36.339237, 30.314655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170868, 36.384121, 30.390112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083564, -0.604850, 0.791943,
		0.202963, -0.788394, -0.580724,
		0.975614, 0.112208, 0.188643,
		27.463552, 36.417782, 30.446705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129692, 35.700642, 30.483625>,  <26.780622, 36.339237, 30.314655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129692, 35.700642, 30.483625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388189, 35.959389, 30.645582>,  <27.543287, 36.114635, 30.742756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.388189, 35.959389, 30.645582>,  <27.129692, 35.700642, 30.483625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388189, 35.959389, 30.645582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171149, -0.639905, 0.749153,
		0.743692, -0.414838, -0.524244,
		0.646243, 0.646863, 0.404893,
		27.582062, 36.153446, 30.767050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852057, 35.365047, 30.618059>,  <27.129692, 35.700642, 30.483625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852057, 35.365047, 30.618059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821695, 35.684582, 30.856758>,  <27.803478, 35.876301, 30.999977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821695, 35.684582, 30.856758>,  <27.852057, 35.365047, 30.618059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821695, 35.684582, 30.856758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137770, -0.584330, 0.799736,
		0.987552, 0.142914, -0.065704,
		-0.075901, 0.798833, 0.596745,
		27.798925, 35.924232, 31.035782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429375, 35.335861, 31.118835>,  <27.852057, 35.365047, 30.618059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429375, 35.335861, 31.118835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156237, 35.579525, 31.280157>,  <27.992353, 35.725723, 31.376951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.156237, 35.579525, 31.280157>,  <28.429375, 35.335861, 31.118835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156237, 35.579525, 31.280157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195862, -0.379191, 0.904352,
		0.703820, 0.696523, 0.139618,
		-0.682843, 0.609155, 0.403305,
		27.951384, 35.762272, 31.401148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825241, 35.621975, 31.644545>,  <28.429375, 35.335861, 31.118835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825241, 35.621975, 31.644545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454073, 35.707241, 31.766870>,  <28.231371, 35.758400, 31.840267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454073, 35.707241, 31.766870>,  <28.825241, 35.621975, 31.644545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454073, 35.707241, 31.766870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186575, -0.444658, 0.876053,
		0.322724, 0.869966, 0.372838,
		-0.927922, 0.213161, 0.305816,
		28.175697, 35.771191, 31.858616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811342, 35.768963, 32.313530>,  <28.825241, 35.621975, 31.644545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811342, 35.768963, 32.313530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428738, 35.653080, 32.299953>,  <28.199175, 35.583549, 32.291809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.428738, 35.653080, 32.299953>,  <28.811342, 35.768963, 32.313530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428738, 35.653080, 32.299953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102072, -0.441434, 0.891469,
		-0.273249, 0.849238, 0.451808,
		-0.956513, -0.289709, -0.033938,
		28.141785, 35.566166, 32.289772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683109, 35.698166, 32.964478>,  <28.811342, 35.768963, 32.313530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683109, 35.698166, 32.964478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346916, 35.530991, 32.826542>,  <28.145201, 35.430687, 32.743778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346916, 35.530991, 32.826542>,  <28.683109, 35.698166, 32.964478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346916, 35.530991, 32.826542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202811, -0.347512, 0.915480,
		-0.502451, 0.839383, 0.207316,
		-0.840482, -0.417938, -0.344844,
		28.094772, 35.405609, 32.723087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020380, 35.771137, 33.444149>,  <28.683109, 35.698166, 32.964478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020380, 35.771137, 33.444149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950914, 35.444767, 33.223568>,  <27.909235, 35.248943, 33.091217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950914, 35.444767, 33.223568>,  <28.020380, 35.771137, 33.444149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950914, 35.444767, 33.223568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297532, -0.490326, 0.819180,
		-0.938784, 0.306339, -0.157611,
		-0.173666, -0.815927, -0.551456,
		27.898815, 35.199989, 33.058132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343859, 35.621910, 33.650421>,  <28.020380, 35.771137, 33.444149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343859, 35.621910, 33.650421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441851, 35.284142, 33.459869>,  <27.500647, 35.081478, 33.345539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441851, 35.284142, 33.459869>,  <27.343859, 35.621910, 33.650421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441851, 35.284142, 33.459869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559967, -0.524343, 0.641484,
		-0.791468, 0.109604, -0.601303,
		0.244979, -0.844424, -0.476376,
		27.515345, 35.030815, 33.316956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705900, 35.191048, 33.613091>,  <27.343859, 35.621910, 33.650421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705900, 35.191048, 33.613091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025421, 34.951122, 33.594570>,  <27.217133, 34.807167, 33.583458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025421, 34.951122, 33.594570>,  <26.705900, 35.191048, 33.613091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025421, 34.951122, 33.594570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350124, -0.526101, 0.775004,
		-0.489212, -0.602865, -0.630258,
		0.798802, -0.599809, -0.046297,
		27.265062, 34.771179, 33.580681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412409, 34.498798, 33.671009>,  <26.705900, 35.191048, 33.613091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412409, 34.498798, 33.671009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800453, 34.487152, 33.767376>,  <27.033279, 34.480164, 33.825195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800453, 34.487152, 33.767376>,  <26.412409, 34.498798, 33.671009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800453, 34.487152, 33.767376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208775, -0.606190, 0.767428,
		0.123695, -0.794787, -0.594149,
		0.970110, -0.029117, 0.240915,
		27.091486, 34.478416, 33.839649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508327, 33.863567, 34.080463>,  <26.412409, 34.498798, 33.671009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508327, 33.863567, 34.080463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842554, 34.066868, 34.163898>,  <27.043091, 34.188847, 34.213959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842554, 34.066868, 34.163898>,  <26.508327, 33.863567, 34.080463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842554, 34.066868, 34.163898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155485, -0.582919, 0.797515,
		0.526929, -0.633944, -0.566093,
		0.835566, 0.508252, 0.208588,
		27.093224, 34.219345, 34.226475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949013, 33.374088, 34.215706>,  <26.508327, 33.863567, 34.080463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949013, 33.374088, 34.215706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071344, 33.699368, 34.413765>,  <27.144743, 33.894535, 34.532600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.071344, 33.699368, 34.413765>,  <26.949013, 33.374088, 34.215706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071344, 33.699368, 34.413765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189418, -0.561642, 0.805406,
		0.933054, -0.152525, -0.325800,
		0.305828, 0.813200, 0.495152,
		27.163094, 33.943329, 34.562309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521250, 33.092640, 34.583687>,  <26.949013, 33.374088, 34.215706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521250, 33.092640, 34.583687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413288, 33.426472, 34.775780>,  <27.348511, 33.626770, 34.891037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413288, 33.426472, 34.775780>,  <27.521250, 33.092640, 34.583687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413288, 33.426472, 34.775780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039882, -0.488627, 0.871581,
		0.962061, 0.254395, 0.098598,
		-0.269904, 0.834582, 0.480235,
		27.332317, 33.676846, 34.919849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866047, 33.031948, 35.222576>,  <27.521250, 33.092640, 34.583687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866047, 33.031948, 35.222576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586510, 33.304539, 35.309486>,  <27.418787, 33.468094, 35.361633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.586510, 33.304539, 35.309486>,  <27.866047, 33.031948, 35.222576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586510, 33.304539, 35.309486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070314, -0.367745, 0.927265,
		0.711810, 0.632735, 0.304914,
		-0.698844, 0.681476, 0.217274,
		27.376856, 33.508980, 35.374668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472263, 33.532158, 35.271687>,  <27.866047, 33.031948, 35.222576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472263, 33.532158, 35.271687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743528, 33.673294, 35.529552>,  <28.906288, 33.757977, 35.684273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743528, 33.673294, 35.529552>,  <28.472263, 33.532158, 35.271687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743528, 33.673294, 35.529552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063432, 0.902034, -0.426980,
		-0.732169, 0.248670, 0.634107,
		0.678163, 0.352844, 0.644667,
		28.946978, 33.779148, 35.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180464, 34.257351, 35.536839>,  <28.472263, 33.532158, 35.271687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180464, 34.257351, 35.536839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576601, 34.233719, 35.587006>,  <28.814283, 34.219540, 35.617107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576601, 34.233719, 35.587006>,  <28.180464, 34.257351, 35.536839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576601, 34.233719, 35.587006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098703, 0.935750, -0.338571,
		-0.097355, 0.347680, 0.932545,
		0.990344, -0.059083, 0.125417,
		28.873705, 34.215996, 35.624630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395241, 34.927856, 35.861633>,  <28.180464, 34.257351, 35.536839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395241, 34.927856, 35.861633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739412, 34.782417, 35.718826>,  <28.945915, 34.695156, 35.633141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.739412, 34.782417, 35.718826>,  <28.395241, 34.927856, 35.861633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739412, 34.782417, 35.718826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277576, 0.921983, -0.269996,
		0.427337, 0.133211, 0.894225,
		0.860427, -0.363595, -0.357022,
		28.997540, 34.673340, 35.611721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881144, 35.234711, 36.154846>,  <28.395241, 34.927856, 35.861633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881144, 35.234711, 36.154846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037523, 35.111847, 35.807789>,  <29.131351, 35.038128, 35.599552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037523, 35.111847, 35.807789>,  <28.881144, 35.234711, 36.154846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037523, 35.111847, 35.807789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100602, 0.951284, -0.291441,
		0.914898, 0.026651, 0.402804,
		0.390948, -0.307162, -0.867647,
		29.154808, 35.019699, 35.547493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297724, 35.754692, 36.033623>,  <28.881144, 35.234711, 36.154846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297724, 35.754692, 36.033623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270336, 35.572407, 35.678627>,  <29.253902, 35.463036, 35.465630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270336, 35.572407, 35.678627>,  <29.297724, 35.754692, 36.033623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270336, 35.572407, 35.678627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109759, 0.887616, -0.447315,
		0.991597, 0.066782, -0.110795,
		-0.068470, -0.455717, -0.887487,
		29.249794, 35.435692, 35.412380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830669, 35.980453, 35.561264>,  <29.297724, 35.754692, 36.033623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830669, 35.980453, 35.561264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567698, 35.833836, 35.297920>,  <29.409914, 35.745865, 35.139915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.567698, 35.833836, 35.297920>,  <29.830669, 35.980453, 35.561264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567698, 35.833836, 35.297920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024046, 0.883473, -0.467864,
		0.753131, -0.291757, -0.589636,
		-0.657431, -0.366542, -0.658356,
		29.370468, 35.723873, 35.100414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044559, 36.267147, 34.964935>,  <29.830669, 35.980453, 35.561264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044559, 36.267147, 34.964935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662121, 36.167084, 34.903881>,  <29.432657, 36.107048, 34.867249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.662121, 36.167084, 34.903881>,  <30.044559, 36.267147, 34.964935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662121, 36.167084, 34.903881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138253, 0.844301, -0.517729,
		0.258382, -0.473897, -0.841819,
		-0.956099, -0.250155, -0.152634,
		29.375292, 36.092037, 34.858089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952503, 36.492805, 34.295937>,  <30.044559, 36.267147, 34.964935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952503, 36.492805, 34.295937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585711, 36.439816, 34.446453>,  <29.365635, 36.408020, 34.536762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.585711, 36.439816, 34.446453>,  <29.952503, 36.492805, 34.295937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585711, 36.439816, 34.446453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307856, 0.834885, -0.456280,
		-0.253714, -0.534243, -0.806358,
		-0.916981, -0.132478, 0.376292,
		29.310616, 36.400074, 34.559341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498465, 36.646175, 33.763893>,  <29.952503, 36.492805, 34.295937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498465, 36.646175, 33.763893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263411, 36.689259, 34.084663>,  <29.122377, 36.715111, 34.277126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263411, 36.689259, 34.084663>,  <29.498465, 36.646175, 33.763893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263411, 36.689259, 34.084663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375034, 0.841949, -0.387907,
		-0.716961, -0.528697, -0.454364,
		-0.587636, 0.107712, 0.801924,
		29.087120, 36.721573, 34.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864273, 36.781170, 33.520344>,  <29.498465, 36.646175, 33.763893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864273, 36.781170, 33.520344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849598, 36.931435, 33.890755>,  <28.840794, 37.021591, 34.113003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849598, 36.931435, 33.890755>,  <28.864273, 36.781170, 33.520344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849598, 36.931435, 33.890755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458290, 0.817142, -0.349643,
		-0.888045, -0.437218, 0.142182,
		-0.036687, 0.375660, 0.926031,
		28.838593, 37.044132, 34.168564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199606, 36.943798, 33.635960>,  <28.864273, 36.781170, 33.520344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199606, 36.943798, 33.635960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421232, 37.176334, 33.874306>,  <28.554209, 37.315857, 34.017311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.421232, 37.176334, 33.874306>,  <28.199606, 36.943798, 33.635960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421232, 37.176334, 33.874306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561674, 0.789363, -0.247848,
		-0.614437, -0.197357, 0.763883,
		0.554067, 0.581340, 0.595864,
		28.587452, 37.350735, 34.053066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793976, 37.485996, 33.768856>,  <28.199606, 36.943798, 33.635960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793976, 37.485996, 33.768856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125675, 37.663868, 33.904270>,  <28.324696, 37.770592, 33.985519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125675, 37.663868, 33.904270>,  <27.793976, 37.485996, 33.768856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125675, 37.663868, 33.904270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280593, 0.855125, -0.435923,
		-0.483336, 0.266498, 0.833885,
		0.829249, 0.444680, 0.338535,
		28.374451, 37.797272, 34.005833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598940, 38.221230, 34.014992>,  <27.793976, 37.485996, 33.768856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598940, 38.221230, 34.014992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974045, 38.165291, 33.887840>,  <28.199108, 38.131729, 33.811550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974045, 38.165291, 33.887840>,  <27.598940, 38.221230, 34.014992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974045, 38.165291, 33.887840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087221, 0.791150, -0.605371,
		0.336147, 0.595419, 0.729713,
		0.937762, -0.139847, -0.317875,
		28.255373, 38.123337, 33.792477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918722, 38.875576, 34.035789>,  <27.598940, 38.221230, 34.014992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918722, 38.875576, 34.035789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123735, 38.649273, 33.777416>,  <28.246742, 38.513493, 33.622391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123735, 38.649273, 33.777416>,  <27.918722, 38.875576, 34.035789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123735, 38.649273, 33.777416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069743, 0.777193, -0.625385,
		0.855831, 0.275481, 0.437793,
		0.512532, -0.565757, -0.645934,
		28.277494, 38.479546, 33.583637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344118, 39.300140, 33.746994>,  <27.918722, 38.875576, 34.035789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344118, 39.300140, 33.746994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376793, 39.002876, 33.481350>,  <28.396397, 38.824520, 33.321964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376793, 39.002876, 33.481350>,  <28.344118, 39.300140, 33.746994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376793, 39.002876, 33.481350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261002, 0.659034, -0.705374,
		0.961876, -0.115715, 0.247799,
		0.081685, -0.743158, -0.664111,
		28.401299, 38.779930, 33.282116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909103, 39.535110, 33.320217>,  <28.344118, 39.300140, 33.746994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909103, 39.535110, 33.320217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770729, 39.209984, 33.132748>,  <28.687704, 39.014908, 33.020264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770729, 39.209984, 33.132748>,  <28.909103, 39.535110, 33.320217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770729, 39.209984, 33.132748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213981, 0.418006, -0.882883,
		0.913532, -0.405709, 0.029324,
		-0.345936, -0.812817, -0.468676,
		28.666948, 38.966137, 32.992146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437256, 39.146191, 32.805485>,  <28.909103, 39.535110, 33.320217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437256, 39.146191, 32.805485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053537, 39.131893, 32.693436>,  <28.823305, 39.123314, 32.626205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053537, 39.131893, 32.693436>,  <29.437256, 39.146191, 32.805485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053537, 39.131893, 32.693436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259607, 0.278740, -0.924613,
		0.111133, -0.959701, -0.258114,
		-0.959299, -0.035747, -0.280123,
		28.765747, 39.121170, 32.609398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513012, 39.046986, 32.070103>,  <29.437256, 39.146191, 32.805485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513012, 39.046986, 32.070103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118956, 39.115009, 32.060497>,  <28.882521, 39.155823, 32.054733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118956, 39.115009, 32.060497>,  <29.513012, 39.046986, 32.070103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118956, 39.115009, 32.060497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062252, 0.223278, -0.972765,
		-0.160064, -0.959806, -0.230547,
		-0.985142, 0.170057, -0.024011,
		28.823414, 39.166027, 32.053295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202280, 38.606743, 31.525576>,  <29.513012, 39.046986, 32.070103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202280, 38.606743, 31.525576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950045, 38.911930, 31.582474>,  <28.798704, 39.095043, 31.616613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.950045, 38.911930, 31.582474>,  <29.202280, 38.606743, 31.525576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950045, 38.911930, 31.582474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016771, 0.196633, -0.980334,
		-0.775938, -0.615799, -0.136790,
		-0.630586, 0.762972, 0.142247,
		28.760868, 39.140823, 31.625149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705223, 38.581669, 31.002413>,  <29.202280, 38.606743, 31.525576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705223, 38.581669, 31.002413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684713, 38.958572, 31.134787>,  <28.672407, 39.184715, 31.214211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684713, 38.958572, 31.134787>,  <28.705223, 38.581669, 31.002413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684713, 38.958572, 31.134787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041859, 0.333109, -0.941959,
		-0.997807, -0.034445, -0.056522,
		-0.051274, 0.942259, 0.330937,
		28.669331, 39.241249, 31.234068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206232, 39.046410, 30.603762>,  <28.705223, 38.581669, 31.002413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206232, 39.046410, 30.603762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504314, 39.239914, 30.787348>,  <28.683165, 39.356014, 30.897499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.504314, 39.239914, 30.787348>,  <28.206232, 39.046410, 30.603762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504314, 39.239914, 30.787348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331659, 0.328225, -0.884461,
		-0.578508, 0.811324, 0.084152,
		0.745205, 0.483758, 0.458963,
		28.727877, 39.385040, 30.925037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.928818, 27.673666, 47.604393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536613, 27.726179, 47.662846>,  <40.301289, 27.757687, 47.697918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.536613, 27.726179, 47.662846>,  <40.928818, 27.673666, 47.604393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536613, 27.726179, 47.662846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099799, -0.307852, 0.946186,
		0.169204, 0.942334, 0.288752,
		-0.980515, 0.131281, 0.146133,
		40.242458, 27.765564, 47.706684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907185, 28.004694, 48.261669>,  <40.928818, 27.673666, 47.604393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907185, 28.004694, 48.261669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565590, 27.818682, 48.168327>,  <40.360634, 27.707075, 48.112324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.565590, 27.818682, 48.168327>,  <40.907185, 28.004694, 48.261669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565590, 27.818682, 48.168327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001571, -0.450802, 0.892623,
		-0.520291, 0.761922, 0.385710,
		-0.853988, -0.465029, -0.233352,
		40.309395, 27.679173, 48.098320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464249, 28.156702, 48.819504>,  <40.907185, 28.004694, 48.261669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464249, 28.156702, 48.819504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270824, 27.841257, 48.667580>,  <40.154770, 27.651991, 48.576424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.270824, 27.841257, 48.667580>,  <40.464249, 28.156702, 48.819504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270824, 27.841257, 48.667580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264428, -0.282028, 0.922246,
		-0.834412, 0.546398, -0.072152,
		-0.483565, -0.788612, -0.379811,
		40.125755, 27.604673, 48.553635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881134, 28.197594, 49.224255>,  <40.464249, 28.156702, 48.819504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881134, 28.197594, 49.224255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923943, 27.829353, 49.074032>,  <39.949627, 27.608410, 48.983898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.923943, 27.829353, 49.074032>,  <39.881134, 28.197594, 49.224255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923943, 27.829353, 49.074032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241655, -0.390482, 0.888328,
		-0.964442, -0.004319, -0.264259,
		0.107025, -0.920601, -0.375553,
		39.956051, 27.553173, 48.961365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352051, 27.894136, 49.514290>,  <39.881134, 28.197594, 49.224255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352051, 27.894136, 49.514290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528896, 27.561548, 49.379715>,  <39.635006, 27.361996, 49.298969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528896, 27.561548, 49.379715>,  <39.352051, 27.894136, 49.514290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528896, 27.561548, 49.379715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174323, -0.447585, 0.877086,
		-0.879856, -0.329125, -0.342829,
		0.442115, -0.831472, -0.336436,
		39.661530, 27.312107, 49.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893021, 27.344200, 49.537197>,  <39.352051, 27.894136, 49.514290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893021, 27.344200, 49.537197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.249451, 27.162809, 49.544640>,  <39.463310, 27.053976, 49.549103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.249451, 27.162809, 49.544640>,  <38.893021, 27.344200, 49.537197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249451, 27.162809, 49.544640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316228, -0.590941, 0.742151,
		-0.325555, -0.667194, -0.669974,
		0.891074, -0.453476, 0.018602,
		39.516773, 27.026766, 49.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782486, 26.564541, 49.629681>,  <38.893021, 27.344200, 49.537197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782486, 26.564541, 49.629681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.157688, 26.630629, 49.751560>,  <39.382809, 26.670280, 49.824688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.157688, 26.630629, 49.751560>,  <38.782486, 26.564541, 49.629681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157688, 26.630629, 49.751560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201280, -0.456018, 0.866910,
		0.282178, -0.874500, -0.394494,
		0.938010, 0.165219, 0.304698,
		39.439091, 26.680195, 49.842968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961269, 25.917332, 49.930035>,  <38.782486, 26.564541, 49.629681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961269, 25.917332, 49.930035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195293, 26.209196, 50.071625>,  <39.335709, 26.384315, 50.156578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195293, 26.209196, 50.071625>,  <38.961269, 25.917332, 49.930035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195293, 26.209196, 50.071625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189603, -0.301314, 0.934484,
		0.788515, -0.613844, -0.037941,
		0.585060, 0.729661, 0.353978,
		39.370811, 26.428095, 50.177818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260807, 25.648623, 50.436390>,  <38.961269, 25.917332, 49.930035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260807, 25.648623, 50.436390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.330421, 26.032032, 50.526669>,  <39.372192, 26.262077, 50.580837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.330421, 26.032032, 50.526669>,  <39.260807, 25.648623, 50.436390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330421, 26.032032, 50.526669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407678, -0.138501, 0.902561,
		0.896387, -0.249092, 0.366665,
		0.174038, 0.958525, 0.225700,
		39.382633, 26.319590, 50.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444599, 25.617590, 51.067459>,  <39.260807, 25.648623, 50.436390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444599, 25.617590, 51.067459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346073, 26.000181, 51.004883>,  <39.286957, 26.229736, 50.967335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346073, 26.000181, 51.004883>,  <39.444599, 25.617590, 51.067459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346073, 26.000181, 51.004883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526413, 0.003497, 0.850222,
		0.813766, 0.291779, 0.502642,
		-0.246319, 0.956479, -0.156443,
		39.272179, 26.287125, 50.957951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648922, 25.984058, 51.715088>,  <39.444599, 25.617590, 51.067459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648922, 25.984058, 51.715088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368153, 26.191555, 51.519863>,  <39.199692, 26.316053, 51.402729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368153, 26.191555, 51.519863>,  <39.648922, 25.984058, 51.715088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368153, 26.191555, 51.519863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573766, -0.005814, 0.818999,
		0.422009, 0.854912, 0.301716,
		-0.701927, 0.518740, -0.488066,
		39.157574, 26.347178, 51.373444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439396, 26.544180, 52.133972>,  <39.648922, 25.984058, 51.715088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439396, 26.544180, 52.133972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.131020, 26.515575, 51.880821>,  <38.945992, 26.498413, 51.728931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.131020, 26.515575, 51.880821>,  <39.439396, 26.544180, 52.133972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131020, 26.515575, 51.880821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635634, 0.023701, 0.771627,
		-0.040182, 0.997158, -0.063728,
		-0.770944, -0.071513, -0.632875,
		38.899734, 26.494122, 51.690960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954468, 27.031456, 52.315281>,  <39.439396, 26.544180, 52.133972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954468, 27.031456, 52.315281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721691, 26.783112, 52.105186>,  <38.582024, 26.634104, 51.979130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721691, 26.783112, 52.105186>,  <38.954468, 27.031456, 52.315281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721691, 26.783112, 52.105186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743568, 0.144693, 0.652817,
		-0.329312, 0.770451, -0.545857,
		-0.581945, -0.620862, -0.525234,
		38.547108, 26.596853, 51.947617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345951, 27.407846, 52.132133>,  <38.954468, 27.031456, 52.315281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345951, 27.407846, 52.132133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289196, 27.012300, 52.150078>,  <38.255142, 26.774973, 52.160843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.289196, 27.012300, 52.150078>,  <38.345951, 27.407846, 52.132133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289196, 27.012300, 52.150078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703440, 0.132612, 0.698274,
		-0.696448, 0.067521, -0.714424,
		-0.141889, -0.988865, 0.044861,
		38.246628, 26.715641, 52.163536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805481, 27.627455, 52.723621>,  <38.345951, 27.407846, 52.132133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805481, 27.627455, 52.723621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675259, 27.953920, 52.914574>,  <37.597126, 28.149799, 53.029144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675259, 27.953920, 52.914574>,  <37.805481, 27.627455, 52.723621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675259, 27.953920, 52.914574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085439, 0.477424, -0.874509,
		-0.941655, -0.325487, -0.085695,
		-0.325554, 0.816165, 0.477378,
		37.577591, 28.198771, 53.057789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199673, 27.779861, 52.477863>,  <37.805481, 27.627455, 52.723621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199673, 27.779861, 52.477863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302551, 28.128698, 52.644382>,  <37.364277, 28.338001, 52.744293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.302551, 28.128698, 52.644382>,  <37.199673, 27.779861, 52.477863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302551, 28.128698, 52.644382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033837, 0.438656, -0.898018,
		-0.965768, 0.216877, 0.142328,
		0.257192, 0.872092, 0.416301,
		37.379707, 28.390326, 52.769272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800755, 28.322203, 52.116676>,  <37.199673, 27.779861, 52.477863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800755, 28.322203, 52.116676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101650, 28.513460, 52.298012>,  <37.282188, 28.628214, 52.406811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.101650, 28.513460, 52.298012>,  <36.800755, 28.322203, 52.116676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101650, 28.513460, 52.298012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089845, 0.607168, -0.789478,
		-0.652733, 0.634608, 0.413778,
		0.752241, 0.478143, 0.453335,
		37.327324, 28.656902, 52.434013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630512, 28.991098, 51.857330>,  <36.800755, 28.322203, 52.116676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630512, 28.991098, 51.857330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002934, 28.995922, 52.003204>,  <37.226387, 28.998816, 52.090729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002934, 28.995922, 52.003204>,  <36.630512, 28.991098, 51.857330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002934, 28.995922, 52.003204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274515, 0.635266, -0.721858,
		-0.240375, 0.772199, 0.588157,
		0.931054, 0.012059, 0.364682,
		37.282249, 28.999540, 52.112610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804218, 29.731314, 51.906170>,  <36.630512, 28.991098, 51.857330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804218, 29.731314, 51.906170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147511, 29.527969, 51.877880>,  <37.353485, 29.405962, 51.860909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147511, 29.527969, 51.877880>,  <36.804218, 29.731314, 51.906170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147511, 29.527969, 51.877880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331885, 0.654766, -0.679069,
		0.391519, 0.559329, 0.730660,
		0.858234, -0.508363, -0.070720,
		37.404980, 29.375460, 51.856663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303429, 30.223810, 51.905781>,  <36.804218, 29.731314, 51.906170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303429, 30.223810, 51.905781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493130, 29.905622, 51.754883>,  <37.606949, 29.714710, 51.664345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493130, 29.905622, 51.754883>,  <37.303429, 30.223810, 51.905781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493130, 29.905622, 51.754883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171116, 0.503613, -0.846814,
		0.863601, 0.337049, 0.374956,
		0.474250, -0.795470, -0.377246,
		37.635406, 29.666981, 51.641708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962749, 30.422834, 51.710220>,  <37.303429, 30.223810, 51.905781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962749, 30.422834, 51.710220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918762, 30.092180, 51.489464>,  <37.892368, 29.893787, 51.357010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918762, 30.092180, 51.489464>,  <37.962749, 30.422834, 51.710220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918762, 30.092180, 51.489464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064429, 0.548161, -0.833888,
		0.991845, -0.127259, -0.007021,
		-0.109968, -0.826634, -0.551890,
		37.885773, 29.844191, 51.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468796, 30.472425, 51.249367>,  <37.962749, 30.422834, 51.710220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468796, 30.472425, 51.249367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182194, 30.241396, 51.092892>,  <38.010231, 30.102779, 50.999008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182194, 30.241396, 51.092892>,  <38.468796, 30.472425, 51.249367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182194, 30.241396, 51.092892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118873, 0.451484, -0.884326,
		0.687377, -0.680127, -0.254834,
		-0.716507, -0.577572, -0.391188,
		37.967243, 30.068125, 50.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760082, 30.469961, 50.642387>,  <38.468796, 30.472425, 51.249367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760082, 30.469961, 50.642387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373894, 30.369226, 50.615704>,  <38.142181, 30.308786, 50.599693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373894, 30.369226, 50.615704>,  <38.760082, 30.469961, 50.642387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373894, 30.369226, 50.615704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048068, 0.423860, -0.904452,
		0.256046, -0.870013, -0.421328,
		-0.965469, -0.251834, -0.066708,
		38.084251, 30.293676, 50.595692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718231, 30.116579, 49.956787>,  <38.760082, 30.469961, 50.642387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718231, 30.116579, 49.956787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351597, 30.227894, 50.071632>,  <38.131618, 30.294683, 50.140541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351597, 30.227894, 50.071632>,  <38.718231, 30.116579, 49.956787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351597, 30.227894, 50.071632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190438, 0.327551, -0.925442,
		-0.351585, -0.902920, -0.247231,
		-0.916582, 0.278289, 0.287113,
		38.076622, 30.311380, 50.157764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158901, 29.789268, 49.457630>,  <38.718231, 30.116579, 49.956787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158901, 29.789268, 49.457630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006081, 30.126644, 49.608704>,  <37.914387, 30.329069, 49.699348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.006081, 30.126644, 49.608704>,  <38.158901, 29.789268, 49.457630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006081, 30.126644, 49.608704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222897, 0.312523, -0.923388,
		-0.896856, -0.436971, 0.068599,
		-0.382055, 0.843437, 0.377687,
		37.891464, 30.379675, 49.722012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550201, 29.878292, 49.119728>,  <38.158901, 29.789268, 49.457630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550201, 29.878292, 49.119728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639336, 30.236147, 49.274635>,  <37.692814, 30.450859, 49.367580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.639336, 30.236147, 49.274635>,  <37.550201, 29.878292, 49.119728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639336, 30.236147, 49.274635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402779, 0.446252, -0.799142,
		-0.887758, 0.022094, 0.459780,
		0.222834, 0.894635, 0.387264,
		37.706184, 30.504538, 49.390816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961472, 30.211863, 49.138157>,  <37.550201, 29.878292, 49.119728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961472, 30.211863, 49.138157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252922, 30.484568, 49.164410>,  <37.427792, 30.648190, 49.180161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252922, 30.484568, 49.164410>,  <36.961472, 30.211863, 49.138157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252922, 30.484568, 49.164410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359895, 0.462630, -0.810215,
		-0.582737, 0.566722, 0.582446,
		0.728625, 0.681762, 0.065631,
		37.471508, 30.689096, 49.184097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584042, 30.802460, 49.093472>,  <36.961472, 30.211863, 49.138157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584042, 30.802460, 49.093472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960945, 30.886763, 48.989372>,  <37.187088, 30.937346, 48.926914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960945, 30.886763, 48.989372>,  <36.584042, 30.802460, 49.093472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960945, 30.886763, 48.989372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320609, 0.343271, -0.882822,
		-0.096729, 0.915284, 0.391022,
		0.942260, 0.210759, -0.260244,
		37.243622, 30.949991, 48.911301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520107, 31.367573, 49.584354>,  <36.584042, 30.802460, 49.093472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520107, 31.367573, 49.584354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161617, 31.542032, 49.551991>,  <35.946522, 31.646708, 49.532570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161617, 31.542032, 49.551991>,  <36.520107, 31.367573, 49.584354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161617, 31.542032, 49.551991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345193, -0.571163, 0.744725,
		0.278597, 0.695375, 0.662448,
		-0.896229, 0.436150, -0.080914,
		35.892750, 31.672878, 49.527718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361126, 31.514000, 50.312782>,  <36.520107, 31.367573, 49.584354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361126, 31.514000, 50.312782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007519, 31.534170, 50.126896>,  <35.795353, 31.546272, 50.015366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007519, 31.534170, 50.126896>,  <36.361126, 31.514000, 50.312782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007519, 31.534170, 50.126896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454635, -0.323899, 0.829697,
		-0.108684, 0.944747, 0.309259,
		-0.884022, 0.050425, -0.464717,
		35.742313, 31.549297, 49.987480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868904, 31.884850, 50.789257>,  <36.361126, 31.514000, 50.312782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868904, 31.884850, 50.789257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672073, 31.658205, 50.524891>,  <35.553974, 31.522219, 50.366272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672073, 31.658205, 50.524891>,  <35.868904, 31.884850, 50.789257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672073, 31.658205, 50.524891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534069, -0.403061, 0.743177,
		-0.687484, 0.718674, -0.104274,
		-0.492073, -0.566612, -0.660919,
		35.524452, 31.488222, 50.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258614, 31.786282, 51.084553>,  <35.868904, 31.884850, 50.789257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258614, 31.786282, 51.084553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205769, 31.508472, 50.801659>,  <35.174061, 31.341787, 50.631920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.205769, 31.508472, 50.801659>,  <35.258614, 31.786282, 51.084553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205769, 31.508472, 50.801659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464305, -0.587021, 0.663195,
		-0.875767, 0.415988, -0.244920,
		-0.132108, -0.694522, -0.707238,
		35.166138, 31.300116, 50.589489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592049, 31.626736, 51.083534>,  <35.258614, 31.786282, 51.084553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592049, 31.626736, 51.083534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764412, 31.317102, 50.898014>,  <34.867828, 31.131323, 50.786701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764412, 31.317102, 50.898014>,  <34.592049, 31.626736, 51.083534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764412, 31.317102, 50.898014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505973, -0.632831, 0.586103,
		-0.747203, -0.017881, -0.664355,
		0.430904, -0.774084, -0.463806,
		34.893684, 31.084877, 50.758873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084904, 31.116621, 51.066151>,  <34.592049, 31.626736, 51.083534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084904, 31.116621, 51.066151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431992, 30.920549, 51.033192>,  <34.640244, 30.802906, 51.013416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431992, 30.920549, 51.033192>,  <34.084904, 31.116621, 51.066151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431992, 30.920549, 51.033192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317158, -0.673644, 0.667544,
		-0.382724, -0.553106, -0.739997,
		0.867717, -0.490182, -0.082398,
		34.692307, 30.773495, 51.008472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853283, 30.470930, 51.057285>,  <34.084904, 31.116621, 51.066151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853283, 30.470930, 51.057285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243214, 30.424883, 51.133659>,  <34.477173, 30.397255, 51.179485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243214, 30.424883, 51.133659>,  <33.853283, 30.470930, 51.057285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243214, 30.424883, 51.133659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197300, -0.844256, 0.498301,
		0.103837, -0.523430, -0.845718,
		0.974829, -0.115118, 0.190938,
		34.535664, 30.390348, 51.190941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958706, 29.945585, 50.500820>,  <33.853283, 30.470930, 51.057285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958706, 29.945585, 50.500820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562160, 29.928843, 50.451096>,  <33.324234, 29.918797, 50.421261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562160, 29.928843, 50.451096>,  <33.958706, 29.945585, 50.500820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562160, 29.928843, 50.451096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034668, 0.830404, -0.556083,
		0.126504, -0.555588, -0.821778,
		-0.991360, -0.041858, -0.124311,
		33.264751, 29.916285, 50.413803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818275, 30.123747, 49.835407>,  <33.958706, 29.945585, 50.500820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818275, 30.123747, 49.835407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458431, 30.178007, 50.001446>,  <33.242527, 30.210564, 50.101070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.458431, 30.178007, 50.001446>,  <33.818275, 30.123747, 49.835407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458431, 30.178007, 50.001446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143908, 0.805352, -0.575064,
		-0.412307, -0.577068, -0.704980,
		-0.899608, 0.135651, 0.415096,
		33.188549, 30.218702, 50.125973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304146, 30.092794, 49.360008>,  <33.818275, 30.123747, 49.835407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304146, 30.092794, 49.360008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114979, 30.291571, 49.651047>,  <33.001480, 30.410837, 49.825672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.114979, 30.291571, 49.651047>,  <33.304146, 30.092794, 49.360008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114979, 30.291571, 49.651047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288031, 0.693219, -0.660671,
		-0.832701, -0.522011, -0.184698,
		-0.472913, 0.496942, 0.727600,
		32.973106, 30.440653, 49.869328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701405, 30.202646, 49.114033>,  <33.304146, 30.092794, 49.360008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701405, 30.202646, 49.114033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712627, 30.470266, 49.411110>,  <32.719360, 30.630838, 49.589355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712627, 30.470266, 49.411110>,  <32.701405, 30.202646, 49.114033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712627, 30.470266, 49.411110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386938, 0.692329, -0.609064,
		-0.921678, -0.270285, 0.278307,
		0.028059, 0.669049, 0.742688,
		32.721046, 30.670980, 49.633915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044094, 30.462549, 49.145008>,  <32.701405, 30.202646, 49.114033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044094, 30.462549, 49.145008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298687, 30.735567, 49.288685>,  <32.451443, 30.899378, 49.374893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298687, 30.735567, 49.288685>,  <32.044094, 30.462549, 49.145008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298687, 30.735567, 49.288685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478516, 0.714690, -0.510139,
		-0.604906, 0.152814, 0.781497,
		0.636484, 0.682544, 0.359196,
		32.489632, 30.940331, 49.396442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653578, 31.093019, 49.267883>,  <32.044094, 30.462549, 49.145008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653578, 31.093019, 49.267883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.031391, 31.223522, 49.282913>,  <32.258080, 31.301823, 49.291931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.031391, 31.223522, 49.282913>,  <31.653578, 31.093019, 49.267883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031391, 31.223522, 49.282913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232545, 0.745213, -0.624965,
		-0.231900, 0.581563, 0.779748,
		0.944534, 0.326256, 0.037575,
		32.314751, 31.321400, 49.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553856, 31.811346, 49.271858>,  <31.653578, 31.093019, 49.267883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553856, 31.811346, 49.271858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917929, 31.745577, 49.119789>,  <32.136372, 31.706116, 49.028549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917929, 31.745577, 49.119789>,  <31.553856, 31.811346, 49.271858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917929, 31.745577, 49.119789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218340, 0.589506, -0.777696,
		0.351987, 0.790852, 0.500657,
		0.910183, -0.164425, -0.380173,
		32.190983, 31.696249, 49.005737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.750870, 25.981110, 51.425705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125309, 26.121735, 51.430111>,  <36.349972, 26.206110, 51.432755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.125309, 26.121735, 51.430111>,  <35.750870, 25.981110, 51.425705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125309, 26.121735, 51.430111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158226, 0.448869, -0.879478,
		-0.314135, 0.821536, 0.475812,
		0.936100, 0.351561, 0.011017,
		36.406139, 26.227203, 51.433414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819107, 26.764341, 51.271473>,  <35.750870, 25.981110, 51.425705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819107, 26.764341, 51.271473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.156815, 26.576828, 51.167583>,  <36.359440, 26.464319, 51.105251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.156815, 26.576828, 51.167583>,  <35.819107, 26.764341, 51.271473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156815, 26.576828, 51.167583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133305, 0.285699, -0.949003,
		0.519081, 0.835833, 0.178715,
		0.844266, -0.468785, -0.259722,
		36.410095, 26.436192, 51.089668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171638, 27.305235, 50.991940>,  <35.819107, 26.764341, 51.271473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171638, 27.305235, 50.991940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322380, 26.958342, 50.861778>,  <36.412827, 26.750206, 50.783680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.322380, 26.958342, 50.861778>,  <36.171638, 27.305235, 50.991940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322380, 26.958342, 50.861778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237631, 0.249033, -0.938890,
		0.895272, 0.431151, -0.112232,
		0.376854, -0.867232, -0.325407,
		36.435436, 26.698172, 50.764156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523960, 27.442064, 50.391563>,  <36.171638, 27.305235, 50.991940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523960, 27.442064, 50.391563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449535, 27.049049, 50.392124>,  <36.404881, 26.813240, 50.392460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449535, 27.049049, 50.392124>,  <36.523960, 27.442064, 50.391563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449535, 27.049049, 50.392124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331617, 0.061450, -0.941411,
		0.924885, -0.175627, -0.337259,
		-0.186061, -0.982537, 0.001406,
		36.393719, 26.754288, 50.392548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968857, 27.167433, 49.891926>,  <36.523960, 27.442064, 50.391563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968857, 27.167433, 49.891926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.651360, 26.928373, 49.937160>,  <36.460861, 26.784937, 49.964302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.651360, 26.928373, 49.937160>,  <36.968857, 27.167433, 49.891926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651360, 26.928373, 49.937160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186999, 0.062854, -0.980347,
		0.578797, -0.799289, -0.161650,
		-0.793741, -0.597650, 0.113086,
		36.413239, 26.749079, 49.971085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979889, 26.734512, 49.319843>,  <36.968857, 27.167433, 49.891926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979889, 26.734512, 49.319843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596798, 26.715099, 49.433262>,  <36.366943, 26.703451, 49.501312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.596798, 26.715099, 49.433262>,  <36.979889, 26.734512, 49.319843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596798, 26.715099, 49.433262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286361, 0.066951, -0.955780,
		0.027402, -0.996575, -0.078018,
		-0.957730, -0.048532, 0.283545,
		36.309479, 26.700541, 49.518326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686333, 26.279314, 48.786942>,  <36.979889, 26.734512, 49.319843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686333, 26.279314, 48.786942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380596, 26.475801, 48.954025>,  <36.197155, 26.593695, 49.054276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.380596, 26.475801, 48.954025>,  <36.686333, 26.279314, 48.786942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380596, 26.475801, 48.954025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401831, 0.143762, -0.904358,
		-0.504290, -0.859089, 0.087504,
		-0.764345, 0.491221, 0.417707,
		36.151291, 26.623167, 49.079338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984909, 26.067051, 48.485561>,  <36.686333, 26.279314, 48.786942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984909, 26.067051, 48.485561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901566, 26.417606, 48.659241>,  <35.851559, 26.627939, 48.763451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.901566, 26.417606, 48.659241>,  <35.984909, 26.067051, 48.485561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901566, 26.417606, 48.659241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624611, 0.222389, -0.748601,
		-0.752627, -0.427185, 0.501065,
		-0.208360, 0.876388, 0.434201,
		35.839058, 26.680523, 48.789501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254894, 26.075232, 48.492714>,  <35.984909, 26.067051, 48.485561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254894, 26.075232, 48.492714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383945, 26.453644, 48.504936>,  <35.461376, 26.680691, 48.512268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383945, 26.453644, 48.504936>,  <35.254894, 26.075232, 48.492714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383945, 26.453644, 48.504936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606053, 0.231269, -0.761062,
		-0.727054, 0.227025, 0.647960,
		0.322633, 0.946031, 0.030556,
		35.480736, 26.737453, 48.514103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701069, 26.432564, 48.455845>,  <35.254894, 26.075232, 48.492714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701069, 26.432564, 48.455845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002563, 26.668562, 48.340065>,  <35.183460, 26.810162, 48.270596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.002563, 26.668562, 48.340065>,  <34.701069, 26.432564, 48.455845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002563, 26.668562, 48.340065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460186, 0.159416, -0.873393,
		-0.469154, 0.791513, 0.391666,
		0.753740, 0.589995, -0.289452,
		35.228687, 26.845560, 48.253231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397209, 26.801704, 47.931805>,  <34.701069, 26.432564, 48.455845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397209, 26.801704, 47.931805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773937, 26.926872, 47.882721>,  <34.999973, 27.001972, 47.853271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773937, 26.926872, 47.882721>,  <34.397209, 26.801704, 47.931805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773937, 26.926872, 47.882721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199365, 0.226148, -0.953473,
		-0.270608, 0.922464, 0.275375,
		0.941820, 0.312918, -0.122710,
		35.056484, 27.020748, 47.845909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295795, 27.468386, 47.662697>,  <34.397209, 26.801704, 47.931805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295795, 27.468386, 47.662697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658348, 27.327553, 47.569305>,  <34.875881, 27.243053, 47.513271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658348, 27.327553, 47.569305>,  <34.295795, 27.468386, 47.662697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658348, 27.327553, 47.569305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156413, 0.233720, -0.959641,
		0.392440, 0.906319, 0.156770,
		0.906381, -0.352081, -0.233481,
		34.930264, 27.221928, 47.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260719, 28.202671, 47.647453>,  <34.295795, 27.468386, 47.662697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260719, 28.202671, 47.647453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905148, 28.320515, 47.507160>,  <33.691803, 28.391220, 47.422985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905148, 28.320515, 47.507160>,  <34.260719, 28.202671, 47.647453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905148, 28.320515, 47.507160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430760, -0.277364, 0.858787,
		0.155727, 0.914481, 0.373463,
		-0.888929, 0.294609, -0.350729,
		33.638470, 28.408897, 47.401943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016766, 28.732582, 48.120121>,  <34.260719, 28.202671, 47.647453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016766, 28.732582, 48.120121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711823, 28.574951, 47.914787>,  <33.528858, 28.480371, 47.791588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711823, 28.574951, 47.914787>,  <34.016766, 28.732582, 48.120121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711823, 28.574951, 47.914787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449394, -0.248415, 0.858099,
		-0.465679, 0.884868, 0.012284,
		-0.762356, -0.394079, -0.513337,
		33.483116, 28.456728, 47.760788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439182, 28.823179, 48.481777>,  <34.016766, 28.732582, 48.120121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439182, 28.823179, 48.481777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298286, 28.535461, 48.242264>,  <33.213749, 28.362831, 48.098557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298286, 28.535461, 48.242264>,  <33.439182, 28.823179, 48.481777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298286, 28.535461, 48.242264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480826, -0.409821, 0.775147,
		-0.802954, 0.560948, -0.201500,
		-0.352238, -0.719294, -0.598786,
		33.192616, 28.319674, 48.062630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788624, 28.642042, 48.756222>,  <33.439182, 28.823179, 48.481777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788624, 28.642042, 48.756222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907246, 28.341509, 48.520409>,  <32.978420, 28.161188, 48.378922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.907246, 28.341509, 48.520409>,  <32.788624, 28.642042, 48.756222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907246, 28.341509, 48.520409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412465, -0.657527, 0.630501,
		-0.861352, 0.056185, -0.504892,
		0.296555, -0.751333, -0.589537,
		32.996212, 28.116108, 48.343548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218822, 28.174559, 48.706696>,  <32.788624, 28.642042, 48.756222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218822, 28.174559, 48.706696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538525, 27.968904, 48.582203>,  <32.730347, 27.845512, 48.507507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538525, 27.968904, 48.582203>,  <32.218822, 28.174559, 48.706696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538525, 27.968904, 48.582203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310864, -0.796858, 0.518055,
		-0.514353, -0.317307, -0.796717,
		0.799253, -0.514133, -0.311226,
		32.778301, 27.814665, 48.488834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925739, 27.585234, 48.598164>,  <32.218822, 28.174559, 48.706696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925739, 27.585234, 48.598164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310303, 27.488552, 48.650726>,  <32.541042, 27.430542, 48.682262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310303, 27.488552, 48.650726>,  <31.925739, 27.585234, 48.598164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310303, 27.488552, 48.650726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273421, -0.786477, 0.553801,
		-0.030509, -0.568359, -0.822215,
		0.961411, -0.241706, 0.131407,
		32.598724, 27.416040, 48.690147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914412, 26.841154, 48.360355>,  <31.925739, 27.585234, 48.598164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914412, 26.841154, 48.360355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210201, 26.925163, 48.616188>,  <32.387676, 26.975569, 48.769688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210201, 26.925163, 48.616188>,  <31.914412, 26.841154, 48.360355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210201, 26.925163, 48.616188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253474, -0.793296, 0.553563,
		0.623642, -0.571463, -0.533386,
		0.739474, 0.210025, 0.639584,
		32.432045, 26.988171, 48.808064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146370, 26.201614, 48.566792>,  <31.914412, 26.841154, 48.360355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146370, 26.201614, 48.566792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319221, 26.422569, 48.851925>,  <32.422932, 26.555143, 49.023006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.319221, 26.422569, 48.851925>,  <32.146370, 26.201614, 48.566792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319221, 26.422569, 48.851925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149857, -0.735472, 0.660775,
		0.889276, -0.392360, -0.235036,
		0.432124, 0.552389, 0.712836,
		32.448860, 26.588285, 49.065777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567841, 25.771742, 48.921627>,  <32.146370, 26.201614, 48.566792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567841, 25.771742, 48.921627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568531, 26.051476, 49.207546>,  <32.568947, 26.219316, 49.379097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568531, 26.051476, 49.207546>,  <32.567841, 25.771742, 48.921627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568531, 26.051476, 49.207546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014566, -0.714736, 0.699243,
		0.999892, 0.009205, -0.011421,
		0.001727, 0.699334, 0.714793,
		32.569050, 26.261276, 49.421986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983150, 25.510925, 49.548172>,  <32.567841, 25.771742, 48.921627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983150, 25.510925, 49.548172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.754452, 25.807926, 49.687767>,  <32.617233, 25.986128, 49.771523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.754452, 25.807926, 49.687767>,  <32.983150, 25.510925, 49.548172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754452, 25.807926, 49.687767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094663, -0.482232, 0.870914,
		0.814948, 0.464910, 0.346004,
		-0.571751, 0.742503, 0.348985,
		32.582928, 26.030678, 49.792461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159317, 25.641361, 50.228333>,  <32.983150, 25.510925, 49.548172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159317, 25.641361, 50.228333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.785473, 25.782108, 50.207558>,  <32.561169, 25.866556, 50.195091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.785473, 25.782108, 50.207558>,  <33.159317, 25.641361, 50.228333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785473, 25.782108, 50.207558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201388, -0.403149, 0.892700,
		0.293177, 0.844783, 0.447648,
		-0.934607, 0.351870, -0.051936,
		32.505093, 25.887669, 50.191978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066376, 25.817991, 50.896351>,  <33.159317, 25.641361, 50.228333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066376, 25.817991, 50.896351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707378, 25.779581, 50.724174>,  <32.491978, 25.756535, 50.620869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.707378, 25.779581, 50.724174>,  <33.066376, 25.817991, 50.896351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707378, 25.779581, 50.724174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298574, -0.586023, 0.753280,
		-0.324582, 0.804584, 0.497283,
		-0.897497, -0.096025, -0.430441,
		32.438129, 25.750774, 50.595043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588547, 25.982037, 51.425079>,  <33.066376, 25.817991, 50.896351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588547, 25.982037, 51.425079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370106, 25.790195, 51.150341>,  <32.239040, 25.675091, 50.985497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370106, 25.790195, 51.150341>,  <32.588547, 25.982037, 51.425079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370106, 25.790195, 51.150341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335285, -0.626234, 0.703857,
		-0.767697, 0.614666, 0.181184,
		-0.546100, -0.479600, -0.686846,
		32.206276, 25.646315, 50.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048866, 26.571825, 51.220901>,  <32.588547, 25.982037, 51.425079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048866, 26.571825, 51.220901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126732, 26.830267, 51.516106>,  <32.173450, 26.985332, 51.693226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126732, 26.830267, 51.516106>,  <32.048866, 26.571825, 51.220901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126732, 26.830267, 51.516106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256576, 0.692663, -0.674082,
		-0.946718, 0.320576, -0.030937,
		0.194666, 0.646103, 0.738009,
		32.185131, 27.024097, 51.737507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852526, 27.207520, 50.973267>,  <32.048866, 26.571825, 51.220901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852526, 27.207520, 50.973267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089172, 27.291637, 51.284592>,  <32.231159, 27.342108, 51.471386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.089172, 27.291637, 51.284592>,  <31.852526, 27.207520, 50.973267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089172, 27.291637, 51.284592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286612, 0.847458, -0.446843,
		-0.753552, 0.487433, 0.441098,
		0.591618, 0.210296, 0.778308,
		32.266659, 27.354727, 51.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575745, 27.716570, 51.252590>,  <31.852526, 27.207520, 50.973267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575745, 27.716570, 51.252590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959417, 27.743116, 51.362549>,  <32.189621, 27.759045, 51.428524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959417, 27.743116, 51.362549>,  <31.575745, 27.716570, 51.252590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959417, 27.743116, 51.362549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105479, 0.817961, -0.565521,
		-0.262383, 0.571433, 0.777573,
		0.959182, 0.066366, 0.274893,
		32.247173, 27.763025, 51.445015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666788, 28.364641, 51.440144>,  <31.575745, 27.716570, 51.252590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666788, 28.364641, 51.440144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040981, 28.242277, 51.369385>,  <32.265495, 28.168859, 51.326927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.040981, 28.242277, 51.369385>,  <31.666788, 28.364641, 51.440144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040981, 28.242277, 51.369385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201547, 0.873079, -0.443972,
		0.290262, 0.379674, 0.878405,
		0.935482, -0.305908, -0.176899,
		32.321625, 28.150505, 51.316315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052670, 28.917814, 51.640247>,  <31.666788, 28.364641, 51.440144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052670, 28.917814, 51.640247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309475, 28.691589, 51.433189>,  <32.463558, 28.555855, 51.308956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309475, 28.691589, 51.433189>,  <32.052670, 28.917814, 51.640247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309475, 28.691589, 51.433189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351977, 0.817233, -0.456336,
		0.681121, 0.110776, 0.723742,
		0.642017, -0.565560, -0.517644,
		32.502079, 28.521921, 51.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705120, 29.303682, 51.745071>,  <32.052670, 28.917814, 51.640247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705120, 29.303682, 51.745071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795677, 29.069691, 51.433548>,  <32.850010, 28.929296, 51.246632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795677, 29.069691, 51.433548>,  <32.705120, 29.303682, 51.745071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795677, 29.069691, 51.433548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520107, 0.748642, -0.411125,
		0.823550, -0.311989, 0.473739,
		0.226394, -0.584977, -0.778811,
		32.863594, 28.894197, 51.199905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394215, 29.432024, 51.552265>,  <32.705120, 29.303682, 51.745071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394215, 29.432024, 51.552265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211105, 29.323420, 51.213627>,  <33.101238, 29.258257, 51.010445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.211105, 29.323420, 51.213627>,  <33.394215, 29.432024, 51.552265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211105, 29.323420, 51.213627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267128, 0.866226, -0.422251,
		0.847987, -0.419446, -0.324010,
		-0.457777, -0.271511, -0.846594,
		33.073772, 29.241966, 50.959648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733196, 29.638941, 51.096821>,  <33.394215, 29.432024, 51.552265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733196, 29.638941, 51.096821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395538, 29.596487, 50.886616>,  <33.192944, 29.571014, 50.760494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395538, 29.596487, 50.886616>,  <33.733196, 29.638941, 51.096821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395538, 29.596487, 50.886616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208402, 0.838158, -0.504043,
		0.493956, -0.535001, -0.685405,
		-0.844142, -0.106136, -0.525509,
		33.142296, 29.564646, 50.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396683, 29.394653, 50.815273>,  <33.733196, 29.638941, 51.096821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396683, 29.394653, 50.815273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.602375, 29.617504, 51.076096>,  <34.725792, 29.751215, 51.232590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.602375, 29.617504, 51.076096>,  <34.396683, 29.394653, 50.815273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602375, 29.617504, 51.076096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230477, -0.822079, 0.520640,
		0.826104, -0.117445, -0.551143,
		0.514229, 0.557129, 0.652055,
		34.756645, 29.784643, 51.271713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992279, 29.048943, 50.939110>,  <34.396683, 29.394653, 50.815273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992279, 29.048943, 50.939110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969936, 29.285261, 51.261063>,  <34.956532, 29.427052, 51.454235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.969936, 29.285261, 51.261063>,  <34.992279, 29.048943, 50.939110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969936, 29.285261, 51.261063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337234, -0.747605, 0.572154,
		0.939762, 0.303393, -0.157478,
		-0.055856, 0.590796, 0.804885,
		34.953178, 29.462500, 51.502529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595181, 28.919605, 51.376713>,  <34.992279, 29.048943, 50.939110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595181, 28.919605, 51.376713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322510, 29.076809, 51.623566>,  <35.158905, 29.171131, 51.771679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322510, 29.076809, 51.623566>,  <35.595181, 28.919605, 51.376713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322510, 29.076809, 51.623566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182366, -0.725595, 0.663517,
		0.708557, 0.564852, 0.422953,
		-0.681681, 0.393007, 0.617135,
		35.118004, 29.194712, 51.808704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903118, 28.833004, 51.963043>,  <35.595181, 28.919605, 51.376713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903118, 28.833004, 51.963043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521175, 28.899384, 52.061607>,  <35.292011, 28.939211, 52.120747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.521175, 28.899384, 52.061607>,  <35.903118, 28.833004, 51.963043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521175, 28.899384, 52.061607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030446, -0.770410, 0.636821,
		0.295516, 0.615573, 0.730576,
		-0.954853, 0.165947, 0.246410,
		35.234718, 28.949167, 52.135529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909130, 28.980099, 52.732868>,  <35.903118, 28.833004, 51.963043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909130, 28.980099, 52.732868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522461, 28.900494, 52.668457>,  <35.290459, 28.852730, 52.629810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522461, 28.900494, 52.668457>,  <35.909130, 28.980099, 52.732868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522461, 28.900494, 52.668457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003673, -0.618172, 0.786034,
		-0.255976, 0.760432, 0.596842,
		-0.966676, -0.199014, -0.161030,
		35.232456, 28.840790, 52.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549332, 29.125509, 53.330669>,  <35.909130, 28.980099, 52.732868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549332, 29.125509, 53.330669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321514, 28.873169, 53.119900>,  <35.184822, 28.721766, 52.993439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.321514, 28.873169, 53.119900>,  <35.549332, 29.125509, 53.330669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321514, 28.873169, 53.119900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108419, -0.577795, 0.808949,
		-0.814779, 0.517860, 0.260683,
		-0.569544, -0.630852, -0.526922,
		35.150650, 28.683914, 52.961823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063568, 29.018986, 53.867062>,  <35.549332, 29.125509, 53.330669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063568, 29.018986, 53.867062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.061150, 28.732634, 53.587784>,  <35.059700, 28.560823, 53.420216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.061150, 28.732634, 53.587784>,  <35.063568, 29.018986, 53.867062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061150, 28.732634, 53.587784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075204, -0.695908, 0.714182,
		-0.997150, 0.056823, -0.049632,
		-0.006043, -0.715879, -0.698198,
		35.059338, 28.517870, 53.378323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547245, 28.640684, 54.044819>,  <35.063568, 29.018986, 53.867062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547245, 28.640684, 54.044819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.793903, 28.392530, 53.850967>,  <34.941898, 28.243639, 53.734657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.793903, 28.392530, 53.850967>,  <34.547245, 28.640684, 54.044819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793903, 28.392530, 53.850967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139977, -0.692208, 0.707993,
		-0.774693, -0.368746, -0.513689,
		0.616650, -0.620382, -0.484633,
		34.978897, 28.206415, 53.705578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284367, 28.031000, 54.218880>,  <34.547245, 28.640684, 54.044819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284367, 28.031000, 54.218880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628555, 27.900341, 54.062473>,  <34.835068, 27.821945, 53.968628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628555, 27.900341, 54.062473>,  <34.284367, 28.031000, 54.218880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628555, 27.900341, 54.062473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058200, -0.825442, 0.561479,
		-0.506169, -0.460377, -0.729277,
		0.860468, -0.326647, -0.391019,
		34.886696, 27.802347, 53.945168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.994534, 36.964035, 40.473221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204964, 36.678944, 40.287636>,  <36.331223, 36.507889, 40.176285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204964, 36.678944, 40.287636>,  <35.994534, 36.964035, 40.473221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204964, 36.678944, 40.287636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541820, -0.701399, 0.463110,
		-0.655494, 0.007752, -0.755161,
		0.526079, -0.712727, -0.463963,
		36.362785, 36.465126, 40.148445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481258, 36.487217, 40.337975>,  <35.994534, 36.964035, 40.473221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481258, 36.487217, 40.337975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853783, 36.347832, 40.380379>,  <36.077297, 36.264202, 40.405823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853783, 36.347832, 40.380379>,  <35.481258, 36.487217, 40.337975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853783, 36.347832, 40.380379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314718, -0.623359, 0.715804,
		-0.183346, -0.699999, -0.690207,
		0.931309, -0.348460, 0.106012,
		36.133175, 36.243294, 40.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499142, 35.728279, 40.335503>,  <35.481258, 36.487217, 40.337975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499142, 35.728279, 40.335503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836529, 35.817162, 40.531128>,  <36.038963, 35.870491, 40.648502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836529, 35.817162, 40.531128>,  <35.499142, 35.728279, 40.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836529, 35.817162, 40.531128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230965, -0.671965, 0.703646,
		0.484984, -0.706462, -0.515463,
		0.843472, 0.222203, 0.489060,
		36.089569, 35.883823, 40.677845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714035, 35.128803, 40.591053>,  <35.499142, 35.728279, 40.335503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714035, 35.128803, 40.591053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914494, 35.369431, 40.839882>,  <36.034767, 35.513805, 40.989178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914494, 35.369431, 40.839882>,  <35.714035, 35.128803, 40.591053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914494, 35.369431, 40.839882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038661, -0.702571, 0.710562,
		0.864499, -0.380145, -0.328834,
		0.501146, 0.601567, 0.622069,
		36.064838, 35.549900, 41.026501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100159, 34.629513, 40.956455>,  <35.714035, 35.128803, 40.591053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100159, 34.629513, 40.956455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132858, 34.976185, 41.153301>,  <36.152477, 35.184189, 41.271408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132858, 34.976185, 41.153301>,  <36.100159, 34.629513, 40.956455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132858, 34.976185, 41.153301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082615, -0.486180, 0.869945,
		0.993223, -0.111776, 0.031855,
		0.081751, 0.866680, 0.492120,
		36.157383, 35.236191, 41.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714306, 34.528500, 41.508224>,  <36.100159, 34.629513, 40.956455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714306, 34.528500, 41.508224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473499, 34.827053, 41.621700>,  <36.329014, 35.006187, 41.689785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473499, 34.827053, 41.621700>,  <36.714306, 34.528500, 41.508224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473499, 34.827053, 41.621700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065353, -0.400156, 0.914114,
		0.795803, 0.531773, 0.289680,
		-0.602018, 0.746386, 0.283692,
		36.292892, 35.050968, 41.706806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937267, 34.727604, 42.098438>,  <36.714306, 34.528500, 41.508224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937267, 34.727604, 42.098438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558788, 34.856968, 42.102623>,  <36.331699, 34.934586, 42.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558788, 34.856968, 42.102623>,  <36.937267, 34.727604, 42.098438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558788, 34.856968, 42.102623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127530, -0.402446, 0.906517,
		0.297386, 0.856414, 0.422040,
		-0.946202, 0.323409, 0.010463,
		36.274929, 34.953991, 42.105762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845631, 35.093769, 42.678143>,  <36.937267, 34.727604, 42.098438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845631, 35.093769, 42.678143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461086, 35.013245, 42.603035>,  <36.230358, 34.964931, 42.557968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461086, 35.013245, 42.603035>,  <36.845631, 35.093769, 42.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461086, 35.013245, 42.603035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136032, -0.245602, 0.959778,
		-0.239332, 0.948237, 0.208728,
		-0.961361, -0.201312, -0.187771,
		36.172676, 34.952850, 42.546703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559818, 35.218765, 43.343010>,  <36.845631, 35.093769, 42.678143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559818, 35.218765, 43.343010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264030, 35.035500, 43.145721>,  <36.086555, 34.925541, 43.027348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264030, 35.035500, 43.145721>,  <36.559818, 35.218765, 43.343010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264030, 35.035500, 43.145721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280825, -0.455927, 0.844552,
		-0.611813, 0.763033, 0.208484,
		-0.739474, -0.458161, -0.493221,
		36.042187, 34.898052, 42.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902489, 35.458698, 43.640572>,  <36.559818, 35.218765, 43.343010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902489, 35.458698, 43.640572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887276, 35.098793, 43.466686>,  <35.878147, 34.882851, 43.362354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887276, 35.098793, 43.466686>,  <35.902489, 35.458698, 43.640572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887276, 35.098793, 43.466686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350723, -0.395331, 0.848945,
		-0.935707, 0.184752, -0.300532,
		-0.038034, -0.899767, -0.434711,
		35.875866, 34.828861, 43.336273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159248, 35.319134, 43.781361>,  <35.902489, 35.458698, 43.640572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159248, 35.319134, 43.781361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325569, 34.968216, 43.685474>,  <35.425362, 34.757668, 43.627941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325569, 34.968216, 43.685474>,  <35.159248, 35.319134, 43.781361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325569, 34.968216, 43.685474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407544, -0.415380, 0.813245,
		-0.813027, -0.240456, -0.530252,
		0.415806, -0.877291, -0.239719,
		35.450310, 34.705029, 43.613560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573483, 34.774590, 43.860737>,  <35.159248, 35.319134, 43.781361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573483, 34.774590, 43.860737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943558, 34.634655, 43.919586>,  <35.165604, 34.550694, 43.954895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943558, 34.634655, 43.919586>,  <34.573483, 34.774590, 43.860737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943558, 34.634655, 43.919586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275171, -0.351366, 0.894887,
		-0.261370, -0.868421, -0.421344,
		0.925185, -0.349838, 0.147127,
		35.221111, 34.529701, 43.963722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323605, 34.383312, 43.158455>,  <34.573483, 34.774590, 43.860737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323605, 34.383312, 43.158455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010094, 34.156853, 43.260574>,  <33.821987, 34.020977, 43.321846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010094, 34.156853, 43.260574>,  <34.323605, 34.383312, 43.158455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010094, 34.156853, 43.260574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293069, -0.025258, -0.955758,
		0.547549, -0.823916, -0.146124,
		-0.783773, -0.566149, 0.255294,
		33.774963, 33.987007, 43.337162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302258, 33.815384, 42.731499>,  <34.323605, 34.383312, 43.158455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302258, 33.815384, 42.731499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939075, 33.919640, 42.862766>,  <33.721169, 33.982193, 42.941525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939075, 33.919640, 42.862766>,  <34.302258, 33.815384, 42.731499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939075, 33.919640, 42.862766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334255, 0.021944, -0.942227,
		-0.252783, -0.965187, 0.067196,
		-0.907951, 0.260639, 0.328166,
		33.666691, 33.997829, 42.961216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972057, 33.762417, 42.106640>,  <34.302258, 33.815384, 42.731499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972057, 33.762417, 42.106640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690353, 33.918484, 42.343884>,  <33.521332, 34.012123, 42.486229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690353, 33.918484, 42.343884>,  <33.972057, 33.762417, 42.106640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690353, 33.918484, 42.343884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591770, 0.138912, -0.794048,
		-0.392200, -0.910206, 0.133057,
		-0.704264, 0.390164, 0.593114,
		33.479073, 34.035534, 42.521816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434647, 33.322071, 42.035889>,  <33.972057, 33.762417, 42.106640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434647, 33.322071, 42.035889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303822, 33.689068, 42.126434>,  <33.225327, 33.909264, 42.180763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303822, 33.689068, 42.126434>,  <33.434647, 33.322071, 42.035889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303822, 33.689068, 42.126434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333663, 0.111992, -0.936016,
		-0.884136, -0.381669, 0.269503,
		-0.327066, 0.917489, 0.226365,
		33.205700, 33.964314, 42.194344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812244, 33.390259, 41.728603>,  <33.434647, 33.322071, 42.035889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812244, 33.390259, 41.728603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900280, 33.769112, 41.821987>,  <32.953102, 33.996422, 41.878017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900280, 33.769112, 41.821987>,  <32.812244, 33.390259, 41.728603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900280, 33.769112, 41.821987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395433, 0.305410, -0.866231,
		-0.891736, 0.098331, 0.441745,
		0.220091, 0.947130, 0.233462,
		32.966309, 34.053249, 41.892025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242413, 33.701111, 41.796841>,  <32.812244, 33.390259, 41.728603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242413, 33.701111, 41.796841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494434, 34.000973, 41.715801>,  <32.645649, 34.180889, 41.667179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494434, 34.000973, 41.715801>,  <32.242413, 33.701111, 41.796841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494434, 34.000973, 41.715801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548155, 0.244543, -0.799828,
		-0.550053, 0.614990, 0.565003,
		0.630054, 0.749657, -0.202598,
		32.683449, 34.225868, 41.655022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741915, 34.384563, 41.697128>,  <32.242413, 33.701111, 41.796841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741915, 34.384563, 41.697128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099850, 34.405113, 41.519756>,  <32.314610, 34.417442, 41.413334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099850, 34.405113, 41.519756>,  <31.741915, 34.384563, 41.697128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099850, 34.405113, 41.519756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426935, 0.388595, -0.816530,
		0.130367, 0.919976, 0.369661,
		0.894836, 0.051372, -0.443430,
		32.368301, 34.420525, 41.386726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550638, 34.894798, 41.321507>,  <31.741915, 34.384563, 41.697128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550638, 34.894798, 41.321507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869772, 34.757156, 41.123493>,  <32.061253, 34.674572, 41.004684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869772, 34.757156, 41.123493>,  <31.550638, 34.894798, 41.321507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869772, 34.757156, 41.123493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423696, 0.264104, -0.866448,
		0.428886, 0.901023, 0.064916,
		0.797834, -0.344102, -0.495030,
		32.109123, 34.653927, 40.974983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706617, 35.325855, 40.848476>,  <31.550638, 34.894798, 41.321507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706617, 35.325855, 40.848476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895090, 35.004910, 40.701946>,  <32.008175, 34.812340, 40.614029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895090, 35.004910, 40.701946>,  <31.706617, 35.325855, 40.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895090, 35.004910, 40.701946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347417, 0.212921, -0.913217,
		0.810735, 0.557559, -0.178432,
		0.471180, -0.802367, -0.366328,
		32.036446, 34.764198, 40.592049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157536, 35.473644, 40.227478>,  <31.706617, 35.325855, 40.848476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157536, 35.473644, 40.227478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112679, 35.076698, 40.206966>,  <32.085766, 34.838531, 40.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112679, 35.076698, 40.206966>,  <32.157536, 35.473644, 40.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112679, 35.076698, 40.206966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219088, 0.075027, -0.972816,
		0.969239, -0.097860, -0.225830,
		-0.112143, -0.992368, -0.051279,
		32.079037, 34.778988, 40.191582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512764, 35.288685, 39.690903>,  <32.157536, 35.473644, 40.227478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512764, 35.288685, 39.690903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290760, 34.958527, 39.732273>,  <32.157558, 34.760433, 39.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290760, 34.958527, 39.732273>,  <32.512764, 35.288685, 39.690903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290760, 34.958527, 39.732273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245175, 0.043504, -0.968502,
		0.794895, -0.562881, -0.226510,
		-0.555006, -0.825392, 0.103423,
		32.124260, 34.710911, 39.763302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611053, 34.884594, 39.117813>,  <32.512764, 35.288685, 39.690903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611053, 34.884594, 39.117813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251678, 34.746536, 39.226395>,  <32.036053, 34.663704, 39.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251678, 34.746536, 39.226395>,  <32.611053, 34.884594, 39.117813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251678, 34.746536, 39.226395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289235, 0.000028, -0.957258,
		0.330381, -0.938551, -0.099851,
		-0.898438, -0.345140, 0.271453,
		31.982147, 34.642994, 39.307831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577309, 34.293964, 38.730442>,  <32.611053, 34.884594, 39.117813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577309, 34.293964, 38.730442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209812, 34.406239, 38.841537>,  <31.989315, 34.473602, 38.908195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209812, 34.406239, 38.841537>,  <32.577309, 34.293964, 38.730442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209812, 34.406239, 38.841537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284512, 0.017195, -0.958518,
		-0.273816, -0.959646, 0.064061,
		-0.918737, 0.280684, 0.277740,
		31.934191, 34.490444, 38.924858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027637, 33.809467, 38.473976>,  <32.577309, 34.293964, 38.730442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027637, 33.809467, 38.473976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910610, 34.189774, 38.514874>,  <31.840393, 34.417957, 38.539413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910610, 34.189774, 38.514874>,  <32.027637, 33.809467, 38.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910610, 34.189774, 38.514874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392540, -0.021912, -0.919474,
		-0.871960, -0.309146, 0.379623,
		-0.292570, 0.950762, 0.102246,
		31.822840, 34.475002, 38.545547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773998, 33.490673, 37.862988>,  <32.027637, 33.809467, 38.473976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773998, 33.490673, 37.862988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399033, 33.367794, 37.797398>,  <31.174053, 33.294067, 37.758045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399033, 33.367794, 37.797398>,  <31.773998, 33.490673, 37.862988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399033, 33.367794, 37.797398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268546, -0.337998, -0.902020,
		0.221679, -0.889598, 0.399341,
		-0.937412, -0.307200, -0.163971,
		31.117809, 33.275635, 37.748207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824854, 32.719135, 37.731525>,  <31.773998, 33.490673, 37.862988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824854, 32.719135, 37.731525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536074, 32.909081, 37.530212>,  <31.362806, 33.023048, 37.409424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536074, 32.909081, 37.530212>,  <31.824854, 32.719135, 37.731525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536074, 32.909081, 37.530212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294008, -0.447906, -0.844357,
		-0.626379, -0.757552, 0.183751,
		-0.721948, 0.474864, -0.503285,
		31.319489, 33.051540, 37.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377537, 32.225555, 37.522808>,  <31.824854, 32.719135, 37.731525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377537, 32.225555, 37.522808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438717, 32.553841, 37.302612>,  <31.475424, 32.750813, 37.170494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438717, 32.553841, 37.302612>,  <31.377537, 32.225555, 37.522808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438717, 32.553841, 37.302612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229564, -0.571314, -0.787973,
		-0.961201, -0.005853, -0.275788,
		0.152950, 0.820711, -0.550491,
		31.484602, 32.800053, 37.137466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843170, 32.087624, 38.218376>,  <31.377537, 32.225555, 37.522808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843170, 32.087624, 38.218376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241009, 32.126213, 38.203060>,  <32.479713, 32.149368, 38.193871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241009, 32.126213, 38.203060>,  <31.843170, 32.087624, 38.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241009, 32.126213, 38.203060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097218, -0.736602, 0.669303,
		0.036369, -0.669410, -0.742002,
		0.994598, 0.096478, -0.038289,
		32.539387, 32.155155, 38.191574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216507, 31.482004, 38.031754>,  <31.843170, 32.087624, 38.218376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216507, 31.482004, 38.031754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466747, 31.681776, 38.271488>,  <32.616890, 31.801640, 38.415329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466747, 31.681776, 38.271488>,  <32.216507, 31.482004, 38.031754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466747, 31.681776, 38.271488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004834, -0.770698, 0.637183,
		0.780131, -0.395723, -0.484561,
		0.625597, 0.499428, 0.599332,
		32.654427, 31.831604, 38.451286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747250, 30.981770, 38.161999>,  <32.216507, 31.482004, 38.031754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747250, 30.981770, 38.161999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751163, 31.264345, 38.445084>,  <32.753513, 31.433889, 38.614933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751163, 31.264345, 38.445084>,  <32.747250, 30.981770, 38.161999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751163, 31.264345, 38.445084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025377, -0.707689, 0.706068,
		0.999630, 0.011052, -0.024852,
		0.009784, 0.706437, 0.707708,
		32.754097, 31.476276, 38.657394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231815, 30.852276, 38.609970>,  <32.747250, 30.981770, 38.161999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231815, 30.852276, 38.609970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028374, 31.117052, 38.830208>,  <32.906307, 31.275917, 38.962349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028374, 31.117052, 38.830208>,  <33.231815, 30.852276, 38.609970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028374, 31.117052, 38.830208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246803, -0.500561, 0.829776,
		0.824867, 0.557919, 0.091220,
		-0.508608, 0.661941, 0.550592,
		32.875790, 31.315634, 38.995384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572639, 30.908751, 39.166138>,  <33.231815, 30.852276, 38.609970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572639, 30.908751, 39.166138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214523, 31.052511, 39.271423>,  <32.999653, 31.138767, 39.334595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214523, 31.052511, 39.271423>,  <33.572639, 30.908751, 39.166138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214523, 31.052511, 39.271423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015566, -0.615736, 0.787799,
		0.445205, 0.701214, 0.556859,
		-0.895293, 0.359400, 0.263214,
		32.945934, 31.160332, 39.350388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610107, 30.954271, 39.870125>,  <33.572639, 30.908751, 39.166138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610107, 30.954271, 39.870125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219227, 30.941395, 39.786190>,  <32.984695, 30.933668, 39.735828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219227, 30.941395, 39.786190>,  <33.610107, 30.954271, 39.870125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219227, 30.941395, 39.786190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131153, -0.685693, 0.715977,
		-0.166933, 0.727178, 0.665841,
		-0.977206, -0.032193, -0.209837,
		32.926064, 30.931736, 39.723240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329239, 31.064688, 40.499134>,  <33.610107, 30.954271, 39.870125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329239, 31.064688, 40.499134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 30.914125, 40.326973>,  <32.804176, 30.823788, 40.223679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 30.914125, 40.326973>,  <33.329239, 31.064688, 40.499134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001076, 30.914125, 40.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225174, -0.479217, 0.848320,
		-0.525566, 0.792887, 0.308399,
		-0.820412, -0.376405, -0.430398,
		32.754951, 30.801205, 40.197853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658443, 31.157848, 40.944580>,  <33.329239, 31.064688, 40.499134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658443, 31.157848, 40.944580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553726, 30.868366, 40.689171>,  <32.490894, 30.694677, 40.535923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553726, 30.868366, 40.689171>,  <32.658443, 31.157848, 40.944580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553726, 30.868366, 40.689171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201025, -0.606200, 0.769487,
		-0.943956, 0.329807, 0.013218,
		-0.261795, -0.723705, -0.638526,
		32.475189, 30.651255, 40.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066048, 30.769768, 41.304428>,  <32.658443, 31.157848, 40.944580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066048, 30.769768, 41.304428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197567, 30.502939, 41.037025>,  <32.276478, 30.342842, 40.876583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197567, 30.502939, 41.037025>,  <32.066048, 30.769768, 41.304428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197567, 30.502939, 41.037025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082781, -0.725501, 0.683224,
		-0.940764, -0.169306, -0.293767,
		0.328802, -0.667071, -0.668509,
		32.296207, 30.302818, 40.836472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482418, 30.322069, 41.156525>,  <32.066048, 30.769768, 41.304428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482418, 30.322069, 41.156525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825277, 30.133539, 41.073437>,  <32.030994, 30.020420, 41.023586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825277, 30.133539, 41.073437>,  <31.482418, 30.322069, 41.156525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825277, 30.133539, 41.073437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149872, -0.614057, 0.774902,
		-0.492780, -0.633077, -0.596977,
		0.857150, -0.471326, -0.207715,
		32.082420, 29.992142, 41.011124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346861, 29.653072, 41.271812>,  <31.482418, 30.322069, 41.156525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346861, 29.653072, 41.271812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742758, 29.699184, 41.305569>,  <31.980295, 29.726851, 41.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742758, 29.699184, 41.305569>,  <31.346861, 29.653072, 41.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742758, 29.699184, 41.305569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013882, -0.510279, 0.859897,
		0.142189, -0.852248, -0.503445,
		0.989743, 0.115279, 0.084387,
		32.039680, 29.733768, 41.330883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578955, 29.055147, 41.599083>,  <31.346861, 29.653072, 41.271812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578955, 29.055147, 41.599083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883951, 29.304525, 41.668278>,  <32.066948, 29.454151, 41.709793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883951, 29.304525, 41.668278>,  <31.578955, 29.055147, 41.599083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883951, 29.304525, 41.668278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152572, -0.433090, 0.888344,
		0.628752, -0.650961, -0.425347,
		0.762491, 0.623444, 0.172989,
		32.112698, 29.491558, 41.720173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109867, 28.708807, 41.980610>,  <31.578955, 29.055147, 41.599083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109867, 28.708807, 41.980610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249958, 29.077814, 42.045479>,  <32.334015, 29.299217, 42.084400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249958, 29.077814, 42.045479>,  <32.109867, 28.708807, 41.980610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249958, 29.077814, 42.045479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301381, -0.274923, 0.913010,
		0.886853, -0.270887, -0.374316,
		0.350231, 0.922517, 0.162176,
		32.355026, 29.354568, 42.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843071, 28.632988, 42.320297>,  <32.109867, 28.708807, 41.980610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843071, 28.632988, 42.320297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698036, 28.997124, 42.400112>,  <32.611015, 29.215605, 42.448002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698036, 28.997124, 42.400112>,  <32.843071, 28.632988, 42.320297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698036, 28.997124, 42.400112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298092, -0.089578, 0.950325,
		0.882991, 0.404054, -0.238885,
		-0.362584, 0.910338, 0.199542,
		32.589260, 29.270226, 42.459976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284779, 29.063505, 42.689899>,  <32.843071, 28.632988, 42.320297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284779, 29.063505, 42.689899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975693, 29.304558, 42.769642>,  <32.790241, 29.449190, 42.817490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975693, 29.304558, 42.769642>,  <33.284779, 29.063505, 42.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975693, 29.304558, 42.769642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393114, 0.207752, 0.895712,
		0.498367, 0.770503, -0.397436,
		-0.772717, 0.602631, 0.199359,
		32.743877, 29.485348, 42.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630707, 29.655378, 42.999241>,  <33.284779, 29.063505, 42.689899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630707, 29.655378, 42.999241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247421, 29.603714, 43.101337>,  <33.017452, 29.572716, 43.162594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247421, 29.603714, 43.101337>,  <33.630707, 29.655378, 42.999241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247421, 29.603714, 43.101337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259747, -0.019037, 0.965489,
		-0.119846, 0.991441, 0.051791,
		-0.958211, -0.129163, 0.255242,
		32.959957, 29.564964, 43.177910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567520, 29.948153, 43.687214>,  <33.630707, 29.655378, 42.999241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567520, 29.948153, 43.687214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227940, 29.736814, 43.691673>,  <33.024189, 29.610012, 43.694347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227940, 29.736814, 43.691673>,  <33.567520, 29.948153, 43.687214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227940, 29.736814, 43.691673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220892, -0.335615, 0.915734,
		-0.480085, 0.779880, 0.401630,
		-0.848956, -0.528347, 0.011146,
		32.973251, 29.578310, 43.695019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326279, 30.190384, 44.229027>,  <33.567520, 29.948153, 43.687214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326279, 30.190384, 44.229027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180904, 29.822628, 44.168846>,  <33.093681, 29.601974, 44.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180904, 29.822628, 44.168846>,  <33.326279, 30.190384, 44.229027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180904, 29.822628, 44.168846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278110, -0.261203, 0.924352,
		-0.889141, 0.294097, 0.350622,
		-0.363433, -0.919391, -0.150455,
		33.071873, 29.546810, 44.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998528, 30.086004, 44.841991>,  <33.326279, 30.190384, 44.229027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998528, 30.086004, 44.841991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025558, 29.716078, 44.692245>,  <33.041779, 29.494122, 44.602398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025558, 29.716078, 44.692245>,  <32.998528, 30.086004, 44.841991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025558, 29.716078, 44.692245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001483, -0.375126, 0.926973,
		-0.997713, -0.063201, -0.023980,
		0.067581, -0.924817, -0.374362,
		33.045834, 29.438633, 44.579937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538612, 29.725502, 45.194546>,  <32.998528, 30.086004, 44.841991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538612, 29.725502, 45.194546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777504, 29.436117, 45.056023>,  <32.920837, 29.262487, 44.972908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777504, 29.436117, 45.056023>,  <32.538612, 29.725502, 45.194546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777504, 29.436117, 45.056023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018965, -0.418905, 0.907832,
		-0.801849, -0.548748, -0.236461,
		0.597225, -0.723460, -0.346305,
		32.956673, 29.219080, 44.952129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226692, 29.176851, 45.483158>,  <32.538612, 29.725502, 45.194546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226692, 29.176851, 45.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595245, 29.059853, 45.380783>,  <32.816376, 28.989653, 45.319359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595245, 29.059853, 45.380783>,  <32.226692, 29.176851, 45.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595245, 29.059853, 45.380783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126517, -0.396928, 0.909088,
		-0.367489, -0.869998, -0.328717,
		0.921382, -0.292492, -0.255936,
		32.871658, 28.972103, 45.304001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248363, 28.514666, 45.738075>,  <32.226692, 29.176851, 45.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248363, 28.514666, 45.738075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636417, 28.603563, 45.699200>,  <32.869251, 28.656902, 45.675873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636417, 28.603563, 45.699200>,  <32.248363, 28.514666, 45.738075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636417, 28.603563, 45.699200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160764, -0.289061, 0.943715,
		0.181642, -0.931156, -0.316157,
		0.970134, 0.222245, -0.097191,
		32.927456, 28.670237, 45.670044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583172, 27.943243, 46.020607>,  <32.248363, 28.514666, 45.738075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583172, 27.943243, 46.020607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843151, 28.245672, 46.051392>,  <32.999138, 28.427130, 46.069862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843151, 28.245672, 46.051392>,  <32.583172, 27.943243, 46.020607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843151, 28.245672, 46.051392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187725, -0.257846, 0.947774,
		0.736431, -0.601554, -0.309520,
		0.649945, 0.756074, 0.076959,
		33.038136, 28.472494, 46.074478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189953, 27.648344, 46.084469>,  <32.583172, 27.943243, 46.020607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189953, 27.648344, 46.084469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234905, 28.019325, 46.227131>,  <33.261879, 28.241915, 46.312729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234905, 28.019325, 46.227131>,  <33.189953, 27.648344, 46.084469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234905, 28.019325, 46.227131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179375, -0.371964, 0.910751,
		0.977340, -0.038381, -0.208166,
		0.112385, 0.927453, 0.356651,
		33.268620, 28.297562, 46.334126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882278, 27.599533, 46.536530>,  <33.189953, 27.648344, 46.084469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882278, 27.599533, 46.536530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572342, 27.836775, 46.624031>,  <33.386379, 27.979120, 46.676533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572342, 27.836775, 46.624031>,  <33.882278, 27.599533, 46.536530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572342, 27.836775, 46.624031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006547, -0.338501, 0.940943,
		0.632126, 0.730511, 0.258400,
		-0.774838, 0.593103, 0.218758,
		33.339890, 28.014706, 46.689659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457512, 27.788874, 47.040516>,  <33.882278, 27.599533, 46.536530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457512, 27.788874, 47.040516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717381, 27.484789, 47.039154>,  <34.873302, 27.302338, 47.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717381, 27.484789, 47.039154>,  <34.457512, 27.788874, 47.040516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717381, 27.484789, 47.039154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114365, 0.102160, -0.988172,
		0.751567, 0.641594, 0.153311,
		0.649668, -0.760211, -0.003405,
		34.912281, 27.256725, 47.038132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103931, 28.058821, 46.771374>,  <34.457512, 27.788874, 47.040516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103931, 28.058821, 46.771374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110035, 27.661333, 46.727032>,  <35.113697, 27.422840, 46.700428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110035, 27.661333, 46.727032>,  <35.103931, 28.058821, 46.771374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110035, 27.661333, 46.727032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348364, 0.109205, -0.930976,
		0.937235, -0.024413, 0.347842,
		0.015258, -0.993719, -0.110856,
		35.114613, 27.363216, 46.693775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722263, 27.921122, 46.460163>,  <35.103931, 28.058821, 46.771374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722263, 27.921122, 46.460163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506615, 27.587770, 46.411461>,  <35.377224, 27.387760, 46.382240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506615, 27.587770, 46.411461>,  <35.722263, 27.921122, 46.460163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506615, 27.587770, 46.411461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305164, -0.058549, -0.950498,
		0.784997, -0.549592, 0.285882,
		-0.539124, -0.833379, -0.121755,
		35.344879, 27.337757, 46.374935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239300, 27.415604, 46.235573>,  <35.722263, 27.921122, 46.460163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239300, 27.415604, 46.235573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863846, 27.322824, 46.133457>,  <35.638573, 27.267157, 46.072189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863846, 27.322824, 46.133457>,  <36.239300, 27.415604, 46.235573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863846, 27.322824, 46.133457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276904, -0.065428, -0.958667,
		0.205658, -0.970525, 0.125641,
		-0.938632, -0.231948, -0.255287,
		35.582256, 27.253241, 46.056870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231819, 26.733355, 45.935360>,  <36.239300, 27.415604, 46.235573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231819, 26.733355, 45.935360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908234, 26.905588, 45.775272>,  <35.714081, 27.008928, 45.679218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908234, 26.905588, 45.775272>,  <36.231819, 26.733355, 45.935360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908234, 26.905588, 45.775272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261446, -0.346247, -0.900977,
		-0.526519, -0.833494, 0.167528,
		-0.808964, 0.430582, -0.400219,
		35.665543, 27.034763, 45.655205>
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
