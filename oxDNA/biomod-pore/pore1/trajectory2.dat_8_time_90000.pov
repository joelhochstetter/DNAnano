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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<46.254951, 44.647148, 45.805119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903473, 44.756752, 45.961483>,  <45.692585, 44.822514, 46.055302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903473, 44.756752, 45.961483>,  <46.254951, 44.647148, 45.805119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903473, 44.756752, 45.961483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139368, -0.635940, 0.759050,
		0.456582, 0.721455, 0.520611,
		-0.878698, 0.274012, 0.390907,
		45.639862, 44.838955, 46.078754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424847, 44.806107, 46.438259>,  <46.254951, 44.647148, 45.805119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424847, 44.806107, 46.438259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041313, 44.692574, 46.434601>,  <45.811195, 44.624454, 46.432407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041313, 44.692574, 46.434601>,  <46.424847, 44.806107, 46.438259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041313, 44.692574, 46.434601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198084, -0.691536, 0.694652,
		-0.203486, 0.664243, 0.719288,
		-0.958831, -0.283831, -0.009142,
		45.753662, 44.607426, 46.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273582, 44.887791, 47.051155>,  <46.424847, 44.806107, 46.438259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273582, 44.887791, 47.051155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982376, 44.645493, 46.922733>,  <45.807652, 44.500114, 46.845680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.982376, 44.645493, 46.922733>,  <46.273582, 44.887791, 47.051155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982376, 44.645493, 46.922733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044492, -0.509061, 0.859580,
		-0.684117, 0.611503, 0.397554,
		-0.728014, -0.605741, -0.321050,
		45.763973, 44.463772, 46.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849628, 44.867527, 47.642487>,  <46.273582, 44.887791, 47.051155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849628, 44.867527, 47.642487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752434, 44.551689, 47.417103>,  <45.694115, 44.362186, 47.281872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.752434, 44.551689, 47.417103>,  <45.849628, 44.867527, 47.642487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.752434, 44.551689, 47.417103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056706, -0.568315, 0.820854,
		-0.968370, 0.231411, 0.093320,
		-0.242990, -0.789599, -0.563462,
		45.679539, 44.314808, 47.248066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278660, 44.587063, 48.017136>,  <45.849628, 44.867527, 47.642487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278660, 44.587063, 48.017136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425758, 44.307617, 47.771633>,  <45.514019, 44.139950, 47.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.425758, 44.307617, 47.771633>,  <45.278660, 44.587063, 48.017136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425758, 44.307617, 47.771633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145700, -0.695140, 0.703954,
		-0.918440, -0.169455, -0.357426,
		0.367750, -0.698617, -0.613755,
		45.536083, 44.098034, 47.587505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860458, 44.064117, 48.102211>,  <45.278660, 44.587063, 48.017136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860458, 44.064117, 48.102211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149498, 43.847847, 47.929924>,  <45.322922, 43.718086, 47.826550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149498, 43.847847, 47.929924>,  <44.860458, 44.064117, 48.102211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149498, 43.847847, 47.929924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204062, -0.762163, 0.614383,
		-0.660461, -0.356059, -0.661070,
		0.722599, -0.540676, -0.430720,
		45.366276, 43.685646, 47.800709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502430, 43.418106, 47.891163>,  <44.860458, 44.064117, 48.102211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502430, 43.418106, 47.891163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899376, 43.394257, 47.934357>,  <45.137543, 43.379948, 47.960274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899376, 43.394257, 47.934357>,  <44.502430, 43.418106, 47.891163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899376, 43.394257, 47.934357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119398, -0.684260, 0.719397,
		0.030996, -0.726796, -0.686153,
		0.992362, -0.059627, 0.107987,
		45.197086, 43.376369, 47.966751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730400, 42.672054, 47.940834>,  <44.502430, 43.418106, 47.891163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730400, 42.672054, 47.940834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039200, 42.864754, 48.106697>,  <45.224480, 42.980373, 48.206215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039200, 42.864754, 48.106697>,  <44.730400, 42.672054, 47.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039200, 42.864754, 48.106697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089784, -0.728470, 0.679169,
		0.629252, -0.487087, -0.605630,
		0.771998, 0.481744, 0.414659,
		45.270798, 43.009277, 48.231094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068268, 42.160309, 48.213848>,  <44.730400, 42.672054, 47.940834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068268, 42.160309, 48.213848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245766, 42.469986, 48.394386>,  <45.352264, 42.655792, 48.502708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245766, 42.469986, 48.394386>,  <45.068268, 42.160309, 48.213848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245766, 42.469986, 48.394386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150488, -0.560867, 0.814114,
		0.883427, -0.293339, -0.365390,
		0.443747, 0.774196, 0.451341,
		45.378891, 42.702244, 48.529789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680454, 41.897594, 48.567493>,  <45.068268, 42.160309, 48.213848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680454, 41.897594, 48.567493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626923, 42.250191, 48.748627>,  <45.594803, 42.461750, 48.857307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626923, 42.250191, 48.748627>,  <45.680454, 41.897594, 48.567493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626923, 42.250191, 48.748627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400954, -0.369711, 0.838183,
		0.906270, 0.293738, -0.303961,
		-0.133829, 0.881494, 0.452833,
		45.586773, 42.514641, 48.884476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191879, 41.871487, 49.011501>,  <45.680454, 41.897594, 48.567493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191879, 41.871487, 49.011501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932655, 42.139534, 49.156258>,  <45.777122, 42.300362, 49.243111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932655, 42.139534, 49.156258>,  <46.191879, 41.871487, 49.011501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932655, 42.139534, 49.156258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128791, -0.371902, 0.919294,
		0.750620, 0.642367, 0.154710,
		-0.648061, 0.670115, 0.361888,
		45.738235, 42.340569, 49.264824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616055, 42.241032, 49.517406>,  <46.191879, 41.871487, 49.011501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616055, 42.241032, 49.517406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230469, 42.278069, 49.617168>,  <45.999119, 42.300293, 49.677025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230469, 42.278069, 49.617168>,  <46.616055, 42.241032, 49.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230469, 42.278069, 49.617168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225891, -0.210314, 0.951179,
		0.140527, 0.973239, 0.181819,
		-0.963963, 0.092595, 0.249401,
		45.941280, 42.305847, 49.691990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569199, 42.654797, 50.104382>,  <46.616055, 42.241032, 49.517406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569199, 42.654797, 50.104382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226738, 42.448120, 50.101933>,  <46.021263, 42.324116, 50.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226738, 42.448120, 50.101933>,  <46.569199, 42.654797, 50.104382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226738, 42.448120, 50.101933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162084, -0.279786, 0.946282,
		-0.490648, 0.809167, 0.323285,
		-0.856150, -0.516691, -0.006124,
		45.969894, 42.293114, 50.100094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120316, 42.937687, 50.632301>,  <46.569199, 42.654797, 50.104382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120316, 42.937687, 50.632301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973465, 42.573189, 50.557625>,  <45.885353, 42.354488, 50.512817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973465, 42.573189, 50.557625>,  <46.120316, 42.937687, 50.632301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973465, 42.573189, 50.557625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085037, -0.166985, 0.982285,
		-0.926276, 0.376498, -0.016185,
		-0.367126, -0.911244, -0.186690,
		45.863327, 42.299816, 50.501617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404472, 42.857243, 50.971340>,  <46.120316, 42.937687, 50.632301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404472, 42.857243, 50.971340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543930, 42.485413, 50.923450>,  <45.627605, 42.262314, 50.894718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543930, 42.485413, 50.923450>,  <45.404472, 42.857243, 50.971340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543930, 42.485413, 50.923450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168098, -0.187683, 0.967739,
		-0.922057, -0.317272, -0.221694,
		0.348645, -0.929577, -0.119722,
		45.648525, 42.206539, 50.887535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036690, 42.570175, 51.465714>,  <45.404472, 42.857243, 50.971340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036690, 42.570175, 51.465714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272526, 42.258354, 51.381157>,  <45.414028, 42.071262, 51.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272526, 42.258354, 51.381157>,  <45.036690, 42.570175, 51.465714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272526, 42.258354, 51.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087071, -0.321538, 0.942885,
		-0.802999, -0.537505, -0.257450,
		0.589586, -0.779552, -0.211394,
		45.449402, 42.024490, 51.317738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761459, 41.898094, 51.712204>,  <45.036690, 42.570175, 51.465714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761459, 41.898094, 51.712204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154762, 41.832977, 51.679451>,  <45.390743, 41.793907, 51.659801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154762, 41.832977, 51.679451>,  <44.761459, 41.898094, 51.712204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154762, 41.832977, 51.679451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011120, -0.394906, 0.918654,
		-0.181881, -0.904184, -0.386484,
		0.983258, -0.162789, -0.081880,
		45.449741, 41.784142, 51.654888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844353, 41.230774, 52.000263>,  <44.761459, 41.898094, 51.712204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844353, 41.230774, 52.000263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210487, 41.391808, 52.003853>,  <45.430168, 41.488430, 52.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210487, 41.391808, 52.003853>,  <44.844353, 41.230774, 52.000263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210487, 41.391808, 52.003853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144298, -0.348717, 0.926053,
		0.375946, -0.846357, -0.377286,
		0.915337, 0.402588, 0.008971,
		45.485088, 41.512585, 52.006546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304836, 40.695686, 52.130875>,  <44.844353, 41.230774, 52.000263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304836, 40.695686, 52.130875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490013, 41.031021, 52.246029>,  <45.601120, 41.232224, 52.315121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490013, 41.031021, 52.246029>,  <45.304836, 40.695686, 52.130875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490013, 41.031021, 52.246029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197344, -0.414112, 0.888576,
		0.864141, -0.354547, -0.357150,
		0.462942, 0.838336, 0.287884,
		45.628895, 41.282520, 52.332394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843765, 40.499977, 52.546688>,  <45.304836, 40.695686, 52.130875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843765, 40.499977, 52.546688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815361, 40.889153, 52.634647>,  <45.798321, 41.122658, 52.687424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815361, 40.889153, 52.634647>,  <45.843765, 40.499977, 52.546688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815361, 40.889153, 52.634647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119235, -0.210591, 0.970276,
		0.990324, 0.095114, -0.101054,
		-0.071006, 0.972936, 0.219894,
		45.794060, 41.181034, 52.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365311, 40.570004, 53.055603>,  <45.843765, 40.499977, 52.546688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365311, 40.570004, 53.055603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155609, 40.905365, 53.115257>,  <46.029789, 41.106583, 53.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.155609, 40.905365, 53.115257>,  <46.365311, 40.570004, 53.055603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.155609, 40.905365, 53.115257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026388, -0.191037, 0.981228,
		0.851155, 0.510475, 0.122275,
		-0.524251, 0.838404, 0.149131,
		45.998333, 41.156887, 53.159996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668221, 41.038589, 53.692577>,  <46.365311, 40.570004, 53.055603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668221, 41.038589, 53.692577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281204, 41.133278, 53.657192>,  <46.048996, 41.190090, 53.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281204, 41.133278, 53.657192>,  <46.668221, 41.038589, 53.692577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281204, 41.133278, 53.657192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134420, -0.185658, 0.973377,
		0.213998, 0.953673, 0.211453,
		-0.967541, 0.236724, -0.088462,
		45.990940, 41.204296, 53.630653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519058, 41.406296, 54.267277>,  <46.668221, 41.038589, 53.692577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519058, 41.406296, 54.267277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136368, 41.346069, 54.167671>,  <45.906754, 41.309933, 54.107910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136368, 41.346069, 54.167671>,  <46.519058, 41.406296, 54.267277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136368, 41.346069, 54.167671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245643, -0.040882, 0.968498,
		-0.156000, 0.987755, 0.002128,
		-0.956726, -0.150563, -0.249012,
		45.849350, 41.300900, 54.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101410, 41.833794, 54.705845>,  <46.519058, 41.406296, 54.267277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101410, 41.833794, 54.705845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861183, 41.547043, 54.564194>,  <45.717049, 41.374992, 54.479202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861183, 41.547043, 54.564194>,  <46.101410, 41.833794, 54.705845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861183, 41.547043, 54.564194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356971, -0.155911, 0.921012,
		-0.715464, 0.679543, -0.162269,
		-0.600568, -0.716877, -0.354126,
		45.681011, 41.331982, 54.457954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519173, 41.990150, 54.905895>,  <46.101410, 41.833794, 54.705845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519173, 41.990150, 54.905895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464996, 41.600082, 54.835804>,  <45.432491, 41.366043, 54.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464996, 41.600082, 54.835804>,  <45.519173, 41.990150, 54.905895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464996, 41.600082, 54.835804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382099, -0.111763, 0.917338,
		-0.914142, 0.191200, -0.357473,
		-0.135443, -0.975168, -0.175224,
		45.424362, 41.307533, 54.783237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881943, 41.908813, 55.078671>,  <45.519173, 41.990150, 54.905895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881943, 41.908813, 55.078671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060448, 41.551537, 55.100800>,  <45.167553, 41.337170, 55.114079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060448, 41.551537, 55.100800>,  <44.881943, 41.908813, 55.078671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060448, 41.551537, 55.100800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396046, -0.141682, 0.907234,
		-0.802494, -0.426777, -0.416972,
		0.446264, -0.893190, 0.055325,
		45.194328, 41.283581, 55.117397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380096, 41.508568, 55.359360>,  <44.881943, 41.908813, 55.078671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380096, 41.508568, 55.359360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721123, 41.318512, 55.446426>,  <44.925739, 41.204479, 55.498665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721123, 41.318512, 55.446426>,  <44.380096, 41.508568, 55.359360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721123, 41.318512, 55.446426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319237, -0.143707, 0.936715,
		-0.413790, -0.868096, -0.274202,
		0.852564, -0.475139, 0.217664,
		44.976891, 41.175972, 55.511726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156864, 40.918705, 55.677361>,  <44.380096, 41.508568, 55.359360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156864, 40.918705, 55.677361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538898, 40.928993, 55.795444>,  <44.768120, 40.935165, 55.866295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538898, 40.928993, 55.795444>,  <44.156864, 40.918705, 55.677361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538898, 40.928993, 55.795444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279935, -0.248453, 0.927312,
		0.097200, -0.968302, -0.230092,
		0.955086, 0.025724, 0.295212,
		44.825424, 40.936710, 55.884007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389000, 40.259598, 56.020882>,  <44.156864, 40.918705, 55.677361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389000, 40.259598, 56.020882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651310, 40.529289, 56.156754>,  <44.808697, 40.691105, 56.238277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651310, 40.529289, 56.156754>,  <44.389000, 40.259598, 56.020882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651310, 40.529289, 56.156754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224676, -0.255259, 0.940406,
		0.720752, -0.693010, -0.015909,
		0.655772, 0.674225, 0.339681,
		44.848042, 40.731556, 56.258659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597454, 39.963634, 56.691036>,  <44.389000, 40.259598, 56.020882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597454, 39.963634, 56.691036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700455, 40.349380, 56.715336>,  <44.762257, 40.580830, 56.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700455, 40.349380, 56.715336>,  <44.597454, 39.963634, 56.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700455, 40.349380, 56.715336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324168, 0.026991, 0.945615,
		0.910280, -0.263188, 0.319567,
		0.257500, 0.964367, 0.060748,
		44.777706, 40.638691, 56.733559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901161, 40.037548, 57.300842>,  <44.597454, 39.963634, 56.691036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901161, 40.037548, 57.300842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789207, 40.413338, 57.221786>,  <44.722034, 40.638809, 57.174355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789207, 40.413338, 57.221786>,  <44.901161, 40.037548, 57.300842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789207, 40.413338, 57.221786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534355, 0.018580, 0.845056,
		0.797577, 0.342127, 0.496810,
		-0.279886, 0.939470, -0.197637,
		44.705242, 40.695179, 57.162495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895729, 40.338375, 57.839249>,  <44.901161, 40.037548, 57.300842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895729, 40.338375, 57.839249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677422, 40.622849, 57.662003>,  <44.546436, 40.793533, 57.555656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677422, 40.622849, 57.662003>,  <44.895729, 40.338375, 57.839249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677422, 40.622849, 57.662003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470636, 0.177360, 0.864318,
		0.693282, 0.680262, 0.237913,
		-0.545767, 0.711187, -0.443116,
		44.513691, 40.836205, 57.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869202, 41.007874, 58.309109>,  <44.895729, 40.338375, 57.839249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869202, 41.007874, 58.309109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564194, 41.015526, 58.050438>,  <44.381187, 41.020119, 57.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564194, 41.015526, 58.050438>,  <44.869202, 41.007874, 58.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564194, 41.015526, 58.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606325, 0.327552, 0.724624,
		0.225685, 0.944640, -0.238164,
		-0.762520, 0.019132, -0.646682,
		44.335438, 41.021267, 57.856434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510155, 41.623203, 58.449627>,  <44.869202, 41.007874, 58.309109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510155, 41.623203, 58.449627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207932, 41.427261, 58.275650>,  <44.026600, 41.309696, 58.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207932, 41.427261, 58.275650>,  <44.510155, 41.623203, 58.449627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207932, 41.427261, 58.275650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577049, 0.183408, 0.795849,
		-0.310079, 0.852293, -0.421246,
		-0.755556, -0.489855, -0.434944,
		43.981266, 41.280304, 58.145168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932396, 42.088314, 58.428619>,  <44.510155, 41.623203, 58.449627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932396, 42.088314, 58.428619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794636, 41.714523, 58.392509>,  <43.711979, 41.490250, 58.370842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.794636, 41.714523, 58.392509>,  <43.932396, 42.088314, 58.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794636, 41.714523, 58.392509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510117, 0.105535, 0.853606,
		-0.788145, 0.340032, -0.513037,
		-0.344397, -0.934473, -0.090279,
		43.691319, 41.434181, 58.365425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198826, 42.094830, 58.587952>,  <43.932396, 42.088314, 58.428619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198826, 42.094830, 58.587952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294693, 41.708611, 58.628494>,  <43.352215, 41.476879, 58.652821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.294693, 41.708611, 58.628494>,  <43.198826, 42.094830, 58.587952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294693, 41.708611, 58.628494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493640, -0.031303, 0.869103,
		-0.835988, -0.258332, -0.484136,
		0.239672, -0.965549, 0.101354,
		43.366596, 41.418945, 58.658901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555561, 41.745140, 58.813301>,  <43.198826, 42.094830, 58.587952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555561, 41.745140, 58.813301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835476, 41.479317, 58.918114>,  <43.003426, 41.319824, 58.981003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835476, 41.479317, 58.918114>,  <42.555561, 41.745140, 58.813301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835476, 41.479317, 58.918114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475615, -0.159744, 0.865027,
		-0.533004, -0.729960, -0.427861,
		0.699784, -0.664560, 0.262035,
		43.045410, 41.279949, 58.996723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148914, 41.141727, 58.967590>,  <42.555561, 41.745140, 58.813301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148914, 41.141727, 58.967590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494465, 41.128105, 59.168610>,  <42.701797, 41.119930, 59.289219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.494465, 41.128105, 59.168610>,  <42.148914, 41.141727, 58.967590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494465, 41.128105, 59.168610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496892, -0.221079, 0.839180,
		0.082523, -0.974661, -0.207907,
		0.863880, -0.034056, 0.502546,
		42.753628, 41.117889, 59.319374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097328, 40.536766, 59.418671>,  <42.148914, 41.141727, 58.967590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097328, 40.536766, 59.418671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407845, 40.736115, 59.573074>,  <42.594154, 40.855724, 59.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407845, 40.736115, 59.573074>,  <42.097328, 40.536766, 59.418671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407845, 40.736115, 59.573074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342320, -0.180919, 0.922001,
		0.529335, -0.847877, 0.030157,
		0.776287, 0.498371, 0.386012,
		42.640732, 40.885624, 59.688877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320595, 40.096043, 60.081318>,  <42.097328, 40.536766, 59.418671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320595, 40.096043, 60.081318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492134, 40.456589, 60.105400>,  <42.595058, 40.672916, 60.119850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492134, 40.456589, 60.105400>,  <42.320595, 40.096043, 60.081318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492134, 40.456589, 60.105400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232940, 0.045940, 0.971406,
		0.872829, -0.430609, 0.229666,
		0.428847, 0.901369, 0.060208,
		42.620789, 40.727001, 60.123463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902119, 40.090050, 60.639809>,  <42.320595, 40.096043, 60.081318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902119, 40.090050, 60.639809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766441, 40.463257, 60.591774>,  <42.685036, 40.687183, 60.562954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766441, 40.463257, 60.591774>,  <42.902119, 40.090050, 60.639809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766441, 40.463257, 60.591774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103536, 0.089851, 0.990559,
		0.935003, 0.348421, 0.066125,
		-0.339190, 0.933022, -0.120085,
		42.664684, 40.743164, 60.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159199, 40.381203, 61.193790>,  <42.902119, 40.090050, 60.639809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159199, 40.381203, 61.193790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881783, 40.642815, 61.072960>,  <42.715332, 40.799782, 61.000462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881783, 40.642815, 61.072960>,  <43.159199, 40.381203, 61.193790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881783, 40.642815, 61.072960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226148, 0.200471, 0.953241,
		0.684004, 0.729425, 0.008872,
		-0.693539, 0.654027, -0.302081,
		42.673721, 40.839024, 60.982334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185421, 41.057877, 61.579727>,  <43.159199, 40.381203, 61.193790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185421, 41.057877, 61.579727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814384, 40.955086, 61.471256>,  <42.591763, 40.893414, 61.406174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814384, 40.955086, 61.471256>,  <43.185421, 41.057877, 61.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814384, 40.955086, 61.471256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295695, 0.061359, 0.953310,
		-0.228335, 0.964469, -0.132902,
		-0.927593, -0.256973, -0.271178,
		42.536106, 40.877995, 61.389904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572033, 41.612064, 61.638218>,  <43.185421, 41.057877, 61.579727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572033, 41.612064, 61.638218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483521, 41.228912, 61.711437>,  <42.430412, 40.999023, 61.755367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483521, 41.228912, 61.711437>,  <42.572033, 41.612064, 61.638218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483521, 41.228912, 61.711437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360282, 0.254717, 0.897394,
		-0.906218, 0.132633, -0.401470,
		-0.221285, -0.957877, 0.183044,
		42.417133, 40.941551, 61.766350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803291, 41.369289, 61.910057>,  <42.572033, 41.612064, 61.638218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803291, 41.369289, 61.910057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105320, 41.139130, 62.035782>,  <42.286537, 41.001034, 62.111217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105320, 41.139130, 62.035782>,  <41.803291, 41.369289, 61.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105320, 41.139130, 62.035782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236811, 0.207690, 0.949097,
		-0.611387, -0.791065, 0.020560,
		0.755068, -0.575396, 0.314311,
		42.331841, 40.966511, 62.130074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527443, 41.889004, 61.457298>,  <41.803291, 41.369289, 61.910057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527443, 41.889004, 61.457298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176243, 42.079842, 61.441814>,  <40.965523, 42.194344, 61.432526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176243, 42.079842, 61.441814>,  <41.527443, 41.889004, 61.457298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176243, 42.079842, 61.441814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095840, 0.254454, 0.962324,
		0.468969, 0.841210, -0.269135,
		-0.877999, 0.477094, -0.038710,
		40.912842, 42.222969, 61.430202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702030, 42.517159, 61.885311>,  <41.527443, 41.889004, 61.457298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702030, 42.517159, 61.885311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306721, 42.478249, 61.838223>,  <41.069534, 42.454903, 61.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306721, 42.478249, 61.838223>,  <41.702030, 42.517159, 61.885311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306721, 42.478249, 61.838223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146741, 0.391355, 0.908465,
		-0.042301, 0.915084, -0.401039,
		-0.988270, -0.097278, -0.117725,
		41.010239, 42.449066, 61.802906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586540, 42.108425, 62.520580>,  <41.702030, 42.517159, 61.885311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586540, 42.108425, 62.520580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226471, 42.138474, 62.692181>,  <41.010429, 42.156502, 62.795139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226471, 42.138474, 62.692181>,  <41.586540, 42.108425, 62.520580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226471, 42.138474, 62.692181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316191, 0.564665, -0.762349,
		-0.299513, -0.821894, -0.484543,
		-0.900175, 0.075125, 0.429000,
		40.956417, 42.161011, 62.820881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955814, 41.724106, 62.126156>,  <41.586540, 42.108425, 62.520580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955814, 41.724106, 62.126156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880745, 42.064056, 62.323128>,  <40.835705, 42.268028, 62.441311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.880745, 42.064056, 62.323128>,  <40.955814, 41.724106, 62.126156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880745, 42.064056, 62.323128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437303, 0.376614, -0.816656,
		-0.879515, -0.368602, 0.300976,
		-0.187669, 0.849879, 0.492429,
		40.824444, 42.319019, 62.470856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136620, 41.870815, 62.206585>,  <40.955814, 41.724106, 62.126156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136620, 41.870815, 62.206585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387680, 42.180191, 62.171158>,  <40.538315, 42.365818, 62.149902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387680, 42.180191, 62.171158>,  <40.136620, 41.870815, 62.206585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387680, 42.180191, 62.171158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411725, 0.233237, -0.880956,
		-0.660711, 0.589397, 0.464836,
		0.627650, 0.773441, -0.088567,
		40.575974, 42.412224, 62.144588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751621, 42.484947, 62.049267>,  <40.136620, 41.870815, 62.206585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751621, 42.484947, 62.049267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125767, 42.513565, 61.910713>,  <40.350254, 42.530735, 61.827583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125767, 42.513565, 61.910713>,  <39.751621, 42.484947, 62.049267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125767, 42.513565, 61.910713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353446, 0.152520, -0.922938,
		-0.013200, 0.985707, 0.167949,
		0.935362, 0.071544, -0.346381,
		40.406376, 42.535027, 61.806801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732529, 42.836143, 61.397385>,  <39.751621, 42.484947, 62.049267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732529, 42.836143, 61.397385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098358, 42.675308, 61.414726>,  <40.317856, 42.578808, 61.425133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098358, 42.675308, 61.414726>,  <39.732529, 42.836143, 61.397385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098358, 42.675308, 61.414726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068471, 0.048296, -0.996483,
		0.398584, 0.914325, 0.071702,
		0.914572, -0.402092, 0.043355,
		40.372730, 42.554680, 61.427734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255775, 43.246754, 60.888706>,  <39.732529, 42.836143, 61.397385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255775, 43.246754, 60.888706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446350, 42.899567, 60.944763>,  <40.560696, 42.691254, 60.978397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446350, 42.899567, 60.944763>,  <40.255775, 43.246754, 60.888706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446350, 42.899567, 60.944763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313124, 0.018566, -0.949531,
		0.821560, 0.496274, 0.280627,
		0.476438, -0.867967, 0.140142,
		40.589283, 42.639175, 60.986805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929539, 43.397793, 60.704319>,  <40.255775, 43.246754, 60.888706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929539, 43.397793, 60.704319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869774, 43.003479, 60.673584>,  <40.833916, 42.766891, 60.655144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869774, 43.003479, 60.673584>,  <40.929539, 43.397793, 60.704319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869774, 43.003479, 60.673584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368598, 0.016579, -0.929441,
		0.917503, -0.167188, 0.360882,
		-0.149408, -0.985786, -0.076837,
		40.824951, 42.707745, 60.650532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448303, 43.180546, 60.219406>,  <40.929539, 43.397793, 60.704319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448303, 43.180546, 60.219406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193935, 42.875954, 60.169209>,  <41.041313, 42.693199, 60.139088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193935, 42.875954, 60.169209>,  <41.448303, 43.180546, 60.219406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193935, 42.875954, 60.169209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217709, -0.020995, -0.975788,
		0.740411, -0.647844, 0.179133,
		-0.635919, -0.761483, -0.125497,
		41.003159, 42.647511, 60.131561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728573, 42.665417, 59.731468>,  <41.448303, 43.180546, 60.219406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728573, 42.665417, 59.731468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331161, 42.619987, 59.730598>,  <41.092716, 42.592728, 59.730076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331161, 42.619987, 59.730598>,  <41.728573, 42.665417, 59.731468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331161, 42.619987, 59.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000269, 0.016775, -0.999859,
		0.113601, -0.993387, -0.016635,
		-0.993527, -0.113581, -0.002173,
		41.033104, 42.585915, 59.729946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635147, 42.209221, 59.136208>,  <41.728573, 42.665417, 59.731468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635147, 42.209221, 59.136208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267250, 42.351959, 59.201622>,  <41.046513, 42.437603, 59.240871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267250, 42.351959, 59.201622>,  <41.635147, 42.209221, 59.136208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267250, 42.351959, 59.201622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150149, 0.065097, -0.986518,
		-0.362678, -0.931893, -0.006292,
		-0.919739, 0.356844, 0.163532,
		40.991329, 42.459011, 59.250683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246803, 41.854000, 58.707878>,  <41.635147, 42.209221, 59.136208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246803, 41.854000, 58.707878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038193, 42.180855, 58.806103>,  <40.913025, 42.376968, 58.865036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038193, 42.180855, 58.806103>,  <41.246803, 41.854000, 58.707878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038193, 42.180855, 58.806103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036750, 0.266019, -0.963267,
		-0.852442, -0.511395, -0.108706,
		-0.521528, 0.817134, 0.245559,
		40.881733, 42.425995, 58.879772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876022, 41.924297, 58.163658>,  <41.246803, 41.854000, 58.707878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876022, 41.924297, 58.163658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877151, 42.289474, 58.326889>,  <40.877831, 42.508579, 58.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877151, 42.289474, 58.326889>,  <40.876022, 41.924297, 58.163658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877151, 42.289474, 58.326889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040655, 0.407636, -0.912239,
		-0.999169, 0.019168, -0.035964,
		0.002825, 0.912943, 0.408077,
		40.877998, 42.563358, 58.449310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487003, 42.283329, 57.688316>,  <40.876022, 41.924297, 58.163658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487003, 42.283329, 57.688316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661949, 42.570000, 57.905602>,  <40.766918, 42.742004, 58.035973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.661949, 42.570000, 57.905602>,  <40.487003, 42.283329, 57.688316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661949, 42.570000, 57.905602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048169, 0.584514, -0.809952,
		-0.897994, 0.380410, 0.221123,
		0.437363, 0.716681, 0.543214,
		40.793159, 42.785004, 58.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092686, 42.955299, 57.557938>,  <40.487003, 42.283329, 57.688316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092686, 42.955299, 57.557938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461845, 43.050705, 57.678841>,  <40.683342, 43.107948, 57.751385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461845, 43.050705, 57.678841>,  <40.092686, 42.955299, 57.557938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461845, 43.050705, 57.678841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083757, 0.641867, -0.762227,
		-0.375812, 0.728779, 0.572405,
		0.922903, 0.238511, 0.302261,
		40.738716, 43.122257, 57.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247131, 43.724331, 57.394627>,  <40.092686, 42.955299, 57.557938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247131, 43.724331, 57.394627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607853, 43.552597, 57.414291>,  <40.824287, 43.449558, 57.426090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607853, 43.552597, 57.414291>,  <40.247131, 43.724331, 57.394627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607853, 43.552597, 57.414291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288588, 0.513653, -0.808008,
		0.321657, 0.742853, 0.587117,
		0.901806, -0.429336, 0.049158,
		40.878395, 43.423798, 57.429039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764854, 44.270161, 57.357353>,  <40.247131, 43.724331, 57.394627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764854, 44.270161, 57.357353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941452, 43.922043, 57.270012>,  <41.047409, 43.713173, 57.217606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941452, 43.922043, 57.270012>,  <40.764854, 44.270161, 57.357353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941452, 43.922043, 57.270012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321438, 0.380606, -0.867074,
		0.837714, 0.312617, 0.447778,
		0.441489, -0.870293, -0.218352,
		41.073898, 43.660954, 57.204506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427429, 44.467846, 57.161003>,  <40.764854, 44.270161, 57.357353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427429, 44.467846, 57.161003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423595, 44.108887, 56.984550>,  <41.421295, 43.893513, 56.878681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423595, 44.108887, 56.984550>,  <41.427429, 44.467846, 57.161003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423595, 44.108887, 56.984550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471474, 0.384977, -0.793413,
		0.881828, -0.215586, 0.419407,
		-0.009586, -0.897394, -0.441127,
		41.420719, 43.839668, 56.852211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996063, 44.479202, 56.710918>,  <41.427429, 44.467846, 57.161003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996063, 44.479202, 56.710918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811134, 44.158607, 56.559196>,  <41.700176, 43.966251, 56.468163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811134, 44.158607, 56.559196>,  <41.996063, 44.479202, 56.710918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811134, 44.158607, 56.559196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304352, 0.258341, -0.916859,
		0.832842, -0.539329, 0.124497,
		-0.462325, -0.801489, -0.379303,
		41.672436, 43.918159, 56.445404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497505, 44.136368, 56.359127>,  <41.996063, 44.479202, 56.710918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497505, 44.136368, 56.359127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152161, 44.017982, 56.195656>,  <41.944954, 43.946949, 56.097572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152161, 44.017982, 56.195656>,  <42.497505, 44.136368, 56.359127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152161, 44.017982, 56.195656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382882, 0.143263, -0.912621,
		0.328655, -0.944394, -0.010366,
		-0.863358, -0.295968, -0.408676,
		41.893154, 43.929192, 56.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663433, 43.664993, 55.871807>,  <42.497505, 44.136368, 56.359127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663433, 43.664993, 55.871807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302437, 43.799911, 55.764664>,  <42.085838, 43.880863, 55.700378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302437, 43.799911, 55.764664>,  <42.663433, 43.664993, 55.871807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302437, 43.799911, 55.764664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361180, 0.253816, -0.897288,
		-0.234662, -0.906537, -0.350890,
		-0.902487, 0.337294, -0.267862,
		42.031693, 43.901100, 55.684303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671768, 43.454254, 55.180637>,  <42.663433, 43.664993, 55.871807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671768, 43.454254, 55.180637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377457, 43.721832, 55.222839>,  <42.200871, 43.882381, 55.248161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377457, 43.721832, 55.222839>,  <42.671768, 43.454254, 55.180637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377457, 43.721832, 55.222839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221987, 0.385426, -0.895639,
		-0.639802, -0.635574, -0.432088,
		-0.735782, 0.668949, 0.105507,
		42.156723, 43.922516, 55.254490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278580, 43.439182, 54.631496>,  <42.671768, 43.454254, 55.180637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278580, 43.439182, 54.631496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189140, 43.803406, 54.770576>,  <42.135475, 44.021938, 54.854023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189140, 43.803406, 54.770576>,  <42.278580, 43.439182, 54.631496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189140, 43.803406, 54.770576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143804, 0.383644, -0.912216,
		-0.964014, -0.153974, -0.216725,
		-0.223603, 0.910554, 0.347696,
		42.122059, 44.076572, 54.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851051, 43.777409, 54.143478>,  <42.278580, 43.439182, 54.631496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851051, 43.777409, 54.143478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995735, 44.087776, 54.350208>,  <42.082546, 44.273998, 54.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995735, 44.087776, 54.350208>,  <41.851051, 43.777409, 54.143478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995735, 44.087776, 54.350208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385759, 0.380115, -0.840656,
		-0.848738, 0.503445, -0.161827,
		0.361711, 0.775923, 0.516827,
		42.104248, 44.320553, 54.505257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700321, 44.383472, 53.784187>,  <41.851051, 43.777409, 54.143478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700321, 44.383472, 53.784187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999603, 44.490685, 54.026955>,  <42.179173, 44.555012, 54.172615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999603, 44.490685, 54.026955>,  <41.700321, 44.383472, 53.784187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999603, 44.490685, 54.026955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337296, 0.634066, -0.695839,
		-0.571332, 0.725341, 0.384006,
		0.748205, 0.268031, 0.606917,
		42.224064, 44.571095, 54.209030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622494, 45.069897, 53.806751>,  <41.700321, 44.383472, 53.784187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622494, 45.069897, 53.806751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002670, 45.001205, 53.910427>,  <42.230774, 44.959991, 53.972633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002670, 45.001205, 53.910427>,  <41.622494, 45.069897, 53.806751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002670, 45.001205, 53.910427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285330, 0.812909, -0.507707,
		-0.123510, 0.556498, 0.821618,
		0.950438, -0.171725, 0.259187,
		42.287800, 44.949688, 53.988182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959156, 45.677692, 53.891972>,  <41.622494, 45.069897, 53.806751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959156, 45.677692, 53.891972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276138, 45.437454, 53.849445>,  <42.466328, 45.293312, 53.823929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276138, 45.437454, 53.849445>,  <41.959156, 45.677692, 53.891972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276138, 45.437454, 53.849445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388749, 0.631662, -0.670729,
		0.469992, 0.490192, 0.734044,
		0.792453, -0.600595, -0.106314,
		42.513874, 45.257275, 53.817551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531109, 46.170097, 53.790394>,  <41.959156, 45.677692, 53.891972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531109, 46.170097, 53.790394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664062, 45.824669, 53.638729>,  <42.743835, 45.617413, 53.547729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664062, 45.824669, 53.638729>,  <42.531109, 46.170097, 53.790394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664062, 45.824669, 53.638729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409472, 0.494281, -0.766824,
		0.849621, 0.099622, 0.517899,
		0.332380, -0.863575, -0.379159,
		42.763775, 45.565598, 53.524982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223225, 46.289024, 53.653492>,  <42.531109, 46.170097, 53.790394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223225, 46.289024, 53.653492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117973, 45.970230, 53.436024>,  <43.054821, 45.778954, 53.305542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117973, 45.970230, 53.436024>,  <43.223225, 46.289024, 53.653492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117973, 45.970230, 53.436024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593409, 0.310618, -0.742551,
		0.760677, -0.518004, 0.391206,
		-0.263129, -0.796987, -0.543668,
		43.039036, 45.731133, 53.272923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774532, 46.121254, 53.253311>,  <43.223225, 46.289024, 53.653492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774532, 46.121254, 53.253311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478188, 45.951248, 53.045277>,  <43.300381, 45.849243, 52.920456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478188, 45.951248, 53.045277>,  <43.774532, 46.121254, 53.253311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478188, 45.951248, 53.045277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500728, 0.166591, -0.849423,
		0.447659, -0.889725, 0.089396,
		-0.740860, -0.425015, -0.520086,
		43.255928, 45.823742, 52.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048653, 46.053295, 52.680019>,  <43.774532, 46.121254, 53.253311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048653, 46.053295, 52.680019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673973, 45.951523, 52.583809>,  <43.449165, 45.890457, 52.526081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673973, 45.951523, 52.583809>,  <44.048653, 46.053295, 52.680019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673973, 45.951523, 52.583809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214529, 0.125837, -0.968577,
		0.276708, -0.958868, -0.063288,
		-0.936702, -0.254436, -0.240525,
		43.392963, 45.875191, 52.511650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110493, 45.475418, 52.179958>,  <44.048653, 46.053295, 52.680019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110493, 45.475418, 52.179958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767357, 45.678856, 52.150459>,  <43.561474, 45.800919, 52.132759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.767357, 45.678856, 52.150459>,  <44.110493, 45.475418, 52.179958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767357, 45.678856, 52.150459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157990, 0.124434, -0.979569,
		-0.489024, -0.851968, -0.187097,
		-0.857843, 0.508592, -0.073751,
		43.510002, 45.831432, 52.128334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779728, 45.192753, 51.667568>,  <44.110493, 45.475418, 52.179958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779728, 45.192753, 51.667568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628380, 45.562157, 51.692738>,  <43.537571, 45.783798, 51.707840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628380, 45.562157, 51.692738>,  <43.779728, 45.192753, 51.667568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628380, 45.562157, 51.692738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153340, 0.129573, -0.979642,
		-0.912866, -0.361016, -0.190638,
		-0.378368, 0.923514, 0.062925,
		43.514870, 45.839211, 51.711617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356030, 45.273479, 51.051720>,  <43.779728, 45.192753, 51.667568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356030, 45.273479, 51.051720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433113, 45.648224, 51.168442>,  <43.479362, 45.873070, 51.238476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433113, 45.648224, 51.168442>,  <43.356030, 45.273479, 51.051720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433113, 45.648224, 51.168442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256169, 0.239032, -0.936612,
		-0.947227, 0.255247, -0.193931,
		0.192711, 0.936863, 0.291804,
		43.490925, 45.929283, 51.255981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935230, 45.748051, 50.676685>,  <43.356030, 45.273479, 51.051720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935230, 45.748051, 50.676685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233032, 45.979500, 50.809898>,  <43.411713, 46.118370, 50.889828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233032, 45.979500, 50.809898>,  <42.935230, 45.748051, 50.676685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233032, 45.979500, 50.809898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065690, 0.432927, -0.899032,
		-0.664381, 0.691208, 0.284304,
		0.744501, 0.578624, 0.333034,
		43.456383, 46.153088, 50.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763371, 46.381882, 50.368008>,  <42.935230, 45.748051, 50.676685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763371, 46.381882, 50.368008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147846, 46.409966, 50.474731>,  <43.378532, 46.426815, 50.538765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.147846, 46.409966, 50.474731>,  <42.763371, 46.381882, 50.368008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147846, 46.409966, 50.474731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198134, 0.497314, -0.844643,
		-0.191989, 0.864725, 0.464102,
		0.961188, 0.070208, 0.266810,
		43.436203, 46.431026, 50.554775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959785, 47.041275, 50.180775>,  <42.763371, 46.381882, 50.368008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959785, 47.041275, 50.180775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306068, 46.842010, 50.200310>,  <43.513840, 46.722450, 50.212029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306068, 46.842010, 50.200310>,  <42.959785, 47.041275, 50.180775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306068, 46.842010, 50.200310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197804, 0.250849, -0.947601,
		0.459811, 0.830004, 0.315700,
		0.865706, -0.498165, 0.048835,
		43.565781, 46.692562, 50.214962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383614, 47.365231, 49.690773>,  <42.959785, 47.041275, 50.180775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383614, 47.365231, 49.690773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575367, 47.020416, 49.756592>,  <43.690418, 46.813526, 49.796085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575367, 47.020416, 49.756592>,  <43.383614, 47.365231, 49.690773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575367, 47.020416, 49.756592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430370, 0.067512, -0.900124,
		0.764832, 0.502327, 0.403360,
		0.479388, -0.862038, 0.164551,
		43.719185, 46.761806, 49.805958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115494, 47.457203, 49.521126>,  <43.383614, 47.365231, 49.690773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115494, 47.457203, 49.521126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046211, 47.066040, 49.474312>,  <44.004642, 46.831341, 49.446224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046211, 47.066040, 49.474312>,  <44.115494, 47.457203, 49.521126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046211, 47.066040, 49.474312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347901, 0.050416, -0.936175,
		0.921392, -0.202868, 0.331483,
		-0.173208, -0.977907, -0.117031,
		43.994247, 46.772667, 49.439201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528877, 47.354176, 49.072899>,  <44.115494, 47.457203, 49.521126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528877, 47.354176, 49.072899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324062, 47.011269, 49.051338>,  <44.201176, 46.805523, 49.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324062, 47.011269, 49.051338>,  <44.528877, 47.354176, 49.072899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324062, 47.011269, 49.051338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339813, -0.144537, -0.929320,
		0.788890, -0.494160, 0.365320,
		-0.512035, -0.857272, -0.053898,
		44.170452, 46.754086, 49.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930622, 46.969185, 48.711514>,  <44.528877, 47.354176, 49.072899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930622, 46.969185, 48.711514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559761, 46.832855, 48.649242>,  <44.337246, 46.751057, 48.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559761, 46.832855, 48.649242>,  <44.930622, 46.969185, 48.711514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559761, 46.832855, 48.649242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177245, -0.032888, -0.983617,
		0.330120, -0.939552, 0.090902,
		-0.927149, -0.340824, -0.155673,
		44.281616, 46.730610, 48.602539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063793, 46.384659, 48.294044>,  <44.930622, 46.969185, 48.711514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063793, 46.384659, 48.294044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685436, 46.491982, 48.221046>,  <44.458424, 46.556374, 48.177250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685436, 46.491982, 48.221046>,  <45.063793, 46.384659, 48.294044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685436, 46.491982, 48.221046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168544, -0.074341, -0.982887,
		-0.277282, -0.960461, 0.025097,
		-0.945890, 0.268307, -0.182493,
		44.401669, 46.572475, 48.166298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765930, 45.860462, 47.847309>,  <45.063793, 46.384659, 48.294044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765930, 45.860462, 47.847309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546104, 46.189178, 47.787125>,  <44.414207, 46.386410, 47.751015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546104, 46.189178, 47.787125>,  <44.765930, 45.860462, 47.847309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546104, 46.189178, 47.787125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145276, -0.083348, -0.985874,
		-0.822724, -0.563659, -0.073582,
		-0.549564, 0.821792, -0.150458,
		44.381237, 46.435715, 47.741985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387829, 45.662754, 47.295872>,  <44.765930, 45.860462, 47.847309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387829, 45.662754, 47.295872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295113, 46.051514, 47.312286>,  <44.239483, 46.284771, 47.322136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295113, 46.051514, 47.312286>,  <44.387829, 45.662754, 47.295872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295113, 46.051514, 47.312286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017187, 0.038088, -0.999127,
		-0.972614, -0.232294, 0.007875,
		-0.231791, 0.971900, 0.041038,
		44.225574, 46.343082, 47.324596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839466, 45.718887, 46.769302>,  <44.387829, 45.662754, 47.295872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839466, 45.718887, 46.769302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008850, 46.074661, 46.838104>,  <44.110481, 46.288124, 46.879387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008850, 46.074661, 46.838104>,  <43.839466, 45.718887, 46.769302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008850, 46.074661, 46.838104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052872, 0.165285, -0.984828,
		-0.904369, 0.426132, 0.022966,
		0.423463, 0.889434, 0.172009,
		44.135887, 46.341492, 46.889706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375271, 46.244446, 46.496796>,  <43.839466, 45.718887, 46.769302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375271, 46.244446, 46.496796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743778, 46.399773, 46.488167>,  <43.964882, 46.492970, 46.482990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743778, 46.399773, 46.488167>,  <43.375271, 46.244446, 46.496796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743778, 46.399773, 46.488167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048235, 0.059040, -0.997090,
		-0.385915, 0.919632, 0.073123,
		0.921273, 0.388319, -0.021574,
		44.020161, 46.516270, 46.481693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335571, 46.979195, 46.503464>,  <43.375271, 46.244446, 46.496796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335571, 46.979195, 46.503464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134804, 46.715767, 46.279194>,  <43.014343, 46.557709, 46.144630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134804, 46.715767, 46.279194>,  <43.335571, 46.979195, 46.503464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134804, 46.715767, 46.279194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514976, -0.293268, 0.805477,
		-0.694892, 0.693022, -0.191950,
		-0.501921, -0.658570, -0.560679,
		42.984226, 46.518196, 46.110989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622017, 47.129391, 46.630516>,  <43.335571, 46.979195, 46.503464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622017, 47.129391, 46.630516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613983, 46.760445, 46.476196>,  <42.609161, 46.539078, 46.383606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613983, 46.760445, 46.476196>,  <42.622017, 47.129391, 46.630516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613983, 46.760445, 46.476196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503158, -0.324121, 0.801110,
		-0.863961, 0.210209, -0.457584,
		-0.020088, -0.922365, -0.385797,
		42.607956, 46.483734, 46.360458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922588, 46.840187, 46.762100>,  <42.622017, 47.129391, 46.630516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922588, 46.840187, 46.762100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108749, 46.494820, 46.684212>,  <42.220448, 46.287601, 46.637478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108749, 46.494820, 46.684212>,  <41.922588, 46.840187, 46.762100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108749, 46.494820, 46.684212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548630, -0.454047, 0.702031,
		-0.694555, -0.219900, -0.685010,
		0.465403, -0.863415, -0.194717,
		42.248371, 46.235794, 46.625797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369106, 46.350334, 46.692081>,  <41.922588, 46.840187, 46.762100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369106, 46.350334, 46.692081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703857, 46.136749, 46.740276>,  <41.904709, 46.008598, 46.769196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703857, 46.136749, 46.740276>,  <41.369106, 46.350334, 46.692081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703857, 46.136749, 46.740276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471157, -0.590616, 0.655121,
		-0.278645, -0.605028, -0.745854,
		0.836880, -0.533961, 0.120490,
		41.954922, 45.976562, 46.776424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195629, 45.611191, 46.609524>,  <41.369106, 46.350334, 46.692081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195629, 45.611191, 46.609524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512985, 45.691223, 46.839481>,  <41.703400, 45.739243, 46.977455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512985, 45.691223, 46.839481>,  <41.195629, 45.611191, 46.609524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512985, 45.691223, 46.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507468, -0.304187, 0.806192,
		0.336178, -0.931364, -0.139805,
		0.793385, 0.200078, 0.574899,
		41.750999, 45.751247, 47.011951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276005, 45.092197, 47.102753>,  <41.195629, 45.611191, 46.609524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276005, 45.092197, 47.102753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511024, 45.345001, 47.304886>,  <41.652035, 45.496681, 47.426167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511024, 45.345001, 47.304886>,  <41.276005, 45.092197, 47.102753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511024, 45.345001, 47.304886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319349, -0.392697, 0.862442,
		0.743511, -0.668099, -0.028896,
		0.587544, 0.632006, 0.505331,
		41.687286, 45.534603, 47.456486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647537, 44.664288, 47.609261>,  <41.276005, 45.092197, 47.102753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647537, 44.664288, 47.609261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684113, 45.039001, 47.744354>,  <41.706059, 45.263832, 47.825413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.684113, 45.039001, 47.744354>,  <41.647537, 44.664288, 47.609261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684113, 45.039001, 47.744354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230265, -0.310078, 0.922404,
		0.968823, -0.162110, 0.187358,
		0.091436, 0.936788, 0.337738,
		41.711544, 45.320038, 47.845676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030270, 44.637737, 48.271812>,  <41.647537, 44.664288, 47.609261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030270, 44.637737, 48.271812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842758, 44.991058, 48.269596>,  <41.730251, 45.203049, 48.268269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842758, 44.991058, 48.269596>,  <42.030270, 44.637737, 48.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842758, 44.991058, 48.269596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200054, -0.100062, 0.974662,
		0.860364, 0.458007, 0.223615,
		-0.468778, 0.883299, -0.005536,
		41.702126, 45.256046, 48.267937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446190, 44.971348, 48.803837>,  <42.030270, 44.637737, 48.271812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446190, 44.971348, 48.803837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081432, 45.127975, 48.754662>,  <41.862576, 45.221954, 48.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081432, 45.127975, 48.754662>,  <42.446190, 44.971348, 48.803837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081432, 45.127975, 48.754662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248352, -0.287983, 0.924871,
		0.326750, 0.873920, 0.359859,
		-0.911897, 0.391573, -0.122942,
		41.807865, 45.245449, 48.717777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366920, 45.314369, 49.341755>,  <42.446190, 44.971348, 48.803837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366920, 45.314369, 49.341755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988304, 45.280640, 49.217213>,  <41.761131, 45.260403, 49.142487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988304, 45.280640, 49.217213>,  <42.366920, 45.314369, 49.341755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988304, 45.280640, 49.217213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286852, -0.221435, 0.932031,
		-0.147537, 0.971522, 0.185410,
		-0.946545, -0.084324, -0.311353,
		41.704342, 45.255341, 49.123806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856136, 45.604824, 49.902275>,  <42.366920, 45.314369, 49.341755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856136, 45.604824, 49.902275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645905, 45.366394, 49.659470>,  <41.519764, 45.223335, 49.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645905, 45.366394, 49.659470>,  <41.856136, 45.604824, 49.902275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645905, 45.366394, 49.659470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554684, -0.300896, 0.775749,
		-0.645051, 0.744417, -0.172488,
		-0.525580, -0.596074, -0.607010,
		41.488232, 45.187572, 49.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103550, 45.774246, 49.989094>,  <41.856136, 45.604824, 49.902275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103550, 45.774246, 49.989094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117432, 45.406662, 49.831970>,  <41.125759, 45.186111, 49.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117432, 45.406662, 49.831970>,  <41.103550, 45.774246, 49.989094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117432, 45.406662, 49.831970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628290, -0.325724, 0.706509,
		-0.777205, 0.222284, -0.588679,
		0.034701, -0.918964, -0.392813,
		41.127842, 45.130974, 49.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370930, 45.401337, 50.186806>,  <41.103550, 45.774246, 49.989094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370930, 45.401337, 50.186806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615784, 45.099655, 50.091751>,  <40.762695, 44.918648, 50.034718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615784, 45.099655, 50.091751>,  <40.370930, 45.401337, 50.186806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615784, 45.099655, 50.091751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484894, -0.595401, 0.640606,
		-0.624638, -0.276906, -0.730172,
		0.612132, -0.754202, -0.237640,
		40.799423, 44.873394, 50.020458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914589, 44.851643, 50.097942>,  <40.370930, 45.401337, 50.186806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914589, 44.851643, 50.097942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274506, 44.697906, 50.180550>,  <40.490456, 44.605663, 50.230114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274506, 44.697906, 50.180550>,  <39.914589, 44.851643, 50.097942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274506, 44.697906, 50.180550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392996, -0.508318, 0.766268,
		-0.189531, -0.770646, -0.608427,
		0.899795, -0.384340, 0.206519,
		40.544445, 44.582603, 50.242504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787483, 44.160904, 50.192356>,  <39.914589, 44.851643, 50.097942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787483, 44.160904, 50.192356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124977, 44.247017, 50.389034>,  <40.327473, 44.298683, 50.507042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124977, 44.247017, 50.389034>,  <39.787483, 44.160904, 50.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124977, 44.247017, 50.389034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341062, -0.492331, 0.800804,
		0.414476, -0.843365, -0.341972,
		0.843734, 0.215280, 0.491699,
		40.378098, 44.311600, 50.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805172, 43.562538, 50.667267>,  <39.787483, 44.160904, 50.192356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805172, 43.562538, 50.667267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041721, 43.848190, 50.817085>,  <40.183651, 44.019581, 50.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041721, 43.848190, 50.817085>,  <39.805172, 43.562538, 50.667267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041721, 43.848190, 50.817085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071705, -0.416062, 0.906505,
		0.803202, -0.562942, -0.194842,
		0.591376, 0.714135, 0.374547,
		40.219135, 44.062431, 50.929451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415295, 43.285465, 51.174187>,  <39.805172, 43.562538, 50.667267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415295, 43.285465, 51.174187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367577, 43.675316, 51.249947>,  <40.338947, 43.909225, 51.295403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367577, 43.675316, 51.249947>,  <40.415295, 43.285465, 51.174187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367577, 43.675316, 51.249947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147945, -0.206078, 0.967287,
		0.981775, 0.087368, 0.168774,
		-0.119291, 0.974628, 0.189396,
		40.331791, 43.967705, 51.306767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821854, 43.410210, 51.728573>,  <40.415295, 43.285465, 51.174187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821854, 43.410210, 51.728573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558365, 43.711159, 51.726360>,  <40.400272, 43.891727, 51.725033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558365, 43.711159, 51.726360>,  <40.821854, 43.410210, 51.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558365, 43.711159, 51.726360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313976, -0.268201, 0.910762,
		0.683746, 0.601673, 0.412895,
		-0.658719, 0.752369, -0.005530,
		40.360748, 43.936871, 51.724701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035992, 43.702950, 52.318977>,  <40.821854, 43.410210, 51.728573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035992, 43.702950, 52.318977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675732, 43.866684, 52.260628>,  <40.459576, 43.964924, 52.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675732, 43.866684, 52.260628>,  <41.035992, 43.702950, 52.318977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675732, 43.866684, 52.260628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331898, -0.431303, 0.838941,
		0.280491, 0.804006, 0.524309,
		-0.900649, 0.409332, -0.145872,
		40.405537, 43.989483, 52.216866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929493, 44.158974, 52.878838>,  <41.035992, 43.702950, 52.318977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929493, 44.158974, 52.878838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565720, 44.081871, 52.731445>,  <40.347454, 44.035610, 52.643009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565720, 44.081871, 52.731445>,  <40.929493, 44.158974, 52.878838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565720, 44.081871, 52.731445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318293, -0.247589, 0.915090,
		-0.267622, 0.949497, 0.163812,
		-0.909433, -0.192758, -0.368478,
		40.292889, 44.024044, 52.620903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539482, 44.515228, 53.256676>,  <40.929493, 44.158974, 52.878838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539482, 44.515228, 53.256676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319878, 44.212402, 53.115005>,  <40.188114, 44.030708, 53.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319878, 44.212402, 53.115005>,  <40.539482, 44.515228, 53.256676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319878, 44.212402, 53.115005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269005, -0.241149, 0.932461,
		-0.791340, 0.607210, -0.071259,
		-0.549015, -0.757063, -0.354173,
		40.155174, 43.985283, 53.008755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883598, 44.637863, 53.622375>,  <40.539482, 44.515228, 53.256676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883598, 44.637863, 53.622375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873726, 44.264343, 53.479595>,  <39.867802, 44.040234, 53.393929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873726, 44.264343, 53.479595>,  <39.883598, 44.637863, 53.622375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873726, 44.264343, 53.479595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315847, -0.331489, 0.889019,
		-0.948489, 0.134681, -0.286757,
		-0.024677, -0.933796, -0.356952,
		39.866322, 43.984203, 53.372509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336674, 44.356060, 53.997318>,  <39.883598, 44.637863, 53.622375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336674, 44.356060, 53.997318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504608, 44.025055, 53.848213>,  <39.605370, 43.826450, 53.758751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504608, 44.025055, 53.848213>,  <39.336674, 44.356060, 53.997318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504608, 44.025055, 53.848213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178410, -0.477949, 0.860078,
		-0.889892, -0.294586, -0.348297,
		0.419836, -0.827517, -0.372766,
		39.630558, 43.776798, 53.736385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893986, 43.789444, 53.984692>,  <39.336674, 44.356060, 53.997318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893986, 43.789444, 53.984692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241867, 43.596863, 53.941189>,  <39.450596, 43.481316, 53.915085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241867, 43.596863, 53.941189>,  <38.893986, 43.789444, 53.984692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241867, 43.596863, 53.941189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263714, -0.639512, 0.722136,
		-0.417226, -0.599359, -0.683148,
		0.869700, -0.481449, -0.108761,
		39.502777, 43.452427, 53.908562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772301, 43.058807, 54.166363>,  <38.893986, 43.789444, 53.984692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772301, 43.058807, 54.166363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169006, 43.098389, 54.198879>,  <39.407028, 43.122139, 54.218391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169006, 43.098389, 54.198879>,  <38.772301, 43.058807, 54.166363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169006, 43.098389, 54.198879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015500, -0.537372, 0.843203,
		0.127125, -0.837520, -0.531413,
		0.991766, 0.098955, 0.081295,
		39.466537, 43.128075, 54.223267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058262, 42.368118, 54.297268>,  <38.772301, 43.058807, 54.166363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058262, 42.368118, 54.297268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321663, 42.631065, 54.443825>,  <39.479702, 42.788834, 54.531757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321663, 42.631065, 54.443825>,  <39.058262, 42.368118, 54.297268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321663, 42.631065, 54.443825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164523, -0.600818, 0.782273,
		0.734374, -0.454850, -0.503793,
		0.658504, 0.657366, 0.366391,
		39.519215, 42.828274, 54.553741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545635, 41.966995, 54.483711>,  <39.058262, 42.368118, 54.297268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545635, 41.966995, 54.483711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623062, 42.307686, 54.678478>,  <39.669518, 42.512100, 54.795338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623062, 42.307686, 54.678478>,  <39.545635, 41.966995, 54.483711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623062, 42.307686, 54.678478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104057, -0.511326, 0.853064,
		0.975553, -0.114460, -0.187606,
		0.193569, 0.851730, 0.486915,
		39.681133, 42.563206, 54.824554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087872, 41.838718, 54.932365>,  <39.545635, 41.966995, 54.483711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087872, 41.838718, 54.932365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911175, 42.159966, 55.092297>,  <39.805157, 42.352715, 55.188255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911175, 42.159966, 55.092297>,  <40.087872, 41.838718, 54.932365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911175, 42.159966, 55.092297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039378, -0.427881, 0.902977,
		0.896280, 0.414623, 0.157386,
		-0.441737, 0.803122, 0.399828,
		39.778652, 42.400902, 55.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401115, 41.934731, 55.554790>,  <40.087872, 41.838718, 54.932365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401115, 41.934731, 55.554790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042465, 42.106323, 55.598679>,  <39.827274, 42.209278, 55.625011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042465, 42.106323, 55.598679>,  <40.401115, 41.934731, 55.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042465, 42.106323, 55.598679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048313, -0.341098, 0.938785,
		0.440153, 0.836435, 0.326561,
		-0.896622, 0.428986, 0.109725,
		39.773479, 42.235020, 55.631596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386425, 42.117596, 56.291927>,  <40.401115, 41.934731, 55.554790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386425, 42.117596, 56.291927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006767, 42.146362, 56.169319>,  <39.778973, 42.163624, 56.095757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006767, 42.146362, 56.169319>,  <40.386425, 42.117596, 56.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006767, 42.146362, 56.169319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313030, -0.319822, 0.894274,
		-0.033718, 0.944745, 0.326069,
		-0.949145, 0.071916, -0.306517,
		39.722023, 42.167938, 56.077366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035950, 42.513630, 56.819523>,  <40.386425, 42.117596, 56.291927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035950, 42.513630, 56.819523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769341, 42.293098, 56.618809>,  <39.609375, 42.160782, 56.498383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769341, 42.293098, 56.618809>,  <40.035950, 42.513630, 56.819523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769341, 42.293098, 56.618809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484820, -0.190735, 0.853563,
		-0.566300, 0.812194, -0.140165,
		-0.666524, -0.551327, -0.501781,
		39.569382, 42.127701, 56.468273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412498, 42.744884, 57.105011>,  <40.035950, 42.513630, 56.819523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412498, 42.744884, 57.105011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368713, 42.390518, 56.924713>,  <39.342442, 42.177898, 56.816532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368713, 42.390518, 56.924713>,  <39.412498, 42.744884, 57.105011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368713, 42.390518, 56.924713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615883, -0.295487, 0.730325,
		-0.780196, 0.357550, -0.513276,
		-0.109462, -0.885915, -0.450747,
		39.335876, 42.124744, 56.789490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784153, 42.553078, 57.299088>,  <39.412498, 42.744884, 57.105011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784153, 42.553078, 57.299088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961113, 42.220604, 57.164375>,  <39.067287, 42.021122, 57.083549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961113, 42.220604, 57.164375>,  <38.784153, 42.553078, 57.299088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961113, 42.220604, 57.164375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306710, -0.493108, 0.814109,
		-0.842740, -0.256869, -0.473082,
		0.442401, -0.831182, -0.336778,
		39.093834, 41.971249, 57.063343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317577, 41.936279, 57.353394>,  <38.784153, 42.553078, 57.299088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317577, 41.936279, 57.353394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694389, 41.802078, 57.354424>,  <38.920479, 41.721558, 57.355042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694389, 41.802078, 57.354424>,  <38.317577, 41.936279, 57.353394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694389, 41.802078, 57.354424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206363, -0.573344, 0.792900,
		-0.264549, -0.747470, -0.609346,
		0.942034, -0.335507, 0.002573,
		38.977001, 41.701427, 57.355194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265240, 41.195965, 57.450665>,  <38.317577, 41.936279, 57.353394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265240, 41.195965, 57.450665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657341, 41.219681, 57.526123>,  <38.892601, 41.233910, 57.571400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657341, 41.219681, 57.526123>,  <38.265240, 41.195965, 57.450665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657341, 41.219681, 57.526123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106224, -0.646772, 0.755250,
		0.166790, -0.760375, -0.627703,
		0.980254, 0.059291, 0.188645,
		38.951416, 41.237469, 57.582718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484329, 40.516338, 57.453941>,  <38.265240, 41.195965, 57.450665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484329, 40.516338, 57.453941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779724, 40.702461, 57.649136>,  <38.956959, 40.814137, 57.766254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779724, 40.702461, 57.649136>,  <38.484329, 40.516338, 57.453941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779724, 40.702461, 57.649136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158549, -0.583602, 0.796412,
		0.655365, -0.665507, -0.357207,
		0.738484, 0.465306, 0.487988,
		39.001270, 40.842052, 57.795532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840088, 40.009579, 57.906101>,  <38.484329, 40.516338, 57.453941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840088, 40.009579, 57.906101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973770, 40.345833, 58.076576>,  <39.053978, 40.547585, 58.178860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973770, 40.345833, 58.076576>,  <38.840088, 40.009579, 57.906101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973770, 40.345833, 58.076576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037284, -0.440039, 0.897204,
		0.941763, -0.315739, -0.115721,
		0.334204, 0.840639, 0.426185,
		39.074032, 40.598026, 58.204433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350262, 39.817162, 58.356358>,  <38.840088, 40.009579, 57.906101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350262, 39.817162, 58.356358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244946, 40.170944, 58.510460>,  <39.181755, 40.383213, 58.602921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244946, 40.170944, 58.510460>,  <39.350262, 39.817162, 58.356358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244946, 40.170944, 58.510460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145106, -0.431112, 0.890554,
		0.953742, 0.178568, 0.241845,
		-0.263287, 0.884452, 0.385259,
		39.165958, 40.436279, 58.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018173, 39.215214, 58.315819>,  <39.350262, 39.817162, 58.356358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018173, 39.215214, 58.315819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710876, 38.959946, 58.335976>,  <38.526497, 38.806786, 58.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710876, 38.959946, 58.335976>,  <39.018173, 39.215214, 58.315819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710876, 38.959946, 58.335976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081628, -0.175725, -0.981049,
		0.634935, -0.749569, 0.187092,
		-0.768241, -0.638175, 0.050388,
		38.480404, 38.768494, 58.351093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207767, 38.682243, 57.918453>,  <39.018173, 39.215214, 58.315819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207767, 38.682243, 57.918453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808861, 38.662315, 57.940308>,  <38.569519, 38.650356, 57.953419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808861, 38.662315, 57.940308>,  <39.207767, 38.682243, 57.918453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808861, 38.662315, 57.940308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051994, -0.052842, -0.997248,
		0.052575, -0.997359, 0.050107,
		-0.997262, -0.049825, 0.054635,
		38.509682, 38.647369, 57.956699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048679, 38.213459, 57.384068>,  <39.207767, 38.682243, 57.918453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048679, 38.213459, 57.384068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696716, 38.396095, 57.436680>,  <38.485538, 38.505676, 57.468246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696716, 38.396095, 57.436680>,  <39.048679, 38.213459, 57.384068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696716, 38.396095, 57.436680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146952, 0.001744, -0.989142,
		-0.451859, -0.889677, 0.065562,
		-0.879903, 0.456587, 0.131528,
		38.432747, 38.533070, 57.476139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631142, 37.897743, 56.891071>,  <39.048679, 38.213459, 57.384068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631142, 37.897743, 56.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437752, 38.232292, 56.994400>,  <38.321716, 38.433022, 57.056396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437752, 38.232292, 56.994400>,  <38.631142, 37.897743, 56.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437752, 38.232292, 56.994400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040279, 0.273536, -0.961018,
		-0.874429, -0.475036, -0.098561,
		-0.483478, 0.836372, 0.258322,
		38.292709, 38.483204, 57.071896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121941, 37.985516, 56.310947>,  <38.631142, 37.897743, 56.891071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121941, 37.985516, 56.310947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155205, 38.346146, 56.480766>,  <38.175163, 38.562523, 56.582657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.155205, 38.346146, 56.480766>,  <38.121941, 37.985516, 56.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155205, 38.346146, 56.480766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080378, 0.418570, -0.904620,
		-0.993289, 0.109356, -0.037657,
		0.083163, 0.901576, 0.424551,
		38.180153, 38.616619, 56.608131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675591, 38.469910, 55.920612>,  <38.121941, 37.985516, 56.310947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675591, 38.469910, 55.920612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960098, 38.692390, 56.092533>,  <38.130802, 38.825878, 56.195686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960098, 38.692390, 56.092533>,  <37.675591, 38.469910, 55.920612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960098, 38.692390, 56.092533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034442, 0.583143, -0.811639,
		-0.702072, 0.592100, 0.395617,
		0.711273, 0.556203, 0.429802,
		38.173481, 38.859253, 56.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605148, 39.089745, 55.663300>,  <37.675591, 38.469910, 55.920612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605148, 39.089745, 55.663300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973640, 39.122604, 55.815395>,  <38.194736, 39.142323, 55.906654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973640, 39.122604, 55.815395>,  <37.605148, 39.089745, 55.663300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973640, 39.122604, 55.815395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230614, 0.671844, -0.703877,
		-0.313287, 0.736123, 0.599979,
		0.921232, 0.082152, 0.380240,
		38.250011, 39.147251, 55.929466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701893, 39.812645, 55.506641>,  <37.605148, 39.089745, 55.663300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701893, 39.812645, 55.506641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081680, 39.715279, 55.585903>,  <38.309551, 39.656860, 55.633461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081680, 39.715279, 55.585903>,  <37.701893, 39.812645, 55.506641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081680, 39.715279, 55.585903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312093, 0.664964, -0.678543,
		0.033399, 0.706096, 0.707328,
		0.949464, -0.243415, 0.198159,
		38.366520, 39.642254, 55.645351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105663, 40.416607, 55.605862>,  <37.701893, 39.812645, 55.506641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105663, 40.416607, 55.605862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343498, 40.117310, 55.488144>,  <38.486198, 39.937733, 55.417515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343498, 40.117310, 55.488144>,  <38.105663, 40.416607, 55.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343498, 40.117310, 55.488144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329371, 0.560567, -0.759789,
		0.733474, 0.354827, 0.579753,
		0.594584, -0.748239, -0.294292,
		38.521873, 39.892838, 55.399857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702648, 40.729954, 55.424679>,  <38.105663, 40.416607, 55.605862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702648, 40.729954, 55.424679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787064, 40.382927, 55.244549>,  <38.837711, 40.174709, 55.136471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787064, 40.382927, 55.244549>,  <38.702648, 40.729954, 55.424679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787064, 40.382927, 55.244549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228516, 0.491724, -0.840231,
		0.950392, 0.074411, 0.302024,
		0.211035, -0.867566, -0.450326,
		38.850372, 40.122658, 55.109451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355080, 40.839367, 55.210251>,  <38.702648, 40.729954, 55.424679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355080, 40.839367, 55.210251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175652, 40.568810, 54.976574>,  <39.067993, 40.406475, 54.836369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175652, 40.568810, 54.976574>,  <39.355080, 40.839367, 55.210251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175652, 40.568810, 54.976574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248838, 0.533274, -0.808516,
		0.858406, -0.508047, -0.070901,
		-0.448574, -0.676392, -0.584188,
		39.041080, 40.365891, 54.801319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779900, 40.834564, 54.648979>,  <39.355080, 40.839367, 55.210251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779900, 40.834564, 54.648979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445328, 40.656212, 54.521500>,  <39.244583, 40.549198, 54.445011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445328, 40.656212, 54.521500>,  <39.779900, 40.834564, 54.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445328, 40.656212, 54.521500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165985, 0.348095, -0.922648,
		0.522332, -0.824631, -0.217148,
		-0.836432, -0.445885, -0.318698,
		39.194397, 40.522446, 54.425892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945095, 40.387066, 54.130482>,  <39.779900, 40.834564, 54.648979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945095, 40.387066, 54.130482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565384, 40.495651, 54.067009>,  <39.337559, 40.560802, 54.028927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565384, 40.495651, 54.067009>,  <39.945095, 40.387066, 54.130482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565384, 40.495651, 54.067009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218179, 0.205263, -0.954078,
		-0.226423, -0.940307, -0.254079,
		-0.949279, 0.271460, -0.158679,
		39.280602, 40.577087, 54.019405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698990, 40.041653, 53.424564>,  <39.945095, 40.387066, 54.130482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698990, 40.041653, 53.424564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451950, 40.342186, 53.517582>,  <39.303726, 40.522507, 53.573391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.451950, 40.342186, 53.517582>,  <39.698990, 40.041653, 53.424564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451950, 40.342186, 53.517582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215127, 0.445768, -0.868914,
		-0.756500, -0.486614, -0.436937,
		-0.617598, 0.751331, 0.232540,
		39.266670, 40.567585, 53.587345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310406, 40.075920, 52.895393>,  <39.698990, 40.041653, 53.424564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310406, 40.075920, 52.895393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285519, 40.439926, 53.059349>,  <39.270588, 40.658329, 53.157722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285519, 40.439926, 53.059349>,  <39.310406, 40.075920, 52.895393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285519, 40.439926, 53.059349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152055, 0.414529, -0.897243,
		-0.986412, 0.006501, -0.164163,
		-0.062217, 0.910013, 0.409885,
		39.266853, 40.712929, 53.182316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963520, 40.490002, 52.345005>,  <39.310406, 40.075920, 52.895393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963520, 40.490002, 52.345005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092350, 40.777939, 52.590961>,  <39.169647, 40.950703, 52.738533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092350, 40.777939, 52.590961>,  <38.963520, 40.490002, 52.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092350, 40.777939, 52.590961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129351, 0.609946, -0.781814,
		-0.937836, 0.331339, 0.103335,
		0.322074, 0.719847, 0.614889,
		39.188972, 40.993893, 52.775429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717926, 41.086060, 52.103752>,  <38.963520, 40.490002, 52.345005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717926, 41.086060, 52.103752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005966, 41.226997, 52.342854>,  <39.178791, 41.311562, 52.486313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005966, 41.226997, 52.342854>,  <38.717926, 41.086060, 52.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005966, 41.226997, 52.342854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309264, 0.608192, -0.731066,
		-0.621136, 0.711304, 0.328992,
		0.720101, 0.352347, 0.597751,
		39.221996, 41.332703, 52.522179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720078, 41.850327, 52.048405>,  <38.717926, 41.086060, 52.103752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720078, 41.850327, 52.048405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075630, 41.715469, 52.172489>,  <39.288960, 41.634556, 52.246941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075630, 41.715469, 52.172489>,  <38.720078, 41.850327, 52.048405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075630, 41.715469, 52.172489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456895, 0.602388, -0.654504,
		0.033790, 0.723510, 0.689487,
		0.888879, -0.337139, 0.310213,
		39.342293, 41.614326, 52.265553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137455, 42.407013, 52.237030>,  <38.720078, 41.850327, 52.048405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137455, 42.407013, 52.237030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389282, 42.109009, 52.148842>,  <39.540379, 41.930206, 52.095928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389282, 42.109009, 52.148842>,  <39.137455, 42.407013, 52.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389282, 42.109009, 52.148842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, 0.557015, -0.724886,
		0.662854, 0.367004, 0.652636,
		0.629564, -0.745012, -0.220470,
		39.578152, 41.885506, 52.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742680, 42.733589, 52.116665>,  <39.137455, 42.407013, 52.237030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742680, 42.733589, 52.116665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804626, 42.376564, 51.947266>,  <39.841793, 42.162350, 51.845627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804626, 42.376564, 51.947266>,  <39.742680, 42.733589, 52.116665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804626, 42.376564, 51.947266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447629, 0.445534, -0.775325,
		0.880707, -0.069496, 0.468535,
		0.154866, -0.892564, -0.423493,
		39.851086, 42.108795, 51.820217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358196, 42.841621, 51.846554>,  <39.742680, 42.733589, 52.116665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358196, 42.841621, 51.846554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231964, 42.513512, 51.655743>,  <40.156227, 42.316647, 51.541256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231964, 42.513512, 51.655743>,  <40.358196, 42.841621, 51.846554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231964, 42.513512, 51.655743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389312, 0.346536, -0.853434,
		0.865360, -0.455038, 0.209984,
		-0.315577, -0.820276, -0.477030,
		40.137291, 42.267429, 51.512634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937202, 42.655758, 51.459217>,  <40.358196, 42.841621, 51.846554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937202, 42.655758, 51.459217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630325, 42.465057, 51.287582>,  <40.446198, 42.350636, 51.184601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630325, 42.465057, 51.287582>,  <40.937202, 42.655758, 51.459217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630325, 42.465057, 51.287582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365458, 0.224856, -0.903261,
		0.527118, -0.849790, 0.001726,
		-0.767194, -0.476756, -0.429088,
		40.400166, 42.322029, 51.158855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247063, 42.263355, 50.829174>,  <40.937202, 42.655758, 51.459217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247063, 42.263355, 50.829174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859947, 42.250732, 50.729259>,  <40.627678, 42.243156, 50.669312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859947, 42.250732, 50.729259>,  <41.247063, 42.263355, 50.829174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859947, 42.250732, 50.729259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243890, 0.128812, -0.961210,
		0.062509, -0.991167, -0.116966,
		-0.967786, -0.031558, -0.249788,
		40.569611, 42.241264, 50.654324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169731, 41.811199, 50.287472>,  <41.247063, 42.263355, 50.829174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169731, 41.811199, 50.287472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852722, 42.054787, 50.274456>,  <40.662518, 42.200939, 50.266647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852722, 42.054787, 50.274456>,  <41.169731, 41.811199, 50.287472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852722, 42.054787, 50.274456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088348, 0.061854, -0.994167,
		-0.603404, -0.790779, -0.102822,
		-0.792527, 0.608968, -0.032541,
		40.614964, 42.237476, 50.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783821, 41.653103, 49.661625>,  <41.169731, 41.811199, 50.287472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783821, 41.653103, 49.661625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640526, 42.014679, 49.755058>,  <40.554550, 42.231625, 49.811119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640526, 42.014679, 49.755058>,  <40.783821, 41.653103, 49.661625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640526, 42.014679, 49.755058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057633, 0.228296, -0.971884,
		-0.931851, -0.361625, -0.029687,
		-0.358235, 0.903940, 0.233580,
		40.533054, 42.285862, 49.825130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200863, 41.759468, 49.209652>,  <40.783821, 41.653103, 49.661625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200863, 41.759468, 49.209652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336769, 42.121147, 49.313171>,  <40.418312, 42.338154, 49.375282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336769, 42.121147, 49.313171>,  <40.200863, 41.759468, 49.209652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336769, 42.121147, 49.313171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043112, 0.259905, -0.964671,
		-0.939520, 0.338922, 0.049325,
		0.339768, 0.904202, 0.258798,
		40.438698, 42.392406, 49.390812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797493, 42.212494, 48.925755>,  <40.200863, 41.759468, 49.209652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797493, 42.212494, 48.925755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137115, 42.413307, 48.991562>,  <40.340889, 42.533794, 49.031048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137115, 42.413307, 48.991562>,  <39.797493, 42.212494, 48.925755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137115, 42.413307, 48.991562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060006, 0.217753, -0.974157,
		-0.524881, 0.836988, 0.154760,
		0.849058, 0.502031, 0.164519,
		40.391834, 42.563915, 49.040916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628681, 42.802563, 48.647121>,  <39.797493, 42.212494, 48.925755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628681, 42.802563, 48.647121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028267, 42.785210, 48.652653>,  <40.268017, 42.774796, 48.655972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028267, 42.785210, 48.652653>,  <39.628681, 42.802563, 48.647121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028267, 42.785210, 48.652653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016553, 0.063124, -0.997868,
		0.042420, 0.997062, 0.063777,
		0.998963, -0.043385, 0.013827,
		40.327957, 42.772194, 48.656799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907345, 43.318958, 48.211212>,  <39.628681, 42.802563, 48.647121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907345, 43.318958, 48.211212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213951, 43.062073, 48.210270>,  <40.397915, 42.907940, 48.209705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213951, 43.062073, 48.210270>,  <39.907345, 43.318958, 48.211212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213951, 43.062073, 48.210270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154280, 0.187699, -0.970035,
		0.623413, 0.743188, 0.242956,
		0.766521, -0.642216, -0.002355,
		40.443909, 42.869408, 48.209564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458134, 43.664463, 47.834064>,  <39.907345, 43.318958, 48.211212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458134, 43.664463, 47.834064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588844, 43.286423, 47.834862>,  <40.667271, 43.059601, 47.835339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588844, 43.286423, 47.834862>,  <40.458134, 43.664463, 47.834064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588844, 43.286423, 47.834862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278905, 0.094422, -0.955666,
		0.903010, 0.312848, 0.294448,
		0.326780, -0.945098, 0.001991,
		40.686878, 43.002892, 47.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063026, 43.699116, 47.402176>,  <40.458134, 43.664463, 47.834064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063026, 43.699116, 47.402176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977551, 43.308449, 47.393612>,  <40.926266, 43.074047, 47.388474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977551, 43.308449, 47.393612>,  <41.063026, 43.699116, 47.402176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977551, 43.308449, 47.393612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368208, -0.060225, -0.927791,
		0.904852, -0.206147, 0.372486,
		-0.213694, -0.976666, -0.021410,
		40.913441, 43.015450, 47.387188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634583, 43.381081, 47.112415>,  <41.063026, 43.699116, 47.402176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634583, 43.381081, 47.112415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336102, 43.120438, 47.057896>,  <41.157013, 42.964050, 47.025185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336102, 43.120438, 47.057896>,  <41.634583, 43.381081, 47.112415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336102, 43.120438, 47.057896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300167, -0.146580, -0.942557,
		0.594202, -0.744255, 0.304971,
		-0.746206, -0.651612, -0.136303,
		41.112240, 42.924953, 47.017006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038322, 42.849926, 46.749756>,  <41.634583, 43.381081, 47.112415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038322, 42.849926, 46.749756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649521, 42.787956, 46.679096>,  <41.416241, 42.750774, 46.636700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649521, 42.787956, 46.679096>,  <42.038322, 42.849926, 46.749756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649521, 42.787956, 46.679096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218348, -0.317940, -0.922626,
		0.086774, -0.935368, 0.342867,
		-0.972005, -0.154924, -0.176646,
		41.357918, 42.741478, 46.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812408, 42.077007, 46.675251>,  <42.038322, 42.849926, 46.749756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812408, 42.077007, 46.675251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573116, 42.327576, 46.475365>,  <41.429543, 42.477917, 46.355434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573116, 42.327576, 46.475365>,  <41.812408, 42.077007, 46.675251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573116, 42.327576, 46.475365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268381, -0.430969, -0.861532,
		-0.755045, -0.649508, 0.089699,
		-0.598229, 0.626422, -0.499717,
		41.393646, 42.515503, 46.325451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543949, 41.641495, 46.141636>,  <41.812408, 42.077007, 46.675251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543949, 41.641495, 46.141636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407730, 42.006302, 46.050201>,  <41.326000, 42.225185, 45.995342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407730, 42.006302, 46.050201>,  <41.543949, 41.641495, 46.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407730, 42.006302, 46.050201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069449, -0.218050, -0.973463,
		-0.937660, -0.347382, 0.010917,
		-0.340544, 0.912020, -0.228582,
		41.305569, 42.279907, 45.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986984, 41.560970, 45.659779>,  <41.543949, 41.641495, 46.141636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986984, 41.560970, 45.659779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142708, 41.928047, 45.628071>,  <41.236141, 42.148293, 45.609047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.142708, 41.928047, 45.628071>,  <40.986984, 41.560970, 45.659779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142708, 41.928047, 45.628071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017664, -0.093477, -0.995465,
		-0.920937, 0.386146, -0.052602,
		0.389312, 0.917689, -0.079266,
		41.259502, 42.203354, 45.604290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548050, 41.865311, 45.143517>,  <40.986984, 41.560970, 45.659779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548050, 41.865311, 45.143517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870228, 42.101471, 45.164200>,  <41.063534, 42.243168, 45.176609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.870228, 42.101471, 45.164200>,  <40.548050, 41.865311, 45.143517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870228, 42.101471, 45.164200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068168, 0.178952, -0.981494,
		-0.588731, 0.787019, 0.184384,
		0.805449, 0.590405, 0.051705,
		41.111862, 42.278591, 45.179710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402576, 42.325161, 44.611336>,  <40.548050, 41.865311, 45.143517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402576, 42.325161, 44.611336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795876, 42.365265, 44.672237>,  <41.031853, 42.389328, 44.708778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.795876, 42.365265, 44.672237>,  <40.402576, 42.325161, 44.611336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795876, 42.365265, 44.672237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147756, 0.050866, -0.987715,
		-0.106768, 0.993661, 0.035200,
		0.983244, 0.100256, 0.152250,
		41.090847, 42.395340, 44.717911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666821, 42.866249, 44.071129>,  <40.402576, 42.325161, 44.611336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666821, 42.866249, 44.071129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997009, 42.672348, 44.186794>,  <41.195122, 42.556007, 44.256195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997009, 42.672348, 44.186794>,  <40.666821, 42.866249, 44.071129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997009, 42.672348, 44.186794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318632, -0.022684, -0.947607,
		0.465911, 0.874359, 0.135732,
		0.825470, -0.484749, 0.289167,
		41.244652, 42.526924, 44.273544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213825, 43.205757, 43.773460>,  <40.666821, 42.866249, 44.071129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213825, 43.205757, 43.773460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328541, 42.827187, 43.832836>,  <41.397369, 42.600044, 43.868462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328541, 42.827187, 43.832836>,  <41.213825, 43.205757, 43.773460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328541, 42.827187, 43.832836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321943, -0.050725, -0.945399,
		0.902276, 0.318924, 0.290146,
		0.286793, -0.946422, 0.148443,
		41.414577, 42.543259, 43.877369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.114777, 38.337463, 53.250851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.396572, 38.526489, 53.462654>,  <43.565651, 38.639904, 53.589737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.396572, 38.526489, 53.462654>,  <43.114777, 38.337463, 53.250851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396572, 38.526489, 53.462654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487950, 0.219273, -0.844882,
		-0.515365, 0.853584, -0.076111,
		0.704488, 0.472561, 0.529511,
		43.607918, 38.668259, 53.621506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186047, 39.087437, 53.013680>,  <43.114777, 38.337463, 53.250851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186047, 39.087437, 53.013680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.533806, 38.982376, 53.181091>,  <43.742462, 38.919342, 53.281536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.533806, 38.982376, 53.181091>,  <43.186047, 39.087437, 53.013680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533806, 38.982376, 53.181091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490825, 0.361506, -0.792720,
		0.056907, 0.894611, 0.443207,
		0.869398, -0.262648, 0.418525,
		43.794624, 38.903580, 53.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639324, 39.714184, 52.975132>,  <43.186047, 39.087437, 53.013680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639324, 39.714184, 52.975132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.854271, 39.376961, 52.983997>,  <43.983238, 39.174625, 52.989319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.854271, 39.376961, 52.983997>,  <43.639324, 39.714184, 52.975132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854271, 39.376961, 52.983997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483916, 0.286708, -0.826815,
		0.690700, 0.455026, 0.562036,
		0.537363, -0.843060, 0.022165,
		44.015480, 39.124043, 52.990646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408623, 39.921314, 53.060616>,  <43.639324, 39.714184, 52.975132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408623, 39.921314, 53.060616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.359093, 39.565292, 52.885124>,  <44.329376, 39.351681, 52.779831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.359093, 39.565292, 52.885124>,  <44.408623, 39.921314, 53.060616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359093, 39.565292, 52.885124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504263, 0.324344, -0.800324,
		0.854627, -0.320330, 0.408659,
		-0.123822, -0.890050, -0.438724,
		44.321945, 39.298279, 52.753506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920959, 39.923260, 52.644337>,  <44.408623, 39.921314, 53.060616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920959, 39.923260, 52.644337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.734398, 39.593689, 52.515583>,  <44.622463, 39.395947, 52.438332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.734398, 39.593689, 52.515583>,  <44.920959, 39.923260, 52.644337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734398, 39.593689, 52.515583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284731, 0.204688, -0.936499,
		0.837495, -0.528436, 0.139131,
		-0.466402, -0.823928, -0.321887,
		44.594479, 39.346512, 52.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438416, 39.512058, 52.263020>,  <44.920959, 39.923260, 52.644337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438416, 39.512058, 52.263020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073990, 39.407562, 52.135452>,  <44.855335, 39.344864, 52.058910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.073990, 39.407562, 52.135452>,  <45.438416, 39.512058, 52.263020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073990, 39.407562, 52.135452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229438, 0.321418, -0.918721,
		0.342523, -0.910186, -0.232892,
		-0.911063, -0.261249, -0.318924,
		44.800671, 39.329189, 52.039776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519947, 39.002346, 51.665760>,  <45.438416, 39.512058, 52.263020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519947, 39.002346, 51.665760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.142262, 39.129997, 51.633217>,  <44.915649, 39.206589, 51.613693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.142262, 39.129997, 51.633217>,  <45.519947, 39.002346, 51.665760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142262, 39.129997, 51.633217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194335, 0.340466, -0.919955,
		-0.265886, -0.884443, -0.383490,
		-0.944213, 0.319129, -0.081353,
		44.858997, 39.225735, 51.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261585, 38.602852, 51.080681>,  <45.519947, 39.002346, 51.665760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261585, 38.602852, 51.080681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.054436, 38.940605, 51.135559>,  <44.930145, 39.143257, 51.168484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.054436, 38.940605, 51.135559>,  <45.261585, 38.602852, 51.080681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054436, 38.940605, 51.135559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024026, 0.145955, -0.988999,
		-0.855118, -0.515476, -0.055299,
		-0.517876, 0.844383, 0.137193,
		44.899075, 39.193920, 51.176716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692776, 38.595734, 50.512150>,  <45.261585, 38.602852, 51.080681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692776, 38.595734, 50.512150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.698841, 38.973663, 50.643044>,  <44.702480, 39.200420, 50.721581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.698841, 38.973663, 50.643044>,  <44.692776, 38.595734, 50.512150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698841, 38.973663, 50.643044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253535, 0.320210, -0.912790,
		-0.967207, -0.069122, 0.244402,
		0.015166, 0.944822, 0.327234,
		44.703392, 39.257111, 50.741215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163197, 38.925873, 50.163754>,  <44.692776, 38.595734, 50.512150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163197, 38.925873, 50.163754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.384071, 39.233871, 50.291630>,  <44.516598, 39.418671, 50.368355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.384071, 39.233871, 50.291630>,  <44.163197, 38.925873, 50.163754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384071, 39.233871, 50.291630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225789, 0.507231, -0.831707,
		-0.802563, 0.387078, 0.453943,
		0.552189, 0.769992, 0.319687,
		44.549728, 39.464870, 50.387535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683216, 39.535881, 50.124199>,  <44.163197, 38.925873, 50.163754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683216, 39.535881, 50.124199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.065170, 39.654327, 50.133278>,  <44.294342, 39.725395, 50.138725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.065170, 39.654327, 50.133278>,  <43.683216, 39.535881, 50.124199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.065170, 39.654327, 50.133278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142603, 0.524187, -0.839579,
		-0.260511, 0.798462, 0.542764,
		0.954881, 0.296119, 0.022694,
		44.351635, 39.743164, 50.140087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668987, 40.211582, 50.093334>,  <43.683216, 39.535881, 50.124199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668987, 40.211582, 50.093334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.042309, 40.143555, 49.966827>,  <44.266300, 40.102737, 49.890923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.042309, 40.143555, 49.966827>,  <43.668987, 40.211582, 50.093334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042309, 40.143555, 49.966827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146749, 0.623195, -0.768175,
		0.327739, 0.763350, 0.556672,
		0.933302, -0.170070, -0.316266,
		44.322300, 40.092533, 49.871948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.790482, 40.857037, 49.639431>,  <43.668987, 40.211582, 50.093334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.790482, 40.857037, 49.639431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.096138, 40.619576, 49.538498>,  <44.279533, 40.477100, 49.477940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.096138, 40.619576, 49.538498>,  <43.790482, 40.857037, 49.639431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096138, 40.619576, 49.538498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080893, 0.476286, -0.875561,
		0.639959, 0.648639, 0.411971,
		0.764140, -0.593649, -0.252333,
		44.325378, 40.441483, 49.462799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299809, 41.324497, 49.359917>,  <43.790482, 40.857037, 49.639431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299809, 41.324497, 49.359917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.339615, 40.948463, 49.229485>,  <44.363499, 40.722843, 49.151226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.339615, 40.948463, 49.229485>,  <44.299809, 41.324497, 49.359917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339615, 40.948463, 49.229485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056142, 0.332493, -0.941433,
		0.993451, 0.075381, 0.085867,
		0.099516, -0.940088, -0.326084,
		44.369469, 40.666435, 49.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775410, 41.456806, 48.899494>,  <44.299809, 41.324497, 49.359917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775410, 41.456806, 48.899494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.632164, 41.104210, 48.776382>,  <44.546215, 40.892654, 48.702515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.632164, 41.104210, 48.776382>,  <44.775410, 41.456806, 48.899494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632164, 41.104210, 48.776382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231738, 0.235413, -0.943864,
		0.904461, -0.409338, 0.119969,
		-0.358117, -0.881489, -0.307781,
		44.524731, 40.839764, 48.684048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308994, 41.091228, 48.553921>,  <44.775410, 41.456806, 48.899494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308994, 41.091228, 48.553921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.978668, 40.909065, 48.420876>,  <44.780472, 40.799767, 48.341049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.978668, 40.909065, 48.420876>,  <45.308994, 41.091228, 48.553921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978668, 40.909065, 48.420876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367401, 0.012996, -0.929972,
		0.427844, -0.890185, 0.156587,
		-0.825813, -0.455413, -0.332615,
		44.730923, 40.772442, 48.321091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496071, 40.523781, 48.125458>,  <45.308994, 41.091228, 48.553921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496071, 40.523781, 48.125458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.124931, 40.634903, 48.025917>,  <44.902248, 40.701576, 47.966194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.124931, 40.634903, 48.025917>,  <45.496071, 40.523781, 48.125458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124931, 40.634903, 48.025917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222902, -0.121905, -0.967188,
		-0.299025, -0.952871, 0.051186,
		-0.927846, 0.277804, -0.248850,
		44.846577, 40.718243, 47.951263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271000, 40.008438, 47.776524>,  <45.496071, 40.523781, 48.125458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271000, 40.008438, 47.776524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.027405, 40.298279, 47.647472>,  <44.881248, 40.472183, 47.570042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.027405, 40.298279, 47.647472>,  <45.271000, 40.008438, 47.776524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027405, 40.298279, 47.647472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170298, -0.277818, -0.945418,
		-0.774683, -0.630690, 0.045789,
		-0.608987, 0.724602, -0.322626,
		44.844707, 40.515659, 47.550686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785545, 39.741730, 47.146729>,  <45.271000, 40.008438, 47.776524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785545, 39.741730, 47.146729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.760303, 40.140915, 47.142944>,  <44.745159, 40.380424, 47.140675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.760303, 40.140915, 47.142944>,  <44.785545, 39.741730, 47.146729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760303, 40.140915, 47.142944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037715, -0.011857, -0.999218,
		-0.997294, -0.062701, 0.038387,
		-0.063107, 0.997962, -0.009460,
		44.741371, 40.440304, 47.140106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182030, 39.934643, 46.674240>,  <44.785545, 39.741730, 47.146729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182030, 39.934643, 46.674240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.444695, 40.235802, 46.691837>,  <44.602295, 40.416496, 46.702396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.444695, 40.235802, 46.691837>,  <44.182030, 39.934643, 46.674240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444695, 40.235802, 46.691837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060345, 0.110592, -0.992032,
		-0.751765, 0.648777, 0.118056,
		0.656664, 0.752900, 0.043989,
		44.641693, 40.461670, 46.705032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996357, 40.323772, 46.084980>,  <44.182030, 39.934643, 46.674240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996357, 40.323772, 46.084980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.370438, 40.432732, 46.175495>,  <44.594887, 40.498108, 46.229805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.370438, 40.432732, 46.175495>,  <43.996357, 40.323772, 46.084980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370438, 40.432732, 46.175495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224495, 0.038170, -0.973727,
		-0.273877, 0.961428, -0.025455,
		0.935197, 0.272396, 0.226289,
		44.650997, 40.514450, 46.243382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109123, 40.878742, 45.582764>,  <43.996357, 40.323772, 46.084980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109123, 40.878742, 45.582764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.473228, 40.763123, 45.701340>,  <44.691692, 40.693752, 45.772484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.473228, 40.763123, 45.701340>,  <44.109123, 40.878742, 45.582764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473228, 40.763123, 45.701340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346381, 0.139408, -0.927678,
		0.226816, 0.947110, 0.227018,
		0.910261, -0.289047, 0.296441,
		44.746307, 40.676407, 45.790272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362041, 40.853889, 45.413437>,  <44.109123, 40.878742, 45.582764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362041, 40.853889, 45.413437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.116241, 40.551140, 45.324413>,  <42.968761, 40.369492, 45.271000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.116241, 40.551140, 45.324413>,  <43.362041, 40.853889, 45.413437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116241, 40.551140, 45.324413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193887, -0.128568, 0.972563,
		-0.764721, 0.640791, -0.067743,
		-0.614500, -0.756874, -0.222559,
		42.931892, 40.324078, 45.257645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839527, 40.981724, 45.751369>,  <43.362041, 40.853889, 45.413437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839527, 40.981724, 45.751369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.779091, 40.590523, 45.693836>,  <42.742828, 40.355804, 45.659317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.779091, 40.590523, 45.693836>,  <42.839527, 40.981724, 45.751369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779091, 40.590523, 45.693836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313383, -0.090610, 0.945294,
		-0.937530, 0.187898, -0.292798,
		-0.151089, -0.978000, -0.143833,
		42.733765, 40.297123, 45.650684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183910, 40.850082, 45.962669>,  <42.839527, 40.981724, 45.751369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183910, 40.850082, 45.962669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.337883, 40.480911, 45.960274>,  <42.430267, 40.259411, 45.958836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.337883, 40.480911, 45.960274>,  <42.183910, 40.850082, 45.962669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337883, 40.480911, 45.960274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454415, -0.195166, 0.869148,
		-0.803326, -0.331846, -0.494516,
		0.384935, -0.922924, -0.005986,
		42.453365, 40.204033, 45.958477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669895, 40.443619, 46.245510>,  <42.183910, 40.850082, 45.962669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669895, 40.443619, 46.245510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.992233, 40.209686, 46.282558>,  <42.185638, 40.069324, 46.304787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.992233, 40.209686, 46.282558>,  <41.669895, 40.443619, 46.245510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992233, 40.209686, 46.282558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274068, -0.229750, 0.933864,
		-0.524878, -0.777935, -0.345428,
		0.805848, -0.584835, 0.092616,
		42.233986, 40.034237, 46.310345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411205, 39.823711, 46.384762>,  <41.669895, 40.443619, 46.245510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411205, 39.823711, 46.384762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794060, 39.825882, 46.500603>,  <42.023773, 39.827183, 46.570107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.794060, 39.825882, 46.500603>,  <41.411205, 39.823711, 46.384762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794060, 39.825882, 46.500603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274579, -0.301347, 0.913125,
		0.092226, -0.953499, -0.286939,
		0.957132, 0.005426, 0.289603,
		42.081200, 39.827511, 46.587482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493137, 39.261681, 46.720154>,  <41.411205, 39.823711, 46.384762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493137, 39.261681, 46.720154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787033, 39.502914, 46.844372>,  <41.963371, 39.647655, 46.918903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787033, 39.502914, 46.844372>,  <41.493137, 39.261681, 46.720154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787033, 39.502914, 46.844372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158371, -0.292643, 0.943016,
		0.659602, -0.742054, -0.119505,
		0.734741, 0.603089, 0.310547,
		42.007454, 39.683842, 46.937534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992683, 38.842678, 47.122128>,  <41.493137, 39.261681, 46.720154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992683, 38.842678, 47.122128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057594, 39.224258, 47.223042>,  <42.096539, 39.453205, 47.283588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.057594, 39.224258, 47.223042>,  <41.992683, 38.842678, 47.122128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057594, 39.224258, 47.223042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008398, -0.257000, 0.966375,
		0.986710, -0.154698, -0.049716,
		0.162273, 0.953950, 0.252285,
		42.106277, 39.510445, 47.298725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458405, 38.788811, 47.698811>,  <41.992683, 38.842678, 47.122128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458405, 38.788811, 47.698811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.295158, 39.153496, 47.717655>,  <42.197212, 39.372307, 47.728962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.295158, 39.153496, 47.717655>,  <42.458405, 38.788811, 47.698811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295158, 39.153496, 47.717655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001373, -0.052215, 0.998635,
		0.912929, 0.407494, 0.022561,
		-0.408116, 0.911714, 0.047110,
		42.172722, 39.427010, 47.731789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778889, 39.056404, 48.333405>,  <42.458405, 38.788811, 47.698811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778889, 39.056404, 48.333405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.460938, 39.289322, 48.265175>,  <42.270164, 39.429073, 48.224236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.460938, 39.289322, 48.265175>,  <42.778889, 39.056404, 48.333405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460938, 39.289322, 48.265175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088040, 0.167462, 0.981940,
		0.600343, 0.795543, -0.081848,
		-0.794882, 0.582295, -0.170574,
		42.222473, 39.464012, 48.214005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835571, 39.621025, 48.805576>,  <42.778889, 39.056404, 48.333405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835571, 39.621025, 48.805576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452400, 39.580437, 48.698189>,  <42.222496, 39.556084, 48.633759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452400, 39.580437, 48.698189>,  <42.835571, 39.621025, 48.805576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452400, 39.580437, 48.698189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261252, -0.078971, 0.962035,
		-0.118821, 0.991699, 0.049139,
		-0.957930, -0.101472, -0.268466,
		42.165020, 39.549995, 48.617649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510685, 40.045998, 49.323608>,  <42.835571, 39.621025, 48.805576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510685, 40.045998, 49.323608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.230942, 39.795830, 49.185188>,  <42.063095, 39.645729, 49.102135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.230942, 39.795830, 49.185188>,  <42.510685, 40.045998, 49.323608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230942, 39.795830, 49.185188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388909, -0.073248, 0.918360,
		-0.599706, 0.776844, -0.192004,
		-0.699359, -0.625418, -0.346049,
		42.021133, 39.608204, 49.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036114, 40.092487, 49.813675>,  <42.510685, 40.045998, 49.323608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036114, 40.092487, 49.813675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901497, 39.769409, 49.620026>,  <41.820728, 39.575562, 49.503838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.901497, 39.769409, 49.620026>,  <42.036114, 40.092487, 49.813675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901497, 39.769409, 49.620026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263353, -0.412868, 0.871886,
		-0.904093, 0.420922, -0.073760,
		-0.336543, -0.807691, -0.484122,
		41.800533, 39.527103, 49.474789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329746, 40.063179, 49.930168>,  <42.036114, 40.092487, 49.813675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329746, 40.063179, 49.930168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423798, 39.680496, 49.861553>,  <41.480228, 39.450886, 49.820385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.423798, 39.680496, 49.861553>,  <41.329746, 40.063179, 49.930168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423798, 39.680496, 49.861553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469418, -0.266312, 0.841858,
		-0.851095, -0.117419, -0.511712,
		0.235125, -0.956708, -0.171538,
		41.494335, 39.393482, 49.810093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678741, 39.572815, 49.919037>,  <41.329746, 40.063179, 49.930168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678741, 39.572815, 49.919037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979248, 39.319702, 49.994064>,  <41.159554, 39.167835, 50.039082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.979248, 39.319702, 49.994064>,  <40.678741, 39.572815, 49.919037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979248, 39.319702, 49.994064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475701, -0.322163, 0.818486,
		-0.457497, -0.704129, -0.543046,
		0.751269, -0.632782, 0.187566,
		41.204628, 39.129868, 50.050335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426979, 38.853184, 49.945831>,  <40.678741, 39.572815, 49.919037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426979, 38.853184, 49.945831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774376, 38.831116, 50.142879>,  <40.982815, 38.817875, 50.261108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.774376, 38.831116, 50.142879>,  <40.426979, 38.853184, 49.945831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774376, 38.831116, 50.142879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434110, -0.564426, 0.702119,
		0.239313, -0.823638, -0.514150,
		0.868491, -0.055171, 0.492624,
		41.034924, 38.814564, 50.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445499, 38.193958, 50.192570>,  <40.426979, 38.853184, 49.945831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445499, 38.193958, 50.192570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747154, 38.349823, 50.404018>,  <40.928146, 38.443344, 50.530888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.747154, 38.349823, 50.404018>,  <40.445499, 38.193958, 50.192570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747154, 38.349823, 50.404018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242007, -0.583395, 0.775295,
		0.610498, -0.712609, -0.345659,
		0.754138, 0.389664, 0.528618,
		40.973396, 38.466721, 50.562603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708439, 37.679798, 50.569405>,  <40.445499, 38.193958, 50.192570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708439, 37.679798, 50.569405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869812, 38.000023, 50.746643>,  <40.966637, 38.192158, 50.852985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.869812, 38.000023, 50.746643>,  <40.708439, 37.679798, 50.569405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869812, 38.000023, 50.746643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042992, -0.467134, 0.883141,
		0.913997, -0.375341, -0.154042,
		0.403437, 0.800565, 0.443096,
		40.990845, 38.240192, 50.879570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260036, 37.454945, 50.929955>,  <40.708439, 37.679798, 50.569405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260036, 37.454945, 50.929955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233620, 37.802582, 51.126045>,  <41.217770, 38.011162, 51.243698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.233620, 37.802582, 51.126045>,  <41.260036, 37.454945, 50.929955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233620, 37.802582, 51.126045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138205, -0.478596, 0.867090,
		0.988200, 0.125013, -0.088507,
		-0.066038, 0.869090, 0.490226,
		41.213810, 38.063309, 51.273113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.958385, 37.578308, 51.688732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632446, 37.801514, 51.751537>,  <41.436882, 37.935436, 51.789219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.632446, 37.801514, 51.751537>,  <41.958385, 37.578308, 51.688732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632446, 37.801514, 51.751537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023735, -0.238511, 0.970850,
		0.579193, 0.794818, 0.181105,
		-0.814845, 0.558011, 0.157009,
		41.387993, 37.968918, 51.798641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102188, 38.028862, 52.258148>,  <41.958385, 37.578308, 51.688732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102188, 38.028862, 52.258148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702862, 38.018463, 52.237419>,  <41.463264, 38.012226, 52.224979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.702862, 38.018463, 52.237419>,  <42.102188, 38.028862, 52.258148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702862, 38.018463, 52.237419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043967, -0.243284, 0.968958,
		-0.037795, 0.969607, 0.241732,
		-0.998318, -0.025993, -0.051825,
		41.403366, 38.010666, 52.221870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881260, 38.427845, 52.771797>,  <42.102188, 38.028862, 52.258148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881260, 38.427845, 52.771797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.571564, 38.182487, 52.709438>,  <41.385746, 38.035271, 52.672024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.571564, 38.182487, 52.709438>,  <41.881260, 38.427845, 52.771797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571564, 38.182487, 52.709438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134276, -0.081516, 0.987586,
		-0.618489, 0.785558, -0.019252,
		-0.774236, -0.613395, -0.155898,
		41.339294, 37.998470, 52.662670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426910, 38.716343, 53.231823>,  <41.881260, 38.427845, 52.771797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426910, 38.716343, 53.231823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287857, 38.347008, 53.166580>,  <41.204426, 38.125408, 53.127434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287857, 38.347008, 53.166580>,  <41.426910, 38.716343, 53.231823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287857, 38.347008, 53.166580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213078, -0.091611, 0.972731,
		-0.913100, 0.372905, -0.164896,
		-0.347630, -0.923336, -0.163108,
		41.183567, 38.070007, 53.117649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987282, 38.659397, 53.784019>,  <41.426910, 38.716343, 53.231823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987282, 38.659397, 53.784019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.022381, 38.280243, 53.661499>,  <41.043442, 38.052750, 53.587986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.022381, 38.280243, 53.661499>,  <40.987282, 38.659397, 53.784019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022381, 38.280243, 53.661499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134022, -0.315922, 0.939272,
		-0.987086, -0.041368, -0.154758,
		0.087747, -0.947883, -0.306298,
		41.048706, 37.995876, 53.569611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447235, 38.256599, 54.067390>,  <40.987282, 38.659397, 53.784019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447235, 38.256599, 54.067390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744270, 38.007828, 53.967976>,  <40.922493, 37.858566, 53.908329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744270, 38.007828, 53.967976>,  <40.447235, 38.256599, 54.067390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744270, 38.007828, 53.967976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085245, -0.455835, 0.885973,
		-0.664298, -0.636729, -0.391515,
		0.742590, -0.621925, -0.248533,
		40.967049, 37.821251, 53.893417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282597, 37.685223, 54.337795>,  <40.447235, 38.256599, 54.067390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282597, 37.685223, 54.337795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.672230, 37.610107, 54.287357>,  <40.906010, 37.565037, 54.257095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.672230, 37.610107, 54.287357>,  <40.282597, 37.685223, 54.337795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672230, 37.610107, 54.287357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011727, -0.514794, 0.857234,
		-0.225894, -0.836494, -0.499249,
		0.974081, -0.187790, -0.126098,
		40.964455, 37.553772, 54.249527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301319, 37.050087, 54.671997>,  <40.282597, 37.685223, 54.337795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301319, 37.050087, 54.671997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676292, 37.188828, 54.659958>,  <40.901276, 37.272072, 54.652733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676292, 37.188828, 54.659958>,  <40.301319, 37.050087, 54.671997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676292, 37.188828, 54.659958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205574, -0.481675, 0.851897,
		0.280981, -0.804788, -0.522844,
		0.937437, 0.346850, -0.030102,
		40.957523, 37.292881, 54.650928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863075, 36.452526, 54.896355>,  <40.301319, 37.050087, 54.671997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863075, 36.452526, 54.896355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028946, 36.811890, 54.954185>,  <41.128468, 37.027508, 54.988884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028946, 36.811890, 54.954185>,  <40.863075, 36.452526, 54.896355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028946, 36.811890, 54.954185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300919, -0.285327, 0.909965,
		0.858775, -0.333833, -0.388666,
		0.414673, 0.898412, 0.144575,
		41.153347, 37.081413, 54.997559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395298, 36.255180, 55.144409>,  <40.863075, 36.452526, 54.896355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395298, 36.255180, 55.144409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.342468, 36.635162, 55.257641>,  <41.310768, 36.863152, 55.325581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.342468, 36.635162, 55.257641>,  <41.395298, 36.255180, 55.144409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342468, 36.635162, 55.257641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028404, -0.281837, 0.959042,
		0.990832, 0.134709, 0.010242,
		-0.132078, 0.949959, 0.283080,
		41.302845, 36.920151, 55.342564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692696, 36.369167, 55.745911>,  <41.395298, 36.255180, 55.144409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692696, 36.369167, 55.745911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478607, 36.701675, 55.805954>,  <41.350155, 36.901180, 55.841980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.478607, 36.701675, 55.805954>,  <41.692696, 36.369167, 55.745911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478607, 36.701675, 55.805954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000548, -0.177361, 0.984146,
		0.844710, 0.526820, 0.094473,
		-0.535224, 0.831266, 0.150107,
		41.318039, 36.951054, 55.850986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922096, 36.689419, 56.374226>,  <41.692696, 36.369167, 55.745911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922096, 36.689419, 56.374226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.564415, 36.856911, 56.310886>,  <41.349808, 36.957405, 56.272884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.564415, 36.856911, 56.310886>,  <41.922096, 36.689419, 56.374226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564415, 36.856911, 56.310886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172393, 0.004345, 0.985019,
		0.413142, 0.908102, 0.068300,
		-0.894201, 0.418727, -0.158345,
		41.296154, 36.982529, 56.263382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905190, 37.256340, 56.763515>,  <41.922096, 36.689419, 56.374226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905190, 37.256340, 56.763515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522186, 37.167854, 56.689495>,  <41.292385, 37.114761, 56.645084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.522186, 37.167854, 56.689495>,  <41.905190, 37.256340, 56.763515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522186, 37.167854, 56.689495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183516, -0.027651, 0.982628,
		-0.222487, 0.974833, -0.014120,
		-0.957508, -0.221214, -0.185050,
		41.234936, 37.101490, 56.633980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597652, 37.688019, 57.215034>,  <41.905190, 37.256340, 56.763515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597652, 37.688019, 57.215034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313934, 37.419754, 57.128212>,  <41.143703, 37.258797, 57.076118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313934, 37.419754, 57.128212>,  <41.597652, 37.688019, 57.215034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313934, 37.419754, 57.128212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266159, -0.030322, 0.963452,
		-0.652728, 0.741147, -0.156994,
		-0.709300, -0.670657, -0.217055,
		41.101143, 37.218555, 57.063095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949268, 37.908161, 57.596767>,  <41.597652, 37.688019, 57.215034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949268, 37.908161, 57.596767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889076, 37.525330, 57.497696>,  <40.852959, 37.295631, 57.438251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.889076, 37.525330, 57.497696>,  <40.949268, 37.908161, 57.596767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889076, 37.525330, 57.497696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413318, -0.166682, 0.895202,
		-0.898066, 0.237085, -0.370496,
		-0.150484, -0.957083, -0.247683,
		40.843929, 37.238205, 57.423389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136333, 37.857479, 57.734436>,  <40.949268, 37.908161, 57.596767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136333, 37.857479, 57.734436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323952, 37.504982, 57.757797>,  <40.436523, 37.293484, 57.771816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.323952, 37.504982, 57.757797>,  <40.136333, 37.857479, 57.734436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323952, 37.504982, 57.757797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429298, -0.169707, 0.887075,
		-0.771814, -0.441154, -0.457915,
		0.469048, -0.881239, 0.058405,
		40.464664, 37.240612, 57.775318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639919, 37.266441, 57.907379>,  <40.136333, 37.857479, 57.734436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639919, 37.266441, 57.907379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993931, 37.100548, 57.991966>,  <40.206337, 37.001011, 58.042717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993931, 37.100548, 57.991966>,  <39.639919, 37.266441, 57.907379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993931, 37.100548, 57.991966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280431, -0.112374, 0.953274,
		-0.371588, -0.902979, -0.215758,
		0.885032, -0.414730, 0.211466,
		40.259441, 36.976128, 58.055405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448189, 36.524948, 58.218903>,  <39.639919, 37.266441, 57.907379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448189, 36.524948, 58.218903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.809738, 36.664543, 58.317879>,  <40.026669, 36.748299, 58.377266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.809738, 36.664543, 58.317879>,  <39.448189, 36.524948, 58.218903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809738, 36.664543, 58.317879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258409, -0.015587, 0.965910,
		0.340945, -0.936999, 0.076092,
		0.903870, 0.348984, 0.247444,
		40.080898, 36.769238, 58.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658783, 36.014011, 58.681541>,  <39.448189, 36.524948, 58.218903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658783, 36.014011, 58.681541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891220, 36.335022, 58.735611>,  <40.030682, 36.527630, 58.768051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.891220, 36.335022, 58.735611>,  <39.658783, 36.014011, 58.681541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891220, 36.335022, 58.735611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253108, 0.020357, 0.967224,
		0.773475, -0.596263, 0.214956,
		0.581096, 0.802531, 0.135173,
		40.065548, 36.575783, 58.776161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987587, 35.915413, 59.375507>,  <39.658783, 36.014011, 58.681541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987587, 35.915413, 59.375507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008568, 36.302055, 59.275169>,  <40.021156, 36.534042, 59.214966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008568, 36.302055, 59.275169>,  <39.987587, 35.915413, 59.375507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008568, 36.302055, 59.275169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260452, 0.255739, 0.931001,
		0.964061, 0.016500, 0.265169,
		0.052453, 0.966605, -0.250846,
		40.024303, 36.592037, 59.199917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298000, 36.256763, 60.005398>,  <39.987587, 35.915413, 59.375507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298000, 36.256763, 60.005398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138870, 36.547325, 59.781227>,  <40.043392, 36.721661, 59.646725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138870, 36.547325, 59.781227>,  <40.298000, 36.256763, 60.005398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138870, 36.547325, 59.781227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544207, 0.304947, 0.781566,
		0.738632, 0.615912, 0.273999,
		-0.397821, 0.726402, -0.560427,
		40.019524, 36.765247, 59.613098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398712, 36.765579, 60.469032>,  <40.298000, 36.256763, 60.005398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398712, 36.765579, 60.469032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127655, 36.869072, 60.193680>,  <39.965023, 36.931168, 60.028469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127655, 36.869072, 60.193680>,  <40.398712, 36.765579, 60.469032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127655, 36.869072, 60.193680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555496, 0.433313, 0.709693,
		0.481902, 0.863307, -0.149906,
		-0.677639, 0.258731, -0.688378,
		39.924362, 36.946690, 59.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523125, 37.523857, 60.267521>,  <40.398712, 36.765579, 60.469032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523125, 37.523857, 60.267521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.161530, 37.352928, 60.261864>,  <39.944572, 37.250370, 60.258469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.161530, 37.352928, 60.261864>,  <40.523125, 37.523857, 60.267521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161530, 37.352928, 60.261864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306580, 0.624799, 0.718077,
		-0.298018, 0.653468, -0.695820,
		-0.903988, -0.427324, -0.014139,
		39.890335, 37.224731, 60.257622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048504, 38.011669, 60.177044>,  <40.523125, 37.523857, 60.267521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048504, 38.011669, 60.177044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853634, 37.716408, 60.363716>,  <39.736710, 37.539249, 60.475719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853634, 37.716408, 60.363716>,  <40.048504, 38.011669, 60.177044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853634, 37.716408, 60.363716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181077, 0.608150, 0.772894,
		-0.854324, 0.292032, -0.429940,
		-0.487178, -0.738154, 0.466676,
		39.707481, 37.494961, 60.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437000, 38.548439, 60.497860>,  <40.048504, 38.011669, 60.177044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437000, 38.548439, 60.497860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728287, 38.592720, 60.768402>,  <40.903057, 38.619289, 60.930725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728287, 38.592720, 60.768402>,  <40.437000, 38.548439, 60.497860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728287, 38.592720, 60.768402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666695, 0.114273, -0.736518,
		-0.158822, 0.987262, 0.009411,
		0.728212, 0.110701, 0.676352,
		40.946751, 38.625931, 60.971306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829231, 39.036980, 60.315456>,  <40.437000, 38.548439, 60.497860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829231, 39.036980, 60.315456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092453, 38.849190, 60.550934>,  <41.250385, 38.736515, 60.692223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.092453, 38.849190, 60.550934>,  <40.829231, 39.036980, 60.315456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092453, 38.849190, 60.550934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716700, 0.150786, -0.680885,
		0.230890, 0.869976, 0.435697,
		0.658051, -0.469474, 0.588697,
		41.289867, 38.708347, 60.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366440, 39.462967, 60.317032>,  <40.829231, 39.036980, 60.315456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366440, 39.462967, 60.317032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.537430, 39.126389, 60.449234>,  <41.640026, 38.924442, 60.528557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.537430, 39.126389, 60.449234>,  <41.366440, 39.462967, 60.317032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537430, 39.126389, 60.449234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808967, 0.192859, -0.555318,
		0.403527, 0.504755, 0.763143,
		0.427478, -0.841444, 0.330507,
		41.665672, 38.873955, 60.548386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109722, 39.532249, 60.548832>,  <41.366440, 39.462967, 60.317032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109722, 39.532249, 60.548832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.092979, 39.145882, 60.446663>,  <42.082935, 38.914059, 60.385361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.092979, 39.145882, 60.446663>,  <42.109722, 39.532249, 60.548832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092979, 39.145882, 60.446663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623612, 0.174477, -0.762015,
		0.780613, -0.191179, 0.595058,
		-0.041857, -0.965924, -0.255421,
		42.080421, 38.856106, 60.370037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871113, 39.346436, 60.226295>,  <42.109722, 39.532249, 60.548832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871113, 39.346436, 60.226295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634590, 39.053116, 60.092056>,  <42.492676, 38.877125, 60.011513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.634590, 39.053116, 60.092056>,  <42.871113, 39.346436, 60.226295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634590, 39.053116, 60.092056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557058, -0.070490, -0.827477,
		0.583132, -0.676241, 0.450172,
		-0.591306, -0.733300, -0.335601,
		42.457199, 38.833126, 59.991375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380539, 38.818031, 59.956135>,  <42.871113, 39.346436, 60.226295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380539, 38.818031, 59.956135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021626, 38.740021, 59.797718>,  <42.806278, 38.693214, 59.702667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021626, 38.740021, 59.797718>,  <43.380539, 38.818031, 59.956135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021626, 38.740021, 59.797718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435693, -0.246759, -0.865611,
		0.071094, -0.949249, 0.306386,
		-0.897283, -0.195030, -0.396037,
		42.752441, 38.681511, 59.678905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514374, 38.337223, 59.530960>,  <43.380539, 38.818031, 59.956135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514374, 38.337223, 59.530960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161285, 38.481705, 59.410728>,  <42.949432, 38.568394, 59.338589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161285, 38.481705, 59.410728>,  <43.514374, 38.337223, 59.530960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161285, 38.481705, 59.410728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240282, -0.202750, -0.949293,
		-0.403827, -0.910179, 0.092181,
		-0.882717, 0.361201, -0.300575,
		42.896469, 38.590065, 59.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135185, 37.824104, 59.088421>,  <43.514374, 38.337223, 59.530960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135185, 37.824104, 59.088421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.998482, 38.193398, 59.018173>,  <42.916458, 38.414974, 58.976025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.998482, 38.193398, 59.018173>,  <43.135185, 37.824104, 59.088421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998482, 38.193398, 59.018173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179185, -0.247453, -0.952187,
		-0.922547, -0.293953, 0.249999,
		-0.341762, 0.923233, -0.175615,
		42.895954, 38.470367, 58.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776405, 37.740082, 58.416065>,  <43.135185, 37.824104, 59.088421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776405, 37.740082, 58.416065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731079, 38.137077, 58.434525>,  <42.703884, 38.375275, 58.445599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.731079, 38.137077, 58.434525>,  <42.776405, 37.740082, 58.416065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731079, 38.137077, 58.434525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057895, 0.052960, -0.996917,
		-0.991871, -0.110291, -0.063461,
		-0.113312, 0.992487, 0.046144,
		42.697086, 38.434822, 58.448368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243370, 37.950020, 57.863075>,  <42.776405, 37.740082, 58.416065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243370, 37.950020, 57.863075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455269, 38.279564, 57.943695>,  <42.582409, 38.477291, 57.992069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455269, 38.279564, 57.943695>,  <42.243370, 37.950020, 57.863075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455269, 38.279564, 57.943695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013334, 0.229516, -0.973213,
		-0.848054, 0.518240, 0.110599,
		0.529743, 0.823862, 0.201552,
		42.614193, 38.526722, 58.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895592, 38.436996, 57.420403>,  <42.243370, 37.950020, 57.863075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895592, 38.436996, 57.420403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257870, 38.590157, 57.493172>,  <42.475239, 38.682053, 57.536835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.257870, 38.590157, 57.493172>,  <41.895592, 38.436996, 57.420403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257870, 38.590157, 57.493172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129849, 0.157949, -0.978873,
		-0.403549, 0.910185, 0.093334,
		0.905697, 0.382903, 0.181927,
		42.529579, 38.705029, 57.547749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014229, 38.920856, 56.951069>,  <41.895592, 38.436996, 57.420403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014229, 38.920856, 56.951069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.395679, 38.857147, 57.053226>,  <42.624550, 38.818924, 57.114521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.395679, 38.857147, 57.053226>,  <42.014229, 38.920856, 56.951069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395679, 38.857147, 57.053226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295369, 0.332000, -0.895842,
		0.057888, 0.929736, 0.363648,
		0.953628, -0.159269, 0.255396,
		42.681767, 38.809368, 57.129845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248554, 39.327023, 56.544300>,  <42.014229, 38.920856, 56.951069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248554, 39.327023, 56.544300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.542801, 39.078499, 56.652260>,  <42.719349, 38.929386, 56.717037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.542801, 39.078499, 56.652260>,  <42.248554, 39.327023, 56.544300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542801, 39.078499, 56.652260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333563, -0.014545, -0.942616,
		0.589581, 0.783431, 0.196546,
		0.735615, -0.621309, 0.269899,
		42.763485, 38.892105, 56.733231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833767, 39.589474, 56.138180>,  <42.248554, 39.327023, 56.544300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833767, 39.589474, 56.138180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891136, 39.208763, 56.246658>,  <42.925556, 38.980335, 56.311745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.891136, 39.208763, 56.246658>,  <42.833767, 39.589474, 56.138180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891136, 39.208763, 56.246658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317734, -0.215236, -0.923428,
		0.937271, 0.218604, 0.271544,
		0.143419, -0.951780, 0.271192,
		42.934162, 38.923229, 56.328014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459103, 39.496475, 55.906948>,  <42.833767, 39.589474, 56.138180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459103, 39.496475, 55.906948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.303104, 39.132645, 55.964314>,  <43.209503, 38.914345, 55.998734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.303104, 39.132645, 55.964314>,  <43.459103, 39.496475, 55.906948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303104, 39.132645, 55.964314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391380, -0.304721, -0.868313,
		0.833500, -0.282511, 0.474831,
		-0.389999, -0.909578, 0.143416,
		43.186104, 38.859772, 56.007339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977406, 39.127476, 55.718811>,  <43.459103, 39.496475, 55.906948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977406, 39.127476, 55.718811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.668808, 38.876511, 55.676552>,  <43.483650, 38.725933, 55.651196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.668808, 38.876511, 55.676552>,  <43.977406, 39.127476, 55.718811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668808, 38.876511, 55.676552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414777, -0.370054, -0.831276,
		0.482455, -0.685142, 0.545727,
		-0.771490, -0.627409, -0.105647,
		43.437363, 38.688290, 55.644859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250942, 38.492809, 55.597775>,  <43.977406, 39.127476, 55.718811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250942, 38.492809, 55.597775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879494, 38.507668, 55.450104>,  <43.656624, 38.516582, 55.361500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879494, 38.507668, 55.450104>,  <44.250942, 38.492809, 55.597775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879494, 38.507668, 55.450104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341819, -0.301386, -0.890127,
		-0.144326, -0.952778, 0.267176,
		-0.928617, 0.037143, -0.369176,
		43.600910, 38.518810, 55.339352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178669, 37.840786, 55.253853>,  <44.250942, 38.492809, 55.597775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178669, 37.840786, 55.253853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.906082, 38.095673, 55.109875>,  <43.742531, 38.248604, 55.023487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.906082, 38.095673, 55.109875>,  <44.178669, 37.840786, 55.253853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906082, 38.095673, 55.109875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236984, -0.273193, -0.932311,
		-0.692414, -0.720643, 0.035164,
		-0.681470, 0.637212, -0.359943,
		43.701641, 38.286835, 55.001892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918362, 37.484081, 54.727226>,  <44.178669, 37.840786, 55.253853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918362, 37.484081, 54.727226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.828278, 37.863930, 54.640053>,  <43.774227, 38.091839, 54.587749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.828278, 37.863930, 54.640053>,  <43.918362, 37.484081, 54.727226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828278, 37.863930, 54.640053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231023, -0.165258, -0.958811,
		-0.946525, -0.266280, -0.182168,
		-0.225208, 0.949623, -0.217938,
		43.760715, 38.148815, 54.574673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739834, 37.498688, 53.938686>,  <43.918362, 37.484081, 54.727226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739834, 37.498688, 53.938686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832550, 37.872696, 54.046024>,  <43.888180, 38.097099, 54.110428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.832550, 37.872696, 54.046024>,  <43.739834, 37.498688, 53.938686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832550, 37.872696, 54.046024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367117, 0.171380, -0.914250,
		-0.900832, 0.310429, -0.303538,
		0.231790, 0.935020, 0.268348,
		43.902088, 38.153202, 54.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.477962, 38.410606, 48.920559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570084, 38.758530, 49.095097>,  <41.625355, 38.967281, 49.199821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.570084, 38.758530, 49.095097>,  <41.477962, 38.410606, 48.920559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570084, 38.758530, 49.095097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120675, 0.419414, -0.899739,
		-0.965608, 0.259867, -0.008372,
		0.230301, 0.869805, 0.436349,
		41.639175, 39.019470, 49.226002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056572, 38.826569, 48.649120>,  <41.477962, 38.410606, 48.920559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056572, 38.826569, 48.649120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374168, 39.048378, 48.748775>,  <41.564728, 39.181465, 48.808571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.374168, 39.048378, 48.748775>,  <41.056572, 38.826569, 48.649120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374168, 39.048378, 48.748775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000394, 0.410294, -0.911953,
		-0.607924, 0.723989, 0.325990,
		0.793996, 0.554526, 0.249142,
		41.612366, 39.214737, 48.823517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946159, 39.422680, 48.271984>,  <41.056572, 38.826569, 48.649120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946159, 39.422680, 48.271984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327225, 39.455650, 48.389038>,  <41.555866, 39.475433, 48.459270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.327225, 39.455650, 48.389038>,  <40.946159, 39.422680, 48.271984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327225, 39.455650, 48.389038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235796, 0.407277, -0.882341,
		-0.191908, 0.909578, 0.368564,
		0.952666, 0.082423, 0.292634,
		41.613026, 39.480377, 48.476830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114460, 40.129982, 48.053982>,  <40.946159, 39.422680, 48.271984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114460, 40.129982, 48.053982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470390, 39.953987, 48.102345>,  <41.683949, 39.848392, 48.131363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.470390, 39.953987, 48.102345>,  <41.114460, 40.129982, 48.053982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470390, 39.953987, 48.102345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293613, 0.349280, -0.889829,
		0.349280, 0.827295, 0.439984,
		0.889829, -0.439984, 0.120908,
		41.737339, 39.821991, 48.138618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634827, 40.621651, 47.693687>,  <41.114460, 40.129982, 48.053982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634827, 40.621651, 47.693687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.809429, 40.262703, 47.719597>,  <41.914188, 40.047337, 47.735142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.809429, 40.262703, 47.719597>,  <41.634827, 40.621651, 47.693687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809429, 40.262703, 47.719597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482256, 0.172585, -0.858862,
		0.759535, 0.406136, 0.508095,
		0.436504, -0.897367, 0.064777,
		41.940380, 39.993492, 47.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415615, 40.786961, 47.536335>,  <41.634827, 40.621651, 47.693687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415615, 40.786961, 47.536335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299637, 40.409370, 47.473297>,  <42.230049, 40.182816, 47.435474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.299637, 40.409370, 47.473297>,  <42.415615, 40.786961, 47.536335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299637, 40.409370, 47.473297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212127, 0.097186, -0.972398,
		0.933238, -0.315375, 0.172064,
		-0.289948, -0.943977, -0.157597,
		42.212654, 40.126179, 47.426018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995522, 40.484379, 47.240818>,  <42.415615, 40.786961, 47.536335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995522, 40.484379, 47.240818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699898, 40.229218, 47.154213>,  <42.522526, 40.076122, 47.102249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.699898, 40.229218, 47.154213>,  <42.995522, 40.484379, 47.240818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699898, 40.229218, 47.154213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343378, -0.080211, -0.935766,
		0.579560, -0.765929, 0.278322,
		-0.739055, -0.637902, -0.216516,
		42.478180, 40.037846, 47.089256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336773, 39.808334, 46.976425>,  <42.995522, 40.484379, 47.240818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336773, 39.808334, 46.976425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956276, 39.850075, 46.860317>,  <42.727978, 39.875118, 46.790653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956276, 39.850075, 46.860317>,  <43.336773, 39.808334, 46.976425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956276, 39.850075, 46.860317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284293, -0.068525, -0.956286,
		-0.119684, -0.992177, 0.035516,
		-0.951238, 0.104355, -0.290270,
		42.670906, 39.881378, 46.773235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226044, 39.264584, 46.452187>,  <43.336773, 39.808334, 46.976425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226044, 39.264584, 46.452187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943207, 39.544998, 46.415169>,  <42.773502, 39.713245, 46.392956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943207, 39.544998, 46.415169>,  <43.226044, 39.264584, 46.452187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943207, 39.544998, 46.415169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285323, 0.163105, -0.944451,
		-0.647000, -0.694222, -0.315352,
		-0.707094, 0.701037, -0.092548,
		42.731079, 39.755310, 46.387405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977188, 39.004356, 45.869469>,  <43.226044, 39.264584, 46.452187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977188, 39.004356, 45.869469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818768, 39.368431, 45.917988>,  <42.723717, 39.586876, 45.947102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818768, 39.368431, 45.917988>,  <42.977188, 39.004356, 45.869469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818768, 39.368431, 45.917988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131233, 0.186853, -0.973583,
		-0.908804, -0.369667, -0.193448,
		-0.396048, 0.910182, 0.121301,
		42.699955, 39.641487, 45.954376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464970, 39.057281, 45.396832>,  <42.977188, 39.004356, 45.869469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464970, 39.057281, 45.396832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541428, 39.442574, 45.472355>,  <42.587303, 39.673748, 45.517670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.541428, 39.442574, 45.472355>,  <42.464970, 39.057281, 45.396832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541428, 39.442574, 45.472355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041349, 0.184278, -0.982004,
		-0.980690, 0.195514, -0.004604,
		0.191147, 0.963232, 0.188804,
		42.598770, 39.731544, 45.528996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214500, 39.385380, 44.862179>,  <42.464970, 39.057281, 45.396832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214500, 39.385380, 44.862179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403870, 39.709488, 45.000355>,  <42.517490, 39.903954, 45.083260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403870, 39.709488, 45.000355>,  <42.214500, 39.385380, 44.862179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403870, 39.709488, 45.000355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242093, 0.257377, -0.935494,
		-0.846915, 0.526509, -0.074314,
		0.473419, 0.810275, 0.345441,
		42.545895, 39.952572, 45.103989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964027, 40.105278, 44.694260>,  <42.214500, 39.385380, 44.862179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964027, 40.105278, 44.694260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361351, 40.082581, 44.734493>,  <42.599747, 40.068962, 44.758633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361351, 40.082581, 44.734493>,  <41.964027, 40.105278, 44.694260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361351, 40.082581, 44.734493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112138, 0.265708, -0.957510,
		0.027604, 0.962382, 0.270293,
		0.993309, -0.056741, 0.100585,
		42.659344, 40.065559, 44.764668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245815, 40.753796, 44.415295>,  <41.964027, 40.105278, 44.694260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245815, 40.753796, 44.415295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461544, 40.417511, 44.395943>,  <42.590981, 40.215740, 44.384331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461544, 40.417511, 44.395943>,  <42.245815, 40.753796, 44.415295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461544, 40.417511, 44.395943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261069, 0.221544, -0.939554,
		0.800611, 0.494088, 0.338967,
		0.539319, -0.840711, -0.048379,
		42.623341, 40.165298, 44.381428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840416, 41.344334, 44.091251>,  <42.245815, 40.753796, 44.415295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840416, 41.344334, 44.091251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719368, 41.722519, 44.043056>,  <41.646740, 41.949429, 44.014141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719368, 41.722519, 44.043056>,  <41.840416, 41.344334, 44.091251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719368, 41.722519, 44.043056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122553, 0.086763, 0.988662,
		0.945198, 0.313959, 0.089613,
		-0.302624, 0.945464, -0.120485,
		41.628582, 42.006157, 44.006912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145477, 41.696571, 44.722946>,  <41.840416, 41.344334, 44.091251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145477, 41.696571, 44.722946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900597, 41.978622, 44.579834>,  <41.753670, 42.147854, 44.493969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.900597, 41.978622, 44.579834>,  <42.145477, 41.696571, 44.722946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900597, 41.978622, 44.579834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210678, 0.290657, 0.933345,
		0.762122, 0.646767, -0.029384,
		-0.612197, 0.705132, -0.357776,
		41.716938, 42.190163, 44.472500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309258, 42.286034, 45.033016>,  <42.145477, 41.696571, 44.722946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309258, 42.286034, 45.033016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925041, 42.326584, 44.929409>,  <41.694511, 42.350914, 44.867245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.925041, 42.326584, 44.929409>,  <42.309258, 42.286034, 45.033016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925041, 42.326584, 44.929409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202114, 0.385395, 0.900345,
		0.191094, 0.917166, -0.349698,
		-0.960538, 0.101372, -0.259019,
		41.636879, 42.356995, 44.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110638, 43.108265, 45.186268>,  <42.309258, 42.286034, 45.033016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110638, 43.108265, 45.186268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823898, 42.829391, 45.183174>,  <41.651855, 42.662067, 45.181320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.823898, 42.829391, 45.183174>,  <42.110638, 43.108265, 45.186268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823898, 42.829391, 45.183174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281595, 0.279359, 0.917967,
		-0.637833, 0.660221, -0.396582,
		-0.716850, -0.697185, -0.007731,
		41.608845, 42.620235, 45.180855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585110, 43.420864, 45.337139>,  <42.110638, 43.108265, 45.186268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585110, 43.420864, 45.337139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.488396, 43.043129, 45.426361>,  <41.430367, 42.816486, 45.479897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.488396, 43.043129, 45.426361>,  <41.585110, 43.420864, 45.337139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488396, 43.043129, 45.426361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364162, 0.301390, 0.881221,
		-0.899402, 0.131840, -0.416767,
		-0.241789, -0.944342, 0.223059,
		41.415859, 42.759827, 45.493279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882740, 43.452942, 45.607712>,  <41.585110, 43.420864, 45.337139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882740, 43.452942, 45.607712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030464, 43.094467, 45.706066>,  <41.119099, 42.879383, 45.765079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030464, 43.094467, 45.706066>,  <40.882740, 43.452942, 45.607712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030464, 43.094467, 45.706066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292506, 0.139038, 0.946102,
		-0.882072, -0.421325, -0.210793,
		0.369308, -0.896188, 0.245882,
		41.141258, 42.825611, 45.779831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341625, 43.049664, 45.839539>,  <40.882740, 43.452942, 45.607712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341625, 43.049664, 45.839539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684036, 42.900070, 45.982285>,  <40.889484, 42.810314, 46.067932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684036, 42.900070, 45.982285>,  <40.341625, 43.049664, 45.839539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684036, 42.900070, 45.982285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336562, 0.120763, 0.933886,
		-0.392353, -0.919540, -0.022491,
		0.856029, -0.373982, 0.356864,
		40.940845, 42.787876, 46.089344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096630, 42.533539, 46.436172>,  <40.341625, 43.049664, 45.839539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096630, 42.533539, 46.436172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486851, 42.604607, 46.487915>,  <40.720982, 42.647247, 46.518963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.486851, 42.604607, 46.487915>,  <40.096630, 42.533539, 46.436172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486851, 42.604607, 46.487915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127078, -0.024218, 0.991597,
		0.179314, -0.983791, -0.001047,
		0.975550, 0.177674, 0.129361,
		40.779514, 42.657909, 46.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277805, 41.956299, 46.885777>,  <40.096630, 42.533539, 46.436172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277805, 41.956299, 46.885777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550301, 42.247787, 46.913715>,  <40.713799, 42.422680, 46.930477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550301, 42.247787, 46.913715>,  <40.277805, 41.956299, 46.885777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550301, 42.247787, 46.913715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048661, -0.050120, 0.997557,
		0.730443, -0.682972, 0.001317,
		0.681238, 0.728723, 0.069844,
		40.754673, 42.466404, 46.934669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654461, 41.679455, 47.408520>,  <40.277805, 41.956299, 46.885777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654461, 41.679455, 47.408520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.748386, 42.068214, 47.401928>,  <40.804741, 42.301472, 47.397972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.748386, 42.068214, 47.401928>,  <40.654461, 41.679455, 47.408520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748386, 42.068214, 47.401928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033421, 0.008872, 0.999402,
		0.971467, -0.235220, -0.030399,
		0.234810, 0.971902, -0.016481,
		40.818829, 42.359783, 47.396984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123283, 41.742519, 47.895527>,  <40.654461, 41.679455, 47.408520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123283, 41.742519, 47.895527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.979279, 42.115013, 47.872936>,  <40.892876, 42.338509, 47.859383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.979279, 42.115013, 47.872936>,  <41.123283, 41.742519, 47.895527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979279, 42.115013, 47.872936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107345, 0.101484, 0.989029,
		0.926751, 0.350000, -0.136499,
		-0.360012, 0.931236, -0.056480,
		40.871273, 42.394382, 47.855991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532063, 42.194408, 48.267017>,  <41.123283, 41.742519, 47.895527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532063, 42.194408, 48.267017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.199333, 42.416420, 48.268158>,  <40.999695, 42.549625, 48.268841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.199333, 42.416420, 48.268158>,  <41.532063, 42.194408, 48.267017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199333, 42.416420, 48.268158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070378, 0.100380, 0.992457,
		0.550554, 0.825754, -0.122560,
		-0.831828, 0.555026, 0.002850,
		40.949783, 42.582928, 48.269012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677208, 42.696774, 48.775383>,  <41.532063, 42.194408, 48.267017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677208, 42.696774, 48.775383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280113, 42.671799, 48.734253>,  <41.041855, 42.656815, 48.709576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280113, 42.671799, 48.734253>,  <41.677208, 42.696774, 48.775383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280113, 42.671799, 48.734253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110820, 0.142136, 0.983624,
		-0.046801, 0.987876, -0.148024,
		-0.992738, -0.062438, -0.102825,
		40.982292, 42.653069, 48.703407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493385, 43.240757, 49.318180>,  <41.677208, 42.696774, 48.775383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493385, 43.240757, 49.318180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178501, 43.013977, 49.221130>,  <40.989571, 42.877907, 49.162903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.178501, 43.013977, 49.221130>,  <41.493385, 43.240757, 49.318180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178501, 43.013977, 49.221130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374442, 0.126834, 0.918535,
		-0.489994, 0.813927, -0.312136,
		-0.787210, -0.566953, -0.242621,
		40.942337, 42.843891, 49.148346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282253, 43.982872, 49.092651>,  <41.493385, 43.240757, 49.318180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282253, 43.982872, 49.092651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202587, 44.313004, 49.303997>,  <41.154789, 44.511082, 49.430805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202587, 44.313004, 49.303997>,  <41.282253, 43.982872, 49.092651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202587, 44.313004, 49.303997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039355, 0.545467, -0.837208,
		-0.979176, -0.145946, -0.141116,
		-0.199161, 0.825328, 0.528365,
		41.142838, 44.560600, 49.462505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776512, 44.357887, 48.791965>,  <41.282253, 43.982872, 49.092651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776512, 44.357887, 48.791965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.009628, 44.616692, 48.988632>,  <41.149498, 44.771973, 49.106632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.009628, 44.616692, 48.988632>,  <40.776512, 44.357887, 48.791965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009628, 44.616692, 48.988632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190202, 0.479626, -0.856611,
		-0.790051, 0.592739, 0.156458,
		0.582788, 0.647008, 0.491670,
		41.184464, 44.810795, 49.136131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553780, 45.019066, 48.576557>,  <40.776512, 44.357887, 48.791965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553780, 45.019066, 48.576557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909637, 45.084114, 48.747242>,  <41.123154, 45.123142, 48.849655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909637, 45.084114, 48.747242>,  <40.553780, 45.019066, 48.576557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909637, 45.084114, 48.747242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221213, 0.664007, -0.714254,
		-0.399493, 0.729828, 0.554758,
		0.889646, 0.162620, 0.426714,
		41.176533, 45.132900, 48.875256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674366, 45.717518, 48.381931>,  <40.553780, 45.019066, 48.576557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674366, 45.717518, 48.381931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031792, 45.590439, 48.508812>,  <41.246246, 45.514191, 48.584942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031792, 45.590439, 48.508812>,  <40.674366, 45.717518, 48.381931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031792, 45.590439, 48.508812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435332, 0.440512, -0.785134,
		0.109700, 0.839655, 0.531927,
		0.893561, -0.317694, 0.317205,
		41.299862, 45.495132, 48.603973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059620, 46.347244, 48.164776>,  <40.674366, 45.717518, 48.381931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059620, 46.347244, 48.164776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301384, 46.034645, 48.226677>,  <41.446442, 45.847084, 48.263817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.301384, 46.034645, 48.226677>,  <41.059620, 46.347244, 48.164776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301384, 46.034645, 48.226677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666567, 0.389682, -0.635481,
		0.436323, 0.487245, 0.756449,
		0.604409, -0.781499, 0.154754,
		41.482708, 45.800194, 48.273102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817055, 46.539307, 48.291683>,  <41.059620, 46.347244, 48.164776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817055, 46.539307, 48.291683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803337, 46.162888, 48.157074>,  <41.795105, 45.937035, 48.076309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.803337, 46.162888, 48.157074>,  <41.817055, 46.539307, 48.291683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803337, 46.162888, 48.157074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681472, 0.224284, -0.696630,
		0.731040, -0.253220, 0.633609,
		-0.034293, -0.941051, -0.336523,
		41.793049, 45.880573, 48.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498619, 46.390190, 48.034222>,  <41.817055, 46.539307, 48.291683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498619, 46.390190, 48.034222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256767, 46.122253, 47.861832>,  <42.111656, 45.961491, 47.758400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.256767, 46.122253, 47.861832>,  <42.498619, 46.390190, 48.034222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256767, 46.122253, 47.861832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543906, 0.048061, -0.837768,
		0.581887, -0.740944, 0.335274,
		-0.604626, -0.669845, -0.430970,
		42.075378, 45.921299, 47.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905342, 45.871620, 47.800564>,  <42.498619, 46.390190, 48.034222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905342, 45.871620, 47.800564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585274, 45.844353, 47.562214>,  <42.393230, 45.827991, 47.419205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.585274, 45.844353, 47.562214>,  <42.905342, 45.871620, 47.800564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585274, 45.844353, 47.562214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598758, -0.148367, -0.787068,
		-0.034752, -0.986580, 0.159538,
		-0.800176, -0.068173, -0.595879,
		42.345222, 45.823902, 47.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099144, 45.370293, 47.180996>,  <42.905342, 45.871620, 47.800564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099144, 45.370293, 47.180996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759277, 45.547287, 47.066265>,  <42.555359, 45.653484, 46.997425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.759277, 45.547287, 47.066265>,  <43.099144, 45.370293, 47.180996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759277, 45.547287, 47.066265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408403, 0.208098, -0.888764,
		-0.333579, -0.872295, -0.357527,
		-0.849666, 0.442489, -0.286831,
		42.504379, 45.680035, 46.980217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901398, 45.135876, 46.481457>,  <43.099144, 45.370293, 47.180996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901398, 45.135876, 46.481457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710342, 45.486122, 46.510185>,  <42.595711, 45.696270, 46.527424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710342, 45.486122, 46.510185>,  <42.901398, 45.135876, 46.481457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710342, 45.486122, 46.510185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449966, 0.314021, -0.836015,
		-0.754583, -0.366993, -0.543986,
		-0.477634, 0.875618, 0.071821,
		42.567051, 45.748806, 46.531731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413525, 45.265167, 45.897484>,  <42.901398, 45.135876, 46.481457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413525, 45.265167, 45.897484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482323, 45.637733, 46.025780>,  <42.523602, 45.861275, 46.102757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.482323, 45.637733, 46.025780>,  <42.413525, 45.265167, 45.897484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482323, 45.637733, 46.025780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369795, 0.240731, -0.897385,
		-0.913054, 0.272957, -0.303028,
		0.172000, 0.931420, 0.320739,
		42.533924, 45.917160, 46.122002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289143, 45.742962, 45.352310>,  <42.413525, 45.265167, 45.897484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289143, 45.742962, 45.352310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505241, 45.978745, 45.592533>,  <42.634903, 46.120213, 45.736668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505241, 45.978745, 45.592533>,  <42.289143, 45.742962, 45.352310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505241, 45.978745, 45.592533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450405, 0.400288, -0.798063,
		-0.710819, 0.701650, -0.049237,
		0.540251, 0.589455, 0.600559,
		42.667316, 46.155582, 45.772701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.287136, 43.088322, 52.552097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555298, 43.351082, 52.690105>,  <39.716194, 43.508736, 52.772911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555298, 43.351082, 52.690105>,  <39.287136, 43.088322, 52.552097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555298, 43.351082, 52.690105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056856, 0.418149, -0.906597,
		-0.739813, 0.627405, 0.242981,
		0.670405, 0.656898, 0.345024,
		39.756420, 43.548153, 52.793613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148018, 43.725266, 52.115265>,  <39.287136, 43.088322, 52.552097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148018, 43.725266, 52.115265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505390, 43.815552, 52.270615>,  <39.719814, 43.869724, 52.363827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505390, 43.815552, 52.270615>,  <39.148018, 43.725266, 52.115265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505390, 43.815552, 52.270615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289004, 0.373064, -0.881646,
		-0.343889, 0.899931, 0.268074,
		0.893430, 0.225714, 0.388376,
		39.773418, 43.883266, 52.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228035, 44.399086, 51.939518>,  <39.148018, 43.725266, 52.115265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228035, 44.399086, 51.939518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602066, 44.283836, 52.022095>,  <39.826485, 44.214687, 52.071640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602066, 44.283836, 52.022095>,  <39.228035, 44.399086, 51.939518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602066, 44.283836, 52.022095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328926, 0.488386, -0.808262,
		0.132053, 0.823691, 0.551449,
		0.935077, -0.288119, 0.206440,
		39.882587, 44.197399, 52.084026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602531, 44.973541, 51.735149>,  <39.228035, 44.399086, 51.939518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602531, 44.973541, 51.735149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828751, 44.643661, 51.737000>,  <39.964481, 44.445732, 51.738110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828751, 44.643661, 51.737000>,  <39.602531, 44.973541, 51.735149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828751, 44.643661, 51.737000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330182, 0.221281, -0.917614,
		0.755735, 0.520481, 0.397447,
		0.565548, -0.824702, 0.004624,
		39.998417, 44.396252, 51.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214512, 45.190952, 51.513157>,  <39.602531, 44.973541, 51.735149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214512, 45.190952, 51.513157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240086, 44.797997, 51.442940>,  <40.255432, 44.562222, 51.400810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240086, 44.797997, 51.442940>,  <40.214512, 45.190952, 51.513157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240086, 44.797997, 51.442940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388923, 0.186525, -0.902191,
		0.919049, -0.010588, 0.394001,
		0.063938, -0.982393, -0.175544,
		40.259266, 44.503277, 51.390278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917019, 45.106987, 51.334957>,  <40.214512, 45.190952, 51.513157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917019, 45.106987, 51.334957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737408, 44.770920, 51.213310>,  <40.629642, 44.569279, 51.140324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737408, 44.770920, 51.213310>,  <40.917019, 45.106987, 51.334957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737408, 44.770920, 51.213310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328676, 0.161183, -0.930587,
		0.830871, -0.517814, 0.203769,
		-0.449027, -0.840172, -0.304115,
		40.602699, 44.518867, 51.122074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417404, 44.696274, 51.167892>,  <40.917019, 45.106987, 51.334957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417404, 44.696274, 51.167892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100925, 44.567772, 50.959736>,  <40.911037, 44.490669, 50.834843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100925, 44.567772, 50.959736>,  <41.417404, 44.696274, 51.167892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100925, 44.567772, 50.959736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499500, 0.151503, -0.852963,
		0.352863, -0.934794, 0.040600,
		-0.791194, -0.321259, -0.520389,
		40.863567, 44.471394, 50.803619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716038, 44.197575, 50.616692>,  <41.417404, 44.696274, 51.167892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716038, 44.197575, 50.616692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354103, 44.314354, 50.492733>,  <41.136944, 44.384422, 50.418358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354103, 44.314354, 50.492733>,  <41.716038, 44.197575, 50.616692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354103, 44.314354, 50.492733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358173, 0.128445, -0.924778,
		-0.230182, -0.947770, -0.220790,
		-0.904836, 0.291948, -0.309900,
		41.082653, 44.401939, 50.399761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631035, 43.904099, 49.884319>,  <41.716038, 44.197575, 50.616692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631035, 43.904099, 49.884319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389469, 44.216797, 49.946499>,  <41.244530, 44.404415, 49.983807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389469, 44.216797, 49.946499>,  <41.631035, 43.904099, 49.884319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389469, 44.216797, 49.946499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181357, 0.324684, -0.928272,
		-0.776145, -0.532403, -0.337856,
		-0.603911, 0.781747, 0.155447,
		41.208294, 44.451321, 49.993134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866253, 43.569321, 49.671864>,  <41.631035, 43.904099, 49.884319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866253, 43.569321, 49.671864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745934, 43.193642, 49.605614>,  <40.673744, 42.968235, 49.565865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745934, 43.193642, 49.605614>,  <40.866253, 43.569321, 49.671864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745934, 43.193642, 49.605614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432445, -0.020468, 0.901428,
		-0.850008, 0.342769, -0.399994,
		-0.300795, -0.939197, -0.165627,
		40.655697, 42.911884, 49.555927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234844, 43.523399, 50.093723>,  <40.866253, 43.569321, 49.671864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234844, 43.523399, 50.093723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325310, 43.143295, 50.008076>,  <40.379589, 42.915234, 49.956688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325310, 43.143295, 50.008076>,  <40.234844, 43.523399, 50.093723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325310, 43.143295, 50.008076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318795, -0.279918, 0.905547,
		-0.920446, -0.136541, -0.366247,
		0.226163, -0.950265, -0.214120,
		40.393158, 42.858215, 49.943840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549267, 43.113132, 50.169537>,  <40.234844, 43.523399, 50.093723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549267, 43.113132, 50.169537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847504, 42.848267, 50.199554>,  <40.026447, 42.689346, 50.217564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847504, 42.848267, 50.199554>,  <39.549267, 43.113132, 50.169537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847504, 42.848267, 50.199554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401473, -0.356449, 0.843661,
		-0.531894, -0.659154, -0.531607,
		0.745593, -0.662163, 0.075040,
		40.071182, 42.649616, 50.222065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326378, 42.466084, 50.354748>,  <39.549267, 43.113132, 50.169537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326378, 42.466084, 50.354748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709351, 42.398499, 50.448360>,  <39.939137, 42.357948, 50.504528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709351, 42.398499, 50.448360>,  <39.326378, 42.466084, 50.354748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709351, 42.398499, 50.448360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285200, -0.428713, 0.857243,
		-0.044506, -0.887501, -0.458652,
		0.957434, -0.168960, 0.234035,
		39.996582, 42.347809, 50.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417690, 41.707405, 50.485062>,  <39.326378, 42.466084, 50.354748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417690, 41.707405, 50.485062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718731, 41.874001, 50.689072>,  <39.899357, 41.973957, 50.811478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718731, 41.874001, 50.689072>,  <39.417690, 41.707405, 50.485062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718731, 41.874001, 50.689072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261195, -0.522189, 0.811847,
		0.604452, -0.744216, -0.284218,
		0.752605, 0.416486, 0.510024,
		39.944511, 41.998947, 50.842079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668076, 41.238598, 50.817955>,  <39.417690, 41.707405, 50.485062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668076, 41.238598, 50.817955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814949, 41.544807, 51.029297>,  <39.903072, 41.728531, 51.156101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814949, 41.544807, 51.029297>,  <39.668076, 41.238598, 50.817955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814949, 41.544807, 51.029297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053452, -0.549725, 0.833634,
		0.928611, -0.334338, -0.160932,
		0.367184, 0.765519, 0.528352,
		39.925106, 41.774464, 51.187801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199356, 40.972130, 51.227936>,  <39.668076, 41.238598, 50.817955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199356, 40.972130, 51.227936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080917, 41.297592, 51.428051>,  <40.009853, 41.492870, 51.548119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080917, 41.297592, 51.428051>,  <40.199356, 40.972130, 51.227936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080917, 41.297592, 51.428051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161262, -0.558838, 0.813446,
		0.941446, 0.160184, 0.296683,
		-0.296098, 0.813659, 0.500284,
		39.992088, 41.541691, 51.578136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516022, 41.042404, 51.965069>,  <40.199356, 40.972130, 51.227936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516022, 41.042404, 51.965069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210297, 41.299919, 51.979851>,  <40.026863, 41.454430, 51.988720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210297, 41.299919, 51.979851>,  <40.516022, 41.042404, 51.965069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210297, 41.299919, 51.979851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399307, -0.517503, 0.756798,
		0.506343, 0.563672, 0.652603,
		-0.764310, 0.643789, 0.036956,
		39.981003, 41.493057, 51.990936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518616, 41.174274, 52.638142>,  <40.516022, 41.042404, 51.965069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518616, 41.174274, 52.638142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158081, 41.305313, 52.524807>,  <39.941761, 41.383934, 52.456806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158081, 41.305313, 52.524807>,  <40.518616, 41.174274, 52.638142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158081, 41.305313, 52.524807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394678, -0.351747, 0.848824,
		0.178406, 0.876901, 0.446336,
		-0.901333, 0.327595, -0.283340,
		39.887680, 41.403591, 52.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260441, 41.620598, 53.167389>,  <40.518616, 41.174274, 52.638142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260441, 41.620598, 53.167389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921745, 41.532631, 52.973618>,  <39.718529, 41.479851, 52.857353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921745, 41.532631, 52.973618>,  <40.260441, 41.620598, 53.167389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921745, 41.532631, 52.973618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385918, -0.372867, 0.843823,
		-0.366201, 0.901446, 0.230849,
		-0.846737, -0.219921, -0.484429,
		39.667725, 41.466656, 52.828289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768406, 41.745590, 53.683346>,  <40.260441, 41.620598, 53.167389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768406, 41.745590, 53.683346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573574, 41.531342, 53.407417>,  <39.456676, 41.402790, 53.241859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573574, 41.531342, 53.407417>,  <39.768406, 41.745590, 53.683346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573574, 41.531342, 53.407417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463626, -0.510792, 0.723976,
		-0.740137, 0.672456, 0.000468,
		-0.487081, -0.535625, -0.689824,
		39.427448, 41.370655, 53.200470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044331, 41.830585, 53.778767>,  <39.768406, 41.745590, 53.683346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044331, 41.830585, 53.778767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110340, 41.492233, 53.575886>,  <39.149948, 41.289223, 53.454159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110340, 41.492233, 53.575886>,  <39.044331, 41.830585, 53.778767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110340, 41.492233, 53.575886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585487, -0.497856, 0.639800,
		-0.793707, 0.191373, -0.577413,
		0.165028, -0.845881, -0.507199,
		39.159847, 41.238468, 53.423725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419231, 41.516296, 53.704906>,  <39.044331, 41.830585, 53.778767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419231, 41.516296, 53.704906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680393, 41.215240, 53.670845>,  <38.837090, 41.034607, 53.650406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680393, 41.215240, 53.670845>,  <38.419231, 41.516296, 53.704906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680393, 41.215240, 53.670845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427945, -0.459311, 0.778393,
		-0.624963, -0.471773, -0.621974,
		0.652904, -0.752638, -0.085160,
		38.876266, 40.989449, 53.645298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048519, 40.942085, 53.945526>,  <38.419231, 41.516296, 53.704906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048519, 40.942085, 53.945526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433533, 40.836082, 53.968510>,  <38.664539, 40.772480, 53.982300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433533, 40.836082, 53.968510>,  <38.048519, 40.942085, 53.945526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433533, 40.836082, 53.968510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222182, -0.649279, 0.727373,
		-0.155454, -0.712886, -0.683833,
		0.962533, -0.265009, 0.057457,
		38.722294, 40.756580, 53.985748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.084358, 40.975403, 56.183434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.698952, 40.959801, 56.077518>,  <45.467709, 40.950439, 56.013969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.698952, 40.959801, 56.077518>,  <46.084358, 40.975403, 56.183434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698952, 40.959801, 56.077518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266336, -0.041938, -0.962968,
		0.026458, -0.998359, 0.050797,
		-0.963517, -0.039008, -0.264789,
		45.409897, 40.948097, 55.998081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968559, 40.438614, 55.697834>,  <46.084358, 40.975403, 56.183434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968559, 40.438614, 55.697834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.646049, 40.666214, 55.633133>,  <45.452545, 40.802776, 55.594315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.646049, 40.666214, 55.633133>,  <45.968559, 40.438614, 55.697834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646049, 40.666214, 55.633133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150473, -0.067163, -0.986330,
		-0.572088, -0.819588, -0.031468,
		-0.806271, 0.569003, -0.161749,
		45.404167, 40.836914, 55.584610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832645, 40.056858, 55.216717>,  <45.968559, 40.438614, 55.697834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832645, 40.056858, 55.216717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.645760, 40.409492, 55.189850>,  <45.533627, 40.621075, 55.173729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.645760, 40.409492, 55.189850>,  <45.832645, 40.056858, 55.216717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645760, 40.409492, 55.189850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011683, -0.069805, -0.997492,
		-0.884067, -0.466828, 0.022315,
		-0.467215, 0.881589, -0.067166,
		45.505596, 40.673969, 55.169701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410980, 40.030022, 54.610691>,  <45.832645, 40.056858, 55.216717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410980, 40.030022, 54.610691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.403831, 40.425232, 54.672001>,  <45.399544, 40.662357, 54.708786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.403831, 40.425232, 54.672001>,  <45.410980, 40.030022, 54.610691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403831, 40.425232, 54.672001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174352, 0.154025, -0.972562,
		-0.984521, 0.009345, -0.175016,
		-0.017869, 0.988023, 0.153270,
		45.398472, 40.721638, 54.717983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025265, 40.292702, 54.040905>,  <45.410980, 40.030022, 54.610691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025265, 40.292702, 54.040905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.220856, 40.620110, 54.161518>,  <45.338211, 40.816555, 54.233887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.220856, 40.620110, 54.161518>,  <45.025265, 40.292702, 54.040905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220856, 40.620110, 54.161518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151844, 0.260531, -0.953450,
		-0.858978, 0.512003, 0.003107,
		0.488979, 0.818520, 0.301535,
		45.367550, 40.865665, 54.251980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742870, 40.847019, 53.583546>,  <45.025265, 40.292702, 54.040905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742870, 40.847019, 53.583546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.075275, 40.989220, 53.754677>,  <45.274719, 41.074539, 53.857357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.075275, 40.989220, 53.754677>,  <44.742870, 40.847019, 53.583546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075275, 40.989220, 53.754677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256215, 0.438050, -0.861665,
		-0.493729, 0.825672, 0.272942,
		0.831015, 0.355497, 0.427827,
		45.324581, 41.095867, 53.883026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772049, 41.595150, 53.540684>,  <44.742870, 40.847019, 53.583546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772049, 41.595150, 53.540684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.151497, 41.472931, 53.573547>,  <45.379166, 41.399597, 53.593266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.151497, 41.472931, 53.573547>,  <44.772049, 41.595150, 53.540684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151497, 41.472931, 53.573547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166296, 0.260560, -0.951028,
		0.269178, 0.915832, 0.297986,
		0.948625, -0.305550, 0.082163,
		45.436085, 41.381268, 53.598198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206802, 42.204021, 53.369358>,  <44.772049, 41.595150, 53.540684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206802, 42.204021, 53.369358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.421631, 41.872269, 53.307808>,  <45.550529, 41.673218, 53.270878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.421631, 41.872269, 53.307808>,  <45.206802, 42.204021, 53.369358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421631, 41.872269, 53.307808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162037, 0.280454, -0.946092,
		0.827826, 0.483188, 0.285015,
		0.537073, -0.829383, -0.153872,
		45.582752, 41.623455, 53.261646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.768032, 42.423130, 53.027313>,  <45.206802, 42.204021, 53.369358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.768032, 42.423130, 53.027313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.786507, 42.036133, 52.927860>,  <45.797592, 41.803932, 52.868191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.786507, 42.036133, 52.927860>,  <45.768032, 42.423130, 53.027313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786507, 42.036133, 52.927860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217972, 0.252657, -0.942684,
		0.974862, -0.010656, 0.222556,
		0.046185, -0.967497, -0.248628,
		45.800362, 41.745884, 52.853271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361130, 42.324051, 52.584579>,  <45.768032, 42.423130, 53.027313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361130, 42.324051, 52.584579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.113815, 42.016830, 52.517860>,  <45.965427, 41.832497, 52.477829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.113815, 42.016830, 52.517860>,  <46.361130, 42.324051, 52.584579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113815, 42.016830, 52.517860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100948, 0.132861, -0.985981,
		0.779446, -0.626452, -0.004613,
		-0.618283, -0.768053, -0.166797,
		45.928329, 41.786415, 52.467823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656796, 42.054462, 52.031776>,  <46.361130, 42.324051, 52.584579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656796, 42.054462, 52.031776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294022, 41.885979, 52.034698>,  <46.076359, 41.784889, 52.036453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294022, 41.885979, 52.034698>,  <46.656796, 42.054462, 52.031776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294022, 41.885979, 52.034698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014949, -0.049511, -0.998662,
		0.421007, -0.905611, 0.051200,
		-0.906934, -0.421209, 0.007307,
		46.021942, 41.759617, 52.036892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715298, 41.464695, 51.483631>,  <46.656796, 42.054462, 52.031776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715298, 41.464695, 51.483631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.330742, 41.556786, 51.543930>,  <46.100010, 41.612041, 51.580109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.330742, 41.556786, 51.543930>,  <46.715298, 41.464695, 51.483631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330742, 41.556786, 51.543930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128255, 0.109802, -0.985644,
		-0.243479, -0.966921, -0.076034,
		-0.961389, 0.230232, 0.150746,
		46.042324, 41.625854, 51.589153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283100, 41.108246, 51.023670>,  <46.715298, 41.464695, 51.483631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283100, 41.108246, 51.023670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.028175, 41.403122, 51.113457>,  <45.875221, 41.580048, 51.167328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.028175, 41.403122, 51.113457>,  <46.283100, 41.108246, 51.023670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028175, 41.403122, 51.113457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154335, 0.163276, -0.974434,
		-0.754990, -0.655665, 0.009715,
		-0.637316, 0.737187, 0.224464,
		45.836979, 41.624279, 51.180798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816406, 40.973499, 50.589581>,  <46.283100, 41.108246, 51.023670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816406, 40.973499, 50.589581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.777260, 41.357399, 50.694878>,  <45.753773, 41.587738, 50.758057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.777260, 41.357399, 50.694878>,  <45.816406, 40.973499, 50.589581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777260, 41.357399, 50.694878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033848, 0.261148, -0.964705,
		-0.994624, -0.103317, 0.006930,
		-0.097861, 0.959754, 0.263241,
		45.747902, 41.645325, 50.773849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369831, 40.345284, 50.865288>,  <45.816406, 40.973499, 50.589581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369831, 40.345284, 50.865288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.098488, 40.090508, 50.718788>,  <44.935680, 39.937641, 50.630886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.098488, 40.090508, 50.718788>,  <45.369831, 40.345284, 50.865288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098488, 40.090508, 50.718788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291844, -0.223887, 0.929893,
		-0.674283, 0.737689, -0.034011,
		-0.678357, -0.636938, -0.366253,
		44.894981, 39.899426, 50.608913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705650, 40.496841, 51.188061>,  <45.369831, 40.345284, 50.865288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705650, 40.496841, 51.188061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.698311, 40.119347, 51.055992>,  <44.693909, 39.892849, 50.976749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.698311, 40.119347, 51.055992>,  <44.705650, 40.496841, 51.188061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698311, 40.119347, 51.055992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370840, -0.300253, 0.878821,
		-0.928516, 0.138565, -0.344468,
		-0.018346, -0.943741, -0.330175,
		44.692806, 39.836224, 50.956940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078308, 40.211651, 51.247940>,  <44.705650, 40.496841, 51.188061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078308, 40.211651, 51.247940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.331211, 39.901749, 51.247528>,  <44.482952, 39.715809, 51.247280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.331211, 39.901749, 51.247528>,  <44.078308, 40.211651, 51.247940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331211, 39.901749, 51.247528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451741, -0.369734, 0.811927,
		-0.629428, -0.512882, -0.583758,
		0.632258, -0.774757, -0.001031,
		44.520889, 39.669323, 51.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641830, 39.569225, 51.405296>,  <44.078308, 40.211651, 51.247940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641830, 39.569225, 51.405296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.016037, 39.451775, 51.483879>,  <44.240562, 39.381306, 51.531029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.016037, 39.451775, 51.483879>,  <43.641830, 39.569225, 51.405296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016037, 39.451775, 51.483879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338860, -0.588506, 0.734054,
		-0.099921, -0.753290, -0.650054,
		0.935516, -0.293625, 0.196456,
		44.296692, 39.363686, 51.542816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659668, 38.845150, 51.585201>,  <43.641830, 39.569225, 51.405296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659668, 38.845150, 51.585201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.015198, 38.978333, 51.711143>,  <44.228516, 39.058243, 51.786709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.015198, 38.978333, 51.711143>,  <43.659668, 38.845150, 51.585201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015198, 38.978333, 51.711143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154032, -0.430026, 0.889579,
		0.431590, -0.839175, -0.330930,
		0.888822, 0.332959, 0.314854,
		44.281845, 39.078220, 51.805599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811066, 38.320557, 52.061840>,  <43.659668, 38.845150, 51.585201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811066, 38.320557, 52.061840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.076424, 38.606384, 52.150646>,  <44.235638, 38.777882, 52.203930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.076424, 38.606384, 52.150646>,  <43.811066, 38.320557, 52.061840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076424, 38.606384, 52.150646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037693, -0.264413, 0.963673,
		0.747316, -0.647668, -0.148477,
		0.663399, 0.714571, 0.222013,
		44.275444, 38.820755, 52.217251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395027, 38.015530, 52.403248>,  <43.811066, 38.320557, 52.061840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395027, 38.015530, 52.403248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.372986, 38.401573, 52.505646>,  <44.359760, 38.633198, 52.567085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.372986, 38.401573, 52.505646>,  <44.395027, 38.015530, 52.403248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372986, 38.401573, 52.505646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230215, -0.261756, 0.937275,
		0.971578, -0.007289, 0.236605,
		-0.055101, 0.965106, 0.255995,
		44.356457, 38.691105, 52.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752892, 38.052788, 53.065826>,  <44.395027, 38.015530, 52.403248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752892, 38.052788, 53.065826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.520500, 38.377464, 53.041721>,  <44.381065, 38.572269, 53.027260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.520500, 38.377464, 53.041721>,  <44.752892, 38.052788, 53.065826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520500, 38.377464, 53.041721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328577, -0.166156, 0.929747,
		0.744652, 0.559959, 0.363234,
		-0.580974, 0.811688, -0.060262,
		44.346207, 38.620972, 53.023643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886883, 38.360245, 53.770309>,  <44.752892, 38.052788, 53.065826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886883, 38.360245, 53.770309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.556118, 38.537888, 53.632332>,  <44.357658, 38.644474, 53.549545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.556118, 38.537888, 53.632332>,  <44.886883, 38.360245, 53.770309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556118, 38.537888, 53.632332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396620, -0.025775, 0.917621,
		0.398629, 0.895604, 0.197454,
		-0.826915, 0.444104, -0.344940,
		44.308044, 38.671120, 53.528851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701889, 38.894382, 54.310177>,  <44.886883, 38.360245, 53.770309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701889, 38.894382, 54.310177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.384247, 38.776207, 54.097717>,  <44.193661, 38.705303, 53.970242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.384247, 38.776207, 54.097717>,  <44.701889, 38.894382, 54.310177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384247, 38.776207, 54.097717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564617, 0.035125, 0.824606,
		-0.224965, 0.954715, -0.194703,
		-0.794102, -0.295440, -0.531146,
		44.146015, 38.687576, 53.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092312, 39.351894, 54.413071>,  <44.701889, 38.894382, 54.310177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092312, 39.351894, 54.413071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.965591, 38.989525, 54.300682>,  <43.889561, 38.772102, 54.233250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.965591, 38.989525, 54.300682>,  <44.092312, 39.351894, 54.413071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965591, 38.989525, 54.300682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579169, -0.049828, 0.813683,
		-0.751133, 0.420504, -0.508896,
		-0.316800, -0.905921, -0.280970,
		43.870552, 38.717747, 54.216393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363426, 39.337368, 54.302563>,  <44.092312, 39.351894, 54.413071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363426, 39.337368, 54.302563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.470497, 38.965622, 54.404259>,  <43.534740, 38.742577, 54.465275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.470497, 38.965622, 54.404259>,  <43.363426, 39.337368, 54.302563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470497, 38.965622, 54.404259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659053, 0.015880, 0.751929,
		-0.702851, -0.368827, -0.608249,
		0.267673, -0.929362, 0.254238,
		43.550800, 38.686813, 54.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772430, 38.952812, 54.494709>,  <43.363426, 39.337368, 54.302563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772430, 38.952812, 54.494709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.056488, 38.721809, 54.655792>,  <43.226925, 38.583206, 54.752441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.056488, 38.721809, 54.655792>,  <42.772430, 38.952812, 54.494709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056488, 38.721809, 54.655792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581761, -0.159175, 0.797632,
		-0.396540, -0.800715, -0.449011,
		0.710148, -0.577511, 0.402706,
		43.269531, 38.548557, 54.776604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410717, 38.418404, 54.912010>,  <42.772430, 38.952812, 54.494709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410717, 38.418404, 54.912010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785591, 38.468910, 55.042080>,  <43.010517, 38.499214, 55.120121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.785591, 38.468910, 55.042080>,  <42.410717, 38.418404, 54.912010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785591, 38.468910, 55.042080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305111, -0.155124, 0.939598,
		0.169080, -0.979793, -0.106856,
		0.937187, 0.126264, 0.325174,
		43.066746, 38.506790, 55.139633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188347, 37.801727, 54.613071>,  <42.410717, 38.418404, 54.912010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188347, 37.801727, 54.613071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.838356, 37.608063, 54.613358>,  <41.628361, 37.491863, 54.613529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.838356, 37.608063, 54.613358>,  <42.188347, 37.801727, 54.613071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838356, 37.608063, 54.613358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123353, 0.221498, -0.967328,
		0.468182, -0.846480, -0.253529,
		-0.874980, -0.484159, 0.000715,
		41.575863, 37.462814, 54.613571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196053, 37.236130, 54.058697>,  <42.188347, 37.801727, 54.613071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196053, 37.236130, 54.058697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.820503, 37.354088, 54.129749>,  <41.595173, 37.424862, 54.172379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.820503, 37.354088, 54.129749>,  <42.196053, 37.236130, 54.058697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820503, 37.354088, 54.129749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089461, 0.289248, -0.953065,
		-0.332429, -0.910700, -0.245186,
		-0.938876, 0.294892, 0.177627,
		41.538841, 37.442554, 54.183037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971481, 37.060463, 53.457798>,  <42.196053, 37.236130, 54.058697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971481, 37.060463, 53.457798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.681213, 37.290863, 53.608326>,  <41.507053, 37.429104, 53.698643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.681213, 37.290863, 53.608326>,  <41.971481, 37.060463, 53.457798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681213, 37.290863, 53.608326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253828, 0.284246, -0.924540,
		-0.639507, -0.766435, -0.060064,
		-0.725673, 0.576004, 0.376321,
		41.463512, 37.463665, 53.721222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325901, 36.795124, 53.189953>,  <41.971481, 37.060463, 53.457798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325901, 36.795124, 53.189953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.247932, 37.169647, 53.306801>,  <41.201153, 37.394360, 53.376911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.247932, 37.169647, 53.306801>,  <41.325901, 36.795124, 53.189953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247932, 37.169647, 53.306801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315666, 0.222103, -0.922511,
		-0.928634, -0.272030, 0.252267,
		-0.194921, 0.936307, 0.292122,
		41.189457, 37.450539, 53.394436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585968, 36.962502, 52.994698>,  <41.325901, 36.795124, 53.189953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585968, 36.962502, 52.994698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801769, 37.298126, 53.022736>,  <40.931252, 37.499500, 53.039558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801769, 37.298126, 53.022736>,  <40.585968, 36.962502, 52.994698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801769, 37.298126, 53.022736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361911, 0.306259, -0.880469,
		-0.760235, 0.449646, 0.468893,
		0.539503, 0.839061, 0.070097,
		40.963619, 37.549843, 53.043766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243607, 37.363319, 52.513683>,  <40.585968, 36.962502, 52.994698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243607, 37.363319, 52.513683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579620, 37.576103, 52.556297>,  <40.781231, 37.703773, 52.581867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.579620, 37.576103, 52.556297>,  <40.243607, 37.363319, 52.513683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579620, 37.576103, 52.556297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168707, 0.442767, -0.880622,
		-0.515629, 0.721784, 0.461687,
		0.840039, 0.531964, 0.106533,
		40.831631, 37.735691, 52.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079746, 37.961624, 52.075241>,  <40.243607, 37.363319, 52.513683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079746, 37.961624, 52.075241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473217, 37.984955, 52.143322>,  <40.709301, 37.998955, 52.184170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.473217, 37.984955, 52.143322>,  <40.079746, 37.961624, 52.075241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473217, 37.984955, 52.143322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121634, 0.481467, -0.867983,
		-0.132575, 0.874521, 0.466515,
		0.983681, 0.058329, 0.170202,
		40.768322, 38.002453, 52.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267170, 38.640583, 51.920845>,  <40.079746, 37.961624, 52.075241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267170, 38.640583, 51.920845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601410, 38.426102, 51.873093>,  <40.801956, 38.297413, 51.844440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.601410, 38.426102, 51.873093>,  <40.267170, 38.640583, 51.920845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601410, 38.426102, 51.873093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217600, 0.522626, -0.824326,
		0.504399, 0.662832, 0.553386,
		0.835603, -0.536205, -0.119380,
		40.852089, 38.265240, 51.837280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740330, 39.115990, 51.838524>,  <40.267170, 38.640583, 51.920845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740330, 39.115990, 51.838524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.885048, 38.777023, 51.683098>,  <40.971878, 38.573643, 51.589844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.885048, 38.777023, 51.683098>,  <40.740330, 39.115990, 51.838524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885048, 38.777023, 51.683098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338992, 0.507854, -0.791940,
		0.868440, 0.154801, 0.471008,
		0.361797, -0.847420, -0.388564,
		40.993587, 38.522797, 51.566528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441696, 39.203182, 51.611233>,  <40.740330, 39.115990, 51.838524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441696, 39.203182, 51.611233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.312531, 38.898689, 51.386292>,  <41.235031, 38.715992, 51.251328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.312531, 38.898689, 51.386292>,  <41.441696, 39.203182, 51.611233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312531, 38.898689, 51.386292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507176, 0.362483, -0.781907,
		0.799060, -0.537705, 0.269028,
		-0.322917, -0.761235, -0.562357,
		41.215656, 38.670319, 51.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974106, 39.023853, 51.249302>,  <41.441696, 39.203182, 51.611233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974106, 39.023853, 51.249302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671234, 38.867592, 51.039894>,  <41.489513, 38.773834, 50.914249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.671234, 38.867592, 51.039894>,  <41.974106, 39.023853, 51.249302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671234, 38.867592, 51.039894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376161, 0.394456, -0.838396,
		0.534027, -0.831742, -0.151725,
		-0.757178, -0.390653, -0.523519,
		41.444080, 38.750397, 50.882839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246143, 38.666039, 50.788387>,  <41.974106, 39.023853, 51.249302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246143, 38.666039, 50.788387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.876362, 38.726013, 50.648155>,  <41.654491, 38.761997, 50.564014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.876362, 38.726013, 50.648155>,  <42.246143, 38.666039, 50.788387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876362, 38.726013, 50.648155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375958, 0.205132, -0.903646,
		-0.063572, -0.967182, -0.246004,
		-0.924454, 0.149933, -0.350579,
		41.599026, 38.770992, 50.542980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254707, 38.428928, 50.150204>,  <42.246143, 38.666039, 50.788387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254707, 38.428928, 50.150204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915901, 38.635857, 50.101299>,  <41.712616, 38.760014, 50.071957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915901, 38.635857, 50.101299>,  <42.254707, 38.428928, 50.150204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915901, 38.635857, 50.101299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303037, 0.280961, -0.910621,
		-0.436734, -0.808356, -0.394745,
		-0.847014, 0.517321, -0.122257,
		41.661797, 38.791054, 50.064621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948944, 38.233482, 49.488087>,  <42.254707, 38.428928, 50.150204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948944, 38.233482, 49.488087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.794151, 38.588036, 49.589733>,  <41.701275, 38.800766, 49.650719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.794151, 38.588036, 49.589733>,  <41.948944, 38.233482, 49.488087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794151, 38.588036, 49.589733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222015, 0.357045, -0.907320,
		-0.894959, -0.294704, -0.334961,
		-0.386986, 0.886380, 0.254112,
		41.678055, 38.853951, 49.665966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.026398, 40.173416, 54.049408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.387306, 40.292519, 54.174149>,  <38.603851, 40.363979, 54.248993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.387306, 40.292519, 54.174149>,  <38.026398, 40.173416, 54.049408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387306, 40.292519, 54.174149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025639, -0.759033, 0.650547,
		0.430408, -0.578974, -0.692487,
		0.902270, 0.297755, 0.311849,
		38.657986, 40.381844, 54.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392223, 39.483719, 54.052128>,  <38.026398, 40.173416, 54.049408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392223, 39.483719, 54.052128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612072, 39.733322, 54.274307>,  <38.743980, 39.883083, 54.407616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.612072, 39.733322, 54.274307>,  <38.392223, 39.483719, 54.052128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612072, 39.733322, 54.274307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071076, -0.627543, 0.775331,
		0.832385, -0.465617, -0.300558,
		0.549620, 0.624012, 0.555452,
		38.776958, 39.920525, 54.440945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758144, 39.015965, 54.485600>,  <38.392223, 39.483719, 54.052128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758144, 39.015965, 54.485600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798203, 39.367157, 54.672840>,  <38.822235, 39.577873, 54.785187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798203, 39.367157, 54.672840>,  <38.758144, 39.015965, 54.485600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798203, 39.367157, 54.672840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060592, -0.464214, 0.883648,
		0.993126, -0.116855, 0.006711,
		0.100143, 0.877981, 0.468103,
		38.828247, 39.630550, 54.813271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251652, 38.957870, 55.002651>,  <38.758144, 39.015965, 54.485600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251652, 38.957870, 55.002651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035542, 39.266579, 55.136799>,  <38.905876, 39.451805, 55.217289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035542, 39.266579, 55.136799>,  <39.251652, 38.957870, 55.002651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035542, 39.266579, 55.136799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134439, -0.472592, 0.870967,
		0.830682, 0.425472, 0.359084,
		-0.540272, 0.771771, 0.335374,
		38.873459, 39.498112, 55.237411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535233, 39.047970, 55.652130>,  <39.251652, 38.957870, 55.002651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535233, 39.047970, 55.652130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175926, 39.223427, 55.662788>,  <38.960342, 39.328701, 55.669182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175926, 39.223427, 55.662788>,  <39.535233, 39.047970, 55.652130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175926, 39.223427, 55.662788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195134, -0.452456, 0.870176,
		0.393748, 0.776453, 0.492020,
		-0.898268, 0.438640, 0.026642,
		38.906445, 39.355019, 55.670780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482479, 39.331997, 56.353825>,  <39.535233, 39.047970, 55.652130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482479, 39.331997, 56.353825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.116096, 39.267738, 56.206734>,  <38.896267, 39.229183, 56.118481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.116096, 39.267738, 56.206734>,  <39.482479, 39.331997, 56.353825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116096, 39.267738, 56.206734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330910, -0.215998, 0.918609,
		-0.227000, 0.963087, 0.144685,
		-0.915953, -0.160647, -0.367727,
		38.841312, 39.219543, 56.096416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996994, 39.671799, 56.784187>,  <39.482479, 39.331997, 56.353825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996994, 39.671799, 56.784187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738174, 39.416626, 56.617161>,  <38.582882, 39.263523, 56.516945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.738174, 39.416626, 56.617161>,  <38.996994, 39.671799, 56.784187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738174, 39.416626, 56.617161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290315, -0.300268, 0.908601,
		-0.705011, 0.709138, 0.009087,
		-0.647053, -0.637936, -0.417565,
		38.544060, 39.225246, 56.491890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419437, 39.786545, 57.201443>,  <38.996994, 39.671799, 56.784187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419437, 39.786545, 57.201443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.354919, 39.428223, 57.035782>,  <38.316208, 39.213230, 56.936386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.354919, 39.428223, 57.035782>,  <38.419437, 39.786545, 57.201443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354919, 39.428223, 57.035782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280277, -0.360787, 0.889538,
		-0.946271, 0.259555, -0.192879,
		-0.161296, -0.895803, -0.414149,
		38.306530, 39.159481, 56.911537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744312, 39.550625, 57.474178>,  <38.419437, 39.786545, 57.201443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744312, 39.550625, 57.474178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949905, 39.228470, 57.356071>,  <38.073261, 39.035179, 57.285206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.949905, 39.228470, 57.356071>,  <37.744312, 39.550625, 57.474178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949905, 39.228470, 57.356071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083510, -0.389562, 0.917206,
		-0.853729, -0.446766, -0.267484,
		0.513978, -0.805383, -0.295270,
		38.104099, 38.986855, 57.267490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231396, 39.003017, 57.622746>,  <37.744312, 39.550625, 57.474178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231396, 39.003017, 57.622746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.614613, 38.889771, 57.604866>,  <37.844543, 38.821823, 57.594139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.614613, 38.889771, 57.604866>,  <37.231396, 39.003017, 57.622746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614613, 38.889771, 57.604866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120563, -0.539519, 0.833297,
		-0.260038, -0.792945, -0.551016,
		0.958042, -0.283121, -0.044695,
		37.902023, 38.804832, 57.591457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274052, 38.455753, 58.056656>,  <37.231396, 39.003017, 57.622746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274052, 38.455753, 58.056656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670132, 38.491234, 58.013500>,  <37.907780, 38.512524, 57.987606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.670132, 38.491234, 58.013500>,  <37.274052, 38.455753, 58.056656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670132, 38.491234, 58.013500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128030, -0.267638, 0.954976,
		0.055835, -0.959428, -0.276371,
		0.990197, 0.088705, -0.107892,
		37.967190, 38.517845, 57.981133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515549, 37.934322, 58.396786>,  <37.274052, 38.455753, 58.056656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515549, 37.934322, 58.396786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781792, 38.232681, 58.386864>,  <37.941536, 38.411697, 58.380913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781792, 38.232681, 58.386864>,  <37.515549, 37.934322, 58.396786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781792, 38.232681, 58.386864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140506, -0.092604, 0.985740,
		0.732960, -0.659597, -0.166441,
		0.665604, 0.745893, -0.024803,
		37.981472, 38.456448, 58.379421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900105, 37.758045, 58.922371>,  <37.515549, 37.934322, 58.396786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900105, 37.758045, 58.922371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964920, 38.144386, 58.841499>,  <38.003807, 38.376190, 58.792976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.964920, 38.144386, 58.841499>,  <37.900105, 37.758045, 58.922371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964920, 38.144386, 58.841499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308925, 0.144935, 0.939978,
		0.937182, -0.214766, -0.274892,
		0.162034, 0.965852, -0.202177,
		38.013531, 38.434143, 58.780846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596085, 37.950123, 59.017906>,  <37.900105, 37.758045, 58.922371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596085, 37.950123, 59.017906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.303360, 38.204247, 59.116562>,  <38.127724, 38.356720, 59.175755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.303360, 38.204247, 59.116562>,  <38.596085, 37.950123, 59.017906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303360, 38.204247, 59.116562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275769, -0.054894, 0.959655,
		0.623216, 0.770305, -0.135026,
		-0.731815, 0.635308, 0.246637,
		38.083817, 38.394840, 59.190552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921741, 37.303787, 59.187553>,  <38.596085, 37.950123, 59.017906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921741, 37.303787, 59.187553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228142, 37.211006, 59.427364>,  <39.411983, 37.155338, 59.571251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228142, 37.211006, 59.427364>,  <38.921741, 37.303787, 59.187553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228142, 37.211006, 59.427364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591768, -0.109862, -0.798587,
		0.251104, 0.966502, 0.053110,
		0.766001, -0.231957, 0.599531,
		39.457943, 37.141418, 59.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450100, 37.693626, 58.956921>,  <38.921741, 37.303787, 59.187553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450100, 37.693626, 58.956921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.634415, 37.399269, 59.155369>,  <39.745003, 37.222652, 59.274437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.634415, 37.399269, 59.155369>,  <39.450100, 37.693626, 58.956921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634415, 37.399269, 59.155369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650145, -0.100633, -0.753116,
		0.604142, 0.669573, 0.432070,
		0.460786, -0.735897, 0.496116,
		39.772652, 37.178501, 59.304203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171055, 37.905136, 58.981052>,  <39.450100, 37.693626, 58.956921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171055, 37.905136, 58.981052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132477, 37.509659, 59.026981>,  <40.109329, 37.272373, 59.054539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.132477, 37.509659, 59.026981>,  <40.171055, 37.905136, 58.981052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132477, 37.509659, 59.026981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522916, -0.148485, -0.839351,
		0.846910, -0.020907, 0.531324,
		-0.096442, -0.988694, 0.114821,
		40.103542, 37.213051, 59.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831650, 37.598339, 59.011135>,  <40.171055, 37.905136, 58.981052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831650, 37.598339, 59.011135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597988, 37.284843, 58.926746>,  <40.457790, 37.096745, 58.876114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597988, 37.284843, 58.926746>,  <40.831650, 37.598339, 59.011135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597988, 37.284843, 58.926746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539282, -0.180529, -0.822547,
		0.606577, -0.594272, 0.528115,
		-0.584157, -0.783741, -0.210976,
		40.422741, 37.049721, 58.863453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257637, 37.113621, 58.785671>,  <40.831650, 37.598339, 59.011135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257637, 37.113621, 58.785671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.907513, 36.985710, 58.640579>,  <40.697437, 36.908966, 58.553524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.907513, 36.985710, 58.640579>,  <41.257637, 37.113621, 58.785671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907513, 36.985710, 58.640579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437441, -0.203936, -0.875817,
		0.206090, -0.925286, 0.318390,
		-0.875312, -0.319774, -0.362729,
		40.644920, 36.889778, 58.531761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468239, 36.579639, 58.299221>,  <41.257637, 37.113621, 58.785671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468239, 36.579639, 58.299221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086777, 36.671684, 58.221672>,  <40.857899, 36.726910, 58.175144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.086777, 36.671684, 58.221672>,  <41.468239, 36.579639, 58.299221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086777, 36.671684, 58.221672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195333, -0.016636, -0.980596,
		-0.228871, -0.973022, -0.029083,
		-0.953658, 0.230111, -0.193871,
		40.800678, 36.740719, 58.163509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132740, 36.014011, 57.794933>,  <41.468239, 36.579639, 58.299221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132740, 36.014011, 57.794933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919067, 36.350723, 57.763790>,  <40.790863, 36.552750, 57.745102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.919067, 36.350723, 57.763790>,  <41.132740, 36.014011, 57.794933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919067, 36.350723, 57.763790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057282, -0.055848, -0.996795,
		-0.843426, -0.536931, -0.018385,
		-0.534183, 0.841776, -0.077860,
		40.758812, 36.603256, 57.740433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623714, 35.944275, 57.274208>,  <41.132740, 36.014011, 57.794933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623714, 35.944275, 57.274208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708336, 36.333519, 57.310646>,  <40.759109, 36.567066, 57.332508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.708336, 36.333519, 57.310646>,  <40.623714, 35.944275, 57.274208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708336, 36.333519, 57.310646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131553, 0.064002, -0.989241,
		-0.968472, 0.221262, -0.114476,
		0.211554, 0.973112, 0.091092,
		40.771801, 36.625454, 57.337975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222095, 36.311153, 56.746811>,  <40.623714, 35.944275, 57.274208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222095, 36.311153, 56.746811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483154, 36.592682, 56.859013>,  <40.639790, 36.761600, 56.926334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.483154, 36.592682, 56.859013>,  <40.222095, 36.311153, 56.746811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483154, 36.592682, 56.859013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096322, 0.290149, -0.952122,
		-0.751512, 0.648421, 0.121572,
		0.652650, 0.703821, 0.280508,
		40.678947, 36.803829, 56.943165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984802, 36.963722, 56.413769>,  <40.222095, 36.311153, 56.746811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984802, 36.963722, 56.413769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377792, 37.007370, 56.474209>,  <40.613586, 37.033558, 56.510475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377792, 37.007370, 56.474209>,  <39.984802, 36.963722, 56.413769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377792, 37.007370, 56.474209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115054, 0.282751, -0.952268,
		-0.146634, 0.952966, 0.265242,
		0.982477, 0.109118, 0.151103,
		40.672535, 37.040104, 56.519539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133423, 37.633068, 56.035549>,  <39.984802, 36.963722, 56.413769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133423, 37.633068, 56.035549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469044, 37.422585, 56.090816>,  <40.670418, 37.296295, 56.123978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469044, 37.422585, 56.090816>,  <40.133423, 37.633068, 56.035549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469044, 37.422585, 56.090816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320227, 0.272374, -0.907341,
		0.439819, 0.805553, 0.397043,
		0.839055, -0.526210, 0.138164,
		40.720760, 37.264721, 56.132267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635368, 38.019279, 55.723572>,  <40.133423, 37.633068, 56.035549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635368, 38.019279, 55.723572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854881, 37.689720, 55.780178>,  <40.986591, 37.491985, 55.814144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.854881, 37.689720, 55.780178>,  <40.635368, 38.019279, 55.723572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854881, 37.689720, 55.780178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511348, 0.196916, -0.836509,
		0.661330, 0.531429, 0.529363,
		0.548786, -0.823897, 0.141519,
		41.019516, 37.442551, 55.822632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294937, 38.174362, 55.593445>,  <40.635368, 38.019279, 55.723572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294937, 38.174362, 55.593445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248688, 37.784073, 55.519035>,  <41.220940, 37.549900, 55.474388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248688, 37.784073, 55.519035>,  <41.294937, 38.174362, 55.593445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248688, 37.784073, 55.519035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472205, 0.110770, -0.874501,
		0.873873, -0.188951, 0.447932,
		-0.115621, -0.975719, -0.186023,
		41.214001, 37.491356, 55.463230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767818, 38.194252, 55.173225>,  <41.294937, 38.174362, 55.593445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767818, 38.194252, 55.173225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584442, 37.842224, 55.123749>,  <41.474415, 37.631008, 55.094063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.584442, 37.842224, 55.123749>,  <41.767818, 38.194252, 55.173225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584442, 37.842224, 55.123749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266124, -0.003147, -0.963933,
		0.847943, -0.474827, 0.235652,
		-0.458443, -0.880074, -0.123694,
		41.446911, 37.578201, 55.086639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410278, 37.898792, 55.441292>,  <41.767818, 38.194252, 55.173225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410278, 37.898792, 55.441292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.738045, 38.113342, 55.522141>,  <42.934704, 38.242073, 55.570648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.738045, 38.113342, 55.522141>,  <42.410278, 37.898792, 55.441292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738045, 38.113342, 55.522141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193259, -0.073444, 0.978395,
		0.539635, -0.840776, 0.043478,
		0.819418, 0.536378, 0.202121,
		42.983871, 38.274254, 55.582775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798061, 37.635891, 56.006233>,  <42.410278, 37.898792, 55.441292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798061, 37.635891, 56.006233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928429, 38.013855, 56.018311>,  <43.006649, 38.240635, 56.025558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928429, 38.013855, 56.018311>,  <42.798061, 37.635891, 56.006233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928429, 38.013855, 56.018311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068297, -0.008324, 0.997630,
		0.942926, -0.327212, 0.061822,
		0.325922, 0.944914, 0.030196,
		43.026207, 38.297329, 56.027370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177292, 37.666180, 56.679523>,  <42.798061, 37.635891, 56.006233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177292, 37.666180, 56.679523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093464, 38.046028, 56.586311>,  <43.043167, 38.273937, 56.530384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.093464, 38.046028, 56.586311>,  <43.177292, 37.666180, 56.679523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093464, 38.046028, 56.586311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079646, 0.220950, 0.972027,
		0.974544, 0.222270, 0.029329,
		-0.209572, 0.949619, -0.233029,
		43.030594, 38.330914, 56.516403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604668, 37.948200, 57.105141>,  <43.177292, 37.666180, 56.679523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604668, 37.948200, 57.105141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.355251, 38.238441, 56.988724>,  <43.205601, 38.412586, 56.918873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.355251, 38.238441, 56.988724>,  <43.604668, 37.948200, 57.105141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355251, 38.238441, 56.988724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085589, 0.306677, 0.947958,
		0.777093, 0.615998, -0.129121,
		-0.623539, 0.725600, -0.291040,
		43.168190, 38.456123, 56.901413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887661, 38.547756, 57.407612>,  <43.604668, 37.948200, 57.105141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887661, 38.547756, 57.407612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.504959, 38.639984, 57.336674>,  <43.275337, 38.695320, 57.294109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.504959, 38.639984, 57.336674>,  <43.887661, 38.547756, 57.407612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504959, 38.639984, 57.336674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151841, 0.124170, 0.980574,
		0.248109, 0.965101, -0.083791,
		-0.956758, 0.230567, -0.177350,
		43.217930, 38.709152, 57.283470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759144, 39.134743, 57.721836>,  <43.887661, 38.547756, 57.407612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759144, 39.134743, 57.721836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.380981, 39.016159, 57.667686>,  <43.154083, 38.945011, 57.635197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.380981, 39.016159, 57.667686>,  <43.759144, 39.134743, 57.721836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380981, 39.016159, 57.667686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200797, 0.202673, 0.958439,
		-0.256699, 0.933294, -0.251135,
		-0.945403, -0.296457, -0.135376,
		43.097359, 38.927223, 57.627075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437225, 39.510399, 58.174053>,  <43.759144, 39.134743, 57.721836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437225, 39.510399, 58.174053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.173874, 39.211143, 58.141006>,  <43.015862, 39.031590, 58.121178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.173874, 39.211143, 58.141006>,  <43.437225, 39.510399, 58.174053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173874, 39.211143, 58.141006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347429, 0.204690, 0.915093,
		-0.667705, 0.631182, -0.394689,
		-0.658379, -0.748138, -0.082618,
		42.976360, 38.986702, 58.116222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093357, 40.271057, 58.183105>,  <43.437225, 39.510399, 58.174053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093357, 40.271057, 58.183105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286575, 40.615372, 58.247261>,  <43.402504, 40.821960, 58.285755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.286575, 40.615372, 58.247261>,  <43.093357, 40.271057, 58.183105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286575, 40.615372, 58.247261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396844, -0.051944, -0.916415,
		-0.780502, 0.506317, -0.366687,
		0.483044, 0.860782, 0.160386,
		43.431488, 40.873608, 58.295376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091118, 40.501896, 57.485638>,  <43.093357, 40.271057, 58.183105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091118, 40.501896, 57.485638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340187, 40.739609, 57.689247>,  <43.489628, 40.882236, 57.811413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.340187, 40.739609, 57.689247>,  <43.091118, 40.501896, 57.485638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340187, 40.739609, 57.689247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589356, 0.071730, -0.804683,
		-0.514722, 0.801051, -0.305580,
		0.622672, 0.594283, 0.509025,
		43.526989, 40.917892, 57.841953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251484, 40.993317, 57.042240>,  <43.091118, 40.501896, 57.485638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251484, 40.993317, 57.042240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566528, 41.024567, 57.286720>,  <43.755554, 41.043316, 57.433411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.566528, 41.024567, 57.286720>,  <43.251484, 40.993317, 57.042240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566528, 41.024567, 57.286720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603500, 0.102351, -0.790766,
		-0.124339, 0.991675, 0.033461,
		0.787608, 0.078129, 0.611203,
		43.802811, 41.048004, 57.470081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725616, 41.640087, 56.879501>,  <43.251484, 40.993317, 57.042240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725616, 41.640087, 56.879501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972099, 41.385788, 57.065453>,  <44.119991, 41.233208, 57.177021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.972099, 41.385788, 57.065453>,  <43.725616, 41.640087, 56.879501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972099, 41.385788, 57.065453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627831, 0.040146, -0.777313,
		0.475514, 0.770850, 0.423882,
		0.616210, -0.635750, 0.464874,
		44.156963, 41.195065, 57.204914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402851, 41.914375, 56.741844>,  <43.725616, 41.640087, 56.879501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402851, 41.914375, 56.741844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.484180, 41.540817, 56.859489>,  <44.532978, 41.316685, 56.930077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.484180, 41.540817, 56.859489>,  <44.402851, 41.914375, 56.741844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484180, 41.540817, 56.859489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602856, -0.117292, -0.789181,
		0.771509, 0.337766, 0.539155,
		0.203320, -0.933893, 0.294116,
		44.545177, 41.260651, 56.947723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048786, 41.912838, 56.839863>,  <44.402851, 41.914375, 56.741844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048786, 41.912838, 56.839863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.953407, 41.526535, 56.798973>,  <44.896179, 41.294754, 56.774437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.953407, 41.526535, 56.798973>,  <45.048786, 41.912838, 56.839863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953407, 41.526535, 56.798973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610855, -0.067315, -0.788876,
		0.754983, -0.250551, 0.605990,
		-0.238446, -0.965760, -0.102229,
		44.881874, 41.236809, 56.768303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753143, 41.563583, 56.630768>,  <45.048786, 41.912838, 56.839863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753143, 41.563583, 56.630768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.480888, 41.294273, 56.515228>,  <45.317535, 41.132687, 56.445904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.480888, 41.294273, 56.515228>,  <45.753143, 41.563583, 56.630768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.480888, 41.294273, 56.515228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454788, -0.079192, -0.887072,
		0.574373, -0.735135, 0.360100,
		-0.680635, -0.673280, -0.288844,
		45.276699, 41.092289, 56.428574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.568371, 41.559067, 58.782177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.790516, 41.226982, 58.762924>,  <38.923801, 41.027729, 58.751373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.790516, 41.226982, 58.762924>,  <38.568371, 41.559067, 58.782177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790516, 41.226982, 58.762924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539113, 0.403487, -0.739294,
		0.633193, 0.384628, 0.671661,
		0.555360, -0.830216, -0.048127,
		38.957123, 40.977917, 58.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333755, 41.743111, 58.671547>,  <38.568371, 41.559067, 58.782177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333755, 41.743111, 58.671547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258484, 41.379288, 58.523338>,  <39.213322, 41.160992, 58.434414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258484, 41.379288, 58.523338>,  <39.333755, 41.743111, 58.671547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258484, 41.379288, 58.523338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405058, 0.271808, -0.872954,
		0.894717, -0.314352, 0.317277,
		-0.188177, -0.909562, -0.370522,
		39.202030, 41.106419, 58.412182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026966, 41.468594, 58.308056>,  <39.333755, 41.743111, 58.671547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026966, 41.468594, 58.308056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.706089, 41.291466, 58.147858>,  <39.513561, 41.185188, 58.051739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.706089, 41.291466, 58.147858>,  <40.026966, 41.468594, 58.308056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706089, 41.291466, 58.147858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301101, 0.279188, -0.911807,
		0.515576, -0.852037, -0.090631,
		-0.802196, -0.442817, -0.400492,
		39.465431, 41.158619, 58.027710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214001, 41.317959, 57.719109>,  <40.026966, 41.468594, 58.308056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214001, 41.317959, 57.719109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818916, 41.269547, 57.679558>,  <39.581867, 41.240501, 57.655827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818916, 41.269547, 57.679558>,  <40.214001, 41.317959, 57.719109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818916, 41.269547, 57.679558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034258, 0.449617, -0.892564,
		0.152482, -0.884984, -0.439946,
		-0.987712, -0.121028, -0.098876,
		39.522602, 41.233238, 57.649895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961407, 40.909321, 57.209408>,  <40.214001, 41.317959, 57.719109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961407, 40.909321, 57.209408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650040, 41.154564, 57.263329>,  <39.463219, 41.301708, 57.295681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.650040, 41.154564, 57.263329>,  <39.961407, 40.909321, 57.209408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650040, 41.154564, 57.263329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097859, 0.330634, -0.938672,
		-0.620075, -0.717485, -0.317368,
		-0.778415, 0.613104, 0.134806,
		39.416515, 41.338493, 57.303772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569550, 40.840462, 56.567135>,  <39.961407, 40.909321, 57.209408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569550, 40.840462, 56.567135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.442421, 41.192497, 56.708237>,  <39.366142, 41.403717, 56.792900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.442421, 41.192497, 56.708237>,  <39.569550, 40.840462, 56.567135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442421, 41.192497, 56.708237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032041, 0.381804, -0.923688,
		-0.947608, -0.282267, -0.149545,
		-0.317823, 0.880086, 0.352756,
		39.347073, 41.456524, 56.814064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017036, 41.096451, 56.030666>,  <39.569550, 40.840462, 56.567135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017036, 41.096451, 56.030666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147636, 41.392227, 56.266167>,  <39.225998, 41.569695, 56.407467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147636, 41.392227, 56.266167>,  <39.017036, 41.096451, 56.030666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147636, 41.392227, 56.266167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053102, 0.636252, -0.769652,
		-0.943704, 0.220029, 0.247003,
		0.326502, 0.739439, 0.588749,
		39.245586, 41.614059, 56.442791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684883, 41.523750, 55.647217>,  <39.017036, 41.096451, 56.030666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684883, 41.523750, 55.647217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917248, 41.721573, 55.905811>,  <39.056667, 41.840267, 56.060970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917248, 41.721573, 55.905811>,  <38.684883, 41.523750, 55.647217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917248, 41.721573, 55.905811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115117, 0.736346, -0.666740,
		-0.805783, 0.461741, 0.370823,
		0.580915, 0.494560, 0.646489,
		39.091522, 41.869942, 56.099758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471783, 42.160019, 55.743435>,  <38.684883, 41.523750, 55.647217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471783, 42.160019, 55.743435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855736, 42.178604, 55.854042>,  <39.086109, 42.189754, 55.920406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.855736, 42.178604, 55.854042>,  <38.471783, 42.160019, 55.743435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855736, 42.178604, 55.854042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120388, 0.822366, -0.556076,
		-0.253238, 0.567059, 0.783783,
		0.959884, 0.046462, 0.276521,
		39.143700, 42.192543, 55.936996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680378, 42.828651, 55.702576>,  <38.471783, 42.160019, 55.743435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680378, 42.828651, 55.702576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043205, 42.660263, 55.702766>,  <39.260902, 42.559231, 55.702881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043205, 42.660263, 55.702766>,  <38.680378, 42.828651, 55.702576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043205, 42.660263, 55.702766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343724, 0.739965, -0.578191,
		0.243050, 0.524626, 0.815901,
		0.907073, -0.420974, 0.000477,
		39.315327, 42.533970, 55.702911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275955, 43.456429, 55.776657>,  <38.680378, 42.828651, 55.702576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275955, 43.456429, 55.776657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445538, 43.134979, 55.609585>,  <39.547287, 42.942112, 55.509342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445538, 43.134979, 55.609585>,  <39.275955, 43.456429, 55.776657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445538, 43.134979, 55.609585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310604, 0.562220, -0.766443,
		0.850758, 0.195202, 0.487963,
		0.423953, -0.803620, -0.417682,
		39.572723, 42.893894, 55.484280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865383, 43.717274, 55.490791>,  <39.275955, 43.456429, 55.776657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865383, 43.717274, 55.490791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851959, 43.369591, 55.293468>,  <39.843903, 43.160980, 55.175076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851959, 43.369591, 55.293468>,  <39.865383, 43.717274, 55.490791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851959, 43.369591, 55.293468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213434, 0.475965, -0.853173,
		0.976381, -0.133924, 0.169543,
		-0.033564, -0.869208, -0.493307,
		39.841888, 43.108829, 55.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715221, 43.494480, 55.639450>,  <39.865383, 43.717274, 55.490791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715221, 43.494480, 55.639450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.072842, 43.630661, 55.755905>,  <41.287415, 43.712368, 55.825779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.072842, 43.630661, 55.755905>,  <40.715221, 43.494480, 55.639450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072842, 43.630661, 55.755905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106924, -0.468949, 0.876730,
		0.435010, -0.814974, -0.382863,
		0.894055, 0.340449, 0.291138,
		41.341057, 43.732796, 55.843246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981209, 42.948402, 55.910229>,  <40.715221, 43.494480, 55.639450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981209, 42.948402, 55.910229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192429, 43.248306, 56.069740>,  <41.319160, 43.428249, 56.165447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192429, 43.248306, 56.069740>,  <40.981209, 42.948402, 55.910229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192429, 43.248306, 56.069740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124443, -0.396198, 0.909693,
		0.840046, -0.529988, -0.115910,
		0.528050, 0.749760, 0.398778,
		41.350845, 43.473236, 56.189373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424969, 42.653316, 56.370449>,  <40.981209, 42.948402, 55.910229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424969, 42.653316, 56.370449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390015, 43.021179, 56.523598>,  <41.369041, 43.241898, 56.615486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390015, 43.021179, 56.523598>,  <41.424969, 42.653316, 56.370449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390015, 43.021179, 56.523598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139377, -0.391851, 0.909410,
		0.986377, 0.026101, 0.162419,
		-0.087381, 0.919659, 0.382875,
		41.363800, 43.297077, 56.638458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732185, 42.571594, 57.016415>,  <41.424969, 42.653316, 56.370449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732185, 42.571594, 57.016415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533661, 42.914429, 57.071674>,  <41.414547, 43.120129, 57.104832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.533661, 42.914429, 57.071674>,  <41.732185, 42.571594, 57.016415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533661, 42.914429, 57.071674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117362, -0.223913, 0.967517,
		0.860176, 0.463974, 0.211719,
		-0.496310, 0.857083, 0.138152,
		41.384769, 43.171555, 57.113121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994923, 42.798889, 57.655453>,  <41.732185, 42.571594, 57.016415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994923, 42.798889, 57.655453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.660721, 43.007416, 57.585987>,  <41.460197, 43.132530, 57.544308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.660721, 43.007416, 57.585987>,  <41.994923, 42.798889, 57.655453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660721, 43.007416, 57.585987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305196, -0.177451, 0.935610,
		0.456929, 0.834711, 0.307364,
		-0.835506, 0.521314, -0.173668,
		41.410069, 43.163811, 57.533886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943020, 43.287003, 58.150585>,  <41.994923, 42.798889, 57.655453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943020, 43.287003, 58.150585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.569492, 43.233742, 58.017769>,  <41.345375, 43.201786, 57.938080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.569492, 43.233742, 58.017769>,  <41.943020, 43.287003, 58.150585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569492, 43.233742, 58.017769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291544, -0.254643, 0.922040,
		-0.207326, 0.957824, 0.198970,
		-0.933819, -0.133154, -0.332043,
		41.289345, 43.193794, 57.918156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547287, 43.702412, 58.600071>,  <41.943020, 43.287003, 58.150585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547287, 43.702412, 58.600071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296555, 43.426239, 58.455635>,  <41.146114, 43.260536, 58.368973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296555, 43.426239, 58.455635>,  <41.547287, 43.702412, 58.600071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296555, 43.426239, 58.455635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266088, -0.245879, 0.932063,
		-0.732311, 0.680327, -0.029592,
		-0.626831, -0.690434, -0.361087,
		41.108505, 43.219109, 58.347309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085876, 43.692841, 59.028835>,  <41.547287, 43.702412, 58.600071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085876, 43.692841, 59.028835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.986416, 43.348747, 58.850769>,  <40.926739, 43.142292, 58.743931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.986416, 43.348747, 58.850769>,  <41.085876, 43.692841, 59.028835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986416, 43.348747, 58.850769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344854, -0.350860, 0.870617,
		-0.905122, 0.370000, -0.209411,
		-0.248655, -0.860231, -0.445167,
		40.911819, 43.090679, 58.717220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345963, 43.579861, 59.196308>,  <41.085876, 43.692841, 59.028835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345963, 43.579861, 59.196308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.496437, 43.222061, 59.099686>,  <40.586723, 43.007381, 59.041714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.496437, 43.222061, 59.099686>,  <40.345963, 43.579861, 59.196308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496437, 43.222061, 59.099686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321495, -0.370522, 0.871410,
		-0.868979, -0.250156, -0.426964,
		0.376188, -0.894503, -0.241552,
		40.609295, 42.953709, 59.027222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833717, 43.083393, 59.375763>,  <40.345963, 43.579861, 59.196308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833717, 43.083393, 59.375763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.182404, 42.889908, 59.344421>,  <40.391613, 42.773815, 59.325619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.182404, 42.889908, 59.344421>,  <39.833717, 43.083393, 59.375763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182404, 42.889908, 59.344421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182368, -0.468657, 0.864351,
		-0.454813, -0.739179, -0.496749,
		0.871715, -0.483709, -0.078349,
		40.443916, 42.744793, 59.320915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749756, 42.419086, 59.705845>,  <39.833717, 43.083393, 59.375763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749756, 42.419086, 59.705845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146481, 42.469749, 59.712303>,  <40.384518, 42.500149, 59.716179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.146481, 42.469749, 59.712303>,  <39.749756, 42.419086, 59.705845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146481, 42.469749, 59.712303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026771, -0.329890, 0.943640,
		0.124848, -0.935484, -0.330580,
		0.991815, 0.126662, 0.016142,
		40.444023, 42.507748, 59.717144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007809, 41.888859, 60.232800>,  <39.749756, 42.419086, 59.705845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007809, 41.888859, 60.232800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337624, 42.109009, 60.180298>,  <40.535515, 42.241096, 60.148796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.337624, 42.109009, 60.180298>,  <40.007809, 41.888859, 60.232800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337624, 42.109009, 60.180298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260382, -0.163150, 0.951622,
		0.502331, -0.818825, -0.277830,
		0.824539, 0.550371, -0.131252,
		40.584984, 42.274120, 60.140923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556084, 41.456863, 60.540508>,  <40.007809, 41.888859, 60.232800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556084, 41.456863, 60.540508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.630383, 41.849007, 60.567055>,  <40.674961, 42.084293, 60.582981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.630383, 41.849007, 60.567055>,  <40.556084, 41.456863, 60.540508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630383, 41.849007, 60.567055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084531, -0.083234, 0.992938,
		0.978954, -0.178827, -0.098331,
		0.185749, 0.980353, 0.066366,
		40.686108, 42.143112, 60.586964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125340, 41.497921, 61.019314>,  <40.556084, 41.456863, 60.540508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125340, 41.497921, 61.019314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988346, 41.873726, 61.020859>,  <40.906151, 42.099209, 61.021786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988346, 41.873726, 61.020859>,  <41.125340, 41.497921, 61.019314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988346, 41.873726, 61.020859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011317, 0.000011, 0.999936,
		0.939457, 0.342503, -0.010636,
		-0.342481, 0.939517, 0.003866,
		40.885601, 42.155582, 61.022018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793167, 41.751717, 60.766800>,  <41.125340, 41.497921, 61.019314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793167, 41.751717, 60.766800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.077610, 41.476807, 60.826092>,  <42.248276, 41.311859, 60.861668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.077610, 41.476807, 60.826092>,  <41.793167, 41.751717, 60.766800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077610, 41.476807, 60.826092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160714, -0.046355, -0.985912,
		0.684467, 0.724914, 0.077492,
		0.711109, -0.687278, 0.148233,
		42.290943, 41.270622, 60.870560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276211, 42.027138, 60.404846>,  <41.793167, 41.751717, 60.766800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276211, 42.027138, 60.404846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.376152, 41.642525, 60.450485>,  <42.436119, 41.411755, 60.477871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.376152, 41.642525, 60.450485>,  <42.276211, 42.027138, 60.404846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376152, 41.642525, 60.450485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284419, -0.039760, -0.957875,
		0.925569, 0.271783, 0.263545,
		0.249855, -0.961537, 0.114101,
		42.451107, 41.354065, 60.484715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986515, 41.917374, 60.300583>,  <42.276211, 42.027138, 60.404846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986515, 41.917374, 60.300583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893860, 41.531502, 60.250397>,  <42.838264, 41.299980, 60.220284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893860, 41.531502, 60.250397>,  <42.986515, 41.917374, 60.300583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893860, 41.531502, 60.250397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477164, -0.000281, -0.878814,
		0.847736, -0.263438, 0.460374,
		-0.231642, -0.964676, -0.125464,
		42.824368, 41.242100, 60.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634708, 41.496086, 60.195316>,  <42.986515, 41.917374, 60.300583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634708, 41.496086, 60.195316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.330437, 41.289062, 60.038597>,  <43.147873, 41.164848, 59.944565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.330437, 41.289062, 60.038597>,  <43.634708, 41.496086, 60.195316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330437, 41.289062, 60.038597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499466, -0.081140, -0.862525,
		0.414615, -0.851793, 0.320223,
		-0.760676, -0.517556, -0.391800,
		43.102234, 41.133797, 59.921059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900585, 40.947060, 59.837723>,  <43.634708, 41.496086, 60.195316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900585, 40.947060, 59.837723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.545483, 41.012909, 59.665771>,  <43.332420, 41.052418, 59.562603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.545483, 41.012909, 59.665771>,  <43.900585, 40.947060, 59.837723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545483, 41.012909, 59.665771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372505, -0.291715, -0.880989,
		-0.270424, -0.942233, 0.197652,
		-0.887756, 0.164615, -0.429874,
		43.279156, 41.062298, 59.536808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882832, 40.366867, 59.346191>,  <43.900585, 40.947060, 59.837723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882832, 40.366867, 59.346191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.619202, 40.646111, 59.234291>,  <43.461025, 40.813656, 59.167152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.619202, 40.646111, 59.234291>,  <43.882832, 40.366867, 59.346191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619202, 40.646111, 59.234291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330871, -0.064886, -0.941443,
		-0.675384, -0.713042, -0.188221,
		-0.659075, 0.698113, -0.279747,
		43.421478, 40.855545, 59.150368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477131, 40.159843, 58.812729>,  <43.882832, 40.366867, 59.346191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477131, 40.159843, 58.812729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.492111, 40.558762, 58.787453>,  <43.501099, 40.798115, 58.772285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.492111, 40.558762, 58.787453>,  <43.477131, 40.159843, 58.812729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492111, 40.558762, 58.787453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373390, -0.072626, -0.924827,
		-0.926918, 0.011043, -0.375101,
		0.037455, 0.997298, -0.063195,
		43.503349, 40.857952, 58.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854374, 39.710243, 58.618576>,  <43.477131, 40.159843, 58.812729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854374, 39.710243, 58.618576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.778595, 39.322029, 58.559010>,  <42.733128, 39.089100, 58.523270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.778595, 39.322029, 58.559010>,  <42.854374, 39.710243, 58.618576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778595, 39.322029, 58.559010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220086, -0.105829, 0.969723,
		-0.956908, 0.216481, -0.193552,
		-0.189443, -0.970534, -0.148913,
		42.721764, 39.030869, 58.514336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224865, 39.586769, 58.990723>,  <42.854374, 39.710243, 58.618576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224865, 39.586769, 58.990723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.434380, 39.247269, 58.961670>,  <42.560089, 39.043568, 58.944237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.434380, 39.247269, 58.961670>,  <42.224865, 39.586769, 58.990723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434380, 39.247269, 58.961670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121827, -0.159025, 0.979729,
		-0.843095, -0.504317, -0.186695,
		0.523783, -0.848750, -0.072634,
		42.591515, 38.992645, 58.939880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742844, 39.034901, 59.022018>,  <42.224865, 39.586769, 58.990723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742844, 39.034901, 59.022018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101757, 38.877121, 59.101311>,  <42.317104, 38.782452, 59.148884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.101757, 38.877121, 59.101311>,  <41.742844, 39.034901, 59.022018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101757, 38.877121, 59.101311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338626, -0.326891, 0.882312,
		-0.283228, -0.858808, -0.426884,
		0.897281, -0.394450, 0.198231,
		42.370941, 38.758785, 59.160778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571392, 38.350666, 59.174900>,  <41.742844, 39.034901, 59.022018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571392, 38.350666, 59.174900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.919998, 38.463448, 59.335381>,  <42.129162, 38.531116, 59.431671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.919998, 38.463448, 59.335381>,  <41.571392, 38.350666, 59.174900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919998, 38.463448, 59.335381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392563, -0.089152, 0.915394,
		0.293869, -0.955276, 0.032989,
		0.871513, 0.281956, 0.401205,
		42.181454, 38.548035, 59.455742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655460, 37.910099, 59.680492>,  <41.571392, 38.350666, 59.174900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655460, 37.910099, 59.680492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916550, 38.197044, 59.777931>,  <42.073204, 38.369213, 59.836395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916550, 38.197044, 59.777931>,  <41.655460, 37.910099, 59.680492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916550, 38.197044, 59.777931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257354, -0.092466, 0.961883,
		0.712546, -0.690534, 0.124262,
		0.652722, 0.717366, 0.243598,
		42.112366, 38.412254, 59.851009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011524, 37.587158, 60.252804>,  <41.655460, 37.910099, 59.680492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011524, 37.587158, 60.252804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.045284, 37.984947, 60.277794>,  <42.065540, 38.223621, 60.292786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.045284, 37.984947, 60.277794>,  <42.011524, 37.587158, 60.252804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045284, 37.984947, 60.277794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512285, -0.010470, 0.858752,
		0.854659, -0.104478, 0.508569,
		0.084396, 0.994472, 0.062471,
		42.070602, 38.283287, 60.296535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283203, 37.805382, 60.922169>,  <42.011524, 37.587158, 60.252804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283203, 37.805382, 60.922169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.053738, 38.097939, 60.774666>,  <41.916058, 38.273472, 60.686165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.053738, 38.097939, 60.774666>,  <42.283203, 37.805382, 60.922169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053738, 38.097939, 60.774666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452605, 0.092183, 0.886934,
		0.682685, 0.675703, 0.278148,
		-0.573664, 0.731387, -0.368758,
		41.881638, 38.317356, 60.664040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104702, 38.067436, 61.491711>,  <42.283203, 37.805382, 60.922169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104702, 38.067436, 61.491711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859894, 38.274109, 61.252220>,  <41.713009, 38.398113, 61.108524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.859894, 38.274109, 61.252220>,  <42.104702, 38.067436, 61.491711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859894, 38.274109, 61.252220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588579, 0.208069, 0.781206,
		0.528211, 0.830510, 0.176766,
		-0.612019, 0.516682, -0.598725,
		41.676289, 38.429115, 61.072601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908665, 38.556789, 61.879391>,  <42.104702, 38.067436, 61.491711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908665, 38.556789, 61.879391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.625336, 38.566971, 61.597218>,  <41.455338, 38.573078, 61.427914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.625336, 38.566971, 61.597218>,  <41.908665, 38.556789, 61.879391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625336, 38.566971, 61.597218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695687, 0.144158, 0.703732,
		0.119606, 0.989228, -0.084403,
		-0.708318, 0.025452, -0.705434,
		41.412842, 38.574608, 61.385586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<45.975128, 40.288013, 46.061005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.600807, 40.402184, 45.978249>,  <45.376213, 40.470684, 45.928593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.600807, 40.402184, 45.978249>,  <45.975128, 40.288013, 46.061005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600807, 40.402184, 45.978249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180045, 0.117603, 0.976603,
		0.303076, 0.951159, -0.058664,
		-0.935804, 0.285423, -0.206894,
		45.320065, 40.487812, 45.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863155, 40.893833, 46.498096>,  <45.975128, 40.288013, 46.061005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863155, 40.893833, 46.498096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.490891, 40.772789, 46.415833>,  <45.267532, 40.700161, 46.366474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.490891, 40.772789, 46.415833>,  <45.863155, 40.893833, 46.498096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490891, 40.772789, 46.415833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276868, 0.214990, 0.936549,
		-0.239197, 0.928550, -0.283867,
		-0.930660, -0.302614, -0.205661,
		45.211693, 40.682003, 46.354134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492416, 41.416588, 46.891155>,  <45.863155, 40.893833, 46.498096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492416, 41.416588, 46.891155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.223724, 41.129738, 46.816849>,  <45.062508, 40.957630, 46.772263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.223724, 41.129738, 46.816849>,  <45.492416, 41.416588, 46.891155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223724, 41.129738, 46.816849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330455, 0.065634, 0.941537,
		-0.663004, 0.693850, -0.281065,
		-0.671733, -0.717122, -0.185771,
		45.022205, 40.914600, 46.761116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793343, 41.681263, 46.998825>,  <45.492416, 41.416588, 46.891155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793343, 41.681263, 46.998825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766178, 41.283363, 47.029434>,  <44.749882, 41.044624, 47.047802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.766178, 41.283363, 47.029434>,  <44.793343, 41.681263, 46.998825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766178, 41.283363, 47.029434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403812, 0.097543, 0.909627,
		-0.912318, 0.030868, -0.408317,
		-0.067907, -0.994752, 0.076525,
		44.745808, 40.984936, 47.052391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142544, 41.577530, 47.328117>,  <44.793343, 41.681263, 46.998825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142544, 41.577530, 47.328117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.324757, 41.226036, 47.385120>,  <44.434086, 41.015141, 47.419323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.324757, 41.226036, 47.385120>,  <44.142544, 41.577530, 47.328117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324757, 41.226036, 47.385120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431905, -0.078185, 0.898524,
		-0.778425, -0.470858, -0.415147,
		0.455535, -0.878737, 0.142505,
		44.461418, 40.962414, 47.427872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663219, 40.896282, 47.514210>,  <44.142544, 41.577530, 47.328117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663219, 40.896282, 47.514210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.034016, 40.871521, 47.662186>,  <44.256493, 40.856667, 47.750973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.034016, 40.871521, 47.662186>,  <43.663219, 40.896282, 47.514210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034016, 40.871521, 47.662186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373883, -0.231296, 0.898173,
		0.029968, -0.970912, -0.237553,
		0.926992, -0.061901, 0.369939,
		44.312115, 40.852951, 47.773167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.640530, 40.216007, 47.963387>,  <43.663219, 40.896282, 47.514210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.640530, 40.216007, 47.963387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.984711, 40.398369, 48.054405>,  <44.191219, 40.507786, 48.109016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.984711, 40.398369, 48.054405>,  <43.640530, 40.216007, 47.963387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.984711, 40.398369, 48.054405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032604, -0.396399, 0.917499,
		0.508492, -0.796881, -0.326217,
		0.860449, 0.455905, 0.227547,
		44.242847, 40.535141, 48.122669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995838, 39.680195, 48.359840>,  <43.640530, 40.216007, 47.963387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995838, 39.680195, 48.359840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.157604, 40.032845, 48.457146>,  <44.254665, 40.244434, 48.515530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.157604, 40.032845, 48.457146>,  <43.995838, 39.680195, 48.359840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157604, 40.032845, 48.457146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111551, -0.311554, 0.943658,
		0.907746, -0.354496, -0.224344,
		0.404418, 0.881627, 0.243268,
		44.278931, 40.297333, 48.530125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622929, 39.496323, 48.681519>,  <43.995838, 39.680195, 48.359840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622929, 39.496323, 48.681519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.525776, 39.858826, 48.819916>,  <44.467484, 40.076328, 48.902954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.525776, 39.858826, 48.819916>,  <44.622929, 39.496323, 48.681519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525776, 39.858826, 48.819916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260904, -0.282506, 0.923103,
		0.934312, 0.314476, -0.167829,
		-0.242881, 0.906253, 0.345997,
		44.452911, 40.130703, 48.923714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171741, 39.542969, 49.078651>,  <44.622929, 39.496323, 48.681519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171741, 39.542969, 49.078651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.920105, 39.826378, 49.206551>,  <44.769123, 39.996422, 49.283291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.920105, 39.826378, 49.206551>,  <45.171741, 39.542969, 49.078651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920105, 39.826378, 49.206551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251644, -0.203557, 0.946171,
		0.735469, 0.675693, -0.050238,
		-0.629095, 0.708522, 0.319744,
		44.731377, 40.038933, 49.302475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559856, 39.910740, 49.566769>,  <45.171741, 39.542969, 49.078651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559856, 39.910740, 49.566769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.174267, 39.965965, 49.657715>,  <44.942913, 39.999100, 49.712284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.174267, 39.965965, 49.657715>,  <45.559856, 39.910740, 49.566769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174267, 39.965965, 49.657715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189852, -0.241581, 0.951627,
		0.186315, 0.960508, 0.206666,
		-0.963973, 0.138066, 0.227364,
		44.885075, 40.007385, 49.725925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555710, 40.425285, 50.131096>,  <45.559856, 39.910740, 49.566769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555710, 40.425285, 50.131096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.210579, 40.223694, 50.146736>,  <45.003502, 40.102737, 50.156120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.210579, 40.223694, 50.146736>,  <45.555710, 40.425285, 50.131096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210579, 40.223694, 50.146736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139755, -0.163501, 0.976594,
		-0.485793, 0.848098, 0.211507,
		-0.862829, -0.503982, 0.039098,
		44.951729, 40.072498, 50.158466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199833, 41.179455, 50.273232>,  <45.555710, 40.425285, 50.131096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199833, 41.179455, 50.273232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.403458, 41.514763, 50.351372>,  <45.525635, 41.715946, 50.398254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.403458, 41.514763, 50.351372>,  <45.199833, 41.179455, 50.273232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403458, 41.514763, 50.351372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001864, 0.228032, -0.973652,
		-0.860726, 0.495289, 0.117645,
		0.509066, 0.838266, 0.195350,
		45.556179, 41.766243, 50.409977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813351, 41.657196, 49.993023>,  <45.199833, 41.179455, 50.273232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813351, 41.657196, 49.993023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.156414, 41.858192, 50.036716>,  <45.362251, 41.978790, 50.062931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.156414, 41.858192, 50.036716>,  <44.813351, 41.657196, 49.993023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156414, 41.858192, 50.036716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197155, 0.517506, -0.832657,
		-0.474930, 0.692597, 0.542910,
		0.857655, 0.502491, 0.109230,
		45.413712, 42.008938, 50.069485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665558, 42.382004, 49.909588>,  <44.813351, 41.657196, 49.993023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665558, 42.382004, 49.909588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.059631, 42.351738, 49.848022>,  <45.296074, 42.333576, 49.811085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.059631, 42.351738, 49.848022>,  <44.665558, 42.382004, 49.909588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059631, 42.351738, 49.848022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058417, 0.695702, -0.715951,
		0.161251, 0.714334, 0.680974,
		0.985183, -0.075667, -0.153912,
		45.355186, 42.329037, 49.801849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798523, 43.015465, 49.848633>,  <44.665558, 42.382004, 49.909588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798523, 43.015465, 49.848633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.086987, 42.815750, 49.656532>,  <45.260067, 42.695923, 49.541271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.086987, 42.815750, 49.656532>,  <44.798523, 43.015465, 49.848633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086987, 42.815750, 49.656532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053429, 0.651086, -0.757121,
		0.690704, 0.571666, 0.442862,
		0.721161, -0.499284, -0.480251,
		45.303333, 42.665966, 49.512459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334984, 43.493450, 49.651722>,  <44.798523, 43.015465, 49.848633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334984, 43.493450, 49.651722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.402092, 43.201424, 49.386738>,  <45.442356, 43.026207, 49.227749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.402092, 43.201424, 49.386738>,  <45.334984, 43.493450, 49.651722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402092, 43.201424, 49.386738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042526, 0.676716, -0.735014,
		0.984908, 0.095143, 0.144581,
		0.167772, -0.730070, -0.662457,
		45.452423, 42.982403, 49.188000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933868, 43.681877, 49.184307>,  <45.334984, 43.493450, 49.651722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933868, 43.681877, 49.184307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.774757, 43.376587, 48.980637>,  <45.679291, 43.193413, 48.858433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.774757, 43.376587, 48.980637>,  <45.933868, 43.681877, 49.184307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774757, 43.376587, 48.980637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096640, 0.517034, -0.850492,
		0.912380, -0.387511, -0.131905,
		-0.397774, -0.763224, -0.509181,
		45.655426, 43.147621, 48.827881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331757, 43.580284, 48.597057>,  <45.933868, 43.681877, 49.184307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331757, 43.580284, 48.597057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.993546, 43.398689, 48.484650>,  <45.790619, 43.289734, 48.417206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.993546, 43.398689, 48.484650>,  <46.331757, 43.580284, 48.597057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993546, 43.398689, 48.484650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102089, 0.379152, -0.919685,
		0.524074, -0.806312, -0.274238,
		-0.845532, -0.453987, -0.281020,
		45.739887, 43.262493, 48.400345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514893, 43.253147, 48.006145>,  <46.331757, 43.580284, 48.597057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514893, 43.253147, 48.006145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.118835, 43.308403, 47.996952>,  <45.881199, 43.341557, 47.991436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.118835, 43.308403, 47.996952>,  <46.514893, 43.253147, 48.006145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118835, 43.308403, 47.996952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089834, 0.500697, -0.860948,
		-0.107423, -0.854529, -0.508173,
		-0.990146, 0.138137, -0.022980,
		45.821793, 43.349842, 47.990059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346252, 43.097157, 47.346004>,  <46.514893, 43.253147, 48.006145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346252, 43.097157, 47.346004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.015816, 43.286499, 47.468319>,  <45.817554, 43.400105, 47.541710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.015816, 43.286499, 47.468319>,  <46.346252, 43.097157, 47.346004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015816, 43.286499, 47.468319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045173, 0.485253, -0.873206,
		-0.561724, -0.735160, -0.379480,
		-0.826090, 0.473358, 0.305788,
		45.767990, 43.428505, 47.560055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955738, 43.218258, 46.769012>,  <46.346252, 43.097157, 47.346004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955738, 43.218258, 46.769012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.807281, 43.481041, 47.031513>,  <45.718208, 43.638710, 47.189014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.807281, 43.481041, 47.031513>,  <45.955738, 43.218258, 46.769012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807281, 43.481041, 47.031513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169780, 0.646804, -0.743518,
		-0.912923, -0.387370, -0.128519,
		-0.371143, 0.656955, 0.656249,
		45.695938, 43.678127, 47.228390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342892, 43.291348, 46.588867>,  <45.955738, 43.218258, 46.769012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342892, 43.291348, 46.588867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.416313, 43.630203, 46.788334>,  <45.460365, 43.833515, 46.908012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.416313, 43.630203, 46.788334>,  <45.342892, 43.291348, 46.588867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416313, 43.630203, 46.788334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389164, 0.528462, -0.754506,
		-0.902695, -0.055567, 0.426678,
		0.183558, 0.847136, 0.498665,
		45.471382, 43.884346, 46.937935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833580, 43.717789, 46.366928>,  <45.342892, 43.291348, 46.588867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833580, 43.717789, 46.366928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.111500, 43.957008, 46.526722>,  <45.278252, 44.100540, 46.622597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.111500, 43.957008, 46.526722>,  <44.833580, 43.717789, 46.366928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111500, 43.957008, 46.526722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199747, 0.694062, -0.691650,
		-0.690909, 0.400763, 0.601693,
		0.694800, 0.598053, 0.399482,
		45.319939, 44.136425, 46.646568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515217, 44.372417, 46.485207>,  <44.833580, 43.717789, 46.366928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515217, 44.372417, 46.485207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.904034, 44.466095, 46.478325>,  <45.137321, 44.522301, 46.474194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.904034, 44.466095, 46.478325>,  <44.515217, 44.372417, 46.485207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904034, 44.466095, 46.478325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201557, 0.794500, -0.572839,
		-0.120482, 0.560290, 0.819487,
		0.972039, 0.234190, -0.017207,
		45.195644, 44.536350, 46.473164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494907, 45.021385, 46.658504>,  <44.515217, 44.372417, 46.485207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494907, 45.021385, 46.658504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.836868, 44.963104, 46.459343>,  <45.042046, 44.928135, 46.339844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.836868, 44.963104, 46.459343>,  <44.494907, 45.021385, 46.658504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836868, 44.963104, 46.459343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187999, 0.807509, -0.559094,
		0.483525, 0.571577, 0.662951,
		0.854904, -0.145702, -0.497906,
		45.093338, 44.919395, 46.309971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.073986, 45.562737, 46.719238>,  <44.494907, 45.021385, 46.658504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.073986, 45.562737, 46.719238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.084518, 45.388596, 46.359287>,  <45.090836, 45.284111, 46.143318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.084518, 45.388596, 46.359287>,  <45.073986, 45.562737, 46.719238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084518, 45.388596, 46.359287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227049, 0.874055, -0.429508,
		0.973527, 0.215623, -0.075835,
		0.026328, -0.435356, -0.899874,
		45.092415, 45.257988, 46.089325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130230, 46.229393, 46.530834>,  <45.073986, 45.562737, 46.719238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130230, 46.229393, 46.530834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.876434, 46.467453, 46.333561>,  <44.724159, 46.610291, 46.215199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.876434, 46.467453, 46.333561>,  <45.130230, 46.229393, 46.530834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876434, 46.467453, 46.333561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494305, 0.178092, 0.850850,
		0.594214, 0.783633, 0.181188,
		-0.634486, 0.595149, -0.493179,
		44.686089, 46.645996, 46.185608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186398, 46.941010, 46.790115>,  <45.130230, 46.229393, 46.530834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186398, 46.941010, 46.790115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.820709, 46.832932, 46.669319>,  <44.601295, 46.768085, 46.596840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.820709, 46.832932, 46.669319>,  <45.186398, 46.941010, 46.790115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820709, 46.832932, 46.669319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287610, -0.092339, 0.953286,
		-0.285457, 0.958368, 0.006708,
		-0.914218, -0.270193, -0.301995,
		44.546444, 46.751873, 46.578720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750660, 47.419075, 47.136646>,  <45.186398, 46.941010, 46.790115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750660, 47.419075, 47.136646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.538807, 47.096687, 47.030888>,  <44.411697, 46.903255, 46.967430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.538807, 47.096687, 47.030888>,  <44.750660, 47.419075, 47.136646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538807, 47.096687, 47.030888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471360, 0.020501, 0.881703,
		-0.705204, 0.591603, -0.390759,
		-0.529629, -0.805969, -0.264400,
		44.379917, 46.854897, 46.951569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137352, 47.682404, 47.243206>,  <44.750660, 47.419075, 47.136646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137352, 47.682404, 47.243206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129509, 47.282784, 47.258751>,  <44.124805, 47.043011, 47.268078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.129509, 47.282784, 47.258751>,  <44.137352, 47.682404, 47.243206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129509, 47.282784, 47.258751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390945, 0.043438, 0.919388,
		-0.920205, 0.002830, -0.391426,
		-0.019605, -0.999052, 0.038866,
		44.123627, 46.983067, 47.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600281, 47.423771, 47.509590>,  <44.137352, 47.682404, 47.243206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600281, 47.423771, 47.509590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.839714, 47.117172, 47.602699>,  <43.983376, 46.933212, 47.658566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.839714, 47.117172, 47.602699>,  <43.600281, 47.423771, 47.509590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839714, 47.117172, 47.602699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371911, -0.008553, 0.928229,
		-0.709491, -0.642194, -0.290188,
		0.598585, -0.766494, 0.232771,
		44.019291, 46.887222, 47.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171017, 46.899178, 47.997128>,  <43.600281, 47.423771, 47.509590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171017, 46.899178, 47.997128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.552795, 46.787315, 48.038742>,  <43.781864, 46.720200, 48.063709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.552795, 46.787315, 48.038742>,  <43.171017, 46.899178, 47.997128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552795, 46.787315, 48.038742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151321, -0.153159, 0.976547,
		-0.257163, -0.947805, -0.188500,
		0.954447, -0.279656, 0.104036,
		43.839130, 46.703419, 48.069954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123489, 46.224483, 48.383263>,  <43.171017, 46.899178, 47.997128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123489, 46.224483, 48.383263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.486568, 46.378708, 48.449497>,  <43.704418, 46.471245, 48.489239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.486568, 46.378708, 48.449497>,  <43.123489, 46.224483, 48.383263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486568, 46.378708, 48.449497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079852, -0.228695, 0.970218,
		0.411950, -0.893890, -0.176799,
		0.907701, 0.385564, 0.165590,
		43.758881, 46.494377, 48.499176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519135, 45.681969, 48.742390>,  <43.123489, 46.224483, 48.383263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519135, 45.681969, 48.742390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.699688, 46.022942, 48.847923>,  <43.808022, 46.227528, 48.911243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.699688, 46.022942, 48.847923>,  <43.519135, 45.681969, 48.742390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699688, 46.022942, 48.847923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034753, -0.278654, 0.959763,
		0.891654, -0.442389, -0.096155,
		0.451383, 0.852434, 0.263837,
		43.835102, 46.278671, 48.927074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950787, 45.466953, 49.357601>,  <43.519135, 45.681969, 48.742390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950787, 45.466953, 49.357601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.958504, 45.865791, 49.387047>,  <43.963135, 46.105095, 49.404716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.958504, 45.865791, 49.387047>,  <43.950787, 45.466953, 49.357601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958504, 45.865791, 49.387047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020314, -0.073226, 0.997108,
		0.999608, -0.020733, 0.018843,
		0.019293, 0.997100, 0.073619,
		43.964291, 46.164921, 49.409134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413578, 45.644161, 49.840904>,  <43.950787, 45.466953, 49.357601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413578, 45.644161, 49.840904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.211773, 45.989456, 49.847668>,  <44.090691, 46.196632, 49.851727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.211773, 45.989456, 49.847668>,  <44.413578, 45.644161, 49.840904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211773, 45.989456, 49.847668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230419, -0.153488, 0.960910,
		0.832091, 0.480894, 0.276344,
		-0.504511, 0.863239, 0.016909,
		44.060421, 46.248428, 49.852741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646248, 46.015648, 50.382488>,  <44.413578, 45.644161, 49.840904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646248, 46.015648, 50.382488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.327400, 46.254295, 50.345284>,  <44.136093, 46.397484, 50.322960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.327400, 46.254295, 50.345284>,  <44.646248, 46.015648, 50.382488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327400, 46.254295, 50.345284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190148, -0.101814, 0.976462,
		0.573107, 0.796039, 0.194604,
		-0.797115, 0.596620, -0.093015,
		44.088264, 46.433281, 50.317379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683910, 46.430466, 50.973251>,  <44.646248, 46.015648, 50.382488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683910, 46.430466, 50.973251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.310623, 46.452660, 50.831245>,  <44.086651, 46.465977, 50.746044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.310623, 46.452660, 50.831245>,  <44.683910, 46.430466, 50.973251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310623, 46.452660, 50.831245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358687, -0.085221, 0.929560,
		0.021323, 0.994816, 0.099431,
		-0.933214, 0.055486, -0.355010,
		44.030659, 46.469307, 50.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336159, 46.925343, 51.397243>,  <44.683910, 46.430466, 50.973251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336159, 46.925343, 51.397243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.056206, 46.691864, 51.232582>,  <43.888233, 46.551777, 51.133785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.056206, 46.691864, 51.232582>,  <44.336159, 46.925343, 51.397243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056206, 46.691864, 51.232582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465138, -0.064907, 0.882856,
		-0.542040, 0.809372, -0.226073,
		-0.699885, -0.583698, -0.411652,
		43.846241, 46.516754, 51.109085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700829, 47.213055, 51.689285>,  <44.336159, 46.925343, 51.397243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700829, 47.213055, 51.689285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.646587, 46.841766, 51.550709>,  <43.614044, 46.618992, 51.467564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.646587, 46.841766, 51.550709>,  <43.700829, 47.213055, 51.689285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646587, 46.841766, 51.550709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483734, -0.243131, 0.840766,
		-0.864647, 0.281590, -0.416044,
		-0.135598, -0.928221, -0.346437,
		43.605907, 46.563301, 51.446777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968784, 46.993107, 51.904034>,  <43.700829, 47.213055, 51.689285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968784, 46.993107, 51.904034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.148750, 46.643875, 51.828876>,  <43.256729, 46.434338, 51.783783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.148750, 46.643875, 51.828876>,  <42.968784, 46.993107, 51.904034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148750, 46.643875, 51.828876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460018, -0.406899, 0.789188,
		-0.765478, -0.268636, -0.584704,
		0.449919, -0.873080, -0.187895,
		43.283726, 46.381950, 51.772507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452770, 46.520634, 51.879986>,  <42.968784, 46.993107, 51.904034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452770, 46.520634, 51.879986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785397, 46.319061, 51.973412>,  <42.984974, 46.198120, 52.029465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.785397, 46.319061, 51.973412>,  <42.452770, 46.520634, 51.879986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785397, 46.319061, 51.973412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481507, -0.444465, 0.755382,
		-0.276846, -0.740614, -0.612247,
		0.831569, -0.503926, 0.233562,
		43.034866, 46.167885, 52.043480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247765, 45.816383, 52.023800>,  <42.452770, 46.520634, 51.879986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247765, 45.816383, 52.023800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.607483, 45.869057, 52.190613>,  <42.823315, 45.900661, 52.290703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.607483, 45.869057, 52.190613>,  <42.247765, 45.816383, 52.023800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607483, 45.869057, 52.190613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322817, -0.443440, 0.836152,
		0.295040, -0.886577, -0.356275,
		0.899300, 0.131686, 0.417035,
		42.877274, 45.908562, 52.315723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235924, 45.248287, 52.348988>,  <42.247765, 45.816383, 52.023800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235924, 45.248287, 52.348988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552361, 45.419884, 52.523407>,  <42.742222, 45.522842, 52.628059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.552361, 45.419884, 52.523407>,  <42.235924, 45.248287, 52.348988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552361, 45.419884, 52.523407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160221, -0.542640, 0.824543,
		0.590339, -0.722154, -0.360545,
		0.791093, 0.428993, 0.436046,
		42.789688, 45.548580, 52.654221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602158, 44.711662, 52.645035>,  <42.235924, 45.248287, 52.348988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602158, 44.711662, 52.645035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.743599, 45.040627, 52.823299>,  <42.828465, 45.238003, 52.930260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.743599, 45.040627, 52.823299>,  <42.602158, 44.711662, 52.645035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743599, 45.040627, 52.823299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008325, -0.473654, 0.880671,
		0.935360, -0.315115, -0.160637,
		0.353599, 0.822407, 0.445661,
		42.849678, 45.287350, 52.956997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091900, 44.412876, 53.016968>,  <42.602158, 44.711662, 52.645035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091900, 44.412876, 53.016968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.997341, 44.777016, 53.152840>,  <42.940605, 44.995499, 53.234364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.997341, 44.777016, 53.152840>,  <43.091900, 44.412876, 53.016968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997341, 44.777016, 53.152840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015465, -0.353070, 0.935469,
		0.971534, 0.215884, 0.097542,
		-0.236392, 0.910349, 0.339681,
		42.926422, 45.050121, 53.254745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469883, 44.442226, 53.681580>,  <43.091900, 44.412876, 53.016968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469883, 44.442226, 53.681580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.189762, 44.724091, 53.727222>,  <43.021690, 44.893211, 53.754608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.189762, 44.724091, 53.727222>,  <43.469883, 44.442226, 53.681580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189762, 44.724091, 53.727222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258883, -0.399678, 0.879339,
		0.665245, 0.586266, 0.462323,
		-0.700307, 0.704663, 0.114109,
		42.979671, 44.935490, 53.761456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546165, 44.914761, 54.366737>,  <43.469883, 44.442226, 53.681580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546165, 44.914761, 54.366737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.169586, 44.870613, 54.239311>,  <42.943638, 44.844124, 54.162853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.169586, 44.870613, 54.239311>,  <43.546165, 44.914761, 54.366737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169586, 44.870613, 54.239311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265934, -0.337717, 0.902899,
		-0.207234, 0.934755, 0.288595,
		-0.941453, -0.110364, -0.318569,
		42.887150, 44.837505, 54.143742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213528, 44.990284, 55.006790>,  <43.546165, 44.914761, 54.366737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213528, 44.990284, 55.006790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.932114, 44.859123, 54.754593>,  <42.763268, 44.780426, 54.603275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.932114, 44.859123, 54.754593>,  <43.213528, 44.990284, 55.006790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932114, 44.859123, 54.754593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637412, -0.101149, 0.763855,
		-0.314241, 0.939282, -0.137845,
		-0.703533, -0.327899, -0.630495,
		42.721054, 44.760754, 54.565445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534248, 45.355778, 55.135223>,  <43.213528, 44.990284, 55.006790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534248, 45.355778, 55.135223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416939, 45.020859, 54.950653>,  <42.346554, 44.819908, 54.839909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416939, 45.020859, 54.950653>,  <42.534248, 45.355778, 55.135223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416939, 45.020859, 54.950653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564060, -0.238149, 0.790646,
		-0.771898, 0.492148, -0.402446,
		-0.293273, -0.837302, -0.461428,
		42.328957, 44.769669, 54.812225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864357, 45.315247, 55.220161>,  <42.534248, 45.355778, 55.135223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864357, 45.315247, 55.220161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954887, 44.937531, 55.124580>,  <42.009205, 44.710903, 55.067234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954887, 44.937531, 55.124580>,  <41.864357, 45.315247, 55.220161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954887, 44.937531, 55.124580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589251, -0.328069, 0.738346,
		-0.775602, -0.026309, -0.630674,
		0.226330, -0.944288, -0.238948,
		42.022785, 44.654243, 55.052895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304688, 44.909531, 55.284821>,  <41.864357, 45.315247, 55.220161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304688, 44.909531, 55.284821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.554375, 44.597092, 55.278664>,  <41.704185, 44.409626, 55.274971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.554375, 44.597092, 55.278664>,  <41.304688, 44.909531, 55.284821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554375, 44.597092, 55.278664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591148, -0.485106, 0.644372,
		-0.510789, -0.393126, -0.764557,
		0.624211, -0.781104, -0.015391,
		41.741638, 44.362762, 55.274048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816727, 44.269798, 55.355709>,  <41.304688, 44.909531, 55.284821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816727, 44.269798, 55.355709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185036, 44.128227, 55.421329>,  <41.406021, 44.043285, 55.460701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.185036, 44.128227, 55.421329>,  <40.816727, 44.269798, 55.355709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185036, 44.128227, 55.421329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382936, -0.739801, 0.553222,
		-0.074434, -0.572214, -0.816720,
		0.920771, -0.353930, 0.164055,
		41.461266, 44.022049, 55.470547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392643, 43.785683, 55.030647>,  <40.816727, 44.269798, 55.355709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392643, 43.785683, 55.030647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126762, 43.522804, 54.888508>,  <39.967236, 43.365078, 54.803223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126762, 43.522804, 54.888508>,  <40.392643, 43.785683, 55.030647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126762, 43.522804, 54.888508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134046, 0.363012, -0.922092,
		0.734989, -0.660546, -0.153199,
		-0.664697, -0.657192, -0.355353,
		39.927353, 43.325645, 54.781902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669182, 43.531914, 54.472820>,  <40.392643, 43.785683, 55.030647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669182, 43.531914, 54.472820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295921, 43.405960, 54.403442>,  <40.071964, 43.330387, 54.361816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295921, 43.405960, 54.403442>,  <40.669182, 43.531914, 54.472820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295921, 43.405960, 54.403442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117326, 0.189289, -0.974887,
		0.339807, -0.930064, -0.139691,
		-0.933148, -0.314884, -0.173442,
		40.015976, 43.311497, 54.351410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783844, 43.145756, 53.858574>,  <40.669182, 43.531914, 54.472820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783844, 43.145756, 53.858574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391815, 43.221672, 53.882046>,  <40.156597, 43.267220, 53.896130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.391815, 43.221672, 53.882046>,  <40.783844, 43.145756, 53.858574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391815, 43.221672, 53.882046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024369, 0.178297, -0.983675,
		-0.197153, -0.965500, -0.170118,
		-0.980070, 0.189788, 0.058680,
		40.097794, 43.278606, 53.899651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428295, 42.773655, 53.397739>,  <40.783844, 43.145756, 53.858574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428295, 42.773655, 53.397739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167110, 43.067589, 53.471127>,  <40.010399, 43.243950, 53.515160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.167110, 43.067589, 53.471127>,  <40.428295, 42.773655, 53.397739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167110, 43.067589, 53.471127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152040, 0.110138, -0.982219,
		-0.741976, -0.669243, 0.039809,
		-0.652959, 0.734835, 0.183472,
		39.971222, 43.288040, 53.526169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821617, 42.718864, 52.978321>,  <40.428295, 42.773655, 53.397739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821617, 42.718864, 52.978321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839100, 43.102295, 53.090904>,  <39.849590, 43.332352, 53.158455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.839100, 43.102295, 53.090904>,  <39.821617, 42.718864, 52.978321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839100, 43.102295, 53.090904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110947, 0.275329, -0.954927,
		-0.992865, 0.072963, -0.094318,
		0.043706, 0.958577, 0.281460,
		39.852211, 43.389870, 53.175343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
