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
	<50.080372, 41.868507, 46.929913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.038231, 42.239090, 47.074459>,  <50.012947, 42.461437, 47.161186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.038231, 42.239090, 47.074459>,  <50.080372, 41.868507, 46.929913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.038231, 42.239090, 47.074459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134848, -0.373342, 0.917841,
		0.985249, 0.047968, 0.164263,
		-0.105354, 0.926453, 0.361366,
		50.006626, 42.517025, 47.182869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.454826, 41.957649, 47.586697>,  <50.080372, 41.868507, 46.929913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.454826, 41.957649, 47.586697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165947, 42.233948, 47.601093>,  <49.992619, 42.399727, 47.609730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.165947, 42.233948, 47.601093>,  <50.454826, 41.957649, 47.586697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.165947, 42.233948, 47.601093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180249, -0.238180, 0.954349,
		0.667784, 0.682745, 0.296520,
		-0.722202, 0.690746, 0.035989,
		49.949287, 42.441170, 47.611889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.546532, 42.232994, 48.195835>,  <50.454826, 41.957649, 47.586697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.546532, 42.232994, 48.195835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172852, 42.328461, 48.089767>,  <49.948643, 42.385742, 48.026127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.172852, 42.328461, 48.089767>,  <50.546532, 42.232994, 48.195835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.172852, 42.328461, 48.089767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315347, -0.204861, 0.926600,
		0.166828, 0.949247, 0.266644,
		-0.934197, 0.238669, -0.265166,
		49.892593, 42.400063, 48.010220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.311302, 42.701195, 48.750679>,  <50.546532, 42.232994, 48.195835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.311302, 42.701195, 48.750679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.993599, 42.551811, 48.558975>,  <49.802979, 42.462181, 48.443954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.993599, 42.551811, 48.558975>,  <50.311302, 42.701195, 48.750679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.993599, 42.551811, 48.558975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420833, -0.230802, 0.877286,
		-0.438246, 0.898475, 0.026150,
		-0.794255, -0.373462, -0.479256,
		49.755322, 42.439774, 48.415199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.655167, 42.962795, 49.112427>,  <50.311302, 42.701195, 48.750679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.655167, 42.962795, 49.112427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.511887, 42.686600, 48.861057>,  <49.425919, 42.520882, 48.710236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.511887, 42.686600, 48.861057>,  <49.655167, 42.962795, 49.112427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.511887, 42.686600, 48.861057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705625, -0.240541, 0.666509,
		-0.611378, 0.682177, -0.401063,
		-0.358205, -0.690488, -0.628423,
		49.404427, 42.479454, 48.672531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.967426, 43.056152, 49.121159>,  <49.655167, 42.962795, 49.112427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.967426, 43.056152, 49.121159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.993149, 42.686249, 48.971130>,  <49.008583, 42.464306, 48.881115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.993149, 42.686249, 48.971130>,  <48.967426, 43.056152, 49.121159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.993149, 42.686249, 48.971130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712655, -0.305655, 0.631426,
		-0.698561, 0.226689, -0.678693,
		0.064309, -0.924763, -0.375070,
		49.012440, 42.408821, 48.858608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.243282, 42.788433, 49.029793>,  <48.967426, 43.056152, 49.121159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.243282, 42.788433, 49.029793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.466545, 42.456573, 49.034443>,  <48.600502, 42.257458, 49.037235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.466545, 42.456573, 49.034443>,  <48.243282, 42.788433, 49.029793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.466545, 42.456573, 49.034443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655577, -0.432368, 0.619093,
		-0.508606, -0.353173, -0.785231,
		0.558156, -0.829655, 0.011627,
		48.633991, 42.207676, 49.037933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.785233, 42.264355, 48.845928>,  <48.243282, 42.788433, 49.029793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.785233, 42.264355, 48.845928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.093742, 42.096542, 49.037395>,  <48.278851, 41.995853, 49.152275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.093742, 42.096542, 49.037395>,  <47.785233, 42.264355, 48.845928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.093742, 42.096542, 49.037395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626383, -0.366760, 0.687846,
		-0.113019, -0.830349, -0.545663,
		0.771279, -0.419534, 0.478665,
		48.325127, 41.970680, 49.180996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.668880, 41.566299, 48.844345>,  <47.785233, 42.264355, 48.845928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.668880, 41.566299, 48.844345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918427, 41.613274, 49.153408>,  <48.068153, 41.641460, 49.338848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.918427, 41.613274, 49.153408>,  <47.668880, 41.566299, 48.844345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.918427, 41.613274, 49.153408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594301, -0.570762, 0.566602,
		0.507547, -0.812674, -0.286281,
		0.623861, 0.117440, 0.772661,
		48.105583, 41.648506, 49.385208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.749443, 40.856205, 49.114304>,  <47.668880, 41.566299, 48.844345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.749443, 40.856205, 49.114304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882446, 41.111061, 49.392437>,  <47.962246, 41.263973, 49.559319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.882446, 41.111061, 49.392437>,  <47.749443, 40.856205, 49.114304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.882446, 41.111061, 49.392437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585978, -0.438129, 0.681669,
		0.738965, -0.634111, 0.227669,
		0.332505, 0.637139, 0.695338,
		47.982197, 41.302204, 49.601040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.943134, 40.437054, 49.688072>,  <47.749443, 40.856205, 49.114304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.943134, 40.437054, 49.688072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888985, 40.808121, 49.827271>,  <47.856495, 41.030762, 49.910789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.888985, 40.808121, 49.827271>,  <47.943134, 40.437054, 49.688072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.888985, 40.808121, 49.827271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357023, -0.373308, 0.856256,
		0.924234, -0.008329, 0.381736,
		-0.135373, 0.927670, 0.347998,
		47.848373, 41.086422, 49.931671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.167675, 40.462910, 50.434593>,  <47.943134, 40.437054, 49.688072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.167675, 40.462910, 50.434593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940727, 40.790527, 50.400532>,  <47.804558, 40.987099, 50.380096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940727, 40.790527, 50.400532>,  <48.167675, 40.462910, 50.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.940727, 40.790527, 50.400532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396428, -0.181041, 0.900038,
		0.721759, 0.544412, 0.427411,
		-0.567370, 0.819048, -0.085152,
		47.770515, 41.036243, 50.374985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.176640, 40.692474, 51.125416>,  <48.167675, 40.462910, 50.434593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.176640, 40.692474, 51.125416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870811, 40.893883, 50.964470>,  <47.687313, 41.014729, 50.867901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.870811, 40.893883, 50.964470>,  <48.176640, 40.692474, 51.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.870811, 40.893883, 50.964470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446342, 0.036736, 0.894108,
		0.464982, 0.863202, 0.196655,
		-0.764572, 0.503520, -0.402365,
		47.641441, 41.044937, 50.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.006420, 41.124683, 51.600983>,  <48.176640, 40.692474, 51.125416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.006420, 41.124683, 51.600983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668472, 41.169594, 51.391758>,  <47.465706, 41.196541, 51.266224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668472, 41.169594, 51.391758>,  <48.006420, 41.124683, 51.600983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668472, 41.169594, 51.391758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511862, 0.114641, 0.851384,
		0.155551, 0.987042, -0.039388,
		-0.844867, 0.112272, -0.523062,
		47.415012, 41.203274, 51.234840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596981, 41.778339, 51.828735>,  <48.006420, 41.124683, 51.600983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596981, 41.778339, 51.828735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328888, 41.512688, 51.696239>,  <47.168034, 41.353294, 51.616741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.328888, 41.512688, 51.696239>,  <47.596981, 41.778339, 51.828735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.328888, 41.512688, 51.696239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586716, 0.200836, 0.784493,
		-0.454484, 0.720133, -0.524264,
		-0.670231, -0.664133, -0.331237,
		47.127819, 41.313446, 51.596867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908920, 42.157711, 51.820351>,  <47.596981, 41.778339, 51.828735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908920, 42.157711, 51.820351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874748, 41.760429, 51.851967>,  <46.854244, 41.522060, 51.870937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874748, 41.760429, 51.851967>,  <46.908920, 42.157711, 51.820351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874748, 41.760429, 51.851967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550896, 0.113185, 0.826863,
		-0.830190, 0.027100, -0.556822,
		-0.085432, -0.993204, 0.079036,
		46.849117, 41.462467, 51.875679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281174, 42.078754, 52.067406>,  <46.908920, 42.157711, 51.820351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281174, 42.078754, 52.067406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414673, 41.706711, 52.128735>,  <46.494774, 41.483486, 52.165531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.414673, 41.706711, 52.128735>,  <46.281174, 42.078754, 52.067406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.414673, 41.706711, 52.128735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522270, -0.047043, 0.851482,
		-0.784758, -0.364258, -0.501468,
		0.333750, -0.930109, 0.153323,
		46.514797, 41.427677, 52.174732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705631, 41.796543, 52.409027>,  <46.281174, 42.078754, 52.067406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705631, 41.796543, 52.409027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987175, 41.532135, 52.513058>,  <46.156101, 41.373489, 52.575478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987175, 41.532135, 52.513058>,  <45.705631, 41.796543, 52.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987175, 41.532135, 52.513058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414383, -0.084715, 0.906151,
		-0.576950, -0.745573, -0.333542,
		0.703857, -0.661018, 0.260077,
		46.198334, 41.333828, 52.591080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301094, 41.273418, 52.851040>,  <45.705631, 41.796543, 52.409027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301094, 41.273418, 52.851040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692017, 41.213974, 52.911430>,  <45.926571, 41.178307, 52.947662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.692017, 41.213974, 52.911430>,  <45.301094, 41.273418, 52.851040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692017, 41.213974, 52.911430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147668, 0.033097, 0.988483,
		-0.151901, -0.988341, 0.010400,
		0.977303, -0.148615, 0.150974,
		45.985207, 41.169392, 52.956722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383636, 40.710510, 53.294464>,  <45.301094, 41.273418, 52.851040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383636, 40.710510, 53.294464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732742, 40.900948, 53.337570>,  <45.942207, 41.015209, 53.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732742, 40.900948, 53.337570>,  <45.383636, 40.710510, 53.294464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732742, 40.900948, 53.337570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084259, -0.070520, 0.993945,
		0.480807, -0.876564, -0.021433,
		0.872769, 0.476090, 0.107765,
		45.994572, 41.043774, 53.369900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883587, 40.230457, 53.803802>,  <45.383636, 40.710510, 53.294464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883587, 40.230457, 53.803802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976051, 40.619591, 53.808933>,  <46.031532, 40.853069, 53.812012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976051, 40.619591, 53.808933>,  <45.883587, 40.230457, 53.803802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976051, 40.619591, 53.808933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099810, 0.010594, 0.994950,
		0.967782, -0.231276, 0.099547,
		0.231163, 0.972830, 0.012832,
		46.045399, 40.911442, 53.812782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462872, 40.321972, 54.313702>,  <45.883587, 40.230457, 53.803802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462872, 40.321972, 54.313702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302666, 40.684662, 54.260872>,  <46.206543, 40.902275, 54.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302666, 40.684662, 54.260872>,  <46.462872, 40.321972, 54.313702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302666, 40.684662, 54.260872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024076, 0.133673, 0.990733,
		0.915972, 0.399987, -0.031708,
		-0.400519, 0.906721, -0.132071,
		46.182510, 40.956676, 54.221252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929771, 40.768513, 54.662666>,  <46.462872, 40.321972, 54.313702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929771, 40.768513, 54.662666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608345, 41.002174, 54.616970>,  <46.415489, 41.142372, 54.589554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608345, 41.002174, 54.616970>,  <46.929771, 40.768513, 54.662666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608345, 41.002174, 54.616970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086608, 0.304639, 0.948522,
		0.588885, 0.752303, -0.295389,
		-0.803563, 0.584153, -0.114242,
		46.367275, 41.177422, 54.582699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.043022, 41.288414, 55.072926>,  <46.929771, 40.768513, 54.662666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.043022, 41.288414, 55.072926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648674, 41.312210, 55.010284>,  <46.412067, 41.326488, 54.972698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648674, 41.312210, 55.010284>,  <47.043022, 41.288414, 55.072926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648674, 41.312210, 55.010284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138770, 0.233690, 0.962358,
		0.093850, 0.970490, -0.222131,
		-0.985868, 0.059492, -0.156607,
		46.352913, 41.330059, 54.963303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772968, 42.063339, 55.132729>,  <47.043022, 41.288414, 55.072926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772968, 42.063339, 55.132729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486588, 41.796692, 55.215702>,  <46.314758, 41.636703, 55.265488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486588, 41.796692, 55.215702>,  <46.772968, 42.063339, 55.132729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486588, 41.796692, 55.215702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135619, 0.424259, 0.895328,
		-0.684846, 0.612884, -0.394157,
		-0.715957, -0.666617, 0.207433,
		46.271801, 41.596706, 55.277931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405651, 42.418755, 55.647980>,  <46.772968, 42.063339, 55.132729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405651, 42.418755, 55.647980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232491, 42.058411, 55.660931>,  <46.128593, 41.842205, 55.668701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232491, 42.058411, 55.660931>,  <46.405651, 42.418755, 55.647980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232491, 42.058411, 55.660931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415462, 0.231266, 0.879720,
		-0.799991, 0.367382, -0.474389,
		-0.432903, -0.900859, 0.032377,
		46.102619, 41.788155, 55.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815235, 42.576218, 56.097054>,  <46.405651, 42.418755, 55.647980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815235, 42.576218, 56.097054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828209, 42.176460, 56.102215>,  <45.835995, 41.936607, 56.105312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.828209, 42.176460, 56.102215>,  <45.815235, 42.576218, 56.097054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828209, 42.176460, 56.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287194, 0.003043, 0.957868,
		-0.957323, -0.034777, -0.286920,
		0.032439, -0.999391, 0.012901,
		45.837940, 41.876644, 56.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142532, 42.399998, 56.276943>,  <45.815235, 42.576218, 56.097054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142532, 42.399998, 56.276943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386192, 42.097290, 56.371799>,  <45.532391, 41.915665, 56.428715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386192, 42.097290, 56.371799>,  <45.142532, 42.399998, 56.276943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386192, 42.097290, 56.371799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242700, 0.106785, 0.964206,
		-0.755003, -0.644903, -0.118619,
		0.609152, -0.756768, 0.237141,
		45.568939, 41.870258, 56.442944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796818, 42.040039, 56.781666>,  <45.142532, 42.399998, 56.276943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796818, 42.040039, 56.781666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176048, 41.925232, 56.836479>,  <45.403587, 41.856346, 56.869366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176048, 41.925232, 56.836479>,  <44.796818, 42.040039, 56.781666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176048, 41.925232, 56.836479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185704, -0.149774, 0.971124,
		-0.258209, -0.946143, -0.195298,
		0.948073, -0.287020, 0.137030,
		45.460472, 41.839127, 56.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840946, 41.370525, 57.125820>,  <44.796818, 42.040039, 56.781666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840946, 41.370525, 57.125820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191723, 41.544273, 57.208084>,  <45.402187, 41.648521, 57.257442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191723, 41.544273, 57.208084>,  <44.840946, 41.370525, 57.125820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191723, 41.544273, 57.208084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098242, -0.256879, 0.961437,
		0.470454, -0.863326, -0.182594,
		0.876939, 0.434374, 0.205665,
		45.454803, 41.674587, 57.269783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126869, 40.924084, 57.646114>,  <44.840946, 41.370525, 57.125820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126869, 40.924084, 57.646114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318138, 41.274330, 57.673370>,  <45.432899, 41.484478, 57.689724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.318138, 41.274330, 57.673370>,  <45.126869, 40.924084, 57.646114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.318138, 41.274330, 57.673370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033588, -0.059292, 0.997675,
		0.877625, -0.479347, 0.001059,
		0.478169, 0.875620, 0.068137,
		45.461590, 41.537018, 57.693813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538963, 40.801659, 58.224533>,  <45.126869, 40.924084, 57.646114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538963, 40.801659, 58.224533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541824, 41.198601, 58.175255>,  <45.543541, 41.436768, 58.145687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541824, 41.198601, 58.175255>,  <45.538963, 40.801659, 58.224533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541824, 41.198601, 58.175255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003191, 0.123224, 0.992374,
		0.999969, -0.006706, 0.004048,
		0.007153, 0.992356, -0.123198,
		45.543972, 41.496307, 58.138294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037956, 41.129967, 58.706413>,  <45.538963, 40.801659, 58.224533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037956, 41.129967, 58.706413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779732, 41.423439, 58.621590>,  <45.624798, 41.599522, 58.570698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.779732, 41.423439, 58.621590>,  <46.037956, 41.129967, 58.706413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779732, 41.423439, 58.621590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101436, 0.192835, 0.975974,
		0.756943, 0.651561, -0.050065,
		-0.645561, 0.733678, -0.212057,
		45.586063, 41.643543, 58.557972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190056, 41.784580, 59.151741>,  <46.037956, 41.129967, 58.706413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190056, 41.784580, 59.151741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805138, 41.799210, 59.043926>,  <45.574188, 41.807987, 58.979237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805138, 41.799210, 59.043926>,  <46.190056, 41.784580, 59.151741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805138, 41.799210, 59.043926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230645, 0.415569, 0.879832,
		0.144188, 0.908826, -0.391465,
		-0.962296, 0.036572, -0.269536,
		45.516449, 41.810181, 58.963066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954990, 42.393353, 59.372574>,  <46.190056, 41.784580, 59.151741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954990, 42.393353, 59.372574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600777, 42.211647, 59.333649>,  <45.388248, 42.102623, 59.310291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.600777, 42.211647, 59.333649>,  <45.954990, 42.393353, 59.372574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600777, 42.211647, 59.333649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278650, 0.351751, 0.893658,
		-0.371722, 0.818485, -0.438069,
		-0.885537, -0.454261, -0.097317,
		45.335114, 42.075367, 59.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393250, 42.843987, 59.420624>,  <45.954990, 42.393353, 59.372574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393250, 42.843987, 59.420624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185760, 42.508301, 59.485916>,  <45.061268, 42.306889, 59.525093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185760, 42.508301, 59.485916>,  <45.393250, 42.843987, 59.420624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185760, 42.508301, 59.485916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495524, 0.450710, 0.742507,
		-0.696692, 0.304273, -0.649645,
		-0.518726, -0.839213, 0.163232,
		45.030144, 42.256538, 59.534885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712410, 43.045853, 59.478214>,  <45.393250, 42.843987, 59.420624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712410, 43.045853, 59.478214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709053, 42.689217, 59.659317>,  <44.707039, 42.475235, 59.767979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.709053, 42.689217, 59.659317>,  <44.712410, 43.045853, 59.478214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709053, 42.689217, 59.659317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614808, 0.361684, 0.700854,
		-0.788632, -0.272481, -0.551193,
		-0.008388, -0.891593, 0.452759,
		44.706535, 42.421738, 59.795143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031715, 42.905838, 59.648739>,  <44.712410, 43.045853, 59.478214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031715, 42.905838, 59.648739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250641, 42.681656, 59.897362>,  <44.381996, 42.547146, 60.046535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.250641, 42.681656, 59.897362>,  <44.031715, 42.905838, 59.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250641, 42.681656, 59.897362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440031, 0.439035, 0.783340,
		-0.711911, -0.702241, -0.006325,
		0.547317, -0.560452, 0.621561,
		44.414837, 42.513519, 60.083832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525391, 42.724407, 60.165241>,  <44.031715, 42.905838, 59.648739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525391, 42.724407, 60.165241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881645, 42.662064, 60.336113>,  <44.095398, 42.624657, 60.438637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881645, 42.662064, 60.336113>,  <43.525391, 42.724407, 60.165241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881645, 42.662064, 60.336113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364055, 0.318499, 0.875227,
		-0.272466, -0.935023, 0.226925,
		0.890633, -0.155857, 0.427180,
		44.148834, 42.615307, 60.464268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327347, 42.386703, 60.852287>,  <43.525391, 42.724407, 60.165241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327347, 42.386703, 60.852287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703178, 42.517654, 60.892323>,  <43.928677, 42.596226, 60.916344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703178, 42.517654, 60.892323>,  <43.327347, 42.386703, 60.852287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703178, 42.517654, 60.892323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211789, 0.326165, 0.921283,
		0.268964, -0.886814, 0.375793,
		0.939577, 0.327381, 0.100090,
		43.985050, 42.615868, 60.922348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583652, 42.122204, 61.480881>,  <43.327347, 42.386703, 60.852287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583652, 42.122204, 61.480881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804100, 42.446022, 61.399982>,  <43.936367, 42.640312, 61.351444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804100, 42.446022, 61.399982>,  <43.583652, 42.122204, 61.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804100, 42.446022, 61.399982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171829, 0.347288, 0.921882,
		0.816543, -0.473314, 0.330500,
		0.551118, 0.809546, -0.202246,
		43.969437, 42.688885, 61.339310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137772, 42.108109, 61.988808>,  <43.583652, 42.122204, 61.480881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137772, 42.108109, 61.988808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068325, 42.470741, 61.834946>,  <44.026657, 42.688320, 61.742630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068325, 42.470741, 61.834946>,  <44.137772, 42.108109, 61.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068325, 42.470741, 61.834946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191783, 0.351982, 0.916148,
		0.965958, 0.232831, 0.112757,
		-0.173619, 0.906586, -0.384653,
		44.016239, 42.742718, 61.719551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557526, 42.696838, 62.197998>,  <44.137772, 42.108109, 61.988808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557526, 42.696838, 62.197998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200092, 42.860115, 62.123291>,  <43.985634, 42.958080, 62.078465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.200092, 42.860115, 62.123291>,  <44.557526, 42.696838, 62.197998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200092, 42.860115, 62.123291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091112, 0.572334, 0.814943,
		0.439552, 0.711203, -0.548620,
		-0.893584, 0.408196, -0.186771,
		43.932018, 42.982574, 62.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529240, 43.348862, 62.251820>,  <44.557526, 42.696838, 62.197998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529240, 43.348862, 62.251820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135773, 43.360916, 62.322807>,  <43.899693, 43.368149, 62.365402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135773, 43.360916, 62.322807>,  <44.529240, 43.348862, 62.251820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135773, 43.360916, 62.322807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154956, 0.643496, 0.749601,
		-0.091614, 0.764856, -0.637653,
		-0.983664, 0.030134, 0.177472,
		43.840672, 43.369957, 62.376049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353561, 44.110844, 62.155479>,  <44.529240, 43.348862, 62.251820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353561, 44.110844, 62.155479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147038, 43.915817, 62.437103>,  <44.023121, 43.798801, 62.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147038, 43.915817, 62.437103>,  <44.353561, 44.110844, 62.155479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147038, 43.915817, 62.437103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290700, 0.673520, 0.679606,
		-0.805551, 0.555560, -0.206011,
		-0.516314, -0.487570, 0.704056,
		43.992142, 43.769547, 62.648319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976067, 44.607243, 62.537693>,  <44.353561, 44.110844, 62.155479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976067, 44.607243, 62.537693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058815, 44.282608, 62.756241>,  <44.108463, 44.087826, 62.887371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058815, 44.282608, 62.756241>,  <43.976067, 44.607243, 62.537693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058815, 44.282608, 62.756241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301512, 0.584160, 0.753557,
		-0.930749, 0.008846, 0.365553,
		0.206875, -0.811590, 0.546373,
		44.120876, 44.039131, 62.920155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512840, 44.705921, 63.032127>,  <43.976067, 44.607243, 62.537693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512840, 44.705921, 63.032127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827049, 44.498466, 63.167168>,  <44.015575, 44.373993, 63.248192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827049, 44.498466, 63.167168>,  <43.512840, 44.705921, 63.032127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827049, 44.498466, 63.167168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251887, 0.766267, 0.591090,
		-0.565256, -0.379274, 0.732555,
		0.785518, -0.518638, 0.337603,
		44.062706, 44.342876, 63.268448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916836, 45.072205, 62.703239>,  <43.512840, 44.705921, 63.032127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916836, 45.072205, 62.703239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708855, 45.054710, 62.362011>,  <42.584064, 45.044216, 62.157272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708855, 45.054710, 62.362011>,  <42.916836, 45.072205, 62.703239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708855, 45.054710, 62.362011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799843, 0.325628, -0.504200,
		0.299835, -0.944486, -0.134331,
		-0.519951, -0.043733, -0.853076,
		42.552868, 45.041592, 62.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308502, 44.907978, 62.090767>,  <42.916836, 45.072205, 62.703239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308502, 44.907978, 62.090767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005524, 45.099579, 61.913300>,  <42.823738, 45.214539, 61.806820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005524, 45.099579, 61.913300>,  <43.308502, 44.907978, 62.090767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005524, 45.099579, 61.913300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634147, 0.378037, -0.674497,
		-0.155363, -0.792241, -0.590098,
		-0.757443, 0.479001, -0.443664,
		42.778290, 45.243279, 61.780201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039486, 44.670399, 61.277737>,  <43.308502, 44.907978, 62.090767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039486, 44.670399, 61.277737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024940, 45.052879, 61.393921>,  <43.016212, 45.282368, 61.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024940, 45.052879, 61.393921>,  <43.039486, 44.670399, 61.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024940, 45.052879, 61.393921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737661, 0.221765, -0.637713,
		-0.674192, 0.191070, -0.713413,
		-0.036362, 0.956197, 0.290457,
		43.014030, 45.339737, 61.481056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790962, 45.195747, 60.758595>,  <43.039486, 44.670399, 61.277737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790962, 45.195747, 60.758595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047733, 45.347504, 61.025124>,  <43.201794, 45.438557, 61.185043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047733, 45.347504, 61.025124>,  <42.790962, 45.195747, 60.758595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047733, 45.347504, 61.025124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589743, 0.311084, -0.745272,
		-0.490035, 0.871371, -0.024052,
		0.641926, 0.379394, 0.666327,
		43.240311, 45.461323, 61.225021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874279, 45.921753, 60.616055>,  <42.790962, 45.195747, 60.758595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874279, 45.921753, 60.616055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195602, 45.751328, 60.782509>,  <43.388397, 45.649071, 60.882381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195602, 45.751328, 60.782509>,  <42.874279, 45.921753, 60.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195602, 45.751328, 60.782509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538944, 0.222680, -0.812375,
		0.253462, 0.876858, 0.408506,
		0.803304, -0.426068, 0.416136,
		43.436592, 45.623508, 60.907349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509235, 46.413559, 60.525913>,  <42.874279, 45.921753, 60.616055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509235, 46.413559, 60.525913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628124, 46.036049, 60.583809>,  <43.699459, 45.809544, 60.618546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628124, 46.036049, 60.583809>,  <43.509235, 46.413559, 60.525913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628124, 46.036049, 60.583809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676865, 0.101353, -0.729096,
		0.673433, 0.314670, 0.668933,
		0.297223, -0.943775, 0.144734,
		43.717293, 45.752918, 60.627228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199883, 46.453648, 60.414513>,  <43.509235, 46.413559, 60.525913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199883, 46.453648, 60.414513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127998, 46.065178, 60.351871>,  <44.084869, 45.832096, 60.314285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127998, 46.065178, 60.351871>,  <44.199883, 46.453648, 60.414513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127998, 46.065178, 60.351871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599486, 0.018098, -0.800180,
		0.779949, -0.237682, 0.578953,
		-0.179711, -0.971174, -0.156603,
		44.074085, 45.773827, 60.304890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805161, 46.137211, 60.325478>,  <44.199883, 46.453648, 60.414513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805161, 46.137211, 60.325478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552410, 45.886848, 60.142620>,  <44.400761, 45.736629, 60.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552410, 45.886848, 60.142620>,  <44.805161, 46.137211, 60.325478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552410, 45.886848, 60.142620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626784, -0.065684, -0.776420,
		0.455939, -0.777127, 0.433812,
		-0.631872, -0.625906, -0.457143,
		44.362850, 45.699078, 60.005478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246731, 45.722450, 60.002003>,  <44.805161, 46.137211, 60.325478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246731, 45.722450, 60.002003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890076, 45.662651, 59.831062>,  <44.676083, 45.626770, 59.728497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890076, 45.662651, 59.831062>,  <45.246731, 45.722450, 60.002003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890076, 45.662651, 59.831062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410206, 0.132712, -0.902285,
		0.191610, -0.979814, -0.057004,
		-0.891637, -0.149503, -0.427354,
		44.622585, 45.617802, 59.702854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397533, 45.432411, 59.417175>,  <45.246731, 45.722450, 60.002003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397533, 45.432411, 59.417175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017796, 45.529305, 59.337112>,  <44.789951, 45.587440, 59.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017796, 45.529305, 59.337112>,  <45.397533, 45.432411, 59.417175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017796, 45.529305, 59.337112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253493, 0.213982, -0.943373,
		-0.185688, -0.946327, -0.264548,
		-0.949348, 0.242234, -0.200154,
		44.732990, 45.601974, 59.277065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.217300, 44.998810, 58.877079>,  <45.397533, 45.432411, 59.417175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.217300, 44.998810, 58.877079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993828, 45.329041, 58.908802>,  <44.859745, 45.527180, 58.927837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.993828, 45.329041, 58.908802>,  <45.217300, 44.998810, 58.877079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993828, 45.329041, 58.908802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004535, 0.092584, -0.995695,
		-0.829370, -0.556636, -0.047980,
		-0.558681, 0.825581, 0.079311,
		44.826221, 45.576714, 58.932594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735981, 45.029049, 58.229786>,  <45.217300, 44.998810, 58.877079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735981, 45.029049, 58.229786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733292, 45.410126, 58.351334>,  <44.731678, 45.638771, 58.424263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733292, 45.410126, 58.351334>,  <44.735981, 45.029049, 58.229786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733292, 45.410126, 58.351334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000899, 0.303885, -0.952708,
		-0.999977, -0.006133, -0.002900,
		-0.006725, 0.952689, 0.303873,
		44.731274, 45.695934, 58.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095757, 45.383324, 57.980648>,  <44.735981, 45.029049, 58.229786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095757, 45.383324, 57.980648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365936, 45.673561, 58.033241>,  <44.528042, 45.847702, 58.064796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365936, 45.673561, 58.033241>,  <44.095757, 45.383324, 57.980648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365936, 45.673561, 58.033241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059223, 0.231111, -0.971123,
		-0.735028, 0.648153, 0.199075,
		0.675445, 0.725593, 0.131488,
		44.568569, 45.891239, 58.072689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807247, 46.025009, 57.577278>,  <44.095757, 45.383324, 57.980648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807247, 46.025009, 57.577278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186531, 46.131386, 57.646767>,  <44.414101, 46.195213, 57.688461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186531, 46.131386, 57.646767>,  <43.807247, 46.025009, 57.577278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186531, 46.131386, 57.646767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082497, 0.321955, -0.943154,
		-0.306758, 0.908635, 0.283340,
		0.948205, 0.265945, 0.173722,
		44.470993, 46.211170, 57.698883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882683, 46.626442, 57.256592>,  <43.807247, 46.025009, 57.577278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882683, 46.626442, 57.256592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259964, 46.495369, 57.278442>,  <44.486332, 46.416725, 57.291553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259964, 46.495369, 57.278442>,  <43.882683, 46.626442, 57.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259964, 46.495369, 57.278442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165258, 0.320169, -0.932835,
		0.288183, 0.888885, 0.356137,
		0.943208, -0.327682, 0.054628,
		44.542927, 46.397064, 57.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314854, 47.118565, 56.909382>,  <43.882683, 46.626442, 57.256592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314854, 47.118565, 56.909382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503403, 46.765793, 56.908157>,  <44.616531, 46.554131, 56.907425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.503403, 46.765793, 56.908157>,  <44.314854, 47.118565, 56.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503403, 46.765793, 56.908157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121905, 0.068589, -0.990169,
		0.873467, 0.466368, 0.139842,
		0.471375, -0.881928, -0.003057,
		44.644814, 46.501213, 56.907242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997879, 47.339123, 56.608051>,  <44.314854, 47.118565, 56.909382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997879, 47.339123, 56.608051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920135, 46.949059, 56.565552>,  <44.873489, 46.715019, 56.540054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920135, 46.949059, 56.565552>,  <44.997879, 47.339123, 56.608051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920135, 46.949059, 56.565552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314013, 0.040761, -0.948544,
		0.929313, -0.217718, 0.298290,
		-0.194356, -0.975160, -0.106246,
		44.861828, 46.656509, 56.533676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401134, 47.205910, 56.136349>,  <44.997879, 47.339123, 56.608051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401134, 47.205910, 56.136349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204182, 46.857903, 56.126320>,  <45.086010, 46.649097, 56.120304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204182, 46.857903, 56.126320>,  <45.401134, 47.205910, 56.136349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204182, 46.857903, 56.126320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144131, -0.053099, -0.988133,
		0.858365, -0.490148, 0.151542,
		-0.492378, -0.870020, -0.025067,
		45.056469, 46.596897, 56.118801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.847347, 46.659637, 55.890083>,  <45.401134, 47.205910, 56.136349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.847347, 46.659637, 55.890083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479393, 46.507416, 55.852165>,  <45.258621, 46.416084, 55.829414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.479393, 46.507416, 55.852165>,  <45.847347, 46.659637, 55.890083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479393, 46.507416, 55.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199762, -0.246644, -0.948294,
		0.337498, -0.891260, 0.302905,
		-0.919886, -0.380556, -0.094798,
		45.203426, 46.393250, 55.823727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858429, 45.988876, 55.687599>,  <45.847347, 46.659637, 55.890083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858429, 45.988876, 55.687599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501251, 46.115280, 55.559361>,  <45.286945, 46.191120, 55.482418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.501251, 46.115280, 55.559361>,  <45.858429, 45.988876, 55.687599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501251, 46.115280, 55.559361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255748, -0.229970, -0.938993,
		-0.370459, -0.920463, 0.124532,
		-0.892947, 0.316009, -0.320600,
		45.233368, 46.210083, 55.463181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755867, 45.512329, 55.184483>,  <45.858429, 45.988876, 55.687599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755867, 45.512329, 55.184483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492599, 45.806282, 55.119038>,  <45.334641, 45.982655, 55.079769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.492599, 45.806282, 55.119038>,  <45.755867, 45.512329, 55.184483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492599, 45.806282, 55.119038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250533, 0.008849, -0.968068,
		-0.709967, -0.678138, -0.189936,
		-0.658164, 0.734881, -0.163613,
		45.295151, 46.026745, 55.069954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286919, 45.223415, 54.697285>,  <45.755867, 45.512329, 55.184483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286919, 45.223415, 54.697285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260979, 45.620789, 54.659592>,  <45.245415, 45.859215, 54.636974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260979, 45.620789, 54.659592>,  <45.286919, 45.223415, 54.697285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260979, 45.620789, 54.659592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081312, -0.088860, -0.992720,
		-0.994577, -0.072045, -0.075015,
		-0.064854, 0.993435, -0.094236,
		45.241524, 45.918819, 54.631321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795361, 45.266941, 54.191158>,  <45.286919, 45.223415, 54.697285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795361, 45.266941, 54.191158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989899, 45.616264, 54.179783>,  <45.106621, 45.825859, 54.172958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989899, 45.616264, 54.179783>,  <44.795361, 45.266941, 54.191158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989899, 45.616264, 54.179783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073982, -0.073585, -0.994541,
		-0.870629, 0.481586, -0.100396,
		0.486345, 0.873304, -0.028436,
		45.135803, 45.878254, 54.171253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563683, 45.706848, 53.488014>,  <44.795361, 45.266941, 54.191158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563683, 45.706848, 53.488014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916290, 45.833839, 53.627800>,  <45.127857, 45.910034, 53.711674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916290, 45.833839, 53.627800>,  <44.563683, 45.706848, 53.488014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916290, 45.833839, 53.627800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380016, -0.037834, -0.924206,
		-0.280192, 0.947511, -0.153997,
		0.881522, 0.317476, 0.349469,
		45.180748, 45.929081, 53.732639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733040, 46.288975, 53.007153>,  <44.563683, 45.706848, 53.488014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733040, 46.288975, 53.007153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068649, 46.165092, 53.186096>,  <45.270016, 46.090763, 53.293461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068649, 46.165092, 53.186096>,  <44.733040, 46.288975, 53.007153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068649, 46.165092, 53.186096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458021, -0.041799, -0.887958,
		0.293703, 0.949914, 0.106780,
		0.839021, -0.309703, 0.447357,
		45.320354, 46.072182, 53.320305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335304, 46.640572, 52.643562>,  <44.733040, 46.288975, 53.007153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335304, 46.640572, 52.643562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516617, 46.343567, 52.840828>,  <45.625404, 46.165363, 52.959187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.516617, 46.343567, 52.840828>,  <45.335304, 46.640572, 52.643562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516617, 46.343567, 52.840828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600964, -0.154040, -0.784292,
		0.658313, 0.651881, 0.376399,
		0.453284, -0.742512, 0.493163,
		45.652603, 46.120815, 52.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103958, 46.731934, 52.702232>,  <45.335304, 46.640572, 52.643562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103958, 46.731934, 52.702232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062195, 46.335350, 52.733505>,  <46.037136, 46.097401, 52.752270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062195, 46.335350, 52.733505>,  <46.103958, 46.731934, 52.702232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062195, 46.335350, 52.733505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823768, -0.130260, -0.551760,
		0.557230, 0.006792, 0.830331,
		-0.104411, -0.991457, 0.078179,
		46.030872, 46.037914, 52.756958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.694973, 46.535515, 52.576897>,  <46.103958, 46.731934, 52.702232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.694973, 46.535515, 52.576897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511887, 46.180466, 52.556404>,  <46.402035, 45.967438, 52.544109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511887, 46.180466, 52.556404>,  <46.694973, 46.535515, 52.576897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511887, 46.180466, 52.556404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759431, -0.360347, -0.541677,
		0.462341, -0.286844, 0.839024,
		-0.457717, -0.887620, -0.051235,
		46.374573, 45.914181, 52.541035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235809, 45.902027, 52.704685>,  <46.694973, 46.535515, 52.576897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235809, 45.902027, 52.704685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912262, 45.747360, 52.527496>,  <46.718136, 45.654560, 52.421185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912262, 45.747360, 52.527496>,  <47.235809, 45.902027, 52.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912262, 45.747360, 52.527496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587968, -0.538905, -0.603221,
		-0.005473, -0.748377, 0.663251,
		-0.808866, -0.386669, -0.442971,
		46.669601, 45.631359, 52.394604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.365135, 45.123760, 52.468300>,  <47.235809, 45.902027, 52.704685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.365135, 45.123760, 52.468300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.055344, 45.223930, 52.235931>,  <46.869469, 45.284031, 52.096512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.055344, 45.223930, 52.235931>,  <47.365135, 45.123760, 52.468300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.055344, 45.223930, 52.235931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421166, -0.481084, -0.768880,
		-0.471999, -0.840152, 0.267134,
		-0.774491, 0.250403, -0.580915,
		46.823002, 45.299057, 52.061653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034920, 44.505951, 52.180405>,  <47.365135, 45.123760, 52.468300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034920, 44.505951, 52.180405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945297, 44.808502, 51.934578>,  <46.891525, 44.990032, 51.787083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.945297, 44.808502, 51.934578>,  <47.034920, 44.505951, 52.180405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.945297, 44.808502, 51.934578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369683, -0.517507, -0.771700,
		-0.901740, -0.400096, -0.163671,
		-0.224053, 0.756379, -0.614566,
		46.878082, 45.035416, 51.750210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684937, 44.136375, 51.602856>,  <47.034920, 44.505951, 52.180405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684937, 44.136375, 51.602856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785194, 44.497025, 51.461857>,  <46.845348, 44.713413, 51.377258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785194, 44.497025, 51.461857>,  <46.684937, 44.136375, 51.602856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785194, 44.497025, 51.461857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325447, -0.421401, -0.846466,
		-0.911736, 0.097443, -0.399052,
		0.250643, 0.901624, -0.352494,
		46.860386, 44.767513, 51.356110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371956, 44.200062, 50.971245>,  <46.684937, 44.136375, 51.602856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371956, 44.200062, 50.971245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695946, 44.434456, 50.961761>,  <46.890339, 44.575092, 50.956074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.695946, 44.434456, 50.961761>,  <46.371956, 44.200062, 50.971245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695946, 44.434456, 50.961761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137111, -0.228511, -0.963838,
		-0.570214, 0.777433, -0.265433,
		0.809974, 0.585987, -0.023706,
		46.938938, 44.610252, 50.954651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282139, 44.622337, 50.345417>,  <46.371956, 44.200062, 50.971245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282139, 44.622337, 50.345417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669281, 44.676559, 50.430153>,  <46.901566, 44.709091, 50.480995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.669281, 44.676559, 50.430153>,  <46.282139, 44.622337, 50.345417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.669281, 44.676559, 50.430153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222506, -0.068894, -0.972494,
		-0.117228, 0.988372, -0.096840,
		0.967858, 0.135551, 0.211843,
		46.959637, 44.717224, 50.493706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568039, 44.903286, 49.760479>,  <46.282139, 44.622337, 50.345417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568039, 44.903286, 49.760479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904129, 44.795822, 49.948883>,  <47.105782, 44.731342, 50.061924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.904129, 44.795822, 49.948883>,  <46.568039, 44.903286, 49.760479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.904129, 44.795822, 49.948883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464782, -0.090588, -0.880779,
		0.279298, 0.958966, 0.048754,
		0.840221, -0.268660, 0.471011,
		47.156197, 44.715225, 50.090187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921982, 45.268223, 49.399342>,  <46.568039, 44.903286, 49.760479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921982, 45.268223, 49.399342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179657, 45.012436, 49.567200>,  <47.334263, 44.858963, 49.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179657, 45.012436, 49.567200>,  <46.921982, 45.268223, 49.399342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179657, 45.012436, 49.567200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592803, 0.070719, -0.802236,
		0.483325, 0.765561, 0.424633,
		0.644190, -0.639465, 0.419647,
		47.372913, 44.820595, 49.693092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652348, 45.532154, 49.205582>,  <46.921982, 45.268223, 49.399342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652348, 45.532154, 49.205582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679779, 45.148842, 49.316570>,  <47.696239, 44.918854, 49.383163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679779, 45.148842, 49.316570>,  <47.652348, 45.532154, 49.205582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679779, 45.148842, 49.316570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643728, -0.169973, -0.746140,
		0.762176, 0.229783, 0.605217,
		0.068580, -0.958284, 0.277467,
		47.700352, 44.861355, 49.399811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.386536, 45.388321, 49.316715>,  <47.652348, 45.532154, 49.205582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.386536, 45.388321, 49.316715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206490, 45.040306, 49.236282>,  <48.098461, 44.831497, 49.188023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.206490, 45.040306, 49.236282>,  <48.386536, 45.388321, 49.316715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.206490, 45.040306, 49.236282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607636, -0.133412, -0.782930,
		0.654353, -0.474589, 0.588717,
		-0.450112, -0.870038, -0.201078,
		48.071457, 44.779293, 49.175961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.916130, 44.776272, 49.226845>,  <48.386536, 45.388321, 49.316715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.916130, 44.776272, 49.226845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.568619, 44.702072, 49.043182>,  <48.360111, 44.657555, 48.932987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.568619, 44.702072, 49.043182>,  <48.916130, 44.776272, 49.226845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.568619, 44.702072, 49.043182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478747, -0.077549, -0.874521,
		0.126613, -0.979580, 0.156177,
		-0.868775, -0.185495, -0.459152,
		48.307987, 44.646423, 48.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.050407, 44.229118, 48.785431>,  <48.916130, 44.776272, 49.226845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.050407, 44.229118, 48.785431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.703606, 44.347862, 48.625347>,  <48.495525, 44.419109, 48.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.703606, 44.347862, 48.625347>,  <49.050407, 44.229118, 48.785431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.703606, 44.347862, 48.625347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421484, 0.008489, -0.906796,
		-0.265797, -0.954882, -0.132484,
		-0.867008, 0.296864, -0.400211,
		48.443504, 44.436920, 48.505283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.814964, 43.786362, 48.288273>,  <49.050407, 44.229118, 48.785431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.814964, 43.786362, 48.288273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.616875, 44.122208, 48.199013>,  <48.498020, 44.323715, 48.145458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.616875, 44.122208, 48.199013>,  <48.814964, 43.786362, 48.288273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.616875, 44.122208, 48.199013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530352, 0.088728, -0.843122,
		-0.688101, -0.535880, -0.489233,
		-0.495221, 0.839619, -0.223151,
		48.468307, 44.374092, 48.132069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.507359, 43.656986, 47.599152>,  <48.814964, 43.786362, 48.288273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.507359, 43.656986, 47.599152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.560547, 44.050598, 47.646473>,  <48.592461, 44.286766, 47.674866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.560547, 44.050598, 47.646473>,  <48.507359, 43.656986, 47.599152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.560547, 44.050598, 47.646473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495821, 0.037311, -0.867623,
		-0.858184, 0.174026, -0.482944,
		0.132969, 0.984034, 0.118305,
		48.600437, 44.345810, 47.681965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.374542, 43.875874, 46.979141>,  <48.507359, 43.656986, 47.599152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.374542, 43.875874, 46.979141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.533180, 44.220879, 47.104862>,  <48.628365, 44.427883, 47.180294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.533180, 44.220879, 47.104862>,  <48.374542, 43.875874, 46.979141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.533180, 44.220879, 47.104862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489235, 0.091120, -0.867379,
		-0.776764, 0.497766, -0.385834,
		0.396594, 0.862512, 0.314303,
		48.652157, 44.479633, 47.199154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.331818, 44.247906, 46.516056>,  <48.374542, 43.875874, 46.979141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.331818, 44.247906, 46.516056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.625031, 44.448814, 46.699528>,  <48.800957, 44.569359, 46.809608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.625031, 44.448814, 46.699528>,  <48.331818, 44.247906, 46.516056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.625031, 44.448814, 46.699528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580894, -0.111442, -0.806315,
		-0.353876, 0.857496, -0.373459,
		0.733031, 0.502275, 0.458677,
		48.844940, 44.599499, 46.837132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.645054, 44.958256, 46.237438>,  <48.331818, 44.247906, 46.516056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.645054, 44.958256, 46.237438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.918282, 44.742706, 46.434631>,  <49.082218, 44.613377, 46.552948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.918282, 44.742706, 46.434631>,  <48.645054, 44.958256, 46.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.918282, 44.742706, 46.434631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575455, -0.018546, -0.817623,
		0.449739, 0.842182, 0.297429,
		0.683072, -0.538874, 0.492978,
		49.123203, 44.581043, 46.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.921761, 45.044975, 46.177010>,  <48.645054, 44.958256, 46.237438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.921761, 45.044975, 46.177010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624947, 44.808449, 46.050686>,  <47.446857, 44.666534, 45.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.624947, 44.808449, 46.050686>,  <47.921761, 45.044975, 46.177010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.624947, 44.808449, 46.050686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637065, 0.475388, 0.606757,
		-0.208652, 0.651424, -0.729459,
		-0.742033, -0.591314, -0.315808,
		47.402336, 44.631054, 45.955944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.392231, 45.461689, 45.885887>,  <47.921761, 45.044975, 46.177010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.392231, 45.461689, 45.885887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203949, 45.119255, 45.971260>,  <47.090981, 44.913795, 46.022484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.203949, 45.119255, 45.971260>,  <47.392231, 45.461689, 45.885887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203949, 45.119255, 45.971260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705279, 0.510434, 0.491975,
		-0.530115, 0.081047, -0.844044,
		-0.470702, -0.856089, 0.213428,
		47.062740, 44.862427, 46.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636108, 45.416771, 45.739819>,  <47.392231, 45.461689, 45.885887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636108, 45.416771, 45.739819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687424, 45.114113, 45.996269>,  <46.718212, 44.932518, 46.150139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.687424, 45.114113, 45.996269>,  <46.636108, 45.416771, 45.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.687424, 45.114113, 45.996269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837670, 0.263395, 0.478468,
		-0.530896, -0.598429, -0.600026,
		0.128286, -0.756641, 0.641122,
		46.725910, 44.887119, 46.188606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892609, 45.199036, 45.808472>,  <46.636108, 45.416771, 45.739819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892609, 45.199036, 45.808472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118637, 45.097672, 46.122536>,  <46.254253, 45.036854, 46.310974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.118637, 45.097672, 46.122536>,  <45.892609, 45.199036, 45.808472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118637, 45.097672, 46.122536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766092, 0.192109, 0.613349,
		-0.306264, -0.948092, -0.085579,
		0.565071, -0.253409, 0.785162,
		46.288158, 45.021648, 46.358086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455494, 44.716454, 46.230328>,  <45.892609, 45.199036, 45.808472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455494, 44.716454, 46.230328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728294, 44.807144, 46.508457>,  <45.891975, 44.861561, 46.675335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728294, 44.807144, 46.508457>,  <45.455494, 44.716454, 46.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728294, 44.807144, 46.508457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724375, 0.078391, 0.684935,
		0.100787, -0.970798, 0.217699,
		0.681999, 0.226729, 0.695321,
		45.932896, 44.875164, 46.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183765, 44.441208, 46.884716>,  <45.455494, 44.716454, 46.230328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183765, 44.441208, 46.884716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462662, 44.700920, 47.006237>,  <45.629997, 44.856747, 47.079151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.462662, 44.700920, 47.006237>,  <45.183765, 44.441208, 46.884716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462662, 44.700920, 47.006237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544328, 0.203775, 0.813746,
		0.466441, -0.732743, 0.495500,
		0.697237, 0.649279, 0.303803,
		45.671833, 44.895702, 47.097378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249702, 44.322186, 47.543617>,  <45.183765, 44.441208, 46.884716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249702, 44.322186, 47.543617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392517, 44.693298, 47.500263>,  <45.478207, 44.915966, 47.474251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392517, 44.693298, 47.500263>,  <45.249702, 44.322186, 47.543617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392517, 44.693298, 47.500263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478059, 0.281182, 0.832104,
		0.802485, -0.245280, 0.543926,
		0.357041, 0.927779, -0.108387,
		45.499630, 44.971634, 47.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576271, 44.530590, 48.311745>,  <45.249702, 44.322186, 47.543617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576271, 44.530590, 48.311745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485046, 44.859940, 48.103882>,  <45.430313, 45.057549, 47.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485046, 44.859940, 48.103882>,  <45.576271, 44.530590, 48.311745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485046, 44.859940, 48.103882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538987, 0.337723, 0.771645,
		0.810851, 0.456075, 0.366764,
		-0.228063, 0.823370, -0.519662,
		45.416626, 45.106949, 47.947983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745586, 45.148247, 48.664169>,  <45.576271, 44.530590, 48.311745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745586, 45.148247, 48.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483292, 45.297287, 48.401512>,  <45.325916, 45.386711, 48.243919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483292, 45.297287, 48.401512>,  <45.745586, 45.148247, 48.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483292, 45.297287, 48.401512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506004, 0.428600, 0.748506,
		0.560328, 0.823088, -0.092514,
		-0.655738, 0.372597, -0.656642,
		45.286572, 45.409065, 48.204521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848881, 45.778599, 48.785751>,  <45.745586, 45.148247, 48.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.848881, 45.778599, 48.785751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494919, 45.763306, 48.600075>,  <45.282539, 45.754128, 48.488670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.494919, 45.763306, 48.600075>,  <45.848881, 45.778599, 48.785751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494919, 45.763306, 48.600075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451093, 0.318527, 0.833700,
		0.115979, 0.947142, -0.299116,
		-0.884909, -0.038237, -0.464192,
		45.229446, 45.751835, 48.460815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515362, 46.348572, 49.018108>,  <45.848881, 45.778599, 48.785751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515362, 46.348572, 49.018108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229954, 46.101463, 48.885895>,  <45.058708, 45.953197, 48.806568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229954, 46.101463, 48.885895>,  <45.515362, 46.348572, 49.018108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229954, 46.101463, 48.885895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530433, 0.168082, 0.830897,
		-0.457745, 0.768186, -0.447615,
		-0.713520, -0.617769, -0.330532,
		45.015900, 45.916134, 48.786736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895645, 46.735317, 49.008377>,  <45.515362, 46.348572, 49.018108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895645, 46.735317, 49.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785484, 46.352348, 49.042999>,  <44.719387, 46.122566, 49.063774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785484, 46.352348, 49.042999>,  <44.895645, 46.735317, 49.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785484, 46.352348, 49.042999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617973, 0.245291, 0.746956,
		-0.736385, 0.152224, -0.659216,
		-0.275404, -0.957424, 0.086558,
		44.702862, 46.065121, 49.068966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152874, 46.830944, 49.177944>,  <44.895645, 46.735317, 49.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152874, 46.830944, 49.177944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247131, 46.454582, 49.275242>,  <44.303684, 46.228764, 49.333622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247131, 46.454582, 49.275242>,  <44.152874, 46.830944, 49.177944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247131, 46.454582, 49.275242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594045, 0.058638, 0.802292,
		-0.769144, -0.333555, -0.545123,
		0.235644, -0.940905, 0.243248,
		44.317825, 46.172310, 49.348217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556080, 46.646950, 49.480648>,  <44.152874, 46.830944, 49.177944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556080, 46.646950, 49.480648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819107, 46.373482, 49.607265>,  <43.976925, 46.209400, 49.683235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819107, 46.373482, 49.607265>,  <43.556080, 46.646950, 49.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819107, 46.373482, 49.607265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428655, 0.006009, 0.903448,
		-0.619561, -0.729768, -0.289107,
		0.657571, -0.683668, 0.316542,
		44.016376, 46.168381, 49.702229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134048, 46.163498, 49.807442>,  <43.556080, 46.646950, 49.480648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134048, 46.163498, 49.807442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493279, 46.101646, 49.972153>,  <43.708817, 46.064537, 50.070980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493279, 46.101646, 49.972153>,  <43.134048, 46.163498, 49.807442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493279, 46.101646, 49.972153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407038, 0.062636, 0.911261,
		-0.166700, -0.985985, -0.006688,
		0.898071, -0.154630, 0.411775,
		43.762699, 46.055260, 50.095684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973763, 45.653366, 50.285786>,  <43.134048, 46.163498, 49.807442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973763, 45.653366, 50.285786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326103, 45.805321, 50.398773>,  <43.537506, 45.896492, 50.466564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326103, 45.805321, 50.398773>,  <42.973763, 45.653366, 50.285786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326103, 45.805321, 50.398773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289633, -0.039505, 0.956322,
		0.374452, -0.924190, 0.075229,
		0.880851, 0.379886, 0.282468,
		43.590359, 45.919285, 50.483513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070255, 45.333706, 50.919159>,  <42.973763, 45.653366, 50.285786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070255, 45.333706, 50.919159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339851, 45.627159, 50.953846>,  <43.501610, 45.803230, 50.974659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339851, 45.627159, 50.953846>,  <43.070255, 45.333706, 50.919159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339851, 45.627159, 50.953846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187297, 0.056150, 0.980697,
		0.714599, -0.677226, 0.175251,
		0.673994, 0.733630, 0.086717,
		43.542049, 45.847248, 50.979862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558041, 45.200874, 51.529346>,  <43.070255, 45.333706, 50.919159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558041, 45.200874, 51.529346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553772, 45.597824, 51.480236>,  <43.551212, 45.835995, 51.450771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.553772, 45.597824, 51.480236>,  <43.558041, 45.200874, 51.529346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553772, 45.597824, 51.480236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387349, 0.109096, 0.915455,
		0.921871, 0.057322, 0.383232,
		-0.010667, 0.992377, -0.122777,
		43.550571, 45.895538, 51.443401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888660, 45.471100, 52.190968>,  <43.558041, 45.200874, 51.529346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888660, 45.471100, 52.190968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673248, 45.763229, 52.022865>,  <43.544003, 45.938507, 51.922005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673248, 45.763229, 52.022865>,  <43.888660, 45.471100, 52.190968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673248, 45.763229, 52.022865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317918, 0.285777, 0.904024,
		0.780329, 0.620450, 0.078284,
		-0.538530, 0.730324, -0.420253,
		43.511688, 45.982327, 51.896790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095501, 46.089943, 52.456898>,  <43.888660, 45.471100, 52.190968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095501, 46.089943, 52.456898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721649, 46.168839, 52.338528>,  <43.497337, 46.216175, 52.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721649, 46.168839, 52.338528>,  <44.095501, 46.089943, 52.456898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721649, 46.168839, 52.338528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232651, 0.290250, 0.928240,
		0.268976, 0.936404, -0.225387,
		-0.934626, 0.197238, -0.295926,
		43.441261, 46.228008, 52.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850197, 46.805187, 52.657295>,  <44.095501, 46.089943, 52.456898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850197, 46.805187, 52.657295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508492, 46.604324, 52.603523>,  <43.303467, 46.483807, 52.571259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508492, 46.604324, 52.603523>,  <43.850197, 46.805187, 52.657295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508492, 46.604324, 52.603523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278828, 0.224361, 0.933765,
		-0.438731, 0.835167, -0.331678,
		-0.854266, -0.502153, -0.134434,
		43.252213, 46.453678, 52.563194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444721, 47.066151, 53.107113>,  <43.850197, 46.805187, 52.657295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444721, 47.066151, 53.107113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222855, 46.741737, 53.032753>,  <43.089733, 46.547089, 52.988136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222855, 46.741737, 53.032753>,  <43.444721, 47.066151, 53.107113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222855, 46.741737, 53.032753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355753, 0.029183, 0.934124,
		-0.752183, 0.584267, -0.304716,
		-0.554671, -0.811036, -0.185904,
		43.056454, 46.498428, 52.976982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904308, 47.095257, 53.715755>,  <43.444721, 47.066151, 53.107113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904308, 47.095257, 53.715755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868439, 46.723030, 53.573765>,  <42.846916, 46.499695, 53.488571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868439, 46.723030, 53.573765>,  <42.904308, 47.095257, 53.715755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868439, 46.723030, 53.573765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249640, -0.324034, 0.912514,
		-0.964178, 0.170445, -0.203248,
		-0.089674, -0.930564, -0.354977,
		42.841537, 46.443859, 53.467274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226959, 46.842941, 53.944954>,  <42.904308, 47.095257, 53.715755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226959, 46.842941, 53.944954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437206, 46.512878, 53.862156>,  <42.563354, 46.314842, 53.812477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437206, 46.512878, 53.862156>,  <42.226959, 46.842941, 53.944954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437206, 46.512878, 53.862156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213299, -0.363369, 0.906899,
		-0.823547, -0.432530, -0.366998,
		0.525617, -0.825155, -0.206994,
		42.594891, 46.265331, 53.800056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839634, 46.276043, 54.263165>,  <42.226959, 46.842941, 53.944954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839634, 46.276043, 54.263165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205742, 46.125381, 54.206020>,  <42.425407, 46.034985, 54.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205742, 46.125381, 54.206020>,  <41.839634, 46.276043, 54.263165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205742, 46.125381, 54.206020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125283, -0.603192, 0.787695,
		-0.382861, -0.703057, -0.599273,
		0.915271, -0.376656, -0.142857,
		42.480324, 46.012383, 54.163162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794010, 45.625988, 54.230900>,  <41.839634, 46.276043, 54.263165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794010, 45.625988, 54.230900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174126, 45.664612, 54.349312>,  <42.402195, 45.687786, 54.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174126, 45.664612, 54.349312>,  <41.794010, 45.625988, 54.230900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174126, 45.664612, 54.349312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170753, -0.633417, 0.754736,
		0.260387, -0.767763, -0.585440,
		0.950286, 0.096558, 0.296031,
		42.459209, 45.693581, 54.438122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940704, 44.999622, 54.453388>,  <41.794010, 45.625988, 54.230900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940704, 44.999622, 54.453388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218460, 45.221603, 54.636623>,  <42.385113, 45.354794, 54.746567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218460, 45.221603, 54.636623>,  <41.940704, 44.999622, 54.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218460, 45.221603, 54.636623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131724, -0.527810, 0.839086,
		0.707437, -0.642997, -0.293407,
		0.694393, 0.554952, 0.458090,
		42.426777, 45.388088, 54.774052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205036, 44.524929, 54.903999>,  <41.940704, 44.999622, 54.453388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205036, 44.524929, 54.903999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336357, 44.870979, 55.055668>,  <42.415150, 45.078609, 55.146667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336357, 44.870979, 55.055668>,  <42.205036, 44.524929, 54.903999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336357, 44.870979, 55.055668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031293, -0.411164, 0.911024,
		0.944053, -0.287229, -0.162060,
		0.328306, 0.865126, 0.379173,
		42.434849, 45.130516, 55.169418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658436, 44.329193, 55.454117>,  <42.205036, 44.524929, 54.903999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658436, 44.329193, 55.454117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564835, 44.711334, 55.526287>,  <42.508675, 44.940617, 55.569588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564835, 44.711334, 55.526287>,  <42.658436, 44.329193, 55.454117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564835, 44.711334, 55.526287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137940, -0.216324, 0.966528,
		0.962401, 0.201279, 0.182401,
		-0.234000, 0.955348, 0.180426,
		42.494637, 44.997940, 55.580414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005608, 44.513233, 56.034805>,  <42.658436, 44.329193, 55.454117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005608, 44.513233, 56.034805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694321, 44.764000, 56.020069>,  <42.507549, 44.914459, 56.011227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694321, 44.764000, 56.020069>,  <43.005608, 44.513233, 56.034805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694321, 44.764000, 56.020069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144939, -0.122216, 0.981863,
		0.611044, 0.769440, 0.185975,
		-0.778214, 0.626917, -0.036842,
		42.460857, 44.952076, 56.009018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956985, 44.812637, 56.675938>,  <43.005608, 44.513233, 56.034805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956985, 44.812637, 56.675938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589897, 44.878059, 56.531143>,  <42.369644, 44.917313, 56.444267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589897, 44.878059, 56.531143>,  <42.956985, 44.812637, 56.675938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589897, 44.878059, 56.531143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376201, -0.065387, 0.924228,
		0.127498, 0.984364, 0.121538,
		-0.917724, 0.163560, -0.361982,
		42.314579, 44.927128, 56.422550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679916, 45.357147, 57.052372>,  <42.956985, 44.812637, 56.675938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679916, 45.357147, 57.052372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368530, 45.160072, 56.896805>,  <42.181698, 45.041828, 56.803463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368530, 45.160072, 56.896805>,  <42.679916, 45.357147, 57.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368530, 45.160072, 56.896805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417942, -0.055432, 0.906781,
		-0.468315, 0.868441, -0.162762,
		-0.778463, -0.492685, -0.388918,
		42.134991, 45.012268, 56.780128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167538, 45.640209, 57.360348>,  <42.679916, 45.357147, 57.052372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167538, 45.640209, 57.360348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006969, 45.298141, 57.229164>,  <41.910629, 45.092903, 57.150455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006969, 45.298141, 57.229164>,  <42.167538, 45.640209, 57.360348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006969, 45.298141, 57.229164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547415, -0.063066, 0.834481,
		-0.734302, 0.514505, -0.442814,
		-0.401418, -0.855165, -0.327958,
		41.886543, 45.041592, 57.130775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405876, 45.693520, 57.491714>,  <42.167538, 45.640209, 57.360348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405876, 45.693520, 57.491714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497665, 45.305161, 57.464264>,  <41.552738, 45.072147, 57.447792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497665, 45.305161, 57.464264>,  <41.405876, 45.693520, 57.491714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497665, 45.305161, 57.464264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470885, -0.172448, 0.865176,
		-0.851828, -0.166215, -0.496750,
		0.229469, -0.970893, -0.068628,
		41.566505, 45.013893, 57.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897739, 45.399010, 57.760345>,  <41.405876, 45.693520, 57.491714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897739, 45.399010, 57.760345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171051, 45.109268, 57.797096>,  <41.335037, 44.935425, 57.819149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171051, 45.109268, 57.797096>,  <40.897739, 45.399010, 57.760345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171051, 45.109268, 57.797096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365215, -0.230085, 0.902041,
		-0.632258, -0.649900, -0.421757,
		0.683277, -0.724355, 0.091881,
		41.376034, 44.891960, 57.824661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541817, 44.877831, 57.982941>,  <40.897739, 45.399010, 57.760345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541817, 44.877831, 57.982941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920475, 44.807304, 58.090851>,  <41.147671, 44.764988, 58.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920475, 44.807304, 58.090851>,  <40.541817, 44.877831, 57.982941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920475, 44.807304, 58.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315466, -0.335674, 0.887583,
		-0.065942, -0.925329, -0.373386,
		0.946643, -0.176319, 0.269775,
		41.204468, 44.754410, 58.171783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632622, 44.092415, 58.173431>,  <40.541817, 44.877831, 57.982941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632622, 44.092415, 58.173431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931557, 44.298378, 58.341415>,  <41.110916, 44.421955, 58.442207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931557, 44.298378, 58.341415>,  <40.632622, 44.092415, 58.173431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931557, 44.298378, 58.341415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198000, -0.430751, 0.880482,
		0.634262, -0.741166, -0.219964,
		0.747334, 0.514904, 0.419961,
		41.155758, 44.452850, 58.467403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862274, 43.642265, 58.686031>,  <40.632622, 44.092415, 58.173431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862274, 43.642265, 58.686031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006332, 43.999390, 58.794243>,  <41.092770, 44.213665, 58.859169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006332, 43.999390, 58.794243>,  <40.862274, 43.642265, 58.686031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006332, 43.999390, 58.794243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042225, -0.274088, 0.960777,
		0.931939, -0.357446, -0.061014,
		0.360149, 0.892809, 0.270526,
		41.114376, 44.267231, 58.875401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854301, 42.896053, 58.929817>,  <40.862274, 43.642265, 58.686031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854301, 42.896053, 58.929817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646172, 42.554665, 58.918171>,  <40.521294, 42.349831, 58.911182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646172, 42.554665, 58.918171>,  <40.854301, 42.896053, 58.929817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646172, 42.554665, 58.918171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378185, -0.199724, -0.903928,
		0.765664, -0.481345, 0.426692,
		-0.520322, -0.853474, -0.029116,
		40.490074, 42.298622, 58.909435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352257, 42.416428, 58.851994>,  <40.854301, 42.896053, 58.929817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352257, 42.416428, 58.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998421, 42.264023, 58.744411>,  <40.786121, 42.172581, 58.679863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998421, 42.264023, 58.744411>,  <41.352257, 42.416428, 58.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998421, 42.264023, 58.744411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355134, -0.176496, -0.918003,
		0.302297, -0.907570, 0.291435,
		-0.884589, -0.381008, -0.268955,
		40.733044, 42.149719, 58.663727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491962, 41.814953, 58.451508>,  <41.352257, 42.416428, 58.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491962, 41.814953, 58.451508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123241, 41.925072, 58.342331>,  <40.902008, 41.991142, 58.276825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123241, 41.925072, 58.342331>,  <41.491962, 41.814953, 58.451508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123241, 41.925072, 58.342331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217634, -0.215142, -0.952024,
		-0.320808, -0.936977, 0.138405,
		-0.921802, 0.275295, -0.272938,
		40.846703, 42.007660, 58.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299923, 41.258949, 57.896412>,  <41.491962, 41.814953, 58.451508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299923, 41.258949, 57.896412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085701, 41.594742, 57.859653>,  <40.957169, 41.796219, 57.837597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085701, 41.594742, 57.859653>,  <41.299923, 41.258949, 57.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085701, 41.594742, 57.859653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068033, -0.065576, -0.995526,
		-0.841753, -0.539414, -0.021992,
		-0.535558, 0.839483, -0.091897,
		40.925034, 41.846588, 57.832085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743443, 41.087467, 57.331467>,  <41.299923, 41.258949, 57.896412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743443, 41.087467, 57.331467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766960, 41.485458, 57.363876>,  <40.781071, 41.724255, 57.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766960, 41.485458, 57.363876>,  <40.743443, 41.087467, 57.331467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766960, 41.485458, 57.363876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156792, 0.070958, -0.985079,
		-0.985880, 0.070617, -0.151832,
		0.058790, 0.994976, 0.081028,
		40.784595, 41.783951, 57.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455975, 41.364769, 56.727383>,  <40.743443, 41.087467, 57.331467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455975, 41.364769, 56.727383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640644, 41.696129, 56.854263>,  <40.751446, 41.894943, 56.930389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640644, 41.696129, 56.854263>,  <40.455975, 41.364769, 56.727383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640644, 41.696129, 56.854263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265185, 0.212344, -0.940525,
		-0.846482, 0.518335, -0.121644,
		0.461677, 0.828395, 0.317200,
		40.779148, 41.944649, 56.949425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184563, 41.895267, 56.283916>,  <40.455975, 41.364769, 56.727383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184563, 41.895267, 56.283916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531906, 42.008537, 56.446777>,  <40.740311, 42.076500, 56.544495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531906, 42.008537, 56.446777>,  <40.184563, 41.895267, 56.283916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531906, 42.008537, 56.446777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275615, 0.406963, -0.870872,
		-0.412302, 0.868443, 0.275342,
		0.868357, 0.283174, 0.407148,
		40.792412, 42.093491, 56.568920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239948, 42.523643, 56.065788>,  <40.184563, 41.895267, 56.283916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239948, 42.523643, 56.065788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610363, 42.418465, 56.174091>,  <40.832611, 42.355358, 56.239075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610363, 42.418465, 56.174091>,  <40.239948, 42.523643, 56.065788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610363, 42.418465, 56.174091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339619, 0.267565, -0.901703,
		0.164658, 0.926966, 0.337079,
		0.926038, -0.262951, 0.270759,
		40.888176, 42.339581, 56.255318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755867, 43.107220, 55.984917>,  <40.239948, 42.523643, 56.065788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755867, 43.107220, 55.984917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966587, 42.770409, 55.938484>,  <41.093021, 42.568321, 55.910625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966587, 42.770409, 55.938484>,  <40.755867, 43.107220, 55.984917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966587, 42.770409, 55.938484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364822, 0.347339, -0.863864,
		0.767713, 0.412737, 0.490168,
		0.526803, -0.842023, -0.116081,
		41.124630, 42.517803, 55.903660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438885, 43.356850, 55.811543>,  <40.755867, 43.107220, 55.984917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438885, 43.356850, 55.811543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448174, 42.981262, 55.674255>,  <41.453747, 42.755909, 55.591885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448174, 42.981262, 55.674255>,  <41.438885, 43.356850, 55.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448174, 42.981262, 55.674255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251545, 0.337755, -0.906999,
		0.967567, -0.065268, 0.244038,
		0.023227, -0.938968, -0.343219,
		41.455143, 42.699574, 55.571289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114700, 43.356636, 55.544136>,  <41.438885, 43.356850, 55.811543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114700, 43.356636, 55.544136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919292, 43.047607, 55.381908>,  <41.802048, 42.862190, 55.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919292, 43.047607, 55.381908>,  <42.114700, 43.356636, 55.544136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919292, 43.047607, 55.381908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189737, 0.359624, -0.913603,
		0.851673, -0.523265, -0.029099,
		-0.488521, -0.772570, -0.405565,
		41.772736, 42.815838, 55.260239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619381, 43.216343, 55.053028>,  <42.114700, 43.356636, 55.544136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619381, 43.216343, 55.053028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281754, 43.042778, 54.927002>,  <42.079178, 42.938641, 54.851387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281754, 43.042778, 54.927002>,  <42.619381, 43.216343, 55.053028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281754, 43.042778, 54.927002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186970, 0.312532, -0.931325,
		0.502578, -0.845012, -0.182672,
		-0.844072, -0.433909, -0.315064,
		42.028530, 42.912605, 54.832481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795101, 42.867779, 54.444607>,  <42.619381, 43.216343, 55.053028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795101, 42.867779, 54.444607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398731, 42.921501, 54.446663>,  <42.160908, 42.953735, 54.447895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.398731, 42.921501, 54.446663>,  <42.795101, 42.867779, 54.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398731, 42.921501, 54.446663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018506, 0.174225, -0.984532,
		-0.133122, -0.975504, -0.175129,
		-0.990927, 0.134304, 0.005140,
		42.101452, 42.961792, 54.448204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598877, 42.605930, 53.796352>,  <42.795101, 42.867779, 54.444607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598877, 42.605930, 53.796352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294418, 42.833878, 53.920223>,  <42.111744, 42.970646, 53.994545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294418, 42.833878, 53.920223>,  <42.598877, 42.605930, 53.796352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294418, 42.833878, 53.920223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263320, 0.164829, -0.950523,
		-0.592717, -0.805035, 0.024598,
		-0.761150, 0.569868, 0.309679,
		42.066074, 43.004837, 54.013126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011108, 42.434856, 53.386414>,  <42.598877, 42.605930, 53.796352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011108, 42.434856, 53.386414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935081, 42.801331, 53.527542>,  <41.889465, 43.021214, 53.612221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935081, 42.801331, 53.527542>,  <42.011108, 42.434856, 53.386414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935081, 42.801331, 53.527542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139037, 0.330630, -0.933463,
		-0.971876, -0.226478, 0.064541,
		-0.190070, 0.916183, 0.352820,
		41.878059, 43.076187, 53.633389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521732, 42.673561, 52.878742>,  <42.011108, 42.434856, 53.386414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521732, 42.673561, 52.878742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664337, 42.990372, 53.076973>,  <41.749901, 43.180458, 53.195911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664337, 42.990372, 53.076973>,  <41.521732, 42.673561, 52.878742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664337, 42.990372, 53.076973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009853, 0.527213, -0.849676,
		-0.934237, 0.307807, 0.180157,
		0.356517, 0.792024, 0.495574,
		41.771294, 43.227978, 53.225647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117676, 43.314480, 52.646515>,  <41.521732, 42.673561, 52.878742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117676, 43.314480, 52.646515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469086, 43.447380, 52.783806>,  <41.679932, 43.527119, 52.866180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469086, 43.447380, 52.783806>,  <41.117676, 43.314480, 52.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469086, 43.447380, 52.783806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138457, 0.510550, -0.848627,
		-0.457191, 0.793062, 0.402529,
		0.878525, 0.332252, 0.343224,
		41.732643, 43.547054, 52.886772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274372, 44.067139, 52.394073>,  <41.117676, 43.314480, 52.646515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274372, 44.067139, 52.394073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635094, 43.919930, 52.484673>,  <41.851528, 43.831604, 52.539032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635094, 43.919930, 52.484673>,  <41.274372, 44.067139, 52.394073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635094, 43.919930, 52.484673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316180, 0.204638, -0.926366,
		0.294575, 0.907018, 0.300906,
		0.901807, -0.368025, 0.226500,
		41.905636, 43.809521, 52.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857742, 44.520199, 52.054066>,  <41.274372, 44.067139, 52.394073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857742, 44.520199, 52.054066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079796, 44.203453, 52.155869>,  <42.213028, 44.013405, 52.216949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079796, 44.203453, 52.155869>,  <41.857742, 44.520199, 52.054066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079796, 44.203453, 52.155869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631561, 0.202183, -0.748501,
		0.541252, 0.576260, 0.612349,
		0.555137, -0.791863, 0.254512,
		42.246338, 43.965893, 52.232224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452675, 44.817673, 51.974537>,  <41.857742, 44.520199, 52.054066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452675, 44.817673, 51.974537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480637, 44.418884, 51.960922>,  <42.497414, 44.179611, 51.952755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480637, 44.418884, 51.960922>,  <42.452675, 44.817673, 51.974537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480637, 44.418884, 51.960922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561218, 0.067514, -0.824910,
		0.824710, 0.038564, 0.564239,
		0.069906, -0.996973, -0.034036,
		42.501610, 44.119793, 51.950710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160995, 44.604153, 51.744308>,  <42.452675, 44.817673, 51.974537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160995, 44.604153, 51.744308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925682, 44.294479, 51.650871>,  <42.784492, 44.108677, 51.594810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925682, 44.294479, 51.650871>,  <43.160995, 44.604153, 51.744308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925682, 44.294479, 51.650871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539733, -0.160806, -0.826336,
		0.602172, -0.612195, 0.512451,
		-0.588284, -0.774182, -0.233589,
		42.749195, 44.062225, 51.580795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624409, 44.023041, 51.614262>,  <43.160995, 44.604153, 51.744308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624409, 44.023041, 51.614262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282360, 43.894920, 51.451202>,  <43.077129, 43.818047, 51.353367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282360, 43.894920, 51.451202>,  <43.624409, 44.023041, 51.614262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282360, 43.894920, 51.451202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505985, -0.344396, -0.790804,
		0.112905, -0.882495, 0.456569,
		-0.855121, -0.320303, -0.407645,
		43.025826, 43.798828, 51.328907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782719, 43.547531, 51.212002>,  <43.624409, 44.023041, 51.614262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782719, 43.547531, 51.212002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422348, 43.589302, 51.043510>,  <43.206127, 43.614365, 50.942417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422348, 43.589302, 51.043510>,  <43.782719, 43.547531, 51.212002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422348, 43.589302, 51.043510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406828, -0.134684, -0.903521,
		-0.151090, -0.985370, 0.078854,
		-0.900923, 0.104433, -0.421226,
		43.152069, 43.620628, 50.917141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775639, 42.979496, 50.740547>,  <43.782719, 43.547531, 51.212002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775639, 42.979496, 50.740547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523109, 43.262047, 50.612511>,  <43.371593, 43.431580, 50.535690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523109, 43.262047, 50.612511>,  <43.775639, 42.979496, 50.740547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523109, 43.262047, 50.612511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319190, -0.139489, -0.937369,
		-0.706788, -0.693953, -0.137406,
		-0.631323, 0.706379, -0.320092,
		43.333714, 43.473961, 50.516483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494446, 42.721359, 50.128220>,  <43.775639, 42.979496, 50.740547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494446, 42.721359, 50.128220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418938, 43.113281, 50.101852>,  <43.373631, 43.348434, 50.086033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418938, 43.113281, 50.101852>,  <43.494446, 42.721359, 50.128220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418938, 43.113281, 50.101852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078998, -0.051757, -0.995530,
		-0.978838, -0.193137, -0.067632,
		-0.188773, 0.979806, -0.065919,
		43.362305, 43.407223, 50.082077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157646, 42.708374, 49.534222>,  <43.494446, 42.721359, 50.128220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157646, 42.708374, 49.534222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288727, 43.081802, 49.592281>,  <43.367374, 43.305859, 49.627117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288727, 43.081802, 49.592281>,  <43.157646, 42.708374, 49.534222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288727, 43.081802, 49.592281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129068, 0.107953, -0.985742,
		-0.935925, 0.341759, -0.085117,
		0.327698, 0.933567, 0.145146,
		43.387035, 43.361874, 49.635826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752102, 43.098305, 49.160427>,  <43.157646, 42.708374, 49.534222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752102, 43.098305, 49.160427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108223, 43.279938, 49.174122>,  <43.321896, 43.388916, 49.182339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108223, 43.279938, 49.174122>,  <42.752102, 43.098305, 49.160427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108223, 43.279938, 49.174122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026840, 0.127384, -0.991490,
		-0.454578, 0.881807, 0.125598,
		0.890303, 0.454080, 0.034238,
		43.375313, 43.416161, 49.184395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686337, 43.565601, 48.642925>,  <42.752102, 43.098305, 49.160427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686337, 43.565601, 48.642925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076469, 43.526955, 48.722313>,  <43.310551, 43.503765, 48.769947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076469, 43.526955, 48.722313>,  <42.686337, 43.565601, 48.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076469, 43.526955, 48.722313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206260, 0.078628, -0.975333,
		0.078628, 0.992211, 0.096617,
		0.975333, -0.096617, 0.198471,
		43.369068, 43.497971, 48.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938347, 43.888680, 48.093868>,  <42.686337, 43.565601, 48.642925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938347, 43.888680, 48.093868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274864, 43.721405, 48.230892>,  <43.476776, 43.621040, 48.313107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274864, 43.721405, 48.230892>,  <42.938347, 43.888680, 48.093868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274864, 43.721405, 48.230892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344549, -0.073487, -0.935888,
		0.416549, 0.905384, 0.082261,
		0.841293, -0.418186, 0.342560,
		43.527252, 43.595951, 48.333660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513832, 44.239048, 47.597370>,  <42.938347, 43.888680, 48.093868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513832, 44.239048, 47.597370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631672, 43.891083, 47.755596>,  <43.702374, 43.682304, 47.850533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.631672, 43.891083, 47.755596>,  <43.513832, 44.239048, 47.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631672, 43.891083, 47.755596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339620, -0.291601, -0.894219,
		0.893236, 0.397775, 0.209534,
		0.294597, -0.869910, 0.395561,
		43.720051, 43.630108, 47.874264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202740, 44.129093, 47.292923>,  <43.513832, 44.239048, 47.597370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202740, 44.129093, 47.292923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098999, 43.761932, 47.413055>,  <44.036755, 43.541637, 47.485134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098999, 43.761932, 47.413055>,  <44.202740, 44.129093, 47.292923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098999, 43.761932, 47.413055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346479, -0.378702, -0.858218,
		0.901491, -0.118526, 0.416251,
		-0.259356, -0.917898, 0.300330,
		44.021191, 43.486565, 47.503155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745266, 43.626038, 47.150208>,  <44.202740, 44.129093, 47.292923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745266, 43.626038, 47.150208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443977, 43.370331, 47.212166>,  <44.263203, 43.216908, 47.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443977, 43.370331, 47.212166>,  <44.745266, 43.626038, 47.150208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443977, 43.370331, 47.212166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358579, -0.596493, -0.718065,
		0.551431, -0.485319, 0.678520,
		-0.753223, -0.639266, 0.154899,
		44.218010, 43.178551, 47.258636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064030, 42.945465, 47.280396>,  <44.745266, 43.626038, 47.150208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064030, 42.945465, 47.280396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691719, 42.896385, 47.142639>,  <44.468334, 42.866936, 47.059986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691719, 42.896385, 47.142639>,  <45.064030, 42.945465, 47.280396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691719, 42.896385, 47.142639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339669, -0.638672, -0.690451,
		-0.135233, -0.759632, 0.636137,
		-0.930772, -0.122704, -0.344393,
		44.412487, 42.859573, 47.039322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996380, 42.220078, 47.099583>,  <45.064030, 42.945465, 47.280396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996380, 42.220078, 47.099583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687340, 42.371216, 46.895496>,  <44.501915, 42.461899, 46.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687340, 42.371216, 46.895496>,  <44.996380, 42.220078, 47.099583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687340, 42.371216, 46.895496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149085, -0.673186, -0.724289,
		-0.617139, -0.635652, 0.463774,
		-0.772601, 0.377846, -0.510215,
		44.455559, 42.484570, 46.742432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623886, 41.656120, 46.939735>,  <44.996380, 42.220078, 47.099583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623886, 41.656120, 46.939735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559196, 41.947815, 46.673786>,  <44.520382, 42.122833, 46.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.559196, 41.947815, 46.673786>,  <44.623886, 41.656120, 46.939735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559196, 41.947815, 46.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049330, -0.666924, -0.743491,
		-0.985602, -0.153041, 0.071886,
		-0.161728, 0.729240, -0.664871,
		44.510677, 42.166588, 46.474323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272209, 41.296909, 46.396065>,  <44.623886, 41.656120, 46.939735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272209, 41.296909, 46.396065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388924, 41.640442, 46.227654>,  <44.458954, 41.846561, 46.126606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388924, 41.640442, 46.227654>,  <44.272209, 41.296909, 46.396065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388924, 41.640442, 46.227654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048290, -0.452852, -0.890277,
		-0.955263, 0.239443, -0.173610,
		0.291790, 0.858832, -0.421030,
		44.476460, 41.898090, 46.101345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916428, 41.308022, 45.811432>,  <44.272209, 41.296909, 46.396065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916428, 41.308022, 45.811432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205093, 41.576538, 45.743824>,  <44.378292, 41.737648, 45.703259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205093, 41.576538, 45.743824>,  <43.916428, 41.308022, 45.811432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205093, 41.576538, 45.743824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030281, -0.274542, -0.961098,
		-0.691579, 0.688473, -0.218455,
		0.721665, 0.671291, -0.169020,
		44.421593, 41.777924, 45.693119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657696, 41.579990, 45.216869>,  <43.916428, 41.308022, 45.811432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657696, 41.579990, 45.216869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051857, 41.636414, 45.255001>,  <44.288353, 41.670265, 45.277882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051857, 41.636414, 45.255001>,  <43.657696, 41.579990, 45.216869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051857, 41.636414, 45.255001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105294, -0.064918, -0.992320,
		-0.133783, 0.987871, -0.078822,
		0.985401, 0.141055, 0.095332,
		44.347477, 41.678730, 45.283600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775215, 42.095718, 44.808304>,  <43.657696, 41.579990, 45.216869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775215, 42.095718, 44.808304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122948, 41.901848, 44.846992>,  <44.331589, 41.785526, 44.870205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122948, 41.901848, 44.846992>,  <43.775215, 42.095718, 44.808304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122948, 41.901848, 44.846992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135724, 0.045936, -0.989681,
		0.475231, 0.873487, 0.105715,
		0.869330, -0.484675, 0.096723,
		44.383747, 41.756447, 44.876011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224567, 42.531662, 44.379147>,  <43.775215, 42.095718, 44.808304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224567, 42.531662, 44.379147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357849, 42.157417, 44.425808>,  <44.437817, 41.932869, 44.453804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357849, 42.157417, 44.425808>,  <44.224567, 42.531662, 44.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357849, 42.157417, 44.425808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132914, -0.075876, -0.988219,
		0.933439, 0.344784, 0.099074,
		0.333205, -0.935611, 0.116652,
		44.457809, 41.876736, 44.460804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.439117, 39.353256, 53.489086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.691296, 39.639778, 53.608715>,  <43.842602, 39.811691, 53.680492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.691296, 39.639778, 53.608715>,  <43.439117, 39.353256, 53.489086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691296, 39.639778, 53.608715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359708, 0.071833, -0.930296,
		-0.687862, 0.694077, -0.212375,
		0.630441, 0.716308, 0.299076,
		43.880428, 39.854671, 53.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339672, 39.938534, 53.076988>,  <43.439117, 39.353256, 53.489086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339672, 39.938534, 53.076988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.710651, 39.960114, 53.225002>,  <43.933239, 39.973061, 53.313812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.710651, 39.960114, 53.225002>,  <43.339672, 39.938534, 53.076988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710651, 39.960114, 53.225002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360506, 0.133938, -0.923090,
		-0.099360, 0.989520, 0.104772,
		0.927450, 0.053947, 0.370036,
		43.988888, 39.976299, 53.336014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680946, 40.485107, 52.684460>,  <43.339672, 39.938534, 53.076988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680946, 40.485107, 52.684460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979206, 40.272179, 52.844780>,  <44.158161, 40.144421, 52.940971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.979206, 40.272179, 52.844780>,  <43.680946, 40.485107, 52.684460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979206, 40.272179, 52.844780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425991, -0.081712, -0.901030,
		0.512392, 0.842587, 0.165838,
		0.745645, -0.532325, 0.400803,
		44.202900, 40.112480, 52.965019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340485, 40.851105, 52.496635>,  <43.680946, 40.485107, 52.684460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340485, 40.851105, 52.496635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.426460, 40.466141, 52.563049>,  <44.478046, 40.235161, 52.602898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.426460, 40.466141, 52.563049>,  <44.340485, 40.851105, 52.496635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426460, 40.466141, 52.563049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454252, -0.051979, -0.889356,
		0.864556, 0.266574, 0.426005,
		0.214936, -0.962412, 0.166030,
		44.490940, 40.177418, 52.612858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072708, 40.800903, 52.257851>,  <44.340485, 40.851105, 52.496635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072708, 40.800903, 52.257851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.950562, 40.420975, 52.284950>,  <44.877274, 40.193016, 52.301208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.950562, 40.420975, 52.284950>,  <45.072708, 40.800903, 52.257851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950562, 40.420975, 52.284950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582250, -0.242537, -0.775990,
		0.753484, -0.197515, 0.627096,
		-0.305364, -0.949823, 0.067745,
		44.858952, 40.136028, 52.305275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681343, 40.236996, 52.172379>,  <45.072708, 40.800903, 52.257851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681343, 40.236996, 52.172379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.347275, 40.042358, 52.069836>,  <45.146835, 39.925575, 52.008312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.347275, 40.042358, 52.069836>,  <45.681343, 40.236996, 52.172379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347275, 40.042358, 52.069836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473737, -0.399673, -0.784751,
		0.279395, -0.776846, 0.564312,
		-0.835172, -0.486591, -0.256354,
		45.096722, 39.896381, 51.992928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963863, 39.629726, 51.907948>,  <45.681343, 40.236996, 52.172379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963863, 39.629726, 51.907948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.589310, 39.674606, 51.774918>,  <45.364578, 39.701534, 51.695099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.589310, 39.674606, 51.774918>,  <45.963863, 39.629726, 51.907948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589310, 39.674606, 51.774918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319574, -0.119280, -0.940023,
		-0.145142, -0.986500, 0.075834,
		-0.936379, 0.112202, -0.332573,
		45.308395, 39.708267, 51.675144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822876, 38.991211, 51.416851>,  <45.963863, 39.629726, 51.907948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822876, 38.991211, 51.416851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.522369, 39.236443, 51.319092>,  <45.342064, 39.383579, 51.260437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.522369, 39.236443, 51.319092>,  <45.822876, 38.991211, 51.416851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.522369, 39.236443, 51.319092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189234, -0.154668, -0.969674,
		-0.632286, -0.774735, 0.000182,
		-0.751268, 0.613077, -0.244401,
		45.296989, 39.420364, 51.245773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483860, 38.719002, 50.871426>,  <45.822876, 38.991211, 51.416851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483860, 38.719002, 50.871426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.401993, 39.110062, 50.852154>,  <45.352871, 39.344696, 50.840591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.401993, 39.110062, 50.852154>,  <45.483860, 38.719002, 50.871426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401993, 39.110062, 50.852154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055855, -0.037480, -0.997735,
		-0.977237, -0.206895, -0.046935,
		-0.204667, 0.977645, -0.048183,
		45.340591, 39.403355, 50.837700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069748, 38.786068, 50.359818>,  <45.483860, 38.719002, 50.871426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069748, 38.786068, 50.359818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.186523, 39.167740, 50.386108>,  <45.256588, 39.396744, 50.401882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.186523, 39.167740, 50.386108>,  <45.069748, 38.786068, 50.359818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186523, 39.167740, 50.386108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050332, 0.083950, -0.995198,
		-0.955111, 0.287230, 0.072534,
		0.291940, 0.954175, 0.065725,
		45.274105, 39.453991, 50.405827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720402, 39.180580, 49.937328>,  <45.069748, 38.786068, 50.359818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720402, 39.180580, 49.937328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.060837, 39.389137, 49.961990>,  <45.265099, 39.514271, 49.976788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.060837, 39.389137, 49.961990>,  <44.720402, 39.180580, 49.937328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060837, 39.389137, 49.961990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022649, 0.080855, -0.996468,
		-0.524538, 0.849476, 0.057005,
		0.851086, 0.521394, 0.061651,
		45.316162, 39.545555, 49.980484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809448, 39.510204, 49.315121>,  <44.720402, 39.180580, 49.937328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809448, 39.510204, 49.315121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.173149, 39.598351, 49.456375>,  <45.391369, 39.651237, 49.541126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.173149, 39.598351, 49.456375>,  <44.809448, 39.510204, 49.315121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173149, 39.598351, 49.456375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322350, 0.163970, -0.932311,
		-0.263349, 0.961538, 0.078056,
		0.909251, 0.220362, 0.353134,
		45.445923, 39.664459, 49.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010452, 40.041656, 48.935432>,  <44.809448, 39.510204, 49.315121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010452, 40.041656, 48.935432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.352875, 39.899948, 49.085983>,  <45.558327, 39.814922, 49.176311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.352875, 39.899948, 49.085983>,  <45.010452, 40.041656, 48.935432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352875, 39.899948, 49.085983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456914, 0.178238, -0.871470,
		0.241653, 0.917999, 0.314454,
		0.856057, -0.354272, 0.376375,
		45.609692, 39.793667, 49.198895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551743, 40.564167, 48.934689>,  <45.010452, 40.041656, 48.935432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551743, 40.564167, 48.934689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.710007, 40.196861, 48.928493>,  <45.804966, 39.976479, 48.924774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.710007, 40.196861, 48.928493>,  <45.551743, 40.564167, 48.934689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710007, 40.196861, 48.928493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414908, 0.193774, -0.888990,
		0.819329, 0.345315, 0.457665,
		0.395665, -0.918264, -0.015491,
		45.828705, 39.921383, 48.923847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282207, 40.684402, 48.627052>,  <45.551743, 40.564167, 48.934689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282207, 40.684402, 48.627052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.205544, 40.293167, 48.594540>,  <46.159546, 40.058426, 48.575031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.205544, 40.293167, 48.594540>,  <46.282207, 40.684402, 48.627052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205544, 40.293167, 48.594540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543059, -0.036703, -0.838892,
		0.817528, -0.204923, 0.538195,
		-0.191662, -0.978090, -0.081280,
		46.148045, 39.999741, 48.570156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888348, 40.457245, 48.352661>,  <46.282207, 40.684402, 48.627052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888348, 40.457245, 48.352661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.647102, 40.142708, 48.299122>,  <46.502354, 39.953987, 48.266998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.647102, 40.142708, 48.299122>,  <46.888348, 40.457245, 48.352661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.647102, 40.142708, 48.299122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387496, -0.142168, -0.910843,
		0.697207, -0.601209, 0.390449,
		-0.603116, -0.786344, -0.133846,
		46.466167, 39.906803, 48.258968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.273514, 39.822899, 48.046829>,  <46.888348, 40.457245, 48.352661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.273514, 39.822899, 48.046829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.895020, 39.742424, 47.945507>,  <46.667923, 39.694141, 47.884716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.895020, 39.742424, 47.945507>,  <47.273514, 39.822899, 48.046829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895020, 39.742424, 47.945507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297923, -0.236964, -0.924711,
		0.126015, -0.950459, 0.284162,
		-0.946236, -0.201186, -0.253302,
		46.611149, 39.682068, 47.869518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232208, 39.163841, 47.786007>,  <47.273514, 39.822899, 48.046829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232208, 39.163841, 47.786007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.909294, 39.351189, 47.642384>,  <46.715546, 39.463596, 47.556210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.909294, 39.351189, 47.642384>,  <47.232208, 39.163841, 47.786007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909294, 39.351189, 47.642384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243657, -0.289622, -0.925608,
		-0.537521, -0.834713, 0.119684,
		-0.807281, 0.468372, -0.359062,
		46.667110, 39.491699, 47.534664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.025803, 38.761017, 47.195278>,  <47.232208, 39.163841, 47.786007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.025803, 38.761017, 47.195278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.812523, 39.092293, 47.126225>,  <46.684555, 39.291058, 47.084793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.812523, 39.092293, 47.126225>,  <47.025803, 38.761017, 47.195278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812523, 39.092293, 47.126225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085494, -0.150265, -0.984942,
		-0.841661, -0.539925, 0.009315,
		-0.533195, 0.828192, -0.172632,
		46.652565, 39.340752, 47.074436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542244, 38.563404, 46.704262>,  <47.025803, 38.761017, 47.195278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542244, 38.563404, 46.704262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.597755, 38.958427, 46.674667>,  <46.631062, 39.195442, 46.656910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.597755, 38.958427, 46.674667>,  <46.542244, 38.563404, 46.704262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.597755, 38.958427, 46.674667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106343, -0.089137, -0.990326,
		-0.984598, 0.129564, -0.117389,
		0.138774, 0.987557, -0.073986,
		46.639389, 39.254696, 46.652470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115749, 38.781750, 46.118336>,  <46.542244, 38.563404, 46.704262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115749, 38.781750, 46.118336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.353867, 39.100357, 46.160648>,  <46.496738, 39.291519, 46.186035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.353867, 39.100357, 46.160648>,  <46.115749, 38.781750, 46.118336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353867, 39.100357, 46.160648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093239, 0.062282, -0.993694,
		-0.798079, 0.601404, -0.037189,
		0.595295, 0.796514, 0.105780,
		46.532455, 39.339310, 46.192383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823418, 39.276596, 45.733982>,  <46.115749, 38.781750, 46.118336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823418, 39.276596, 45.733982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.216194, 39.336258, 45.780544>,  <46.451859, 39.372055, 45.808483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.216194, 39.336258, 45.780544>,  <45.823418, 39.276596, 45.733982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216194, 39.336258, 45.780544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098310, 0.123440, -0.987470,
		-0.161654, 0.981079, 0.106547,
		0.981939, 0.149154, 0.116404,
		46.510777, 39.381004, 45.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356403, 39.599312, 46.059406>,  <45.823418, 39.276596, 45.733982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356403, 39.599312, 46.059406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.974754, 39.595932, 45.939693>,  <44.745766, 39.593903, 45.867867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.974754, 39.595932, 45.939693>,  <45.356403, 39.599312, 46.059406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974754, 39.595932, 45.939693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296815, -0.104436, 0.949207,
		-0.039276, 0.994496, 0.097137,
		-0.954127, -0.008449, -0.299283,
		44.688515, 39.593399, 45.849907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988697, 40.094784, 46.452194>,  <45.356403, 39.599312, 46.059406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988697, 40.094784, 46.452194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.707153, 39.845436, 46.315960>,  <44.538227, 39.695827, 46.234219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.707153, 39.845436, 46.315960>,  <44.988697, 40.094784, 46.452194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707153, 39.845436, 46.315960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478957, 0.062395, 0.875618,
		-0.524584, 0.779433, -0.342485,
		-0.703855, -0.623370, -0.340584,
		44.495998, 39.658424, 46.213783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352890, 40.381313, 46.675976>,  <44.988697, 40.094784, 46.452194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352890, 40.381313, 46.675976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.297455, 39.992393, 46.600693>,  <44.264194, 39.759041, 46.555523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.297455, 39.992393, 46.600693>,  <44.352890, 40.381313, 46.675976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297455, 39.992393, 46.600693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511644, -0.092416, 0.854213,
		-0.847946, 0.214680, -0.484665,
		-0.138592, -0.972302, -0.188203,
		44.255878, 39.700703, 46.544231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583611, 40.221703, 46.582016>,  <44.352890, 40.381313, 46.675976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583611, 40.221703, 46.582016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.780720, 39.894493, 46.700687>,  <43.898983, 39.698166, 46.771889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.780720, 39.894493, 46.700687>,  <43.583611, 40.221703, 46.582016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780720, 39.894493, 46.700687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605446, -0.077435, 0.792111,
		-0.624992, -0.569949, -0.533426,
		0.492769, -0.818023, 0.296677,
		43.928551, 39.649086, 46.789692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005600, 39.901791, 47.009926>,  <43.583611, 40.221703, 46.582016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005600, 39.901791, 47.009926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.301777, 39.652802, 47.111336>,  <43.479485, 39.503410, 47.172180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.301777, 39.652802, 47.111336>,  <43.005600, 39.901791, 47.009926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301777, 39.652802, 47.111336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476379, -0.219948, 0.851285,
		-0.474138, -0.751101, -0.459391,
		0.740443, -0.622470, 0.253523,
		43.523911, 39.466061, 47.187393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683552, 39.343719, 47.348572>,  <43.005600, 39.901791, 47.009926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683552, 39.343719, 47.348572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.062538, 39.348038, 47.476440>,  <43.289932, 39.350628, 47.553162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.062538, 39.348038, 47.476440>,  <42.683552, 39.343719, 47.348572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062538, 39.348038, 47.476440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316953, -0.102540, 0.942882,
		0.042959, -0.994670, -0.093732,
		0.947468, 0.010797, 0.319669,
		43.346779, 39.351276, 47.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582474, 38.873360, 47.829807>,  <42.683552, 39.343719, 47.348572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582474, 38.873360, 47.829807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.939358, 39.023544, 47.930202>,  <43.153488, 39.113655, 47.990440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.939358, 39.023544, 47.930202>,  <42.582474, 38.873360, 47.829807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939358, 39.023544, 47.930202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266019, -0.012209, 0.963890,
		0.364967, -0.926758, 0.088987,
		0.892207, 0.375461, 0.250991,
		43.207020, 39.136181, 48.005501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848698, 38.414127, 48.339996>,  <42.582474, 38.873360, 47.829807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848698, 38.414127, 48.339996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051689, 38.754234, 48.395859>,  <43.173485, 38.958298, 48.429379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.051689, 38.754234, 48.395859>,  <42.848698, 38.414127, 48.339996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051689, 38.754234, 48.395859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301505, 0.023391, 0.953178,
		0.807191, -0.525829, 0.268230,
		0.507482, 0.850269, 0.139659,
		43.203934, 39.009315, 48.437756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054314, 38.377907, 49.043507>,  <42.848698, 38.414127, 48.339996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054314, 38.377907, 49.043507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.069508, 38.767296, 48.953262>,  <43.078625, 39.000931, 48.899117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.069508, 38.767296, 48.953262>,  <43.054314, 38.377907, 49.043507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069508, 38.767296, 48.953262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351424, 0.224363, 0.908935,
		0.935446, 0.044762, 0.350625,
		0.037982, 0.973477, -0.225609,
		43.080902, 39.059338, 48.885578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405689, 38.746597, 49.667694>,  <43.054314, 38.377907, 49.043507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405689, 38.746597, 49.667694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.172108, 39.002968, 49.468414>,  <43.031960, 39.156792, 49.348846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.172108, 39.002968, 49.468414>,  <43.405689, 38.746597, 49.667694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172108, 39.002968, 49.468414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412781, 0.294009, 0.862074,
		0.699005, 0.709061, 0.092876,
		-0.583956, 0.640931, -0.498200,
		42.996922, 39.195248, 49.318954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426895, 39.429989, 50.031506>,  <43.405689, 38.746597, 49.667694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426895, 39.429989, 50.031506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.097416, 39.421494, 49.804852>,  <42.899727, 39.416397, 49.668861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.097416, 39.421494, 49.804852>,  <43.426895, 39.429989, 50.031506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097416, 39.421494, 49.804852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552890, 0.251852, 0.794282,
		0.125840, 0.967533, -0.219191,
		-0.823697, -0.021236, -0.566632,
		42.850307, 39.415123, 49.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191643, 39.982906, 50.215153>,  <43.426895, 39.429989, 50.031506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191643, 39.982906, 50.215153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.873924, 39.823692, 50.031563>,  <42.683292, 39.728165, 49.921410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.873924, 39.823692, 50.031563>,  <43.191643, 39.982906, 50.215153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873924, 39.823692, 50.031563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596467, 0.367432, 0.713597,
		-0.115395, 0.840572, -0.529266,
		-0.794299, -0.398035, -0.458974,
		42.635635, 39.704281, 49.893871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833687, 40.525627, 50.126556>,  <43.191643, 39.982906, 50.215153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833687, 40.525627, 50.126556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.573513, 40.221962, 50.136375>,  <42.417408, 40.039764, 50.142269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.573513, 40.221962, 50.136375>,  <42.833687, 40.525627, 50.126556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573513, 40.221962, 50.136375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519610, 0.468303, 0.714631,
		-0.554020, 0.452064, -0.699071,
		-0.650436, -0.759164, 0.024552,
		42.378384, 39.994213, 50.143742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129829, 40.835121, 50.285408>,  <42.833687, 40.525627, 50.126556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129829, 40.835121, 50.285408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103302, 40.440010, 50.341824>,  <42.087387, 40.202942, 50.375671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.103302, 40.440010, 50.341824>,  <42.129829, 40.835121, 50.285408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103302, 40.440010, 50.341824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622933, 0.151406, 0.767483,
		-0.779459, -0.036962, -0.625361,
		-0.066316, -0.987780, 0.141040,
		42.083408, 40.143677, 50.384136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444878, 40.642494, 50.456520>,  <42.129829, 40.835121, 50.285408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444878, 40.642494, 50.456520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650551, 40.329636, 50.597294>,  <41.773956, 40.141918, 50.681759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650551, 40.329636, 50.597294>,  <41.444878, 40.642494, 50.456520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650551, 40.329636, 50.597294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518048, 0.043809, 0.854229,
		-0.683552, -0.621550, -0.382664,
		0.514182, -0.782149, 0.351938,
		41.804806, 40.094990, 50.702877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897083, 40.287205, 50.891815>,  <41.444878, 40.642494, 50.456520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897083, 40.287205, 50.891815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248859, 40.138863, 51.011185>,  <41.459923, 40.049858, 51.082806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248859, 40.138863, 51.011185>,  <40.897083, 40.287205, 50.891815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248859, 40.138863, 51.011185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373312, -0.148352, 0.915768,
		-0.295344, -0.916766, -0.268910,
		0.879438, -0.370853, 0.298424,
		41.512691, 40.027607, 51.100712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782150, 39.620518, 51.259563>,  <40.897083, 40.287205, 50.891815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782150, 39.620518, 51.259563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128094, 39.776413, 51.386135>,  <41.335659, 39.869949, 51.462078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128094, 39.776413, 51.386135>,  <40.782150, 39.620518, 51.259563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128094, 39.776413, 51.386135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258043, -0.195554, 0.946135,
		0.430625, -0.899924, -0.068557,
		0.864856, 0.389739, 0.316430,
		41.387550, 39.893333, 51.481064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992928, 39.159138, 51.744232>,  <40.782150, 39.620518, 51.259563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992928, 39.159138, 51.744232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218620, 39.479523, 51.824341>,  <41.354034, 39.671753, 51.872406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218620, 39.479523, 51.824341>,  <40.992928, 39.159138, 51.744232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218620, 39.479523, 51.824341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200980, -0.102026, 0.974268,
		0.800781, -0.589963, 0.103410,
		0.564232, 0.800958, 0.200271,
		41.387890, 39.719810, 51.884422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.367958, 38.867836, 52.259216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.391724, 39.266731, 52.277050>,  <41.405983, 39.506069, 52.287750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.391724, 39.266731, 52.277050>,  <41.367958, 38.867836, 52.259216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391724, 39.266731, 52.277050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079590, -0.039785, 0.996033,
		0.995056, -0.062724, 0.077007,
		0.059411, 0.997238, 0.044580,
		41.409546, 39.565903, 52.290424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865818, 38.988358, 52.739998>,  <41.367958, 38.867836, 52.259216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865818, 38.988358, 52.739998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668556, 39.336319, 52.736801>,  <41.550198, 39.545097, 52.734882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.668556, 39.336319, 52.736801>,  <41.865818, 38.988358, 52.739998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668556, 39.336319, 52.736801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039570, 0.031606, 0.998717,
		0.869041, 0.492206, -0.050008,
		-0.493154, 0.869905, -0.007990,
		41.520611, 39.597290, 52.734406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187946, 39.489487, 53.160061>,  <41.865818, 38.988358, 52.739998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187946, 39.489487, 53.160061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819313, 39.642960, 53.136501>,  <41.598133, 39.735043, 53.122364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819313, 39.642960, 53.136501>,  <42.187946, 39.489487, 53.160061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819313, 39.642960, 53.136501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039242, 0.058866, 0.997494,
		0.386188, 0.921587, -0.039194,
		-0.921585, 0.383682, -0.058898,
		41.542839, 39.758064, 53.118832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231842, 40.104362, 53.593193>,  <42.187946, 39.489487, 53.160061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231842, 40.104362, 53.593193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849098, 39.995438, 53.552658>,  <41.619453, 39.930084, 53.528339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.849098, 39.995438, 53.552658>,  <42.231842, 40.104362, 53.593193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849098, 39.995438, 53.552658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184743, 0.301019, 0.935552,
		-0.224256, 0.913912, -0.338340,
		-0.956859, -0.272309, -0.101334,
		41.562042, 39.913746, 53.522259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833515, 40.580959, 53.989933>,  <42.231842, 40.104362, 53.593193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833515, 40.580959, 53.989933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602966, 40.256760, 53.948212>,  <41.464638, 40.062241, 53.923180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602966, 40.256760, 53.948212>,  <41.833515, 40.580959, 53.989933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602966, 40.256760, 53.948212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131769, -0.033789, 0.990704,
		-0.806491, 0.584762, -0.087324,
		-0.576376, -0.810501, -0.104304,
		41.430054, 40.013611, 53.916920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424248, 40.731327, 54.572075>,  <41.833515, 40.580959, 53.989933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424248, 40.731327, 54.572075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353500, 40.349869, 54.474693>,  <41.311050, 40.120995, 54.416264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.353500, 40.349869, 54.474693>,  <41.424248, 40.731327, 54.572075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353500, 40.349869, 54.474693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270002, -0.190853, 0.943755,
		-0.946475, 0.232656, -0.223731,
		-0.176870, -0.953649, -0.243456,
		41.300438, 40.063774, 54.401657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711941, 40.510059, 54.876671>,  <41.424248, 40.731327, 54.572075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711941, 40.510059, 54.876671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930931, 40.181602, 54.812187>,  <41.062325, 39.984528, 54.773499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930931, 40.181602, 54.812187>,  <40.711941, 40.510059, 54.876671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930931, 40.181602, 54.812187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092884, -0.251079, 0.963500,
		-0.831648, -0.512523, -0.213732,
		0.547479, -0.821145, -0.161204,
		41.095177, 39.935261, 54.763824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277020, 39.983414, 55.028404>,  <40.711941, 40.510059, 54.876671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277020, 39.983414, 55.028404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652351, 39.851669, 55.070461>,  <40.877552, 39.772621, 55.095695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652351, 39.851669, 55.070461>,  <40.277020, 39.983414, 55.028404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652351, 39.851669, 55.070461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198967, -0.265727, 0.943293,
		-0.282746, -0.906041, -0.314872,
		0.938332, -0.329361, 0.105138,
		40.933849, 39.752861, 55.102005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218304, 39.307377, 55.258694>,  <40.277020, 39.983414, 55.028404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218304, 39.307377, 55.258694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593231, 39.389778, 55.371124>,  <40.818188, 39.439220, 55.438583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593231, 39.389778, 55.371124>,  <40.218304, 39.307377, 55.258694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593231, 39.389778, 55.371124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263106, -0.110539, 0.958413,
		0.228509, -0.972287, -0.049409,
		0.937315, 0.206006, 0.281074,
		40.874424, 39.451580, 55.455448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419975, 38.717133, 55.650475>,  <40.218304, 39.307377, 55.258694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419975, 38.717133, 55.650475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.679436, 39.006149, 55.746124>,  <40.835114, 39.179562, 55.803516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.679436, 39.006149, 55.746124>,  <40.419975, 38.717133, 55.650475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679436, 39.006149, 55.746124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229545, -0.113836, 0.966618,
		0.725646, -0.681888, 0.092017,
		0.648650, 0.722544, 0.239128,
		40.874031, 39.222912, 55.817863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866272, 38.445339, 56.144119>,  <40.419975, 38.717133, 55.650475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866272, 38.445339, 56.144119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913906, 38.837578, 56.206413>,  <40.942486, 39.072922, 56.243790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913906, 38.837578, 56.206413>,  <40.866272, 38.445339, 56.144119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913906, 38.837578, 56.206413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241469, -0.123537, 0.962513,
		0.963075, -0.152221, 0.222072,
		0.119081, 0.980596, 0.155732,
		40.949631, 39.131756, 56.253132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333576, 38.486408, 56.668644>,  <40.866272, 38.445339, 56.144119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333576, 38.486408, 56.668644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121208, 38.825127, 56.655617>,  <40.993786, 39.028358, 56.647800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.121208, 38.825127, 56.655617>,  <41.333576, 38.486408, 56.668644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121208, 38.825127, 56.655617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139147, -0.049200, 0.989049,
		0.835920, 0.529638, 0.143950,
		-0.530920, 0.846796, -0.032570,
		40.961933, 39.079166, 56.645847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476463, 38.765133, 57.260384>,  <41.333576, 38.486408, 56.668644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476463, 38.765133, 57.260384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175720, 39.009659, 57.161587>,  <40.995274, 39.156372, 57.102310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175720, 39.009659, 57.161587>,  <41.476463, 38.765133, 57.260384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175720, 39.009659, 57.161587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066657, 0.443175, 0.893954,
		0.655944, 0.655664, -0.373954,
		-0.751860, 0.611310, -0.246993,
		40.950161, 39.193050, 57.087490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732418, 39.376625, 57.479794>,  <41.476463, 38.765133, 57.260384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732418, 39.376625, 57.479794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338596, 39.429497, 57.433868>,  <41.102303, 39.461220, 57.406315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.338596, 39.429497, 57.433868>,  <41.732418, 39.376625, 57.479794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338596, 39.429497, 57.433868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017679, 0.577369, 0.816292,
		0.174184, 0.805714, -0.566114,
		-0.984554, 0.132176, -0.114813,
		41.043228, 39.469151, 57.399426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617836, 40.093048, 57.782803>,  <41.732418, 39.376625, 57.479794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617836, 40.093048, 57.782803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285690, 39.870613, 57.768612>,  <41.086403, 39.737152, 57.760098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.285690, 39.870613, 57.768612>,  <41.617836, 40.093048, 57.782803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285690, 39.870613, 57.768612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281572, 0.363806, 0.887898,
		-0.480846, 0.747267, -0.458671,
		-0.830364, -0.556091, -0.035475,
		41.036583, 39.703785, 57.757969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217884, 40.508743, 58.135010>,  <41.617836, 40.093048, 57.782803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217884, 40.508743, 58.135010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.045578, 40.147911, 58.145500>,  <40.942196, 39.931412, 58.151794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.045578, 40.147911, 58.145500>,  <41.217884, 40.508743, 58.135010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045578, 40.147911, 58.145500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206880, 0.126989, 0.970090,
		-0.878433, 0.412453, -0.241325,
		-0.430762, -0.902084, 0.026224,
		40.916348, 39.877285, 58.153366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489799, 40.529762, 58.426632>,  <41.217884, 40.508743, 58.135010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489799, 40.529762, 58.426632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593597, 40.146492, 58.474907>,  <40.655876, 39.916531, 58.503872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.593597, 40.146492, 58.474907>,  <40.489799, 40.529762, 58.426632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593597, 40.146492, 58.474907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268639, 0.048419, 0.962023,
		-0.927628, -0.282064, -0.244838,
		0.259497, -0.958173, 0.120688,
		40.671448, 39.859039, 58.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037449, 40.210476, 58.990395>,  <40.489799, 40.529762, 58.426632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037449, 40.210476, 58.990395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341293, 39.950661, 58.977219>,  <40.523602, 39.794769, 58.969311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341293, 39.950661, 58.977219>,  <40.037449, 40.210476, 58.990395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341293, 39.950661, 58.977219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019157, -0.072975, 0.997150,
		-0.650095, -0.756815, -0.067876,
		0.759611, -0.649542, -0.032943,
		40.569176, 39.755798, 58.967335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766636, 39.625942, 59.438484>,  <40.037449, 40.210476, 58.990395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766636, 39.625942, 59.438484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162781, 39.582977, 59.403503>,  <40.400467, 39.557198, 59.382515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.162781, 39.582977, 59.403503>,  <39.766636, 39.625942, 59.438484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162781, 39.582977, 59.403503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062473, -0.217116, 0.974145,
		-0.123616, -0.970219, -0.208313,
		0.990362, -0.107406, -0.087451,
		40.459888, 39.550755, 59.377270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956184, 39.023884, 59.797348>,  <39.766636, 39.625942, 59.438484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956184, 39.023884, 59.797348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279575, 39.258194, 59.774651>,  <40.473610, 39.398781, 59.761032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279575, 39.258194, 59.774651>,  <39.956184, 39.023884, 59.797348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279575, 39.258194, 59.774651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166146, -0.134692, 0.976859,
		0.564582, -0.799200, -0.206221,
		0.808482, 0.585779, -0.056740,
		40.522121, 39.433929, 59.757629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415215, 38.735260, 60.274254>,  <39.956184, 39.023884, 59.797348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415215, 38.735260, 60.274254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578835, 39.097076, 60.226109>,  <40.677006, 39.314167, 60.197220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578835, 39.097076, 60.226109>,  <40.415215, 38.735260, 60.274254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578835, 39.097076, 60.226109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337854, -0.027597, 0.940794,
		0.847662, -0.425498, -0.316891,
		0.409051, 0.904539, -0.120363,
		40.701550, 39.368439, 60.189999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207840, 38.754116, 60.603554>,  <40.415215, 38.735260, 60.274254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207840, 38.754116, 60.603554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.096195, 39.137848, 60.586647>,  <41.029209, 39.368088, 60.576504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.096195, 39.137848, 60.586647>,  <41.207840, 38.754116, 60.603554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096195, 39.137848, 60.586647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299194, 0.128706, 0.945472,
		0.912458, 0.251247, -0.322949,
		-0.279113, 0.959328, -0.042267,
		41.012463, 39.425648, 60.573967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778267, 39.157295, 60.988857>,  <41.207840, 38.754116, 60.603554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778267, 39.157295, 60.988857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420727, 39.336357, 60.978737>,  <41.206203, 39.443794, 60.972664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420727, 39.336357, 60.978737>,  <41.778267, 39.157295, 60.988857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420727, 39.336357, 60.978737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149751, 0.351249, 0.924229,
		0.422617, 0.822334, -0.381000,
		-0.893851, 0.447650, -0.025298,
		41.152573, 39.470654, 60.971146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814987, 39.878033, 61.185093>,  <41.778267, 39.157295, 60.988857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814987, 39.878033, 61.185093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454399, 39.730247, 61.275291>,  <41.238045, 39.641575, 61.329411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454399, 39.730247, 61.275291>,  <41.814987, 39.878033, 61.185093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454399, 39.730247, 61.275291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004936, 0.512154, 0.858880,
		-0.432815, 0.775367, -0.459867,
		-0.901469, -0.369466, 0.225495,
		41.183960, 39.619408, 61.342941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174370, 39.634159, 61.799068>,  <41.814987, 39.878033, 61.185093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174370, 39.634159, 61.799068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563545, 39.680801, 61.878853>,  <42.797050, 39.708786, 61.926723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.563545, 39.680801, 61.878853>,  <42.174370, 39.634159, 61.799068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563545, 39.680801, 61.878853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178827, 0.166595, -0.969674,
		-0.146297, 0.979107, 0.141236,
		0.972943, 0.116603, 0.199463,
		42.855427, 39.715782, 61.938690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465172, 40.323425, 61.483372>,  <42.174370, 39.634159, 61.799068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465172, 40.323425, 61.483372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777824, 40.079201, 61.534386>,  <42.965416, 39.932667, 61.564995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777824, 40.079201, 61.534386>,  <42.465172, 40.323425, 61.483372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777824, 40.079201, 61.534386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241229, 0.107345, -0.964513,
		0.575208, 0.784658, 0.231190,
		0.781630, -0.610565, 0.127537,
		43.012314, 39.896030, 61.572647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021938, 40.730831, 61.233635>,  <42.465172, 40.323425, 61.483372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021938, 40.730831, 61.233635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106400, 40.339851, 61.234512>,  <43.157078, 40.105263, 61.235039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106400, 40.339851, 61.234512>,  <43.021938, 40.730831, 61.233635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106400, 40.339851, 61.234512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449357, 0.095082, -0.888278,
		0.868039, 0.188550, 0.459301,
		0.211156, -0.977450, 0.002191,
		43.169746, 40.046616, 61.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721527, 40.716892, 60.872581>,  <43.021938, 40.730831, 61.233635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721527, 40.716892, 60.872581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603470, 40.335777, 60.844063>,  <43.532635, 40.107109, 60.826954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603470, 40.335777, 60.844063>,  <43.721527, 40.716892, 60.872581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603470, 40.335777, 60.844063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265341, -0.010053, -0.964102,
		0.917869, -0.303467, 0.255782,
		-0.295145, -0.952789, -0.071295,
		43.514927, 40.049942, 60.822674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269859, 40.323971, 60.577614>,  <43.721527, 40.716892, 60.872581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269859, 40.323971, 60.577614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940514, 40.109848, 60.502232>,  <43.742905, 39.981377, 60.457005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940514, 40.109848, 60.502232>,  <44.269859, 40.323971, 60.577614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940514, 40.109848, 60.502232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164799, 0.092229, -0.982006,
		0.543054, -0.839608, 0.012279,
		-0.823368, -0.535306, -0.188452,
		43.693504, 39.949257, 60.445698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426548, 39.744850, 60.370533>,  <44.269859, 40.323971, 60.577614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426548, 39.744850, 60.370533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.059013, 39.805107, 60.224632>,  <43.838493, 39.841263, 60.137093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.059013, 39.805107, 60.224632>,  <44.426548, 39.744850, 60.370533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059013, 39.805107, 60.224632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341665, -0.158862, -0.926298,
		-0.197489, -0.975740, 0.094498,
		-0.918838, 0.150647, -0.364750,
		43.783363, 39.850300, 60.115208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465622, 39.359383, 59.708630>,  <44.426548, 39.744850, 60.370533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465622, 39.359383, 59.708630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.126549, 39.570992, 59.692818>,  <43.923103, 39.697956, 59.683331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.126549, 39.570992, 59.692818>,  <44.465622, 39.359383, 59.708630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126549, 39.570992, 59.692818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068294, 0.034927, -0.997054,
		-0.526084, -0.847888, -0.065737,
		-0.847686, 0.529024, -0.039531,
		43.872242, 39.729698, 59.680958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053822, 39.050117, 59.074184>,  <44.465622, 39.359383, 59.708630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053822, 39.050117, 59.074184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.881508, 39.402122, 59.154186>,  <43.778122, 39.613327, 59.202187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.881508, 39.402122, 59.154186>,  <44.053822, 39.050117, 59.074184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881508, 39.402122, 59.154186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122132, 0.276427, -0.953243,
		-0.894155, -0.386211, -0.226557,
		-0.430779, 0.880017, 0.200000,
		43.752274, 39.666126, 59.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065998, 39.189430, 58.425846>,  <44.053822, 39.050117, 59.074184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065998, 39.189430, 58.425846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900593, 39.517113, 58.584801>,  <43.801350, 39.713722, 58.680172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.900593, 39.517113, 58.584801>,  <44.065998, 39.189430, 58.425846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900593, 39.517113, 58.584801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197970, 0.345109, -0.917446,
		-0.888715, -0.458047, 0.019470,
		-0.413515, 0.819202, 0.397382,
		43.776539, 39.762875, 58.704014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264870, 39.258930, 58.361134>,  <44.065998, 39.189430, 58.425846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264870, 39.258930, 58.361134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437874, 39.619568, 58.364220>,  <43.541676, 39.835953, 58.366070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437874, 39.619568, 58.364220>,  <43.264870, 39.258930, 58.361134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437874, 39.619568, 58.364220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232055, 0.119577, -0.965325,
		-0.871257, 0.415719, 0.260938,
		0.432506, 0.901598, 0.007713,
		43.567627, 39.890049, 58.366535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846245, 39.733433, 57.983284>,  <43.264870, 39.258930, 58.361134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846245, 39.733433, 57.983284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.212399, 39.893074, 57.962158>,  <43.432091, 39.988857, 57.949482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.212399, 39.893074, 57.962158>,  <42.846245, 39.733433, 57.983284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212399, 39.893074, 57.962158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129515, 0.167716, -0.977291,
		-0.381182, 0.901436, 0.205215,
		0.915383, 0.399104, -0.052819,
		43.487015, 40.012806, 57.946312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659466, 40.231174, 57.528790>,  <42.846245, 39.733433, 57.983284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659466, 40.231174, 57.528790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059135, 40.231018, 57.545074>,  <43.298935, 40.230927, 57.554848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059135, 40.231018, 57.545074>,  <42.659466, 40.231174, 57.528790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059135, 40.231018, 57.545074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040203, 0.167844, -0.984993,
		-0.006453, 0.985813, 0.167720,
		0.999171, -0.000387, 0.040716,
		43.358887, 40.230904, 57.557289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826157, 40.794476, 57.055080>,  <42.659466, 40.231174, 57.528790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826157, 40.794476, 57.055080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.148098, 40.559555, 57.089207>,  <43.341263, 40.418602, 57.109684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.148098, 40.559555, 57.089207>,  <42.826157, 40.794476, 57.055080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148098, 40.559555, 57.089207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181440, 0.106630, -0.977604,
		0.565055, 0.802310, 0.192383,
		0.804855, -0.587306, 0.085320,
		43.389553, 40.383362, 57.114803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291210, 41.155773, 56.653530>,  <42.826157, 40.794476, 57.055080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291210, 41.155773, 56.653530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.425865, 40.779182, 56.660469>,  <43.506657, 40.553230, 56.664635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.425865, 40.779182, 56.660469>,  <43.291210, 41.155773, 56.653530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425865, 40.779182, 56.660469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178350, 0.045657, -0.982907,
		0.924590, 0.333977, 0.183282,
		0.336636, -0.941475, 0.017350,
		43.526855, 40.496738, 56.665672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853817, 41.148872, 56.205112>,  <43.291210, 41.155773, 56.653530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853817, 41.148872, 56.205112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.746933, 40.764954, 56.239471>,  <43.682800, 40.534603, 56.260086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.746933, 40.764954, 56.239471>,  <43.853817, 41.148872, 56.205112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746933, 40.764954, 56.239471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283008, -0.163375, -0.945101,
		0.921143, -0.228231, 0.315287,
		-0.267212, -0.959801, 0.085901,
		43.666771, 40.477013, 56.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294304, 40.806774, 55.799423>,  <43.853817, 41.148872, 56.205112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294304, 40.806774, 55.799423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032127, 40.505951, 55.827152>,  <43.874821, 40.325455, 55.843792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032127, 40.505951, 55.827152>,  <44.294304, 40.806774, 55.799423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032127, 40.505951, 55.827152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136275, -0.208050, -0.968579,
		0.742853, -0.625396, 0.238851,
		-0.655438, -0.752061, 0.069325,
		43.835495, 40.280334, 55.847950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663860, 40.291351, 55.590530>,  <44.294304, 40.806774, 55.799423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663860, 40.291351, 55.590530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.274399, 40.217827, 55.536541>,  <44.040722, 40.173710, 55.504147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.274399, 40.217827, 55.536541>,  <44.663860, 40.291351, 55.590530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274399, 40.217827, 55.536541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167541, -0.175073, -0.970196,
		0.154706, -0.967245, 0.201257,
		-0.973651, -0.183814, -0.134969,
		43.982304, 40.162682, 55.496052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720463, 39.698967, 55.235218>,  <44.663860, 40.291351, 55.590530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720463, 39.698967, 55.235218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360783, 39.861122, 55.169361>,  <44.144974, 39.958416, 55.129845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.360783, 39.861122, 55.169361>,  <44.720463, 39.698967, 55.235218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360783, 39.861122, 55.169361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133948, -0.103181, -0.985602,
		-0.416538, -0.908304, 0.038480,
		-0.899197, 0.405386, -0.164644,
		44.091022, 39.982738, 55.119968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430126, 39.213902, 54.760082>,  <44.720463, 39.698967, 55.235218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430126, 39.213902, 54.760082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.229401, 39.556694, 54.713139>,  <44.108967, 39.762367, 54.684975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.229401, 39.556694, 54.713139>,  <44.430126, 39.213902, 54.760082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229401, 39.556694, 54.713139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200742, -0.016588, -0.979504,
		-0.841359, -0.515088, -0.163707,
		-0.501815, 0.856977, -0.117356,
		44.078857, 39.813786, 54.677933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883553, 39.048500, 54.249554>,  <44.430126, 39.213902, 54.760082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883553, 39.048500, 54.249554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.955563, 39.441826, 54.239056>,  <43.998768, 39.677822, 54.232758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.955563, 39.441826, 54.239056>,  <43.883553, 39.048500, 54.249554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955563, 39.441826, 54.239056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244588, -0.070589, -0.967054,
		-0.952768, 0.167679, -0.253214,
		0.180028, 0.983311, -0.026242,
		44.009571, 39.736820, 54.231182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.585114, 39.220085, 49.332882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913517, 39.351295, 49.519791>,  <42.110558, 39.430023, 49.631935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913517, 39.351295, 49.519791>,  <41.585114, 39.220085, 49.332882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913517, 39.351295, 49.519791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513502, -0.066556, -0.855503,
		-0.249530, 0.942320, -0.223086,
		0.821006, 0.328029, 0.467276,
		42.159821, 39.449703, 49.659973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870193, 39.542847, 48.809402>,  <41.585114, 39.220085, 49.332882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870193, 39.542847, 48.809402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156368, 39.496300, 49.084969>,  <42.328075, 39.468372, 49.250309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.156368, 39.496300, 49.084969>,  <41.870193, 39.542847, 48.809402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156368, 39.496300, 49.084969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696933, 0.049293, -0.715440,
		0.049293, 0.991982, 0.116365,
		0.715440, -0.116365, 0.688916,
		42.371002, 39.461391, 49.291645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328838, 40.087120, 48.624767>,  <41.870193, 39.542847, 48.809402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328838, 40.087120, 48.624767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553699, 39.827477, 48.829758>,  <42.688618, 39.671688, 48.952751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.553699, 39.827477, 48.829758>,  <42.328838, 40.087120, 48.624767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553699, 39.827477, 48.829758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656718, -0.026295, -0.753677,
		0.502697, 0.760237, 0.411503,
		0.562153, -0.649113, 0.512480,
		42.722347, 39.632744, 48.983501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063995, 40.349197, 48.643002>,  <42.328838, 40.087120, 48.624767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063995, 40.349197, 48.643002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078053, 39.953659, 48.700905>,  <43.086487, 39.716335, 48.735645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078053, 39.953659, 48.700905>,  <43.063995, 40.349197, 48.643002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078053, 39.953659, 48.700905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525639, -0.104906, -0.844214,
		0.849981, 0.105759, 0.516088,
		0.035142, -0.988843, 0.144759,
		43.088596, 39.657005, 48.744331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684189, 40.215454, 48.435799>,  <43.063995, 40.349197, 48.643002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684189, 40.215454, 48.435799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528488, 39.847420, 48.453381>,  <43.435070, 39.626598, 48.463928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528488, 39.847420, 48.453381>,  <43.684189, 40.215454, 48.435799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528488, 39.847420, 48.453381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506712, -0.253728, -0.823932,
		0.769239, -0.298443, 0.564981,
		-0.389248, -0.920084, 0.043953,
		43.411713, 39.571396, 48.466568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257687, 39.809772, 48.357632>,  <43.684189, 40.215454, 48.435799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257687, 39.809772, 48.357632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934303, 39.596443, 48.258060>,  <43.740273, 39.468445, 48.198318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934303, 39.596443, 48.258060>,  <44.257687, 39.809772, 48.357632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934303, 39.596443, 48.258060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510223, -0.424264, -0.748113,
		0.293375, -0.731825, 0.615113,
		-0.808458, -0.533322, -0.248925,
		43.691765, 39.436447, 48.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469387, 39.077671, 48.164398>,  <44.257687, 39.809772, 48.357632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469387, 39.077671, 48.164398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138199, 39.191177, 47.970928>,  <43.939487, 39.259281, 47.854847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138199, 39.191177, 47.970928>,  <44.469387, 39.077671, 48.164398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138199, 39.191177, 47.970928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451642, -0.173797, -0.875108,
		-0.332391, -0.943011, 0.015736,
		-0.827971, 0.283771, -0.483671,
		43.889809, 39.276310, 47.825829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605263, 38.877483, 47.507324>,  <44.469387, 39.077671, 48.164398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605263, 38.877483, 47.507324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271301, 39.070732, 47.401848>,  <44.070923, 39.186680, 47.338562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271301, 39.070732, 47.401848>,  <44.605263, 38.877483, 47.507324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271301, 39.070732, 47.401848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337152, 0.070220, -0.938828,
		-0.435048, -0.872735, -0.221511,
		-0.834902, 0.483118, -0.263695,
		44.020832, 39.215668, 47.322739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238041, 38.453480, 46.963768>,  <44.605263, 38.877483, 47.507324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238041, 38.453480, 46.963768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141308, 38.839958, 46.928040>,  <44.083267, 39.071846, 46.906601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141308, 38.839958, 46.928040>,  <44.238041, 38.453480, 46.963768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141308, 38.839958, 46.928040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248269, -0.027376, -0.968304,
		-0.938019, -0.256342, -0.233257,
		-0.241831, 0.966199, -0.089321,
		44.068760, 39.129818, 46.901245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802185, 38.472710, 46.376217>,  <44.238041, 38.453480, 46.963768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802185, 38.472710, 46.376217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949211, 38.842323, 46.418262>,  <44.037426, 39.064091, 46.443489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.949211, 38.842323, 46.418262>,  <43.802185, 38.472710, 46.376217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949211, 38.842323, 46.418262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103333, 0.071748, -0.992056,
		-0.924238, 0.375509, -0.069111,
		0.367567, 0.924037, 0.105115,
		44.059483, 39.119534, 46.449799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522686, 38.887329, 45.734608>,  <43.802185, 38.472710, 46.376217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522686, 38.887329, 45.734608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833290, 39.098083, 45.872841>,  <44.019653, 39.224537, 45.955780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833290, 39.098083, 45.872841>,  <43.522686, 38.887329, 45.734608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833290, 39.098083, 45.872841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240813, 0.258666, -0.935468,
		-0.582277, 0.809618, 0.073974,
		0.776507, 0.526888, 0.345582,
		44.066242, 39.256149, 45.976517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535183, 39.573204, 45.390987>,  <43.522686, 38.887329, 45.734608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535183, 39.573204, 45.390987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908535, 39.500290, 45.514648>,  <44.132545, 39.456543, 45.588844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908535, 39.500290, 45.514648>,  <43.535183, 39.573204, 45.390987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908535, 39.500290, 45.514648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353312, 0.315396, -0.880736,
		0.063039, 0.931288, 0.358788,
		0.933379, -0.182285, 0.309152,
		44.188549, 39.445606, 45.607395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017475, 40.162407, 45.139805>,  <43.535183, 39.573204, 45.390987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017475, 40.162407, 45.139805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202721, 39.814796, 45.209450>,  <44.313869, 39.606228, 45.251236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202721, 39.814796, 45.209450>,  <44.017475, 40.162407, 45.139805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202721, 39.814796, 45.209450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382569, 0.018804, -0.923736,
		0.799478, 0.494405, 0.341171,
		0.463115, -0.869028, 0.174111,
		44.341656, 39.554089, 45.261684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696636, 40.180737, 44.922421>,  <44.017475, 40.162407, 45.139805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696636, 40.180737, 44.922421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628914, 39.795822, 44.837246>,  <44.588280, 39.564873, 44.786140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628914, 39.795822, 44.837246>,  <44.696636, 40.180737, 44.922421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628914, 39.795822, 44.837246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488432, 0.105733, -0.866172,
		0.856020, -0.250650, 0.452111,
		-0.169303, -0.962286, -0.212935,
		44.578121, 39.507137, 44.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058987, 40.703621, 44.709652>,  <44.696636, 40.180737, 44.922421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058987, 40.703621, 44.709652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907669, 41.064835, 44.628239>,  <44.816879, 41.281563, 44.579391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.907669, 41.064835, 44.628239>,  <45.058987, 40.703621, 44.709652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907669, 41.064835, 44.628239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033524, 0.233094, 0.971876,
		0.925078, 0.360831, -0.118451,
		-0.378294, 0.903033, -0.203534,
		44.794182, 41.335743, 44.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579773, 41.198517, 44.948738>,  <45.058987, 40.703621, 44.709652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579773, 41.198517, 44.948738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216827, 41.364861, 44.924202>,  <44.999062, 41.464664, 44.909481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216827, 41.364861, 44.924202>,  <45.579773, 41.198517, 44.948738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216827, 41.364861, 44.924202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170528, 0.497524, 0.850523,
		0.384213, 0.761271, -0.522348,
		-0.907359, 0.415857, -0.061337,
		44.944618, 41.489616, 44.905800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717133, 41.731457, 45.328865>,  <45.579773, 41.198517, 44.948738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717133, 41.731457, 45.328865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320885, 41.761101, 45.282944>,  <45.083138, 41.778885, 45.255390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.320885, 41.761101, 45.282944>,  <45.717133, 41.731457, 45.328865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320885, 41.761101, 45.282944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056016, 0.546081, 0.835858,
		0.124633, 0.834448, -0.536808,
		-0.990620, 0.074105, -0.114802,
		45.023697, 41.783333, 45.248505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.514488, 42.510277, 45.533478>,  <45.717133, 41.731457, 45.328865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.514488, 42.510277, 45.533478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175652, 42.303520, 45.582878>,  <44.972347, 42.179466, 45.612518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.175652, 42.303520, 45.582878>,  <45.514488, 42.510277, 45.533478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175652, 42.303520, 45.582878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233805, 0.571159, 0.786837,
		-0.477250, 0.637650, -0.604678,
		-0.847094, -0.516895, 0.123500,
		44.921524, 42.148453, 45.619926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885471, 42.987385, 45.561298>,  <45.514488, 42.510277, 45.533478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885471, 42.987385, 45.561298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747704, 42.653259, 45.732704>,  <44.665043, 42.452785, 45.835548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747704, 42.653259, 45.732704>,  <44.885471, 42.987385, 45.561298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747704, 42.653259, 45.732704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472169, 0.548642, 0.689963,
		-0.811437, 0.035307, -0.583373,
		-0.344423, -0.835312, 0.428517,
		44.644375, 42.402664, 45.861259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237331, 43.184662, 45.700039>,  <44.885471, 42.987385, 45.561298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237331, 43.184662, 45.700039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317535, 42.863678, 45.924843>,  <44.365658, 42.671089, 46.059727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.317535, 42.863678, 45.924843>,  <44.237331, 43.184662, 45.700039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317535, 42.863678, 45.924843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406300, 0.453890, 0.793034,
		-0.891468, -0.387360, -0.235027,
		0.200513, -0.802456, 0.562013,
		44.377689, 42.622940, 46.093449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662811, 43.161789, 46.056747>,  <44.237331, 43.184662, 45.700039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662811, 43.161789, 46.056747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912079, 42.932137, 46.269173>,  <44.061638, 42.794346, 46.396629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.912079, 42.932137, 46.269173>,  <43.662811, 43.161789, 46.056747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912079, 42.932137, 46.269173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505129, 0.222941, 0.833752,
		-0.597082, -0.787825, -0.151082,
		0.623168, -0.574134, 0.531067,
		44.099030, 42.759895, 46.428493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206944, 42.696766, 46.559559>,  <43.662811, 43.161789, 46.056747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206944, 42.696766, 46.559559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575333, 42.735397, 46.710548>,  <43.796364, 42.758575, 46.801144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.575333, 42.735397, 46.710548>,  <43.206944, 42.696766, 46.559559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575333, 42.735397, 46.710548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380055, 0.436172, 0.815667,
		-0.085868, -0.894666, 0.438406,
		0.920969, 0.096578, 0.377475,
		43.851624, 42.764370, 46.823792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095146, 42.559238, 47.278851>,  <43.206944, 42.696766, 46.559559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095146, 42.559238, 47.278851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442230, 42.758041, 47.281868>,  <43.650482, 42.877323, 47.283676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442230, 42.758041, 47.281868>,  <43.095146, 42.559238, 47.278851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442230, 42.758041, 47.281868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242189, 0.409484, 0.879584,
		0.434079, -0.765049, 0.475685,
		0.867710, 0.497015, 0.007538,
		43.702545, 42.907143, 47.284130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475906, 42.350201, 47.917736>,  <43.095146, 42.559238, 47.278851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475906, 42.350201, 47.917736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628967, 42.695381, 47.785740>,  <43.720806, 42.902489, 47.706543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.628967, 42.695381, 47.785740>,  <43.475906, 42.350201, 47.917736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628967, 42.695381, 47.785740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005942, 0.359464, 0.933140,
		0.923872, -0.355110, 0.142678,
		0.382654, 0.862950, -0.329989,
		43.743763, 42.954266, 47.686745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095608, 42.512859, 48.343060>,  <43.475906, 42.350201, 47.917736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095608, 42.512859, 48.343060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990631, 42.871330, 48.199959>,  <43.927647, 43.086414, 48.114098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.990631, 42.871330, 48.199959>,  <44.095608, 42.512859, 48.343060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990631, 42.871330, 48.199959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076007, 0.388798, 0.918182,
		0.961950, 0.213777, -0.170152,
		-0.262441, 0.896178, -0.357756,
		43.911900, 43.140182, 48.092632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585876, 42.965561, 48.762695>,  <44.095608, 42.512859, 48.343060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585876, 42.965561, 48.762695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269745, 43.175514, 48.636288>,  <44.080067, 43.301487, 48.560444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269745, 43.175514, 48.636288>,  <44.585876, 42.965561, 48.762695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269745, 43.175514, 48.636288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109178, 0.386891, 0.915639,
		0.602871, 0.758163, -0.248467,
		-0.790334, 0.524885, -0.316020,
		44.032646, 43.332981, 48.541481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685799, 43.546841, 49.118961>,  <44.585876, 42.965561, 48.762695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685799, 43.546841, 49.118961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304344, 43.541946, 48.998676>,  <44.075470, 43.539009, 48.926506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.304344, 43.541946, 48.998676>,  <44.685799, 43.546841, 49.118961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304344, 43.541946, 48.998676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272555, 0.458845, 0.845680,
		0.127634, 0.888432, -0.440906,
		-0.953637, -0.012233, -0.300711,
		44.018253, 43.538277, 48.908463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422348, 44.180248, 49.287373>,  <44.685799, 43.546841, 49.118961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422348, 44.180248, 49.287373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.111183, 43.930496, 49.259090>,  <43.924484, 43.780643, 49.242123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.111183, 43.930496, 49.259090>,  <44.422348, 44.180248, 49.287373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111183, 43.930496, 49.259090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315593, 0.290924, 0.903197,
		-0.543370, 0.724922, -0.423364,
		-0.777914, -0.624381, -0.070701,
		43.877808, 43.743183, 49.237881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483120, 44.843498, 48.954571>,  <44.422348, 44.180248, 49.287373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483120, 44.843498, 48.954571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506798, 45.240150, 49.000454>,  <44.521004, 45.478142, 49.027985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.506798, 45.240150, 49.000454>,  <44.483120, 44.843498, 48.954571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506798, 45.240150, 49.000454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412824, 0.080305, -0.907263,
		-0.908885, 0.101064, -0.404617,
		0.059199, 0.991634, 0.114709,
		44.524559, 45.537640, 49.034866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047234, 45.208961, 48.389732>,  <44.483120, 44.843498, 48.954571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047234, 45.208961, 48.389732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354263, 45.417999, 48.538174>,  <44.538483, 45.543423, 48.627239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354263, 45.417999, 48.538174>,  <44.047234, 45.208961, 48.389732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354263, 45.417999, 48.538174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365993, 0.117951, -0.923113,
		-0.526188, 0.844381, -0.100731,
		0.767578, 0.522597, 0.371102,
		44.584538, 45.574780, 48.649506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052288, 45.731213, 47.897694>,  <44.047234, 45.208961, 48.389732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052288, 45.731213, 47.897694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.403408, 45.682945, 48.083126>,  <44.614079, 45.653984, 48.194386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.403408, 45.682945, 48.083126>,  <44.052288, 45.731213, 47.897694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403408, 45.682945, 48.083126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455171, -0.091481, -0.885692,
		0.149281, 0.988469, -0.025378,
		0.877801, -0.120666, 0.463579,
		44.666748, 45.646744, 48.222198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511021, 46.008308, 47.346004>,  <44.052288, 45.731213, 47.897694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511021, 46.008308, 47.346004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739914, 45.810623, 47.607780>,  <44.877251, 45.692013, 47.764847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739914, 45.810623, 47.607780>,  <44.511021, 46.008308, 47.346004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739914, 45.810623, 47.607780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699361, -0.122687, -0.704160,
		0.428299, 0.860638, 0.275430,
		0.572235, -0.494216, 0.654444,
		44.911583, 45.662357, 47.804115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169514, 46.111038, 47.179134>,  <44.511021, 46.008308, 47.346004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169514, 46.111038, 47.179134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258965, 45.803322, 47.418530>,  <45.312634, 45.618694, 47.562168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.258965, 45.803322, 47.418530>,  <45.169514, 46.111038, 47.179134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258965, 45.803322, 47.418530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743074, -0.262803, -0.615447,
		0.630740, 0.582351, 0.512868,
		0.223623, -0.769286, 0.598491,
		45.326050, 45.572536, 47.598076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901825, 46.189331, 47.346401>,  <45.169514, 46.111038, 47.179134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901825, 46.189331, 47.346401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796989, 45.805412, 47.386593>,  <45.734089, 45.575062, 47.410709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796989, 45.805412, 47.386593>,  <45.901825, 46.189331, 47.346401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796989, 45.805412, 47.386593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715474, -0.263125, -0.647196,
		0.647617, -0.097728, 0.755673,
		-0.262086, -0.959799, 0.100482,
		45.718365, 45.517471, 47.416737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477615, 45.863201, 47.332420>,  <45.901825, 46.189331, 47.346401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477615, 45.863201, 47.332420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.224113, 45.563606, 47.255093>,  <46.072010, 45.383850, 47.208698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.224113, 45.563606, 47.255093>,  <46.477615, 45.863201, 47.332420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224113, 45.563606, 47.255093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713333, -0.469232, -0.520555,
		0.299178, -0.467804, 0.831656,
		-0.633758, -0.748986, -0.193316,
		46.033985, 45.338909, 47.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.901779, 45.318184, 47.485901>,  <46.477615, 45.863201, 47.332420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.901779, 45.318184, 47.485901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596909, 45.174232, 47.270653>,  <46.413986, 45.087864, 47.141502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.596909, 45.174232, 47.270653>,  <46.901779, 45.318184, 47.485901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596909, 45.174232, 47.270653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639707, -0.546198, -0.540780,
		-0.099308, -0.756410, 0.646515,
		-0.762176, -0.359876, -0.538123,
		46.368256, 45.066269, 47.109215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.107746, 44.620693, 47.295078>,  <46.901779, 45.318184, 47.485901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.107746, 44.620693, 47.295078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.830719, 44.725090, 47.026085>,  <46.664501, 44.787727, 46.864689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.830719, 44.725090, 47.026085>,  <47.107746, 44.620693, 47.295078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830719, 44.725090, 47.026085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521053, -0.463698, -0.716581,
		-0.498852, -0.846679, 0.185150,
		-0.692568, 0.260995, -0.672481,
		46.622948, 44.803387, 46.824341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789043, 43.927132, 47.005024>,  <47.107746, 44.620693, 47.295078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789043, 43.927132, 47.005024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.776611, 44.238808, 46.754616>,  <46.769150, 44.425812, 46.604370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.776611, 44.238808, 46.754616>,  <46.789043, 43.927132, 47.005024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776611, 44.238808, 46.754616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641294, -0.464865, -0.610444,
		-0.766665, -0.420436, -0.485240,
		-0.031082, 0.779188, -0.626020,
		46.767288, 44.472565, 46.566811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540176, 43.701221, 46.352203>,  <46.789043, 43.927132, 47.005024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540176, 43.701221, 46.352203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.712479, 44.049507, 46.257290>,  <46.815861, 44.258480, 46.200344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.712479, 44.049507, 46.257290>,  <46.540176, 43.701221, 46.352203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712479, 44.049507, 46.257290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453957, -0.436295, -0.776898,
		-0.779981, 0.226940, -0.583205,
		0.430758, 0.870715, -0.237281,
		46.841705, 44.310722, 46.186104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444805, 43.883602, 45.539082>,  <46.540176, 43.701221, 46.352203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444805, 43.883602, 45.539082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740479, 44.103470, 45.694759>,  <46.917885, 44.235390, 45.788166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.740479, 44.103470, 45.694759>,  <46.444805, 43.883602, 45.539082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740479, 44.103470, 45.694759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576176, -0.216875, -0.788027,
		-0.348745, 0.806743, -0.477015,
		0.739187, 0.549665, 0.389192,
		46.962234, 44.268368, 45.811516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.049931, 46.106102, 52.233833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416271, 46.231010, 52.334793>,  <42.636074, 46.305954, 52.395367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416271, 46.231010, 52.334793>,  <42.049931, 46.106102, 52.233833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416271, 46.231010, 52.334793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228575, 0.111321, -0.967141,
		-0.330103, 0.943450, 0.030577,
		0.915852, 0.312266, 0.252397,
		42.691029, 46.324692, 52.410511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312725, 46.648655, 51.738373>,  <42.049931, 46.106102, 52.233833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312725, 46.648655, 51.738373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657444, 46.504089, 51.880745>,  <42.864277, 46.417351, 51.966167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657444, 46.504089, 51.880745>,  <42.312725, 46.648655, 51.738373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657444, 46.504089, 51.880745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320619, -0.155626, -0.934336,
		0.393071, 0.919327, -0.018243,
		0.861800, -0.361412, 0.355926,
		42.915985, 46.395664, 51.987522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835693, 46.948345, 51.384907>,  <42.312725, 46.648655, 51.738373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835693, 46.948345, 51.384907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059952, 46.659813, 51.547569>,  <43.194508, 46.486694, 51.645164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059952, 46.659813, 51.547569>,  <42.835693, 46.948345, 51.384907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059952, 46.659813, 51.547569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535237, -0.059036, -0.842637,
		0.631824, 0.690074, 0.352982,
		0.560643, -0.721327, 0.406653,
		43.228146, 46.443417, 51.669567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559837, 47.176029, 51.357388>,  <42.835693, 46.948345, 51.384907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559837, 47.176029, 51.357388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563068, 46.776718, 51.380653>,  <43.565006, 46.537132, 51.394611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563068, 46.776718, 51.380653>,  <43.559837, 47.176029, 51.357388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563068, 46.776718, 51.380653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655786, -0.038624, -0.753959,
		0.754904, 0.044229, 0.654342,
		0.008074, -0.998275, 0.058162,
		43.565491, 46.477234, 51.398102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313549, 46.921532, 51.091301>,  <43.559837, 47.176029, 51.357388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313549, 46.921532, 51.091301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092506, 46.589539, 51.060936>,  <43.959881, 46.390343, 51.042717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092506, 46.589539, 51.060936>,  <44.313549, 46.921532, 51.091301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092506, 46.589539, 51.060936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529463, -0.279251, -0.801054,
		0.643658, -0.482861, 0.593758,
		-0.552606, -0.829978, -0.075915,
		43.926723, 46.340546, 51.038162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779774, 46.387714, 50.970787>,  <44.313549, 46.921532, 51.091301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779774, 46.387714, 50.970787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433548, 46.247856, 50.827374>,  <44.225811, 46.163940, 50.741325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433548, 46.247856, 50.827374>,  <44.779774, 46.387714, 50.970787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433548, 46.247856, 50.827374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453983, -0.245588, -0.856497,
		0.211416, -0.904122, 0.371304,
		-0.865565, -0.349643, -0.358534,
		44.173878, 46.142963, 50.719814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882053, 45.646938, 50.723114>,  <44.779774, 46.387714, 50.970787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882053, 45.646938, 50.723114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558502, 45.779274, 50.528683>,  <44.364372, 45.858673, 50.412025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558502, 45.779274, 50.528683>,  <44.882053, 45.646938, 50.723114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558502, 45.779274, 50.528683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380552, -0.335623, -0.861706,
		-0.448223, -0.881989, 0.145575,
		-0.808873, 0.330837, -0.486077,
		44.315842, 45.878525, 50.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881226, 45.314243, 50.111038>,  <44.882053, 45.646938, 50.723114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881226, 45.314243, 50.111038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607758, 45.579659, 49.989502>,  <44.443676, 45.738907, 49.916580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607758, 45.579659, 49.989502>,  <44.881226, 45.314243, 50.111038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.607758, 45.579659, 49.989502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283999, -0.141619, -0.948308,
		-0.672265, -0.734619, -0.091623,
		-0.683669, 0.663536, -0.303836,
		44.402657, 45.778721, 49.898350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439888, 44.928246, 49.739742>,  <44.881226, 45.314243, 50.111038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439888, 44.928246, 49.739742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428532, 45.311195, 49.624760>,  <44.421719, 45.540966, 49.555771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428532, 45.311195, 49.624760>,  <44.439888, 44.928246, 49.739742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428532, 45.311195, 49.624760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303668, -0.265721, -0.914975,
		-0.952355, -0.113264, -0.283181,
		-0.028386, 0.957373, -0.287455,
		44.420017, 45.598408, 49.538525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816174, 44.599236, 49.645271>,  <44.439888, 44.928246, 49.739742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816174, 44.599236, 49.645271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683159, 44.222122, 49.635605>,  <43.603352, 43.995853, 49.629803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683159, 44.222122, 49.635605>,  <43.816174, 44.599236, 49.645271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683159, 44.222122, 49.635605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565407, 0.178788, 0.805202,
		-0.754807, 0.281424, -0.592509,
		-0.332537, -0.942781, -0.024169,
		43.583397, 43.939289, 49.628353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119301, 44.647598, 49.912872>,  <43.816174, 44.599236, 49.645271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119301, 44.647598, 49.912872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177872, 44.253441, 49.947647>,  <43.213013, 44.016945, 49.968513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177872, 44.253441, 49.947647>,  <43.119301, 44.647598, 49.912872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177872, 44.253441, 49.947647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545464, -0.007107, 0.838104,
		-0.825245, -0.170140, -0.538537,
		0.146423, -0.985394, 0.086940,
		43.221798, 43.957821, 49.973728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504562, 44.398178, 50.148117>,  <43.119301, 44.647598, 49.912872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504562, 44.398178, 50.148117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768715, 44.115219, 50.248901>,  <42.927208, 43.945446, 50.309372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768715, 44.115219, 50.248901>,  <42.504562, 44.398178, 50.148117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768715, 44.115219, 50.248901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462886, -0.119271, 0.878357,
		-0.591295, -0.696682, -0.406208,
		0.660384, -0.707396, 0.251960,
		42.966831, 43.903000, 50.324490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020538, 43.823429, 50.335873>,  <42.504562, 44.398178, 50.148117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020538, 43.823429, 50.335873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370865, 43.771088, 50.521698>,  <42.581062, 43.739685, 50.633194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370865, 43.771088, 50.521698>,  <42.020538, 43.823429, 50.335873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370865, 43.771088, 50.521698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482553, -0.256037, 0.837608,
		0.009345, -0.957770, -0.287384,
		0.875817, -0.130851, 0.464567,
		42.633610, 43.731831, 50.661068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900211, 43.322639, 50.742702>,  <42.020538, 43.823429, 50.335873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900211, 43.322639, 50.742702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222519, 43.469986, 50.928192>,  <42.415905, 43.558392, 51.039486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222519, 43.469986, 50.928192>,  <41.900211, 43.322639, 50.742702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222519, 43.469986, 50.928192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481480, -0.048450, 0.875117,
		0.344829, -0.928418, 0.138320,
		0.805773, 0.368364, 0.463722,
		42.464252, 43.580494, 51.067310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983791, 43.032898, 51.389046>,  <41.900211, 43.322639, 50.742702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983791, 43.032898, 51.389046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235855, 43.341400, 51.424980>,  <42.387093, 43.526501, 51.446541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235855, 43.341400, 51.424980>,  <41.983791, 43.032898, 51.389046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235855, 43.341400, 51.424980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170911, 0.024914, 0.984972,
		0.757426, -0.636039, 0.147515,
		0.630155, 0.771255, 0.089835,
		42.424900, 43.572777, 51.451931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542965, 42.826527, 51.873695>,  <41.983791, 43.032898, 51.389046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542965, 42.826527, 51.873695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565704, 43.225113, 51.898411>,  <42.579346, 43.464264, 51.913242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565704, 43.225113, 51.898411>,  <42.542965, 42.826527, 51.873695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565704, 43.225113, 51.898411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107988, -0.055390, 0.992608,
		0.992526, -0.063099, 0.104458,
		0.056846, 0.996469, 0.061790,
		42.582760, 43.524055, 51.916946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075840, 43.038815, 52.391457>,  <42.542965, 42.826527, 51.873695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075840, 43.038815, 52.391457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784073, 43.309906, 52.354294>,  <42.609013, 43.472561, 52.331997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784073, 43.309906, 52.354294>,  <43.075840, 43.038815, 52.391457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784073, 43.309906, 52.354294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189863, -0.070091, 0.979305,
		0.657190, 0.731965, 0.179801,
		-0.729420, 0.677727, -0.092910,
		42.565247, 43.513226, 52.326420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049965, 43.455437, 52.995544>,  <43.075840, 43.038815, 52.391457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049965, 43.455437, 52.995544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698574, 43.584450, 52.854553>,  <42.487740, 43.661858, 52.769958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698574, 43.584450, 52.854553>,  <43.049965, 43.455437, 52.995544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698574, 43.584450, 52.854553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346023, 0.079217, 0.934876,
		0.329454, 0.943236, 0.042015,
		-0.878480, 0.322537, -0.352480,
		42.435028, 43.681210, 52.748810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907764, 43.982506, 53.479160>,  <43.049965, 43.455437, 52.995544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907764, 43.982506, 53.479160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563705, 43.871651, 53.307888>,  <42.357269, 43.805138, 53.205124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563705, 43.871651, 53.307888>,  <42.907764, 43.982506, 53.479160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563705, 43.871651, 53.307888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389781, -0.184269, 0.902284,
		-0.328957, 0.942995, 0.050476,
		-0.860150, -0.277138, -0.428178,
		42.305660, 43.788509, 53.179436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324646, 44.248714, 53.769905>,  <42.907764, 43.982506, 53.479160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324646, 44.248714, 53.769905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154961, 43.927681, 53.602142>,  <42.053150, 43.735062, 53.501484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154961, 43.927681, 53.602142>,  <42.324646, 44.248714, 53.769905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154961, 43.927681, 53.602142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473558, -0.198155, 0.858182,
		-0.771871, 0.562665, -0.296011,
		-0.424214, -0.802585, -0.419405,
		42.027695, 43.686905, 53.476322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620087, 44.238640, 54.078854>,  <42.324646, 44.248714, 53.769905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620087, 44.238640, 54.078854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719864, 43.877167, 53.939632>,  <41.779732, 43.660282, 53.856098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719864, 43.877167, 53.939632>,  <41.620087, 44.238640, 54.078854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719864, 43.877167, 53.939632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371286, -0.421197, 0.827490,
		-0.894385, -0.077184, -0.440589,
		0.249444, -0.903679, -0.348055,
		41.794697, 43.606064, 53.835217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083359, 43.826138, 54.292721>,  <41.620087, 44.238640, 54.078854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083359, 43.826138, 54.292721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387581, 43.578812, 54.213470>,  <41.570114, 43.430416, 54.165920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387581, 43.578812, 54.213470>,  <41.083359, 43.826138, 54.292721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387581, 43.578812, 54.213470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, -0.494699, 0.850064,
		-0.623618, -0.610708, -0.487993,
		0.760550, -0.618312, -0.198128,
		41.615746, 43.393318, 54.154034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779209, 43.139473, 54.438526>,  <41.083359, 43.826138, 54.292721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779209, 43.139473, 54.438526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178333, 43.119598, 54.455994>,  <41.417809, 43.107674, 54.466473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178333, 43.119598, 54.455994>,  <40.779209, 43.139473, 54.438526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178333, 43.119598, 54.455994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064832, -0.603413, 0.794789,
		-0.013140, -0.795879, -0.605313,
		0.997810, -0.049687, 0.043669,
		41.477676, 43.104691, 54.469093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.451744, 40.930050, 56.695915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.189598, 41.225945, 56.634865>,  <46.032310, 41.403481, 56.598236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.189598, 41.225945, 56.634865>,  <46.451744, 40.930050, 56.695915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189598, 41.225945, 56.634865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033357, -0.173523, -0.984265,
		-0.754579, -0.650139, 0.089045,
		-0.655361, 0.739735, -0.152623,
		45.992989, 41.447865, 56.589077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124985, 40.631226, 56.297646>,  <46.451744, 40.930050, 56.695915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124985, 40.631226, 56.297646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.048737, 41.014534, 56.212437>,  <46.002987, 41.244518, 56.161312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.048737, 41.014534, 56.212437>,  <46.124985, 40.631226, 56.297646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048737, 41.014534, 56.212437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014899, -0.214150, -0.976687,
		-0.981550, -0.189355, 0.026544,
		-0.190625, 0.958272, -0.213020,
		45.991550, 41.302017, 56.148529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495647, 40.707752, 55.888512>,  <46.124985, 40.631226, 56.297646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495647, 40.707752, 55.888512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.723572, 41.026283, 55.807350>,  <45.860329, 41.217403, 55.758652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.723572, 41.026283, 55.807350>,  <45.495647, 40.707752, 55.888512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723572, 41.026283, 55.807350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076322, -0.194565, -0.977916,
		-0.818223, 0.572715, -0.050088,
		0.569813, 0.796330, -0.202908,
		45.894516, 41.265182, 55.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200714, 40.822006, 55.306423>,  <45.495647, 40.707752, 55.888512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200714, 40.822006, 55.306423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.514961, 41.068970, 55.322502>,  <45.703510, 41.217148, 55.332150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.514961, 41.068970, 55.322502>,  <45.200714, 40.822006, 55.306423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514961, 41.068970, 55.322502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019876, 0.039758, -0.999011,
		-0.618394, 0.785639, 0.018962,
		0.785616, 0.617406, 0.040201,
		45.750645, 41.254192, 55.334564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034721, 41.311447, 54.854210>,  <45.200714, 40.822006, 55.306423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034721, 41.311447, 54.854210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.433243, 41.303795, 54.887718>,  <45.672356, 41.299202, 54.907822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.433243, 41.303795, 54.887718>,  <45.034721, 41.311447, 54.854210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433243, 41.303795, 54.887718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084431, 0.036994, -0.995742,
		0.015953, 0.999132, 0.038472,
		0.996302, -0.019134, 0.083768,
		45.732132, 41.298054, 54.912849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164474, 41.792316, 54.373184>,  <45.034721, 41.311447, 54.854210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164474, 41.792316, 54.373184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.521309, 41.629082, 54.450798>,  <45.735409, 41.531139, 54.497368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.521309, 41.629082, 54.450798>,  <45.164474, 41.792316, 54.373184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521309, 41.629082, 54.450798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251424, 0.091468, -0.963545,
		0.375461, 0.908350, 0.184200,
		0.892084, -0.408086, 0.194038,
		45.788933, 41.506657, 54.509010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765533, 42.209343, 54.056309>,  <45.164474, 41.792316, 54.373184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765533, 42.209343, 54.056309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.888649, 41.833244, 54.114563>,  <45.962517, 41.607586, 54.149517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.888649, 41.833244, 54.114563>,  <45.765533, 42.209343, 54.056309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888649, 41.833244, 54.114563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351318, -0.029943, -0.935777,
		0.884219, 0.339184, 0.321108,
		0.307786, -0.940243, 0.145638,
		45.980984, 41.551170, 54.158253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495335, 42.124931, 53.703140>,  <45.765533, 42.209343, 54.056309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495335, 42.124931, 53.703140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.328735, 41.764030, 53.747799>,  <46.228775, 41.547489, 53.774593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.328735, 41.764030, 53.747799>,  <46.495335, 42.124931, 53.703140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328735, 41.764030, 53.747799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314725, -0.258308, -0.913359,
		0.852923, -0.345272, 0.391547,
		-0.416497, -0.902255, 0.111651,
		46.203785, 41.493355, 53.781296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037800, 41.709774, 53.563904>,  <46.495335, 42.124931, 53.703140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037800, 41.709774, 53.563904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.704475, 41.496391, 53.505917>,  <46.504482, 41.368362, 53.471127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.704475, 41.496391, 53.505917>,  <47.037800, 41.709774, 53.563904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704475, 41.496391, 53.505917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379135, -0.360673, -0.852157,
		0.402306, -0.765073, 0.502806,
		-0.833310, -0.533459, -0.144965,
		46.454483, 41.336353, 53.462425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221981, 40.996796, 53.365288>,  <47.037800, 41.709774, 53.563904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221981, 40.996796, 53.365288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.850487, 41.071510, 53.237190>,  <46.627590, 41.116337, 53.160332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.850487, 41.071510, 53.237190>,  <47.221981, 40.996796, 53.365288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850487, 41.071510, 53.237190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277539, -0.222420, -0.934613,
		-0.245804, -0.956890, 0.154728,
		-0.928737, 0.186789, -0.320246,
		46.571865, 41.127544, 53.141117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139088, 40.491451, 52.788368>,  <47.221981, 40.996796, 53.365288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139088, 40.491451, 52.788368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.839348, 40.749550, 52.728863>,  <46.659504, 40.904408, 52.693157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.839348, 40.749550, 52.728863>,  <47.139088, 40.491451, 52.788368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839348, 40.749550, 52.728863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178077, -0.020021, -0.983813,
		-0.637782, -0.763711, -0.099901,
		-0.749349, 0.645248, -0.148768,
		46.614544, 40.943123, 52.684231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752708, 40.128139, 52.339436>,  <47.139088, 40.491451, 52.788368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752708, 40.128139, 52.339436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.692551, 40.522545, 52.310684>,  <46.656456, 40.759186, 52.293434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.692551, 40.522545, 52.310684>,  <46.752708, 40.128139, 52.339436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.692551, 40.522545, 52.310684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189772, -0.042565, -0.980905,
		-0.970241, -0.161166, -0.180715,
		-0.150396, 0.986009, -0.071883,
		46.647430, 40.818348, 52.289120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377758, 40.209560, 51.738441>,  <46.752708, 40.128139, 52.339436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377758, 40.209560, 51.738441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.546768, 40.569305, 51.783379>,  <46.648174, 40.785152, 51.810341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.546768, 40.569305, 51.783379>,  <46.377758, 40.209560, 51.738441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546768, 40.569305, 51.783379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303324, -0.023509, -0.952597,
		-0.854087, 0.436576, -0.282731,
		0.422528, 0.899360, 0.112345,
		46.673527, 40.839115, 51.817081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340603, 40.497574, 51.010212>,  <46.377758, 40.209560, 51.738441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340603, 40.497574, 51.010212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.587303, 40.751320, 51.196632>,  <46.735325, 40.903568, 51.308483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.587303, 40.751320, 51.196632>,  <46.340603, 40.497574, 51.010212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587303, 40.751320, 51.196632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510176, 0.128740, -0.850380,
		-0.599449, 0.762240, -0.244236,
		0.616751, 0.634363, 0.466049,
		46.772327, 40.941628, 51.336449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689682, 40.666725, 50.606285>,  <46.340603, 40.497574, 51.010212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689682, 40.666725, 50.606285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.580406, 40.289909, 50.528381>,  <45.514839, 40.063820, 50.481640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.580406, 40.289909, 50.528381>,  <45.689682, 40.666725, 50.606285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580406, 40.289909, 50.528381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556568, -0.010342, 0.830738,
		-0.784600, 0.335349, -0.521482,
		-0.273194, -0.942037, -0.194759,
		45.498447, 40.007298, 50.469955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956268, 40.596600, 50.714592>,  <45.689682, 40.666725, 50.606285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956268, 40.596600, 50.714592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.087593, 40.221687, 50.761421>,  <45.166389, 39.996738, 50.789516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.087593, 40.221687, 50.761421>,  <44.956268, 40.596600, 50.714592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087593, 40.221687, 50.761421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552599, -0.090076, 0.828566,
		-0.766057, -0.336724, -0.547516,
		0.328316, -0.937285, 0.117070,
		45.186089, 39.940502, 50.796543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444092, 40.334568, 50.995659>,  <44.956268, 40.596600, 50.714592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444092, 40.334568, 50.995659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.722061, 40.056107, 51.067719>,  <44.888844, 39.889030, 51.110954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.722061, 40.056107, 51.067719>,  <44.444092, 40.334568, 50.995659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722061, 40.056107, 51.067719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410320, -0.178146, 0.894372,
		-0.590530, -0.695435, -0.409444,
		0.694919, -0.696157, 0.180150,
		44.930538, 39.847260, 51.121765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096066, 39.631420, 51.192276>,  <44.444092, 40.334568, 50.995659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096066, 39.631420, 51.192276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.459885, 39.695900, 51.345501>,  <44.678177, 39.734589, 51.437435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.459885, 39.695900, 51.345501>,  <44.096066, 39.631420, 51.192276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459885, 39.695900, 51.345501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337486, -0.251424, 0.907133,
		0.242540, -0.954359, -0.174279,
		0.909548, 0.161199, 0.383063,
		44.732750, 39.744259, 51.460419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993530, 39.272327, 51.686138>,  <44.096066, 39.631420, 51.192276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993530, 39.272327, 51.686138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.322540, 39.478241, 51.782841>,  <44.519947, 39.601788, 51.840862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.322540, 39.478241, 51.782841>,  <43.993530, 39.272327, 51.686138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322540, 39.478241, 51.782841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177519, -0.171466, 0.969065,
		0.540313, -0.839998, -0.049652,
		0.822526, 0.514784, 0.241761,
		44.569298, 39.632675, 51.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342522, 38.889935, 52.307327>,  <43.993530, 39.272327, 51.686138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342522, 38.889935, 52.307327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.503860, 39.255936, 52.310745>,  <44.600662, 39.475536, 52.312798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.503860, 39.255936, 52.310745>,  <44.342522, 38.889935, 52.307327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503860, 39.255936, 52.310745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242566, 0.097911, 0.965181,
		0.882310, -0.391378, 0.261442,
		0.403349, 0.915007, 0.008547,
		44.624866, 39.530437, 52.313309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734722, 38.961937, 52.950439>,  <44.342522, 38.889935, 52.307327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734722, 38.961937, 52.950439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.634247, 39.325233, 52.816578>,  <44.573959, 39.543213, 52.736259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.634247, 39.325233, 52.816578>,  <44.734722, 38.961937, 52.950439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634247, 39.325233, 52.816578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275364, 0.264401, 0.924266,
		0.927942, 0.324320, 0.183683,
		-0.251192, 0.908245, -0.334655,
		44.558887, 39.597706, 52.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130760, 39.404766, 53.475071>,  <44.734722, 38.961937, 52.950439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130760, 39.404766, 53.475071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.833153, 39.620811, 53.317734>,  <44.654587, 39.750439, 53.223331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.833153, 39.620811, 53.317734>,  <45.130760, 39.404766, 53.475071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833153, 39.620811, 53.317734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282178, 0.279621, 0.917708,
		0.605649, 0.793784, -0.055637,
		-0.744019, 0.540109, -0.393341,
		44.609947, 39.782845, 53.199730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154812, 40.039509, 53.888565>,  <45.130760, 39.404766, 53.475071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154812, 40.039509, 53.888565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.793442, 40.026520, 53.717556>,  <44.576622, 40.018726, 53.614952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.793442, 40.026520, 53.717556>,  <45.154812, 40.039509, 53.888565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793442, 40.026520, 53.717556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403995, 0.398406, 0.823444,
		0.143587, 0.916634, -0.373048,
		-0.903422, -0.032473, -0.427522,
		44.522415, 40.016777, 53.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786633, 40.761360, 53.905102>,  <45.154812, 40.039509, 53.888565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786633, 40.761360, 53.905102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.525299, 40.458946, 53.889275>,  <44.368500, 40.277496, 53.879780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.525299, 40.458946, 53.889275>,  <44.786633, 40.761360, 53.905102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525299, 40.458946, 53.889275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454338, 0.349741, 0.819303,
		-0.605588, 0.553250, -0.571994,
		-0.653330, -0.756039, -0.039564,
		44.329300, 40.232136, 53.877407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.164204, 41.011189, 54.160744>,  <44.786633, 40.761360, 53.905102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.164204, 41.011189, 54.160744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.093552, 40.618423, 54.188004>,  <44.051159, 40.382763, 54.204361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.093552, 40.618423, 54.188004>,  <44.164204, 41.011189, 54.160744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093552, 40.618423, 54.188004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375131, 0.131173, 0.917644,
		-0.909988, 0.136517, -0.391516,
		-0.176631, -0.981915, 0.068153,
		44.040562, 40.323849, 54.208450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369495, 40.864075, 54.438976>,  <44.164204, 41.011189, 54.160744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369495, 40.864075, 54.438976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.589294, 40.537987, 54.512146>,  <43.721176, 40.342335, 54.556046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.589294, 40.537987, 54.512146>,  <43.369495, 40.864075, 54.438976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589294, 40.537987, 54.512146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489439, -0.136653, 0.861264,
		-0.677126, -0.562793, -0.474093,
		0.549500, -0.815224, 0.182922,
		43.754143, 40.293419, 54.567024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870262, 40.314758, 54.773685>,  <43.369495, 40.864075, 54.438976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870262, 40.314758, 54.773685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244087, 40.226517, 54.885353>,  <43.468380, 40.173573, 54.952354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244087, 40.226517, 54.885353>,  <42.870262, 40.314758, 54.773685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244087, 40.226517, 54.885353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289642, -0.015986, 0.957001,
		-0.206660, -0.975232, -0.078837,
		0.934558, -0.220608, 0.279165,
		43.524456, 40.160336, 54.969101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773647, 39.792416, 55.321281>,  <42.870262, 40.314758, 54.773685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773647, 39.792416, 55.321281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.145927, 39.927834, 55.376694>,  <43.369293, 40.009083, 55.409943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.145927, 39.927834, 55.376694>,  <42.773647, 39.792416, 55.321281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145927, 39.927834, 55.376694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120065, -0.075011, 0.989928,
		0.345528, -0.937955, -0.029165,
		0.930696, 0.338546, 0.138534,
		43.425137, 40.029396, 55.418255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173206, 39.231258, 55.147076>,  <42.773647, 39.792416, 55.321281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173206, 39.231258, 55.147076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799538, 39.372910, 55.129604>,  <41.575336, 39.457901, 55.119122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.799538, 39.372910, 55.129604>,  <42.173206, 39.231258, 55.147076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799538, 39.372910, 55.129604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053715, 0.018550, -0.998384,
		-0.352751, -0.935011, -0.036351,
		-0.934175, 0.354133, -0.043680,
		41.519287, 39.479149, 55.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827221, 38.849426, 54.525276>,  <42.173206, 39.231258, 55.147076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827221, 38.849426, 54.525276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.607880, 39.174126, 54.605644>,  <41.476276, 39.368946, 54.653866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.607880, 39.174126, 54.605644>,  <41.827221, 38.849426, 54.525276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607880, 39.174126, 54.605644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252734, 0.068152, -0.965133,
		-0.797141, -0.580013, 0.167785,
		-0.548354, 0.811752, 0.200916,
		41.443375, 39.417652, 54.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282604, 38.826508, 54.138210>,  <41.827221, 38.849426, 54.525276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282604, 38.826508, 54.138210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254280, 39.217323, 54.218590>,  <41.237286, 39.451813, 54.266819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.254280, 39.217323, 54.218590>,  <41.282604, 38.826508, 54.138210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254280, 39.217323, 54.218590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349808, 0.164340, -0.922294,
		-0.934141, -0.135607, 0.330138,
		-0.070815, 0.977038, 0.200953,
		41.233036, 39.510433, 54.278877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602501, 39.069195, 53.878044>,  <41.282604, 38.826508, 54.138210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602501, 39.069195, 53.878044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842579, 39.388535, 53.897701>,  <40.986626, 39.580139, 53.909496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.842579, 39.388535, 53.897701>,  <40.602501, 39.069195, 53.878044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842579, 39.388535, 53.897701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256528, 0.250323, -0.933559,
		-0.757604, 0.547707, 0.355040,
		0.600191, 0.798346, 0.049143,
		41.022636, 39.628036, 53.912445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291176, 39.587513, 53.385483>,  <40.602501, 39.069195, 53.878044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291176, 39.587513, 53.385483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.671371, 39.707222, 53.418972>,  <40.899487, 39.779049, 53.439064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.671371, 39.707222, 53.418972>,  <40.291176, 39.587513, 53.385483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671371, 39.707222, 53.418972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000616, 0.267595, -0.963531,
		-0.310766, 0.915875, 0.254161,
		0.950486, 0.299276, 0.083723,
		40.956516, 39.797005, 53.444088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307907, 40.242493, 53.034069>,  <40.291176, 39.587513, 53.385483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307907, 40.242493, 53.034069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683075, 40.106522, 53.061668>,  <40.908176, 40.024940, 53.078228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683075, 40.106522, 53.061668>,  <40.307907, 40.242493, 53.034069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683075, 40.106522, 53.061668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146847, 0.208915, -0.966846,
		0.314242, 0.916953, 0.245863,
		0.937917, -0.339927, 0.069002,
		40.964451, 40.004543, 53.082371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770790, 40.728596, 52.700806>,  <40.307907, 40.242493, 53.034069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770790, 40.728596, 52.700806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965736, 40.379364, 52.694984>,  <41.082703, 40.169827, 52.691494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965736, 40.379364, 52.694984>,  <40.770790, 40.728596, 52.700806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965736, 40.379364, 52.694984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325278, 0.196990, -0.924873,
		0.810352, 0.446017, 0.379999,
		0.487365, -0.873077, -0.014551,
		41.111946, 40.117439, 52.690620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411953, 40.888233, 52.423042>,  <40.770790, 40.728596, 52.700806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411953, 40.888233, 52.423042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419601, 40.489388, 52.393639>,  <41.424191, 40.250080, 52.375996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419601, 40.489388, 52.393639>,  <41.411953, 40.888233, 52.423042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419601, 40.489388, 52.393639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315672, 0.075783, -0.945837,
		0.948676, -0.005124, 0.316209,
		0.019116, -0.997111, -0.073511,
		41.425335, 40.190254, 52.371586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162411, 40.717575, 52.278580>,  <41.411953, 40.888233, 52.423042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162411, 40.717575, 52.278580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939644, 40.411385, 52.149654>,  <41.805984, 40.227669, 52.072300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939644, 40.411385, 52.149654>,  <42.162411, 40.717575, 52.278580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939644, 40.411385, 52.149654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437858, 0.059170, -0.897095,
		0.705777, -0.640737, 0.302217,
		-0.556920, -0.765477, -0.322313,
		41.772568, 40.181740, 52.052959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555798, 40.427975, 51.773521>,  <42.162411, 40.717575, 52.278580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555798, 40.427975, 51.773521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.200127, 40.260880, 51.698849>,  <41.986725, 40.160622, 51.654045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.200127, 40.260880, 51.698849>,  <42.555798, 40.427975, 51.773521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200127, 40.260880, 51.698849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236724, -0.070848, -0.968990,
		0.391558, -0.905801, 0.161885,
		-0.889182, -0.417738, -0.186684,
		41.933372, 40.135559, 51.642845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718102, 39.744083, 51.478088>,  <42.555798, 40.427975, 51.773521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718102, 39.744083, 51.478088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.334213, 39.798126, 51.379555>,  <42.103882, 39.830551, 51.320435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.334213, 39.798126, 51.379555>,  <42.718102, 39.744083, 51.478088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334213, 39.798126, 51.379555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178909, -0.382156, -0.906614,
		-0.216626, -0.914168, 0.342592,
		-0.959721, 0.135103, -0.246338,
		42.046295, 39.838657, 51.305653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454063, 39.089794, 51.117653>,  <42.718102, 39.744083, 51.478088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454063, 39.089794, 51.117653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.233936, 39.403816, 51.003922>,  <42.101860, 39.592228, 50.935684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.233936, 39.403816, 51.003922>,  <42.454063, 39.089794, 51.117653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233936, 39.403816, 51.003922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095880, -0.278857, -0.955534,
		-0.829430, -0.553111, 0.078190,
		-0.550321, 0.785052, -0.284325,
		42.068840, 39.639332, 50.918625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030403, 38.808830, 50.599529>,  <42.454063, 39.089794, 51.117653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030403, 38.808830, 50.599529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.035919, 39.203049, 50.531990>,  <42.039230, 39.439579, 50.491467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.035919, 39.203049, 50.531990>,  <42.030403, 38.808830, 50.599529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035919, 39.203049, 50.531990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259598, -0.166599, -0.951238,
		-0.965618, -0.030711, -0.258144,
		0.013794, 0.985546, -0.168844,
		42.040058, 39.498714, 50.481339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594646, 38.934750, 49.989933>,  <42.030403, 38.808830, 50.599529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594646, 38.934750, 49.989933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825607, 39.255775, 50.049923>,  <41.964184, 39.448391, 50.085918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.825607, 39.255775, 50.049923>,  <41.594646, 38.934750, 49.989933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825607, 39.255775, 50.049923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356915, -0.082911, -0.930450,
		-0.734312, 0.590776, -0.334321,
		0.577406, 0.802564, 0.149974,
		41.998829, 39.496544, 50.094913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.903515, 42.394833, 54.440113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.257858, 42.529243, 54.568073>,  <41.470463, 42.609890, 54.644848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.257858, 42.529243, 54.568073>,  <40.903515, 42.394833, 54.440113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257858, 42.529243, 54.568073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060021, -0.600713, 0.797208,
		0.460055, -0.725415, -0.511979,
		0.885859, 0.336031, 0.319901,
		41.523617, 42.630054, 54.664043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321041, 41.767193, 54.660034>,  <40.903515, 42.394833, 54.440113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321041, 41.767193, 54.660034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433250, 42.104851, 54.842781>,  <41.500576, 42.307446, 54.952431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433250, 42.104851, 54.842781>,  <41.321041, 41.767193, 54.660034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433250, 42.104851, 54.842781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140310, -0.434803, 0.889528,
		0.949538, -0.313632, -0.003529,
		0.280519, 0.844145, 0.456868,
		41.517406, 42.358093, 54.979843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658215, 41.484779, 55.227779>,  <41.321041, 41.767193, 54.660034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658215, 41.484779, 55.227779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.570480, 41.864426, 55.318165>,  <41.517838, 42.092216, 55.372395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.570480, 41.864426, 55.318165>,  <41.658215, 41.484779, 55.227779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570480, 41.864426, 55.318165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058634, -0.244010, 0.967998,
		0.973885, 0.199072, 0.109172,
		-0.219340, 0.949120, 0.225965,
		41.504677, 42.149162, 55.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783524, 41.459190, 55.915974>,  <41.658215, 41.484779, 55.227779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783524, 41.459190, 55.915974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597984, 41.813522, 55.920986>,  <41.486660, 42.026119, 55.923992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.597984, 41.813522, 55.920986>,  <41.783524, 41.459190, 55.915974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597984, 41.813522, 55.920986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134210, -0.084241, 0.987366,
		0.875690, 0.456307, 0.157962,
		-0.463849, 0.885826, 0.012528,
		41.458828, 42.079269, 55.924744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136745, 41.968674, 56.466068>,  <41.783524, 41.459190, 55.915974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136745, 41.968674, 56.466068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749355, 42.056969, 56.419895>,  <41.516922, 42.109947, 56.392189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.749355, 42.056969, 56.419895>,  <42.136745, 41.968674, 56.466068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749355, 42.056969, 56.419895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146537, -0.130116, 0.980610,
		0.201438, 0.966615, 0.158361,
		-0.968478, 0.220737, -0.115435,
		41.458813, 42.123192, 56.385265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954845, 42.344017, 57.130516>,  <42.136745, 41.968674, 56.466068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954845, 42.344017, 57.130516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.605446, 42.288330, 56.943920>,  <41.395805, 42.254917, 56.831963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.605446, 42.288330, 56.943920>,  <41.954845, 42.344017, 57.130516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605446, 42.288330, 56.943920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479953, 0.085882, 0.873080,
		-0.081487, 0.986531, -0.141836,
		-0.873502, -0.139219, -0.466490,
		41.343395, 42.246563, 56.803974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528358, 42.925190, 57.354679>,  <41.954845, 42.344017, 57.130516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528358, 42.925190, 57.354679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296043, 42.621933, 57.236084>,  <41.156654, 42.439980, 57.164928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.296043, 42.621933, 57.236084>,  <41.528358, 42.925190, 57.354679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296043, 42.621933, 57.236084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548981, 0.095839, 0.830322,
		-0.601089, 0.645005, -0.471869,
		-0.580785, -0.758145, -0.296488,
		41.121807, 42.394489, 57.147137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952030, 43.088223, 57.550159>,  <41.528358, 42.925190, 57.354679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952030, 43.088223, 57.550159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884537, 42.697151, 57.500084>,  <40.844040, 42.462509, 57.470039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.884537, 42.697151, 57.500084>,  <40.952030, 43.088223, 57.550159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884537, 42.697151, 57.500084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493886, -0.026054, 0.869136,
		-0.852997, 0.208488, -0.478465,
		-0.168738, -0.977678, -0.125194,
		40.833916, 42.403847, 57.462524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251656, 42.934685, 57.654758>,  <40.952030, 43.088223, 57.550159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251656, 42.934685, 57.654758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458233, 42.597061, 57.712513>,  <40.582180, 42.394485, 57.747166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458233, 42.597061, 57.712513>,  <40.251656, 42.934685, 57.654758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458233, 42.597061, 57.712513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495463, -0.157008, 0.854321,
		-0.698429, -0.512748, -0.499286,
		0.516444, -0.844060, 0.144389,
		40.613167, 42.343842, 57.755829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719475, 42.449879, 57.911625>,  <40.251656, 42.934685, 57.654758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719475, 42.449879, 57.911625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083935, 42.322678, 58.016457>,  <40.302608, 42.246357, 58.079357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.083935, 42.322678, 58.016457>,  <39.719475, 42.449879, 57.911625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083935, 42.322678, 58.016457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331373, -0.187351, 0.924712,
		-0.244970, -0.929391, -0.276085,
		0.911143, -0.318013, 0.262079,
		40.357277, 42.227276, 58.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552345, 41.876709, 58.244774>,  <39.719475, 42.449879, 57.911625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552345, 41.876709, 58.244774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916260, 41.965637, 58.384983>,  <40.134609, 42.018993, 58.469109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.916260, 41.965637, 58.384983>,  <39.552345, 41.876709, 58.244774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916260, 41.965637, 58.384983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337415, -0.095732, 0.936476,
		0.241751, -0.970263, -0.012082,
		0.909785, 0.222318, 0.350524,
		40.189194, 42.032333, 58.490139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709003, 41.298515, 58.764580>,  <39.552345, 41.876709, 58.244774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709003, 41.298515, 58.764580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939659, 41.621239, 58.816044>,  <40.078053, 41.814873, 58.846924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.939659, 41.621239, 58.816044>,  <39.709003, 41.298515, 58.764580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939659, 41.621239, 58.816044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213955, -0.002862, 0.976839,
		0.788489, -0.590808, 0.170970,
		0.576635, 0.806807, 0.128663,
		40.112648, 41.863281, 58.854641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163170, 41.004326, 59.353706>,  <39.709003, 41.298515, 58.764580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163170, 41.004326, 59.353706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114105, 41.401306, 59.353218>,  <40.084667, 41.639492, 59.352924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.114105, 41.401306, 59.353218>,  <40.163170, 41.004326, 59.353706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114105, 41.401306, 59.353218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322599, -0.038710, 0.945744,
		0.938555, 0.116398, 0.324911,
		-0.122660, 0.992448, -0.001218,
		40.077309, 41.699039, 59.352852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536762, 41.245388, 59.927086>,  <40.163170, 41.004326, 59.353706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536762, 41.245388, 59.927086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205544, 41.457260, 59.853569>,  <40.006813, 41.584385, 59.809460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.205544, 41.457260, 59.853569>,  <40.536762, 41.245388, 59.927086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205544, 41.457260, 59.853569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415262, -0.359154, 0.835803,
		0.376700, 0.768404, 0.517352,
		-0.828043, 0.529683, -0.183796,
		39.957130, 41.616165, 59.798431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796055, 40.674770, 60.418415>,  <40.536762, 41.245388, 59.927086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796055, 40.674770, 60.418415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858070, 40.281425, 60.456268>,  <40.895279, 40.045418, 60.478981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858070, 40.281425, 60.456268>,  <40.796055, 40.674770, 60.418415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858070, 40.281425, 60.456268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180614, -0.065963, -0.981340,
		0.971258, 0.169233, 0.167383,
		0.155034, -0.983366, 0.094633,
		40.904579, 39.986416, 60.484657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394543, 40.475254, 60.073090>,  <40.796055, 40.674770, 60.418415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394543, 40.475254, 60.073090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166466, 40.147858, 60.101219>,  <41.029617, 39.951420, 60.118095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.166466, 40.147858, 60.101219>,  <41.394543, 40.475254, 60.073090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166466, 40.147858, 60.101219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150706, -0.188368, -0.970466,
		0.807566, -0.542759, 0.230758,
		-0.570197, -0.818492, 0.070322,
		40.995407, 39.902309, 60.122314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650700, 40.127800, 59.589867>,  <41.394543, 40.475254, 60.073090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650700, 40.127800, 59.589867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311958, 39.922157, 59.644314>,  <41.108715, 39.798771, 59.676983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.311958, 39.922157, 59.644314>,  <41.650700, 40.127800, 59.589867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311958, 39.922157, 59.644314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036758, -0.198757, -0.979359,
		0.530553, -0.834378, 0.149421,
		-0.846854, -0.514109, 0.136122,
		41.057903, 39.767925, 59.685150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747410, 39.531906, 59.268677>,  <41.650700, 40.127800, 59.589867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747410, 39.531906, 59.268677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348473, 39.551491, 59.290230>,  <41.109108, 39.563240, 59.303162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.348473, 39.551491, 59.290230>,  <41.747410, 39.531906, 59.268677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348473, 39.551491, 59.290230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064321, -0.245777, -0.967190,
		-0.034109, -0.968089, 0.248274,
		-0.997346, 0.048959, 0.053885,
		41.049271, 39.566177, 59.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470043, 38.835518, 58.978428>,  <41.747410, 39.531906, 59.268677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470043, 38.835518, 58.978428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200317, 39.130615, 58.965553>,  <41.038483, 39.307674, 58.957829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200317, 39.130615, 58.965553>,  <41.470043, 38.835518, 58.978428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200317, 39.130615, 58.965553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144456, -0.174527, -0.973998,
		-0.724173, -0.652136, 0.224257,
		-0.674319, 0.737739, -0.032183,
		40.998020, 39.351936, 58.955898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922497, 38.567085, 58.665997>,  <41.470043, 38.835518, 58.978428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922497, 38.567085, 58.665997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.852791, 38.958168, 58.619141>,  <40.810966, 39.192818, 58.591026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.852791, 38.958168, 58.619141>,  <40.922497, 38.567085, 58.665997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852791, 38.958168, 58.619141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060485, -0.129363, -0.989751,
		-0.982840, -0.165390, 0.081680,
		-0.174261, 0.977707, -0.117140,
		40.800514, 39.251480, 58.584000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363300, 38.631241, 58.223206>,  <40.922497, 38.567085, 58.665997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363300, 38.631241, 58.223206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543671, 38.987030, 58.193523>,  <40.651894, 39.200504, 58.175713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543671, 38.987030, 58.193523>,  <40.363300, 38.631241, 58.223206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543671, 38.987030, 58.193523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213156, 0.026580, -0.976656,
		-0.866735, 0.456218, 0.201582,
		0.450927, 0.889471, -0.074208,
		40.678947, 39.253872, 58.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862114, 39.068565, 57.855366>,  <40.363300, 38.631241, 58.223206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862114, 39.068565, 57.855366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217751, 39.249557, 57.827736>,  <40.431133, 39.358154, 57.811157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.217751, 39.249557, 57.827736>,  <39.862114, 39.068565, 57.855366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217751, 39.249557, 57.827736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052593, -0.048916, -0.997417,
		-0.454691, 0.890431, -0.019694,
		0.889095, 0.452481, -0.069072,
		40.484478, 39.385303, 57.807014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724167, 39.471371, 57.307377>,  <39.862114, 39.068565, 57.855366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724167, 39.471371, 57.307377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122738, 39.472412, 57.341129>,  <40.361881, 39.473038, 57.361382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.122738, 39.472412, 57.341129>,  <39.724167, 39.471371, 57.307377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122738, 39.472412, 57.341129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084417, -0.020166, -0.996226,
		-0.000889, 0.999793, -0.020313,
		0.996430, 0.002601, 0.084382,
		40.421665, 39.473194, 57.366444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926556, 39.858009, 56.751163>,  <39.724167, 39.471371, 57.307377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926556, 39.858009, 56.751163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261749, 39.672134, 56.865601>,  <40.462864, 39.560608, 56.934261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.261749, 39.672134, 56.865601>,  <39.926556, 39.858009, 56.751163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261749, 39.672134, 56.865601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398165, 0.162159, -0.902867,
		0.373163, 0.870497, 0.320911,
		0.837982, -0.464692, 0.286090,
		40.513145, 39.532726, 56.951427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489113, 40.279221, 56.590984>,  <39.926556, 39.858009, 56.751163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489113, 40.279221, 56.590984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626457, 39.904442, 56.617012>,  <40.708866, 39.679573, 56.632629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.626457, 39.904442, 56.617012>,  <40.489113, 40.279221, 56.590984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626457, 39.904442, 56.617012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514293, 0.129598, -0.847766,
		0.785878, 0.324557, 0.526364,
		0.343364, -0.936946, 0.065069,
		40.729465, 39.623360, 56.636532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166630, 40.354675, 56.546150>,  <40.489113, 40.279221, 56.590984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166630, 40.354675, 56.546150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.088951, 39.978683, 56.433922>,  <41.042343, 39.753086, 56.366585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.088951, 39.978683, 56.433922>,  <41.166630, 40.354675, 56.546150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088951, 39.978683, 56.433922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462317, 0.164564, -0.871310,
		0.865189, -0.298916, 0.402613,
		-0.194193, -0.939983, -0.280573,
		41.030693, 39.696690, 56.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754780, 40.040695, 56.179352>,  <41.166630, 40.354675, 56.546150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754780, 40.040695, 56.179352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475410, 39.779388, 56.062431>,  <41.307789, 39.622604, 55.992279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.475410, 39.779388, 56.062431>,  <41.754780, 40.040695, 56.179352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475410, 39.779388, 56.062431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401830, -0.019969, -0.915497,
		0.592229, -0.756862, 0.276450,
		-0.698425, -0.653270, -0.292303,
		41.265884, 39.583408, 55.974739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143711, 39.560940, 55.825569>,  <41.754780, 40.040695, 56.179352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143711, 39.560940, 55.825569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.761948, 39.532845, 55.709518>,  <41.532890, 39.515987, 55.639889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.761948, 39.532845, 55.709518>,  <42.143711, 39.560940, 55.825569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761948, 39.532845, 55.709518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294138, -0.055545, -0.954148,
		0.050902, -0.995983, 0.073672,
		-0.954406, -0.070238, -0.290129,
		41.475624, 39.511772, 55.622478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857147, 39.400936, 55.988861>,  <42.143711, 39.560940, 55.825569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857147, 39.400936, 55.988861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154152, 39.663277, 55.934402>,  <43.332355, 39.820683, 55.901726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.154152, 39.663277, 55.934402>,  <42.857147, 39.400936, 55.988861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154152, 39.663277, 55.934402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142490, 0.043955, 0.988820,
		0.654502, -0.753610, -0.060815,
		0.742511, 0.655850, -0.136151,
		43.376904, 39.860031, 55.893559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321075, 39.222157, 56.434570>,  <42.857147, 39.400936, 55.988861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321075, 39.222157, 56.434570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.438225, 39.599846, 56.374340>,  <43.508514, 39.826458, 56.338203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.438225, 39.599846, 56.374340>,  <43.321075, 39.222157, 56.434570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438225, 39.599846, 56.374340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195632, 0.094972, 0.976068,
		0.935924, -0.315322, -0.156905,
		0.292874, 0.944220, -0.150573,
		43.526089, 39.883114, 56.329166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035706, 39.245270, 56.667904>,  <43.321075, 39.222157, 56.434570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035706, 39.245270, 56.667904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.871628, 39.609833, 56.681030>,  <43.773182, 39.828571, 56.688908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.871628, 39.609833, 56.681030>,  <44.035706, 39.245270, 56.667904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871628, 39.609833, 56.681030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135299, 0.025228, 0.990484,
		0.901906, 0.410732, -0.133661,
		-0.410195, 0.911407, 0.032819,
		43.748569, 39.883255, 56.690876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443718, 39.651241, 57.115299>,  <44.035706, 39.245270, 56.667904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443718, 39.651241, 57.115299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113171, 39.876259, 57.125626>,  <43.914845, 40.011269, 57.131821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.113171, 39.876259, 57.125626>,  <44.443718, 39.651241, 57.115299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113171, 39.876259, 57.125626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162790, 0.194752, 0.967249,
		0.539091, 0.803504, -0.252513,
		-0.826366, 0.562542, 0.025813,
		43.865261, 40.045021, 57.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636665, 40.237411, 57.503059>,  <44.443718, 39.651241, 57.115299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636665, 40.237411, 57.503059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.237164, 40.247360, 57.520401>,  <43.997463, 40.253330, 57.530807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.237164, 40.247360, 57.520401>,  <44.636665, 40.237411, 57.503059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237164, 40.247360, 57.520401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047071, 0.176435, 0.983186,
		0.016804, 0.983998, -0.177385,
		-0.998750, 0.024871, 0.043353,
		43.937538, 40.254822, 57.533405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624493, 40.549381, 58.015263>,  <44.636665, 40.237411, 57.503059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624493, 40.549381, 58.015263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.246719, 40.420044, 57.991592>,  <44.020058, 40.342442, 57.977390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.246719, 40.420044, 57.991592>,  <44.624493, 40.549381, 58.015263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246719, 40.420044, 57.991592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072053, 0.027982, 0.997008,
		-0.320716, 0.945869, -0.049725,
		-0.944431, -0.323339, -0.059178,
		43.963390, 40.323044, 57.973839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133671, 41.036968, 58.367687>,  <44.624493, 40.549381, 58.015263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133671, 41.036968, 58.367687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.998863, 40.660408, 58.372959>,  <43.917976, 40.434471, 58.376122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.998863, 40.660408, 58.372959>,  <44.133671, 41.036968, 58.367687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998863, 40.660408, 58.372959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017730, 0.007647, 0.999814,
		-0.941330, 0.337192, 0.014113,
		-0.337022, -0.941405, 0.013177,
		43.897758, 40.377987, 58.376911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268875, 41.511311, 58.981632>,  <44.133671, 41.036968, 58.367687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268875, 41.511311, 58.981632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.583992, 41.728859, 59.097282>,  <44.773060, 41.859386, 59.166672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.583992, 41.728859, 59.097282>,  <44.268875, 41.511311, 58.981632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583992, 41.728859, 59.097282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305226, 0.063012, -0.950193,
		-0.535001, 0.836799, -0.116364,
		0.787789, 0.543872, 0.289124,
		44.820328, 41.892021, 59.184021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321243, 42.109737, 58.534241>,  <44.268875, 41.511311, 58.981632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321243, 42.109737, 58.534241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.680256, 41.999146, 58.671646>,  <44.895664, 41.932789, 58.754089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.680256, 41.999146, 58.671646>,  <44.321243, 42.109737, 58.534241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680256, 41.999146, 58.671646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383884, 0.106598, -0.917208,
		0.216972, 0.955089, 0.201811,
		0.897528, -0.276481, 0.343515,
		44.949512, 41.916203, 58.774700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763084, 42.579647, 58.213539>,  <44.321243, 42.109737, 58.534241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763084, 42.579647, 58.213539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.002293, 42.277931, 58.321922>,  <45.145817, 42.096901, 58.386951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.002293, 42.277931, 58.321922>,  <44.763084, 42.579647, 58.213539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002293, 42.277931, 58.321922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451411, 0.037637, -0.891522,
		0.662265, 0.655466, 0.363001,
		0.598025, -0.754286, 0.270959,
		45.181702, 42.051647, 58.403210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453091, 42.812862, 58.003296>,  <44.763084, 42.579647, 58.213539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453091, 42.812862, 58.003296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.500893, 42.417900, 58.044769>,  <45.529575, 42.180923, 58.069653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.500893, 42.417900, 58.044769>,  <45.453091, 42.812862, 58.003296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500893, 42.417900, 58.044769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581306, -0.015071, -0.813545,
		0.804861, 0.157498, 0.572183,
		0.119508, -0.987404, 0.103685,
		45.536747, 42.121677, 58.075874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149845, 42.592674, 57.759037>,  <45.453091, 42.812862, 58.003296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149845, 42.592674, 57.759037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.929359, 42.259773, 57.735321>,  <45.797070, 42.060032, 57.721092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.929359, 42.259773, 57.735321>,  <46.149845, 42.592674, 57.759037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929359, 42.259773, 57.735321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311321, -0.139223, -0.940051,
		0.774110, -0.536624, 0.335841,
		-0.551211, -0.832257, -0.059288,
		45.763996, 42.010098, 57.717533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574799, 42.313622, 57.470772>,  <46.149845, 42.592674, 57.759037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574799, 42.313622, 57.470772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.246780, 42.090973, 57.417564>,  <46.049969, 41.957382, 57.385639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.246780, 42.090973, 57.417564>,  <46.574799, 42.313622, 57.470772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246780, 42.090973, 57.417564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313677, -0.242749, -0.917976,
		0.478679, -0.794506, 0.373666,
		-0.820044, -0.556626, -0.133020,
		46.000767, 41.923985, 57.377659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728138, 41.624531, 57.144787>,  <46.574799, 42.313622, 57.470772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728138, 41.624531, 57.144787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343399, 41.679085, 57.049911>,  <46.112556, 41.711819, 56.992989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.343399, 41.679085, 57.049911>,  <46.728138, 41.624531, 57.144787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343399, 41.679085, 57.049911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214151, -0.164267, -0.962889,
		-0.170312, -0.976938, 0.128785,
		-0.961838, 0.136412, -0.237189,
		46.054848, 41.720001, 56.978756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.684048, 45.360886, 59.233551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.540554, 45.002434, 59.129036>,  <41.454456, 44.787365, 59.066326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.540554, 45.002434, 59.129036>,  <41.684048, 45.360886, 59.233551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540554, 45.002434, 59.129036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298557, 0.155061, -0.941711,
		0.884406, -0.415831, 0.211919,
		-0.358733, -0.896125, -0.261286,
		41.432934, 44.733597, 59.050652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184277, 45.162781, 58.757027>,  <41.684048, 45.360886, 59.233551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184277, 45.162781, 58.757027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.872696, 44.918823, 58.698692>,  <41.685749, 44.772449, 58.663692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.872696, 44.918823, 58.698692>,  <42.184277, 45.162781, 58.757027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872696, 44.918823, 58.698692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249674, -0.088295, -0.964296,
		0.575240, -0.787550, 0.221052,
		-0.778949, -0.609893, -0.145840,
		41.639011, 44.735855, 58.654942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432140, 44.657692, 58.267944>,  <42.184277, 45.162781, 58.757027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432140, 44.657692, 58.267944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032341, 44.665352, 58.277985>,  <41.792461, 44.669949, 58.284008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.032341, 44.665352, 58.277985>,  <42.432140, 44.657692, 58.267944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032341, 44.665352, 58.277985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023479, 0.080553, -0.996474,
		-0.021109, -0.996566, -0.080063,
		-0.999502, 0.019155, 0.025099,
		41.732491, 44.671097, 58.285515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284336, 43.993286, 57.943996>,  <42.432140, 44.657692, 58.267944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284336, 43.993286, 57.943996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987129, 44.258667, 57.908752>,  <41.808804, 44.417896, 57.887608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987129, 44.258667, 57.908752>,  <42.284336, 43.993286, 57.943996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987129, 44.258667, 57.908752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173190, 0.063439, -0.982843,
		-0.646477, -0.745527, -0.162038,
		-0.743016, 0.663449, -0.088106,
		41.764225, 44.457703, 57.882320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911842, 43.750698, 57.394634>,  <42.284336, 43.993286, 57.943996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911842, 43.750698, 57.394634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.815365, 44.138100, 57.419369>,  <41.757481, 44.370541, 57.434208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.815365, 44.138100, 57.419369>,  <41.911842, 43.750698, 57.394634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815365, 44.138100, 57.419369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063855, 0.079416, -0.994794,
		-0.968374, -0.235988, -0.080999,
		-0.241192, 0.968506, 0.061836,
		41.743008, 44.428650, 57.437920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438732, 43.917675, 56.793209>,  <41.911842, 43.750698, 57.394634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438732, 43.917675, 56.793209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594856, 44.272942, 56.890224>,  <41.688530, 44.486099, 56.948433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.594856, 44.272942, 56.890224>,  <41.438732, 43.917675, 56.793209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594856, 44.272942, 56.890224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055602, 0.240208, -0.969128,
		-0.919004, 0.391744, 0.044371,
		0.390309, 0.888165, 0.242534,
		41.711948, 44.539391, 56.962986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153477, 44.349991, 56.274639>,  <41.438732, 43.917675, 56.793209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153477, 44.349991, 56.274639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452950, 44.558220, 56.438824>,  <41.632633, 44.683159, 56.537334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.452950, 44.558220, 56.438824>,  <41.153477, 44.349991, 56.274639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452950, 44.558220, 56.438824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258407, 0.341017, -0.903844,
		-0.610490, 0.782758, 0.120794,
		0.748684, 0.520574, 0.410458,
		41.677555, 44.714394, 56.561962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144569, 45.039314, 55.912006>,  <41.153477, 44.349991, 56.274639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144569, 45.039314, 55.912006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.507755, 45.026382, 56.079121>,  <41.725666, 45.018623, 56.179390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.507755, 45.026382, 56.079121>,  <41.144569, 45.039314, 55.912006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507755, 45.026382, 56.079121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383534, 0.465760, -0.797477,
		-0.168807, 0.884320, 0.435295,
		0.907968, -0.032331, 0.417790,
		41.780148, 45.016682, 56.204456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476089, 45.788830, 55.903698>,  <41.144569, 45.039314, 55.912006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476089, 45.788830, 55.903698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776512, 45.528282, 55.946838>,  <41.956768, 45.371956, 55.972721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.776512, 45.528282, 55.946838>,  <41.476089, 45.788830, 55.903698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776512, 45.528282, 55.946838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443812, 0.377145, -0.812892,
		0.488814, 0.658396, 0.572342,
		0.751060, -0.651365, 0.107850,
		42.001831, 45.332874, 55.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039543, 46.171299, 55.897087>,  <41.476089, 45.788830, 55.903698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039543, 46.171299, 55.897087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193016, 45.814896, 55.800011>,  <42.285099, 45.601055, 55.741764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193016, 45.814896, 55.800011>,  <42.039543, 46.171299, 55.897087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193016, 45.814896, 55.800011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453481, 0.410721, -0.790989,
		0.804453, 0.193433, 0.561640,
		0.383680, -0.891006, -0.242687,
		42.308121, 45.547592, 55.727203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703674, 46.306469, 55.594433>,  <42.039543, 46.171299, 55.897087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703674, 46.306469, 55.594433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.613350, 45.938736, 55.465538>,  <42.559155, 45.718098, 55.388203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.613350, 45.938736, 55.465538>,  <42.703674, 46.306469, 55.594433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613350, 45.938736, 55.465538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378576, 0.221967, -0.898560,
		0.897601, -0.324899, 0.297913,
		-0.225815, -0.919332, -0.322237,
		42.545605, 45.662937, 55.368866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323803, 46.010483, 55.428936>,  <42.703674, 46.306469, 55.594433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323803, 46.010483, 55.428936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.042194, 45.827347, 55.211777>,  <42.873230, 45.717464, 55.081482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.042194, 45.827347, 55.211777>,  <43.323803, 46.010483, 55.428936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042194, 45.827347, 55.211777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431402, 0.331541, -0.839031,
		0.564137, -0.824901, -0.035897,
		-0.704019, -0.457842, -0.542898,
		42.830990, 45.689995, 55.048908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970592, 46.099411, 55.690464>,  <43.323803, 46.010483, 55.428936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970592, 46.099411, 55.690464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362427, 46.175201, 55.717308>,  <44.597527, 46.220676, 55.733414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362427, 46.175201, 55.717308>,  <43.970592, 46.099411, 55.690464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362427, 46.175201, 55.717308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031388, -0.185569, 0.982130,
		0.198541, -0.964191, -0.175834,
		0.979590, 0.189474, 0.067107,
		44.656303, 46.232044, 55.737438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267944, 45.587894, 56.095894>,  <43.970592, 46.099411, 55.690464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267944, 45.587894, 56.095894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.543770, 45.876556, 56.120274>,  <44.709263, 46.049755, 56.134903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.543770, 45.876556, 56.120274>,  <44.267944, 45.587894, 56.095894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543770, 45.876556, 56.120274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031031, -0.113520, 0.993051,
		0.723564, -0.682877, -0.100673,
		0.689560, 0.721660, 0.060949,
		44.750637, 46.093056, 56.138557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828979, 45.342140, 56.446823>,  <44.267944, 45.587894, 56.095894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828979, 45.342140, 56.446823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.864014, 45.737755, 56.494392>,  <44.885036, 45.975124, 56.522934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.864014, 45.737755, 56.494392>,  <44.828979, 45.342140, 56.446823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864014, 45.737755, 56.494392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120441, -0.129018, 0.984301,
		0.988849, -0.071890, -0.130421,
		0.087588, 0.989033, 0.118921,
		44.890289, 46.034466, 56.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436321, 45.487694, 56.911156>,  <44.828979, 45.342140, 56.446823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436321, 45.487694, 56.911156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197380, 45.808449, 56.915981>,  <45.054016, 46.000900, 56.918877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.197380, 45.808449, 56.915981>,  <45.436321, 45.487694, 56.911156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197380, 45.808449, 56.915981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173386, 0.114443, 0.978182,
		0.783011, 0.586413, -0.207399,
		-0.597354, 0.801887, 0.012066,
		45.018173, 46.049015, 56.919601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788185, 46.038536, 57.217495>,  <45.436321, 45.487694, 56.911156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788185, 46.038536, 57.217495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.403770, 46.141800, 57.257030>,  <45.173122, 46.203758, 57.280754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.403770, 46.141800, 57.257030>,  <45.788185, 46.038536, 57.217495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403770, 46.141800, 57.257030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154276, 0.204187, 0.966699,
		0.229380, 0.944278, -0.236058,
		-0.961033, 0.258159, 0.098843,
		45.115459, 46.219246, 57.286682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727276, 46.432739, 57.831249>,  <45.788185, 46.038536, 57.217495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727276, 46.432739, 57.831249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.335411, 46.363014, 57.791500>,  <45.100292, 46.321178, 57.767651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.335411, 46.363014, 57.791500>,  <45.727276, 46.432739, 57.831249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335411, 46.363014, 57.791500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116789, 0.092647, 0.988826,
		-0.163155, 0.980323, -0.111120,
		-0.979664, -0.174309, -0.099375,
		45.041512, 46.310722, 57.761688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373688, 46.856174, 58.303921>,  <45.727276, 46.432739, 57.831249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373688, 46.856174, 58.303921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.126228, 46.551842, 58.225533>,  <44.977753, 46.369240, 58.178501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.126228, 46.551842, 58.225533>,  <45.373688, 46.856174, 58.303921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126228, 46.551842, 58.225533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239299, -0.055107, 0.969381,
		-0.748339, 0.646600, -0.147976,
		-0.618647, -0.760836, -0.195970,
		44.940636, 46.323589, 58.166740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742752, 46.975334, 58.723114>,  <45.373688, 46.856174, 58.303921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742752, 46.975334, 58.723114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.732300, 46.583382, 58.643974>,  <44.726028, 46.348209, 58.596489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.732300, 46.583382, 58.643974>,  <44.742752, 46.975334, 58.723114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732300, 46.583382, 58.643974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229013, -0.186784, 0.955335,
		-0.973072, 0.070276, -0.219525,
		-0.026133, -0.979884, -0.197849,
		44.724461, 46.289417, 58.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054184, 46.664730, 58.828323>,  <44.742752, 46.975334, 58.723114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054184, 46.664730, 58.828323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.305954, 46.355637, 58.861099>,  <44.457016, 46.170181, 58.880764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.305954, 46.355637, 58.861099>,  <44.054184, 46.664730, 58.828323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305954, 46.355637, 58.861099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356773, -0.193702, 0.913889,
		-0.690317, -0.604458, -0.397609,
		0.629425, -0.772730, 0.081939,
		44.494781, 46.123817, 58.885681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588924, 46.210442, 59.164936>,  <44.054184, 46.664730, 58.828323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588924, 46.210442, 59.164936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.944176, 46.030640, 59.203255>,  <44.157326, 45.922760, 59.226246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.944176, 46.030640, 59.203255>,  <43.588924, 46.210442, 59.164936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944176, 46.030640, 59.203255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351773, -0.530695, 0.771115,
		-0.295777, -0.718548, -0.629448,
		0.888129, -0.449501, 0.095799,
		44.210613, 45.895790, 59.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484718, 45.460766, 59.159138>,  <43.588924, 46.210442, 59.164936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484718, 45.460766, 59.159138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.829567, 45.554977, 59.338593>,  <44.036476, 45.611504, 59.446266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.829567, 45.554977, 59.338593>,  <43.484718, 45.460766, 59.159138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.829567, 45.554977, 59.338593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287950, -0.500806, 0.816259,
		0.416932, -0.832898, -0.363935,
		0.862121, 0.235530, 0.448635,
		44.088203, 45.625637, 59.473183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576275, 44.823292, 59.500908>,  <43.484718, 45.460766, 59.159138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576275, 44.823292, 59.500908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.817230, 45.089478, 59.677219>,  <43.961803, 45.249187, 59.783009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.817230, 45.089478, 59.677219>,  <43.576275, 44.823292, 59.500908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817230, 45.089478, 59.677219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388617, -0.237838, 0.890174,
		0.697212, -0.707525, 0.115339,
		0.602388, 0.665463, 0.440780,
		43.997948, 45.289116, 59.809452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819923, 44.463482, 60.222664>,  <43.576275, 44.823292, 59.500908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819923, 44.463482, 60.222664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.893448, 44.855965, 60.246143>,  <43.937565, 45.091454, 60.260231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.893448, 44.855965, 60.246143>,  <43.819923, 44.463482, 60.222664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893448, 44.855965, 60.246143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373769, 0.014536, 0.927408,
		0.909125, -0.192412, 0.369417,
		0.183814, 0.981206, 0.058703,
		43.948593, 45.150326, 60.263756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225132, 44.598083, 60.831425>,  <43.819923, 44.463482, 60.222664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225132, 44.598083, 60.831425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.035870, 44.939766, 60.745216>,  <43.922314, 45.144775, 60.693489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.035870, 44.939766, 60.745216>,  <44.225132, 44.598083, 60.831425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035870, 44.939766, 60.745216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491668, -0.053044, 0.869166,
		0.731017, 0.517218, 0.445085,
		-0.473157, 0.854208, -0.215523,
		43.893921, 45.196030, 60.680561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106426, 43.924995, 61.171066>,  <44.225132, 44.598083, 60.831425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106426, 43.924995, 61.171066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153534, 43.602287, 61.402672>,  <44.181801, 43.408665, 61.541634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.153534, 43.602287, 61.402672>,  <44.106426, 43.924995, 61.171066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153534, 43.602287, 61.402672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406349, -0.492869, -0.769390,
		0.906096, 0.325894, 0.269783,
		0.117772, -0.806767, 0.579014,
		44.188866, 43.360256, 61.576374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723370, 43.688202, 61.043495>,  <44.106426, 43.924995, 61.171066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723370, 43.688202, 61.043495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.509499, 43.370003, 61.157551>,  <44.381176, 43.179081, 61.225983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.509499, 43.370003, 61.157551>,  <44.723370, 43.688202, 61.043495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509499, 43.370003, 61.157551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333265, -0.508562, -0.793914,
		0.776568, -0.329460, 0.537028,
		-0.534675, -0.795500, 0.285135,
		44.349094, 43.131351, 61.243092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153904, 43.109566, 61.005306>,  <44.723370, 43.688202, 61.043495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153904, 43.109566, 61.005306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.791885, 42.942192, 60.974831>,  <44.574673, 42.841766, 60.956547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.791885, 42.942192, 60.974831>,  <45.153904, 43.109566, 61.005306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791885, 42.942192, 60.974831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308543, -0.522656, -0.794752,
		0.292731, -0.742795, 0.602133,
		-0.905047, -0.418433, -0.076187,
		44.520370, 42.816662, 60.951973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321800, 42.406185, 61.015591>,  <45.153904, 43.109566, 61.005306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321800, 42.406185, 61.015591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.967503, 42.468956, 60.840851>,  <44.754925, 42.506618, 60.736008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.967503, 42.468956, 60.840851>,  <45.321800, 42.406185, 61.015591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967503, 42.468956, 60.840851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236554, -0.657136, -0.715691,
		-0.399375, -0.737257, 0.544934,
		-0.885744, 0.156923, -0.436845,
		44.701778, 42.516033, 60.709797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046261, 41.767628, 60.931328>,  <45.321800, 42.406185, 61.015591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046261, 41.767628, 60.931328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.865746, 41.999527, 60.659966>,  <44.757435, 42.138668, 60.497150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.865746, 41.999527, 60.659966>,  <45.046261, 41.767628, 60.931328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865746, 41.999527, 60.659966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193627, -0.678491, -0.708632,
		-0.871117, -0.451156, 0.193941,
		-0.451291, 0.579749, -0.678401,
		44.730358, 42.173450, 60.456444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837692, 41.307766, 60.402924>,  <45.046261, 41.767628, 60.931328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837692, 41.307766, 60.402924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.788765, 41.663071, 60.225822>,  <44.759407, 41.876255, 60.119560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.788765, 41.663071, 60.225822>,  <44.837692, 41.307766, 60.402924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788765, 41.663071, 60.225822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238576, -0.406707, -0.881857,
		-0.963390, -0.213497, -0.162170,
		-0.122318, 0.888262, -0.442752,
		44.752071, 41.929550, 60.092999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554008, 41.080879, 59.703327>,  <44.837692, 41.307766, 60.402924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554008, 41.080879, 59.703327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.669659, 41.461472, 59.661194>,  <44.739048, 41.689827, 59.635914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.669659, 41.461472, 59.661194>,  <44.554008, 41.080879, 59.703327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669659, 41.461472, 59.661194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315653, -0.198636, -0.927851,
		-0.903754, 0.235015, -0.357767,
		0.289125, 0.951479, -0.105334,
		44.756397, 41.746914, 59.629593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074081, 40.870266, 59.243145>,  <44.554008, 41.080879, 59.703327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074081, 40.870266, 59.243145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.890434, 40.543709, 59.103020>,  <43.780247, 40.347775, 59.018944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.890434, 40.543709, 59.103020>,  <44.074081, 40.870266, 59.243145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890434, 40.543709, 59.103020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428335, -0.142035, 0.892387,
		-0.778295, 0.559758, -0.284479,
		-0.459115, -0.816393, -0.350309,
		43.752701, 40.298790, 58.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404335, 40.841076, 59.520134>,  <44.074081, 40.870266, 59.243145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404335, 40.841076, 59.520134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.478874, 40.460106, 59.423668>,  <43.523598, 40.231525, 59.365788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.478874, 40.460106, 59.423668>,  <43.404335, 40.841076, 59.520134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478874, 40.460106, 59.423668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452563, -0.301089, 0.839364,
		-0.872044, -0.047272, -0.487140,
		0.186351, -0.952424, -0.241170,
		43.534779, 40.174377, 59.351318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723495, 40.405983, 59.553101>,  <43.404335, 40.841076, 59.520134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723495, 40.405983, 59.553101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051537, 40.180817, 59.594177>,  <43.248363, 40.045715, 59.618824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051537, 40.180817, 59.594177>,  <42.723495, 40.405983, 59.553101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051537, 40.180817, 59.594177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329349, -0.317606, 0.889188,
		-0.467926, -0.763051, -0.445868,
		0.820106, -0.562921, 0.102694,
		43.297569, 40.011940, 59.624985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547817, 39.788918, 59.925011>,  <42.723495, 40.405983, 59.553101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547817, 39.788918, 59.925011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.946640, 39.802910, 59.952293>,  <43.185932, 39.811306, 59.968662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.946640, 39.802910, 59.952293>,  <42.547817, 39.788918, 59.925011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946640, 39.802910, 59.952293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050341, -0.372134, 0.926813,
		0.057805, -0.927520, -0.369278,
		0.997058, 0.034985, 0.068203,
		43.245758, 39.813404, 59.972755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692493, 39.145355, 60.248180>,  <42.547817, 39.788918, 59.925011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692493, 39.145355, 60.248180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.992874, 39.400711, 60.315754>,  <43.173103, 39.553925, 60.356300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.992874, 39.400711, 60.315754>,  <42.692493, 39.145355, 60.248180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992874, 39.400711, 60.315754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088488, -0.156240, 0.983747,
		0.654406, -0.753691, -0.060838,
		0.750947, 0.638387, 0.168937,
		43.218159, 39.592228, 60.366436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021084, 38.856552, 60.799290>,  <42.692493, 39.145355, 60.248180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021084, 38.856552, 60.799290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.160599, 39.231430, 60.797951>,  <43.244308, 39.456356, 60.797146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.160599, 39.231430, 60.797951>,  <43.021084, 38.856552, 60.799290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160599, 39.231430, 60.797951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057392, -0.017790, 0.998193,
		0.935442, -0.348353, -0.059992,
		0.348791, 0.937195, -0.003351,
		43.265236, 39.512589, 60.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783848, 38.878994, 61.140263>,  <43.021084, 38.856552, 60.799290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783848, 38.878994, 61.140263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.576874, 39.218674, 61.182457>,  <43.452690, 39.422482, 61.207775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.576874, 39.218674, 61.182457>,  <43.783848, 38.878994, 61.140263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576874, 39.218674, 61.182457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058987, -0.158374, 0.985616,
		0.853688, 0.503768, 0.132039,
		-0.517434, 0.849197, 0.105486,
		43.421642, 39.473434, 61.214104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045692, 39.184673, 61.803764>,  <43.783848, 38.878994, 61.140263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045692, 39.184673, 61.803764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715939, 39.400078, 61.734024>,  <43.518085, 39.529320, 61.692181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.715939, 39.400078, 61.734024>,  <44.045692, 39.184673, 61.803764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715939, 39.400078, 61.734024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194541, 0.019692, 0.980697,
		0.531547, 0.842390, 0.088528,
		-0.824386, 0.538509, -0.174346,
		43.468624, 39.561630, 61.681721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097580, 39.813141, 62.193943>,  <44.045692, 39.184673, 61.803764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097580, 39.813141, 62.193943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708302, 39.761017, 62.118141>,  <43.474735, 39.729744, 62.072659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.708302, 39.761017, 62.118141>,  <44.097580, 39.813141, 62.193943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708302, 39.761017, 62.118141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195563, 0.035248, 0.980057,
		-0.121032, 0.990846, -0.059787,
		-0.973194, -0.130311, -0.189507,
		43.416344, 39.721924, 62.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<47.726994, 39.856102, 46.005638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.352692, 39.733498, 45.935871>,  <47.128113, 39.659935, 45.894009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.352692, 39.733498, 45.935871>,  <47.726994, 39.856102, 46.005638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352692, 39.733498, 45.935871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285390, 0.367593, 0.885115,
		-0.207181, 0.878024, -0.431450,
		-0.935750, -0.306510, -0.174421,
		47.071968, 39.641544, 45.883545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333027, 40.343555, 46.395916>,  <47.726994, 39.856102, 46.005638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333027, 40.343555, 46.395916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.071510, 40.048958, 46.326469>,  <46.914600, 39.872200, 46.284801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.071510, 40.048958, 46.326469>,  <47.333027, 40.343555, 46.395916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.071510, 40.048958, 46.326469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427115, 0.169791, 0.888113,
		-0.624607, 0.654793, -0.425573,
		-0.653788, -0.736490, -0.173619,
		46.875374, 39.828011, 46.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.599430, 40.565979, 46.509624>,  <47.333027, 40.343555, 46.395916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.599430, 40.565979, 46.509624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.621506, 40.171448, 46.571732>,  <46.634750, 39.934727, 46.608994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.621506, 40.171448, 46.571732>,  <46.599430, 40.565979, 46.509624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621506, 40.171448, 46.571732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425612, 0.117429, 0.897254,
		-0.903221, -0.115601, -0.413313,
		0.055189, -0.986330, 0.155266,
		46.638062, 39.875549, 46.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008942, 40.461895, 46.812065>,  <46.599430, 40.565979, 46.509624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008942, 40.461895, 46.812065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.177734, 40.109879, 46.899208>,  <46.279011, 39.898670, 46.951492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.177734, 40.109879, 46.899208>,  <46.008942, 40.461895, 46.812065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177734, 40.109879, 46.899208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512339, -0.033233, 0.858140,
		-0.747956, -0.473738, -0.464903,
		0.421984, -0.880039, 0.217858,
		46.304329, 39.845867, 46.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544647, 39.999660, 47.024166>,  <46.008942, 40.461895, 46.812065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544647, 39.999660, 47.024166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.870399, 39.837273, 47.190048>,  <46.065849, 39.739841, 47.289577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.870399, 39.837273, 47.190048>,  <45.544647, 39.999660, 47.024166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870399, 39.837273, 47.190048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412726, 0.097211, 0.905653,
		-0.407983, -0.908701, -0.088389,
		0.814376, -0.405971, 0.414705,
		46.114712, 39.715481, 47.314461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379272, 39.461365, 47.579777>,  <45.544647, 39.999660, 47.024166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379272, 39.461365, 47.579777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.766716, 39.516678, 47.662403>,  <45.999184, 39.549866, 47.711979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.766716, 39.516678, 47.662403>,  <45.379272, 39.461365, 47.579777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766716, 39.516678, 47.662403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212677, 0.030812, 0.976637,
		0.128693, -0.989913, 0.059256,
		0.968611, 0.138289, 0.206566,
		46.057301, 39.558163, 47.724373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566898, 38.993263, 48.057594>,  <45.379272, 39.461365, 47.579777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566898, 38.993263, 48.057594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.839508, 39.280502, 48.113968>,  <46.003075, 39.452847, 48.147793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.839508, 39.280502, 48.113968>,  <45.566898, 38.993263, 48.057594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839508, 39.280502, 48.113968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193891, -0.008512, 0.980986,
		0.705644, -0.695889, 0.133432,
		0.681522, 0.718098, 0.140933,
		46.043964, 39.495934, 48.156246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965500, 38.736645, 48.656048>,  <45.566898, 38.993263, 48.057594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965500, 38.736645, 48.656048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.011024, 39.130424, 48.602528>,  <46.038338, 39.366692, 48.570415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.011024, 39.130424, 48.602528>,  <45.965500, 38.736645, 48.656048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011024, 39.130424, 48.602528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007440, 0.135515, 0.990747,
		0.993475, -0.111760, 0.022747,
		0.113808, 0.984452, -0.133799,
		46.045166, 39.425758, 48.562389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519672, 38.839401, 49.051918>,  <45.965500, 38.736645, 48.656048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519672, 38.839401, 49.051918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.285027, 39.161484, 49.017204>,  <46.144238, 39.354733, 48.996376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.285027, 39.161484, 49.017204>,  <46.519672, 38.839401, 49.051918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.285027, 39.161484, 49.017204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041924, 0.076826, 0.996163,
		0.808780, 0.588003, -0.011310,
		-0.586616, 0.805202, -0.086786,
		46.109043, 39.403046, 48.991169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759827, 39.351788, 49.603649>,  <46.519672, 38.839401, 49.051918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759827, 39.351788, 49.603649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.396828, 39.470886, 49.485126>,  <46.179028, 39.542343, 49.414013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.396828, 39.470886, 49.485126>,  <46.759827, 39.351788, 49.603649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396828, 39.470886, 49.485126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241854, 0.206391, 0.948108,
		0.343448, 0.932069, -0.115289,
		-0.907497, 0.297743, -0.296309,
		46.124580, 39.560207, 49.396233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650215, 39.879025, 49.974369>,  <46.759827, 39.351788, 49.603649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650215, 39.879025, 49.974369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.277954, 39.815315, 49.842598>,  <46.054600, 39.777092, 49.763535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.277954, 39.815315, 49.842598>,  <46.650215, 39.879025, 49.974369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277954, 39.815315, 49.842598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359647, 0.232288, 0.903713,
		-0.067412, 0.959519, -0.273459,
		-0.930650, -0.159269, -0.329429,
		45.998760, 39.767536, 49.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.203800, 40.485729, 50.112175>,  <46.650215, 39.879025, 49.974369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.203800, 40.485729, 50.112175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.942978, 40.182678, 50.100670>,  <45.786484, 40.000847, 50.093765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.942978, 40.182678, 50.100670>,  <46.203800, 40.485729, 50.112175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942978, 40.182678, 50.100670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387654, 0.300554, 0.871431,
		-0.651572, 0.579373, -0.489674,
		-0.652057, -0.757624, -0.028764,
		45.747360, 39.955391, 50.092041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.317398, 41.044010, 50.540070>,  <46.203800, 40.485729, 50.112175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.317398, 41.044010, 50.540070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.656631, 41.076744, 50.749470>,  <46.860172, 41.096386, 50.875111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.656631, 41.076744, 50.749470>,  <46.317398, 41.044010, 50.540070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.656631, 41.076744, 50.749470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497590, 0.216493, -0.839962,
		-0.182075, 0.972848, 0.142883,
		0.848088, 0.081839, 0.523497,
		46.911057, 41.101295, 50.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566631, 41.638115, 50.367512>,  <46.317398, 41.044010, 50.540070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566631, 41.638115, 50.367512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892784, 41.455307, 50.509655>,  <47.088478, 41.345623, 50.594940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.892784, 41.455307, 50.509655>,  <46.566631, 41.638115, 50.367512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892784, 41.455307, 50.509655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552595, 0.431428, -0.713098,
		0.172589, 0.777819, 0.604327,
		0.815384, -0.457021, 0.355359,
		47.137398, 41.318199, 50.616264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.140923, 42.100044, 50.126392>,  <46.566631, 41.638115, 50.367512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.140923, 42.100044, 50.126392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.341423, 41.770981, 50.233711>,  <47.461723, 41.573544, 50.298103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.341423, 41.770981, 50.233711>,  <47.140923, 42.100044, 50.126392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341423, 41.770981, 50.233711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768537, 0.280787, -0.574899,
		0.397611, 0.494365, 0.772987,
		0.501255, -0.822655, 0.268294,
		47.491798, 41.524185, 50.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.844093, 42.323765, 50.337292>,  <47.140923, 42.100044, 50.126392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.844093, 42.323765, 50.337292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.858170, 41.943169, 50.215031>,  <47.866615, 41.714809, 50.141674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.858170, 41.943169, 50.215031>,  <47.844093, 42.323765, 50.337292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.858170, 41.943169, 50.215031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752689, 0.226431, -0.618214,
		0.657435, -0.208308, 0.724145,
		0.035190, -0.951492, -0.305655,
		47.868725, 41.657722, 50.123333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.473328, 42.020653, 50.519550>,  <47.844093, 42.323765, 50.337292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.473328, 42.020653, 50.519550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.330261, 41.791412, 50.224628>,  <48.244423, 41.653866, 50.047676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.330261, 41.791412, 50.224628>,  <48.473328, 42.020653, 50.519550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.330261, 41.791412, 50.224628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819212, 0.186461, -0.542332,
		0.448293, -0.797987, 0.402804,
		-0.357666, -0.573105, -0.737309,
		48.222961, 41.619480, 50.003437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.024445, 41.739414, 50.307537>,  <48.473328, 42.020653, 50.519550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.024445, 41.739414, 50.307537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.754860, 41.704124, 50.014145>,  <48.593109, 41.682949, 49.838108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.754860, 41.704124, 50.014145>,  <49.024445, 41.739414, 50.307537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.754860, 41.704124, 50.014145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710687, 0.193701, -0.676316,
		0.201747, -0.977085, -0.067844,
		-0.673960, -0.088229, -0.733480,
		48.552673, 41.677658, 49.794102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.401184, 41.443344, 49.802219>,  <49.024445, 41.739414, 50.307537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.401184, 41.443344, 49.802219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.080544, 41.583832, 49.608696>,  <48.888157, 41.668125, 49.492580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.080544, 41.583832, 49.608696>,  <49.401184, 41.443344, 49.802219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.080544, 41.583832, 49.608696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548317, 0.109363, -0.829089,
		-0.238284, -0.929883, -0.280248,
		-0.801604, 0.351223, -0.483811,
		48.840061, 41.689198, 49.463554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.423683, 41.147552, 49.122425>,  <49.401184, 41.443344, 49.802219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.423683, 41.147552, 49.122425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.190071, 41.471100, 49.095184>,  <49.049904, 41.665230, 49.078838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.190071, 41.471100, 49.095184>,  <49.423683, 41.147552, 49.122425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.190071, 41.471100, 49.095184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463049, 0.263073, -0.846391,
		-0.666702, -0.525855, -0.528189,
		-0.584032, 0.808869, -0.068105,
		49.014862, 41.713760, 49.074753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.264771, 41.161686, 48.457554>,  <49.423683, 41.147552, 49.122425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.264771, 41.161686, 48.457554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.191177, 41.529854, 48.595524>,  <49.147022, 41.750755, 48.678307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.191177, 41.529854, 48.595524>,  <49.264771, 41.161686, 48.457554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.191177, 41.529854, 48.595524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448029, 0.390874, -0.804045,
		-0.874883, 0.006606, -0.484289,
		-0.183984, 0.920421, 0.344929,
		49.135983, 41.805981, 48.699001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.932369, 41.510323, 47.919930>,  <49.264771, 41.161686, 48.457554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.932369, 41.510323, 47.919930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.077232, 41.797424, 48.157814>,  <49.164150, 41.969685, 48.300545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.077232, 41.797424, 48.157814>,  <48.932369, 41.510323, 47.919930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.077232, 41.797424, 48.157814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353834, 0.484403, -0.800097,
		-0.862349, 0.500186, -0.078537,
		0.362154, 0.717752, 0.594708,
		49.185879, 42.012749, 48.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.703896, 42.079311, 47.663612>,  <48.932369, 41.510323, 47.919930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.703896, 42.079311, 47.663612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.023796, 42.181595, 47.880871>,  <49.215736, 42.242966, 48.011227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.023796, 42.181595, 47.880871>,  <48.703896, 42.079311, 47.663612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.023796, 42.181595, 47.880871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327543, 0.572351, -0.751751,
		-0.503097, 0.779120, 0.373986,
		0.799755, 0.255707, 0.543144,
		49.263721, 42.258308, 48.043816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.713650, 42.840691, 47.635788>,  <48.703896, 42.079311, 47.663612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.713650, 42.840691, 47.635788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.073227, 42.701469, 47.742188>,  <49.288975, 42.617935, 47.806026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.073227, 42.701469, 47.742188>,  <48.713650, 42.840691, 47.635788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.073227, 42.701469, 47.742188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424893, 0.545007, -0.722796,
		0.106603, 0.762774, 0.637818,
		0.898945, -0.348056, 0.265998,
		49.342911, 42.597054, 47.821987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.145523, 43.429287, 47.767464>,  <48.713650, 42.840691, 47.635788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.145523, 43.429287, 47.767464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.406517, 43.129028, 47.725906>,  <49.563114, 42.948872, 47.700974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.406517, 43.129028, 47.725906>,  <49.145523, 43.429287, 47.767464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.406517, 43.129028, 47.725906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380264, 0.442907, -0.811931,
		0.655487, 0.490267, 0.574434,
		0.652484, -0.750647, -0.103889,
		49.602261, 42.903835, 47.694740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.675774, 43.757576, 47.694489>,  <49.145523, 43.429287, 47.767464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.675774, 43.757576, 47.694489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.741768, 43.398125, 47.531883>,  <49.781364, 43.182453, 47.434322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.741768, 43.398125, 47.531883>,  <49.675774, 43.757576, 47.694489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.741768, 43.398125, 47.531883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376812, 0.438325, -0.816017,
		0.911477, -0.018544, 0.410932,
		0.164989, -0.898625, -0.406510,
		49.791264, 43.128536, 47.409931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.310345, 43.773834, 47.543987>,  <49.675774, 43.757576, 47.694489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.310345, 43.773834, 47.543987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.127693, 43.505081, 47.310730>,  <50.018101, 43.343830, 47.170776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<50.127693, 43.505081, 47.310730>,  <50.310345, 43.773834, 47.543987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<50.127693, 43.505081, 47.310730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373493, 0.450135, -0.811098,
		0.807461, -0.588171, 0.045401,
		-0.456629, -0.671887, -0.583145,
		49.990704, 43.303516, 47.135788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.852875, 43.971710, 46.973465>,  <50.310345, 43.773834, 47.543987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.852875, 43.971710, 46.973465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.765663, 44.305237, 46.770599>,  <49.713337, 44.505352, 46.648880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.765663, 44.305237, 46.770599>,  <49.852875, 43.971710, 46.973465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.765663, 44.305237, 46.770599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563260, 0.316876, 0.763104,
		0.796996, 0.452043, 0.400567,
		-0.218026, 0.833814, -0.507167,
		49.700256, 44.555382, 46.618450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.987549, 44.502533, 47.403400>,  <49.852875, 43.971710, 46.973465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.987549, 44.502533, 47.403400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.705566, 44.605614, 47.139091>,  <49.536377, 44.667461, 46.980507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.705566, 44.605614, 47.139091>,  <49.987549, 44.502533, 47.403400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.705566, 44.605614, 47.139091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585939, 0.313348, 0.747321,
		0.399638, 0.914004, -0.069900,
		-0.704958, 0.257701, -0.660776,
		49.494080, 44.682922, 46.940857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.764168, 45.115318, 47.520634>,  <49.987549, 44.502533, 47.403400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.764168, 45.115318, 47.520634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.462540, 44.979889, 47.295513>,  <49.281563, 44.898632, 47.160439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.462540, 44.979889, 47.295513>,  <49.764168, 45.115318, 47.520634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.462540, 44.979889, 47.295513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593542, -0.015621, 0.804651,
		-0.281226, 0.940810, -0.189179,
		-0.754069, -0.338574, -0.562804,
		49.236320, 44.878315, 47.126671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.193581, 45.533360, 47.691845>,  <49.764168, 45.115318, 47.520634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.193581, 45.533360, 47.691845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.028778, 45.202568, 47.538818>,  <48.929897, 45.004093, 47.447002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.028778, 45.202568, 47.538818>,  <49.193581, 45.533360, 47.691845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.028778, 45.202568, 47.538818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559807, -0.101539, 0.822379,
		-0.718933, 0.552992, -0.421112,
		-0.412009, -0.826976, -0.382568,
		48.905174, 44.954475, 47.424049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.490803, 45.610229, 47.686298>,  <49.193581, 45.533360, 47.691845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.490803, 45.610229, 47.686298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.521263, 45.211403, 47.683422>,  <48.539539, 44.972107, 47.681694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.521263, 45.211403, 47.683422>,  <48.490803, 45.610229, 47.686298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.521263, 45.211403, 47.683422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541806, -0.047435, 0.839164,
		-0.837047, -0.060003, -0.543831,
		0.076149, -0.997070, -0.007195,
		48.544109, 44.912281, 47.681263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779137, 45.409813, 47.861404>,  <48.490803, 45.610229, 47.686298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779137, 45.409813, 47.861404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.009758, 45.091187, 47.934139>,  <48.148132, 44.900009, 47.977779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.009758, 45.091187, 47.934139>,  <47.779137, 45.409813, 47.861404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.009758, 45.091187, 47.934139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586723, -0.248751, 0.770635,
		-0.568633, -0.550998, -0.610784,
		0.576552, -0.796570, 0.181835,
		48.182724, 44.852215, 47.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322697, 44.881905, 48.055740>,  <47.779137, 45.409813, 47.861404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322697, 44.881905, 48.055740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.670296, 44.752983, 48.205925>,  <47.878853, 44.675632, 48.296036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.670296, 44.752983, 48.205925>,  <47.322697, 44.881905, 48.055740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670296, 44.752983, 48.205925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452426, -0.210207, 0.866674,
		-0.200360, -0.923020, -0.328466,
		0.869003, -0.322253, 0.375482,
		47.930992, 44.656292, 48.318565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.199856, 44.185516, 48.311256>,  <47.322697, 44.881905, 48.055740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.199856, 44.185516, 48.311256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.534950, 44.304153, 48.494656>,  <47.736008, 44.375336, 48.604694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.534950, 44.304153, 48.494656>,  <47.199856, 44.185516, 48.311256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534950, 44.304153, 48.494656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410941, -0.210516, 0.887023,
		0.359609, -0.931512, -0.054474,
		0.837740, 0.296596, 0.458500,
		47.786274, 44.393131, 48.632206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398880, 43.726246, 48.901207>,  <47.199856, 44.185516, 48.311256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398880, 43.726246, 48.901207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.608414, 44.055443, 48.989098>,  <47.734135, 44.252960, 49.041832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.608414, 44.055443, 48.989098>,  <47.398880, 43.726246, 48.901207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.608414, 44.055443, 48.989098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370635, -0.012044, 0.928701,
		0.766962, -0.567921, 0.298721,
		0.523831, 0.822995, 0.219728,
		47.765564, 44.302341, 49.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740921, 43.619644, 49.554977>,  <47.398880, 43.726246, 48.901207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740921, 43.619644, 49.554977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.711205, 44.016083, 49.510796>,  <47.693375, 44.253948, 49.484287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.711205, 44.016083, 49.510796>,  <47.740921, 43.619644, 49.554977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711205, 44.016083, 49.510796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336901, 0.079305, 0.938194,
		0.938605, 0.106907, 0.328012,
		-0.074287, 0.991101, -0.110453,
		47.688919, 44.313412, 49.477661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.984451, 43.801285, 50.155571>,  <47.740921, 43.619644, 49.554977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.984451, 43.801285, 50.155571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.811569, 44.134941, 50.018509>,  <47.707840, 44.335133, 49.936272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.811569, 44.134941, 50.018509>,  <47.984451, 43.801285, 50.155571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811569, 44.134941, 50.018509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244747, 0.257213, 0.934848,
		0.867927, 0.487911, 0.092984,
		-0.432206, 0.834137, -0.342657,
		47.681908, 44.385181, 49.915710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.297428, 44.371101, 50.593178>,  <47.984451, 43.801285, 50.155571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.297428, 44.371101, 50.593178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.946129, 44.493149, 50.445896>,  <47.735348, 44.566380, 50.357529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.946129, 44.493149, 50.445896>,  <48.297428, 44.371101, 50.593178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.946129, 44.493149, 50.445896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286082, 0.281744, 0.915848,
		0.383183, 0.909682, -0.160153,
		-0.878253, 0.305121, -0.368203,
		47.682652, 44.584686, 50.335434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.188679, 45.026180, 50.873318>,  <48.297428, 44.371101, 50.593178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.188679, 45.026180, 50.873318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.822075, 44.919258, 50.754276>,  <47.602112, 44.855106, 50.682850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.822075, 44.919258, 50.754276>,  <48.188679, 45.026180, 50.873318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.822075, 44.919258, 50.754276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369099, 0.278261, 0.886756,
		-0.154220, 0.922562, -0.353689,
		-0.916505, -0.267302, -0.297604,
		47.547123, 44.839069, 50.664997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872543, 45.585930, 50.932686>,  <48.188679, 45.026180, 50.873318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872543, 45.585930, 50.932686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.590088, 45.302773, 50.939095>,  <47.420616, 45.132877, 50.942940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.590088, 45.302773, 50.939095>,  <47.872543, 45.585930, 50.932686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.590088, 45.302773, 50.939095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392111, 0.409784, 0.823606,
		-0.589591, 0.575296, -0.566937,
		-0.706138, -0.707893, 0.016025,
		47.378246, 45.090405, 50.943901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.238014, 45.946384, 51.009544>,  <47.872543, 45.585930, 50.932686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.238014, 45.946384, 51.009544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.134346, 45.572014, 51.104931>,  <47.072144, 45.347389, 51.162163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.134346, 45.572014, 51.104931>,  <47.238014, 45.946384, 51.009544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134346, 45.572014, 51.104931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581919, 0.348373, 0.734851,
		-0.770844, 0.051686, -0.634924,
		-0.259171, -0.935930, 0.238464,
		47.056595, 45.291233, 51.176472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586967, 45.993153, 50.983086>,  <47.238014, 45.946384, 51.009544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586967, 45.993153, 50.983086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.688667, 45.694077, 51.228466>,  <46.749687, 45.514633, 51.375694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.688667, 45.694077, 51.228466>,  <46.586967, 45.993153, 50.983086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688667, 45.694077, 51.228466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702355, 0.293312, 0.648588,
		-0.664873, -0.595761, -0.450569,
		0.254246, -0.747688, 0.613451,
		46.764942, 45.469769, 51.412502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932495, 45.684280, 51.242031>,  <46.586967, 45.993153, 50.983086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932495, 45.684280, 51.242031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.193687, 45.548019, 51.512608>,  <46.350403, 45.466263, 51.674953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.193687, 45.548019, 51.512608>,  <45.932495, 45.684280, 51.242031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.193687, 45.548019, 51.512608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635484, 0.239462, 0.734043,
		-0.412037, -0.909182, -0.060117,
		0.652982, -0.340656, 0.676437,
		46.389584, 45.445824, 51.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591042, 45.211517, 51.795429>,  <45.932495, 45.684280, 51.242031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591042, 45.211517, 51.795429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.930252, 45.331383, 51.970268>,  <46.133778, 45.403301, 52.075172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.930252, 45.331383, 51.970268>,  <45.591042, 45.211517, 51.795429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930252, 45.331383, 51.970268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523736, 0.347871, 0.777616,
		0.080971, -0.888361, 0.451949,
		0.848024, 0.299666, 0.437100,
		46.184658, 45.421284, 52.101398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626431, 44.886398, 52.376560>,  <45.591042, 45.211517, 51.795429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626431, 44.886398, 52.376560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.891975, 45.174774, 52.456085>,  <46.051304, 45.347801, 52.503799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.891975, 45.174774, 52.456085>,  <45.626431, 44.886398, 52.376560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891975, 45.174774, 52.456085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500848, 0.231177, 0.834091,
		0.555368, -0.653302, 0.514552,
		0.663866, 0.720940, 0.198816,
		46.091137, 45.391056, 52.515732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.873627, 44.779545, 53.020329>,  <45.626431, 44.886398, 52.376560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.873627, 44.779545, 53.020329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.923264, 45.165939, 52.929577>,  <45.953045, 45.397778, 52.875126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.923264, 45.165939, 52.929577>,  <45.873627, 44.779545, 53.020329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923264, 45.165939, 52.929577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273761, 0.253099, 0.927899,
		0.953759, -0.053031, 0.295855,
		0.124088, 0.965986, -0.226878,
		45.960491, 45.455734, 52.861515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.186829, 45.125740, 53.565765>,  <45.873627, 44.779545, 53.020329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.186829, 45.125740, 53.565765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.010170, 45.441010, 53.394314>,  <45.904175, 45.630173, 53.291443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.010170, 45.441010, 53.394314>,  <46.186829, 45.125740, 53.565765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010170, 45.441010, 53.394314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328645, 0.302424, 0.894724,
		0.834830, 0.536019, 0.125466,
		-0.441645, 0.788177, -0.428633,
		45.877678, 45.677464, 53.265724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409740, 45.723644, 53.869831>,  <46.186829, 45.125740, 53.565765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409740, 45.723644, 53.869831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.069237, 45.851830, 53.703625>,  <45.864933, 45.928741, 53.603901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.069237, 45.851830, 53.703625>,  <46.409740, 45.723644, 53.869831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069237, 45.851830, 53.703625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300193, 0.352069, 0.886528,
		0.430390, 0.879404, -0.203502,
		-0.851263, 0.320462, -0.415518,
		45.813858, 45.947968, 53.578968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337162, 46.416321, 54.093155>,  <46.409740, 45.723644, 53.869831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337162, 46.416321, 54.093155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982155, 46.276886, 53.972626>,  <45.769150, 46.193226, 53.900311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982155, 46.276886, 53.972626>,  <46.337162, 46.416321, 54.093155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982155, 46.276886, 53.972626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431450, 0.399172, 0.809019,
		-0.161737, 0.848025, -0.504672,
		-0.887520, -0.348589, -0.301320,
		45.715900, 46.172310, 53.882229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852283, 46.941154, 54.133217>,  <46.337162, 46.416321, 54.093155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852283, 46.941154, 54.133217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.614815, 46.619339, 54.139652>,  <45.472332, 46.426250, 54.143513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.614815, 46.619339, 54.139652>,  <45.852283, 46.941154, 54.133217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614815, 46.619339, 54.139652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354502, 0.279429, 0.892327,
		-0.722410, 0.524051, -0.451103,
		-0.593676, -0.804543, 0.016085,
		45.436710, 46.377975, 54.144478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140968, 47.188126, 54.534943>,  <45.852283, 46.941154, 54.133217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140968, 47.188126, 54.534943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.163391, 46.788757, 54.536079>,  <45.176846, 46.549137, 54.536762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.163391, 46.788757, 54.536079>,  <45.140968, 47.188126, 54.534943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163391, 46.788757, 54.536079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459637, -0.023279, 0.887802,
		-0.886336, -0.051069, -0.460217,
		0.056053, -0.998424, 0.002840,
		45.180206, 46.489231, 54.536930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466541, 47.061787, 54.782749>,  <45.140968, 47.188126, 54.534943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466541, 47.061787, 54.782749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.707603, 46.749962, 54.850967>,  <44.852242, 46.562866, 54.891899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.707603, 46.749962, 54.850967>,  <44.466541, 47.061787, 54.782749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707603, 46.749962, 54.850967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280033, -0.006474, 0.959968,
		-0.747252, -0.626290, -0.222206,
		0.602657, -0.779563, 0.170544,
		44.888401, 46.516094, 54.902130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082218, 46.558552, 55.063366>,  <44.466541, 47.061787, 54.782749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082218, 46.558552, 55.063366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.450966, 46.468956, 55.189854>,  <44.672215, 46.415199, 55.265747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.450966, 46.468956, 55.189854>,  <44.082218, 46.558552, 55.063366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450966, 46.468956, 55.189854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328413, -0.018438, 0.944354,
		-0.205695, -0.974417, -0.090558,
		0.921865, -0.223990, 0.316218,
		44.727524, 46.401760, 55.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.645832, 46.005096, 54.766708>,  <44.082218, 46.558552, 55.063366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.645832, 46.005096, 54.766708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.283413, 45.886101, 54.646320>,  <43.065964, 45.814705, 54.574089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.283413, 45.886101, 54.646320>,  <43.645832, 46.005096, 54.766708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283413, 45.886101, 54.646320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194754, 0.338288, -0.920669,
		0.375704, -0.892783, -0.248567,
		-0.906045, -0.297490, -0.300969,
		43.011600, 45.796856, 54.556030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674408, 45.532303, 54.094707>,  <43.645832, 46.005096, 54.766708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674408, 45.532303, 54.094707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.303478, 45.681190, 54.110298>,  <43.080921, 45.770523, 54.119652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.303478, 45.681190, 54.110298>,  <43.674408, 45.532303, 54.094707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303478, 45.681190, 54.110298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003987, 0.113976, -0.993475,
		-0.374236, -0.921119, -0.107177,
		-0.927325, 0.372221, 0.038981,
		43.025280, 45.792858, 54.121994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288712, 45.191376, 53.524822>,  <43.674408, 45.532303, 54.094707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288712, 45.191376, 53.524822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084198, 45.526215, 53.602654>,  <42.961491, 45.727119, 53.649353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084198, 45.526215, 53.602654>,  <43.288712, 45.191376, 53.524822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084198, 45.526215, 53.602654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165219, 0.126443, -0.978118,
		-0.843383, -0.532240, 0.073657,
		-0.511281, 0.837098, 0.194576,
		42.930813, 45.777344, 53.661026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785809, 45.215118, 53.093433>,  <43.288712, 45.191376, 53.524822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785809, 45.215118, 53.093433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.799446, 45.599564, 53.203049>,  <42.807629, 45.830231, 53.268818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.799446, 45.599564, 53.203049>,  <42.785809, 45.215118, 53.093433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799446, 45.599564, 53.203049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001138, 0.274232, -0.961663,
		-0.999418, 0.032476, 0.010443,
		0.034094, 0.961115, 0.274036,
		42.809673, 45.887897, 53.285259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297844, 45.509319, 52.654686>,  <42.785809, 45.215118, 53.093433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297844, 45.509319, 52.654686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.536777, 45.814804, 52.752609>,  <42.680138, 45.998096, 52.811363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.536777, 45.814804, 52.752609>,  <42.297844, 45.509319, 52.654686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536777, 45.814804, 52.752609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110728, 0.223786, -0.968328,
		-0.794312, 0.605522, 0.049110,
		0.597334, 0.763717, 0.244804,
		42.715977, 46.043919, 52.826050>
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
