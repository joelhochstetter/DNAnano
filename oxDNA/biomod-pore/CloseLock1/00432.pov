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
	<24.135324, 35.150692, 34.740990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280581, 35.115887, 35.112053>,  <24.367735, 35.095005, 35.334690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280581, 35.115887, 35.112053>,  <24.135324, 35.150692, 34.740990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280581, 35.115887, 35.112053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919995, 0.191029, -0.342223,
		-0.147432, 0.977720, 0.149422,
		0.363142, -0.087013, 0.927662,
		24.389523, 35.089783, 35.390350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559834, 35.728191, 34.926029>,  <24.135324, 35.150692, 34.740990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559834, 35.728191, 34.926029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684425, 35.388313, 35.096207>,  <24.759180, 35.184387, 35.198315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684425, 35.388313, 35.096207>,  <24.559834, 35.728191, 34.926029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684425, 35.388313, 35.096207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933379, 0.189575, -0.304736,
		0.178277, 0.492024, 0.852132,
		0.311481, -0.849690, 0.425448,
		24.777870, 35.133408, 35.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272787, 35.914318, 35.244469>,  <24.559834, 35.728191, 34.926029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272787, 35.914318, 35.244469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231869, 35.527428, 35.151516>,  <25.207317, 35.295292, 35.095745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.231869, 35.527428, 35.151516>,  <25.272787, 35.914318, 35.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.231869, 35.527428, 35.151516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858547, 0.032143, -0.511727,
		0.502427, -0.251861, 0.827123,
		-0.102298, -0.967229, -0.232384,
		25.201180, 35.237259, 35.081802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903303, 35.536777, 35.384937>,  <25.272787, 35.914318, 35.244469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903303, 35.536777, 35.384937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694958, 35.361065, 35.092163>,  <25.569950, 35.255638, 34.916496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694958, 35.361065, 35.092163>,  <25.903303, 35.536777, 35.384937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694958, 35.361065, 35.092163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849779, -0.185376, -0.493469,
		0.081086, -0.879017, 0.469846,
		-0.520865, -0.439278, -0.731938,
		25.538698, 35.229282, 34.872581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217266, 34.834038, 35.197269>,  <25.903303, 35.536777, 35.384937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217266, 34.834038, 35.197269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007511, 34.971657, 34.885719>,  <25.881659, 35.054226, 34.698788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007511, 34.971657, 34.885719>,  <26.217266, 34.834038, 35.197269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007511, 34.971657, 34.885719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703013, -0.341156, -0.624007,
		-0.480405, -0.874783, -0.062971,
		-0.524388, 0.344046, -0.778877,
		25.850195, 35.074871, 34.652058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682627, 35.278152, 35.388557>,  <26.217266, 34.834038, 35.197269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682627, 35.278152, 35.388557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077494, 35.313293, 35.335213>,  <27.314413, 35.334377, 35.303207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077494, 35.313293, 35.335213>,  <26.682627, 35.278152, 35.388557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077494, 35.313293, 35.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156208, 0.357554, -0.920735,
		-0.033209, 0.929751, 0.366689,
		0.987166, 0.087857, -0.133361,
		27.373644, 35.339649, 35.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815977, 35.940880, 35.235962>,  <26.682627, 35.278152, 35.388557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815977, 35.940880, 35.235962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092091, 35.696106, 35.081535>,  <27.257759, 35.549244, 34.988880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092091, 35.696106, 35.081535>,  <26.815977, 35.940880, 35.235962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092091, 35.696106, 35.081535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115520, 0.433527, -0.893705,
		0.714257, 0.661509, 0.228566,
		0.690284, -0.611931, -0.386068,
		27.299175, 35.512527, 34.965714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431137, 36.415497, 34.969238>,  <26.815977, 35.940880, 35.235962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431137, 36.415497, 34.969238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455980, 36.056049, 34.795517>,  <27.470886, 35.840382, 34.691284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455980, 36.056049, 34.795517>,  <27.431137, 36.415497, 34.969238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455980, 36.056049, 34.795517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036264, 0.436889, -0.898784,
		0.997410, 0.040071, 0.059722,
		0.062107, -0.898623, -0.434304,
		27.474613, 35.786461, 34.665226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929098, 36.495445, 34.374348>,  <27.431137, 36.415497, 34.969238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929098, 36.495445, 34.374348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729546, 36.176636, 34.238186>,  <27.609814, 35.985352, 34.156490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729546, 36.176636, 34.238186>,  <27.929098, 36.495445, 34.374348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729546, 36.176636, 34.238186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145127, 0.464052, -0.873839,
		0.854433, -0.386540, -0.347176,
		-0.498881, -0.797022, -0.340404,
		27.579882, 35.937531, 34.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086990, 36.457722, 33.731441>,  <27.929098, 36.495445, 34.374348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086990, 36.457722, 33.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750805, 36.241360, 33.744347>,  <27.549093, 36.111542, 33.752090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750805, 36.241360, 33.744347>,  <28.086990, 36.457722, 33.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750805, 36.241360, 33.744347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312367, 0.434995, -0.844515,
		0.442783, -0.719854, -0.534559,
		-0.840458, -0.540915, 0.032250,
		27.498665, 36.079086, 33.754025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018126, 36.144363, 33.063145>,  <28.086990, 36.457722, 33.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018126, 36.144363, 33.063145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649094, 36.151012, 33.217323>,  <27.427675, 36.155003, 33.309830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649094, 36.151012, 33.217323>,  <28.018126, 36.144363, 33.063145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649094, 36.151012, 33.217323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324229, 0.508068, -0.797962,
		-0.209100, -0.861157, -0.463343,
		-0.922579, 0.016624, 0.385449,
		27.372320, 36.155998, 33.332958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.634083, 35.850414, 32.545925>,  <28.018126, 36.144363, 33.063145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.634083, 35.850414, 32.545925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393118, 36.062622, 32.784470>,  <27.248539, 36.189945, 32.927597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393118, 36.062622, 32.784470>,  <27.634083, 35.850414, 32.545925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393118, 36.062622, 32.784470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354454, 0.491632, -0.795400,
		-0.715164, -0.690544, -0.108122,
		-0.602414, 0.530517, 0.596363,
		27.212393, 36.221779, 32.963379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971138, 35.699413, 32.238777>,  <27.634083, 35.850414, 32.545925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971138, 35.699413, 32.238777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937265, 36.037071, 32.450531>,  <26.916943, 36.239666, 32.577583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937265, 36.037071, 32.450531>,  <26.971138, 35.699413, 32.238777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937265, 36.037071, 32.450531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443899, 0.443697, -0.778516,
		-0.892067, -0.300918, 0.337144,
		-0.084680, 0.844146, 0.529384,
		26.911861, 36.290314, 32.609344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406847, 36.005253, 31.967396>,  <26.971138, 35.699413, 32.238777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406847, 36.005253, 31.967396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584101, 36.302052, 32.168625>,  <26.690453, 36.480129, 32.289364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584101, 36.302052, 32.168625>,  <26.406847, 36.005253, 31.967396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584101, 36.302052, 32.168625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347773, 0.659517, -0.666402,
		-0.826249, 0.120349, 0.550298,
		0.443132, 0.741993, 0.503071,
		26.717041, 36.524651, 32.319546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946972, 36.494770, 32.085270>,  <26.406847, 36.005253, 31.967396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946972, 36.494770, 32.085270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289427, 36.699295, 32.115177>,  <26.494900, 36.822010, 32.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289427, 36.699295, 32.115177>,  <25.946972, 36.494770, 32.085270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289427, 36.699295, 32.115177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304491, 0.616058, -0.726469,
		-0.417514, 0.599191, 0.683120,
		0.856135, 0.511315, 0.074764,
		26.546267, 36.852688, 32.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782074, 37.170174, 31.923658>,  <25.946972, 36.494770, 32.085270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782074, 37.170174, 31.923658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181240, 37.175499, 31.898411>,  <26.420740, 37.178696, 31.883263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181240, 37.175499, 31.898411>,  <25.782074, 37.170174, 31.923658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181240, 37.175499, 31.898411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058266, 0.605937, -0.793376,
		0.027685, 0.795401, 0.605451,
		0.997917, 0.013313, -0.063120,
		26.480616, 37.179493, 31.879475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026470, 37.923786, 31.845490>,  <25.782074, 37.170174, 31.923658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026470, 37.923786, 31.845490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326460, 37.706329, 31.694761>,  <26.506454, 37.575855, 31.604324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326460, 37.706329, 31.694761>,  <26.026470, 37.923786, 31.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326460, 37.706329, 31.694761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092160, 0.478236, -0.873382,
		0.655016, 0.689741, 0.308562,
		0.749974, -0.543643, -0.376819,
		26.551453, 37.543236, 31.581717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553864, 38.412243, 31.586996>,  <26.026470, 37.923786, 31.845490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553864, 38.412243, 31.586996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614321, 38.061581, 31.404295>,  <26.650595, 37.851181, 31.294674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614321, 38.061581, 31.404295>,  <26.553864, 38.412243, 31.586996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614321, 38.061581, 31.404295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182320, 0.478856, -0.858753,
		0.971553, 0.046520, 0.232208,
		0.151143, -0.876660, -0.456753,
		26.659664, 37.798584, 31.267269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989225, 38.609077, 31.071594>,  <26.553864, 38.412243, 31.586996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989225, 38.609077, 31.071594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836514, 38.253475, 30.970474>,  <26.744886, 38.040112, 30.909801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836514, 38.253475, 30.970474>,  <26.989225, 38.609077, 31.071594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836514, 38.253475, 30.970474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050054, 0.293005, -0.954800,
		0.922897, -0.351869, -0.156362,
		-0.381779, -0.889009, -0.252801,
		26.721979, 37.986774, 30.894634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446220, 38.432606, 30.511232>,  <26.989225, 38.609077, 31.071594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446220, 38.432606, 30.511232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098589, 38.236141, 30.487684>,  <26.890009, 38.118263, 30.473555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098589, 38.236141, 30.487684>,  <27.446220, 38.432606, 30.511232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098589, 38.236141, 30.487684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118187, 0.321725, -0.939428,
		0.480347, -0.809480, -0.337653,
		-0.869079, -0.491158, -0.058870,
		26.837866, 38.088795, 30.470024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494970, 38.023933, 29.956999>,  <27.446220, 38.432606, 30.511232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494970, 38.023933, 29.956999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104410, 38.076977, 30.025187>,  <26.870073, 38.108803, 30.066099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104410, 38.076977, 30.025187>,  <27.494970, 38.023933, 29.956999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104410, 38.076977, 30.025187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130609, 0.266064, -0.955066,
		-0.172002, -0.954791, -0.242465,
		-0.976400, 0.132606, 0.170468,
		26.811491, 38.116756, 30.076326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166111, 37.664051, 29.334314>,  <27.494970, 38.023933, 29.956999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166111, 37.664051, 29.334314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915129, 37.931225, 29.494394>,  <26.764540, 38.091530, 29.590443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915129, 37.931225, 29.494394>,  <27.166111, 37.664051, 29.334314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915129, 37.931225, 29.494394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177997, 0.377316, -0.908818,
		-0.758034, -0.641478, -0.117859,
		-0.627456, 0.667937, 0.400199,
		26.726892, 38.131607, 29.614454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717169, 37.627178, 28.782642>,  <27.166111, 37.664051, 29.334314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717169, 37.627178, 28.782642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627754, 37.956478, 28.991367>,  <26.574106, 38.154060, 29.116602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627754, 37.956478, 28.991367>,  <26.717169, 37.627178, 28.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627754, 37.956478, 28.991367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252755, 0.468085, -0.846765,
		-0.941353, -0.321173, 0.103448,
		-0.223535, 0.823252, 0.521811,
		26.560694, 38.203453, 29.147911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023560, 37.669109, 28.586838>,  <26.717169, 37.627178, 28.782642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023560, 37.669109, 28.586838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164537, 38.019569, 28.718382>,  <26.249125, 38.229843, 28.797308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164537, 38.019569, 28.718382>,  <26.023560, 37.669109, 28.586838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164537, 38.019569, 28.718382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258307, 0.428833, -0.865667,
		-0.899478, 0.220152, 0.377454,
		0.352443, 0.876148, 0.328859,
		26.270271, 38.282413, 28.817039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565674, 38.208031, 28.349096>,  <26.023560, 37.669109, 28.586838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565674, 38.208031, 28.349096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914394, 38.389126, 28.423920>,  <26.123627, 38.497784, 28.468813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914394, 38.389126, 28.423920>,  <25.565674, 38.208031, 28.349096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914394, 38.389126, 28.423920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012335, 0.402027, -0.915545,
		-0.489707, 0.795864, 0.356072,
		0.871800, 0.452740, 0.187058,
		26.175934, 38.524948, 28.480038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494925, 38.872761, 28.082808>,  <25.565674, 38.208031, 28.349096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494925, 38.872761, 28.082808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883200, 38.779655, 28.106752>,  <26.116165, 38.723793, 28.121119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883200, 38.779655, 28.106752>,  <25.494925, 38.872761, 28.082808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883200, 38.779655, 28.106752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119802, 0.252697, -0.960100,
		0.208349, 0.939130, 0.273175,
		0.970689, -0.232763, 0.059861,
		26.174406, 38.709827, 28.124710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877310, 39.419090, 27.857721>,  <25.494925, 38.872761, 28.082808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877310, 39.419090, 27.857721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153044, 39.129890, 27.839420>,  <26.318485, 38.956371, 27.828440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153044, 39.129890, 27.839420>,  <25.877310, 39.419090, 27.857721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153044, 39.129890, 27.839420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199066, 0.249763, -0.947624,
		0.696555, 0.644124, 0.316094,
		0.689336, -0.722995, -0.045751,
		26.359844, 38.912991, 27.825695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557568, 39.726196, 27.693697>,  <25.877310, 39.419090, 27.857721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557568, 39.726196, 27.693697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500559, 39.350922, 27.567522>,  <26.466352, 39.125759, 27.491817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500559, 39.350922, 27.567522>,  <26.557568, 39.726196, 27.693697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500559, 39.350922, 27.567522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185554, 0.287716, -0.939569,
		0.972243, -0.192441, 0.133077,
		-0.142523, -0.938182, -0.315438,
		26.457802, 39.069466, 27.472891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043310, 39.604267, 27.272356>,  <26.557568, 39.726196, 27.693697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043310, 39.604267, 27.272356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779673, 39.325378, 27.159592>,  <26.621490, 39.158047, 27.091932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779673, 39.325378, 27.159592>,  <27.043310, 39.604267, 27.272356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779673, 39.325378, 27.159592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255601, 0.144865, -0.955867,
		0.707292, -0.702064, 0.082731,
		-0.659095, -0.697223, -0.281910,
		26.581944, 39.116211, 27.075018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378941, 39.009151, 26.887501>,  <27.043310, 39.604267, 27.272356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378941, 39.009151, 26.887501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999214, 39.061535, 26.773201>,  <26.771379, 39.092964, 26.704620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999214, 39.061535, 26.773201>,  <27.378941, 39.009151, 26.887501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999214, 39.061535, 26.773201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303157, 0.141235, -0.942416,
		-0.083063, -0.981276, -0.173778,
		-0.949314, 0.130962, -0.285749,
		26.714420, 39.100822, 26.687475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285412, 38.555473, 26.249298>,  <27.378941, 39.009151, 26.887501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285412, 38.555473, 26.249298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056932, 38.882137, 26.282263>,  <26.919846, 39.078136, 26.302042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056932, 38.882137, 26.282263>,  <27.285412, 38.555473, 26.249298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056932, 38.882137, 26.282263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304735, 0.304220, -0.902544,
		-0.762148, -0.490417, -0.422636,
		-0.571198, 0.816665, 0.082413,
		26.885572, 39.127136, 26.306986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232708, 38.767628, 25.615467>,  <27.285412, 38.555473, 26.249298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232708, 38.767628, 25.615467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045473, 39.085033, 25.771017>,  <26.933132, 39.275478, 25.864347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045473, 39.085033, 25.771017>,  <27.232708, 38.767628, 25.615467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045473, 39.085033, 25.771017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246437, 0.539825, -0.804896,
		-0.848623, -0.280930, -0.448238,
		-0.468089, 0.793516, 0.388877,
		26.905046, 39.323090, 25.887680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746653, 38.127422, 25.757679>,  <27.232708, 38.767628, 25.615467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746653, 38.127422, 25.757679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892387, 38.493931, 25.691105>,  <27.979828, 38.713837, 25.651161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892387, 38.493931, 25.691105>,  <27.746653, 38.127422, 25.757679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892387, 38.493931, 25.691105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921018, -0.328082, 0.209973,
		0.137789, -0.229790, -0.963437,
		0.364336, 0.916274, -0.166435,
		28.001688, 38.768814, 25.641174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333746, 37.994823, 25.305450>,  <27.746653, 38.127422, 25.757679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333746, 37.994823, 25.305450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329571, 38.308929, 25.553080>,  <28.327066, 38.497395, 25.701656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329571, 38.308929, 25.553080>,  <28.333746, 37.994823, 25.305450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329571, 38.308929, 25.553080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891132, -0.273552, 0.362012,
		0.453624, 0.555452, -0.696921,
		-0.010436, 0.785266, 0.619071,
		28.326441, 38.544510, 25.738800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012844, 38.165356, 25.046215>,  <28.333746, 37.994823, 25.305450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012844, 38.165356, 25.046215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901905, 38.427677, 25.327072>,  <28.835342, 38.585068, 25.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901905, 38.427677, 25.327072>,  <29.012844, 38.165356, 25.046215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901905, 38.427677, 25.327072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515154, -0.515373, 0.684841,
		0.810984, 0.551650, -0.194901,
		-0.277346, 0.655800, 0.702144,
		28.818701, 38.624416, 25.537716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577358, 38.347740, 25.482841>,  <29.012844, 38.165356, 25.046215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577358, 38.347740, 25.482841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235592, 38.368927, 25.689596>,  <29.030533, 38.381638, 25.813648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235592, 38.368927, 25.689596>,  <29.577358, 38.347740, 25.482841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235592, 38.368927, 25.689596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407305, -0.549385, 0.729574,
		0.322613, 0.833889, 0.447828,
		-0.854414, 0.052968, 0.516886,
		28.979267, 38.384819, 25.844662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860268, 38.459038, 26.127077>,  <29.577358, 38.347740, 25.482841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860268, 38.459038, 26.127077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495647, 38.297089, 26.155777>,  <29.276875, 38.199917, 26.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495647, 38.297089, 26.155777>,  <29.860268, 38.459038, 26.127077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495647, 38.297089, 26.155777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277782, -0.477711, 0.833444,
		-0.303168, 0.779658, 0.547926,
		-0.911552, -0.404878, 0.071748,
		29.222181, 38.175625, 26.177301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613323, 38.625732, 26.728275>,  <29.860268, 38.459038, 26.127077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613323, 38.625732, 26.728275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398039, 38.299030, 26.645102>,  <29.268867, 38.103008, 26.595198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398039, 38.299030, 26.645102>,  <29.613323, 38.625732, 26.728275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398039, 38.299030, 26.645102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135981, -0.327633, 0.934968,
		-0.831768, 0.474936, 0.287400,
		-0.538211, -0.816757, -0.207932,
		29.236576, 38.054005, 26.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154644, 38.522861, 27.308720>,  <29.613323, 38.625732, 26.728275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154644, 38.522861, 27.308720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186441, 38.172440, 27.118471>,  <29.205521, 37.962189, 27.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186441, 38.172440, 27.118471>,  <29.154644, 38.522861, 27.308720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186441, 38.172440, 27.118471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061005, -0.480511, 0.874865,
		-0.994967, -0.040533, -0.091642,
		0.079495, -0.876052, -0.475619,
		29.210291, 37.909622, 26.975786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590336, 38.154633, 27.678421>,  <29.154644, 38.522861, 27.308720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590336, 38.154633, 27.678421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809662, 37.891842, 27.471453>,  <28.941257, 37.734165, 27.347271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809662, 37.891842, 27.471453>,  <28.590336, 38.154633, 27.678421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809662, 37.891842, 27.471453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064028, -0.583927, 0.809277,
		-0.833816, -0.476869, -0.278111,
		0.548316, -0.656982, -0.517421,
		28.974157, 37.694748, 27.316227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318171, 37.555153, 27.812595>,  <28.590336, 38.154633, 27.678421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318171, 37.555153, 27.812595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699911, 37.457363, 27.743954>,  <28.928955, 37.398689, 27.702768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699911, 37.457363, 27.743954>,  <28.318171, 37.555153, 27.812595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699911, 37.457363, 27.743954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019564, -0.522118, 0.852649,
		-0.298051, -0.817082, -0.493500,
		0.954349, -0.244478, -0.171603,
		28.986216, 37.384018, 27.692472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322443, 36.823265, 28.029371>,  <28.318171, 37.555153, 27.812595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322443, 36.823265, 28.029371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699579, 36.956398, 28.035961>,  <28.925861, 37.036278, 28.039915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699579, 36.956398, 28.035961>,  <28.322443, 36.823265, 28.029371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699579, 36.956398, 28.035961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120751, -0.387305, 0.914010,
		0.310595, -0.859777, -0.405357,
		0.942841, 0.332834, 0.016476,
		28.982431, 37.056248, 28.040903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706209, 36.266712, 28.363457>,  <28.322443, 36.823265, 28.029371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706209, 36.266712, 28.363457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955893, 36.579147, 28.369881>,  <29.105703, 36.766609, 28.373735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955893, 36.579147, 28.369881>,  <28.706209, 36.266712, 28.363457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955893, 36.579147, 28.369881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221819, -0.196904, 0.955000,
		0.749105, -0.592558, -0.296171,
		0.624210, 0.781092, 0.016061,
		29.143156, 36.813477, 28.374699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397303, 36.011425, 28.672888>,  <28.706209, 36.266712, 28.363457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397303, 36.011425, 28.672888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332109, 36.402390, 28.726707>,  <29.292994, 36.636967, 28.758999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332109, 36.402390, 28.726707>,  <29.397303, 36.011425, 28.672888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332109, 36.402390, 28.726707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145203, -0.111126, 0.983141,
		0.975885, 0.179773, -0.123812,
		-0.162983, 0.977411, 0.134550,
		29.283215, 36.695614, 28.767073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972725, 36.225212, 29.115303>,  <29.397303, 36.011425, 28.672888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972725, 36.225212, 29.115303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680527, 36.497868, 29.132040>,  <29.505207, 36.661461, 29.142082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680527, 36.497868, 29.132040>,  <29.972725, 36.225212, 29.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680527, 36.497868, 29.132040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081422, 0.026100, 0.996338,
		0.678047, 0.731226, -0.074566,
		-0.730495, 0.681636, 0.041840,
		29.461378, 36.702358, 29.144592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331694, 36.775303, 29.434465>,  <29.972725, 36.225212, 29.115303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331694, 36.775303, 29.434465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936312, 36.821415, 29.473795>,  <29.699083, 36.849083, 29.497393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936312, 36.821415, 29.473795>,  <30.331694, 36.775303, 29.434465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936312, 36.821415, 29.473795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099428, 0.003867, 0.995037,
		0.114328, 0.993325, -0.015284,
		-0.988455, 0.115280, 0.098322,
		29.639774, 36.855999, 29.503292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241337, 37.178059, 29.956467>,  <30.331694, 36.775303, 29.434465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241337, 37.178059, 29.956467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867268, 37.036976, 29.943491>,  <29.642826, 36.952328, 29.935705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867268, 37.036976, 29.943491>,  <30.241337, 37.178059, 29.956467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867268, 37.036976, 29.943491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040876, 0.016495, 0.999028,
		-0.351827, 0.935589, -0.029843,
		-0.935172, -0.352705, -0.032440,
		29.586716, 36.931164, 29.933760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005827, 37.506130, 30.535866>,  <30.241337, 37.178059, 29.956467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005827, 37.506130, 30.535866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745815, 37.216152, 30.444727>,  <29.589808, 37.042164, 30.390043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745815, 37.216152, 30.444727>,  <30.005827, 37.506130, 30.535866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745815, 37.216152, 30.444727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183792, -0.140948, 0.972807,
		-0.737347, 0.674230, -0.041619,
		-0.650030, -0.724946, -0.227845,
		29.550806, 36.998669, 30.376373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364126, 37.578346, 30.852737>,  <30.005827, 37.506130, 30.535866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364126, 37.578346, 30.852737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341263, 37.187069, 30.772873>,  <29.327545, 36.952301, 30.724955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341263, 37.187069, 30.772873>,  <29.364126, 37.578346, 30.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341263, 37.187069, 30.772873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221163, -0.182612, 0.957987,
		-0.973561, 0.098913, -0.205903,
		-0.057157, -0.978197, -0.199660,
		29.324116, 36.893608, 30.712975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845802, 37.349522, 31.251799>,  <29.364126, 37.578346, 30.852737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845802, 37.349522, 31.251799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082478, 37.033974, 31.185349>,  <29.224482, 36.844646, 31.145479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082478, 37.033974, 31.185349>,  <28.845802, 37.349522, 31.251799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082478, 37.033974, 31.185349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023893, -0.223137, 0.974494,
		-0.805814, -0.572625, -0.150876,
		0.591686, -0.788866, -0.166125,
		29.259983, 36.797314, 31.135511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544794, 36.811367, 31.673002>,  <28.845802, 37.349522, 31.251799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544794, 36.811367, 31.673002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903889, 36.674648, 31.561827>,  <29.119345, 36.592617, 31.495121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903889, 36.674648, 31.561827>,  <28.544794, 36.811367, 31.673002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903889, 36.674648, 31.561827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064522, -0.522092, 0.850445,
		-0.435783, -0.781408, -0.446648,
		0.897736, -0.341791, -0.277937,
		29.173210, 36.572109, 31.478445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589815, 36.062477, 31.707260>,  <28.544794, 36.811367, 31.673002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589815, 36.062477, 31.707260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956160, 36.215813, 31.755011>,  <29.175966, 36.307816, 31.783661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956160, 36.215813, 31.755011>,  <28.589815, 36.062477, 31.707260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956160, 36.215813, 31.755011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081417, -0.468468, 0.879721,
		0.393155, -0.795982, -0.460262,
		0.915860, 0.383340, 0.119374,
		29.230917, 36.330814, 31.790823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032431, 35.478977, 31.743145>,  <28.589815, 36.062477, 31.707260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032431, 35.478977, 31.743145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247309, 35.792118, 31.868725>,  <29.376236, 35.980003, 31.944073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247309, 35.792118, 31.868725>,  <29.032431, 35.478977, 31.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247309, 35.792118, 31.868725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374415, -0.554863, 0.742927,
		0.755799, -0.281551, -0.591182,
		0.537197, 0.782851, 0.313948,
		29.408468, 36.026974, 31.962910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680208, 35.193508, 31.987587>,  <29.032431, 35.478977, 31.743145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680208, 35.193508, 31.987587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648409, 35.548126, 32.169891>,  <29.629330, 35.760899, 32.279274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648409, 35.548126, 32.169891>,  <29.680208, 35.193508, 31.987587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648409, 35.548126, 32.169891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317808, -0.410807, 0.854538,
		0.944817, 0.212777, -0.249093,
		-0.079497, 0.886546, 0.455760,
		29.624559, 35.814091, 32.306618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120228, 35.055588, 32.411800>,  <29.680208, 35.193508, 31.987587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120228, 35.055588, 32.411800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955439, 35.383766, 32.570370>,  <29.856565, 35.580673, 32.665512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955439, 35.383766, 32.570370>,  <30.120228, 35.055588, 32.411800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955439, 35.383766, 32.570370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280941, -0.299492, 0.911799,
		0.866805, 0.487007, -0.107113,
		-0.411973, 0.820444, 0.396422,
		29.831846, 35.629898, 32.689297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590530, 35.252384, 32.902939>,  <30.120228, 35.055588, 32.411800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590530, 35.252384, 32.902939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249893, 35.401237, 33.050617>,  <30.045511, 35.490551, 33.139225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249893, 35.401237, 33.050617>,  <30.590530, 35.252384, 32.902939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249893, 35.401237, 33.050617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257069, -0.317328, 0.912808,
		0.456843, 0.872250, 0.174570,
		-0.851593, 0.372134, 0.369197,
		29.994415, 35.512878, 33.161377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752600, 35.624725, 33.473923>,  <30.590530, 35.252384, 32.902939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752600, 35.624725, 33.473923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366894, 35.534309, 33.529202>,  <30.135469, 35.480061, 33.562370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366894, 35.534309, 33.529202>,  <30.752600, 35.624725, 33.473923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366894, 35.534309, 33.529202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206643, -0.315230, 0.926244,
		-0.165805, 0.921703, 0.350675,
		-0.964265, -0.226041, 0.138196,
		30.077614, 35.466496, 33.570660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445858, 36.070339, 34.031933>,  <30.752600, 35.624725, 33.473923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445858, 36.070339, 34.031933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260874, 35.717224, 33.998886>,  <30.149883, 35.505356, 33.979057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260874, 35.717224, 33.998886>,  <30.445858, 36.070339, 34.031933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260874, 35.717224, 33.998886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131403, -0.160388, 0.978268,
		-0.876849, 0.441554, 0.190173,
		-0.462460, -0.882783, -0.082615,
		30.122135, 35.452389, 33.974102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926222, 36.570286, 33.753258>,  <30.445858, 36.070339, 34.031933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926222, 36.570286, 33.753258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220547, 36.713520, 33.523354>,  <31.397142, 36.799461, 33.385410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220547, 36.713520, 33.523354>,  <30.926222, 36.570286, 33.753258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220547, 36.713520, 33.523354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610578, 0.016246, 0.791789,
		0.292869, -0.933546, -0.206687,
		0.735814, 0.358089, -0.574761,
		31.441292, 36.820946, 33.350925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460434, 36.164059, 33.846878>,  <30.926222, 36.570286, 33.753258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460434, 36.164059, 33.846878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623821, 36.519592, 33.763802>,  <31.721853, 36.732910, 33.713955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623821, 36.519592, 33.763802>,  <31.460434, 36.164059, 33.846878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623821, 36.519592, 33.763802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599439, -0.089618, 0.795388,
		0.688352, -0.449387, -0.569405,
		0.408466, 0.888831, -0.207692,
		31.746361, 36.786240, 33.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208553, 36.141327, 34.048088>,  <31.460434, 36.164059, 33.846878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208553, 36.141327, 34.048088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080818, 36.520351, 34.043167>,  <32.004177, 36.747765, 34.040215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080818, 36.520351, 34.043167>,  <32.208553, 36.141327, 34.048088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080818, 36.520351, 34.043167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459780, 0.166282, 0.872326,
		0.828627, 0.272913, -0.488769,
		-0.319343, 0.947560, -0.012305,
		31.985016, 36.804619, 34.039474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817253, 36.346268, 34.172207>,  <32.208553, 36.141327, 34.048088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817253, 36.346268, 34.172207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515705, 36.568981, 34.311726>,  <32.334774, 36.702610, 34.395439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515705, 36.568981, 34.311726>,  <32.817253, 36.346268, 34.172207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515705, 36.568981, 34.311726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457303, 0.063484, 0.887042,
		0.471750, 0.828226, -0.302479,
		-0.753874, 0.556786, 0.348802,
		32.289543, 36.736015, 34.416367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129948, 36.917919, 34.499298>,  <32.817253, 36.346268, 34.172207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129948, 36.917919, 34.499298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753704, 36.901474, 34.634094>,  <32.527958, 36.891605, 34.714973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753704, 36.901474, 34.634094>,  <33.129948, 36.917919, 34.499298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753704, 36.901474, 34.634094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311879, 0.287472, 0.905589,
		-0.134106, 0.956906, -0.257577,
		-0.940610, -0.041112, 0.336991,
		32.471519, 36.889141, 34.735191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827965, 37.618816, 34.842258>,  <33.129948, 36.917919, 34.499298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827965, 37.618816, 34.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683197, 37.277119, 34.991543>,  <32.596336, 37.072102, 35.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683197, 37.277119, 34.991543>,  <32.827965, 37.618816, 34.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683197, 37.277119, 34.991543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030691, 0.389218, 0.920635,
		-0.931705, 0.344647, -0.114646,
		-0.361917, -0.854241, 0.373214,
		32.574623, 37.020847, 35.103508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164883, 37.709515, 35.270950>,  <32.827965, 37.618816, 34.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164883, 37.709515, 35.270950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321560, 37.366985, 35.405582>,  <32.415565, 37.161469, 35.486362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321560, 37.366985, 35.405582>,  <32.164883, 37.709515, 35.270950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321560, 37.366985, 35.405582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113765, 0.408079, 0.905831,
		-0.913037, -0.316514, 0.257260,
		0.391691, -0.856324, 0.336583,
		32.439068, 37.110088, 35.506557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860163, 37.543148, 35.857342>,  <32.164883, 37.709515, 35.270950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860163, 37.543148, 35.857342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203140, 37.339561, 35.887665>,  <32.408928, 37.217411, 35.905861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203140, 37.339561, 35.887665>,  <31.860163, 37.543148, 35.857342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203140, 37.339561, 35.887665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126693, 0.351595, 0.927540,
		-0.498740, -0.785707, 0.365955,
		0.857442, -0.508965, 0.075811,
		32.460373, 37.186871, 35.910408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842302, 37.113781, 36.519417>,  <31.860163, 37.543148, 35.857342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842302, 37.113781, 36.519417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226696, 37.130680, 36.410072>,  <32.457333, 37.140820, 36.344467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226696, 37.130680, 36.410072>,  <31.842302, 37.113781, 36.519417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226696, 37.130680, 36.410072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249858, 0.291390, 0.923397,
		0.118667, -0.955671, 0.269465,
		0.960983, 0.042249, -0.273360,
		32.514992, 37.143356, 36.328064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119236, 36.794174, 37.030727>,  <31.842302, 37.113781, 36.519417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119236, 36.794174, 37.030727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415176, 37.005051, 36.863541>,  <32.592739, 37.131577, 36.763229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415176, 37.005051, 36.863541>,  <32.119236, 36.794174, 37.030727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415176, 37.005051, 36.863541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374029, 0.194087, 0.906880,
		0.559219, -0.827287, -0.053588,
		0.739849, 0.527188, -0.417967,
		32.637131, 37.163208, 36.738152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744190, 36.554977, 37.377373>,  <32.119236, 36.794174, 37.030727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744190, 36.554977, 37.377373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843765, 36.916740, 37.238762>,  <32.903511, 37.133797, 37.155594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843765, 36.916740, 37.238762>,  <32.744190, 36.554977, 37.377373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843765, 36.916740, 37.238762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376781, 0.239177, 0.894891,
		0.892226, -0.353335, -0.281223,
		0.248934, 0.904405, -0.346529,
		32.918446, 37.188061, 37.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422565, 36.652901, 37.577431>,  <32.744190, 36.554977, 37.377373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422565, 36.652901, 37.577431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285828, 37.023949, 37.517216>,  <33.203785, 37.246578, 37.481087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285828, 37.023949, 37.517216>,  <33.422565, 36.652901, 37.577431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285828, 37.023949, 37.517216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143572, 0.209854, 0.967134,
		0.928723, 0.309001, -0.204918,
		-0.341848, 0.927620, -0.150533,
		33.183273, 37.302235, 37.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894779, 36.954376, 37.939926>,  <33.422565, 36.652901, 37.577431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894779, 36.954376, 37.939926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598404, 37.216881, 37.882893>,  <33.420578, 37.374386, 37.848671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598404, 37.216881, 37.882893>,  <33.894779, 36.954376, 37.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598404, 37.216881, 37.882893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019668, 0.233431, 0.972174,
		0.671286, 0.717515, -0.185865,
		-0.740937, 0.656263, -0.142587,
		33.376122, 37.413761, 37.840115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112656, 37.636448, 38.254723>,  <33.894779, 36.954376, 37.939926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112656, 37.636448, 38.254723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713230, 37.645199, 38.235134>,  <33.473576, 37.650452, 38.223381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713230, 37.645199, 38.235134>,  <34.112656, 37.636448, 38.254723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713230, 37.645199, 38.235134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043114, 0.215720, 0.975503,
		0.031908, 0.976210, -0.214466,
		-0.998560, 0.021879, -0.048972,
		33.413662, 37.651764, 38.220444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935944, 38.338799, 38.613274>,  <34.112656, 37.636448, 38.254723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935944, 38.338799, 38.613274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630295, 38.081001, 38.602390>,  <33.446903, 37.926323, 38.595860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630295, 38.081001, 38.602390>,  <33.935944, 38.338799, 38.613274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630295, 38.081001, 38.602390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175007, 0.166523, 0.970383,
		-0.620874, 0.746256, -0.240035,
		-0.764125, -0.644493, -0.027210,
		33.401058, 37.887653, 38.594227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411621, 38.687603, 38.955612>,  <33.935944, 38.338799, 38.613274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411621, 38.687603, 38.955612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342072, 38.293736, 38.961155>,  <33.300343, 38.057415, 38.964481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342072, 38.293736, 38.961155>,  <33.411621, 38.687603, 38.955612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342072, 38.293736, 38.961155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149246, 0.040260, 0.987980,
		-0.973392, 0.169718, -0.153958,
		-0.173876, -0.984670, 0.013859,
		33.289909, 37.998333, 38.965313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894386, 38.564880, 39.375294>,  <33.411621, 38.687603, 38.955612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894386, 38.564880, 39.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021393, 38.187500, 39.337170>,  <33.097595, 37.961071, 39.314297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021393, 38.187500, 39.337170>,  <32.894386, 38.564880, 39.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021393, 38.187500, 39.337170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263342, -0.184287, 0.946937,
		-0.910954, -0.275566, -0.306964,
		0.317513, -0.943452, -0.095309,
		33.116646, 37.904465, 39.308578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378456, 38.232075, 39.834274>,  <32.894386, 38.564880, 39.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378456, 38.232075, 39.834274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705856, 38.006508, 39.790359>,  <32.902298, 37.871170, 39.764011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705856, 38.006508, 39.790359>,  <32.378456, 38.232075, 39.834274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705856, 38.006508, 39.790359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059735, -0.273603, 0.959986,
		-0.571388, -0.779193, -0.257630,
		0.818503, -0.563914, -0.109789,
		32.951408, 37.837334, 39.757423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164417, 37.542610, 39.918892>,  <32.378456, 38.232075, 39.834274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164417, 37.542610, 39.918892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557816, 37.541744, 39.991261>,  <32.793854, 37.541225, 40.034679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557816, 37.541744, 39.991261>,  <32.164417, 37.542610, 39.918892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557816, 37.541744, 39.991261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176261, -0.237158, 0.955347,
		0.040842, -0.971469, -0.233624,
		0.983496, -0.002160, 0.180918,
		32.852863, 37.541096, 40.045536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380779, 36.954353, 40.320160>,  <32.164417, 37.542610, 39.918892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380779, 36.954353, 40.320160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675316, 37.215054, 40.392857>,  <32.852036, 37.371471, 40.436474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.675316, 37.215054, 40.392857>,  <32.380779, 36.954353, 40.320160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675316, 37.215054, 40.392857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125438, -0.132460, 0.983219,
		0.664885, -0.746779, -0.015781,
		0.736338, 0.651748, 0.181745,
		32.896217, 37.410580, 40.447380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890713, 36.533649, 40.646152>,  <32.380779, 36.954353, 40.320160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890713, 36.533649, 40.646152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933636, 36.920715, 40.737457>,  <32.959389, 37.152954, 40.792240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933636, 36.920715, 40.737457>,  <32.890713, 36.533649, 40.646152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933636, 36.920715, 40.737457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064179, -0.222367, 0.972848,
		0.992152, -0.119048, 0.038242,
		0.107312, 0.967667, 0.228263,
		32.965828, 37.211014, 40.805935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362762, 36.569550, 41.191055>,  <32.890713, 36.533649, 40.646152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362762, 36.569550, 41.191055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179195, 36.922985, 41.228283>,  <33.069057, 37.135048, 41.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179195, 36.922985, 41.228283>,  <33.362762, 36.569550, 41.191055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179195, 36.922985, 41.228283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003821, -0.106714, 0.994282,
		0.888472, 0.455936, 0.052349,
		-0.458916, 0.883592, 0.093070,
		33.041519, 37.188061, 41.256203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715908, 36.829006, 41.785034>,  <33.362762, 36.569550, 41.191055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715908, 36.829006, 41.785034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386761, 37.048878, 41.727409>,  <33.189274, 37.180801, 41.692837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386761, 37.048878, 41.727409>,  <33.715908, 36.829006, 41.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386761, 37.048878, 41.727409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095828, 0.115652, 0.988656,
		0.560100, 0.827335, -0.042492,
		-0.822864, 0.549675, -0.144059,
		33.139900, 37.213779, 41.684193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864784, 37.411751, 42.114872>,  <33.715908, 36.829006, 41.785034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864784, 37.411751, 42.114872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467926, 37.363510, 42.101585>,  <33.229813, 37.334568, 42.093613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467926, 37.363510, 42.101585>,  <33.864784, 37.411751, 42.114872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467926, 37.363510, 42.101585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018175, -0.123761, 0.992146,
		-0.123761, 0.984957, 0.120597,
		-0.992146, -0.120597, -0.033218,
		33.170280, 37.327332, 42.091621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660580, 37.722809, 42.695538>,  <33.864784, 37.411751, 42.114872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660580, 37.722809, 42.695538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331947, 37.514935, 42.601791>,  <33.134766, 37.390209, 42.545544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331947, 37.514935, 42.601791>,  <33.660580, 37.722809, 42.695538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331947, 37.514935, 42.601791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125242, -0.236529, 0.963519,
		-0.556161, 0.820964, 0.129242,
		-0.821583, -0.519685, -0.234367,
		33.085472, 37.359028, 42.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258881, 37.932896, 43.224998>,  <33.660580, 37.722809, 42.695538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258881, 37.932896, 43.224998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091576, 37.601631, 43.075756>,  <32.991192, 37.402874, 42.986210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091576, 37.601631, 43.075756>,  <33.258881, 37.932896, 43.224998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091576, 37.601631, 43.075756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381878, -0.212369, 0.899482,
		-0.824150, 0.518703, -0.227429,
		-0.418266, -0.828158, -0.373106,
		32.966095, 37.353184, 42.963825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570866, 37.937195, 43.326778>,  <33.258881, 37.932896, 43.224998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570866, 37.937195, 43.326778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635433, 37.544174, 43.289810>,  <32.674175, 37.308361, 43.267628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635433, 37.544174, 43.289810>,  <32.570866, 37.937195, 43.326778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635433, 37.544174, 43.289810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434054, -0.154791, 0.887489,
		-0.886307, -0.103144, -0.451466,
		0.161422, -0.982548, -0.092422,
		32.683861, 37.249409, 43.262085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037727, 37.641945, 43.620228>,  <32.570866, 37.937195, 43.326778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037727, 37.641945, 43.620228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276062, 37.320824, 43.611423>,  <32.419064, 37.128151, 43.606140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276062, 37.320824, 43.611423>,  <32.037727, 37.641945, 43.620228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276062, 37.320824, 43.611423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336607, -0.274525, 0.900739,
		-0.729163, -0.529280, -0.433801,
		0.595833, -0.802807, -0.022014,
		32.454811, 37.079983, 43.604820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591547, 37.076977, 43.697929>,  <32.037727, 37.641945, 43.620228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591547, 37.076977, 43.697929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960497, 36.966621, 43.806084>,  <32.181866, 36.900410, 43.870975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960497, 36.966621, 43.806084>,  <31.591547, 37.076977, 43.697929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960497, 36.966621, 43.806084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309184, -0.107639, 0.944891,
		-0.231578, -0.955144, -0.184583,
		0.922375, -0.275886, 0.270388,
		32.237209, 36.883854, 43.887199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506042, 36.494942, 44.060333>,  <31.591547, 37.076977, 43.697929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506042, 36.494942, 44.060333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853491, 36.658325, 44.172520>,  <32.061958, 36.756355, 44.239830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853491, 36.658325, 44.172520>,  <31.506042, 36.494942, 44.060333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853491, 36.658325, 44.172520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294980, -0.028500, 0.955078,
		0.398101, -0.912333, 0.095730,
		0.868621, 0.408456, 0.280466,
		32.114079, 36.780861, 44.256660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570335, 36.175648, 44.705296>,  <31.506042, 36.494942, 44.060333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570335, 36.175648, 44.705296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854776, 36.454773, 44.739693>,  <32.025440, 36.622246, 44.760330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854776, 36.454773, 44.739693>,  <31.570335, 36.175648, 44.705296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854776, 36.454773, 44.739693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107480, -0.012980, 0.994123,
		0.694823, -0.716167, 0.065770,
		0.711104, 0.697808, 0.085992,
		32.068108, 36.664116, 44.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984285, 35.901363, 45.292629>,  <31.570335, 36.175648, 44.705296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984285, 35.901363, 45.292629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063927, 36.290863, 45.248512>,  <32.111710, 36.524563, 45.222042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063927, 36.290863, 45.248512>,  <31.984285, 35.901363, 45.292629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063927, 36.290863, 45.248512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034895, 0.119514, 0.992219,
		0.979357, -0.193705, 0.057775,
		0.199103, 0.973753, -0.110288,
		32.123657, 36.582989, 45.215427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389488, 36.088665, 45.840401>,  <31.984285, 35.901363, 45.292629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389488, 36.088665, 45.840401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 36.454533, 45.732822>,  <32.196365, 36.674053, 45.668278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 36.454533, 45.732822>,  <32.389488, 36.088665, 45.840401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268787, 36.454533, 45.732822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122531, 0.242546, 0.962371,
		0.945479, 0.323354, 0.038885,
		-0.301755, 0.914666, -0.268943,
		32.178261, 36.728931, 45.652138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860119, 36.637730, 46.108742>,  <32.389488, 36.088665, 45.840401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860119, 36.637730, 46.108742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489269, 36.774422, 46.047222>,  <32.266758, 36.856438, 46.010311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489269, 36.774422, 46.047222>,  <32.860119, 36.637730, 46.108742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489269, 36.774422, 46.047222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038311, 0.321831, 0.946022,
		0.372785, 0.882974, -0.285286,
		-0.927127, 0.341733, -0.153801,
		32.211132, 36.876942, 46.001083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019836, 37.232937, 46.274769>,  <32.860119, 36.637730, 46.108742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019836, 37.232937, 46.274769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641232, 37.122284, 46.341209>,  <32.414070, 37.055893, 46.381073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641232, 37.122284, 46.341209>,  <33.019836, 37.232937, 46.274769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641232, 37.122284, 46.341209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159532, 0.046263, 0.986108,
		-0.280474, 0.959862, 0.000343,
		-0.946512, -0.276632, 0.166104,
		32.357277, 37.039295, 46.391041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769711, 37.620094, 46.820686>,  <33.019836, 37.232937, 46.274769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769711, 37.620094, 46.820686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501266, 37.326233, 46.780888>,  <32.340199, 37.149918, 46.757008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501266, 37.326233, 46.780888>,  <32.769711, 37.620094, 46.820686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501266, 37.326233, 46.780888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064721, -0.191750, 0.979308,
		-0.738525, 0.650786, 0.176233,
		-0.671113, -0.734649, -0.099493,
		32.299934, 37.105839, 46.751041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248096, 37.723022, 47.306606>,  <32.769711, 37.620094, 46.820686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248096, 37.723022, 47.306606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228321, 37.334667, 47.212856>,  <32.216457, 37.101654, 47.156605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228321, 37.334667, 47.212856>,  <32.248096, 37.723022, 47.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228321, 37.334667, 47.212856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065625, -0.237312, 0.969214,
		-0.996619, 0.032535, 0.075447,
		-0.049438, -0.970889, -0.234374,
		32.213490, 37.043400, 47.142544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925503, 37.468399, 47.793415>,  <32.248096, 37.723022, 47.306606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925503, 37.468399, 47.793415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060612, 37.121605, 47.646858>,  <32.141678, 36.913528, 47.558926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060612, 37.121605, 47.646858>,  <31.925503, 37.468399, 47.793415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060612, 37.121605, 47.646858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172248, -0.439636, 0.881505,
		-0.925333, -0.234638, -0.297833,
		0.337773, -0.866986, -0.366394,
		32.161945, 36.861507, 47.536942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549570, 37.012253, 48.146194>,  <31.925503, 37.468399, 47.793415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549570, 37.012253, 48.146194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857752, 36.799377, 48.005810>,  <32.042660, 36.671650, 47.921577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857752, 36.799377, 48.005810>,  <31.549570, 37.012253, 48.146194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857752, 36.799377, 48.005810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036476, -0.512829, 0.857716,
		-0.636454, -0.673630, -0.375697,
		0.770452, -0.532193, -0.350963,
		32.088886, 36.639721, 47.900520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357401, 36.341316, 48.260948>,  <31.549570, 37.012253, 48.146194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357401, 36.341316, 48.260948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755993, 36.354309, 48.230045>,  <31.995148, 36.362106, 48.211506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755993, 36.354309, 48.230045>,  <31.357401, 36.341316, 48.260948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755993, 36.354309, 48.230045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082438, -0.545808, 0.833845,
		-0.015080, -0.837280, -0.546566,
		0.996482, 0.032484, -0.077255,
		32.054939, 36.364056, 48.206867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658064, 35.610165, 48.192921>,  <31.357401, 36.341316, 48.260948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658064, 35.610165, 48.192921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921846, 35.868309, 48.347130>,  <32.080116, 36.023197, 48.439655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921846, 35.868309, 48.347130>,  <31.658064, 35.610165, 48.192921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921846, 35.868309, 48.347130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003326, -0.515332, 0.856984,
		0.751736, -0.563861, -0.341985,
		0.659456, 0.645363, 0.385518,
		32.119682, 36.061916, 48.462784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007027, 35.109718, 48.605652>,  <31.658064, 35.610165, 48.192921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007027, 35.109718, 48.605652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119526, 35.473347, 48.728611>,  <32.187027, 35.691525, 48.802387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119526, 35.473347, 48.728611>,  <32.007027, 35.109718, 48.605652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119526, 35.473347, 48.728611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049204, -0.306246, 0.950680,
		0.958372, -0.282504, -0.041401,
		0.281250, 0.909068, 0.307398,
		32.203899, 35.746067, 48.820831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536556, 35.010540, 49.145016>,  <32.007027, 35.109718, 48.605652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536556, 35.010540, 49.145016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370171, 35.363968, 49.231060>,  <32.270340, 35.576027, 49.282688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370171, 35.363968, 49.231060>,  <32.536556, 35.010540, 49.145016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370171, 35.363968, 49.231060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095121, -0.192973, 0.976583,
		0.904393, 0.426684, -0.003777,
		-0.415963, 0.883574, 0.215110,
		32.245380, 35.629040, 49.295593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752075, 35.062092, 49.847073>,  <32.536556, 35.010540, 49.145016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752075, 35.062092, 49.847073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508156, 35.378777, 49.832458>,  <32.361805, 35.568787, 49.823689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508156, 35.378777, 49.832458>,  <32.752075, 35.062092, 49.847073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508156, 35.378777, 49.832458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132669, -0.056518, 0.989548,
		0.781371, 0.608275, 0.139501,
		-0.609801, 0.791712, -0.036537,
		32.325214, 35.616291, 49.821499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891754, 35.418987, 50.471462>,  <32.752075, 35.062092, 49.847073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891754, 35.418987, 50.471462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537693, 35.559719, 50.349670>,  <32.325256, 35.644157, 50.276596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537693, 35.559719, 50.349670>,  <32.891754, 35.418987, 50.471462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537693, 35.559719, 50.349670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349865, -0.071874, 0.934039,
		0.306741, 0.933299, 0.186714,
		-0.885158, 0.351833, -0.304482,
		32.272144, 35.665268, 50.258327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748734, 35.888275, 50.985939>,  <32.891754, 35.418987, 50.471462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748734, 35.888275, 50.985939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407665, 35.759609, 50.821266>,  <32.203026, 35.682411, 50.722462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407665, 35.759609, 50.821266>,  <32.748734, 35.888275, 50.985939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407665, 35.759609, 50.821266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344144, -0.247069, 0.905827,
		-0.393086, 0.914051, 0.099970,
		-0.852672, -0.321664, -0.411684,
		32.151863, 35.663109, 50.697762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227230, 35.982273, 51.462250>,  <32.748734, 35.888275, 50.985939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227230, 35.982273, 51.462250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045540, 35.708038, 51.234688>,  <31.936525, 35.543499, 51.098152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045540, 35.708038, 51.234688>,  <32.227230, 35.982273, 51.462250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045540, 35.708038, 51.234688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585888, -0.251175, 0.770484,
		-0.671128, 0.683286, -0.287588,
		-0.454227, -0.685588, -0.568900,
		31.909271, 35.502361, 51.064018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558578, 36.095646, 51.588276>,  <32.227230, 35.982273, 51.462250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558578, 36.095646, 51.588276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605368, 35.708958, 51.497269>,  <31.633440, 35.476944, 51.442665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605368, 35.708958, 51.497269>,  <31.558578, 36.095646, 51.588276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605368, 35.708958, 51.497269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399570, -0.255539, 0.880366,
		-0.909209, -0.012068, -0.416165,
		0.116971, -0.966723, -0.227516,
		31.640459, 35.418941, 51.429012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731218, 36.160728, 51.673977>,  <31.558578, 36.095646, 51.588276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731218, 36.160728, 51.673977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677414, 35.921822, 51.990250>,  <30.645130, 35.778477, 52.180016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677414, 35.921822, 51.990250>,  <30.731218, 36.160728, 51.673977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677414, 35.921822, 51.990250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778314, 0.557542, 0.288746,
		-0.613297, -0.576560, -0.539856,
		-0.134513, -0.597265, 0.790684,
		30.637060, 35.742641, 52.227455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046049, 35.871475, 51.702312>,  <30.731218, 36.160728, 51.673977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046049, 35.871475, 51.702312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189730, 35.925083, 52.071747>,  <30.275938, 35.957249, 52.293407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189730, 35.925083, 52.071747>,  <30.046049, 35.871475, 51.702312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189730, 35.925083, 52.071747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783657, 0.580738, 0.220511,
		-0.506809, -0.802983, 0.313628,
		0.359202, 0.134020, 0.923586,
		30.297491, 35.965290, 52.348824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659348, 35.485893, 52.228077>,  <30.046049, 35.871475, 51.702312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659348, 35.485893, 52.228077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810724, 35.831566, 52.360729>,  <29.901550, 36.038967, 52.440319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810724, 35.831566, 52.360729>,  <29.659348, 35.485893, 52.228077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810724, 35.831566, 52.360729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923941, 0.374281, 0.079043,
		-0.055817, -0.336321, 0.940092,
		0.378442, 0.864177, 0.331632,
		29.924257, 36.090820, 52.460220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443533, 35.526852, 52.884823>,  <29.659348, 35.485893, 52.228077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443533, 35.526852, 52.884823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492134, 35.863735, 52.674713>,  <29.521296, 36.065865, 52.548649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492134, 35.863735, 52.674713>,  <29.443533, 35.526852, 52.884823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492134, 35.863735, 52.674713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944956, 0.260118, 0.198486,
		0.303801, 0.472245, 0.827460,
		0.121503, 0.842214, -0.525275,
		29.528585, 36.116398, 52.517132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759975, 34.830791, 52.860249>,  <29.443533, 35.526852, 52.884823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759975, 34.830791, 52.860249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532196, 34.807312, 52.532276>,  <29.395529, 34.793224, 52.335495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532196, 34.807312, 52.532276>,  <29.759975, 34.830791, 52.860249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532196, 34.807312, 52.532276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774303, -0.373214, -0.511044,
		-0.276011, -0.925887, 0.257976,
		-0.569449, -0.058698, -0.819928,
		29.361361, 34.789703, 52.286297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012926, 34.300892, 52.492149>,  <29.759975, 34.830791, 52.860249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012926, 34.300892, 52.492149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788727, 34.430717, 52.187386>,  <29.654207, 34.508614, 52.004528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.788727, 34.430717, 52.187386>,  <30.012926, 34.300892, 52.492149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788727, 34.430717, 52.187386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621939, -0.442520, -0.646040,
		-0.546839, -0.835964, 0.046174,
		-0.560499, 0.324563, -0.761905,
		29.620577, 34.528088, 51.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821960, 33.726978, 52.119564>,  <30.012926, 34.300892, 52.492149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821960, 33.726978, 52.119564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902189, 34.049419, 51.896866>,  <29.950327, 34.242886, 51.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902189, 34.049419, 51.896866>,  <29.821960, 33.726978, 52.119564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902189, 34.049419, 51.896866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540333, -0.565068, -0.623489,
		-0.817197, -0.175774, -0.548902,
		0.200573, 0.806103, -0.556748,
		29.962360, 34.291252, 51.729843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767485, 33.475723, 51.422150>,  <29.821960, 33.726978, 52.119564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767485, 33.475723, 51.422150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987230, 33.809952, 51.420658>,  <30.119078, 34.010490, 51.419762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987230, 33.809952, 51.420658>,  <29.767485, 33.475723, 51.422150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987230, 33.809952, 51.420658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470924, -0.313296, -0.824667,
		-0.690240, 0.451285, -0.565606,
		0.549362, 0.835576, -0.003729,
		30.152039, 34.060623, 51.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029543, 32.829056, 51.056484>,  <29.767485, 33.475723, 51.422150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029543, 32.829056, 51.056484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716787, 33.021378, 50.897751>,  <29.529135, 33.136772, 50.802509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716787, 33.021378, 50.897751>,  <30.029543, 32.829056, 51.056484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716787, 33.021378, 50.897751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557684, 0.254934, -0.789935,
		-0.278636, -0.838950, -0.467466,
		-0.781889, 0.480803, -0.396835,
		29.482220, 33.165619, 50.778702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763054, 32.622566, 50.368263>,  <30.029543, 32.829056, 51.056484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763054, 32.622566, 50.368263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739487, 33.017338, 50.428272>,  <29.725348, 33.254200, 50.464279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739487, 33.017338, 50.428272>,  <29.763054, 32.622566, 50.368263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739487, 33.017338, 50.428272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443217, 0.160521, -0.881925,
		-0.894476, 0.014533, -0.446880,
		-0.058917, 0.986925, 0.150023,
		29.721811, 33.313416, 50.473278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309668, 33.058033, 49.858261>,  <29.763054, 32.622566, 50.368263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309668, 33.058033, 49.858261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628750, 33.258709, 49.992111>,  <29.820200, 33.379112, 50.072422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628750, 33.258709, 49.992111>,  <29.309668, 33.058033, 49.858261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628750, 33.258709, 49.992111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355088, 0.057738, -0.933048,
		-0.487418, 0.863121, -0.132085,
		0.797707, 0.501686, 0.334626,
		29.868063, 33.409214, 50.092499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454346, 33.540909, 49.328392>,  <29.309668, 33.058033, 49.858261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454346, 33.540909, 49.328392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795500, 33.496010, 49.532349>,  <30.000193, 33.469070, 49.654720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795500, 33.496010, 49.532349>,  <29.454346, 33.540909, 49.328392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795500, 33.496010, 49.532349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494198, -0.141419, -0.857770,
		0.168391, 0.983565, -0.065142,
		0.852885, -0.112248, 0.509889,
		30.051365, 33.462334, 49.685314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926416, 33.937187, 48.921803>,  <29.454346, 33.540909, 49.328392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926416, 33.937187, 48.921803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147512, 33.666920, 49.116924>,  <30.280170, 33.504761, 49.233997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147512, 33.666920, 49.116924>,  <29.926416, 33.937187, 48.921803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147512, 33.666920, 49.116924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651501, -0.014641, -0.758506,
		0.519640, 0.737061, 0.432106,
		0.552739, -0.675668, 0.487805,
		30.313334, 33.464218, 49.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526831, 34.235420, 48.910854>,  <29.926416, 33.937187, 48.921803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526831, 34.235420, 48.910854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570557, 33.842270, 48.970192>,  <30.596792, 33.606380, 49.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570557, 33.842270, 48.970192>,  <30.526831, 34.235420, 48.910854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570557, 33.842270, 48.970192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710301, -0.027157, -0.703374,
		0.695358, 0.182255, 0.695169,
		0.109314, -0.982876, 0.148340,
		30.603352, 33.547405, 49.014694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283279, 34.152893, 49.001102>,  <30.526831, 34.235420, 48.910854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283279, 34.152893, 49.001102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156281, 33.787025, 48.901039>,  <31.080082, 33.567505, 48.841000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156281, 33.787025, 48.901039>,  <31.283279, 34.152893, 49.001102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156281, 33.787025, 48.901039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730757, -0.067885, -0.679255,
		0.604310, -0.398464, 0.689953,
		-0.317496, -0.914668, -0.250157,
		31.061031, 33.512627, 48.825993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833158, 33.702454, 49.015026>,  <31.283279, 34.152893, 49.001102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833158, 33.702454, 49.015026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566666, 33.544136, 48.762207>,  <31.406771, 33.449146, 48.610516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566666, 33.544136, 48.762207>,  <31.833158, 33.702454, 49.015026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566666, 33.544136, 48.762207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704852, -0.057412, -0.707027,
		0.243552, -0.916542, 0.317227,
		-0.666232, -0.395796, -0.632044,
		31.366796, 33.425396, 48.572594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253162, 33.370358, 48.559570>,  <31.833158, 33.702454, 49.015026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253162, 33.370358, 48.559570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914471, 33.338036, 48.349228>,  <31.711256, 33.318642, 48.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914471, 33.338036, 48.349228>,  <32.253162, 33.370358, 48.559570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914471, 33.338036, 48.349228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532013, -0.120383, -0.838135,
		0.004426, -0.989433, 0.144923,
		-0.846725, -0.080811, -0.525859,
		31.660454, 33.313793, 48.191471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194328, 32.689785, 48.204865>,  <32.253162, 33.370358, 48.559570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194328, 32.689785, 48.204865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960936, 32.925167, 47.980984>,  <31.820900, 33.066395, 47.846653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960936, 32.925167, 47.980984>,  <32.194328, 32.689785, 48.204865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960936, 32.925167, 47.980984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527111, -0.249887, -0.812226,
		-0.617823, -0.768944, -0.164378,
		-0.583481, 0.588457, -0.559704,
		31.785891, 33.101704, 47.813072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948040, 32.231018, 47.637768>,  <32.194328, 32.689785, 48.204865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948040, 32.231018, 47.637768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911713, 32.608807, 47.511456>,  <31.889915, 32.835480, 47.435669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911713, 32.608807, 47.511456>,  <31.948040, 32.231018, 47.637768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911713, 32.608807, 47.511456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448959, -0.244210, -0.859534,
		-0.888925, -0.219836, -0.401851,
		-0.090820, 0.944476, -0.315781,
		31.884466, 32.892151, 47.416721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754820, 32.196880, 46.962502>,  <31.948040, 32.231018, 47.637768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754820, 32.196880, 46.962502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838844, 32.587875, 46.954540>,  <31.889259, 32.822472, 46.949764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838844, 32.587875, 46.954540>,  <31.754820, 32.196880, 46.962502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838844, 32.587875, 46.954540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372997, -0.098944, -0.922542,
		-0.903741, 0.186363, -0.385384,
		0.210059, 0.977486, -0.019907,
		31.901861, 32.881123, 46.948566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548834, 32.387867, 46.401669>,  <31.754820, 32.196880, 46.962502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548834, 32.387867, 46.401669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815542, 32.667843, 46.504044>,  <31.975567, 32.835827, 46.565468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815542, 32.667843, 46.504044>,  <31.548834, 32.387867, 46.401669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815542, 32.667843, 46.504044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461367, -0.117967, -0.879332,
		-0.585284, 0.704394, -0.401585,
		0.666770, 0.699937, 0.255940,
		32.015572, 32.877823, 46.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518185, 32.881317, 45.862652>,  <31.548834, 32.387867, 46.401669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518185, 32.881317, 45.862652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871239, 32.944908, 46.039593>,  <32.083073, 32.983063, 46.145756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871239, 32.944908, 46.039593>,  <31.518185, 32.881317, 45.862652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871239, 32.944908, 46.039593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422783, 0.142800, -0.894909,
		-0.205443, 0.976899, 0.058826,
		0.882637, 0.158982, 0.442354,
		32.136028, 32.992603, 46.172298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702410, 33.524651, 45.603569>,  <31.518185, 32.881317, 45.862652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702410, 33.524651, 45.603569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035103, 33.363636, 45.756504>,  <32.234718, 33.267029, 45.848267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035103, 33.363636, 45.756504>,  <31.702410, 33.524651, 45.603569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035103, 33.363636, 45.756504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461760, 0.119249, -0.878952,
		0.308213, 0.907605, 0.285058,
		0.831735, -0.402533, 0.382342,
		32.284622, 33.242878, 45.871208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236465, 34.074711, 45.699432>,  <31.702410, 33.524651, 45.603569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236465, 34.074711, 45.699432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420723, 33.721447, 45.664024>,  <32.531277, 33.509487, 45.642780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420723, 33.721447, 45.664024>,  <32.236465, 34.074711, 45.699432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420723, 33.721447, 45.664024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439425, 0.313570, -0.841772,
		0.771178, 0.348856, 0.532526,
		0.460641, -0.883161, -0.088522,
		32.558914, 33.456497, 45.637466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932457, 34.245487, 45.438984>,  <32.236465, 34.074711, 45.699432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932457, 34.245487, 45.438984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882366, 33.860226, 45.343784>,  <32.852310, 33.629066, 45.286663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882366, 33.860226, 45.343784>,  <32.932457, 34.245487, 45.438984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882366, 33.860226, 45.343784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311015, 0.189687, -0.931283,
		0.942119, -0.190644, 0.275803,
		-0.125227, -0.963158, -0.238000,
		32.844799, 33.571278, 45.272385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559383, 34.080761, 45.031471>,  <32.932457, 34.245487, 45.438984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559383, 34.080761, 45.031471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264374, 33.827595, 44.937256>,  <33.087368, 33.675697, 44.880726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264374, 33.827595, 44.937256>,  <33.559383, 34.080761, 45.031471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264374, 33.827595, 44.937256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295205, 0.011541, -0.955364,
		0.607380, -0.774138, 0.178326,
		-0.737526, -0.632911, -0.235539,
		33.043118, 33.637722, 44.866592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831299, 33.770744, 44.439335>,  <33.559383, 34.080761, 45.031471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831299, 33.770744, 44.439335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439995, 33.687809, 44.437408>,  <33.205212, 33.638050, 44.436253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439995, 33.687809, 44.437408>,  <33.831299, 33.770744, 44.439335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439995, 33.687809, 44.437408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024453, 0.138372, -0.990078,
		0.205950, -0.968434, -0.140433,
		-0.978257, -0.207340, -0.004817,
		33.146519, 33.625607, 44.435963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758663, 33.378151, 43.773476>,  <33.831299, 33.770744, 44.439335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758663, 33.378151, 43.773476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 33.536045, 43.867092>,  <33.190029, 33.630783, 43.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403267, 33.536045, 43.867092>,  <33.758663, 33.378151, 43.773476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403267, 33.536045, 43.867092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184534, 0.159627, -0.969776,
		-0.420167, -0.904821, -0.068984,
		-0.888486, 0.394738, 0.234041,
		33.136723, 33.654465, 43.937305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271492, 33.149010, 43.180752>,  <33.758663, 33.378151, 43.773476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271492, 33.149010, 43.180752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101677, 33.474930, 43.338676>,  <32.999786, 33.670483, 43.433430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101677, 33.474930, 43.338676>,  <33.271492, 33.149010, 43.180752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101677, 33.474930, 43.338676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303152, 0.282966, -0.909961,
		-0.853151, -0.506000, 0.126877,
		-0.424538, 0.814797, 0.394808,
		32.974316, 33.719368, 43.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678295, 33.215923, 42.820187>,  <33.271492, 33.149010, 43.180752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678295, 33.215923, 42.820187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751869, 33.578667, 42.971855>,  <32.796013, 33.796314, 43.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751869, 33.578667, 42.971855>,  <32.678295, 33.215923, 42.820187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751869, 33.578667, 42.971855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248589, 0.416129, -0.874666,
		-0.950985, 0.066623, 0.301976,
		0.183934, 0.906862, 0.379170,
		32.807049, 33.850727, 43.085606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249207, 33.568573, 42.368336>,  <32.678295, 33.215923, 42.820187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249207, 33.568573, 42.368336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511158, 33.826729, 42.525620>,  <32.668327, 33.981621, 42.619987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511158, 33.826729, 42.525620>,  <32.249207, 33.568573, 42.368336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511158, 33.826729, 42.525620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066897, 0.468750, -0.880794,
		-0.752769, 0.603116, 0.263799,
		0.654877, 0.645387, 0.393207,
		32.707623, 34.020344, 42.643581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923595, 34.227055, 42.224236>,  <32.249207, 33.568573, 42.368336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923595, 34.227055, 42.224236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315723, 34.261879, 42.295105>,  <32.551003, 34.282772, 42.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315723, 34.261879, 42.295105>,  <31.923595, 34.227055, 42.224236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315723, 34.261879, 42.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094346, 0.581732, -0.807890,
		-0.173402, 0.808708, 0.562071,
		0.980322, 0.087061, 0.177172,
		32.609821, 34.287998, 42.348255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176891, 34.959694, 42.023727>,  <31.923595, 34.227055, 42.224236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176891, 34.959694, 42.023727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521759, 34.759998, 41.989243>,  <32.728680, 34.640182, 41.968552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521759, 34.759998, 41.989243>,  <32.176891, 34.959694, 42.023727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521759, 34.759998, 41.989243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161471, 0.432077, -0.887263,
		0.480205, 0.751047, 0.453134,
		0.862166, -0.499236, -0.086214,
		32.780411, 34.610226, 41.963379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352375, 35.278473, 41.395092>,  <32.176891, 34.959694, 42.023727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352375, 35.278473, 41.395092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631126, 34.994637, 41.436737>,  <32.798378, 34.824333, 41.461723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631126, 34.994637, 41.436737>,  <32.352375, 35.278473, 41.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631126, 34.994637, 41.436737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212145, 0.065284, -0.975055,
		0.685096, 0.701580, 0.196032,
		0.696877, -0.709594, 0.104111,
		32.840191, 34.781757, 41.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006653, 35.596470, 41.119644>,  <32.352375, 35.278473, 41.395092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006653, 35.596470, 41.119644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006157, 35.197105, 41.097115>,  <33.005859, 34.957485, 41.083595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006157, 35.197105, 41.097115>,  <33.006653, 35.596470, 41.119644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006157, 35.197105, 41.097115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181340, 0.055168, -0.981872,
		0.983420, -0.011432, 0.180983,
		-0.001240, -0.998412, -0.056327,
		33.005783, 34.897583, 41.080215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636581, 35.412148, 40.778946>,  <33.006653, 35.596470, 41.119644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636581, 35.412148, 40.778946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404057, 35.090641, 40.728291>,  <33.264542, 34.897736, 40.697899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404057, 35.090641, 40.728291>,  <33.636581, 35.412148, 40.778946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404057, 35.090641, 40.728291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205188, 0.005802, -0.978705,
		0.787387, -0.594915, 0.161551,
		-0.581309, -0.803768, -0.126638,
		33.229664, 34.849510, 40.690300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862995, 35.181770, 40.154316>,  <33.636581, 35.412148, 40.778946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862995, 35.181770, 40.154316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501949, 35.017864, 40.207054>,  <33.285324, 34.919521, 40.238697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501949, 35.017864, 40.207054>,  <33.862995, 35.181770, 40.154316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501949, 35.017864, 40.207054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132884, -0.026080, -0.990788,
		0.409431, -0.911817, -0.030911,
		-0.902611, -0.409767, 0.131844,
		33.231167, 34.894936, 40.246609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886417, 34.579674, 39.777271>,  <33.862995, 35.181770, 40.154316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886417, 34.579674, 39.777271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507515, 34.698467, 39.825459>,  <33.280174, 34.769741, 39.854370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507515, 34.698467, 39.825459>,  <33.886417, 34.579674, 39.777271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507515, 34.698467, 39.825459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154619, -0.094222, -0.983471,
		-0.280721, -0.950223, 0.135171,
		-0.947253, 0.296981, 0.120472,
		33.223339, 34.787560, 39.861599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449478, 34.070782, 39.442406>,  <33.886417, 34.579674, 39.777271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449478, 34.070782, 39.442406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270565, 34.428509, 39.437908>,  <33.163216, 34.643147, 39.435207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270565, 34.428509, 39.437908>,  <33.449478, 34.070782, 39.442406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270565, 34.428509, 39.437908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184454, -0.104541, -0.977266,
		-0.875165, -0.435041, 0.211721,
		-0.447284, 0.894321, -0.011246,
		33.136379, 34.696804, 39.434536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127960, 34.068409, 38.889500>,  <33.449478, 34.070782, 39.442406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127960, 34.068409, 38.889500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057274, 34.454323, 38.967434>,  <33.014862, 34.685871, 39.014194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057274, 34.454323, 38.967434>,  <33.127960, 34.068409, 38.889500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057274, 34.454323, 38.967434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038787, 0.190967, -0.980830,
		-0.983497, -0.180888, 0.003674,
		-0.176719, 0.964786, 0.194832,
		33.004257, 34.743759, 39.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407001, 34.194817, 38.831696>,  <33.127960, 34.068409, 38.889500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407001, 34.194817, 38.831696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583527, 34.546360, 38.759201>,  <32.689442, 34.757286, 38.715706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583527, 34.546360, 38.759201>,  <32.407001, 34.194817, 38.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583527, 34.546360, 38.759201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064804, -0.170228, -0.983271,
		-0.895010, 0.445675, -0.018170,
		0.441313, 0.878861, -0.181237,
		32.715919, 34.810017, 38.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147362, 34.339733, 38.150730>,  <32.407001, 34.194817, 38.831696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147362, 34.339733, 38.150730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439133, 34.612320, 38.174522>,  <32.614193, 34.775871, 38.188797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439133, 34.612320, 38.174522>,  <32.147362, 34.339733, 38.150730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439133, 34.612320, 38.174522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014380, 0.102212, -0.994659,
		-0.683909, 0.724674, 0.084355,
		0.729426, 0.681469, 0.059482,
		32.657959, 34.816761, 38.192368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113251, 34.825348, 37.565067>,  <32.147362, 34.339733, 38.150730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113251, 34.825348, 37.565067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480042, 34.897488, 37.707409>,  <32.700115, 34.940773, 37.792812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480042, 34.897488, 37.707409>,  <32.113251, 34.825348, 37.565067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480042, 34.897488, 37.707409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338272, 0.121389, -0.933186,
		-0.211500, 0.976083, 0.050302,
		0.916973, 0.180353, 0.355856,
		32.755135, 34.951595, 37.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438240, 35.336491, 37.054558>,  <32.113251, 34.825348, 37.565067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438240, 35.336491, 37.054558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731995, 35.182594, 37.278217>,  <32.908249, 35.090256, 37.412411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731995, 35.182594, 37.278217>,  <32.438240, 35.336491, 37.054558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731995, 35.182594, 37.278217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634216, 0.095578, -0.767225,
		0.241743, 0.918061, 0.314203,
		0.734391, -0.384744, 0.559144,
		32.952312, 35.067173, 37.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998199, 35.811386, 37.000877>,  <32.438240, 35.336491, 37.054558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998199, 35.811386, 37.000877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117733, 35.439846, 37.088451>,  <33.189453, 35.216923, 37.140995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117733, 35.439846, 37.088451>,  <32.998199, 35.811386, 37.000877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117733, 35.439846, 37.088451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683616, 0.048287, -0.728243,
		0.665859, 0.367287, 0.649409,
		0.298832, -0.928853, 0.218930,
		33.207382, 35.161190, 37.154129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798122, 35.841225, 37.004539>,  <32.998199, 35.811386, 37.000877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798122, 35.841225, 37.004539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685246, 35.461735, 36.947556>,  <33.617519, 35.234043, 36.913364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685246, 35.461735, 36.947556>,  <33.798122, 35.841225, 37.004539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685246, 35.461735, 36.947556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589829, -0.054457, -0.805690,
		0.756617, -0.311388, 0.574951,
		-0.282193, -0.948721, -0.142462,
		33.600586, 35.177120, 36.904816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414387, 35.522972, 36.743668>,  <33.798122, 35.841225, 37.004539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414387, 35.522972, 36.743668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115448, 35.281914, 36.631748>,  <33.936085, 35.137280, 36.564598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115448, 35.281914, 36.631748>,  <34.414387, 35.522972, 36.743668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115448, 35.281914, 36.631748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478072, -0.195285, -0.856336,
		0.461427, -0.773746, 0.434054,
		-0.747351, -0.602645, -0.279796,
		33.891243, 35.101120, 36.547810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578201, 34.781151, 36.511593>,  <34.414387, 35.522972, 36.743668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578201, 34.781151, 36.511593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263062, 34.920559, 36.308487>,  <34.073978, 35.004204, 36.186623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263062, 34.920559, 36.308487>,  <34.578201, 34.781151, 36.511593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263062, 34.920559, 36.308487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439614, -0.259158, -0.859986,
		-0.431319, -0.900759, 0.050961,
		-0.787847, 0.348525, -0.507766,
		34.026707, 35.025116, 36.156158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882721, 34.037712, 36.910580>,  <34.578201, 34.781151, 36.511593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882721, 34.037712, 36.910580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098080, 33.802307, 36.669323>,  <35.227295, 33.661064, 36.524570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098080, 33.802307, 36.669323>,  <34.882721, 34.037712, 36.910580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098080, 33.802307, 36.669323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054107, -0.690114, 0.721675,
		-0.840955, -0.421180, -0.339710,
		0.538393, -0.588516, -0.603143,
		35.259598, 33.625751, 36.488380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644836, 33.379753, 37.119751>,  <34.882721, 34.037712, 36.910580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644836, 33.379753, 37.119751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997009, 33.290253, 36.952526>,  <35.208313, 33.236553, 36.852192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997009, 33.290253, 36.952526>,  <34.644836, 33.379753, 37.119751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997009, 33.290253, 36.952526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163790, -0.683888, 0.710964,
		-0.444983, -0.694431, -0.565470,
		0.880434, -0.223748, -0.418060,
		35.261139, 33.223129, 36.827106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791824, 32.720394, 37.400131>,  <34.644836, 33.379753, 37.119751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791824, 32.720394, 37.400131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152237, 32.824009, 37.260971>,  <35.368484, 32.886177, 37.177475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152237, 32.824009, 37.260971>,  <34.791824, 32.720394, 37.400131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152237, 32.824009, 37.260971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432951, -0.585670, 0.685233,
		-0.026249, -0.768042, -0.639861,
		0.901035, 0.259042, -0.347898,
		35.422546, 32.901722, 37.156601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090889, 32.113701, 37.267220>,  <34.791824, 32.720394, 37.400131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090889, 32.113701, 37.267220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408504, 32.352829, 37.311245>,  <35.599072, 32.496307, 37.337662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408504, 32.352829, 37.311245>,  <35.090889, 32.113701, 37.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408504, 32.352829, 37.311245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351359, -0.599137, 0.719431,
		0.496036, -0.532582, -0.685787,
		0.794037, 0.597822, 0.110066,
		35.646717, 32.532177, 37.344265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602139, 31.633020, 37.408783>,  <35.090889, 32.113701, 37.267220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602139, 31.633020, 37.408783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728470, 32.000225, 37.504707>,  <35.804268, 32.220547, 37.562260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728470, 32.000225, 37.504707>,  <35.602139, 31.633020, 37.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728470, 32.000225, 37.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390036, -0.356014, 0.849191,
		0.864944, -0.174661, -0.470496,
		0.315824, 0.918013, 0.239808,
		35.823215, 32.275627, 37.576649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366688, 31.566021, 37.637669>,  <35.602139, 31.633020, 37.408783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366688, 31.566021, 37.637669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214840, 31.909288, 37.775909>,  <36.123734, 32.115250, 37.858852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214840, 31.909288, 37.775909>,  <36.366688, 31.566021, 37.637669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214840, 31.909288, 37.775909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397025, -0.186296, 0.898702,
		0.835622, 0.478372, -0.269993,
		-0.379616, 0.858169, 0.345599,
		36.100956, 32.166740, 37.879589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768288, 31.740879, 38.185383>,  <36.366688, 31.566021, 37.637669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768288, 31.740879, 38.185383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445770, 31.973831, 38.226807>,  <36.252258, 32.113602, 38.251663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445770, 31.973831, 38.226807>,  <36.768288, 31.740879, 38.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445770, 31.973831, 38.226807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125761, -0.002298, 0.992058,
		0.577991, 0.812914, -0.071388,
		-0.806294, 0.582379, 0.103561,
		36.203880, 32.148544, 38.257874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947392, 32.275883, 38.769669>,  <36.768288, 31.740879, 38.185383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947392, 32.275883, 38.769669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547413, 32.271873, 38.769016>,  <36.307426, 32.269466, 38.768627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547413, 32.271873, 38.769016>,  <36.947392, 32.275883, 38.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547413, 32.271873, 38.769016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001059, -0.056587, 0.998397,
		-0.010098, 0.998348, 0.056574,
		-0.999949, -0.010022, -0.001628,
		36.247429, 32.268867, 38.768528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675472, 32.857052, 39.282570>,  <36.947392, 32.275883, 38.769669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675472, 32.857052, 39.282570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386242, 32.586079, 39.228546>,  <36.212704, 32.423496, 39.196133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386242, 32.586079, 39.228546>,  <36.675472, 32.857052, 39.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386242, 32.586079, 39.228546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085794, -0.105934, 0.990665,
		-0.685416, 0.727917, 0.018479,
		-0.723079, -0.677433, -0.135060,
		36.169319, 32.382851, 39.188026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131828, 33.081120, 39.602547>,  <36.675472, 32.857052, 39.282570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131828, 33.081120, 39.602547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056152, 32.688709, 39.585625>,  <36.010746, 32.453262, 39.575474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056152, 32.688709, 39.585625>,  <36.131828, 33.081120, 39.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056152, 32.688709, 39.585625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221833, 0.000734, 0.975084,
		-0.956554, 0.193863, -0.217764,
		-0.189193, -0.981029, -0.042303,
		35.999393, 32.394402, 39.572933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429726, 33.073223, 39.986465>,  <36.131828, 33.081120, 39.602547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429726, 33.073223, 39.986465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587177, 32.705750, 39.999569>,  <35.681648, 32.485264, 40.007431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587177, 32.705750, 39.999569>,  <35.429726, 33.073223, 39.986465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587177, 32.705750, 39.999569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309049, -0.098690, 0.945912,
		-0.865765, -0.382458, -0.322766,
		0.393625, -0.918687, 0.032756,
		35.705265, 32.430141, 40.009396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949196, 32.539108, 40.252953>,  <35.429726, 33.073223, 39.986465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949196, 32.539108, 40.252953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324051, 32.412674, 40.312099>,  <35.548962, 32.336811, 40.347588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324051, 32.412674, 40.312099>,  <34.949196, 32.539108, 40.252953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324051, 32.412674, 40.312099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217934, -0.199180, 0.955422,
		-0.272547, -0.927585, -0.255545,
		0.937135, -0.316090, 0.147867,
		35.605190, 32.317848, 40.356461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926231, 32.298107, 40.870949>,  <34.949196, 32.539108, 40.252953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926231, 32.298107, 40.870949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319530, 32.249184, 40.816898>,  <35.555511, 32.219830, 40.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319530, 32.249184, 40.816898>,  <34.926231, 32.298107, 40.870949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319530, 32.249184, 40.816898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109785, -0.194368, 0.974766,
		-0.145480, -0.973275, -0.177686,
		0.983252, -0.122301, -0.135128,
		35.614506, 32.212494, 40.776360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111080, 31.669744, 41.111126>,  <34.926231, 32.298107, 40.870949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111080, 31.669744, 41.111126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463802, 31.858383, 41.112572>,  <35.675438, 31.971565, 41.113438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463802, 31.858383, 41.112572>,  <35.111080, 31.669744, 41.111126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463802, 31.858383, 41.112572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102095, -0.198374, 0.974794,
		0.460426, -0.859212, -0.223076,
		0.881807, 0.471595, 0.003616,
		35.728344, 31.999863, 41.113655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631706, 31.198719, 41.425892>,  <35.111080, 31.669744, 41.111126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631706, 31.198719, 41.425892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759922, 31.575394, 41.466843>,  <35.836853, 31.801397, 41.491413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759922, 31.575394, 41.466843>,  <35.631706, 31.198719, 41.425892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759922, 31.575394, 41.466843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153137, -0.158173, 0.975464,
		0.934773, -0.297002, -0.194908,
		0.320544, 0.941685, 0.102374,
		35.856087, 31.857899, 41.497555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269012, 31.169577, 41.796345>,  <35.631706, 31.198719, 41.425892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269012, 31.169577, 41.796345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159626, 31.550192, 41.852627>,  <36.093994, 31.778561, 41.886395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159626, 31.550192, 41.852627>,  <36.269012, 31.169577, 41.796345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159626, 31.550192, 41.852627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137409, -0.106131, 0.984812,
		0.952017, 0.288644, -0.101726,
		-0.273464, 0.951536, 0.140701,
		36.077587, 31.835653, 41.894836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648331, 31.359417, 42.309719>,  <36.269012, 31.169577, 41.796345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648331, 31.359417, 42.309719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354626, 31.630304, 42.290806>,  <36.178402, 31.792837, 42.279457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354626, 31.630304, 42.290806>,  <36.648331, 31.359417, 42.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354626, 31.630304, 42.290806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071622, -0.008023, 0.997400,
		0.675079, 0.735737, 0.054395,
		-0.734261, 0.677219, -0.047279,
		36.134346, 31.833469, 42.276623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783089, 31.873871, 42.810509>,  <36.648331, 31.359417, 42.309719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783089, 31.873871, 42.810509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386814, 31.882561, 42.756729>,  <36.149052, 31.887775, 42.724461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386814, 31.882561, 42.756729>,  <36.783089, 31.873871, 42.810509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386814, 31.882561, 42.756729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127947, 0.189808, 0.973449,
		0.046667, 0.981581, -0.185259,
		-0.990682, 0.021725, -0.134448,
		36.089611, 31.889078, 42.716396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539295, 32.214050, 43.300964>,  <36.783089, 31.873871, 42.810509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539295, 32.214050, 43.300964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182491, 32.085407, 43.173916>,  <35.968407, 32.008221, 43.097687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182491, 32.085407, 43.173916>,  <36.539295, 32.214050, 43.300964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182491, 32.085407, 43.173916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378092, 0.145792, 0.914216,
		-0.247713, 0.935581, -0.251646,
		-0.892011, -0.321608, -0.317622,
		35.914886, 31.988924, 43.078629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055309, 32.607731, 43.709904>,  <36.539295, 32.214050, 43.300964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055309, 32.607731, 43.709904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849091, 32.295059, 43.569508>,  <35.725361, 32.107456, 43.485271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849091, 32.295059, 43.569508>,  <36.055309, 32.607731, 43.709904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849091, 32.295059, 43.569508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503703, -0.054904, 0.862130,
		-0.693181, 0.621259, -0.365429,
		-0.515542, -0.781680, -0.350989,
		35.694427, 32.060555, 43.464211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298584, 32.704121, 43.839245>,  <36.055309, 32.607731, 43.709904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298584, 32.704121, 43.839245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360729, 32.310001, 43.810837>,  <35.398018, 32.073528, 43.793793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360729, 32.310001, 43.810837>,  <35.298584, 32.704121, 43.839245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360729, 32.310001, 43.810837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495241, -0.139896, 0.857418,
		-0.854750, -0.098040, -0.509697,
		0.155366, -0.985301, -0.071023,
		35.407337, 32.014412, 43.789532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632999, 32.453842, 43.925262>,  <35.298584, 32.704121, 43.839245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632999, 32.453842, 43.925262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887142, 32.153229, 43.996269>,  <35.039627, 31.972860, 44.038872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887142, 32.153229, 43.996269>,  <34.632999, 32.453842, 43.925262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887142, 32.153229, 43.996269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579690, -0.312308, 0.752611,
		-0.510174, -0.581083, -0.634086,
		0.635360, -0.751536, 0.177517,
		35.077751, 31.927769, 44.049526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292683, 31.797739, 44.009438>,  <34.632999, 32.453842, 43.925262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292683, 31.797739, 44.009438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635433, 31.745630, 44.208954>,  <34.841084, 31.714365, 44.328663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635433, 31.745630, 44.208954>,  <34.292683, 31.797739, 44.009438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635433, 31.745630, 44.208954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515389, -0.194201, 0.834661,
		-0.011862, -0.972274, -0.233544,
		0.856875, -0.130267, 0.498796,
		34.892494, 31.706549, 44.358593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153339, 31.238091, 44.374317>,  <34.292683, 31.797739, 44.009438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153339, 31.238091, 44.374317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473125, 31.386736, 44.563110>,  <34.664997, 31.475924, 44.676384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473125, 31.386736, 44.563110>,  <34.153339, 31.238091, 44.374317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473125, 31.386736, 44.563110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462114, -0.121548, 0.878451,
		0.383811, -0.920397, 0.074554,
		0.799462, 0.371612, 0.471980,
		34.712963, 31.498219, 44.704704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265572, 30.752277, 44.934570>,  <34.153339, 31.238091, 44.374317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265572, 30.752277, 44.934570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467445, 31.079222, 45.045727>,  <34.588570, 31.275389, 45.112419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467445, 31.079222, 45.045727>,  <34.265572, 30.752277, 44.934570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467445, 31.079222, 45.045727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275861, -0.152332, 0.949050,
		0.818046, -0.555625, 0.148598,
		0.504680, 0.817359, 0.277890,
		34.618851, 31.324429, 45.129093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565907, 30.482803, 45.524086>,  <34.265572, 30.752277, 44.934570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565907, 30.482803, 45.524086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608379, 30.880013, 45.544613>,  <34.633862, 31.118338, 45.556931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608379, 30.880013, 45.544613>,  <34.565907, 30.482803, 45.524086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608379, 30.880013, 45.544613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205531, -0.028581, 0.978233,
		0.972874, -0.114414, 0.201062,
		0.106177, 0.993022, 0.051321,
		34.640232, 31.177919, 45.560009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074024, 30.752108, 46.140869>,  <34.565907, 30.482803, 45.524086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074024, 30.752108, 46.140869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827789, 31.058638, 46.067329>,  <34.680050, 31.242556, 46.023205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827789, 31.058638, 46.067329>,  <35.074024, 30.752108, 46.140869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827789, 31.058638, 46.067329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100329, 0.155183, 0.982778,
		0.781658, 0.623428, -0.018644,
		-0.615584, 0.766326, -0.183848,
		34.643112, 31.288536, 46.012177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345730, 31.380529, 46.484509>,  <35.074024, 30.752108, 46.140869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345730, 31.380529, 46.484509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951023, 31.415718, 46.430019>,  <34.714199, 31.436831, 46.397324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951023, 31.415718, 46.430019>,  <35.345730, 31.380529, 46.484509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951023, 31.415718, 46.430019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122705, 0.144140, 0.981920,
		0.106017, 0.985639, -0.131437,
		-0.986764, 0.087972, -0.136225,
		34.654995, 31.442110, 46.389153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277046, 32.103428, 46.759544>,  <35.345730, 31.380529, 46.484509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277046, 32.103428, 46.759544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919430, 31.924864, 46.744484>,  <34.704861, 31.817726, 46.735447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919430, 31.924864, 46.744484>,  <35.277046, 32.103428, 46.759544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919430, 31.924864, 46.744484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222546, 0.369620, 0.902139,
		-0.388805, 0.814925, -0.429800,
		-0.894038, -0.446406, -0.037648,
		34.651218, 31.790941, 46.733189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726421, 32.626728, 46.749928>,  <35.277046, 32.103428, 46.759544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726421, 32.626728, 46.749928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576283, 32.290573, 46.906322>,  <34.486198, 32.088882, 47.000160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576283, 32.290573, 46.906322>,  <34.726421, 32.626728, 46.749928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576283, 32.290573, 46.906322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202380, 0.485957, 0.850228,
		-0.904520, 0.240004, -0.352479,
		-0.375348, -0.840383, 0.390986,
		34.463676, 32.038460, 47.023617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289043, 32.838604, 47.254063>,  <34.726421, 32.626728, 46.749928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289043, 32.838604, 47.254063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313721, 32.453316, 47.358673>,  <34.328526, 32.222141, 47.421440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313721, 32.453316, 47.358673>,  <34.289043, 32.838604, 47.254063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313721, 32.453316, 47.358673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231110, 0.241119, 0.942576,
		-0.970970, -0.118592, -0.207735,
		0.061693, -0.963223, 0.261528,
		34.332230, 32.164349, 47.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663960, 32.750072, 47.677452>,  <34.289043, 32.838604, 47.254063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663960, 32.750072, 47.677452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907955, 32.447544, 47.772015>,  <34.054352, 32.266026, 47.828751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907955, 32.447544, 47.772015>,  <33.663960, 32.750072, 47.677452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907955, 32.447544, 47.772015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099895, 0.222563, 0.969787,
		-0.786085, -0.615179, 0.060210,
		0.609993, -0.756320, 0.236406,
		34.090954, 32.220650, 47.842937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352455, 32.428505, 48.274174>,  <33.663960, 32.750072, 47.677452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352455, 32.428505, 48.274174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731976, 32.302917, 48.288071>,  <33.959686, 32.227566, 48.296410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731976, 32.302917, 48.288071>,  <33.352455, 32.428505, 48.274174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731976, 32.302917, 48.288071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065894, 0.304286, 0.950299,
		-0.308935, -0.899352, 0.309394,
		0.948798, -0.313968, 0.034743,
		34.016617, 32.208729, 48.298492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332630, 31.897264, 48.763512>,  <33.352455, 32.428505, 48.274174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332630, 31.897264, 48.763512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696827, 32.055954, 48.716846>,  <33.915344, 32.151169, 48.688847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696827, 32.055954, 48.716846>,  <33.332630, 31.897264, 48.763512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696827, 32.055954, 48.716846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005503, 0.270477, 0.962711,
		0.413488, -0.877183, 0.244084,
		0.910493, 0.396726, -0.116666,
		33.969975, 32.174973, 48.681847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659775, 31.738613, 49.394821>,  <33.332630, 31.897264, 48.763512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659775, 31.738613, 49.394821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880219, 32.039082, 49.249481>,  <34.012486, 32.219364, 49.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880219, 32.039082, 49.249481>,  <33.659775, 31.738613, 49.394821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880219, 32.039082, 49.249481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070299, 0.392098, 0.917233,
		0.831467, -0.531038, 0.163282,
		0.551108, 0.751171, -0.363349,
		34.045551, 32.264431, 49.140476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174156, 31.751759, 49.818546>,  <33.659775, 31.738613, 49.394821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174156, 31.751759, 49.818546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171040, 32.111572, 49.643833>,  <34.169170, 32.327461, 49.539005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171040, 32.111572, 49.643833>,  <34.174156, 31.751759, 49.818546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171040, 32.111572, 49.643833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108182, 0.434987, 0.893915,
		0.994101, -0.040289, -0.100702,
		-0.007789, 0.899535, -0.436779,
		34.168701, 32.381432, 49.512798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626900, 32.041500, 50.220406>,  <34.174156, 31.751759, 49.818546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626900, 32.041500, 50.220406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477184, 32.355721, 50.023296>,  <34.387356, 32.544250, 49.905033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477184, 32.355721, 50.023296>,  <34.626900, 32.041500, 50.220406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477184, 32.355721, 50.023296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254721, 0.598048, 0.759905,
		0.891642, 0.158905, -0.423939,
		-0.374288, 0.785549, -0.492769,
		34.364899, 32.591385, 49.875465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241489, 32.498173, 50.208725>,  <34.626900, 32.041500, 50.220406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241489, 32.498173, 50.208725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896885, 32.693790, 50.154118>,  <34.690125, 32.811161, 50.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896885, 32.693790, 50.154118>,  <35.241489, 32.498173, 50.208725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896885, 32.693790, 50.154118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257092, 0.652016, 0.713287,
		0.437843, 0.579405, -0.687447,
		-0.861508, 0.489045, -0.136521,
		34.638432, 32.840504, 50.113163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326481, 33.223038, 49.983162>,  <35.241489, 32.498173, 50.208725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326481, 33.223038, 49.983162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979515, 33.216030, 50.182072>,  <34.771336, 33.211826, 50.301418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979515, 33.216030, 50.182072>,  <35.326481, 33.223038, 49.983162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979515, 33.216030, 50.182072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384338, 0.611126, 0.691960,
		-0.316020, 0.791339, -0.523368,
		-0.867419, -0.017523, 0.497270,
		34.719288, 33.210773, 50.331253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430500, 33.709652, 50.476601>,  <35.326481, 33.223038, 49.983162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430500, 33.709652, 50.476601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708828, 33.970947, 50.596004>,  <35.875824, 34.127724, 50.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708828, 33.970947, 50.596004>,  <35.430500, 33.709652, 50.476601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708828, 33.970947, 50.596004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036257, 0.383146, -0.922976,
		-0.717300, 0.653049, 0.242916,
		0.695821, 0.653243, 0.298508,
		35.917576, 34.166920, 50.685558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305794, 34.320915, 50.014297>,  <35.430500, 33.709652, 50.476601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305794, 34.320915, 50.014297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670883, 34.386490, 50.163998>,  <35.889935, 34.425835, 50.253819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670883, 34.386490, 50.163998>,  <35.305794, 34.320915, 50.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670883, 34.386490, 50.163998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332173, 0.235618, -0.913316,
		-0.237908, 0.957919, 0.160597,
		0.912722, 0.163939, 0.374250,
		35.944698, 34.435673, 50.276272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577053, 34.880749, 49.602955>,  <35.305794, 34.320915, 50.014297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577053, 34.880749, 49.602955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903591, 34.710003, 49.758583>,  <36.099514, 34.607555, 49.851959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903591, 34.710003, 49.758583>,  <35.577053, 34.880749, 49.602955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903591, 34.710003, 49.758583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480208, 0.127329, -0.867864,
		0.320917, 0.895308, 0.308926,
		0.816341, -0.426861, 0.389073,
		36.148495, 34.581944, 49.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194504, 35.257477, 49.370594>,  <35.577053, 34.880749, 49.602955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194504, 35.257477, 49.370594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330841, 34.895142, 49.471226>,  <36.412643, 34.677742, 49.531605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330841, 34.895142, 49.471226>,  <36.194504, 35.257477, 49.370594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330841, 34.895142, 49.471226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339243, -0.131064, -0.931524,
		0.876779, 0.402847, 0.262626,
		0.340840, -0.905835, 0.251577,
		36.433094, 34.623390, 49.546700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876427, 35.242184, 49.140728>,  <36.194504, 35.257477, 49.370594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876427, 35.242184, 49.140728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752831, 34.863228, 49.174149>,  <36.678673, 34.635857, 49.194202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.752831, 34.863228, 49.174149>,  <36.876427, 35.242184, 49.140728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752831, 34.863228, 49.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376499, -0.202526, -0.904009,
		0.873368, -0.247873, 0.419269,
		-0.308992, -0.947387, 0.083556,
		36.660133, 34.579010, 49.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403168, 34.804352, 49.081612>,  <36.876427, 35.242184, 49.140728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403168, 34.804352, 49.081612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108513, 34.551369, 48.985817>,  <36.931721, 34.399578, 48.928341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108513, 34.551369, 48.985817>,  <37.403168, 34.804352, 49.081612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108513, 34.551369, 48.985817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442900, -0.183552, -0.877581,
		0.511076, -0.752532, 0.415328,
		-0.736642, -0.632460, -0.239488,
		36.887520, 34.361629, 48.913971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698872, 34.157211, 48.635353>,  <37.403168, 34.804352, 49.081612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698872, 34.157211, 48.635353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308994, 34.095535, 48.570618>,  <37.075066, 34.058529, 48.531776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308994, 34.095535, 48.570618>,  <37.698872, 34.157211, 48.635353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308994, 34.095535, 48.570618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199199, -0.270638, -0.941846,
		0.101425, -0.950253, 0.294505,
		-0.974696, -0.154192, -0.161840,
		37.016586, 34.049278, 48.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516171, 33.433117, 48.552631>,  <37.698872, 34.157211, 48.635353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516171, 33.433117, 48.552631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247208, 33.654789, 48.356369>,  <37.085831, 33.787792, 48.238609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247208, 33.654789, 48.356369>,  <37.516171, 33.433117, 48.552631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247208, 33.654789, 48.356369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299712, -0.402264, -0.865076,
		-0.676784, -0.728742, 0.104392,
		-0.672410, 0.554183, -0.490658,
		37.045483, 33.821045, 48.209171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172630, 33.026508, 48.054592>,  <37.516171, 33.433117, 48.552631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172630, 33.026508, 48.054592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070171, 33.390285, 47.923561>,  <37.008698, 33.608551, 47.844944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070171, 33.390285, 47.923561>,  <37.172630, 33.026508, 48.054592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070171, 33.390285, 47.923561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034406, -0.347245, -0.937143,
		-0.966026, -0.228772, 0.120235,
		-0.256143, 0.909441, -0.327577,
		36.993328, 33.663116, 47.825287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787605, 32.916462, 47.521797>,  <37.172630, 33.026508, 48.054592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787605, 32.916462, 47.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887310, 33.298233, 47.456158>,  <36.947132, 33.527298, 47.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887310, 33.298233, 47.456158>,  <36.787605, 32.916462, 47.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887310, 33.298233, 47.456158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103706, -0.142169, -0.984395,
		-0.962867, 0.262393, 0.063543,
		0.249265, 0.954430, -0.164102,
		36.962090, 33.584560, 47.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354046, 33.067703, 47.007862>,  <36.787605, 32.916462, 47.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354046, 33.067703, 47.007862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628677, 33.358105, 46.992214>,  <36.793457, 33.532345, 46.982826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628677, 33.358105, 46.992214>,  <36.354046, 33.067703, 47.007862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628677, 33.358105, 46.992214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019199, -0.035683, -0.999179,
		-0.726805, 0.686763, -0.010561,
		0.686576, 0.726005, -0.039120,
		36.834652, 33.575905, 46.980476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065807, 33.555347, 46.415123>,  <36.354046, 33.067703, 47.007862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065807, 33.555347, 46.415123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448719, 33.660786, 46.462673>,  <36.678467, 33.724049, 46.491203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448719, 33.660786, 46.462673>,  <36.065807, 33.555347, 46.415123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448719, 33.660786, 46.462673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108063, 0.055213, -0.992610,
		-0.268209, 0.963052, 0.024370,
		0.957281, 0.263593, 0.118879,
		36.735905, 33.739864, 46.498337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226471, 34.169155, 45.970322>,  <36.065807, 33.555347, 46.415123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226471, 34.169155, 45.970322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579170, 33.989254, 46.027233>,  <36.790791, 33.881313, 46.061378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579170, 33.989254, 46.027233>,  <36.226471, 34.169155, 45.970322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579170, 33.989254, 46.027233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281300, 0.259208, -0.923949,
		0.378665, 0.854715, 0.355071,
		0.881750, -0.449748, 0.142279,
		36.843697, 33.854328, 46.069916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801041, 34.547203, 45.624413>,  <36.226471, 34.169155, 45.970322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801041, 34.547203, 45.624413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962288, 34.185955, 45.683556>,  <37.059036, 33.969204, 45.719044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962288, 34.185955, 45.683556>,  <36.801041, 34.547203, 45.624413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962288, 34.185955, 45.683556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541313, 0.105040, -0.834234,
		0.737883, 0.416338, 0.531216,
		0.403123, -0.903122, 0.147862,
		37.083225, 33.915020, 45.727913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498482, 34.547874, 45.547020>,  <36.801041, 34.547203, 45.624413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498482, 34.547874, 45.547020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419994, 34.160843, 45.483421>,  <37.372902, 33.928623, 45.445263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419994, 34.160843, 45.483421>,  <37.498482, 34.547874, 45.547020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419994, 34.160843, 45.483421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458015, 0.052931, -0.887368,
		0.867018, -0.246942, 0.432781,
		-0.196221, -0.967584, -0.158995,
		37.361130, 33.870567, 45.435722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078491, 34.417786, 45.217083>,  <37.498482, 34.547874, 45.547020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078491, 34.417786, 45.217083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801964, 34.145275, 45.120800>,  <37.636047, 33.981770, 45.063030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801964, 34.145275, 45.120800>,  <38.078491, 34.417786, 45.217083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801964, 34.145275, 45.120800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369558, -0.047121, -0.928012,
		0.620890, -0.730509, 0.284346,
		-0.691320, -0.681275, -0.240709,
		37.594566, 33.940891, 45.048588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467709, 33.942333, 44.992203>,  <38.078491, 34.417786, 45.217083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467709, 33.942333, 44.992203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108799, 33.881416, 44.826454>,  <37.893452, 33.844868, 44.727005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108799, 33.881416, 44.826454>,  <38.467709, 33.942333, 44.992203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108799, 33.881416, 44.826454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429309, -0.082259, -0.899404,
		0.102883, -0.984907, 0.139188,
		-0.897279, -0.152288, -0.414367,
		37.839615, 33.835732, 44.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576420, 33.444759, 44.515079>,  <38.467709, 33.942333, 44.992203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576420, 33.444759, 44.515079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224518, 33.608509, 44.418377>,  <38.013378, 33.706760, 44.360355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224518, 33.608509, 44.418377>,  <38.576420, 33.444759, 44.515079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224518, 33.608509, 44.418377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199712, -0.143251, -0.969327,
		-0.431453, -0.901049, 0.044268,
		-0.879752, 0.409378, -0.241756,
		37.960590, 33.731323, 44.345852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205685, 32.874886, 44.074780>,  <38.576420, 33.444759, 44.515079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205685, 32.874886, 44.074780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017441, 33.221573, 44.008659>,  <37.904495, 33.429585, 43.968987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017441, 33.221573, 44.008659>,  <38.205685, 32.874886, 44.074780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017441, 33.221573, 44.008659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067248, -0.222035, -0.972717,
		-0.879775, -0.446654, 0.162777,
		-0.470610, 0.866719, -0.165304,
		37.876259, 33.481590, 43.959068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665928, 32.688900, 43.564766>,  <38.205685, 32.874886, 44.074780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665928, 32.688900, 43.564766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674297, 33.088181, 43.542301>,  <37.679317, 33.327747, 43.528820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674297, 33.088181, 43.542301>,  <37.665928, 32.688900, 43.564766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674297, 33.088181, 43.542301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067130, -0.054647, -0.996246,
		-0.997525, 0.024615, 0.065866,
		0.020924, 0.998202, -0.056164,
		37.680573, 33.387642, 43.525452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193134, 32.932995, 43.108322>,  <37.665928, 32.688900, 43.564766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193134, 32.932995, 43.108322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465244, 33.225479, 43.088100>,  <37.628510, 33.400970, 43.075966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465244, 33.225479, 43.088100>,  <37.193134, 32.932995, 43.108322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465244, 33.225479, 43.088100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129468, 0.051983, -0.990220,
		-0.721435, 0.680165, 0.130031,
		0.680272, 0.731214, -0.050557,
		37.669327, 33.444843, 43.072933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006420, 33.257439, 42.519260>,  <37.193134, 32.932995, 43.108322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006420, 33.257439, 42.519260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382210, 33.371468, 42.595284>,  <37.607685, 33.439884, 42.640900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382210, 33.371468, 42.595284>,  <37.006420, 33.257439, 42.519260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382210, 33.371468, 42.595284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180046, 0.061196, -0.981753,
		-0.291498, 0.956552, 0.006166,
		0.939474, 0.285069, 0.190062,
		37.664051, 33.456989, 42.652302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044868, 33.880394, 42.181683>,  <37.006420, 33.257439, 42.519260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044868, 33.880394, 42.181683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426598, 33.769955, 42.227341>,  <37.655636, 33.703690, 42.254734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.426598, 33.769955, 42.227341>,  <37.044868, 33.880394, 42.181683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426598, 33.769955, 42.227341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155622, 0.133256, -0.978787,
		0.255033, 0.951846, 0.170137,
		0.954327, -0.276100, 0.114143,
		37.712894, 33.687126, 42.261585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344868, 34.352043, 41.904186>,  <37.044868, 33.880394, 42.181683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344868, 34.352043, 41.904186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584690, 34.032085, 41.893585>,  <37.728584, 33.840111, 41.887226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584690, 34.032085, 41.893585>,  <37.344868, 34.352043, 41.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584690, 34.032085, 41.893585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169614, 0.159358, -0.972541,
		0.782151, 0.578601, 0.231217,
		0.599559, -0.799891, -0.026503,
		37.764557, 33.792118, 41.885635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810257, 34.431744, 41.387096>,  <37.344868, 34.352043, 41.904186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810257, 34.431744, 41.387096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879803, 34.046940, 41.471294>,  <37.921532, 33.816059, 41.521812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879803, 34.046940, 41.471294>,  <37.810257, 34.431744, 41.387096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879803, 34.046940, 41.471294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354745, -0.138213, -0.924691,
		0.918655, 0.235445, 0.317238,
		0.173867, -0.962010, 0.210493,
		37.931961, 33.758335, 41.534443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542145, 34.252415, 41.408459>,  <37.810257, 34.431744, 41.387096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542145, 34.252415, 41.408459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322624, 33.933701, 41.307301>,  <38.190914, 33.742474, 41.246605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322624, 33.933701, 41.307301>,  <38.542145, 34.252415, 41.408459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322624, 33.933701, 41.307301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508852, -0.078382, -0.857278,
		0.663242, -0.599161, 0.448460,
		-0.548799, -0.796782, -0.252899,
		38.157986, 33.694664, 41.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982754, 33.803574, 41.198345>,  <38.542145, 34.252415, 41.408459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982754, 33.803574, 41.198345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647346, 33.646477, 41.047279>,  <38.446102, 33.552219, 40.956638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647346, 33.646477, 41.047279>,  <38.982754, 33.803574, 41.198345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647346, 33.646477, 41.047279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430039, -0.051403, -0.901346,
		0.334586, -0.918210, 0.211999,
		-0.838521, -0.392746, -0.377667,
		38.395790, 33.528652, 40.933979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196819, 33.176125, 40.779140>,  <38.982754, 33.803574, 41.198345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196819, 33.176125, 40.779140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829929, 33.277664, 40.656334>,  <38.609795, 33.338589, 40.582649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829929, 33.277664, 40.656334>,  <39.196819, 33.176125, 40.779140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829929, 33.277664, 40.656334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283166, -0.126641, -0.950673,
		-0.280208, -0.958918, 0.044276,
		-0.917224, 0.253848, -0.307019,
		38.554764, 33.353817, 40.564228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017353, 32.698639, 40.251347>,  <39.196819, 33.176125, 40.779140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017353, 32.698639, 40.251347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793579, 33.027390, 40.208355>,  <38.659313, 33.224640, 40.182560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793579, 33.027390, 40.208355>,  <39.017353, 32.698639, 40.251347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793579, 33.027390, 40.208355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202926, 0.010078, -0.979142,
		-0.803650, -0.569578, -0.172418,
		-0.559435, 0.821875, -0.107483,
		38.625748, 33.273952, 40.176109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024120, 32.748196, 39.545303>,  <39.017353, 32.698639, 40.251347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024120, 32.748196, 39.545303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859154, 33.098763, 39.644745>,  <38.760174, 33.309105, 39.704411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859154, 33.098763, 39.644745>,  <39.024120, 32.748196, 39.545303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859154, 33.098763, 39.644745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305727, 0.390217, -0.868482,
		-0.858164, -0.282170, -0.428876,
		-0.412414, 0.876420, 0.248603,
		38.735428, 33.361687, 39.719326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483894, 32.902382, 39.071693>,  <39.024120, 32.748196, 39.545303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483894, 32.902382, 39.071693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607040, 33.250816, 39.224758>,  <38.680927, 33.459877, 39.316597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607040, 33.250816, 39.224758>,  <38.483894, 32.902382, 39.071693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607040, 33.250816, 39.224758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191027, 0.337412, -0.921771,
		-0.932057, 0.356877, -0.062525,
		0.307863, 0.871087, 0.382660,
		38.699398, 33.512142, 39.339558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250458, 33.308891, 38.577038>,  <38.483894, 32.902382, 39.071693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250458, 33.308891, 38.577038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503887, 33.538212, 38.784847>,  <38.655945, 33.675804, 38.909531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503887, 33.538212, 38.784847>,  <38.250458, 33.308891, 38.577038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503887, 33.538212, 38.784847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332594, 0.404455, -0.851937,
		-0.698541, 0.712559, 0.065577,
		0.633578, 0.573303, 0.519521,
		38.693962, 33.710201, 38.940704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187553, 33.949310, 38.257446>,  <38.250458, 33.308891, 38.577038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187553, 33.949310, 38.257446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527309, 33.967052, 38.467804>,  <38.731163, 33.977699, 38.594021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527309, 33.967052, 38.467804>,  <38.187553, 33.949310, 38.257446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527309, 33.967052, 38.467804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445486, 0.474029, -0.759499,
		-0.282979, 0.879392, 0.382875,
		0.849391, 0.044357, 0.525897,
		38.782127, 33.980358, 38.625572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280926, 34.589657, 38.400543>,  <38.187553, 33.949310, 38.257446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280926, 34.589657, 38.400543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653683, 34.446526, 38.424347>,  <38.877335, 34.360649, 38.438629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653683, 34.446526, 38.424347>,  <38.280926, 34.589657, 38.400543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653683, 34.446526, 38.424347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306488, 0.688951, -0.656819,
		0.194027, 0.630323, 0.751696,
		0.931890, -0.357826, 0.059511,
		38.933250, 34.339176, 38.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725170, 35.204498, 38.443985>,  <38.280926, 34.589657, 38.400543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725170, 35.204498, 38.443985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949028, 34.906471, 38.298840>,  <39.083344, 34.727654, 38.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949028, 34.906471, 38.298840>,  <38.725170, 35.204498, 38.443985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949028, 34.906471, 38.298840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423741, 0.633553, -0.647344,
		0.712209, 0.208523, 0.670281,
		0.559645, -0.745070, -0.362862,
		39.116920, 34.682949, 38.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237858, 35.523865, 38.210228>,  <38.725170, 35.204498, 38.443985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237858, 35.523865, 38.210228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 35.171886, 38.025105>,  <39.306484, 34.960701, 37.914028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280750, 35.171886, 38.025105>,  <39.237858, 35.523865, 38.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280750, 35.171886, 38.025105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427492, 0.461075, -0.777599,
		0.897637, -0.114467, 0.425611,
		0.107229, -0.879947, -0.462812,
		39.312920, 34.907902, 37.886261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898018, 35.548672, 37.985817>,  <39.237858, 35.523865, 38.210228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898018, 35.548672, 37.985817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697926, 35.294804, 37.750202>,  <39.577869, 35.142483, 37.608833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697926, 35.294804, 37.750202>,  <39.898018, 35.548672, 37.985817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697926, 35.294804, 37.750202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464132, 0.377757, -0.801175,
		0.730996, -0.674161, 0.105607,
		-0.500227, -0.634671, -0.589038,
		39.547859, 35.104401, 37.573490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345150, 35.495422, 37.497776>,  <39.898018, 35.548672, 37.985817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345150, 35.495422, 37.497776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019127, 35.330894, 37.334560>,  <39.823513, 35.232178, 37.236629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019127, 35.330894, 37.334560>,  <40.345150, 35.495422, 37.497776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019127, 35.330894, 37.334560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312656, 0.280672, -0.907452,
		0.487775, -0.867204, -0.100164,
		-0.815059, -0.411316, -0.408041,
		39.774609, 35.207500, 37.212147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458820, 35.055130, 36.909542>,  <40.345150, 35.495422, 37.497776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458820, 35.055130, 36.909542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073689, 35.128296, 36.830040>,  <39.842609, 35.172195, 36.782341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073689, 35.128296, 36.830040>,  <40.458820, 35.055130, 36.909542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073689, 35.128296, 36.830040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218185, 0.092908, -0.971475,
		-0.159229, -0.978729, -0.129364,
		-0.962830, 0.182912, -0.198751,
		39.784840, 35.183170, 36.770416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228973, 34.626846, 36.382099>,  <40.458820, 35.055130, 36.909542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228973, 34.626846, 36.382099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969494, 34.930878, 36.366745>,  <39.813808, 35.113297, 36.357533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969494, 34.930878, 36.366745>,  <40.228973, 34.626846, 36.382099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969494, 34.930878, 36.366745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164264, 0.090587, -0.982248,
		-0.743109, -0.643486, -0.183617,
		-0.648696, 0.760079, -0.038386,
		39.774883, 35.158901, 36.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617977, 34.651424, 35.830334>,  <40.228973, 34.626846, 36.382099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617977, 34.651424, 35.830334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728088, 35.026707, 35.914223>,  <39.794155, 35.251877, 35.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728088, 35.026707, 35.914223>,  <39.617977, 34.651424, 35.830334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728088, 35.026707, 35.914223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264258, 0.135905, -0.954829,
		-0.924332, 0.318267, -0.210517,
		0.275280, 0.938209, 0.209726,
		39.810673, 35.308170, 35.977142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224716, 35.286320, 35.483868>,  <39.617977, 34.651424, 35.830334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224716, 35.286320, 35.483868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612408, 35.345798, 35.562340>,  <39.845024, 35.381485, 35.609425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612408, 35.345798, 35.562340>,  <39.224716, 35.286320, 35.483868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612408, 35.345798, 35.562340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174313, 0.148152, -0.973481,
		-0.173817, 0.977722, 0.117674,
		0.969228, 0.148696, 0.196181,
		39.903175, 35.390408, 35.621193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217289, 35.503029, 34.837311>,  <39.224716, 35.286320, 35.483868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217289, 35.503029, 34.837311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583744, 35.519279, 34.996826>,  <39.803619, 35.529030, 35.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583744, 35.519279, 34.996826>,  <39.217289, 35.503029, 34.837311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583744, 35.519279, 34.996826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335745, 0.465758, -0.818746,
		-0.218999, 0.883979, 0.413061,
		0.916141, 0.040622, 0.398792,
		39.858585, 35.531467, 35.116463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391548, 36.268318, 34.842438>,  <39.217289, 35.503029, 34.837311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391548, 36.268318, 34.842438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696342, 36.010582, 34.816498>,  <39.879219, 35.855942, 34.800934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696342, 36.010582, 34.816498>,  <39.391548, 36.268318, 34.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696342, 36.010582, 34.816498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376381, 0.522132, -0.765320,
		0.526986, 0.558755, 0.640374,
		0.761986, -0.644338, -0.064851,
		39.924938, 35.817280, 34.797043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959801, 36.643970, 34.846138>,  <39.391548, 36.268318, 34.842438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959801, 36.643970, 34.846138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111084, 36.297855, 34.714539>,  <40.201855, 36.090187, 34.635578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.111084, 36.297855, 34.714539>,  <39.959801, 36.643970, 34.846138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111084, 36.297855, 34.714539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622680, 0.500775, -0.601244,
		0.685000, 0.022538, 0.728194,
		0.378213, -0.865284, -0.328997,
		40.224548, 36.038269, 34.615841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682507, 36.413410, 35.132526>,  <39.959801, 36.643970, 34.846138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682507, 36.413410, 35.132526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618927, 36.267727, 34.765465>,  <40.580780, 36.180317, 34.545227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618927, 36.267727, 34.765465>,  <40.682507, 36.413410, 35.132526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618927, 36.267727, 34.765465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734344, 0.577645, -0.356462,
		0.659905, -0.730531, 0.175641,
		-0.158948, -0.364212, -0.917652,
		40.571243, 36.158463, 34.490170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265846, 36.144287, 34.806641>,  <40.682507, 36.413410, 35.132526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265846, 36.144287, 34.806641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005581, 36.279171, 34.534489>,  <40.849422, 36.360104, 34.371197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005581, 36.279171, 34.534489>,  <41.265846, 36.144287, 34.806641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005581, 36.279171, 34.534489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706613, 0.596993, -0.379865,
		0.278088, -0.727932, -0.626723,
		-0.650665, 0.337214, -0.680383,
		40.810383, 36.380337, 34.330376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680901, 35.491337, 34.712147>,  <41.265846, 36.144287, 34.806641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680901, 35.491337, 34.712147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033649, 35.341206, 34.826290>,  <42.245300, 35.251129, 34.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033649, 35.341206, 34.826290>,  <41.680901, 35.491337, 34.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033649, 35.341206, 34.826290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463242, -0.802418, 0.376208,
		0.087777, -0.463958, -0.881498,
		0.881874, -0.375325, 0.285358,
		42.298210, 35.228607, 34.911896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595196, 34.704102, 34.633057>,  <41.680901, 35.491337, 34.712147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595196, 34.704102, 34.633057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917381, 34.729576, 34.868740>,  <42.110695, 34.744862, 35.010151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917381, 34.729576, 34.868740>,  <41.595196, 34.704102, 34.633057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917381, 34.729576, 34.868740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336379, -0.769411, 0.543007,
		0.487925, -0.635571, -0.598313,
		0.805468, 0.063687, 0.589207,
		42.159023, 34.748684, 35.045502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772434, 34.033958, 34.773617>,  <41.595196, 34.704102, 34.633057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772434, 34.033958, 34.773617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974529, 34.225082, 35.061069>,  <42.095787, 34.339756, 35.233543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974529, 34.225082, 35.061069>,  <41.772434, 34.033958, 34.773617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974529, 34.225082, 35.061069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219920, -0.733952, 0.642612,
		0.834491, -0.482711, -0.265736,
		0.505233, 0.477813, 0.718634,
		42.126099, 34.368427, 35.276661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211903, 33.573574, 35.026646>,  <41.772434, 34.033958, 34.773617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211903, 33.573574, 35.026646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156513, 33.859707, 35.300617>,  <42.123280, 34.031387, 35.465000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156513, 33.859707, 35.300617>,  <42.211903, 33.573574, 35.026646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156513, 33.859707, 35.300617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187707, -0.698012, 0.691046,
		0.972415, -0.032876, 0.230928,
		-0.138472, 0.715331, 0.684929,
		42.114971, 34.074306, 35.506096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640167, 33.412441, 35.594795>,  <42.211903, 33.573574, 35.026646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640167, 33.412441, 35.594795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356281, 33.640522, 35.760288>,  <42.185951, 33.777370, 35.859585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356281, 33.640522, 35.760288>,  <42.640167, 33.412441, 35.594795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356281, 33.640522, 35.760288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115357, -0.673419, 0.730205,
		0.694979, 0.470511, 0.543713,
		-0.709716, 0.570198, 0.413736,
		42.143368, 33.811581, 35.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797005, 33.493645, 36.361973>,  <42.640167, 33.412441, 35.594795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797005, 33.493645, 36.361973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408772, 33.556412, 36.288937>,  <42.175831, 33.594074, 36.245113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408772, 33.556412, 36.288937>,  <42.797005, 33.493645, 36.361973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408772, 33.556412, 36.288937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238926, -0.721155, 0.650269,
		-0.029637, 0.674767, 0.737435,
		-0.970585, 0.156920, -0.182592,
		42.117596, 33.603489, 36.234158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524929, 33.414169, 36.944981>,  <42.797005, 33.493645, 36.361973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524929, 33.414169, 36.944981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215401, 33.357368, 36.698067>,  <42.029682, 33.323288, 36.549919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215401, 33.357368, 36.698067>,  <42.524929, 33.414169, 36.944981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215401, 33.357368, 36.698067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270047, -0.807574, 0.524309,
		-0.572954, 0.572416, 0.586570,
		-0.773821, -0.142004, -0.617282,
		41.983253, 33.314766, 36.512882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972622, 33.692436, 37.329758>,  <42.524929, 33.414169, 36.944981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972622, 33.692436, 37.329758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877789, 33.415096, 37.057564>,  <41.820889, 33.248692, 36.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877789, 33.415096, 37.057564>,  <41.972622, 33.692436, 37.329758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877789, 33.415096, 37.057564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341119, -0.596441, 0.726564,
		-0.909631, 0.404385, -0.095106,
		-0.237086, -0.693347, -0.680485,
		41.806664, 33.207092, 36.853420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446102, 33.279480, 37.735157>,  <41.972622, 33.692436, 37.329758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446102, 33.279480, 37.735157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534149, 33.070309, 37.405773>,  <41.586975, 32.944805, 37.208141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534149, 33.070309, 37.405773>,  <41.446102, 33.279480, 37.735157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534149, 33.070309, 37.405773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309403, -0.838005, 0.449463,
		-0.925105, 0.155848, -0.346254,
		0.220114, -0.522933, -0.823463,
		41.600185, 32.913429, 37.158733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854752, 32.880043, 37.617596>,  <41.446102, 33.279480, 37.735157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854752, 32.880043, 37.617596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153008, 32.700470, 37.420624>,  <41.331959, 32.592728, 37.302441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153008, 32.700470, 37.420624>,  <40.854752, 32.880043, 37.617596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153008, 32.700470, 37.420624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280792, -0.881857, 0.378792,
		-0.604302, -0.144173, -0.783603,
		0.745637, -0.448934, -0.492426,
		41.376698, 32.565788, 37.272896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682510, 32.159969, 37.400997>,  <40.854752, 32.880043, 37.617596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682510, 32.159969, 37.400997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076233, 32.094498, 37.374645>,  <41.312466, 32.055214, 37.358833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076233, 32.094498, 37.374645>,  <40.682510, 32.159969, 37.400997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076233, 32.094498, 37.374645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115062, -0.878530, 0.463623,
		-0.133765, -0.448769, -0.883580,
		0.984311, -0.163682, -0.065880,
		41.371525, 32.045391, 37.354881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752499, 31.406498, 37.107407>,  <40.682510, 32.159969, 37.400997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752499, 31.406498, 37.107407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105511, 31.505087, 37.267601>,  <41.317318, 31.564241, 37.363720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105511, 31.505087, 37.267601>,  <40.752499, 31.406498, 37.107407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105511, 31.505087, 37.267601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190526, -0.966018, 0.174669,
		0.429931, -0.077847, -0.899499,
		0.882530, 0.246473, 0.400489,
		41.370270, 31.579029, 37.387749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215206, 31.106482, 36.725822>,  <40.752499, 31.406498, 37.107407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215206, 31.106482, 36.725822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398232, 31.169537, 37.075859>,  <41.508045, 31.207371, 37.285881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398232, 31.169537, 37.075859>,  <41.215206, 31.106482, 36.725822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398232, 31.169537, 37.075859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294187, -0.955572, 0.018314,
		0.839100, 0.249060, -0.483611,
		0.457565, 0.157639, 0.875091,
		41.535500, 31.216829, 37.338387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871498, 30.821293, 36.613060>,  <41.215206, 31.106482, 36.725822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871498, 30.821293, 36.613060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827450, 30.852554, 37.009396>,  <41.801022, 30.871311, 37.247196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827450, 30.852554, 37.009396>,  <41.871498, 30.821293, 36.613060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827450, 30.852554, 37.009396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406693, -0.906085, 0.116666,
		0.906903, 0.415816, 0.067996,
		-0.110121, 0.078151, 0.990841,
		41.794415, 30.875999, 37.306648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609402, 30.798464, 36.990143>,  <41.871498, 30.821293, 36.613060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609402, 30.798464, 36.990143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328236, 30.697105, 37.255985>,  <42.159534, 30.636290, 37.415489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328236, 30.697105, 37.255985>,  <42.609402, 30.798464, 36.990143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328236, 30.697105, 37.255985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488481, -0.851163, 0.192114,
		0.517006, 0.459687, 0.722075,
		-0.702916, -0.253396, 0.664605,
		42.117359, 30.621086, 37.455368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928436, 30.488501, 37.523186>,  <42.609402, 30.798464, 36.990143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928436, 30.488501, 37.523186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554920, 30.347204, 37.546024>,  <42.330811, 30.262426, 37.559727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554920, 30.347204, 37.546024>,  <42.928436, 30.488501, 37.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554920, 30.347204, 37.546024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356774, -0.931339, 0.072943,
		0.027412, 0.088485, 0.995700,
		-0.933788, -0.353240, 0.057099,
		42.274784, 30.241232, 37.563152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028454, 29.956659, 38.027721>,  <42.928436, 30.488501, 37.523186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028454, 29.956659, 38.027721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667492, 29.892014, 37.867950>,  <42.450916, 29.853226, 37.772087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.667492, 29.892014, 37.867950>,  <43.028454, 29.956659, 38.027721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667492, 29.892014, 37.867950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153556, -0.986753, 0.052332,
		-0.402596, -0.014111, 0.915269,
		-0.902406, -0.161614, -0.399430,
		42.396770, 29.843529, 37.748123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704967, 29.521395, 38.514980>,  <43.028454, 29.956659, 38.027721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704967, 29.521395, 38.514980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499367, 29.498348, 38.172642>,  <42.376007, 29.484520, 37.967239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499367, 29.498348, 38.172642>,  <42.704967, 29.521395, 38.514980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499367, 29.498348, 38.172642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123030, -0.982474, 0.140031,
		-0.848918, 0.177272, 0.497908,
		-0.514005, -0.057617, -0.855850,
		42.345165, 29.481064, 37.915886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178589, 28.924719, 38.616325>,  <42.704967, 29.521395, 38.514980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178589, 28.924719, 38.616325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191429, 28.970736, 38.219189>,  <42.199135, 28.998346, 37.980907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191429, 28.970736, 38.219189>,  <42.178589, 28.924719, 38.616325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191429, 28.970736, 38.219189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052099, -0.991811, -0.116609,
		-0.998126, 0.055469, -0.025847,
		0.032104, 0.115044, -0.992842,
		42.201061, 29.005249, 37.921337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603519, 28.501373, 38.324108>,  <42.178589, 28.924719, 38.616325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603519, 28.501373, 38.324108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892715, 28.557583, 38.053543>,  <42.066235, 28.591309, 37.891205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892715, 28.557583, 38.053543>,  <41.603519, 28.501373, 38.324108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892715, 28.557583, 38.053543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080732, -0.989571, -0.119294,
		-0.686120, 0.031641, -0.726800,
		0.722995, 0.140526, -0.676410,
		42.109615, 28.599741, 37.850620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509987, 27.994534, 37.747906>,  <41.603519, 28.501373, 38.324108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509987, 27.994534, 37.747906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890808, 28.114647, 37.724506>,  <42.119301, 28.186714, 37.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890808, 28.114647, 37.724506>,  <41.509987, 27.994534, 37.747906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890808, 28.114647, 37.724506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294193, -0.951093, -0.094197,
		-0.083921, 0.072471, -0.993833,
		0.952054, 0.300284, -0.058496,
		42.176426, 28.204733, 37.706959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903435, 27.509455, 37.349152>,  <41.509987, 27.994534, 37.747906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903435, 27.509455, 37.349152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169300, 27.671005, 37.600578>,  <42.328819, 27.767937, 37.751434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169300, 27.671005, 37.600578>,  <41.903435, 27.509455, 37.349152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169300, 27.671005, 37.600578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436746, -0.892621, 0.111713,
		0.606193, 0.200274, -0.769689,
		0.664667, 0.403878, 0.628570,
		42.368702, 27.792170, 37.789150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181789, 26.696465, 37.369999>,  <41.903435, 27.509455, 37.349152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181789, 26.696465, 37.369999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366646, 26.962147, 37.605034>,  <42.477558, 27.121555, 37.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366646, 26.962147, 37.605034>,  <42.181789, 26.696465, 37.369999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366646, 26.962147, 37.605034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826315, -0.563048, -0.013431,
		0.321919, 0.491740, -0.809049,
		0.462138, 0.664205, 0.587588,
		42.505287, 27.161407, 37.781311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837738, 26.837772, 37.169266>,  <42.181789, 26.696465, 37.369999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837738, 26.837772, 37.169266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890762, 26.915642, 37.558014>,  <42.922577, 26.962364, 37.791264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890762, 26.915642, 37.558014>,  <42.837738, 26.837772, 37.169266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890762, 26.915642, 37.558014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618479, -0.782461, 0.072376,
		0.774539, 0.591487, -0.224124,
		0.132559, 0.194674, 0.971869,
		42.930531, 26.974045, 37.849575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630081, 26.674587, 37.157375>,  <42.837738, 26.837772, 37.169266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630081, 26.674587, 37.157375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435898, 26.635082, 37.504841>,  <43.319389, 26.611380, 37.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.435898, 26.635082, 37.504841>,  <43.630081, 26.674587, 37.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435898, 26.635082, 37.504841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000926, -0.993657, -0.112454,
		0.874261, -0.053787, 0.482467,
		-0.485455, -0.098761, 0.868666,
		43.290260, 26.605453, 37.765442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149570, 26.346954, 37.652580>,  <43.630081, 26.674587, 37.157375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149570, 26.346954, 37.652580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427963, 26.059917, 37.642258>,  <44.595001, 25.887695, 37.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427963, 26.059917, 37.642258>,  <44.149570, 26.346954, 37.652580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427963, 26.059917, 37.642258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467930, -0.480512, 0.741721,
		-0.544650, -0.504154, -0.670213,
		0.695987, -0.717591, -0.025802,
		44.636761, 25.844641, 37.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883877, 25.689520, 37.469574>,  <44.149570, 26.346954, 37.652580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883877, 25.689520, 37.469574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204777, 25.658812, 37.706387>,  <44.397316, 25.640387, 37.848473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204777, 25.658812, 37.706387>,  <43.883877, 25.689520, 37.469574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204777, 25.658812, 37.706387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573907, -0.372249, 0.729426,
		0.164382, -0.924952, -0.342698,
		0.802253, -0.076772, 0.592027,
		44.445454, 25.635780, 37.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854698, 25.466530, 36.665333>,  <43.883877, 25.689520, 37.469574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854698, 25.466530, 36.665333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976566, 25.304411, 36.320564>,  <44.049686, 25.207140, 36.113705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976566, 25.304411, 36.320564>,  <43.854698, 25.466530, 36.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976566, 25.304411, 36.320564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308577, 0.814134, -0.491901,
		0.901087, 0.415836, 0.122976,
		0.304669, -0.405298, -0.861923,
		44.067966, 25.182821, 36.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278294, 25.991913, 36.255405>,  <43.854698, 25.466530, 36.665333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278294, 25.991913, 36.255405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137566, 25.704611, 36.015293>,  <44.053127, 25.532230, 35.871227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137566, 25.704611, 36.015293>,  <44.278294, 25.991913, 36.255405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137566, 25.704611, 36.015293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285627, 0.693067, -0.661872,
		0.891426, -0.061403, -0.448986,
		-0.351819, -0.718253, -0.600280,
		44.032021, 25.489136, 35.835209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583965, 25.953945, 35.694035>,  <44.278294, 25.991913, 36.255405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583965, 25.953945, 35.694035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216721, 25.842306, 35.581486>,  <43.996372, 25.775322, 35.513958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216721, 25.842306, 35.581486>,  <44.583965, 25.953945, 35.694035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216721, 25.842306, 35.581486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135054, 0.887806, -0.439955,
		0.372594, -0.365929, -0.852801,
		-0.918114, -0.279099, -0.281372,
		43.941288, 25.758577, 35.497074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544556, 26.078728, 34.938560>,  <44.583965, 25.953945, 35.694035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544556, 26.078728, 34.938560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181385, 26.110182, 35.103237>,  <43.963482, 26.129055, 35.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181385, 26.110182, 35.103237>,  <44.544556, 26.078728, 34.938560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181385, 26.110182, 35.103237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054068, 0.952061, -0.301091,
		-0.415629, -0.295628, -0.860149,
		-0.907926, 0.078635, 0.411688,
		43.909008, 26.133772, 35.226742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091625, 26.313055, 34.394478>,  <44.544556, 26.078728, 34.938560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091625, 26.313055, 34.394478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956631, 26.432270, 34.751640>,  <43.875633, 26.503799, 34.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956631, 26.432270, 34.751640>,  <44.091625, 26.313055, 34.394478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956631, 26.432270, 34.751640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041285, 0.942956, -0.330348,
		-0.940423, -0.148353, -0.305934,
		-0.337490, 0.298036, 0.892902,
		43.855385, 26.521681, 35.019512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616749, 26.845633, 34.315666>,  <44.091625, 26.313055, 34.394478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616749, 26.845633, 34.315666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719799, 26.915180, 34.695854>,  <43.781628, 26.956909, 34.923969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719799, 26.915180, 34.695854>,  <43.616749, 26.845633, 34.315666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719799, 26.915180, 34.695854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070305, 0.977696, -0.197906,
		-0.963684, 0.117808, 0.239655,
		0.257624, 0.173870, 0.950473,
		43.797085, 26.967340, 34.980995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593090, 27.486712, 34.260845>,  <43.616749, 26.845633, 34.315666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593090, 27.486712, 34.260845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746998, 27.442163, 34.627354>,  <43.839344, 27.415434, 34.847260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746998, 27.442163, 34.627354>,  <43.593090, 27.486712, 34.260845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746998, 27.442163, 34.627354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253728, 0.967213, 0.011013,
		-0.887453, 0.228245, 0.400415,
		0.384773, -0.111370, 0.916268,
		43.862431, 27.408752, 34.902233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301086, 27.963730, 34.625389>,  <43.593090, 27.486712, 34.260845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301086, 27.963730, 34.625389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637913, 27.907894, 34.833790>,  <43.840008, 27.874392, 34.958832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637913, 27.907894, 34.833790>,  <43.301086, 27.963730, 34.625389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637913, 27.907894, 34.833790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137601, 0.989565, 0.042737,
		-0.521533, 0.035704, 0.852484,
		0.842063, -0.139591, 0.521004,
		43.890530, 27.866016, 34.990089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253105, 28.383020, 35.247101>,  <43.301086, 27.963730, 34.625389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253105, 28.383020, 35.247101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641624, 28.318775, 35.176926>,  <43.874737, 28.280228, 35.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641624, 28.318775, 35.176926>,  <43.253105, 28.383020, 35.247101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641624, 28.318775, 35.176926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172873, 0.983299, 0.056899,
		0.163370, -0.085595, 0.982845,
		0.971301, -0.160611, -0.175439,
		43.933014, 28.270592, 35.124294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600559, 28.814354, 35.718246>,  <43.253105, 28.383020, 35.247101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600559, 28.814354, 35.718246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880974, 28.735523, 35.444103>,  <44.049221, 28.688225, 35.279617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.880974, 28.735523, 35.444103>,  <43.600559, 28.814354, 35.718246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880974, 28.735523, 35.444103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234418, 0.971332, -0.039528,
		0.673498, -0.132949, 0.727135,
		0.701035, -0.197076, -0.685355,
		44.091286, 28.676401, 35.238495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207085, 29.132360, 35.932217>,  <43.600559, 28.814354, 35.718246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207085, 29.132360, 35.932217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285618, 29.088249, 35.542492>,  <44.332737, 29.061783, 35.308655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285618, 29.088249, 35.542492>,  <44.207085, 29.132360, 35.932217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285618, 29.088249, 35.542492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281740, 0.958098, -0.051671,
		0.939189, -0.264359, 0.219177,
		0.196333, -0.110280, -0.974316,
		44.344517, 29.055164, 35.250198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756851, 29.571161, 35.797264>,  <44.207085, 29.132360, 35.932217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756851, 29.571161, 35.797264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611229, 29.490627, 35.433521>,  <44.523857, 29.442307, 35.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611229, 29.490627, 35.433521>,  <44.756851, 29.571161, 35.797264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611229, 29.490627, 35.433521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050028, 0.970720, -0.234948,
		0.930033, -0.131027, -0.343322,
		-0.364054, -0.201334, -0.909357,
		44.502014, 29.430227, 35.160713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153736, 29.952578, 35.385189>,  <44.756851, 29.571161, 35.797264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153736, 29.952578, 35.385189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822041, 29.856480, 35.183338>,  <44.623024, 29.798820, 35.062229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822041, 29.856480, 35.183338>,  <45.153736, 29.952578, 35.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822041, 29.856480, 35.183338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046752, 0.929549, -0.365721,
		0.556935, -0.279678, -0.782051,
		-0.829239, -0.240245, -0.504623,
		44.573269, 29.784407, 35.031952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261318, 30.193892, 34.663082>,  <45.153736, 29.952578, 35.385189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261318, 30.193892, 34.663082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865490, 30.172113, 34.716419>,  <44.627991, 30.159046, 34.748421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865490, 30.172113, 34.716419>,  <45.261318, 30.193892, 34.663082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865490, 30.172113, 34.716419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105421, 0.904607, -0.413005,
		-0.098135, -0.422756, -0.900914,
		-0.989574, -0.054445, 0.133341,
		44.568619, 30.155781, 34.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977642, 30.396200, 34.035564>,  <45.261318, 30.193892, 34.663082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977642, 30.396200, 34.035564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685467, 30.456736, 34.301964>,  <44.510162, 30.493057, 34.461803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685467, 30.456736, 34.301964>,  <44.977642, 30.396200, 34.035564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685467, 30.456736, 34.301964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137736, 0.922464, -0.360679,
		-0.668943, -0.355186, -0.652961,
		-0.730441, 0.151338, 0.665997,
		44.466335, 30.502136, 34.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563759, 30.760967, 33.694859>,  <44.977642, 30.396200, 34.035564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563759, 30.760967, 33.694859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489479, 30.833969, 34.081062>,  <44.444912, 30.877769, 34.312786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.489479, 30.833969, 34.081062>,  <44.563759, 30.760967, 33.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489479, 30.833969, 34.081062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117331, 0.971451, -0.206196,
		-0.975575, -0.151576, -0.158988,
		-0.185703, 0.182505, 0.965508,
		44.433769, 30.888721, 34.370716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961475, 31.116655, 33.724113>,  <44.563759, 30.760967, 33.694859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961475, 31.116655, 33.724113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099659, 31.207678, 34.088284>,  <44.182568, 31.262291, 34.306786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099659, 31.207678, 34.088284>,  <43.961475, 31.116655, 33.724113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099659, 31.207678, 34.088284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177935, 0.968439, -0.174541,
		-0.921410, -0.101700, 0.375047,
		0.345459, 0.227558, 0.910426,
		44.203297, 31.275946, 34.361412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514824, 31.670710, 34.000378>,  <43.961475, 31.116655, 33.724113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514824, 31.670710, 34.000378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856834, 31.698317, 34.205963>,  <44.062042, 31.714880, 34.329315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856834, 31.698317, 34.205963>,  <43.514824, 31.670710, 34.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856834, 31.698317, 34.205963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054485, 0.997575, -0.043318,
		-0.515711, 0.009035, 0.856715,
		0.855028, 0.069017, 0.513968,
		44.113342, 31.719021, 34.360153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328869, 32.012691, 34.538376>,  <43.514824, 31.670710, 34.000378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328869, 32.012691, 34.538376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724491, 32.060669, 34.503998>,  <43.961864, 32.089455, 34.483372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724491, 32.060669, 34.503998>,  <43.328869, 32.012691, 34.538376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724491, 32.060669, 34.503998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109797, 0.987351, 0.114375,
		0.098575, -0.103687, 0.989713,
		0.989054, 0.119942, -0.085943,
		44.021206, 32.096653, 34.478214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518612, 32.584084, 35.016670>,  <43.328869, 32.012691, 34.538376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518612, 32.584084, 35.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837196, 32.562954, 34.775715>,  <44.028347, 32.550278, 34.631142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837196, 32.562954, 34.775715>,  <43.518612, 32.584084, 35.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837196, 32.562954, 34.775715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141738, 0.984732, 0.101056,
		0.587849, -0.165868, 0.791783,
		0.796457, -0.052820, -0.602384,
		44.076134, 32.547108, 34.595001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044559, 32.879639, 35.342712>,  <43.518612, 32.584084, 35.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044559, 32.879639, 35.342712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163826, 32.920116, 34.963058>,  <44.235386, 32.944405, 34.735268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163826, 32.920116, 34.963058>,  <44.044559, 32.879639, 35.342712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163826, 32.920116, 34.963058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088593, 0.987138, 0.133082,
		0.950392, -0.123768, 0.285369,
		0.298170, 0.101198, -0.949133,
		44.253277, 32.950478, 34.678318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755974, 33.275673, 35.298229>,  <44.044559, 32.879639, 35.342712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755974, 33.275673, 35.298229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576820, 33.304558, 34.941761>,  <44.469326, 33.321888, 34.727879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576820, 33.304558, 34.941761>,  <44.755974, 33.275673, 35.298229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576820, 33.304558, 34.941761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123443, 0.992182, 0.018354,
		0.885528, -0.101787, -0.453299,
		-0.447887, 0.072210, -0.891169,
		44.442455, 33.326221, 34.674412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173599, 33.880936, 35.012852>,  <44.755974, 33.275673, 35.298229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173599, 33.880936, 35.012852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837833, 33.802616, 34.810051>,  <44.636375, 33.755623, 34.688370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837833, 33.802616, 34.810051>,  <45.173599, 33.880936, 35.012852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837833, 33.802616, 34.810051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139350, 0.979204, -0.147452,
		0.525329, -0.053122, -0.849239,
		-0.839411, -0.195802, -0.507001,
		44.586010, 33.743874, 34.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313381, 34.261536, 34.324154>,  <45.173599, 33.880936, 35.012852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313381, 34.261536, 34.324154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922462, 34.227463, 34.401752>,  <44.687912, 34.207020, 34.448311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922462, 34.227463, 34.401752>,  <45.313381, 34.261536, 34.324154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922462, 34.227463, 34.401752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139832, 0.947202, -0.288540,
		-0.159177, -0.309117, -0.937609,
		-0.977297, -0.085179, 0.193997,
		44.629272, 34.201908, 34.459953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907387, 34.577866, 34.064857>,  <45.313381, 34.261536, 34.324154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907387, 34.577866, 34.064857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105667, 34.910580, 34.164787>,  <46.224636, 35.110210, 34.224747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.105667, 34.910580, 34.164787>,  <45.907387, 34.577866, 34.064857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105667, 34.910580, 34.164787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780747, -0.552779, 0.291324,
		0.380419, 0.050642, -0.923427,
		0.495698, 0.831787, 0.249826,
		46.254375, 35.160114, 34.239735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524242, 34.441704, 33.888340>,  <45.907387, 34.577866, 34.064857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524242, 34.441704, 33.888340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565239, 34.738007, 34.153904>,  <46.589836, 34.915791, 34.313240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565239, 34.738007, 34.153904>,  <46.524242, 34.441704, 33.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565239, 34.738007, 34.153904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775584, -0.477427, 0.412957,
		0.622868, 0.472588, -0.623455,
		0.102495, 0.740759, 0.663906,
		46.595989, 34.960236, 34.353077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252876, 34.800114, 33.841450>,  <46.524242, 34.441704, 33.888340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252876, 34.800114, 33.841450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062038, 34.826653, 34.191986>,  <46.947536, 34.842575, 34.402309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.062038, 34.826653, 34.191986>,  <47.252876, 34.800114, 33.841450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.062038, 34.826653, 34.191986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841298, -0.253889, 0.477239,
		0.254155, 0.964955, 0.065316,
		-0.477098, 0.066343, 0.876343,
		46.918911, 34.846554, 34.454887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.616482, 35.237469, 34.401024>,  <47.252876, 34.800114, 33.841450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.616482, 35.237469, 34.401024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410336, 34.944061, 34.578274>,  <47.286648, 34.768017, 34.684624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.410336, 34.944061, 34.578274>,  <47.616482, 35.237469, 34.401024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.410336, 34.944061, 34.578274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841171, -0.334151, 0.425176,
		-0.163804, 0.591861, 0.789221,
		-0.515364, -0.733515, 0.443120,
		47.255726, 34.724007, 34.711208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640377, 35.322647, 35.177811>,  <47.616482, 35.237469, 34.401024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640377, 35.322647, 35.177811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573879, 34.939007, 35.086163>,  <47.533981, 34.708824, 35.031174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573879, 34.939007, 35.086163>,  <47.640377, 35.322647, 35.177811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573879, 34.939007, 35.086163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729730, -0.275935, 0.625583,
		-0.663218, -0.063200, 0.745753,
		-0.166243, -0.959096, -0.229124,
		47.524006, 34.651279, 35.017426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.713863, 39.764805, 44.089558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400398, 39.518078, 44.060127>,  <34.212318, 39.370041, 44.042469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400398, 39.518078, 44.060127>,  <34.713863, 39.764805, 44.089558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400398, 39.518078, 44.060127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099542, -0.007780, -0.995003,
		0.613162, -0.787068, 0.067496,
		-0.783660, -0.616816, -0.073576,
		34.165298, 39.333035, 44.038055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039566, 39.192116, 43.807709>,  <34.713863, 39.764805, 44.089558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039566, 39.192116, 43.807709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646191, 39.178123, 43.736572>,  <34.410164, 39.169727, 43.693890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.646191, 39.178123, 43.736572>,  <35.039566, 39.192116, 43.807709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646191, 39.178123, 43.736572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174876, 0.074760, -0.981748,
		0.047628, -0.996588, -0.067407,
		-0.983438, -0.034971, -0.177840,
		34.351158, 39.167629, 43.683220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926132, 38.732086, 43.234322>,  <35.039566, 39.192116, 43.807709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926132, 38.732086, 43.234322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567497, 38.908413, 43.217304>,  <34.352318, 39.014210, 43.207092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567497, 38.908413, 43.217304>,  <34.926132, 38.732086, 43.234322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567497, 38.908413, 43.217304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099071, 0.106009, -0.989417,
		-0.431641, -0.891315, -0.138719,
		-0.896588, 0.440816, -0.042545,
		34.298519, 39.040657, 43.204540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655933, 38.487297, 42.711872>,  <34.926132, 38.732086, 43.234322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655933, 38.487297, 42.711872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439735, 38.820297, 42.760551>,  <34.310017, 39.020096, 42.789761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.439735, 38.820297, 42.760551>,  <34.655933, 38.487297, 42.711872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439735, 38.820297, 42.760551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024946, 0.160441, -0.986730,
		-0.840975, -0.530290, -0.107486,
		-0.540499, 0.832497, 0.121698,
		34.277584, 39.070045, 42.797062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023510, 38.484722, 42.314365>,  <34.655933, 38.487297, 42.711872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023510, 38.484722, 42.314365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120773, 38.868801, 42.369339>,  <34.179131, 39.099251, 42.402325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.120773, 38.868801, 42.369339>,  <34.023510, 38.484722, 42.314365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120773, 38.868801, 42.369339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067472, 0.124602, -0.989910,
		-0.967638, 0.249974, -0.034489,
		0.243155, 0.960202, 0.137436,
		34.193718, 39.156860, 42.410568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483517, 38.890720, 41.996605>,  <34.023510, 38.484722, 42.314365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483517, 38.890720, 41.996605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807278, 39.124729, 42.017056>,  <34.001534, 39.265133, 42.029324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.807278, 39.124729, 42.017056>,  <33.483517, 38.890720, 41.996605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807278, 39.124729, 42.017056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089710, -0.037145, -0.995275,
		-0.580358, 0.810167, -0.082547,
		0.809405, 0.585021, 0.051123,
		34.050098, 39.300236, 42.032391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536179, 39.192760, 41.333549>,  <33.483517, 38.890720, 41.996605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536179, 39.192760, 41.333549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906288, 39.273071, 41.462269>,  <34.128353, 39.321259, 41.539501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906288, 39.273071, 41.462269>,  <33.536179, 39.192760, 41.333549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906288, 39.273071, 41.462269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349463, -0.121451, -0.929045,
		-0.147451, 0.972079, -0.182541,
		0.925275, 0.200780, 0.321798,
		34.183872, 39.333305, 41.558807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828743, 39.655861, 40.852768>,  <33.536179, 39.192760, 41.333549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828743, 39.655861, 40.852768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153622, 39.514744, 41.038616>,  <34.348549, 39.430073, 41.150124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.153622, 39.514744, 41.038616>,  <33.828743, 39.655861, 40.852768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153622, 39.514744, 41.038616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460605, -0.100960, -0.881845,
		0.358020, 0.930237, 0.080501,
		0.812197, -0.352797, 0.464617,
		34.397282, 39.408905, 41.178001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429829, 40.049610, 40.611519>,  <33.828743, 39.655861, 40.852768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429829, 40.049610, 40.611519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550861, 39.689369, 40.736328>,  <34.623482, 39.473225, 40.811214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550861, 39.689369, 40.736328>,  <34.429829, 40.049610, 40.611519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550861, 39.689369, 40.736328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515381, -0.120780, -0.848407,
		0.801763, 0.417525, 0.427608,
		0.302585, -0.900603, 0.312021,
		34.641636, 39.419189, 40.829933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049793, 40.025497, 40.285397>,  <34.429829, 40.049610, 40.611519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049793, 40.025497, 40.285397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980648, 39.650501, 40.406216>,  <34.939159, 39.425503, 40.478706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.980648, 39.650501, 40.406216>,  <35.049793, 40.025497, 40.285397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980648, 39.650501, 40.406216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578155, -0.344857, -0.739466,
		0.797405, 0.046806, 0.601627,
		-0.172864, -0.937488, 0.302051,
		34.928787, 39.369255, 40.496830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711666, 39.679222, 40.176735>,  <35.049793, 40.025497, 40.285397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711666, 39.679222, 40.176735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412933, 39.413361, 40.185440>,  <35.233692, 39.253845, 40.190662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.412933, 39.413361, 40.185440>,  <35.711666, 39.679222, 40.176735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412933, 39.413361, 40.185440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329188, -0.397929, -0.856322,
		0.577817, -0.632368, 0.515983,
		-0.746835, -0.664653, 0.021762,
		35.188881, 39.213966, 40.191967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056339, 39.180656, 40.098854>,  <35.711666, 39.679222, 40.176735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056339, 39.180656, 40.098854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695812, 39.068981, 39.966377>,  <35.479496, 39.001976, 39.886890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695812, 39.068981, 39.966377>,  <36.056339, 39.180656, 40.098854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695812, 39.068981, 39.966377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412143, -0.317399, -0.854047,
		0.133315, -0.906264, 0.401139,
		-0.901313, -0.279184, -0.331196,
		35.425419, 38.985226, 39.867020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126305, 38.423950, 39.753132>,  <36.056339, 39.180656, 40.098854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126305, 38.423950, 39.753132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758579, 38.519890, 39.628334>,  <35.537945, 38.577454, 39.553455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758579, 38.519890, 39.628334>,  <36.126305, 38.423950, 39.753132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758579, 38.519890, 39.628334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201701, -0.393568, -0.896895,
		-0.337911, -0.887455, 0.313433,
		-0.919311, 0.239851, -0.311991,
		35.482784, 38.591846, 39.534737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807953, 37.785473, 39.507313>,  <36.126305, 38.423950, 39.753132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807953, 37.785473, 39.507313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605286, 38.091389, 39.348122>,  <35.483685, 38.274937, 39.252609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605286, 38.091389, 39.348122>,  <35.807953, 37.785473, 39.507313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605286, 38.091389, 39.348122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141568, -0.381545, -0.913445,
		-0.850438, -0.519156, 0.085048,
		-0.506670, 0.764788, -0.397976,
		35.453285, 38.320824, 39.228729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416351, 37.499493, 38.912422>,  <35.807953, 37.785473, 39.507313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416351, 37.499493, 38.912422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.443790, 37.892174, 38.841370>,  <35.460255, 38.127781, 38.798740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.443790, 37.892174, 38.841370>,  <35.416351, 37.499493, 38.912422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443790, 37.892174, 38.841370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274873, -0.189754, -0.942570,
		-0.959030, 0.015835, -0.282861,
		0.068599, 0.981704, -0.177627,
		35.464371, 38.186684, 38.788082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160530, 37.491741, 38.277515>,  <35.416351, 37.499493, 38.912422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160530, 37.491741, 38.277515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368866, 37.832817, 38.293781>,  <35.493866, 38.037460, 38.303543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368866, 37.832817, 38.293781>,  <35.160530, 37.491741, 38.277515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368866, 37.832817, 38.293781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224740, -0.091006, -0.970160,
		-0.823541, 0.514435, -0.239032,
		0.520838, 0.852687, 0.040667,
		35.525116, 38.088623, 38.305981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980515, 37.856632, 37.673119>,  <35.160530, 37.491741, 38.277515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980515, 37.856632, 37.673119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339504, 37.993896, 37.783955>,  <35.554897, 38.076256, 37.850456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.339504, 37.993896, 37.783955>,  <34.980515, 37.856632, 37.673119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339504, 37.993896, 37.783955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278882, 0.045215, -0.959260,
		-0.341707, 0.938189, -0.055122,
		0.897475, 0.343158, 0.277094,
		35.608746, 38.096844, 37.867085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054012, 38.447235, 37.264194>,  <34.980515, 37.856632, 37.673119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054012, 38.447235, 37.264194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431103, 38.392883, 37.386051>,  <35.657356, 38.360271, 37.459167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431103, 38.392883, 37.386051>,  <35.054012, 38.447235, 37.264194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431103, 38.392883, 37.386051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316067, 0.071880, -0.946010,
		0.106646, 0.988114, 0.110710,
		0.942724, -0.135880, 0.304644,
		35.713921, 38.352119, 37.477444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531246, 38.980095, 36.839333>,  <35.054012, 38.447235, 37.264194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531246, 38.980095, 36.839333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758457, 38.673424, 36.959034>,  <35.894783, 38.489422, 37.030857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758457, 38.673424, 36.959034>,  <35.531246, 38.980095, 36.839333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758457, 38.673424, 36.959034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450657, -0.014510, -0.892579,
		0.688659, 0.641874, 0.337265,
		0.568029, -0.766673, 0.299257,
		35.928867, 38.443420, 37.048813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231335, 39.139835, 36.640442>,  <35.531246, 38.980095, 36.839333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231335, 39.139835, 36.640442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227226, 38.741028, 36.671040>,  <36.224762, 38.501743, 36.689396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227226, 38.741028, 36.671040>,  <36.231335, 39.139835, 36.640442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227226, 38.741028, 36.671040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468168, -0.072389, -0.880670,
		0.883580, 0.026764, 0.467515,
		-0.010273, -0.997017, 0.076492,
		36.224144, 38.441921, 36.693989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850563, 38.873463, 36.426239>,  <36.231335, 39.139835, 36.640442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850563, 38.873463, 36.426239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640846, 38.532852, 36.424324>,  <36.515015, 38.328487, 36.423176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.640846, 38.532852, 36.424324>,  <36.850563, 38.873463, 36.426239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640846, 38.532852, 36.424324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563223, -0.342555, -0.751955,
		0.638668, -0.396941, 0.659198,
		-0.524293, -0.851525, -0.004788,
		36.483559, 38.277393, 36.422886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338165, 38.330021, 36.393879>,  <36.850563, 38.873463, 36.426239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338165, 38.330021, 36.393879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985500, 38.235901, 36.230267>,  <36.773903, 38.179428, 36.132099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985500, 38.235901, 36.230267>,  <37.338165, 38.330021, 36.393879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985500, 38.235901, 36.230267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470780, -0.379480, -0.796468,
		0.032187, -0.894780, 0.445346,
		-0.881663, -0.235296, -0.409030,
		36.721001, 38.165314, 36.107559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541676, 37.809334, 35.892876>,  <37.338165, 38.330021, 36.393879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541676, 37.809334, 35.892876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919128, 37.691475, 35.953201>,  <38.145599, 37.620758, 35.989399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919128, 37.691475, 35.953201>,  <37.541676, 37.809334, 35.892876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919128, 37.691475, 35.953201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187236, -0.099414, 0.977271,
		-0.272958, -0.950421, -0.148978,
		0.943629, -0.294649, 0.150818,
		38.202217, 37.603081, 35.998447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440132, 37.401302, 36.422325>,  <37.541676, 37.809334, 35.892876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440132, 37.401302, 36.422325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839085, 37.408302, 36.450417>,  <38.078457, 37.412502, 36.467270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839085, 37.408302, 36.450417>,  <37.440132, 37.401302, 36.422325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839085, 37.408302, 36.450417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060908, -0.321125, 0.945076,
		0.039089, -0.946875, -0.319217,
		0.997378, 0.017500, 0.070225,
		38.138298, 37.413551, 36.471485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750622, 36.797581, 36.844513>,  <37.440132, 37.401302, 36.422325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750622, 36.797581, 36.844513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013630, 37.097176, 36.877232>,  <38.171436, 37.276932, 36.896862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.013630, 37.097176, 36.877232>,  <37.750622, 36.797581, 36.844513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013630, 37.097176, 36.877232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044789, -0.147228, 0.988088,
		0.752104, -0.646025, -0.130352,
		0.657521, 0.748983, 0.081796,
		38.210888, 37.321869, 36.901772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278969, 36.489738, 37.359600>,  <37.750622, 36.797581, 36.844513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278969, 36.489738, 37.359600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334137, 36.885582, 37.343346>,  <38.367237, 37.123089, 37.333595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334137, 36.885582, 37.343346>,  <38.278969, 36.489738, 37.359600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334137, 36.885582, 37.343346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217664, 0.009738, 0.975976,
		0.966230, -0.143449, -0.214059,
		0.137918, 0.989610, -0.040633,
		38.375511, 37.182465, 37.331158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867573, 36.601658, 37.713806>,  <38.278969, 36.489738, 37.359600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867573, 36.601658, 37.713806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663330, 36.945103, 37.731968>,  <38.540783, 37.151169, 37.742867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.663330, 36.945103, 37.731968>,  <38.867573, 36.601658, 37.713806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663330, 36.945103, 37.731968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209939, 0.073292, 0.974963,
		0.833790, 0.507356, -0.217680,
		-0.510608, 0.858614, 0.045404,
		38.510147, 37.202686, 37.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302460, 37.104610, 38.064533>,  <38.867573, 36.601658, 37.713806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302460, 37.104610, 38.064533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942886, 37.275089, 38.105099>,  <38.727142, 37.377377, 38.129436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.942886, 37.275089, 38.105099>,  <39.302460, 37.104610, 38.064533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942886, 37.275089, 38.105099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231808, 0.266312, 0.935598,
		0.371738, 0.864545, -0.338191,
		-0.898930, 0.426192, 0.101410,
		38.673206, 37.402946, 38.135521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300808, 37.880344, 38.262905>,  <39.302460, 37.104610, 38.064533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300808, 37.880344, 38.262905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935062, 37.744972, 38.351810>,  <38.715614, 37.663750, 38.405155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935062, 37.744972, 38.351810>,  <39.300808, 37.880344, 38.262905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935062, 37.744972, 38.351810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225370, 0.030645, 0.973791,
		-0.336369, 0.940493, 0.048251,
		-0.914365, -0.338428, 0.222266,
		38.660751, 37.643444, 38.418491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038445, 38.393204, 38.657028>,  <39.300808, 37.880344, 38.262905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038445, 38.393204, 38.657028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825745, 38.066216, 38.745560>,  <38.698124, 37.870022, 38.798679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825745, 38.066216, 38.745560>,  <39.038445, 38.393204, 38.657028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825745, 38.066216, 38.745560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118484, 0.186956, 0.975197,
		-0.838571, 0.544786, -0.002557,
		-0.531752, -0.817469, 0.221325,
		38.666218, 37.820976, 38.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649273, 38.603985, 39.263649>,  <39.038445, 38.393204, 38.657028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649273, 38.603985, 39.263649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591694, 38.208336, 39.275799>,  <38.557144, 37.970947, 39.283089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591694, 38.208336, 39.275799>,  <38.649273, 38.603985, 39.263649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591694, 38.208336, 39.275799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251893, 0.066312, 0.965481,
		-0.956989, 0.131329, -0.258698,
		-0.143950, -0.989119, 0.030379,
		38.548508, 37.911602, 39.284912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031219, 38.528545, 39.666386>,  <38.649273, 38.603985, 39.263649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031219, 38.528545, 39.666386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197208, 38.165024, 39.649071>,  <38.296803, 37.946911, 39.638683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.197208, 38.165024, 39.649071>,  <38.031219, 38.528545, 39.666386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197208, 38.165024, 39.649071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343148, -0.200395, 0.917655,
		-0.842641, -0.365951, -0.395013,
		0.414976, -0.908802, -0.043285,
		38.321701, 37.892384, 39.636086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479733, 38.035637, 39.737083>,  <38.031219, 38.528545, 39.666386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479733, 38.035637, 39.737083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839321, 37.894066, 39.840298>,  <38.055077, 37.809124, 39.902225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.839321, 37.894066, 39.840298>,  <37.479733, 38.035637, 39.737083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839321, 37.894066, 39.840298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305040, -0.083142, 0.948703,
		-0.314319, -0.931570, -0.182705,
		0.898974, -0.353928, 0.258033,
		38.109013, 37.787888, 39.917709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323643, 37.523197, 40.198898>,  <37.479733, 38.035637, 39.737083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323643, 37.523197, 40.198898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702145, 37.626362, 40.276951>,  <37.929245, 37.688259, 40.323784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.702145, 37.626362, 40.276951>,  <37.323643, 37.523197, 40.198898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702145, 37.626362, 40.276951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200029, -0.007393, 0.979762,
		0.254134, -0.966140, 0.044593,
		0.946258, 0.257911, 0.195135,
		37.986023, 37.703735, 40.335491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534611, 37.163052, 40.682045>,  <37.323643, 37.523197, 40.198898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534611, 37.163052, 40.682045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764599, 37.489723, 40.701809>,  <37.902592, 37.685726, 40.713665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764599, 37.489723, 40.701809>,  <37.534611, 37.163052, 40.682045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764599, 37.489723, 40.701809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137856, 0.037179, 0.989754,
		0.806478, -0.575888, 0.133961,
		0.574968, 0.816683, 0.049405,
		37.937088, 37.734730, 40.716629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047611, 37.016693, 41.205967>,  <37.534611, 37.163052, 40.682045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047611, 37.016693, 41.205967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001801, 37.412674, 41.172798>,  <37.974316, 37.650261, 41.152897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001801, 37.412674, 41.172798>,  <38.047611, 37.016693, 41.205967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001801, 37.412674, 41.172798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066725, 0.075621, 0.994902,
		0.991177, 0.119476, 0.057394,
		-0.114527, 0.989953, -0.082925,
		37.967442, 37.709660, 41.147919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208435, 37.100159, 41.797028>,  <38.047611, 37.016693, 41.205967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208435, 37.100159, 41.797028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106255, 37.467194, 41.675190>,  <38.044945, 37.687416, 41.602085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106255, 37.467194, 41.675190>,  <38.208435, 37.100159, 41.797028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106255, 37.467194, 41.675190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148432, 0.274093, 0.950179,
		0.955360, 0.287938, 0.066181,
		-0.255453, 0.917586, -0.304597,
		38.029617, 37.742470, 41.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564808, 37.585102, 42.219231>,  <38.208435, 37.100159, 41.797028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564808, 37.585102, 42.219231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245544, 37.777416, 42.074024>,  <38.053986, 37.892803, 41.986900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245544, 37.777416, 42.074024>,  <38.564808, 37.585102, 42.219231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245544, 37.777416, 42.074024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275079, 0.245242, 0.929617,
		0.535975, 0.841844, -0.063489,
		-0.798162, 0.480787, -0.363017,
		38.006096, 37.921654, 41.965118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522041, 38.033154, 42.672718>,  <38.564808, 37.585102, 42.219231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522041, 38.033154, 42.672718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164459, 38.069019, 42.497082>,  <37.949909, 38.090538, 42.391701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.164459, 38.069019, 42.497082>,  <38.522041, 38.033154, 42.672718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164459, 38.069019, 42.497082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403191, 0.266831, 0.875351,
		0.195651, 0.959563, -0.202383,
		-0.893956, 0.089664, -0.439093,
		37.896271, 38.095917, 42.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167953, 38.780552, 42.864918>,  <38.522041, 38.033154, 42.672718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167953, 38.780552, 42.864918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915672, 38.480816, 42.784206>,  <37.764305, 38.300976, 42.735779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.915672, 38.480816, 42.784206>,  <38.167953, 38.780552, 42.864918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915672, 38.480816, 42.784206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493611, 0.186744, 0.849397,
		-0.598803, 0.635313, -0.487660,
		-0.630701, -0.749336, -0.201775,
		37.726463, 38.256016, 42.723675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.537533, 39.008762, 43.203930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427132, 38.629768, 43.139309>,  <37.360889, 38.402374, 43.100536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427132, 38.629768, 43.139309>,  <37.537533, 39.008762, 43.203930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427132, 38.629768, 43.139309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429072, -0.028942, 0.902807,
		-0.860069, 0.318497, -0.398550,
		-0.276007, -0.947482, -0.161550,
		37.344330, 38.345524, 43.090843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877472, 39.021023, 43.374802>,  <37.537533, 39.008762, 43.203930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877472, 39.021023, 43.374802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980297, 38.634933, 43.393803>,  <37.041992, 38.403278, 43.405201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.980297, 38.634933, 43.393803>,  <36.877472, 39.021023, 43.374802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980297, 38.634933, 43.393803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527922, -0.099089, 0.843493,
		-0.809456, -0.241904, -0.535036,
		0.257060, -0.965227, 0.047498,
		37.057415, 38.345364, 43.408051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255753, 38.667351, 43.501556>,  <36.877472, 39.021023, 43.374802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255753, 38.667351, 43.501556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554306, 38.423531, 43.608418>,  <36.733437, 38.277241, 43.672535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.554306, 38.423531, 43.608418>,  <36.255753, 38.667351, 43.501556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554306, 38.423531, 43.608418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498430, -0.245981, 0.831301,
		-0.441005, -0.753620, -0.487412,
		0.746379, -0.609549, 0.267148,
		36.778221, 38.240665, 43.688560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877098, 38.146713, 43.757576>,  <36.255753, 38.667351, 43.501556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877098, 38.146713, 43.757576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245701, 38.122963, 43.911091>,  <36.466862, 38.108715, 44.003201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245701, 38.122963, 43.911091>,  <35.877098, 38.146713, 43.757576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245701, 38.122963, 43.911091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388240, -0.164495, 0.906759,
		0.009298, -0.984590, -0.174634,
		0.921511, -0.059369, 0.383786,
		36.522156, 38.105152, 44.026226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760540, 37.674194, 44.208782>,  <35.877098, 38.146713, 43.757576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760540, 37.674194, 44.208782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096634, 37.871349, 44.299175>,  <36.298290, 37.989643, 44.353413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096634, 37.871349, 44.299175>,  <35.760540, 37.674194, 44.208782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096634, 37.871349, 44.299175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190202, -0.122376, 0.974088,
		0.507775, -0.861442, -0.009075,
		0.840231, 0.492891, 0.225987,
		36.348701, 38.019218, 44.366970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935154, 37.334232, 44.819740>,  <35.760540, 37.674194, 44.208782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935154, 37.334232, 44.819740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138763, 37.675800, 44.863033>,  <36.260929, 37.880741, 44.889008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.138763, 37.675800, 44.863033>,  <35.935154, 37.334232, 44.819740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138763, 37.675800, 44.863033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123855, -0.051771, 0.990949,
		0.851797, -0.517817, 0.079410,
		0.509019, 0.853923, 0.108233,
		36.291470, 37.931976, 44.895504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373009, 37.153206, 45.320732>,  <35.935154, 37.334232, 44.819740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373009, 37.153206, 45.320732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388290, 37.552212, 45.344418>,  <36.397457, 37.791615, 45.358627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388290, 37.552212, 45.344418>,  <36.373009, 37.153206, 45.320732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388290, 37.552212, 45.344418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026605, -0.058217, 0.997949,
		0.998916, -0.039697, 0.024315,
		0.038200, 0.997514, 0.059210,
		36.399750, 37.851467, 45.362179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901474, 37.379841, 45.808311>,  <36.373009, 37.153206, 45.320732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901474, 37.379841, 45.808311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672489, 37.707684, 45.799057>,  <36.535099, 37.904388, 45.793503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.672489, 37.707684, 45.799057>,  <36.901474, 37.379841, 45.808311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672489, 37.707684, 45.799057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029497, 0.048790, 0.998373,
		0.819403, 0.570845, -0.052106,
		-0.572458, 0.819607, -0.023140,
		36.500751, 37.953568, 45.792114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295029, 37.824509, 46.104294>,  <36.901474, 37.379841, 45.808311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295029, 37.824509, 46.104294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926361, 37.968891, 46.161201>,  <36.705162, 38.055519, 46.195347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926361, 37.968891, 46.161201>,  <37.295029, 37.824509, 46.104294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926361, 37.968891, 46.161201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247076, 0.263329, 0.932530,
		0.299134, 0.894635, -0.331884,
		-0.921668, 0.360952, 0.142273,
		36.649860, 38.077175, 46.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404415, 38.404396, 46.384777>,  <37.295029, 37.824509, 46.104294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404415, 38.404396, 46.384777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022621, 38.328556, 46.476868>,  <36.793545, 38.283051, 46.532124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.022621, 38.328556, 46.476868>,  <37.404415, 38.404396, 46.384777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022621, 38.328556, 46.476868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123317, 0.451971, 0.883468,
		-0.271561, 0.871650, -0.408020,
		-0.954488, -0.189600, 0.230227,
		36.736275, 38.271675, 46.545937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222519, 39.001740, 46.758755>,  <37.404415, 38.404396, 46.384777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222519, 39.001740, 46.758755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939613, 38.736904, 46.857883>,  <36.769871, 38.578003, 46.917358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.939613, 38.736904, 46.857883>,  <37.222519, 39.001740, 46.758755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939613, 38.736904, 46.857883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019228, 0.332402, 0.942942,
		-0.706686, 0.671676, -0.222366,
		-0.707266, -0.662088, 0.247819,
		36.727432, 38.538277, 46.932228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794540, 39.395226, 47.284790>,  <37.222519, 39.001740, 46.758755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794540, 39.395226, 47.284790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731392, 39.007473, 47.360020>,  <36.693501, 38.774822, 47.405159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731392, 39.007473, 47.360020>,  <36.794540, 39.395226, 47.284790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731392, 39.007473, 47.360020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026357, 0.194534, 0.980542,
		-0.987107, 0.149846, -0.056262,
		-0.157875, -0.969383, 0.188076,
		36.684029, 38.716660, 47.416443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243725, 39.393291, 47.725822>,  <36.794540, 39.395226, 47.284790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243725, 39.393291, 47.725822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441849, 39.049202, 47.774300>,  <36.560722, 38.842751, 47.803387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441849, 39.049202, 47.774300>,  <36.243725, 39.393291, 47.725822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441849, 39.049202, 47.774300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107624, 0.077675, 0.991153,
		-0.862023, -0.503973, -0.054107,
		0.495311, -0.860220, 0.121197,
		36.590443, 38.791138, 47.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809303, 39.015331, 48.161594>,  <36.243725, 39.393291, 47.725822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809303, 39.015331, 48.161594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166725, 38.842819, 48.211498>,  <36.381176, 38.739311, 48.241440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.166725, 38.842819, 48.211498>,  <35.809303, 39.015331, 48.161594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166725, 38.842819, 48.211498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106798, 0.065717, 0.992107,
		-0.436076, -0.899821, 0.012661,
		0.893550, -0.431282, 0.124757,
		36.434792, 38.713436, 48.248924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726089, 38.484180, 48.623135>,  <35.809303, 39.015331, 48.161594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726089, 38.484180, 48.623135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122040, 38.540546, 48.629852>,  <36.359612, 38.574364, 48.633884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.122040, 38.540546, 48.629852>,  <35.726089, 38.484180, 48.623135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122040, 38.540546, 48.629852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007687, -0.064935, 0.997860,
		0.141702, -0.987890, -0.063194,
		0.989880, 0.140913, 0.016795,
		36.419003, 38.582821, 48.634892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881733, 38.029648, 49.121998>,  <35.726089, 38.484180, 48.623135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881733, 38.029648, 49.121998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201614, 38.268692, 49.098858>,  <36.393543, 38.412117, 49.084972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.201614, 38.268692, 49.098858>,  <35.881733, 38.029648, 49.121998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201614, 38.268692, 49.098858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109681, -0.050672, 0.992674,
		0.590297, -0.800186, -0.106068,
		0.799699, 0.597607, -0.057854,
		36.441525, 38.447975, 49.081501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494530, 37.657330, 49.500446>,  <35.881733, 38.029648, 49.121998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494530, 37.657330, 49.500446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567142, 38.048706, 49.461060>,  <36.610710, 38.283531, 49.437428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567142, 38.048706, 49.461060>,  <36.494530, 37.657330, 49.500446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567142, 38.048706, 49.461060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414736, 0.014618, 0.909824,
		0.891651, -0.205996, -0.403142,
		0.181528, 0.978443, -0.098468,
		36.621601, 38.342239, 49.431519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199306, 37.756947, 49.582714>,  <36.494530, 37.657330, 49.500446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199306, 37.756947, 49.582714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027000, 38.100040, 49.694950>,  <36.923618, 38.305897, 49.762291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027000, 38.100040, 49.694950>,  <37.199306, 37.756947, 49.582714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027000, 38.100040, 49.694950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422549, -0.083039, 0.902528,
		0.797431, 0.507339, -0.326666,
		-0.430761, 0.857736, 0.280593,
		36.897774, 38.357361, 49.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763424, 38.088379, 50.113632>,  <37.199306, 37.756947, 49.582714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763424, 38.088379, 50.113632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430370, 38.307629, 50.145348>,  <37.230537, 38.439178, 50.164375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430370, 38.307629, 50.145348>,  <37.763424, 38.088379, 50.113632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430370, 38.307629, 50.145348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215209, 0.188310, 0.958240,
		0.510302, 0.814925, -0.274754,
		-0.832632, 0.548122, 0.079284,
		37.180580, 38.472065, 50.169132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899387, 38.689430, 50.507816>,  <37.763424, 38.088379, 50.113632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899387, 38.689430, 50.507816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502518, 38.642380, 50.524586>,  <37.264397, 38.614151, 50.534649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502518, 38.642380, 50.524586>,  <37.899387, 38.689430, 50.507816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502518, 38.642380, 50.524586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034912, 0.061054, 0.997524,
		-0.119896, 0.991179, -0.056469,
		-0.992172, -0.117628, 0.041924,
		37.204865, 38.607090, 50.537163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553978, 39.322704, 50.898930>,  <37.899387, 38.689430, 50.507816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553978, 39.322704, 50.898930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322659, 38.996376, 50.900085>,  <37.183868, 38.800579, 50.900780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322659, 38.996376, 50.900085>,  <37.553978, 39.322704, 50.898930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322659, 38.996376, 50.900085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025544, -0.014572, 0.999568,
		-0.815425, 0.578123, 0.029266,
		-0.578299, -0.815820, 0.002885,
		37.149170, 38.751629, 50.900951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196854, 39.317314, 51.539173>,  <37.553978, 39.322704, 50.898930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196854, 39.317314, 51.539173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121960, 38.937004, 51.440403>,  <37.077023, 38.708817, 51.381142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121960, 38.937004, 51.440403>,  <37.196854, 39.317314, 51.539173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121960, 38.937004, 51.440403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084861, -0.234772, 0.968339,
		-0.978643, 0.202259, -0.036727,
		-0.187233, -0.950775, -0.246922,
		37.065788, 38.651772, 51.366325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405014, 39.100079, 51.526295>,  <37.196854, 39.317314, 51.539173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405014, 39.100079, 51.526295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668144, 38.807777, 51.599258>,  <36.826023, 38.632397, 51.643036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668144, 38.807777, 51.599258>,  <36.405014, 39.100079, 51.526295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668144, 38.807777, 51.599258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455196, -0.192784, 0.869270,
		-0.600054, -0.654858, -0.459452,
		0.657823, -0.730750, 0.182408,
		36.865490, 38.588551, 51.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005196, 38.468246, 51.531860>,  <36.405014, 39.100079, 51.526295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005196, 38.468246, 51.531860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306732, 38.493546, 51.793465>,  <36.487652, 38.508724, 51.950428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306732, 38.493546, 51.793465>,  <36.005196, 38.468246, 51.531860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306732, 38.493546, 51.793465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639687, -0.156729, 0.752487,
		0.150098, -0.985614, -0.077687,
		0.753838, 0.063252, 0.654009,
		36.532883, 38.512520, 51.989666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367641, 38.556911, 51.434017>,  <36.005196, 38.468246, 51.531860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367641, 38.556911, 51.434017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992069, 38.459705, 51.531464>,  <34.766724, 38.401382, 51.589931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.992069, 38.459705, 51.531464>,  <35.367641, 38.556911, 51.434017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992069, 38.459705, 51.531464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170435, -0.286581, -0.942774,
		0.298927, -0.926721, 0.227661,
		-0.938933, -0.243019, 0.243612,
		34.710388, 38.386799, 51.604546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277428, 37.907227, 51.202087>,  <35.367641, 38.556911, 51.434017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277428, 37.907227, 51.202087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918076, 38.079441, 51.236835>,  <34.702465, 38.182770, 51.257683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918076, 38.079441, 51.236835>,  <35.277428, 37.907227, 51.202087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918076, 38.079441, 51.236835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159430, -0.135372, -0.977884,
		-0.409258, -0.892362, 0.190257,
		-0.898382, 0.430540, 0.086867,
		34.648560, 38.208603, 51.262897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838310, 37.511322, 50.858337>,  <35.277428, 37.907227, 51.202087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838310, 37.511322, 50.858337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662769, 37.870014, 50.881290>,  <34.557446, 38.085228, 50.895061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662769, 37.870014, 50.881290>,  <34.838310, 37.511322, 50.858337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662769, 37.870014, 50.881290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286331, -0.079024, -0.954867,
		-0.851720, -0.435471, 0.291440,
		-0.438848, 0.896728, 0.057382,
		34.531116, 38.139030, 50.898506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161411, 37.239208, 50.893147>,  <34.838310, 37.511322, 50.858337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161411, 37.239208, 50.893147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226402, 37.612000, 50.763519>,  <34.265396, 37.835674, 50.685745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226402, 37.612000, 50.763519>,  <34.161411, 37.239208, 50.893147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226402, 37.612000, 50.763519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444283, -0.224152, -0.867392,
		-0.881030, 0.284909, 0.377642,
		0.162478, 0.931978, -0.324065,
		34.275146, 37.891594, 50.666298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572514, 37.307384, 50.553020>,  <34.161411, 37.239208, 50.893147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572514, 37.307384, 50.553020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828125, 37.593155, 50.439011>,  <33.981491, 37.764618, 50.370605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.828125, 37.593155, 50.439011>,  <33.572514, 37.307384, 50.553020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828125, 37.593155, 50.439011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324756, -0.085313, -0.941942,
		-0.697265, 0.694490, 0.177497,
		0.639027, 0.714427, -0.285025,
		34.019833, 37.807484, 50.353504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193165, 37.875896, 50.139915>,  <33.572514, 37.307384, 50.553020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193165, 37.875896, 50.139915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572575, 37.895164, 50.014709>,  <33.800220, 37.906723, 49.939587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572575, 37.895164, 50.014709>,  <33.193165, 37.875896, 50.139915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572575, 37.895164, 50.014709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315494, 0.057582, -0.947179,
		-0.027600, 0.997178, 0.069815,
		0.948526, 0.048168, -0.313014,
		33.857132, 37.909615, 49.920807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127735, 38.258820, 49.550884>,  <33.193165, 37.875896, 50.139915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127735, 38.258820, 49.550884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509823, 38.151669, 49.500626>,  <33.739075, 38.087376, 49.470470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.509823, 38.151669, 49.500626>,  <33.127735, 38.258820, 49.550884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509823, 38.151669, 49.500626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114354, 0.057424, -0.991779,
		0.272894, 0.961739, 0.024220,
		0.955224, -0.267881, -0.125649,
		33.796391, 38.071304, 49.462933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365334, 38.755310, 49.142853>,  <33.127735, 38.258820, 49.550884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365334, 38.755310, 49.142853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600651, 38.433029, 49.115242>,  <33.741840, 38.239662, 49.098675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600651, 38.433029, 49.115242>,  <33.365334, 38.755310, 49.142853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600651, 38.433029, 49.115242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014114, 0.075116, -0.997075,
		0.808527, 0.587543, 0.032818,
		0.588290, -0.805699, -0.069026,
		33.777138, 38.191319, 49.094536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621700, 38.991356, 48.604706>,  <33.365334, 38.755310, 49.142853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621700, 38.991356, 48.604706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672531, 38.594902, 48.620220>,  <33.703030, 38.357029, 48.629528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.672531, 38.594902, 48.620220>,  <33.621700, 38.991356, 48.604706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672531, 38.594902, 48.620220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061838, -0.031115, -0.997601,
		0.989963, 0.129172, 0.057336,
		0.127078, -0.991134, 0.038790,
		33.710655, 38.297562, 48.631859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283028, 38.860733, 48.357281>,  <33.621700, 38.991356, 48.604706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283028, 38.860733, 48.357281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079445, 38.521420, 48.298805>,  <33.957294, 38.317829, 48.263721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079445, 38.521420, 48.298805>,  <34.283028, 38.860733, 48.357281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079445, 38.521420, 48.298805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322358, -0.030360, -0.946131,
		0.798153, -0.528664, 0.288904,
		-0.508957, -0.848288, -0.146187,
		33.926758, 38.266933, 48.254948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760494, 38.520905, 47.915398>,  <34.283028, 38.860733, 48.357281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760494, 38.520905, 47.915398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414650, 38.320751, 47.897194>,  <34.207146, 38.200661, 47.886272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414650, 38.320751, 47.897194>,  <34.760494, 38.520905, 47.915398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414650, 38.320751, 47.897194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060295, -0.013399, -0.998091,
		0.498818, -0.865700, 0.041756,
		-0.864607, -0.500384, -0.045514,
		34.155270, 38.170635, 47.883541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789505, 37.926079, 47.527988>,  <34.760494, 38.520905, 47.915398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789505, 37.926079, 47.527988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401455, 38.020340, 47.504898>,  <34.168625, 38.076897, 47.491043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401455, 38.020340, 47.504898>,  <34.789505, 37.926079, 47.527988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401455, 38.020340, 47.504898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012849, -0.187688, -0.982145,
		-0.242285, -0.953540, 0.179051,
		-0.970120, 0.235659, -0.057726,
		34.110420, 38.091038, 47.487579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645607, 37.575470, 46.948864>,  <34.789505, 37.926079, 47.527988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645607, 37.575470, 46.948864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334270, 37.819168, 47.009541>,  <34.147469, 37.965385, 47.045944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334270, 37.819168, 47.009541>,  <34.645607, 37.575470, 46.948864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334270, 37.819168, 47.009541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132761, 0.076430, -0.988197,
		-0.613646, -0.789292, 0.021395,
		-0.778340, 0.609243, 0.151688,
		34.100769, 38.001942, 47.055046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041656, 37.388496, 46.474617>,  <34.645607, 37.575470, 46.948864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041656, 37.388496, 46.474617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005806, 37.774216, 46.574299>,  <33.984295, 38.005646, 46.634109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005806, 37.774216, 46.574299>,  <34.041656, 37.388496, 46.474617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005806, 37.774216, 46.574299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136462, 0.235963, -0.962133,
		-0.986582, -0.120242, 0.110440,
		-0.089629, 0.964294, 0.249206,
		33.978916, 38.063503, 46.649059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610409, 37.563053, 46.045662>,  <34.041656, 37.388496, 46.474617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610409, 37.563053, 46.045662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.768230, 37.910744, 46.164841>,  <33.862923, 38.119358, 46.236347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.768230, 37.910744, 46.164841>,  <33.610409, 37.563053, 46.045662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768230, 37.910744, 46.164841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009425, 0.328067, -0.944607,
		-0.918824, 0.369892, 0.137633,
		0.394556, 0.869225, 0.297950,
		33.886597, 38.171513, 46.254227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146870, 38.107098, 45.828060>,  <33.610409, 37.563053, 46.045662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146870, 38.107098, 45.828060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491776, 38.298244, 45.895172>,  <33.698719, 38.412933, 45.935440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491776, 38.298244, 45.895172>,  <33.146870, 38.107098, 45.828060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491776, 38.298244, 45.895172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102817, 0.489533, -0.865902,
		-0.495920, 0.729382, 0.471238,
		0.862260, 0.477869, 0.167776,
		33.750454, 38.441605, 45.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013222, 38.753101, 45.527538>,  <33.146870, 38.107098, 45.828060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013222, 38.753101, 45.527538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410053, 38.764164, 45.576561>,  <33.648151, 38.770802, 45.605976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410053, 38.764164, 45.576561>,  <33.013222, 38.753101, 45.527538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410053, 38.764164, 45.576561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098417, 0.435327, -0.894877,
		-0.078100, 0.899848, 0.429155,
		0.992076, 0.027654, 0.122559,
		33.707676, 38.772461, 45.613327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150707, 39.466885, 45.257122>,  <33.013222, 38.753101, 45.527538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150707, 39.466885, 45.257122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493328, 39.260517, 45.262104>,  <33.698898, 39.136696, 45.265095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493328, 39.260517, 45.262104>,  <33.150707, 39.466885, 45.257122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493328, 39.260517, 45.262104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228452, 0.357426, -0.905569,
		0.462747, 0.778509, 0.424015,
		0.856548, -0.515917, 0.012454,
		33.750294, 39.105743, 45.265839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649658, 39.899689, 44.974686>,  <33.150707, 39.466885, 45.257122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649658, 39.899689, 44.974686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782589, 39.526043, 44.922554>,  <33.862347, 39.301853, 44.891277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782589, 39.526043, 44.922554>,  <33.649658, 39.899689, 44.974686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782589, 39.526043, 44.922554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070361, 0.162349, -0.984222,
		0.940538, 0.317909, 0.119678,
		0.332322, -0.934118, -0.130327,
		33.882286, 39.245808, 44.883457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250179, 39.981396, 44.635616>,  <33.649658, 39.899689, 44.974686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250179, 39.981396, 44.635616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096359, 39.621414, 44.553444>,  <34.004066, 39.405426, 44.504139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096359, 39.621414, 44.553444>,  <34.250179, 39.981396, 44.635616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096359, 39.621414, 44.553444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091552, 0.258630, -0.961628,
		0.918554, -0.350983, -0.181848,
		-0.384546, -0.899956, -0.205433,
		33.980995, 39.351429, 44.491814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.404140, 28.391127, 37.364910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019234, 28.343582, 37.462814>,  <42.788288, 28.315056, 37.521557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019234, 28.343582, 37.462814>,  <43.404140, 28.391127, 37.364910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019234, 28.343582, 37.462814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134554, 0.989725, -0.048374,
		-0.236494, -0.079482, -0.968377,
		-0.962271, -0.118859, 0.244758,
		42.730553, 28.307924, 37.536243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084007, 28.920107, 37.013103>,  <43.404140, 28.391127, 37.364910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084007, 28.920107, 37.013103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779556, 28.817480, 37.251385>,  <42.596886, 28.755905, 37.394352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779556, 28.817480, 37.251385>,  <43.084007, 28.920107, 37.013103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779556, 28.817480, 37.251385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210202, 0.966442, 0.147667,
		-0.613600, -0.012825, -0.789513,
		-0.761124, -0.256566, 0.595704,
		42.551220, 28.740511, 37.430096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476334, 29.078575, 36.673462>,  <43.084007, 28.920107, 37.013103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476334, 29.078575, 36.673462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354389, 29.053633, 37.053604>,  <42.281223, 29.038668, 37.281689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.354389, 29.053633, 37.053604>,  <42.476334, 29.078575, 36.673462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354389, 29.053633, 37.053604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390288, 0.918400, -0.064939,
		-0.868755, -0.390709, -0.304320,
		-0.304860, -0.062356, 0.950354,
		42.262932, 29.034925, 37.338711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781368, 29.302917, 36.746769>,  <42.476334, 29.078575, 36.673462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781368, 29.302917, 36.746769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966640, 29.342640, 37.099041>,  <42.077805, 29.366474, 37.310406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966640, 29.342640, 37.099041>,  <41.781368, 29.302917, 36.746769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966640, 29.342640, 37.099041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445227, 0.885284, 0.134333,
		-0.766315, -0.454325, 0.454259,
		0.463178, 0.099307, 0.880684,
		42.105595, 29.372433, 37.363247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245110, 29.408934, 37.340969>,  <41.781368, 29.302917, 36.746769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245110, 29.408934, 37.340969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604038, 29.545172, 37.453259>,  <41.819397, 29.626915, 37.520634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604038, 29.545172, 37.453259>,  <41.245110, 29.408934, 37.340969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604038, 29.545172, 37.453259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389917, 0.909745, 0.142577,
		-0.206828, -0.237397, 0.949139,
		0.897322, 0.340597, 0.280726,
		41.873234, 29.647350, 37.537476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129452, 29.865099, 37.981762>,  <41.245110, 29.408934, 37.340969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129452, 29.865099, 37.981762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486328, 29.970409, 37.834969>,  <41.700455, 30.033596, 37.746895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486328, 29.970409, 37.834969>,  <41.129452, 29.865099, 37.981762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486328, 29.970409, 37.834969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266307, 0.962912, 0.043364,
		0.364786, 0.059040, 0.929217,
		0.892195, 0.263275, -0.366980,
		41.753986, 30.049393, 37.724873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240334, 30.429626, 38.390491>,  <41.129452, 29.865099, 37.981762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240334, 30.429626, 38.390491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503986, 30.478851, 38.093739>,  <41.662178, 30.508387, 37.915688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503986, 30.478851, 38.093739>,  <41.240334, 30.429626, 38.390491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503986, 30.478851, 38.093739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194460, 0.980859, -0.010067,
		0.726447, 0.150903, 0.670450,
		0.659136, 0.123063, -0.741887,
		41.701729, 30.515770, 37.871174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647213, 30.974913, 38.692425>,  <41.240334, 30.429626, 38.390491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647213, 30.974913, 38.692425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688461, 30.935486, 38.296516>,  <41.713211, 30.911831, 38.058971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.688461, 30.935486, 38.296516>,  <41.647213, 30.974913, 38.692425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688461, 30.935486, 38.296516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019510, 0.994686, -0.101087,
		0.994478, 0.029735, 0.100647,
		0.103118, -0.098566, -0.989774,
		41.719395, 30.905916, 37.999584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068073, 31.492834, 38.467754>,  <41.647213, 30.974913, 38.692425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068073, 31.492834, 38.467754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911354, 31.404585, 38.110470>,  <41.817322, 31.351635, 37.896099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.911354, 31.404585, 38.110470>,  <42.068073, 31.492834, 38.467754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911354, 31.404585, 38.110470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106504, 0.953422, -0.282211,
		0.913867, -0.205700, -0.350051,
		-0.391797, -0.220622, -0.893208,
		41.793816, 31.338398, 37.842506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481121, 31.875601, 38.048153>,  <42.068073, 31.492834, 38.467754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481121, 31.875601, 38.048153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152367, 31.788734, 37.837498>,  <41.955116, 31.736614, 37.711105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152367, 31.788734, 37.837498>,  <42.481121, 31.875601, 38.048153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152367, 31.788734, 37.837498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075523, 0.874783, -0.478593,
		0.564629, -0.433120, -0.702567,
		-0.821882, -0.217168, -0.526638,
		41.905804, 31.723583, 37.679504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622036, 31.791027, 37.277897>,  <42.481121, 31.875601, 38.048153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622036, 31.791027, 37.277897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236427, 31.894876, 37.300728>,  <42.005062, 31.957186, 37.314426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236427, 31.894876, 37.300728>,  <42.622036, 31.791027, 37.277897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236427, 31.894876, 37.300728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149281, 0.706423, -0.691869,
		-0.219947, -0.658455, -0.719763,
		-0.964022, 0.259622, 0.057081,
		41.947220, 31.972763, 37.317852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344181, 31.894949, 36.594086>,  <42.622036, 31.791027, 37.277897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344181, 31.894949, 36.594086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059784, 32.096897, 36.789879>,  <41.889145, 32.218067, 36.907356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059784, 32.096897, 36.789879>,  <42.344181, 31.894949, 36.594086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059784, 32.096897, 36.789879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093111, 0.757542, -0.646112,
		-0.697008, -0.413805, -0.585616,
		-0.710993, 0.504872, 0.489482,
		41.846485, 32.248360, 36.936722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847668, 32.148106, 36.127502>,  <42.344181, 31.894949, 36.594086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847668, 32.148106, 36.127502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807682, 32.390965, 36.442814>,  <41.783691, 32.536678, 36.632000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.807682, 32.390965, 36.442814>,  <41.847668, 32.148106, 36.127502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807682, 32.390965, 36.442814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002894, 0.792420, -0.609969,
		-0.994987, -0.058694, -0.080971,
		-0.099965, 0.607145, 0.788278,
		41.777691, 32.573109, 36.679298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175247, 32.491268, 35.993954>,  <41.847668, 32.148106, 36.127502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175247, 32.491268, 35.993954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393154, 32.709351, 36.248821>,  <41.523899, 32.840199, 36.401741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393154, 32.709351, 36.248821>,  <41.175247, 32.491268, 35.993954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393154, 32.709351, 36.248821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069419, 0.786520, -0.613651,
		-0.835709, 0.290066, 0.466318,
		0.544768, 0.545205, 0.637165,
		41.556583, 32.872913, 36.439972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917244, 33.175930, 35.864792>,  <41.175247, 32.491268, 35.993954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917244, 33.175930, 35.864792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227669, 33.242176, 36.108204>,  <41.413921, 33.281925, 36.254250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.227669, 33.242176, 36.108204>,  <40.917244, 33.175930, 35.864792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227669, 33.242176, 36.108204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162969, 0.879467, -0.447189,
		-0.609239, 0.446217, 0.655529,
		0.776060, 0.165614, 0.608525,
		41.460487, 33.291859, 36.290760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866028, 33.882519, 36.110165>,  <40.917244, 33.175930, 35.864792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866028, 33.882519, 36.110165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251171, 33.777985, 36.137318>,  <41.482258, 33.715263, 36.153610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251171, 33.777985, 36.137318>,  <40.866028, 33.882519, 36.110165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251171, 33.777985, 36.137318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265715, 0.872458, -0.410136,
		0.047963, 0.412939, 0.909495,
		0.962858, -0.261338, 0.067878,
		41.540028, 33.699585, 36.157681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215668, 34.548889, 36.390095>,  <40.866028, 33.882519, 36.110165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215668, 34.548889, 36.390095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500866, 34.316730, 36.232727>,  <41.671986, 34.177433, 36.138306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.500866, 34.316730, 36.232727>,  <41.215668, 34.548889, 36.390095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500866, 34.316730, 36.232727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443328, 0.807856, -0.388367,
		0.543233, 0.102489, 0.833303,
		0.712992, -0.580400, -0.393418,
		41.714764, 34.142609, 36.114700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917198, 34.894844, 36.529819>,  <41.215668, 34.548889, 36.390095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917198, 34.894844, 36.529819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976818, 34.650524, 36.218769>,  <42.012592, 34.503933, 36.032139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976818, 34.650524, 36.218769>,  <41.917198, 34.894844, 36.529819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976818, 34.650524, 36.218769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558732, 0.700861, -0.443410,
		0.815844, -0.368394, 0.445740,
		0.149052, -0.610803, -0.777627,
		42.021534, 34.467281, 35.985481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581409, 35.103268, 36.322174>,  <41.917198, 34.894844, 36.529819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581409, 35.103268, 36.322174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469616, 34.880100, 36.009605>,  <42.402538, 34.746201, 35.822063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469616, 34.880100, 36.009605>,  <42.581409, 35.103268, 36.322174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469616, 34.880100, 36.009605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576019, 0.553697, -0.601350,
		0.768173, -0.618181, 0.166620,
		-0.279486, -0.557917, -0.781419,
		42.385769, 34.712727, 35.775181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145103, 34.984337, 35.855881>,  <42.581409, 35.103268, 36.322174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145103, 34.984337, 35.855881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.858643, 34.885414, 35.594814>,  <42.686768, 34.826061, 35.438175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.858643, 34.885414, 35.594814>,  <43.145103, 34.984337, 35.855881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858643, 34.885414, 35.594814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435065, 0.573035, -0.694514,
		0.545754, -0.781328, -0.302787,
		-0.716151, -0.247302, -0.652664,
		42.643799, 34.811222, 35.399014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440884, 34.729671, 35.167259>,  <43.145103, 34.984337, 35.855881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440884, 34.729671, 35.167259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083874, 34.901855, 35.113426>,  <42.869667, 35.005165, 35.081127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083874, 34.901855, 35.113426>,  <43.440884, 34.729671, 35.167259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083874, 34.901855, 35.113426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418221, 0.678250, -0.604209,
		-0.168808, -0.595553, -0.785379,
		-0.892522, 0.430457, -0.134579,
		42.816116, 35.030994, 35.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370209, 34.713696, 34.507687>,  <43.440884, 34.729671, 35.167259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370209, 34.713696, 34.507687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144051, 35.007156, 34.658463>,  <43.008354, 35.183231, 34.748928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.144051, 35.007156, 34.658463>,  <43.370209, 34.713696, 34.507687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144051, 35.007156, 34.658463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523673, 0.672363, -0.523158,
		-0.637257, -0.098398, -0.764344,
		-0.565394, 0.733652, 0.376940,
		42.974434, 35.227253, 34.771545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314541, 34.074825, 34.615845>,  <43.370209, 34.713696, 34.507687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314541, 34.074825, 34.615845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709240, 34.099285, 34.555725>,  <43.946060, 34.113960, 34.519653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.709240, 34.099285, 34.555725>,  <43.314541, 34.074825, 34.615845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709240, 34.099285, 34.555725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016668, -0.959572, -0.280968,
		-0.161404, 0.274739, -0.947875,
		0.986748, 0.061149, -0.150299,
		44.005264, 34.117630, 34.510635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411293, 33.794598, 33.957916>,  <43.314541, 34.074825, 34.615845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411293, 33.794598, 33.957916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740837, 33.760792, 34.182098>,  <43.938564, 33.740509, 34.316608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740837, 33.760792, 34.182098>,  <43.411293, 33.794598, 33.957916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740837, 33.760792, 34.182098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065766, -0.967886, -0.242637,
		0.562959, 0.236759, -0.791847,
		0.823864, -0.084518, 0.560451,
		43.987995, 33.735435, 34.350235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891109, 33.529594, 33.525742>,  <43.411293, 33.794598, 33.957916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891109, 33.529594, 33.525742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.039688, 33.459763, 33.890499>,  <44.128834, 33.417862, 34.109352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.039688, 33.459763, 33.890499>,  <43.891109, 33.529594, 33.525742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039688, 33.459763, 33.890499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258171, -0.924008, -0.282059,
		0.891839, 0.340194, -0.298147,
		0.371445, -0.174579, 0.911894,
		44.151123, 33.407391, 34.164066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469692, 33.051334, 33.406273>,  <43.891109, 33.529594, 33.525742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469692, 33.051334, 33.406273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414322, 33.016357, 33.800877>,  <44.381100, 32.995373, 34.037640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.414322, 33.016357, 33.800877>,  <44.469692, 33.051334, 33.406273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414322, 33.016357, 33.800877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216875, -0.974594, -0.055955,
		0.966335, 0.206203, 0.153871,
		-0.138424, -0.087442, 0.986505,
		44.372795, 32.990124, 34.096828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003796, 32.615345, 33.689484>,  <44.469692, 33.051334, 33.406273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003796, 32.615345, 33.689484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730541, 32.594074, 33.980824>,  <44.566589, 32.581310, 34.155628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.730541, 32.594074, 33.980824>,  <45.003796, 32.615345, 33.689484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730541, 32.594074, 33.980824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225427, -0.963995, 0.141053,
		0.694625, 0.260549, 0.670529,
		-0.683138, -0.053176, 0.728350,
		44.525600, 32.578121, 34.199329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274822, 32.257416, 34.260582>,  <45.003796, 32.615345, 33.689484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274822, 32.257416, 34.260582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888050, 32.211929, 34.351894>,  <44.655987, 32.184639, 34.406681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888050, 32.211929, 34.351894>,  <45.274822, 32.257416, 34.260582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888050, 32.211929, 34.351894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170632, -0.953702, 0.247662,
		0.189553, 0.278425, 0.941567,
		-0.966930, -0.113716, 0.228285,
		44.597969, 32.177814, 34.420380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139011, 32.024178, 35.037109>,  <45.274822, 32.257416, 34.260582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139011, 32.024178, 35.037109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837284, 31.909563, 34.800838>,  <44.656246, 31.840794, 34.659077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837284, 31.909563, 34.800838>,  <45.139011, 32.024178, 35.037109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837284, 31.909563, 34.800838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138172, -0.948864, 0.283840,
		-0.641804, 0.132490, 0.755336,
		-0.754318, -0.286536, -0.590679,
		44.610989, 31.823603, 34.623634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744061, 31.494722, 35.499859>,  <45.139011, 32.024178, 35.037109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744061, 31.494722, 35.499859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546967, 31.447739, 35.154972>,  <44.428711, 31.419548, 34.948040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.546967, 31.447739, 35.154972>,  <44.744061, 31.494722, 35.499859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546967, 31.447739, 35.154972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000094, -0.990855, 0.134929,
		-0.870178, 0.066403, 0.488241,
		-0.492736, -0.117458, -0.862215,
		44.399147, 31.412500, 34.896309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113426, 31.141060, 35.568298>,  <44.744061, 31.494722, 35.499859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113426, 31.141060, 35.568298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.184475, 31.066828, 35.181721>,  <44.227104, 31.022289, 34.949776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.184475, 31.066828, 35.181721>,  <44.113426, 31.141060, 35.568298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184475, 31.066828, 35.181721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204817, -0.967525, 0.148143,
		-0.962549, 0.171630, -0.209865,
		0.177624, -0.185579, -0.966442,
		44.237762, 31.011154, 34.891788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529041, 30.660395, 35.389896>,  <44.113426, 31.141060, 35.568298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529041, 30.660395, 35.389896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827946, 30.616661, 35.127705>,  <44.007286, 30.590422, 34.970390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827946, 30.616661, 35.127705>,  <43.529041, 30.660395, 35.389896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827946, 30.616661, 35.127705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099985, -0.993642, 0.051752,
		-0.656971, 0.026867, -0.753437,
		0.747256, -0.109332, -0.655480,
		44.052124, 30.583862, 34.931061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291878, 30.156822, 34.792595>,  <43.529041, 30.660395, 35.389896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291878, 30.156822, 34.792595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689922, 30.169268, 34.830093>,  <43.928749, 30.176735, 34.852592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689922, 30.169268, 34.830093>,  <43.291878, 30.156822, 34.792595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689922, 30.169268, 34.830093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023348, -0.996290, 0.082832,
		0.095978, -0.080239, -0.992144,
		0.995109, 0.031115, 0.093748,
		43.988457, 30.178602, 34.858219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499340, 29.508528, 34.372566>,  <43.291878, 30.156822, 34.792595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499340, 29.508528, 34.372566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822914, 29.601658, 34.588501>,  <44.017059, 29.657536, 34.718063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.822914, 29.601658, 34.588501>,  <43.499340, 29.508528, 34.372566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822914, 29.601658, 34.588501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187777, -0.972464, 0.138033,
		0.557109, -0.010290, -0.830376,
		0.808931, 0.232824, 0.539837,
		44.065594, 29.671505, 34.750450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899174, 29.161634, 34.016460>,  <43.499340, 29.508528, 34.372566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899174, 29.161634, 34.016460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063225, 29.249331, 34.370575>,  <44.161655, 29.301949, 34.583042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063225, 29.249331, 34.370575>,  <43.899174, 29.161634, 34.016460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063225, 29.249331, 34.370575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346268, -0.935427, 0.071243,
		0.843740, 0.277328, -0.459556,
		0.410123, 0.219240, 0.885287,
		44.186260, 29.315102, 34.636162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514477, 28.838057, 34.000626>,  <43.899174, 29.161634, 34.016460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514477, 28.838057, 34.000626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437706, 28.903454, 34.387703>,  <44.391644, 28.942692, 34.619949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.437706, 28.903454, 34.387703>,  <44.514477, 28.838057, 34.000626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437706, 28.903454, 34.387703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260718, -0.942102, 0.210879,
		0.946144, 0.292770, 0.138192,
		-0.191930, 0.163492, 0.967695,
		44.380127, 28.952501, 34.678013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976650, 28.423969, 34.323071>,  <44.514477, 28.838057, 34.000626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976650, 28.423969, 34.323071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.709431, 28.479675, 34.615456>,  <44.549099, 28.513100, 34.790886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.709431, 28.479675, 34.615456>,  <44.976650, 28.423969, 34.323071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.709431, 28.479675, 34.615456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107263, -0.954048, 0.279798,
		0.736342, 0.265325, 0.622417,
		-0.668053, 0.139265, 0.730965,
		44.509014, 28.521454, 34.834743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195896, 28.090342, 34.974339>,  <44.976650, 28.423969, 34.323071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195896, 28.090342, 34.974339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799332, 28.131588, 35.006519>,  <44.561394, 28.156336, 35.025826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.799332, 28.131588, 35.006519>,  <45.195896, 28.090342, 34.974339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799332, 28.131588, 35.006519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088136, -0.981224, 0.171557,
		0.096629, 0.162993, 0.981884,
		-0.991410, 0.103117, 0.080449,
		44.501907, 28.162523, 35.030655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033806, 27.683270, 35.525089>,  <45.195896, 28.090342, 34.974339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033806, 27.683270, 35.525089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682411, 27.720057, 35.337555>,  <44.471573, 27.742128, 35.225037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.682411, 27.720057, 35.337555>,  <45.033806, 27.683270, 35.525089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682411, 27.720057, 35.337555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119564, -0.992392, 0.029363,
		-0.462566, 0.081850, 0.882799,
		-0.878486, 0.091969, -0.468833,
		44.418865, 27.747646, 35.196903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660122, 27.292349, 35.963074>,  <45.033806, 27.683270, 35.525089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660122, 27.292349, 35.963074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390617, 27.328619, 35.669727>,  <44.228916, 27.350380, 35.493721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390617, 27.328619, 35.669727>,  <44.660122, 27.292349, 35.963074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390617, 27.328619, 35.669727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344031, -0.916815, 0.202714,
		-0.653981, 0.388881, 0.648907,
		-0.673759, 0.090673, -0.733367,
		44.188488, 27.355822, 35.449718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985764, 27.087969, 36.258785>,  <44.660122, 27.292349, 35.963074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985764, 27.087969, 36.258785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942215, 27.059237, 35.862202>,  <43.916088, 27.041998, 35.624252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.942215, 27.059237, 35.862202>,  <43.985764, 27.087969, 36.258785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942215, 27.059237, 35.862202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249920, -0.963372, 0.097237,
		-0.962127, 0.258371, 0.086928,
		-0.108867, -0.071830, -0.991458,
		43.909554, 27.037687, 35.564766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343498, 26.795317, 36.164589>,  <43.985764, 27.087969, 36.258785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343498, 26.795317, 36.164589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494293, 26.715443, 35.802814>,  <43.584770, 26.667519, 35.585751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494293, 26.715443, 35.802814>,  <43.343498, 26.795317, 36.164589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494293, 26.715443, 35.802814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225806, -0.966835, 0.119338,
		-0.898271, 0.159238, -0.409576,
		0.376989, -0.199683, -0.904437,
		43.607391, 26.655539, 35.531483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.218090, 37.951687, 40.493893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828648, 37.866371, 40.461399>,  <38.594982, 37.815182, 40.441902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828648, 37.866371, 40.461399>,  <39.218090, 37.951687, 40.493893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828648, 37.866371, 40.461399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156301, -0.363748, -0.918291,
		0.166313, -0.906750, 0.387484,
		-0.973607, -0.213288, -0.081230,
		38.536564, 37.802383, 40.437031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231922, 37.284069, 40.285023>,  <39.218090, 37.951687, 40.493893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231922, 37.284069, 40.285023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896099, 37.462795, 40.161411>,  <38.694607, 37.570030, 40.087246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896099, 37.462795, 40.161411>,  <39.231922, 37.284069, 40.285023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896099, 37.462795, 40.161411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192511, -0.287232, -0.938317,
		-0.508019, -0.847261, 0.155130,
		-0.839557, 0.446819, -0.309026,
		38.644234, 37.596840, 40.068703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724163, 36.722702, 39.901707>,  <39.231922, 37.284069, 40.285023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724163, 36.722702, 39.901707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634388, 37.098652, 39.798737>,  <38.580524, 37.324223, 39.736954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634388, 37.098652, 39.798737>,  <38.724163, 36.722702, 39.901707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634388, 37.098652, 39.798737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023847, -0.269378, -0.962739,
		-0.974198, -0.209932, 0.082871,
		-0.224433, 0.939874, -0.257422,
		38.567059, 37.380615, 39.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597824, 36.619595, 39.241711>,  <38.724163, 36.722702, 39.901707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597824, 36.619595, 39.241711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533051, 37.013786, 39.262135>,  <38.494186, 37.250301, 39.274391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533051, 37.013786, 39.262135>,  <38.597824, 36.619595, 39.241711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533051, 37.013786, 39.262135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183274, 0.020811, -0.982842,
		-0.969633, -0.168516, 0.177242,
		-0.161936, 0.985479, 0.051063,
		38.484470, 37.309429, 39.277454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884441, 36.785660, 38.996471>,  <38.597824, 36.619595, 39.241711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884441, 36.785660, 38.996471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142036, 37.087524, 38.946243>,  <38.296593, 37.268642, 38.916107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142036, 37.087524, 38.946243>,  <37.884441, 36.785660, 38.996471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142036, 37.087524, 38.946243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201720, 0.009176, -0.979400,
		-0.737963, 0.656051, 0.158140,
		0.643987, 0.754661, -0.125567,
		38.335232, 37.313923, 38.908573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439175, 37.316769, 38.781612>,  <37.884441, 36.785660, 38.996471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439175, 37.316769, 38.781612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816311, 37.370728, 38.659721>,  <38.042591, 37.403103, 38.586586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816311, 37.370728, 38.659721>,  <37.439175, 37.316769, 38.781612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816311, 37.370728, 38.659721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298826, -0.062541, -0.952256,
		-0.147515, 0.988884, -0.018655,
		0.942837, 0.134897, -0.304730,
		38.099163, 37.411198, 38.568302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527523, 37.887264, 38.276447>,  <37.439175, 37.316769, 38.781612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527523, 37.887264, 38.276447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875999, 37.699661, 38.218395>,  <38.085083, 37.587101, 38.183563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875999, 37.699661, 38.218395>,  <37.527523, 37.887264, 38.276447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875999, 37.699661, 38.218395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010683, 0.277427, -0.960687,
		0.490832, 0.838491, 0.236681,
		0.871189, -0.469007, -0.145128,
		38.137356, 37.558960, 38.174858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883297, 38.330212, 37.797523>,  <37.527523, 37.887264, 38.276447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883297, 38.330212, 37.797523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085903, 37.986542, 37.768482>,  <38.207466, 37.780342, 37.751057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085903, 37.986542, 37.768482>,  <37.883297, 38.330212, 37.797523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085903, 37.986542, 37.768482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114673, 0.150585, -0.981923,
		0.854573, 0.489030, 0.174797,
		0.506512, -0.859170, -0.072607,
		38.237858, 37.728790, 37.746700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521801, 38.434013, 37.480247>,  <37.883297, 38.330212, 37.797523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521801, 38.434013, 37.480247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465240, 38.042774, 37.419159>,  <38.431305, 37.808029, 37.382504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465240, 38.042774, 37.419159>,  <38.521801, 38.434013, 37.480247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465240, 38.042774, 37.419159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150590, 0.131227, -0.979848,
		0.978431, -0.161552, 0.128736,
		-0.141403, -0.978100, -0.152725,
		38.422821, 37.749344, 37.373341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958149, 38.374332, 36.997971>,  <38.521801, 38.434013, 37.480247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958149, 38.374332, 36.997971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739223, 38.041100, 36.965916>,  <38.607868, 37.841160, 36.946682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739223, 38.041100, 36.965916>,  <38.958149, 38.374332, 36.997971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739223, 38.041100, 36.965916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197712, -0.035655, -0.979612,
		0.813237, -0.552003, 0.184224,
		-0.547317, -0.833080, -0.080142,
		38.575027, 37.791176, 36.941872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365093, 37.879128, 36.608719>,  <38.958149, 38.374332, 36.997971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365093, 37.879128, 36.608719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006050, 37.707439, 36.568565>,  <38.790627, 37.604427, 36.544476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006050, 37.707439, 36.568565>,  <39.365093, 37.879128, 36.608719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006050, 37.707439, 36.568565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103076, 0.017028, -0.994528,
		0.428579, -0.903040, 0.028957,
		-0.897606, -0.429218, -0.100380,
		38.736767, 37.578674, 36.538452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414326, 37.252693, 36.307999>,  <39.365093, 37.879128, 36.608719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414326, 37.252693, 36.307999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049244, 37.377319, 36.202244>,  <38.830196, 37.452095, 36.138790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049244, 37.377319, 36.202244>,  <39.414326, 37.252693, 36.307999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049244, 37.377319, 36.202244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267598, -0.033223, -0.962958,
		-0.308805, -0.949645, -0.053051,
		-0.912706, 0.311562, -0.264383,
		38.775433, 37.470787, 36.122929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966614, 36.683826, 35.885231>,  <39.414326, 37.252693, 36.307999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966614, 36.683826, 35.885231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896084, 37.064255, 35.783737>,  <38.853764, 37.292511, 35.722839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896084, 37.064255, 35.783737>,  <38.966614, 36.683826, 35.885231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896084, 37.064255, 35.783737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492021, -0.138102, -0.859560,
		-0.852540, -0.276406, -0.443593,
		-0.176327, 0.951067, -0.253735,
		38.843185, 37.349575, 35.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599773, 36.334095, 36.260651>,  <38.966614, 36.683826, 35.885231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599773, 36.334095, 36.260651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458611, 36.002464, 36.087177>,  <39.373913, 35.803486, 35.983093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458611, 36.002464, 36.087177>,  <39.599773, 36.334095, 36.260651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458611, 36.002464, 36.087177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171804, -0.398205, 0.901064,
		-0.919749, 0.392501, -0.001910,
		-0.352908, -0.829081, -0.433682,
		39.352737, 35.753738, 35.957073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921432, 36.104706, 36.373466>,  <39.599773, 36.334095, 36.260651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921432, 36.104706, 36.373466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186398, 35.805477, 36.357494>,  <39.345379, 35.625938, 36.347912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186398, 35.805477, 36.357494>,  <38.921432, 36.104706, 36.373466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186398, 35.805477, 36.357494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223583, -0.248289, 0.942530,
		-0.714994, -0.615419, -0.331727,
		0.662415, -0.748072, -0.039928,
		39.385120, 35.581055, 36.345516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524578, 35.391617, 36.557255>,  <38.921432, 36.104706, 36.373466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524578, 35.391617, 36.557255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916016, 35.335957, 36.617897>,  <39.150879, 35.302559, 36.654282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916016, 35.335957, 36.617897>,  <38.524578, 35.391617, 36.557255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916016, 35.335957, 36.617897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193944, -0.377391, 0.905517,
		-0.068792, -0.915539, -0.396302,
		0.978597, -0.139153, 0.151602,
		39.209595, 35.294209, 36.663376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661842, 34.740158, 36.722038>,  <38.524578, 35.391617, 36.557255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661842, 34.740158, 36.722038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001522, 34.886932, 36.873943>,  <39.205330, 34.974998, 36.965088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001522, 34.886932, 36.873943>,  <38.661842, 34.740158, 36.722038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001522, 34.886932, 36.873943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152176, -0.518601, 0.841365,
		0.505678, -0.772275, -0.384554,
		0.849195, 0.366940, 0.379767,
		39.256279, 34.997013, 36.987873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977882, 34.163433, 36.863266>,  <38.661842, 34.740158, 36.722038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977882, 34.163433, 36.863266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179413, 34.443897, 37.065071>,  <39.300331, 34.612175, 37.186153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179413, 34.443897, 37.065071>,  <38.977882, 34.163433, 36.863266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179413, 34.443897, 37.065071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091854, -0.537264, 0.838398,
		0.858907, -0.468749, -0.206284,
		0.503827, 0.701158, 0.504516,
		39.330563, 34.654243, 37.216427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518703, 33.797710, 37.169529>,  <38.977882, 34.163433, 36.863266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518703, 33.797710, 37.169529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446274, 34.128040, 37.383156>,  <39.402817, 34.326237, 37.511333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446274, 34.128040, 37.383156>,  <39.518703, 33.797710, 37.169529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446274, 34.128040, 37.383156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054984, -0.550698, 0.832891,
		0.981931, 0.121450, 0.145124,
		-0.181074, 0.825821, 0.534070,
		39.391953, 34.375786, 37.543377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826305, 33.702744, 37.808907>,  <39.518703, 33.797710, 37.169529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826305, 33.702744, 37.808907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593246, 34.015598, 37.897259>,  <39.453411, 34.203312, 37.950272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593246, 34.015598, 37.897259>,  <39.826305, 33.702744, 37.808907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593246, 34.015598, 37.897259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117124, -0.349744, 0.929495,
		0.804244, 0.515695, 0.295383,
		-0.582644, 0.782137, 0.220879,
		39.418453, 34.250240, 37.963524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095142, 33.887444, 38.539436>,  <39.826305, 33.702744, 37.808907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095142, 33.887444, 38.539436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725971, 34.038223, 38.508167>,  <39.504467, 34.128693, 38.489407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725971, 34.038223, 38.508167>,  <40.095142, 33.887444, 38.539436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725971, 34.038223, 38.508167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226099, -0.366397, 0.902570,
		0.311580, 0.850683, 0.423387,
		-0.922929, 0.376950, -0.078177,
		39.449093, 34.151310, 38.484715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910870, 33.901165, 39.271641>,  <40.095142, 33.887444, 38.539436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910870, 33.901165, 39.271641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560955, 33.952282, 39.084698>,  <39.351006, 33.982952, 38.972530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560955, 33.952282, 39.084698>,  <39.910870, 33.901165, 39.271641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560955, 33.952282, 39.084698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484213, -0.264711, 0.833946,
		-0.017142, 0.955823, 0.293444,
		-0.874782, 0.127794, -0.467359,
		39.298519, 33.990620, 38.944489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580555, 34.287571, 39.745525>,  <39.910870, 33.901165, 39.271641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580555, 34.287571, 39.745525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309067, 34.152573, 39.484623>,  <39.146172, 34.071575, 39.328083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309067, 34.152573, 39.484623>,  <39.580555, 34.287571, 39.745525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309067, 34.152573, 39.484623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617873, -0.217632, 0.755558,
		-0.396948, 0.915824, -0.060817,
		-0.678723, -0.337495, -0.652252,
		39.105450, 34.051323, 39.288948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918194, 34.646030, 39.898251>,  <39.580555, 34.287571, 39.745525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918194, 34.646030, 39.898251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855064, 34.297237, 39.712891>,  <38.817188, 34.087963, 39.601673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855064, 34.297237, 39.712891>,  <38.918194, 34.646030, 39.898251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855064, 34.297237, 39.712891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525842, -0.322998, 0.786869,
		-0.835812, 0.367864, -0.407547,
		-0.157824, -0.871980, -0.463404,
		38.807716, 34.035645, 39.573868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317089, 34.506592, 40.225788>,  <38.918194, 34.646030, 39.898251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317089, 34.506592, 40.225788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429111, 34.158955, 40.062698>,  <38.496326, 33.950371, 39.964844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429111, 34.158955, 40.062698>,  <38.317089, 34.506592, 40.225788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429111, 34.158955, 40.062698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361978, -0.488977, 0.793646,
		-0.889123, -0.074678, -0.451535,
		0.280058, -0.869094, -0.407728,
		38.513130, 33.898228, 39.940380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714348, 34.202328, 40.097610>,  <38.317089, 34.506592, 40.225788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714348, 34.202328, 40.097610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985489, 33.909489, 40.124599>,  <38.148174, 33.733788, 40.140793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985489, 33.909489, 40.124599>,  <37.714348, 34.202328, 40.097610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985489, 33.909489, 40.124599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480225, -0.371406, 0.794633,
		-0.556686, -0.571048, -0.603328,
		0.677853, -0.732095, 0.067475,
		38.188847, 33.689861, 40.144840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302532, 33.597519, 40.261547>,  <37.714348, 34.202328, 40.097610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302532, 33.597519, 40.261547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687630, 33.529667, 40.345779>,  <37.918690, 33.488956, 40.396317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687630, 33.529667, 40.345779>,  <37.302532, 33.597519, 40.261547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687630, 33.529667, 40.345779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233713, -0.130318, 0.963533,
		-0.136053, -0.976844, -0.165119,
		0.962739, -0.169682, 0.210571,
		37.976456, 33.478779, 40.408955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309376, 32.974705, 40.471382>,  <37.302532, 33.597519, 40.261547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309376, 32.974705, 40.471382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637901, 33.147861, 40.619999>,  <37.835018, 33.251755, 40.709167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637901, 33.147861, 40.619999>,  <37.309376, 32.974705, 40.471382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637901, 33.147861, 40.619999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374931, -0.081262, 0.923484,
		0.429965, -0.897774, 0.095564,
		0.821314, 0.432895, 0.371543,
		37.884296, 33.277729, 40.731461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913425, 32.318027, 40.577404>,  <37.309376, 32.974705, 40.471382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913425, 32.318027, 40.577404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525654, 32.261116, 40.657372>,  <36.292992, 32.226971, 40.705353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525654, 32.261116, 40.657372>,  <36.913425, 32.318027, 40.577404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525654, 32.261116, 40.657372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102337, -0.506074, -0.856397,
		0.223020, -0.850674, 0.476042,
		-0.969427, -0.142276, 0.199920,
		36.234825, 32.218433, 40.717346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737724, 31.619095, 40.403919>,  <36.913425, 32.318027, 40.577404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737724, 31.619095, 40.403919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416321, 31.856731, 40.388779>,  <36.223480, 31.999313, 40.379692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416321, 31.856731, 40.388779>,  <36.737724, 31.619095, 40.403919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416321, 31.856731, 40.388779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288214, -0.443869, -0.848477,
		-0.520878, -0.670844, 0.527877,
		-0.803504, 0.594095, -0.037855,
		36.175270, 32.034958, 40.377422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277191, 31.258696, 40.012363>,  <36.737724, 31.619095, 40.403919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277191, 31.258696, 40.012363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114128, 31.623926, 40.008198>,  <36.016289, 31.843065, 40.005699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114128, 31.623926, 40.008198>,  <36.277191, 31.258696, 40.012363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114128, 31.623926, 40.008198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117939, -0.063960, -0.990959,
		-0.905487, -0.402742, 0.133761,
		-0.407656, 0.913076, -0.010416,
		35.991833, 31.897848, 40.005074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736618, 31.170023, 39.455894>,  <36.277191, 31.258696, 40.012363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736618, 31.170023, 39.455894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822750, 31.558065, 39.500656>,  <35.874432, 31.790892, 39.527515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822750, 31.558065, 39.500656>,  <35.736618, 31.170023, 39.455894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822750, 31.558065, 39.500656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005359, 0.113419, -0.993533,
		-0.976526, 0.214541, 0.019224,
		0.215333, 0.970107, 0.111906,
		35.887352, 31.849098, 39.534229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115040, 31.539526, 39.059910>,  <35.736618, 31.170023, 39.455894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115040, 31.539526, 39.059910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445473, 31.763693, 39.083633>,  <35.643734, 31.898193, 39.097870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445473, 31.763693, 39.083633>,  <35.115040, 31.539526, 39.059910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445473, 31.763693, 39.083633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235596, 0.439043, -0.867027,
		-0.511935, 0.702265, 0.494718,
		0.826086, 0.560415, 0.059311,
		35.693298, 31.931818, 39.101425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964104, 32.203941, 38.710163>,  <35.115040, 31.539526, 39.059910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964104, 32.203941, 38.710163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362267, 32.234344, 38.733459>,  <35.601162, 32.252586, 38.747437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362267, 32.234344, 38.733459>,  <34.964104, 32.203941, 38.710163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362267, 32.234344, 38.733459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013795, 0.488021, -0.872723,
		-0.094758, 0.869516, 0.484730,
		0.995405, 0.076010, 0.058239,
		35.660889, 32.257149, 38.750931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134251, 32.813160, 38.594845>,  <34.964104, 32.203941, 38.710163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134251, 32.813160, 38.594845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471733, 32.626472, 38.488762>,  <35.674221, 32.514462, 38.425114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471733, 32.626472, 38.488762>,  <35.134251, 32.813160, 38.594845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471733, 32.626472, 38.488762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102833, 0.344375, -0.933183,
		0.526866, 0.814603, 0.242557,
		0.843704, -0.466720, -0.265208,
		35.724846, 32.486458, 38.409199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536503, 33.293430, 38.333683>,  <35.134251, 32.813160, 38.594845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536503, 33.293430, 38.333683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716770, 32.965260, 38.192940>,  <35.824928, 32.768356, 38.108494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716770, 32.965260, 38.192940>,  <35.536503, 33.293430, 38.333683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716770, 32.965260, 38.192940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125060, 0.332248, -0.934864,
		0.883890, 0.465315, 0.047131,
		0.450665, -0.820423, -0.351863,
		35.851971, 32.719131, 38.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128513, 33.519875, 37.846069>,  <35.536503, 33.293430, 38.333683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128513, 33.519875, 37.846069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046825, 33.134434, 37.777065>,  <35.997814, 32.903168, 37.735661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046825, 33.134434, 37.777065>,  <36.128513, 33.519875, 37.846069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046825, 33.134434, 37.777065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074398, 0.160438, -0.984238,
		0.976094, -0.213836, 0.038926,
		-0.204221, -0.963604, -0.172512,
		35.985558, 32.845352, 37.725311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695156, 33.272743, 37.340252>,  <36.128513, 33.519875, 37.846069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695156, 33.272743, 37.340252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361683, 33.052071, 37.350178>,  <36.161598, 32.919666, 37.356133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361683, 33.052071, 37.350178>,  <36.695156, 33.272743, 37.340252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361683, 33.052071, 37.350178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201917, 0.262689, -0.943517,
		0.514000, -0.791608, -0.330394,
		-0.833687, -0.551680, 0.024817,
		36.111576, 32.886566, 37.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609047, 33.049725, 36.678493>,  <36.695156, 33.272743, 37.340252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609047, 33.049725, 36.678493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248207, 33.026875, 36.849586>,  <36.031704, 33.013165, 36.952244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248207, 33.026875, 36.849586>,  <36.609047, 33.049725, 36.678493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248207, 33.026875, 36.849586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429856, 0.206248, -0.879026,
		-0.038007, -0.976831, -0.210610,
		-0.902097, -0.057122, 0.427735,
		35.977577, 33.009739, 36.977905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254627, 32.808884, 36.091770>,  <36.609047, 33.049725, 36.678493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254627, 32.808884, 36.091770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965576, 32.933788, 36.338444>,  <35.792145, 33.008732, 36.486446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965576, 32.933788, 36.338444>,  <36.254627, 32.808884, 36.091770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965576, 32.933788, 36.338444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546539, 0.288096, -0.786318,
		-0.423201, -0.905258, -0.037523,
		-0.722632, 0.312263, 0.616681,
		35.748787, 33.027466, 36.523449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.862881, 30.894711, 44.232437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620663, 31.209019, 44.182026>,  <35.475334, 31.397604, 44.151779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.620663, 31.209019, 44.182026>,  <35.862881, 30.894711, 44.232437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620663, 31.209019, 44.182026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312284, 0.088955, -0.945815,
		-0.731982, -0.612089, -0.299249,
		-0.605542, 0.785770, -0.126032,
		35.438999, 31.444750, 44.144215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595238, 30.724123, 43.635952>,  <35.862881, 30.894711, 44.232437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595238, 30.724123, 43.635952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553371, 31.117363, 43.696033>,  <35.528252, 31.353306, 43.732082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.553371, 31.117363, 43.696033>,  <35.595238, 30.724123, 43.635952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553371, 31.117363, 43.696033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283886, 0.174286, -0.942886,
		-0.953128, -0.056047, -0.297330,
		-0.104666, 0.983099, 0.150206,
		35.521973, 31.412292, 43.741096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189438, 30.937048, 43.057518>,  <35.595238, 30.724123, 43.635952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189438, 30.937048, 43.057518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.337620, 31.277649, 43.205956>,  <35.426529, 31.482010, 43.295017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.337620, 31.277649, 43.205956>,  <35.189438, 30.937048, 43.057518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337620, 31.277649, 43.205956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131740, 0.347309, -0.928451,
		-0.919462, 0.392834, 0.016484,
		0.370452, 0.851503, 0.371089,
		35.448757, 31.533100, 43.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834652, 31.431742, 42.718773>,  <35.189438, 30.937048, 43.057518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834652, 31.431742, 42.718773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.180454, 31.598688, 42.830803>,  <35.387936, 31.698856, 42.898022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.180454, 31.598688, 42.830803>,  <34.834652, 31.431742, 42.718773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180454, 31.598688, 42.830803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048208, 0.485794, -0.872743,
		-0.500313, 0.767990, 0.399849,
		0.864502, 0.417368, 0.280073,
		35.439804, 31.723898, 42.914825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838036, 32.108356, 42.453495>,  <34.834652, 31.431742, 42.718773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838036, 32.108356, 42.453495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225937, 32.053993, 42.534603>,  <35.458675, 32.021378, 42.583267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.225937, 32.053993, 42.534603>,  <34.838036, 32.108356, 42.453495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225937, 32.053993, 42.534603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239627, 0.371719, -0.896885,
		0.046518, 0.918343, 0.393041,
		0.969750, -0.135905, 0.202768,
		35.516861, 32.013222, 42.595432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205585, 32.729877, 42.324425>,  <34.838036, 32.108356, 42.453495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205585, 32.729877, 42.324425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479633, 32.440720, 42.288582>,  <35.644062, 32.267223, 42.267078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479633, 32.440720, 42.288582>,  <35.205585, 32.729877, 42.324425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479633, 32.440720, 42.288582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253475, 0.351915, -0.901058,
		0.682905, 0.594622, 0.424341,
		0.685121, -0.722897, -0.089602,
		35.685169, 32.223850, 42.261700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822483, 33.049202, 42.068016>,  <35.205585, 32.729877, 42.324425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822483, 33.049202, 42.068016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870373, 32.657013, 42.005600>,  <35.899105, 32.421700, 41.968151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.870373, 32.657013, 42.005600>,  <35.822483, 33.049202, 42.068016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870373, 32.657013, 42.005600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081478, 0.166344, -0.982696,
		0.989458, 0.104936, 0.099802,
		0.119722, -0.980468, -0.156041,
		35.906288, 32.362873, 41.958786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371471, 33.061291, 41.616760>,  <35.822483, 33.049202, 42.068016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371471, 33.061291, 41.616760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198662, 32.702244, 41.581802>,  <36.094975, 32.486816, 41.560829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198662, 32.702244, 41.581802>,  <36.371471, 33.061291, 41.616760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198662, 32.702244, 41.581802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045418, 0.075128, -0.996139,
		0.900718, -0.434324, 0.008310,
		-0.432023, -0.897618, -0.087396,
		36.069054, 32.432957, 41.555584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827190, 32.637554, 41.243061>,  <36.371471, 33.061291, 41.616760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827190, 32.637554, 41.243061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468349, 32.472805, 41.179104>,  <36.253044, 32.373955, 41.140728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468349, 32.472805, 41.179104>,  <36.827190, 32.637554, 41.243061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468349, 32.472805, 41.179104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164707, 0.024050, -0.986049,
		0.409968, -0.910926, 0.046262,
		-0.897106, -0.411868, -0.159896,
		36.199219, 32.349243, 41.131134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602787, 32.534985, 41.069820>,  <36.827190, 32.637554, 41.243061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602787, 32.534985, 41.069820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736210, 32.908882, 41.118793>,  <37.816261, 33.133221, 41.148178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736210, 32.908882, 41.118793>,  <37.602787, 32.534985, 41.069820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736210, 32.908882, 41.118793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135214, -0.175960, 0.975067,
		0.932984, -0.308684, -0.185083,
		0.333555, 0.934747, 0.122429,
		37.836277, 33.189308, 41.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053497, 32.476212, 41.579613>,  <37.602787, 32.534985, 41.069820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053497, 32.476212, 41.579613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017952, 32.874588, 41.573776>,  <37.996624, 33.113613, 41.570274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017952, 32.874588, 41.573776>,  <38.053497, 32.476212, 41.579613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017952, 32.874588, 41.573776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143951, 0.027333, 0.989207,
		0.985587, 0.085806, -0.145795,
		-0.088865, 0.995937, -0.014588,
		37.991291, 33.173370, 41.569401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616882, 32.836071, 41.926189>,  <38.053497, 32.476212, 41.579613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616882, 32.836071, 41.926189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344501, 33.128399, 41.907398>,  <38.181072, 33.303795, 41.896122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.344501, 33.128399, 41.907398>,  <38.616882, 32.836071, 41.926189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344501, 33.128399, 41.907398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170653, 0.220738, 0.960288,
		0.712167, 0.645893, -0.275029,
		-0.680952, 0.730819, -0.046979,
		38.140217, 33.347645, 41.893303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886848, 33.313980, 42.381985>,  <38.616882, 32.836071, 41.926189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886848, 33.313980, 42.381985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529327, 33.491665, 42.357365>,  <38.314816, 33.598274, 42.342594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529327, 33.491665, 42.357365>,  <38.886848, 33.313980, 42.381985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529327, 33.491665, 42.357365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012164, 0.113183, 0.993500,
		0.448287, 0.888746, -0.095760,
		-0.893807, 0.444208, -0.061549,
		38.261185, 33.624928, 42.338902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871040, 33.907009, 42.860657>,  <38.886848, 33.313980, 42.381985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871040, 33.907009, 42.860657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494442, 33.786728, 42.799793>,  <38.268482, 33.714558, 42.763275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494442, 33.786728, 42.799793>,  <38.871040, 33.907009, 42.860657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494442, 33.786728, 42.799793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234164, 0.258999, 0.937063,
		-0.242373, 0.917875, -0.314262,
		-0.941500, -0.300708, -0.152159,
		38.211990, 33.696514, 42.754147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516064, 34.412540, 43.198101>,  <38.871040, 33.907009, 42.860657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516064, 34.412540, 43.198101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251919, 34.112511, 43.183598>,  <38.093433, 33.932491, 43.174896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.251919, 34.112511, 43.183598>,  <38.516064, 34.412540, 43.198101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251919, 34.112511, 43.183598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262814, 0.185614, 0.946824,
		-0.703461, 0.634771, -0.319702,
		-0.660358, -0.750076, -0.036254,
		38.053810, 33.887489, 43.172722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850838, 34.735710, 43.371853>,  <38.516064, 34.412540, 43.198101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850838, 34.735710, 43.371853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843391, 34.340508, 43.433167>,  <37.838924, 34.103386, 43.469955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843391, 34.340508, 43.433167>,  <37.850838, 34.735710, 43.371853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843391, 34.340508, 43.433167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270354, 0.152572, 0.950595,
		-0.962581, -0.023748, -0.269952,
		-0.018613, -0.988007, 0.153283,
		37.837807, 34.044106, 43.479153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362740, 34.663948, 43.838295>,  <37.850838, 34.735710, 43.371853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362740, 34.663948, 43.838295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.502197, 34.289047, 43.838966>,  <37.585873, 34.064106, 43.839367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.502197, 34.289047, 43.838966>,  <37.362740, 34.663948, 43.838295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502197, 34.289047, 43.838966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192747, -0.069950, 0.978752,
		-0.917222, -0.341557, -0.205041,
		0.348642, -0.937255, 0.001675,
		37.606789, 34.007870, 43.839470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847351, 34.203918, 43.973492>,  <37.362740, 34.663948, 43.838295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847351, 34.203918, 43.973492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191551, 34.037060, 44.090477>,  <37.398071, 33.936943, 44.160667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191551, 34.037060, 44.090477>,  <36.847351, 34.203918, 43.973492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191551, 34.037060, 44.090477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334358, -0.029297, 0.941990,
		-0.384380, -0.908367, -0.164687,
		0.860498, -0.417147, 0.292459,
		37.449699, 33.911915, 44.178215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668617, 33.607803, 44.123703>,  <36.847351, 34.203918, 43.973492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668617, 33.607803, 44.123703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013031, 33.676785, 44.315071>,  <37.219677, 33.718174, 44.429890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.013031, 33.676785, 44.315071>,  <36.668617, 33.607803, 44.123703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013031, 33.676785, 44.315071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479317, -0.039158, 0.876768,
		0.169934, -0.984239, 0.048943,
		0.861033, 0.172452, 0.478417,
		37.271339, 33.728519, 44.458595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802654, 33.054035, 44.527203>,  <36.668617, 33.607803, 44.123703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802654, 33.054035, 44.527203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049339, 33.317608, 44.699467>,  <37.197350, 33.475754, 44.802826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049339, 33.317608, 44.699467>,  <36.802654, 33.054035, 44.527203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049339, 33.317608, 44.699467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399708, -0.209188, 0.892454,
		0.678157, -0.722528, 0.134371,
		0.616714, 0.658934, 0.430662,
		37.234352, 33.515289, 44.828667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896099, 32.718662, 45.170708>,  <36.802654, 33.054035, 44.527203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896099, 32.718662, 45.170708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081242, 33.060123, 45.266239>,  <37.192329, 33.264999, 45.323559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.081242, 33.060123, 45.266239>,  <36.896099, 32.718662, 45.170708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081242, 33.060123, 45.266239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143576, -0.193672, 0.970504,
		0.874727, -0.483497, 0.032921,
		0.462860, 0.853652, 0.238829,
		37.220100, 33.316219, 45.337887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326637, 32.592926, 45.820076>,  <36.896099, 32.718662, 45.170708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326637, 32.592926, 45.820076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239071, 32.982155, 45.791210>,  <37.186531, 33.215691, 45.773891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239071, 32.982155, 45.791210>,  <37.326637, 32.592926, 45.820076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239071, 32.982155, 45.791210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152854, 0.038845, 0.987485,
		0.963697, 0.227207, 0.140234,
		-0.218916, 0.973071, -0.072165,
		37.173397, 33.274075, 45.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833035, 33.069180, 46.209801>,  <37.326637, 32.592926, 45.820076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833035, 33.069180, 46.209801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542126, 33.339516, 46.161938>,  <37.367580, 33.501717, 46.133221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542126, 33.339516, 46.161938>,  <37.833035, 33.069180, 46.209801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542126, 33.339516, 46.161938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117639, 0.049008, 0.991847,
		0.676194, 0.735417, 0.043863,
		-0.727271, 0.675840, -0.119653,
		37.323944, 33.542267, 46.126041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.705902, 37.898533, 45.286476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874180, 37.554585, 45.402157>,  <31.975147, 37.348217, 45.471565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.874180, 37.554585, 45.402157>,  <31.705902, 37.898533, 45.286476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874180, 37.554585, 45.402157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404060, -0.107822, -0.908355,
		0.812251, 0.498995, 0.302080,
		0.420694, -0.859871, 0.289203,
		32.000389, 37.296623, 45.488918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288975, 37.844254, 45.017654>,  <31.705902, 37.898533, 45.286476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288975, 37.844254, 45.017654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231091, 37.456024, 45.094646>,  <32.196362, 37.223087, 45.140842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231091, 37.456024, 45.094646>,  <32.288975, 37.844254, 45.017654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231091, 37.456024, 45.094646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437442, -0.237239, -0.867388,
		0.887526, -0.041322, 0.458900,
		-0.144711, -0.970572, 0.192480,
		32.187675, 37.164852, 45.152390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947945, 37.595604, 45.024303>,  <32.288975, 37.844254, 45.017654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947945, 37.595604, 45.024303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672832, 37.322639, 44.925293>,  <32.507763, 37.158859, 44.865887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672832, 37.322639, 44.925293>,  <32.947945, 37.595604, 45.024303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672832, 37.322639, 44.925293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474085, -0.164046, -0.865062,
		0.549723, -0.712322, 0.436350,
		-0.687784, -0.682411, -0.247522,
		32.466496, 37.117916, 44.851036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291721, 37.087040, 44.652454>,  <32.947945, 37.595604, 45.024303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291721, 37.087040, 44.652454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920853, 36.999077, 44.531128>,  <32.698334, 36.946301, 44.458332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920853, 36.999077, 44.531128>,  <33.291721, 37.087040, 44.652454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920853, 36.999077, 44.531128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297505, 0.059910, -0.952839,
		0.227706, -0.973680, 0.009877,
		-0.927168, -0.219906, -0.303317,
		32.642704, 36.933105, 44.440132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420818, 36.551590, 44.239082>,  <33.291721, 37.087040, 44.652454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420818, 36.551590, 44.239082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044872, 36.642788, 44.137367>,  <32.819305, 36.697506, 44.076336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044872, 36.642788, 44.137367>,  <33.420818, 36.551590, 44.239082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044872, 36.642788, 44.137367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249029, -0.052058, -0.967096,
		-0.233733, -0.972269, -0.007851,
		-0.939869, 0.227998, -0.254291,
		32.762913, 36.711185, 44.061081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269928, 36.073055, 43.675781>,  <33.420818, 36.551590, 44.239082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269928, 36.073055, 43.675781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032391, 36.394108, 43.653416>,  <32.889870, 36.586739, 43.639996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032391, 36.394108, 43.653416>,  <33.269928, 36.073055, 43.675781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032391, 36.394108, 43.653416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209777, 0.087367, -0.973838,
		-0.776753, -0.590036, -0.220257,
		-0.593843, 0.802636, -0.055914,
		32.854237, 36.634899, 43.636642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744930, 36.027058, 43.084949>,  <33.269928, 36.073055, 43.675781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744930, 36.027058, 43.084949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737186, 36.419807, 43.160374>,  <32.732540, 36.655457, 43.205627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.737186, 36.419807, 43.160374>,  <32.744930, 36.027058, 43.084949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737186, 36.419807, 43.160374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130811, 0.189466, -0.973135,
		-0.991218, 0.005828, -0.132107,
		-0.019359, 0.981870, 0.188564,
		32.731380, 36.714367, 43.216942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355045, 36.300343, 42.505314>,  <32.744930, 36.027058, 43.084949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355045, 36.300343, 42.505314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557163, 36.614841, 42.647575>,  <32.678436, 36.803539, 42.732933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557163, 36.614841, 42.647575>,  <32.355045, 36.300343, 42.505314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557163, 36.614841, 42.647575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116809, 0.346032, -0.930923,
		-0.855003, 0.511938, 0.083009,
		0.505298, 0.786245, 0.355657,
		32.708752, 36.850716, 42.754272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021568, 36.721050, 42.129951>,  <32.355045, 36.300343, 42.505314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021568, 36.721050, 42.129951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355839, 36.897110, 42.261353>,  <32.556400, 37.002747, 42.340195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.355839, 36.897110, 42.261353>,  <32.021568, 36.721050, 42.129951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355839, 36.897110, 42.261353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155590, 0.383896, -0.910173,
		-0.526725, 0.811721, 0.252329,
		0.835675, 0.440151, 0.328503,
		32.606541, 37.029156, 42.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871780, 37.365490, 42.057667>,  <32.021568, 36.721050, 42.129951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871780, 37.365490, 42.057667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267689, 37.313095, 42.035046>,  <32.505234, 37.281658, 42.021473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267689, 37.313095, 42.035046>,  <31.871780, 37.365490, 42.057667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267689, 37.313095, 42.035046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011636, 0.469185, -0.883023,
		0.142196, 0.873332, 0.465909,
		0.989770, -0.130984, -0.056554,
		32.564621, 37.273800, 42.018078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065044, 37.944546, 41.547199>,  <31.871780, 37.365490, 42.057667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065044, 37.944546, 41.547199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401184, 37.735489, 41.604694>,  <32.602867, 37.610054, 41.639191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.401184, 37.735489, 41.604694>,  <32.065044, 37.944546, 41.547199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401184, 37.735489, 41.604694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369589, 0.358508, -0.857249,
		0.396501, 0.773513, 0.494434,
		0.840352, -0.522637, 0.143733,
		32.653290, 37.578697, 41.647816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684582, 38.377373, 41.438217>,  <32.065044, 37.944546, 41.547199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684582, 38.377373, 41.438217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771263, 37.992203, 41.373955>,  <32.823273, 37.761101, 41.335396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771263, 37.992203, 41.373955>,  <32.684582, 38.377373, 41.438217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771263, 37.992203, 41.373955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232275, 0.210702, -0.949554,
		0.948202, 0.168458, 0.269324,
		0.216707, -0.962926, -0.160660,
		32.836277, 37.703323, 41.325756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168770, 38.482155, 40.913021>,  <32.684582, 38.377373, 41.438217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168770, 38.482155, 40.913021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162533, 38.082382, 40.924915>,  <33.158791, 37.842518, 40.932053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162533, 38.082382, 40.924915>,  <33.168770, 38.482155, 40.913021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162533, 38.082382, 40.924915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230233, -0.032530, -0.972592,
		0.973011, -0.008322, 0.230611,
		-0.015596, -0.999436, 0.029736,
		33.157856, 37.782551, 40.933838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862083, 38.220352, 40.655605>,  <33.168770, 38.482155, 40.913021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862083, 38.220352, 40.655605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549744, 37.975384, 40.606255>,  <33.362339, 37.828403, 40.576645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.549744, 37.975384, 40.606255>,  <33.862083, 38.220352, 40.655605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549744, 37.975384, 40.606255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163773, -0.010079, -0.986447,
		0.602873, -0.790470, 0.108167,
		-0.780847, -0.612417, -0.123381,
		33.315491, 37.791660, 40.569241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557877, 38.177868, 40.833252>,  <33.862083, 38.220352, 40.655605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557877, 38.177868, 40.833252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689667, 38.541660, 40.731831>,  <34.768742, 38.759937, 40.670979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689667, 38.541660, 40.731831>,  <34.557877, 38.177868, 40.833252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689667, 38.541660, 40.731831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069651, 0.291231, 0.954114,
		0.941592, -0.296695, 0.159299,
		0.329473, 0.909482, -0.253556,
		34.788509, 38.814507, 40.655766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117916, 38.338745, 41.306549>,  <34.557877, 38.177868, 40.833252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117916, 38.338745, 41.306549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951443, 38.669025, 41.154224>,  <34.851559, 38.867191, 41.062828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.951443, 38.669025, 41.154224>,  <35.117916, 38.338745, 41.306549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951443, 38.669025, 41.154224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091953, 0.378439, 0.921048,
		0.904621, 0.418338, -0.081573,
		-0.416179, 0.825698, -0.380812,
		34.826588, 38.916737, 41.039982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375328, 38.820774, 41.733280>,  <35.117916, 38.338745, 41.306549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375328, 38.820774, 41.733280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063225, 39.004906, 41.563908>,  <34.875965, 39.115387, 41.462284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.063225, 39.004906, 41.563908>,  <35.375328, 38.820774, 41.733280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063225, 39.004906, 41.563908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245461, 0.397319, 0.884243,
		0.575284, 0.793872, -0.197017,
		-0.780254, 0.460331, -0.423436,
		34.829147, 39.143005, 41.436878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368725, 39.562397, 41.967915>,  <35.375328, 38.820774, 41.733280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368725, 39.562397, 41.967915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001354, 39.443306, 41.863724>,  <34.780933, 39.371849, 41.801208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001354, 39.443306, 41.863724>,  <35.368725, 39.562397, 41.967915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001354, 39.443306, 41.863724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367964, 0.401188, 0.838839,
		-0.145247, 0.866259, -0.478016,
		-0.918426, -0.297731, -0.260481,
		34.725826, 39.353985, 41.785580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039345, 40.090771, 42.358982>,  <35.368725, 39.562397, 41.967915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039345, 40.090771, 42.358982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744968, 39.839478, 42.258015>,  <34.568344, 39.688702, 42.197433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.744968, 39.839478, 42.258015>,  <35.039345, 40.090771, 42.358982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744968, 39.839478, 42.258015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336778, 0.016254, 0.941444,
		-0.587345, 0.777854, -0.223538,
		-0.735939, -0.628235, -0.252417,
		34.524185, 39.651009, 42.182289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428719, 40.376602, 42.642948>,  <35.039345, 40.090771, 42.358982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428719, 40.376602, 42.642948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356617, 39.990658, 42.566475>,  <34.313358, 39.759090, 42.520592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356617, 39.990658, 42.566475>,  <34.428719, 40.376602, 42.642948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356617, 39.990658, 42.566475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331611, -0.123377, 0.935314,
		-0.926036, 0.231990, -0.297720,
		-0.180251, -0.964862, -0.191182,
		34.302540, 39.701199, 42.509121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654064, 40.186611, 42.841278>,  <34.428719, 40.376602, 42.642948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654064, 40.186611, 42.841278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885674, 39.860527, 42.846344>,  <34.024639, 39.664875, 42.849384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.885674, 39.860527, 42.846344>,  <33.654064, 40.186611, 42.841278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885674, 39.860527, 42.846344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240965, -0.156276, 0.957869,
		-0.778886, -0.557683, -0.286925,
		0.579027, -0.815210, 0.012661,
		34.059383, 39.615963, 42.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195091, 39.750435, 43.194885>,  <33.654064, 40.186611, 42.841278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195091, 39.750435, 43.194885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516731, 39.512650, 43.197449>,  <33.709713, 39.369980, 43.198986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.516731, 39.512650, 43.197449>,  <33.195091, 39.750435, 43.194885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516731, 39.512650, 43.197449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260766, -0.342995, 0.902416,
		-0.534257, -0.727300, -0.430817,
		0.804096, -0.594465, 0.006408,
		33.757961, 39.334309, 43.199371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986668, 39.114204, 43.601749>,  <33.195091, 39.750435, 43.194885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986668, 39.114204, 43.601749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.386417, 39.100098, 43.602455>,  <33.626266, 39.091633, 43.602879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.386417, 39.100098, 43.602455>,  <32.986668, 39.114204, 43.601749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386417, 39.100098, 43.602455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010873, -0.259907, 0.965572,
		-0.033596, -0.964989, -0.260128,
		0.999376, -0.035268, 0.001761,
		33.686230, 39.089516, 43.602982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218525, 38.477943, 43.975372>,  <32.986668, 39.114204, 43.601749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218525, 38.477943, 43.975372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514256, 38.745415, 44.007034>,  <33.691696, 38.905895, 44.026031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514256, 38.745415, 44.007034>,  <33.218525, 38.477943, 43.975372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514256, 38.745415, 44.007034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063927, -0.186726, 0.980330,
		0.670301, -0.719728, -0.180799,
		0.739330, 0.668674, 0.079153,
		33.736053, 38.946018, 44.030781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720818, 38.054802, 44.302208>,  <33.218525, 38.477943, 43.975372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720818, 38.054802, 44.302208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785385, 38.446247, 44.353226>,  <33.824127, 38.681114, 44.383835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785385, 38.446247, 44.353226>,  <33.720818, 38.054802, 44.302208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785385, 38.446247, 44.353226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126026, -0.148620, 0.980831,
		0.978806, -0.142251, -0.147320,
		0.161419, 0.978610, 0.127543,
		33.833813, 38.739830, 44.391487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328911, 38.053223, 44.700436>,  <33.720818, 38.054802, 44.302208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328911, 38.053223, 44.700436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163059, 38.412605, 44.758213>,  <34.063549, 38.628235, 44.792881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163059, 38.412605, 44.758213>,  <34.328911, 38.053223, 44.700436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163059, 38.412605, 44.758213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127504, -0.099806, 0.986804,
		0.901015, 0.427572, -0.073174,
		-0.414626, 0.898455, 0.144444,
		34.038670, 38.682140, 44.801548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721882, 38.319122, 45.142014>,  <34.328911, 38.053223, 44.700436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721882, 38.319122, 45.142014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410957, 38.563190, 45.203297>,  <34.224403, 38.709633, 45.240067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410957, 38.563190, 45.203297>,  <34.721882, 38.319122, 45.142014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410957, 38.563190, 45.203297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112002, -0.105418, 0.988100,
		0.619065, 0.785222, 0.013602,
		-0.777312, 0.610175, 0.153207,
		34.177765, 38.746243, 45.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993900, 38.806049, 45.640560>,  <34.721882, 38.319122, 45.142014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993900, 38.806049, 45.640560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595821, 38.766987, 45.643127>,  <34.356972, 38.743549, 45.644669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.595821, 38.766987, 45.643127>,  <34.993900, 38.806049, 45.640560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595821, 38.766987, 45.643127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033319, -0.276408, 0.960463,
		-0.092020, 0.956066, 0.278335,
		-0.995200, -0.097656, 0.006420,
		34.297260, 38.737690, 45.645054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681614, 38.937958, 45.684532>,  <34.993900, 38.806049, 45.640560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681614, 38.937958, 45.684532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951881, 38.645134, 45.719296>,  <36.114044, 38.469440, 45.740154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951881, 38.645134, 45.719296>,  <35.681614, 38.937958, 45.684532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951881, 38.645134, 45.719296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335427, 0.200301, -0.920526,
		0.656473, 0.651127, 0.380891,
		0.675672, -0.732061, 0.086913,
		36.154583, 38.425514, 45.745369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442326, 39.173172, 45.442192>,  <35.681614, 38.937958, 45.684532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442326, 39.173172, 45.442192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429008, 38.774632, 45.410740>,  <36.421017, 38.535507, 45.391869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.429008, 38.774632, 45.410740>,  <36.442326, 39.173172, 45.442192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429008, 38.774632, 45.410740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432710, 0.056548, -0.899758,
		0.900918, -0.063978, 0.429247,
		-0.033291, -0.996348, -0.078629,
		36.419022, 38.475727, 45.387150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117420, 38.928082, 45.244816>,  <36.442326, 39.173172, 45.442192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117420, 38.928082, 45.244816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860729, 38.644688, 45.127354>,  <36.706715, 38.474651, 45.056877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.860729, 38.644688, 45.127354>,  <37.117420, 38.928082, 45.244816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860729, 38.644688, 45.127354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440626, -0.027200, -0.897278,
		0.627719, -0.705203, 0.329632,
		-0.641730, -0.708483, -0.293657,
		36.668209, 38.432144, 45.039257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410610, 38.634441, 44.781143>,  <37.117420, 38.928082, 45.244816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410610, 38.634441, 44.781143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085468, 38.430347, 44.668766>,  <36.890385, 38.307892, 44.601341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.085468, 38.430347, 44.668766>,  <37.410610, 38.634441, 44.781143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085468, 38.430347, 44.668766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465427, -0.278967, -0.839973,
		0.350210, -0.813534, 0.464237,
		-0.812853, -0.510236, -0.280943,
		36.841614, 38.277275, 44.584484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667675, 37.985966, 44.594250>,  <37.410610, 38.634441, 44.781143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667675, 37.985966, 44.594250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311718, 38.038086, 44.419384>,  <37.098145, 38.069359, 44.314465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.311718, 38.038086, 44.419384>,  <37.667675, 37.985966, 44.594250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311718, 38.038086, 44.419384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430416, -0.077596, -0.899289,
		-0.151105, -0.988433, 0.012966,
		-0.889893, 0.130306, -0.437162,
		37.044750, 38.077175, 44.288235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616165, 37.395142, 44.095932>,  <37.667675, 37.985966, 44.594250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616165, 37.395142, 44.095932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 37.665421, 43.945213>,  <37.210655, 37.827587, 43.854782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.362720, 37.665421, 43.945213>,  <37.616165, 37.395142, 44.095932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362720, 37.665421, 43.945213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396017, -0.135121, -0.908247,
		-0.664611, -0.724692, -0.181973,
		-0.633611, 0.675695, -0.376793,
		37.172638, 37.868130, 43.832176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292278, 37.083729, 43.518772>,  <37.616165, 37.395142, 44.095932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292278, 37.083729, 43.518772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 37.476433, 43.474689>,  <37.193123, 37.712055, 43.448238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.230305, 37.476433, 43.474689>,  <37.292278, 37.083729, 43.518772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230305, 37.476433, 43.474689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345697, -0.050630, -0.936979,
		-0.925468, -0.183265, -0.331547,
		-0.154930, 0.981759, -0.110211,
		37.183826, 37.770962, 43.441628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887314, 37.131149, 42.831722>,  <37.292278, 37.083729, 43.518772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887314, 37.131149, 42.831722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039822, 37.494808, 42.898754>,  <37.131325, 37.713005, 42.938972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.039822, 37.494808, 42.898754>,  <36.887314, 37.131149, 42.831722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039822, 37.494808, 42.898754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162468, 0.112553, -0.980273,
		-0.910075, 0.400976, -0.104794,
		0.381271, 0.909148, 0.167578,
		37.154202, 37.767551, 42.949028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696312, 37.529442, 42.336514>,  <36.887314, 37.131149, 42.831722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696312, 37.529442, 42.336514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012726, 37.740238, 42.460800>,  <37.202576, 37.866714, 42.535374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012726, 37.740238, 42.460800>,  <36.696312, 37.529442, 42.336514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012726, 37.740238, 42.460800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344079, 0.036710, -0.938223,
		-0.505838, 0.849080, -0.152286,
		0.791036, 0.526987, 0.310720,
		37.250038, 37.898335, 42.554016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724365, 38.197327, 41.875847>,  <36.696312, 37.529442, 42.336514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724365, 38.197327, 41.875847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092083, 38.165394, 42.030006>,  <37.312714, 38.146233, 42.122501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092083, 38.165394, 42.030006>,  <36.724365, 38.197327, 41.875847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092083, 38.165394, 42.030006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393330, 0.151439, -0.906839,
		0.014031, 0.985237, 0.170618,
		0.919290, -0.079833, 0.385398,
		37.367870, 38.141445, 42.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063148, 38.677567, 41.686115>,  <36.724365, 38.197327, 41.875847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063148, 38.677567, 41.686115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347450, 38.406399, 41.761227>,  <37.518032, 38.243698, 41.806293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347450, 38.406399, 41.761227>,  <37.063148, 38.677567, 41.686115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347450, 38.406399, 41.761227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468212, 0.256697, -0.845508,
		0.524982, 0.688866, 0.499857,
		0.710754, -0.677916, 0.187774,
		37.560677, 38.203026, 41.817558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512226, 38.934399, 41.217365>,  <37.063148, 38.677567, 41.686115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512226, 38.934399, 41.217365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.668995, 38.582077, 41.323624>,  <37.763058, 38.370682, 41.387379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.668995, 38.582077, 41.323624>,  <37.512226, 38.934399, 41.217365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668995, 38.582077, 41.323624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507670, -0.033748, -0.860890,
		0.767245, 0.472268, 0.433934,
		0.391926, -0.880809, 0.265650,
		37.786572, 38.317833, 41.403320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192520, 38.988194, 41.022362>,  <37.512226, 38.934399, 41.217365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192520, 38.988194, 41.022362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104824, 38.599388, 41.056103>,  <38.052208, 38.366104, 41.076347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104824, 38.599388, 41.056103>,  <38.192520, 38.988194, 41.022362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104824, 38.599388, 41.056103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520027, -0.189572, -0.832847,
		0.825533, -0.138727, 0.547037,
		-0.219242, -0.972017, 0.084356,
		38.039051, 38.307781, 41.081409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845497, 38.638542, 40.736538>,  <38.192520, 38.988194, 41.022362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845497, 38.638542, 40.736538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548920, 38.370167, 40.740456>,  <38.370972, 38.209141, 40.742805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.548920, 38.370167, 40.740456>,  <38.845497, 38.638542, 40.736538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548920, 38.370167, 40.740456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335308, -0.383115, -0.860692,
		0.581227, -0.634872, 0.509031,
		-0.741447, -0.670940, 0.009799,
		38.326485, 38.168884, 40.743397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.168844, 39.284409, 28.760509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828875, 39.087318, 28.685839>,  <26.624893, 38.969063, 28.641037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.828875, 39.087318, 28.685839>,  <27.168844, 39.284409, 28.760509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.828875, 39.087318, 28.685839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007782, -0.365986, 0.930588,
		-0.526847, 0.789477, 0.314895,
		-0.849925, -0.492728, -0.186675,
		26.573896, 38.939499, 28.629837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623032, 39.522591, 29.287348>,  <27.168844, 39.284409, 28.760509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623032, 39.522591, 29.287348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.529631, 39.158691, 29.150036>,  <26.473591, 38.940353, 29.067648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.529631, 39.158691, 29.150036>,  <26.623032, 39.522591, 29.287348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529631, 39.158691, 29.150036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113610, -0.325096, 0.938832,
		-0.965696, 0.258218, -0.027446,
		-0.233501, -0.909745, -0.343280,
		26.459579, 38.885769, 29.047052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145838, 39.200005, 29.793356>,  <26.623032, 39.522591, 29.287348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145838, 39.200005, 29.793356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.279360, 38.881554, 29.591463>,  <26.359472, 38.690483, 29.470327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.279360, 38.881554, 29.591463>,  <26.145838, 39.200005, 29.793356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279360, 38.881554, 29.591463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063908, -0.553325, 0.830511,
		-0.940474, -0.244971, -0.235580,
		0.333803, -0.796129, -0.504732,
		26.379501, 38.642715, 29.440044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658571, 38.685665, 29.980858>,  <26.145838, 39.200005, 29.793356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658571, 38.685665, 29.980858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.005245, 38.523224, 29.864975>,  <26.213249, 38.425758, 29.795444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.005245, 38.523224, 29.864975>,  <25.658571, 38.685665, 29.980858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005245, 38.523224, 29.864975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000116, -0.580913, 0.813965,
		-0.498851, -0.705420, -0.503518,
		0.866688, -0.406106, -0.289707,
		26.265251, 38.401390, 29.778063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548328, 37.958008, 30.144033>,  <25.658571, 38.685665, 29.980858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548328, 37.958008, 30.144033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944704, 38.009304, 30.128092>,  <26.182529, 38.040081, 30.118526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944704, 38.009304, 30.128092>,  <25.548328, 37.958008, 30.144033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944704, 38.009304, 30.128092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117304, -0.682102, 0.721787,
		0.065382, -0.719924, -0.690966,
		0.990941, 0.128245, -0.039853,
		26.241987, 38.047779, 30.116137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714802, 37.379063, 30.438242>,  <25.548328, 37.958008, 30.144033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714802, 37.379063, 30.438242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063734, 37.573624, 30.418425>,  <26.273094, 37.690361, 30.406534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.063734, 37.573624, 30.418425>,  <25.714802, 37.379063, 30.438242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063734, 37.573624, 30.418425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312830, -0.477404, 0.821111,
		0.375737, -0.731778, -0.568614,
		0.872330, 0.486401, -0.049544,
		26.325434, 37.719543, 30.403561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273674, 36.866943, 30.439938>,  <25.714802, 37.379063, 30.438242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273674, 36.866943, 30.439938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391701, 37.218910, 30.588900>,  <26.462517, 37.430088, 30.678276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391701, 37.218910, 30.588900>,  <26.273674, 36.866943, 30.439938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391701, 37.218910, 30.588900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231903, -0.444057, 0.865468,
		0.926906, -0.169011, -0.335082,
		0.295069, 0.879914, 0.372405,
		26.480221, 37.482883, 30.700621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992395, 36.756001, 30.581818>,  <26.273674, 36.866943, 30.439938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992395, 36.756001, 30.581818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877832, 37.076462, 30.792006>,  <26.809095, 37.268738, 30.918118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877832, 37.076462, 30.792006>,  <26.992395, 36.756001, 30.581818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877832, 37.076462, 30.792006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401173, -0.397775, 0.825128,
		0.870076, 0.447126, -0.207477,
		-0.286407, 0.801157, 0.525469,
		26.791910, 37.316811, 30.949646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503117, 36.958576, 30.995514>,  <26.992395, 36.756001, 30.581818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503117, 36.958576, 30.995514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212626, 37.143547, 31.198986>,  <27.038330, 37.254528, 31.321070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212626, 37.143547, 31.198986>,  <27.503117, 36.958576, 30.995514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212626, 37.143547, 31.198986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389836, -0.332457, 0.858779,
		0.566234, 0.821972, 0.061170,
		-0.726228, 0.462423, 0.508682,
		26.994757, 37.282272, 31.351591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752508, 37.177155, 31.582094>,  <27.503117, 36.958576, 30.995514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752508, 37.177155, 31.582094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364040, 37.167332, 31.676947>,  <27.130960, 37.161438, 31.733858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364040, 37.167332, 31.676947>,  <27.752508, 37.177155, 31.582094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364040, 37.167332, 31.676947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226484, -0.405538, 0.885576,
		0.074420, 0.913748, 0.399406,
		-0.971168, -0.024554, 0.237129,
		27.072691, 37.159966, 31.748085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730911, 37.396408, 32.350483>,  <27.752508, 37.177155, 31.582094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730911, 37.396408, 32.350483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367275, 37.251373, 32.268425>,  <27.149094, 37.164352, 32.219189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.367275, 37.251373, 32.268425>,  <27.730911, 37.396408, 32.350483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367275, 37.251373, 32.268425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012246, -0.468968, 0.883130,
		-0.416419, 0.805358, 0.421895,
		-0.909091, -0.362585, -0.205150,
		27.094547, 37.142597, 32.206879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287479, 37.619076, 32.851788>,  <27.730911, 37.396408, 32.350483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287479, 37.619076, 32.851788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130209, 37.279243, 32.711147>,  <27.035847, 37.075344, 32.626762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.130209, 37.279243, 32.711147>,  <27.287479, 37.619076, 32.851788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130209, 37.279243, 32.711147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012635, -0.387356, 0.921844,
		-0.919377, 0.358004, 0.163033,
		-0.393175, -0.849582, -0.351602,
		27.012257, 37.024368, 32.605667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828663, 37.339050, 33.344109>,  <27.287479, 37.619076, 32.851788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828663, 37.339050, 33.344109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842155, 37.012497, 33.113499>,  <26.850252, 36.816566, 32.975132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.842155, 37.012497, 33.113499>,  <26.828663, 37.339050, 33.344109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842155, 37.012497, 33.113499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053657, -0.574545, 0.816713,
		-0.997990, -0.058485, 0.024423,
		0.033733, -0.816381, -0.576528,
		26.852276, 36.767582, 32.940540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309366, 36.771648, 33.749599>,  <26.828663, 37.339050, 33.344109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309366, 36.771648, 33.749599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584175, 36.605671, 33.510998>,  <26.749062, 36.506084, 33.367836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584175, 36.605671, 33.510998>,  <26.309366, 36.771648, 33.749599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584175, 36.605671, 33.510998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203880, -0.677866, 0.706350,
		-0.697446, -0.606896, -0.381112,
		0.687024, -0.414940, -0.596509,
		26.790283, 36.481190, 33.332047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164944, 36.136921, 33.785591>,  <26.309366, 36.771648, 33.749599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164944, 36.136921, 33.785591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539551, 36.128895, 33.645573>,  <26.764315, 36.124081, 33.561562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539551, 36.128895, 33.645573>,  <26.164944, 36.136921, 33.785591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539551, 36.128895, 33.645573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243045, -0.682437, 0.689354,
		-0.252720, -0.730669, -0.634236,
		0.936516, -0.020066, -0.350051,
		26.820505, 36.122875, 33.540558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356422, 35.475613, 33.677959>,  <26.164944, 36.136921, 33.785591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356422, 35.475613, 33.677959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704231, 35.668724, 33.719631>,  <26.912916, 35.784592, 33.744637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704231, 35.668724, 33.719631>,  <26.356422, 35.475613, 33.677959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704231, 35.668724, 33.719631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319652, -0.710903, 0.626451,
		0.376500, -0.511411, -0.772467,
		0.869523, 0.482779, 0.104182,
		26.965088, 35.813557, 33.750885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862774, 34.920170, 33.682377>,  <26.356422, 35.475613, 33.677959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862774, 34.920170, 33.682377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049330, 35.237907, 33.838066>,  <27.161263, 35.428551, 33.931480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049330, 35.237907, 33.838066>,  <26.862774, 34.920170, 33.682377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049330, 35.237907, 33.838066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413324, -0.584715, 0.698048,
		0.782078, -0.164685, -0.601026,
		0.466388, 0.794346, 0.389225,
		27.189245, 35.476212, 33.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423565, 34.603367, 34.087021>,  <26.862774, 34.920170, 33.682377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423565, 34.603367, 34.087021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460220, 34.973640, 34.233829>,  <27.482214, 35.195805, 34.321915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460220, 34.973640, 34.233829>,  <27.423565, 34.603367, 34.087021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460220, 34.973640, 34.233829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444850, -0.367804, 0.816596,
		0.890905, 0.088438, -0.445497,
		0.091637, 0.925689, 0.367020,
		27.487711, 35.251347, 34.343937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114105, 34.709633, 34.328529>,  <27.423565, 34.603367, 34.087021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114105, 34.709633, 34.328529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882730, 34.961124, 34.536415>,  <27.743906, 35.112019, 34.661148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882730, 34.961124, 34.536415>,  <28.114105, 34.709633, 34.328529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882730, 34.961124, 34.536415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427426, -0.309042, 0.849588,
		0.694779, 0.713574, -0.089975,
		-0.578437, 0.628733, 0.519716,
		27.709200, 35.149746, 34.692329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475250, 35.324890, 34.607201>,  <28.114105, 34.709633, 34.328529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475250, 35.324890, 34.607201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175280, 35.197006, 34.838852>,  <27.995296, 35.120277, 34.977844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175280, 35.197006, 34.838852>,  <28.475250, 35.324890, 34.607201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175280, 35.197006, 34.838852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652087, -0.209966, 0.728490,
		-0.111309, 0.923958, 0.365939,
		-0.749929, -0.319711, 0.579130,
		27.950300, 35.101093, 35.012592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791752, 35.339779, 33.823509>,  <28.475250, 35.324890, 34.607201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791752, 35.339779, 33.823509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183310, 35.366398, 33.746220>,  <29.418245, 35.382370, 33.699844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.183310, 35.366398, 33.746220>,  <28.791752, 35.339779, 33.823509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183310, 35.366398, 33.746220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195956, 0.574074, -0.795010,
		0.058015, 0.816094, 0.575000,
		0.978895, 0.066552, -0.193223,
		29.476978, 35.386364, 33.688251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821043, 35.919952, 33.375324>,  <28.791752, 35.339779, 33.823509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821043, 35.919952, 33.375324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203482, 35.825436, 33.305992>,  <29.432945, 35.768726, 33.264393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203482, 35.825436, 33.305992>,  <28.821043, 35.919952, 33.375324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203482, 35.825436, 33.305992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018640, 0.639301, -0.768730,
		0.292457, 0.731750, 0.615638,
		0.956097, -0.236296, -0.173329,
		29.490311, 35.754547, 33.253994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173199, 36.610653, 33.299213>,  <28.821043, 35.919952, 33.375324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173199, 36.610653, 33.299213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388397, 36.326283, 33.118046>,  <29.517517, 36.155659, 33.009346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.388397, 36.326283, 33.118046>,  <29.173199, 36.610653, 33.299213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388397, 36.326283, 33.118046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092978, 0.584078, -0.806355,
		0.837803, 0.391705, 0.380333,
		0.537997, -0.710929, -0.452922,
		29.549797, 36.113003, 32.982170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672483, 37.007416, 32.856529>,  <29.173199, 36.610653, 33.299213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672483, 37.007416, 32.856529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670010, 36.639095, 32.700531>,  <29.668526, 36.418102, 32.606934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.670010, 36.639095, 32.700531>,  <29.672483, 37.007416, 32.856529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670010, 36.639095, 32.700531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041058, 0.389437, -0.920138,
		0.999138, -0.021705, 0.035396,
		-0.006187, -0.920797, -0.389992,
		29.668154, 36.362858, 32.583534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172445, 37.024433, 32.362514>,  <29.672483, 37.007416, 32.856529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172445, 37.024433, 32.362514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906462, 36.740334, 32.270103>,  <29.746872, 36.569874, 32.214657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906462, 36.740334, 32.270103>,  <30.172445, 37.024433, 32.362514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906462, 36.740334, 32.270103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055947, 0.355828, -0.932875,
		0.744781, -0.607399, -0.276347,
		-0.664960, -0.710248, -0.231032,
		29.706974, 36.527260, 32.200794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342461, 36.902390, 31.681368>,  <30.172445, 37.024433, 32.362514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342461, 36.902390, 31.681368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004993, 36.692451, 31.726551>,  <29.802513, 36.566486, 31.753660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004993, 36.692451, 31.726551>,  <30.342461, 36.902390, 31.681368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004993, 36.692451, 31.726551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192021, 0.098519, -0.976433,
		0.501352, -0.845475, -0.183899,
		-0.843667, -0.524849, 0.112956,
		29.751894, 36.534996, 31.760439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458662, 36.308666, 31.276270>,  <30.342461, 36.902390, 31.681368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458662, 36.308666, 31.276270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068584, 36.381855, 31.326094>,  <29.834538, 36.425766, 31.355988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068584, 36.381855, 31.326094>,  <30.458662, 36.308666, 31.276270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068584, 36.381855, 31.326094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105168, 0.112155, -0.988110,
		-0.194764, -0.976700, -0.090130,
		-0.975196, 0.182969, 0.124561,
		29.776026, 36.436745, 31.363462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027626, 35.777103, 30.842962>,  <30.458662, 36.308666, 31.276270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027626, 35.777103, 30.842962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789427, 36.084610, 30.936239>,  <29.646507, 36.269115, 30.992207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789427, 36.084610, 30.936239>,  <30.027626, 35.777103, 30.842962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789427, 36.084610, 30.936239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333903, 0.027161, -0.942216,
		-0.730680, -0.638950, 0.240520,
		-0.595496, 0.768769, 0.233194,
		29.610779, 36.315239, 31.006197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391069, 35.582722, 30.498863>,  <30.027626, 35.777103, 30.842962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391069, 35.582722, 30.498863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378504, 35.975998, 30.570814>,  <29.370964, 36.211964, 30.613985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378504, 35.975998, 30.570814>,  <29.391069, 35.582722, 30.498863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378504, 35.975998, 30.570814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356314, 0.157127, -0.921060,
		-0.933838, -0.093028, 0.345388,
		-0.031414, 0.983187, 0.179878,
		29.369080, 36.270954, 30.624777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812468, 35.959400, 30.135031>,  <29.391069, 35.582722, 30.498863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812468, 35.959400, 30.135031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.038559, 36.276905, 30.224876>,  <29.174213, 36.467407, 30.278784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.038559, 36.276905, 30.224876>,  <28.812468, 35.959400, 30.135031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038559, 36.276905, 30.224876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215729, 0.405033, -0.888487,
		-0.796226, 0.453744, 0.400175,
		0.565230, 0.793766, 0.224613,
		29.208128, 36.515034, 30.292261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396650, 36.597061, 30.129597>,  <28.812468, 35.959400, 30.135031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396650, 36.597061, 30.129597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777384, 36.686058, 30.045202>,  <29.005823, 36.739456, 29.994566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777384, 36.686058, 30.045202>,  <28.396650, 36.597061, 30.129597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777384, 36.686058, 30.045202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282937, 0.372129, -0.884006,
		-0.118168, 0.901120, 0.417155,
		0.951831, 0.222490, -0.210986,
		29.062933, 36.752804, 29.981907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277203, 37.151310, 29.654099>,  <28.396650, 36.597061, 30.129597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277203, 37.151310, 29.654099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664547, 37.057335, 29.620447>,  <28.896954, 37.000950, 29.600256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664547, 37.057335, 29.620447>,  <28.277203, 37.151310, 29.654099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664547, 37.057335, 29.620447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002710, 0.347001, -0.937861,
		0.249534, 0.907961, 0.336659,
		0.968362, -0.234941, -0.084128,
		28.955055, 36.986855, 29.595209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559507, 37.587898, 29.228167>,  <28.277203, 37.151310, 29.654099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559507, 37.587898, 29.228167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861792, 37.326694, 29.208237>,  <29.043161, 37.169971, 29.196278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861792, 37.326694, 29.208237>,  <28.559507, 37.587898, 29.228167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861792, 37.326694, 29.208237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203377, 0.306319, -0.929949,
		0.622528, 0.692638, 0.364296,
		0.755709, -0.653009, -0.049826,
		29.088505, 37.130791, 29.193289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173033, 37.952747, 28.993765>,  <28.559507, 37.587898, 29.228167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173033, 37.952747, 28.993765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218796, 37.565319, 28.905418>,  <29.246254, 37.332863, 28.852411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218796, 37.565319, 28.905418>,  <29.173033, 37.952747, 28.993765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218796, 37.565319, 28.905418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002620, 0.222032, -0.975036,
		0.993431, 0.112128, 0.022864,
		0.114406, -0.968571, -0.220867,
		29.253117, 37.274750, 28.839159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789223, 37.937881, 28.574352>,  <29.173033, 37.952747, 28.993765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789223, 37.937881, 28.574352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612129, 37.589302, 28.489912>,  <29.505873, 37.380154, 28.439249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612129, 37.589302, 28.489912>,  <29.789223, 37.937881, 28.574352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612129, 37.589302, 28.489912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181519, 0.143446, -0.972869,
		0.878088, -0.469039, 0.094677,
		-0.442732, -0.871451, -0.211098,
		29.479309, 37.327866, 28.426582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224802, 37.516659, 28.102207>,  <29.789223, 37.937881, 28.574352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224802, 37.516659, 28.102207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852728, 37.373905, 28.067816>,  <29.629484, 37.288254, 28.047180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852728, 37.373905, 28.067816>,  <30.224802, 37.516659, 28.102207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852728, 37.373905, 28.067816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010182, 0.259208, -0.965768,
		0.366951, -0.897467, -0.244745,
		-0.930184, -0.356881, -0.085979,
		29.573671, 37.266842, 28.042023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208723, 37.221043, 27.463572>,  <30.224802, 37.516659, 28.102207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208723, 37.221043, 27.463572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818615, 37.254673, 27.545330>,  <29.584549, 37.274853, 27.594385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818615, 37.254673, 27.545330>,  <30.208723, 37.221043, 27.463572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818615, 37.254673, 27.545330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181003, 0.226838, -0.956965,
		-0.126824, -0.970297, -0.206010,
		-0.975271, 0.084078, 0.204395,
		29.526033, 37.279896, 27.606649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849552, 36.852230, 26.984280>,  <30.208723, 37.221043, 27.463572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849552, 36.852230, 26.984280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575106, 37.121719, 27.094074>,  <29.410439, 37.283413, 27.159950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575106, 37.121719, 27.094074>,  <29.849552, 36.852230, 26.984280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575106, 37.121719, 27.094074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159651, 0.228666, -0.960325,
		-0.709759, -0.702715, -0.049331,
		-0.686115, 0.673724, 0.274487,
		29.369270, 37.323837, 27.176420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297861, 36.791943, 26.391901>,  <29.849552, 36.852230, 26.984280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297861, 36.791943, 26.391901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240234, 37.141300, 26.577986>,  <29.205658, 37.350914, 26.689636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240234, 37.141300, 26.577986>,  <29.297861, 36.791943, 26.391901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240234, 37.141300, 26.577986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428804, 0.368589, -0.824784,
		-0.891836, -0.318309, 0.321415,
		-0.144066, 0.873397, 0.465213,
		29.197014, 37.403320, 26.717550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668991, 36.945156, 26.196663>,  <29.297861, 36.791943, 26.391901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668991, 36.945156, 26.196663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816874, 37.293079, 26.327356>,  <28.905603, 37.501835, 26.405773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816874, 37.293079, 26.327356>,  <28.668991, 36.945156, 26.196663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816874, 37.293079, 26.327356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470033, 0.478413, -0.741748,
		-0.801491, 0.120651, 0.585710,
		0.369704, 0.869807, 0.326734,
		28.927784, 37.554020, 26.425377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110514, 37.433464, 26.348129>,  <28.668991, 36.945156, 26.196663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110514, 37.433464, 26.348129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443645, 37.636314, 26.259390>,  <28.643524, 37.758026, 26.206146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.443645, 37.636314, 26.259390>,  <28.110514, 37.433464, 26.348129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443645, 37.636314, 26.259390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502801, 0.525474, -0.686344,
		-0.231489, 0.683153, 0.692614,
		0.832829, 0.507128, -0.221849,
		28.693495, 37.788452, 26.192835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146912, 38.259876, 26.385448>,  <28.110514, 37.433464, 26.348129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146912, 38.259876, 26.385448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390991, 38.148388, 26.088808>,  <28.537439, 38.081493, 25.910824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.390991, 38.148388, 26.088808>,  <28.146912, 38.259876, 26.385448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390991, 38.148388, 26.088808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504242, 0.585359, -0.634898,
		0.611062, 0.761360, 0.216642,
		0.610199, -0.278722, -0.741600,
		28.574051, 38.064770, 25.866327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.054192, 33.820927, 46.712482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663818, 33.813080, 46.625603>,  <37.429596, 33.808372, 46.573475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663818, 33.813080, 46.625603>,  <38.054192, 33.820927, 46.712482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663818, 33.813080, 46.625603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214361, 0.269573, 0.938818,
		0.040137, 0.962780, -0.267289,
		-0.975929, -0.019615, -0.217203,
		37.371040, 33.807194, 46.560440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761440, 34.465034, 46.920990>,  <38.054192, 33.820927, 46.712482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761440, 34.465034, 46.920990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480087, 34.180927, 46.932083>,  <37.311275, 34.010464, 46.938740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480087, 34.180927, 46.932083>,  <37.761440, 34.465034, 46.920990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480087, 34.180927, 46.932083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263699, 0.296976, 0.917752,
		-0.660088, 0.638217, -0.396185,
		-0.703382, -0.710271, 0.027733,
		37.269073, 33.967846, 46.940403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157921, 34.826118, 47.066620>,  <37.761440, 34.465034, 46.920990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157921, 34.826118, 47.066620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103985, 34.447414, 47.183559>,  <37.071625, 34.220192, 47.253723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.103985, 34.447414, 47.183559>,  <37.157921, 34.826118, 47.066620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103985, 34.447414, 47.183559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211482, 0.315742, 0.924977,
		-0.968037, 0.062894, -0.242795,
		-0.134836, -0.946758, 0.292348,
		37.063534, 34.163387, 47.271263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481411, 34.703571, 47.280487>,  <37.157921, 34.826118, 47.066620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481411, 34.703571, 47.280487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669617, 34.398937, 47.458744>,  <36.782539, 34.216156, 47.565701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.669617, 34.398937, 47.458744>,  <36.481411, 34.703571, 47.280487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669617, 34.398937, 47.458744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551853, 0.140107, 0.822088,
		-0.688531, -0.632734, -0.354363,
		0.470514, -0.761589, 0.445644,
		36.810772, 34.170460, 47.592438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015465, 34.427490, 47.708698>,  <36.481411, 34.703571, 47.280487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015465, 34.427490, 47.708698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348835, 34.250290, 47.840851>,  <36.548859, 34.143970, 47.920143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348835, 34.250290, 47.840851>,  <36.015465, 34.427490, 47.708698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348835, 34.250290, 47.840851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307444, 0.125109, 0.943306,
		-0.459216, -0.887751, -0.031928,
		0.833426, -0.442997, 0.330386,
		36.598862, 34.117390, 47.939968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784512, 33.920460, 48.241547>,  <36.015465, 34.427490, 47.708698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784512, 33.920460, 48.241547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166161, 33.999474, 48.331547>,  <36.395149, 34.046883, 48.385548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166161, 33.999474, 48.331547>,  <35.784512, 33.920460, 48.241547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166161, 33.999474, 48.331547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253893, 0.135477, 0.957697,
		0.158712, -0.970886, 0.179419,
		0.954122, 0.197552, 0.224999,
		36.452396, 34.058735, 48.399048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919731, 33.497227, 48.875923>,  <35.784512, 33.920460, 48.241547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919731, 33.497227, 48.875923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205360, 33.777214, 48.871147>,  <36.376740, 33.945206, 48.868282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205360, 33.777214, 48.871147>,  <35.919731, 33.497227, 48.875923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205360, 33.777214, 48.871147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131866, 0.151233, 0.979663,
		0.687542, -0.697975, 0.200293,
		0.714071, 0.699971, -0.011940,
		36.419582, 33.987206, 48.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271099, 33.378826, 49.447083>,  <35.919731, 33.497227, 48.875923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271099, 33.378826, 49.447083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400143, 33.746967, 49.358658>,  <36.477570, 33.967854, 49.305603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.400143, 33.746967, 49.358658>,  <36.271099, 33.378826, 49.447083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400143, 33.746967, 49.358658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129313, 0.188500, 0.973523,
		0.937657, -0.342655, -0.058201,
		0.322612, 0.920356, -0.221058,
		36.496925, 34.023075, 49.292339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974968, 33.492142, 49.747707>,  <36.271099, 33.378826, 49.447083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974968, 33.492142, 49.747707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763950, 33.830189, 49.713123>,  <36.637341, 34.033016, 49.692371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763950, 33.830189, 49.713123>,  <36.974968, 33.492142, 49.747707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763950, 33.830189, 49.713123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006130, 0.105557, 0.994395,
		0.849505, 0.524057, -0.060866,
		-0.527544, 0.845116, -0.086459,
		36.605686, 34.083725, 49.687187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060165, 33.914322, 50.394875>,  <36.974968, 33.492142, 49.747707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060165, 33.914322, 50.394875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791260, 34.168926, 50.243664>,  <36.629917, 34.321690, 50.152935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791260, 34.168926, 50.243664>,  <37.060165, 33.914322, 50.394875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791260, 34.168926, 50.243664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247198, 0.288324, 0.925074,
		0.697817, 0.715347, -0.036486,
		-0.672269, 0.636513, -0.378029,
		36.589581, 34.359879, 50.130257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112801, 34.563625, 50.737652>,  <37.060165, 33.914322, 50.394875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112801, 34.563625, 50.737652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740486, 34.517799, 50.598789>,  <36.517097, 34.490303, 50.515472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740486, 34.517799, 50.598789>,  <37.112801, 34.563625, 50.737652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740486, 34.517799, 50.598789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364335, 0.212554, 0.906687,
		-0.030088, 0.970410, -0.239583,
		-0.930782, -0.114569, -0.347159,
		36.461250, 34.483429, 50.494640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687611, 35.182156, 51.065758>,  <37.112801, 34.563625, 50.737652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687611, 35.182156, 51.065758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471748, 34.862019, 50.961277>,  <36.342232, 34.669937, 50.898586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.471748, 34.862019, 50.961277>,  <36.687611, 35.182156, 51.065758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471748, 34.862019, 50.961277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585897, 0.134230, 0.799191,
		-0.604562, 0.584328, -0.541355,
		-0.539656, -0.800339, -0.261206,
		36.309853, 34.621918, 50.882915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824017, 36.027222, 51.061272>,  <36.687611, 35.182156, 51.065758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824017, 36.027222, 51.061272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215164, 36.097599, 51.015999>,  <37.449852, 36.139824, 50.988834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215164, 36.097599, 51.015999>,  <36.824017, 36.027222, 51.061272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215164, 36.097599, 51.015999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182055, 0.449177, -0.874698,
		-0.103055, 0.875948, 0.471269,
		0.977873, 0.175939, -0.113180,
		37.508526, 36.150379, 50.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030476, 36.702286, 51.280827>,  <36.824017, 36.027222, 51.061272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030476, 36.702286, 51.280827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772945, 36.431969, 51.424381>,  <36.618427, 36.269779, 51.510513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772945, 36.431969, 51.424381>,  <37.030476, 36.702286, 51.280827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772945, 36.431969, 51.424381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096808, 0.393313, 0.914294,
		-0.759027, 0.623385, -0.187801,
		-0.643822, -0.675793, 0.358884,
		36.579800, 36.229229, 51.532047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784092, 37.454063, 51.152893>,  <37.030476, 36.702286, 51.280827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784092, 37.454063, 51.152893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866623, 37.840546, 51.214710>,  <36.916142, 38.072433, 51.251801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866623, 37.840546, 51.214710>,  <36.784092, 37.454063, 51.152893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866623, 37.840546, 51.214710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167041, 0.190405, -0.967390,
		-0.964120, 0.173781, 0.200680,
		0.206324, 0.966202, 0.154545,
		36.928520, 38.130405, 51.261074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276634, 37.772652, 50.700191>,  <36.784092, 37.454063, 51.152893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276634, 37.772652, 50.700191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554810, 38.053833, 50.759819>,  <36.721714, 38.222542, 50.795597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554810, 38.053833, 50.759819>,  <36.276634, 37.772652, 50.700191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554810, 38.053833, 50.759819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173709, 0.365757, -0.914356,
		-0.697271, 0.609986, 0.376472,
		0.695442, 0.702950, 0.149071,
		36.763443, 38.264717, 50.804539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943501, 38.404125, 50.459152>,  <36.276634, 37.772652, 50.700191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943501, 38.404125, 50.459152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334438, 38.470463, 50.511749>,  <36.569000, 38.510265, 50.543308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334438, 38.470463, 50.511749>,  <35.943501, 38.404125, 50.459152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334438, 38.470463, 50.511749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037855, 0.474269, -0.879566,
		-0.208235, 0.864618, 0.457246,
		0.977346, 0.165848, 0.131489,
		36.627644, 38.520218, 50.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010117, 39.086826, 50.358608>,  <35.943501, 38.404125, 50.459152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010117, 39.086826, 50.358608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358791, 38.904728, 50.286041>,  <36.567997, 38.795467, 50.242500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.358791, 38.904728, 50.286041>,  <36.010117, 39.086826, 50.358608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358791, 38.904728, 50.286041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068496, 0.253379, -0.964939,
		0.485252, 0.853552, 0.189685,
		0.871687, -0.455245, -0.181418,
		36.620296, 38.768154, 50.231617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432026, 39.558628, 49.987244>,  <36.010117, 39.086826, 50.358608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432026, 39.558628, 49.987244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554527, 39.184269, 49.917606>,  <36.628029, 38.959652, 49.875824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.554527, 39.184269, 49.917606>,  <36.432026, 39.558628, 49.987244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554527, 39.184269, 49.917606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051291, 0.166391, -0.984725,
		0.950568, 0.310502, 0.002954,
		0.306251, -0.935897, -0.174092,
		36.646404, 38.903500, 49.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914593, 39.642235, 49.414169>,  <36.432026, 39.558628, 49.987244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914593, 39.642235, 49.414169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801033, 39.259239, 49.434639>,  <36.732899, 39.029442, 49.446918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801033, 39.259239, 49.434639>,  <36.914593, 39.642235, 49.414169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801033, 39.259239, 49.434639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041963, -0.065724, -0.996955,
		0.957936, -0.280884, 0.058838,
		-0.283896, -0.957488, 0.051172,
		36.715862, 38.971992, 49.449989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442928, 39.235321, 49.144218>,  <36.914593, 39.642235, 49.414169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442928, 39.235321, 49.144218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112564, 39.010017, 49.134399>,  <36.914345, 38.874836, 49.128506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.112564, 39.010017, 49.134399>,  <37.442928, 39.235321, 49.144218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112564, 39.010017, 49.134399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121153, -0.134786, -0.983440,
		0.550625, -0.815211, 0.179562,
		-0.825914, -0.563261, -0.024549,
		36.864788, 38.841038, 49.127033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720947, 38.683372, 48.717075>,  <37.442928, 39.235321, 49.144218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720947, 38.683372, 48.717075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324539, 38.637005, 48.690426>,  <37.086693, 38.609184, 48.674438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324539, 38.637005, 48.690426>,  <37.720947, 38.683372, 48.717075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324539, 38.637005, 48.690426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085327, -0.164730, -0.982641,
		0.102934, -0.979503, 0.173142,
		-0.991021, -0.115921, -0.066622,
		37.027233, 38.602230, 48.670441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602448, 38.062740, 48.257877>,  <37.720947, 38.683372, 48.717075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602448, 38.062740, 48.257877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248646, 38.249268, 48.252163>,  <37.036366, 38.361183, 48.248734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248646, 38.249268, 48.252163>,  <37.602448, 38.062740, 48.257877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248646, 38.249268, 48.252163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150858, -0.314858, -0.937073,
		-0.441477, -0.826685, 0.348840,
		-0.884500, 0.466322, -0.014291,
		36.983295, 38.389164, 48.247875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158421, 37.614605, 47.939041>,  <37.602448, 38.062740, 48.257877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158421, 37.614605, 47.939041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956425, 37.956848, 47.893585>,  <36.835228, 38.162193, 47.866310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956425, 37.956848, 47.893585>,  <37.158421, 37.614605, 47.939041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956425, 37.956848, 47.893585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219695, -0.254744, -0.941722,
		-0.834697, -0.450593, 0.316616,
		-0.504989, 0.855612, -0.113641,
		36.804928, 38.213531, 47.859493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496487, 37.457283, 47.582165>,  <37.158421, 37.614605, 47.939041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496487, 37.457283, 47.582165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541908, 37.848545, 47.512520>,  <36.569160, 38.083302, 47.470734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541908, 37.848545, 47.512520>,  <36.496487, 37.457283, 47.582165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541908, 37.848545, 47.512520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415693, -0.112393, -0.902534,
		-0.902388, 0.174868, 0.393849,
		0.113559, 0.978156, -0.174114,
		36.575977, 38.141991, 47.460285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874832, 37.596062, 47.253284>,  <36.496487, 37.457283, 47.582165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874832, 37.596062, 47.253284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128654, 37.895123, 47.174946>,  <36.280949, 38.074558, 47.127941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128654, 37.895123, 47.174946>,  <35.874832, 37.596062, 47.253284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128654, 37.895123, 47.174946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298230, 0.003093, -0.954489,
		-0.713016, 0.664088, 0.224934,
		0.634560, 0.747648, -0.195845,
		36.319023, 38.119415, 47.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501492, 37.999104, 46.721172>,  <35.874832, 37.596062, 47.253284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501492, 37.999104, 46.721172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882492, 38.111103, 46.673264>,  <36.111092, 38.178303, 46.644520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882492, 38.111103, 46.673264>,  <35.501492, 37.999104, 46.721172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882492, 38.111103, 46.673264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132212, 0.025909, -0.990883,
		-0.274343, 0.959651, 0.061697,
		0.952500, 0.279998, -0.119769,
		36.168243, 38.195103, 46.637333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463306, 38.584587, 46.264828>,  <35.501492, 37.999104, 46.721172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463306, 38.584587, 46.264828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830582, 38.426537, 46.253490>,  <36.050949, 38.331707, 46.246689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.830582, 38.426537, 46.253490>,  <35.463306, 38.584587, 46.264828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830582, 38.426537, 46.253490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010491, 0.095789, -0.995346,
		0.396001, 0.913620, 0.092098,
		0.918190, -0.395124, -0.028347,
		36.106037, 38.307999, 46.244987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847340, 39.038353, 46.363541>,  <35.463306, 38.584587, 46.264828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847340, 39.038353, 46.363541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522160, 38.854092, 46.221039>,  <34.327053, 38.743534, 46.135536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522160, 38.854092, 46.221039>,  <34.847340, 39.038353, 46.363541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522160, 38.854092, 46.221039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270656, -0.242793, 0.931556,
		-0.515619, 0.853728, 0.072699,
		-0.812947, -0.460651, -0.356255,
		34.278275, 38.715897, 46.114162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426029, 39.267670, 46.793976>,  <34.847340, 39.038353, 46.363541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426029, 39.267670, 46.793976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235939, 38.954834, 46.632732>,  <34.121883, 38.767132, 46.535988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235939, 38.954834, 46.632732>,  <34.426029, 39.267670, 46.793976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235939, 38.954834, 46.632732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347916, -0.253776, 0.902525,
		-0.808153, 0.569154, -0.151499,
		-0.475229, -0.782088, -0.403108,
		34.093369, 38.720207, 46.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733299, 39.322361, 46.949162>,  <34.426029, 39.267670, 46.793976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733299, 39.322361, 46.949162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805031, 38.937771, 46.865829>,  <33.848068, 38.707016, 46.815830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805031, 38.937771, 46.865829>,  <33.733299, 39.322361, 46.949162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805031, 38.937771, 46.865829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419421, -0.266275, 0.867861,
		-0.889903, -0.068253, -0.451015,
		0.179328, -0.961478, -0.208332,
		33.858829, 38.649326, 46.803329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155361, 38.911350, 47.212357>,  <33.733299, 39.322361, 46.949162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155361, 38.911350, 47.212357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430733, 38.626175, 47.158997>,  <33.595955, 38.455070, 47.126980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430733, 38.626175, 47.158997>,  <33.155361, 38.911350, 47.212357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430733, 38.626175, 47.158997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188472, -0.353436, 0.916276,
		-0.700393, -0.605644, -0.377683,
		0.688424, -0.712936, -0.133397,
		33.637260, 38.412292, 47.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846394, 38.237747, 47.366512>,  <33.155361, 38.911350, 47.212357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846394, 38.237747, 47.366512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240677, 38.183689, 47.406727>,  <33.477249, 38.151253, 47.430855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.240677, 38.183689, 47.406727>,  <32.846394, 38.237747, 47.366512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240677, 38.183689, 47.406727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127209, -0.206073, 0.970233,
		-0.110402, -0.969160, -0.220320,
		0.985712, -0.135142, 0.100535,
		33.536392, 38.143147, 47.436886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947628, 37.610382, 47.696098>,  <32.846394, 38.237747, 47.366512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947628, 37.610382, 47.696098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307430, 37.774422, 47.756386>,  <33.523312, 37.872845, 47.792557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307430, 37.774422, 47.756386>,  <32.947628, 37.610382, 47.696098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307430, 37.774422, 47.756386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002601, -0.349975, 0.936755,
		0.436910, -0.842221, -0.315870,
		0.899501, 0.410099, 0.150717,
		33.577282, 37.897453, 47.801601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244152, 37.165531, 48.182468>,  <32.947628, 37.610382, 47.696098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244152, 37.165531, 48.182468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470509, 37.494656, 48.203457>,  <33.606323, 37.692131, 48.216049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470509, 37.494656, 48.203457>,  <33.244152, 37.165531, 48.182468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470509, 37.494656, 48.203457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092120, -0.126337, 0.987701,
		0.819316, -0.554100, -0.147290,
		0.565893, 0.822807, 0.052467,
		33.640278, 37.741497, 48.219196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381470, 36.447124, 48.172119>,  <33.244152, 37.165531, 48.182468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381470, 36.447124, 48.172119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982281, 36.438507, 48.196049>,  <32.742767, 36.433334, 48.210407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982281, 36.438507, 48.196049>,  <33.381470, 36.447124, 48.172119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982281, 36.438507, 48.196049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063228, 0.237097, -0.969426,
		0.006703, -0.971247, -0.237980,
		-0.997977, -0.021545, 0.059821,
		32.682888, 36.432045, 48.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196712, 36.171387, 47.530869>,  <33.381470, 36.447124, 48.172119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196712, 36.171387, 47.530869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855133, 36.335934, 47.658337>,  <32.650185, 36.434662, 47.734818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.855133, 36.335934, 47.658337>,  <33.196712, 36.171387, 47.530869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855133, 36.335934, 47.658337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243543, 0.225225, -0.943377,
		-0.459849, -0.883203, -0.092144,
		-0.853947, 0.411370, 0.318668,
		32.598949, 36.459343, 47.753937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646492, 35.762234, 47.093441>,  <33.196712, 36.171387, 47.530869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646492, 35.762234, 47.093441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522034, 36.112747, 47.240582>,  <32.447361, 36.323055, 47.328865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522034, 36.112747, 47.240582>,  <32.646492, 35.762234, 47.093441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522034, 36.112747, 47.240582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330147, 0.263297, -0.906465,
		-0.891175, -0.403486, 0.207380,
		-0.311143, 0.876284, 0.367853,
		32.428692, 36.375633, 47.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033913, 35.819466, 46.786358>,  <32.646492, 35.762234, 47.093441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033913, 35.819466, 46.786358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060452, 36.199383, 46.908665>,  <32.076374, 36.427334, 46.982048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060452, 36.199383, 46.908665>,  <32.033913, 35.819466, 46.786358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060452, 36.199383, 46.908665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221884, 0.312813, -0.923534,
		-0.972813, -0.006569, 0.231498,
		0.066349, 0.949792, 0.305766,
		32.080357, 36.484322, 47.000393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399580, 36.147663, 46.666817>,  <32.033913, 35.819466, 46.786358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399580, 36.147663, 46.666817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667545, 36.442131, 46.705341>,  <31.828323, 36.618813, 46.728455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667545, 36.442131, 46.705341>,  <31.399580, 36.147663, 46.666817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667545, 36.442131, 46.705341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189510, 0.294974, -0.936524,
		-0.717847, 0.609137, 0.337117,
		0.669912, 0.736168, 0.096309,
		31.868519, 36.662983, 46.734234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105042, 36.894924, 46.558125>,  <31.399580, 36.147663, 46.666817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105042, 36.894924, 46.558125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500767, 36.929901, 46.511452>,  <31.738201, 36.950890, 46.483448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.500767, 36.929901, 46.511452>,  <31.105042, 36.894924, 46.558125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500767, 36.929901, 46.511452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141771, 0.389787, -0.909927,
		-0.034089, 0.916744, 0.398019,
		0.989312, 0.087446, -0.116680,
		31.797560, 36.956135, 46.476448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147821, 37.619392, 46.297501>,  <31.105042, 36.894924, 46.558125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147821, 37.619392, 46.297501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415739, 37.349545, 46.173393>,  <31.576488, 37.187637, 46.098927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415739, 37.349545, 46.173393>,  <31.147821, 37.619392, 46.297501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415739, 37.349545, 46.173393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122016, 0.312174, -0.942157,
		0.732455, 0.668907, 0.126777,
		0.669792, -0.674619, -0.310270,
		31.616676, 37.147160, 46.080311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.566219, 33.351009, 50.793228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943241, 33.343727, 50.659809>,  <34.169453, 33.339355, 50.579758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.943241, 33.343727, 50.659809>,  <33.566219, 33.351009, 50.793228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943241, 33.343727, 50.659809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333074, -0.127446, -0.934248,
		-0.025498, 0.991678, -0.126190,
		0.942556, -0.018209, -0.333552,
		34.226009, 33.338264, 50.559742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482090, 33.420475, 50.040295>,  <33.566219, 33.351009, 50.793228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482090, 33.420475, 50.040295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853195, 33.271267, 50.044693>,  <34.075859, 33.181744, 50.047333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853195, 33.271267, 50.044693>,  <33.482090, 33.420475, 50.040295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853195, 33.271267, 50.044693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186816, -0.489740, -0.851619,
		0.323053, 0.788043, -0.524047,
		0.927759, -0.373019, 0.010993,
		34.131523, 33.159363, 50.047993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785358, 33.635883, 49.359177>,  <33.482090, 33.420475, 50.040295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785358, 33.635883, 49.359177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961201, 33.321110, 49.532375>,  <34.066708, 33.132248, 49.636295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.961201, 33.321110, 49.532375>,  <33.785358, 33.635883, 49.359177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961201, 33.321110, 49.532375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010305, -0.486463, -0.873640,
		0.898130, 0.379599, -0.221963,
		0.439610, -0.786930, 0.432995,
		34.093082, 33.085030, 49.662273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299377, 33.518761, 48.904709>,  <33.785358, 33.635883, 49.359177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299377, 33.518761, 48.904709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271973, 33.165974, 49.091232>,  <34.255531, 32.954304, 49.203148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271973, 33.165974, 49.091232>,  <34.299377, 33.518761, 48.904709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271973, 33.165974, 49.091232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045949, -0.469702, -0.881629,
		0.996592, -0.038975, 0.072705,
		-0.068511, -0.881965, 0.466310,
		34.251419, 32.901382, 49.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802189, 33.144802, 48.570770>,  <34.299377, 33.518761, 48.904709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802189, 33.144802, 48.570770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.588894, 32.866768, 48.763649>,  <34.460915, 32.699947, 48.879375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.588894, 32.866768, 48.763649>,  <34.802189, 33.144802, 48.570770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588894, 32.866768, 48.763649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128995, -0.630140, -0.765692,
		0.836070, -0.346098, 0.425679,
		-0.533242, -0.695083, 0.482196,
		34.428921, 32.658241, 48.908306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219387, 32.553085, 48.556686>,  <34.802189, 33.144802, 48.570770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219387, 32.553085, 48.556686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.842583, 32.428387, 48.606365>,  <34.616501, 32.353565, 48.636173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.842583, 32.428387, 48.606365>,  <35.219387, 32.553085, 48.556686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842583, 32.428387, 48.606365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122062, -0.663060, -0.738547,
		0.312590, -0.680561, 0.662664,
		-0.942013, -0.311749, 0.124195,
		34.559978, 32.334862, 48.643623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275791, 31.816236, 48.416336>,  <35.219387, 32.553085, 48.556686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275791, 31.816236, 48.416336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.890202, 31.917612, 48.384052>,  <34.658848, 31.978437, 48.364681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.890202, 31.917612, 48.384052>,  <35.275791, 31.816236, 48.416336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890202, 31.917612, 48.384052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068909, -0.531058, -0.844529,
		-0.256898, -0.808546, 0.529393,
		-0.963979, 0.253438, -0.080711,
		34.601009, 31.993643, 48.359840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880627, 31.281569, 48.194427>,  <35.275791, 31.816236, 48.416336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880627, 31.281569, 48.194427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653587, 31.586481, 48.070004>,  <34.517365, 31.769428, 47.995350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.653587, 31.586481, 48.070004>,  <34.880627, 31.281569, 48.194427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653587, 31.586481, 48.070004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050465, -0.409321, -0.910994,
		-0.821757, -0.501382, 0.270799,
		-0.567600, 0.762281, -0.311060,
		34.483307, 31.815165, 47.976685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340984, 30.938236, 47.820511>,  <34.880627, 31.281569, 48.194427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340984, 30.938236, 47.820511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328537, 31.314730, 47.685986>,  <34.321068, 31.540627, 47.605270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.328537, 31.314730, 47.685986>,  <34.340984, 30.938236, 47.820511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328537, 31.314730, 47.685986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008112, -0.336703, -0.941576,
		-0.999483, -0.026574, 0.018113,
		-0.031120, 0.941236, -0.336313,
		34.319202, 31.597101, 47.585091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793144, 30.975080, 47.281563>,  <34.340984, 30.938236, 47.820511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793144, 30.975080, 47.281563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.031116, 31.290133, 47.217442>,  <34.173901, 31.479164, 47.178970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.031116, 31.290133, 47.217442>,  <33.793144, 30.975080, 47.281563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031116, 31.290133, 47.217442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114916, -0.114036, -0.986808,
		-0.795518, 0.605505, 0.022667,
		0.594933, 0.787629, -0.160300,
		34.209595, 31.526421, 47.169353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438286, 31.317108, 46.818485>,  <33.793144, 30.975080, 47.281563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438286, 31.317108, 46.818485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812706, 31.454826, 46.789463>,  <34.037357, 31.537457, 46.772049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812706, 31.454826, 46.789463>,  <33.438286, 31.317108, 46.818485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812706, 31.454826, 46.789463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068959, -0.022699, -0.997361,
		-0.345034, 0.938587, 0.002494,
		0.936054, 0.344295, -0.072556,
		34.093521, 31.558115, 46.767696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423481, 31.788683, 46.194717>,  <33.438286, 31.317108, 46.818485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423481, 31.788683, 46.194717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801006, 31.673225, 46.259102>,  <34.027519, 31.603951, 46.297733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801006, 31.673225, 46.259102>,  <33.423481, 31.788683, 46.194717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801006, 31.673225, 46.259102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187854, 0.067849, -0.979851,
		0.271908, 0.955029, 0.118259,
		0.943810, -0.288644, 0.160957,
		34.084148, 31.586632, 46.307388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280972, 32.536442, 46.256275>,  <33.423481, 31.788683, 46.194717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280972, 32.536442, 46.256275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972065, 32.758472, 46.132671>,  <32.786720, 32.891689, 46.058510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.972065, 32.758472, 46.132671>,  <33.280972, 32.536442, 46.256275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972065, 32.758472, 46.132671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414436, -0.071518, 0.907264,
		0.481502, 0.828718, 0.285275,
		-0.772269, 0.555078, -0.309014,
		32.740383, 32.924995, 46.039967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327629, 33.236790, 46.592350>,  <33.280972, 32.536442, 46.256275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327629, 33.236790, 46.592350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952190, 33.137016, 46.496998>,  <32.726929, 33.077152, 46.439789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.952190, 33.137016, 46.496998>,  <33.327629, 33.236790, 46.592350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952190, 33.137016, 46.496998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304826, 0.275841, 0.911588,
		-0.161628, 0.928274, -0.334937,
		-0.938593, -0.249436, -0.238378,
		32.670612, 33.062187, 46.425484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912647, 33.738071, 46.918018>,  <33.327629, 33.236790, 46.592350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912647, 33.738071, 46.918018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629986, 33.483719, 46.793888>,  <32.460388, 33.331108, 46.719410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629986, 33.483719, 46.793888>,  <32.912647, 33.738071, 46.918018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629986, 33.483719, 46.793888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588211, 0.284169, 0.757137,
		-0.393263, 0.717569, -0.574839,
		-0.706649, -0.635880, -0.310328,
		32.417992, 33.292953, 46.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324249, 34.111710, 46.806862>,  <32.912647, 33.738071, 46.918018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324249, 34.111710, 46.806862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198929, 33.737499, 46.872150>,  <32.123737, 33.512974, 46.911324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198929, 33.737499, 46.872150>,  <32.324249, 34.111710, 46.806862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198929, 33.737499, 46.872150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595753, 0.327465, 0.733379,
		-0.739541, 0.132531, -0.659936,
		-0.313301, -0.935522, 0.163218,
		32.104939, 33.456844, 46.921116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568760, 34.078049, 46.844372>,  <32.324249, 34.111710, 46.806862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568760, 34.078049, 46.844372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694221, 33.761623, 47.054451>,  <31.769499, 33.571766, 47.180500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.694221, 33.761623, 47.054451>,  <31.568760, 34.078049, 46.844372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694221, 33.761623, 47.054451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733389, 0.149499, 0.663167,
		-0.603126, -0.593181, -0.533268,
		0.313655, -0.791067, 0.525199,
		31.788319, 33.524303, 47.212009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842604, 33.752014, 47.168835>,  <31.568760, 34.078049, 46.844372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842604, 33.752014, 47.168835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.122259, 33.546780, 47.368011>,  <31.290052, 33.423637, 47.487518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.122259, 33.546780, 47.368011>,  <30.842604, 33.752014, 47.168835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122259, 33.546780, 47.368011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654630, -0.179303, 0.734378,
		-0.287523, -0.839395, -0.461244,
		0.699135, -0.513094, 0.497939,
		31.332001, 33.392853, 47.517395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513794, 33.238850, 47.564144>,  <30.842604, 33.752014, 47.168835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513794, 33.238850, 47.564144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866848, 33.276630, 47.748333>,  <31.078680, 33.299301, 47.858845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.866848, 33.276630, 47.748333>,  <30.513794, 33.238850, 47.564144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866848, 33.276630, 47.748333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429321, -0.236903, 0.871527,
		0.191409, -0.966931, -0.168547,
		0.882636, 0.094457, 0.460469,
		31.131639, 33.304966, 47.886475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532822, 32.671810, 47.981201>,  <30.513794, 33.238850, 47.564144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532822, 32.671810, 47.981201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.813717, 32.886841, 48.167908>,  <30.982254, 33.015862, 48.279930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.813717, 32.886841, 48.167908>,  <30.532822, 32.671810, 47.981201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813717, 32.886841, 48.167908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334049, -0.330168, 0.882837,
		0.628705, -0.775884, -0.052279,
		0.702240, 0.537580, 0.466762,
		31.024389, 33.048115, 48.307938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564837, 32.304756, 48.601574>,  <30.532822, 32.671810, 47.981201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564837, 32.304756, 48.601574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720737, 32.665585, 48.675724>,  <30.814278, 32.882080, 48.720215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720737, 32.665585, 48.675724>,  <30.564837, 32.304756, 48.601574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720737, 32.665585, 48.675724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476230, 0.025133, 0.878961,
		0.788224, -0.430861, 0.439388,
		0.389753, 0.902068, 0.185379,
		30.837664, 32.936207, 48.731339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778952, 32.337070, 49.314056>,  <30.564837, 32.304756, 48.601574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778952, 32.337070, 49.314056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729950, 32.717442, 49.200405>,  <30.700548, 32.945663, 49.132214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.729950, 32.717442, 49.200405>,  <30.778952, 32.337070, 49.314056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729950, 32.717442, 49.200405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375175, 0.220666, 0.900306,
		0.918823, 0.216889, 0.329732,
		-0.122506, 0.950929, -0.284124,
		30.693197, 33.002720, 49.115170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089554, 32.704937, 49.900417>,  <30.778952, 32.337070, 49.314056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089554, 32.704937, 49.900417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838778, 32.939613, 49.695385>,  <30.688313, 33.080418, 49.572365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838778, 32.939613, 49.695385>,  <31.089554, 32.704937, 49.900417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838778, 32.939613, 49.695385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455463, 0.257773, 0.852119,
		0.632061, 0.767689, 0.105609,
		-0.626939, 0.586692, -0.512582,
		30.650696, 33.115620, 49.541611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178928, 33.292469, 50.310486>,  <31.089554, 32.704937, 49.900417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178928, 33.292469, 50.310486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.836279, 33.356510, 50.114296>,  <30.630690, 33.394936, 49.996582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.836279, 33.356510, 50.114296>,  <31.178928, 33.292469, 50.310486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836279, 33.356510, 50.114296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430923, 0.300769, 0.850790,
		0.283730, 0.940163, -0.188656,
		-0.856623, 0.160098, -0.490475,
		30.579292, 33.404541, 49.967152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940287, 33.848324, 50.670589>,  <31.178928, 33.292469, 50.310486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940287, 33.848324, 50.670589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.598877, 33.746662, 50.488644>,  <30.394032, 33.685665, 50.379478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.598877, 33.746662, 50.488644>,  <30.940287, 33.848324, 50.670589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598877, 33.746662, 50.488644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509220, 0.221904, 0.831537,
		-0.110402, 0.941363, -0.318821,
		-0.853526, -0.254154, -0.454862,
		30.342819, 33.670418, 50.352184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586689, 34.199226, 50.941650>,  <30.940287, 33.848324, 50.670589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586689, 34.199226, 50.941650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.563675, 34.582565, 51.053555>,  <31.549866, 34.812569, 51.120697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.563675, 34.582565, 51.053555>,  <31.586689, 34.199226, 50.941650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563675, 34.582565, 51.053555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035657, 0.282020, -0.958746,
		-0.997707, -0.045186, -0.050398,
		-0.057535, 0.958344, 0.279762,
		31.546415, 34.870068, 51.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403204, 34.587418, 50.320095>,  <31.586689, 34.199226, 50.941650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403204, 34.587418, 50.320095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514175, 34.889587, 50.557537>,  <31.580757, 35.070889, 50.700001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514175, 34.889587, 50.557537>,  <31.403204, 34.587418, 50.320095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514175, 34.889587, 50.557537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294001, 0.521462, -0.801025,
		-0.914657, 0.396746, -0.077428,
		0.277428, 0.755427, 0.593602,
		31.597404, 35.116215, 50.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085342, 35.151249, 50.152626>,  <31.403204, 34.587418, 50.320095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085342, 35.151249, 50.152626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417145, 35.286514, 50.330418>,  <31.616226, 35.367672, 50.437092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.417145, 35.286514, 50.330418>,  <31.085342, 35.151249, 50.152626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417145, 35.286514, 50.330418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239915, 0.502928, -0.830363,
		-0.504338, 0.795431, 0.336053,
		0.829508, 0.338160, 0.444482,
		31.665997, 35.387962, 50.463764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053974, 35.882191, 50.020134>,  <31.085342, 35.151249, 50.152626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053974, 35.882191, 50.020134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.439896, 35.812435, 50.098869>,  <31.671448, 35.770580, 50.146111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.439896, 35.812435, 50.098869>,  <31.053974, 35.882191, 50.020134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439896, 35.812435, 50.098869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258903, 0.498625, -0.827250,
		0.046115, 0.849095, 0.526224,
		0.964802, -0.174390, 0.196839,
		31.729336, 35.760117, 50.157921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379753, 36.554066, 49.902756>,  <31.053974, 35.882191, 50.020134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379753, 36.554066, 49.902756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678936, 36.291302, 49.864754>,  <31.858446, 36.133644, 49.841953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678936, 36.291302, 49.864754>,  <31.379753, 36.554066, 49.902756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678936, 36.291302, 49.864754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319825, 0.482108, -0.815649,
		0.581612, 0.579686, 0.570694,
		0.747957, -0.656914, -0.095001,
		31.903322, 36.094227, 49.836254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024750, 36.829922, 49.614090>,  <31.379753, 36.554066, 49.902756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024750, 36.829922, 49.614090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067406, 36.456173, 49.478107>,  <32.092999, 36.231922, 49.396519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.067406, 36.456173, 49.478107>,  <32.024750, 36.829922, 49.614090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067406, 36.456173, 49.478107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349138, 0.355324, -0.867092,
		0.930984, -0.026228, 0.364116,
		0.106637, -0.934375, -0.339958,
		32.099396, 36.175861, 49.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631344, 36.896717, 49.292789>,  <32.024750, 36.829922, 49.614090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631344, 36.896717, 49.292789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.474327, 36.560261, 49.143982>,  <32.380119, 36.358387, 49.054699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.474327, 36.560261, 49.143982>,  <32.631344, 36.896717, 49.292789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474327, 36.560261, 49.143982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112821, 0.357394, -0.927114,
		0.912789, -0.405901, -0.045394,
		-0.392540, -0.841138, -0.372020,
		32.356564, 36.307919, 49.032375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178139, 36.698017, 48.840862>,  <32.631344, 36.896717, 49.292789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178139, 36.698017, 48.840862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852715, 36.493237, 48.730572>,  <32.657459, 36.370369, 48.664398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.852715, 36.493237, 48.730572>,  <33.178139, 36.698017, 48.840862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852715, 36.493237, 48.730572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151685, 0.270914, -0.950577,
		0.561351, -0.815174, -0.142749,
		-0.813558, -0.511954, -0.275728,
		32.608646, 36.339649, 48.647854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755688, 36.995930, 48.665775>,  <33.178139, 36.698017, 48.840862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755688, 36.995930, 48.665775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789825, 37.394215, 48.651493>,  <33.810307, 37.633186, 48.642921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789825, 37.394215, 48.651493>,  <33.755688, 36.995930, 48.665775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789825, 37.394215, 48.651493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299900, 0.008507, 0.953933,
		0.950146, -0.092121, -0.297887,
		0.085343, 0.995712, -0.035710,
		33.815430, 37.692928, 48.640781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444630, 37.053566, 48.973076>,  <33.755688, 36.995930, 48.665775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444630, 37.053566, 48.973076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238880, 37.395195, 49.003990>,  <34.115429, 37.600174, 49.022541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.238880, 37.395195, 49.003990>,  <34.444630, 37.053566, 48.973076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238880, 37.395195, 49.003990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281648, 0.083119, 0.955911,
		0.809995, 0.513466, -0.283303,
		-0.514376, 0.854075, 0.077290,
		34.084568, 37.651417, 49.027176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913261, 37.554901, 49.139996>,  <34.444630, 37.053566, 48.973076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913261, 37.554901, 49.139996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557613, 37.710011, 49.237236>,  <34.344223, 37.803078, 49.295582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557613, 37.710011, 49.237236>,  <34.913261, 37.554901, 49.139996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557613, 37.710011, 49.237236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310159, 0.119920, 0.943091,
		0.336553, 0.913921, -0.226895,
		-0.889120, 0.387773, 0.243101,
		34.290878, 37.826344, 49.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054188, 38.149746, 49.572601>,  <34.913261, 37.554901, 49.139996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054188, 38.149746, 49.572601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675484, 38.084675, 49.683723>,  <34.448261, 38.045631, 49.750397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675484, 38.084675, 49.683723>,  <35.054188, 38.149746, 49.572601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675484, 38.084675, 49.683723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242845, 0.205616, 0.948023,
		-0.211340, 0.965018, -0.155165,
		-0.946764, -0.162674, 0.277805,
		34.391453, 38.035873, 49.767063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747364, 38.835720, 49.903690>,  <35.054188, 38.149746, 49.572601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747364, 38.835720, 49.903690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.540070, 38.523930, 50.044460>,  <34.415695, 38.336857, 50.128922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.540070, 38.523930, 50.044460>,  <34.747364, 38.835720, 49.903690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540070, 38.523930, 50.044460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132108, 0.479515, 0.867533,
		-0.844974, 0.403092, -0.351476,
		-0.518233, -0.779475, 0.351926,
		34.384598, 38.290089, 50.150040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261196, 39.156956, 50.392948>,  <34.747364, 38.835720, 49.903690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261196, 39.156956, 50.392948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237785, 38.766548, 50.476810>,  <34.223740, 38.532303, 50.527126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.237785, 38.766548, 50.476810>,  <34.261196, 39.156956, 50.392948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237785, 38.766548, 50.476810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062642, 0.213189, 0.975001,
		-0.996319, 0.043929, -0.073616,
		-0.058525, -0.976023, 0.209653,
		34.220226, 38.473740, 50.539707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782013, 39.244473, 50.970608>,  <34.261196, 39.156956, 50.392948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782013, 39.244473, 50.970608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967876, 38.891289, 50.943863>,  <34.079395, 38.679379, 50.927814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.967876, 38.891289, 50.943863>,  <33.782013, 39.244473, 50.970608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967876, 38.891289, 50.943863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107918, -0.018475, 0.993988,
		-0.878887, -0.469085, 0.086703,
		0.464663, -0.882959, -0.066861,
		34.107277, 38.626400, 50.923805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418884, 38.766544, 51.448845>,  <33.782013, 39.244473, 50.970608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418884, 38.766544, 51.448845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784744, 38.621857, 51.376656>,  <34.004261, 38.535042, 51.333344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784744, 38.621857, 51.376656>,  <33.418884, 38.766544, 51.448845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784744, 38.621857, 51.376656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107747, -0.212137, 0.971282,
		-0.389620, -0.907829, -0.155056,
		0.914651, -0.361723, -0.180469,
		34.059139, 38.513340, 51.322514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465553, 38.141403, 51.783016>,  <33.418884, 38.766544, 51.448845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465553, 38.141403, 51.783016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854710, 38.211876, 51.723087>,  <34.088203, 38.254158, 51.687130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.854710, 38.211876, 51.723087>,  <33.465553, 38.141403, 51.783016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854710, 38.211876, 51.723087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187759, -0.223434, 0.956464,
		0.135037, -0.958664, -0.250456,
		0.972888, 0.176183, -0.149826,
		34.146576, 38.264732, 51.678139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.464798, 37.462051, 35.948772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844376, 37.576740, 36.001369>,  <36.072124, 37.645554, 36.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844376, 37.576740, 36.001369>,  <35.464798, 37.462051, 35.948772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844376, 37.576740, 36.001369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185588, 0.170425, 0.967736,
		0.255065, -0.942732, 0.214937,
		0.948946, 0.286725, 0.131491,
		36.129059, 37.662758, 36.040817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916142, 37.096924, 36.463615>,  <35.464798, 37.462051, 35.948772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916142, 37.096924, 36.463615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044121, 37.475166, 36.440060>,  <36.120907, 37.702110, 36.425926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044121, 37.475166, 36.440060>,  <35.916142, 37.096924, 36.463615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044121, 37.475166, 36.440060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314444, 0.164614, 0.934894,
		0.893732, -0.280602, 0.350008,
		0.319949, 0.945603, -0.058887,
		36.140106, 37.758846, 36.422394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368679, 37.158440, 36.987980>,  <35.916142, 37.096924, 36.463615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368679, 37.158440, 36.987980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277786, 37.534691, 36.887119>,  <36.223251, 37.760441, 36.826603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277786, 37.534691, 36.887119>,  <36.368679, 37.158440, 36.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277786, 37.534691, 36.887119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160826, 0.219122, 0.962351,
		0.960468, 0.259234, 0.101485,
		-0.227236, 0.940629, -0.252152,
		36.209614, 37.816879, 36.811474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539043, 37.400501, 37.543167>,  <36.368679, 37.158440, 36.987980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539043, 37.400501, 37.543167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350258, 37.708832, 37.372017>,  <36.236984, 37.893829, 37.269325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350258, 37.708832, 37.372017>,  <36.539043, 37.400501, 37.543167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350258, 37.708832, 37.372017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059982, 0.456129, 0.887890,
		0.879574, 0.444719, -0.169042,
		-0.471966, 0.770825, -0.427874,
		36.208668, 37.940079, 37.243656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882851, 38.008228, 37.793720>,  <36.539043, 37.400501, 37.543167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882851, 38.008228, 37.793720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513020, 38.114731, 37.684711>,  <36.291122, 38.178631, 37.619308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513020, 38.114731, 37.684711>,  <36.882851, 38.008228, 37.793720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513020, 38.114731, 37.684711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155719, 0.388730, 0.908097,
		0.347719, 0.882043, -0.317950,
		-0.924577, 0.266252, -0.272520,
		36.235645, 38.194607, 37.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753963, 38.633774, 38.112873>,  <36.882851, 38.008228, 37.793720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753963, 38.633774, 38.112873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387028, 38.490475, 38.043411>,  <36.166866, 38.404495, 38.001736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387028, 38.490475, 38.043411>,  <36.753963, 38.633774, 38.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387028, 38.490475, 38.043411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269573, 0.237965, 0.933115,
		-0.292960, 0.902792, -0.314867,
		-0.917336, -0.358245, -0.173654,
		36.111828, 38.382999, 37.991314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201717, 39.192097, 38.205956>,  <36.753963, 38.633774, 38.112873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201717, 39.192097, 38.205956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019482, 38.842342, 38.272762>,  <35.910141, 38.632492, 38.312847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019482, 38.842342, 38.272762>,  <36.201717, 39.192097, 38.205956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019482, 38.842342, 38.272762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497288, 0.405600, 0.766937,
		-0.738336, 0.266357, -0.619608,
		-0.455592, -0.874381, 0.167014,
		35.882805, 38.580029, 38.322865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643524, 39.462631, 38.554398>,  <36.201717, 39.192097, 38.205956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643524, 39.462631, 38.554398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585182, 39.073872, 38.628304>,  <35.550175, 38.840614, 38.672649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585182, 39.073872, 38.628304>,  <35.643524, 39.462631, 38.554398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585182, 39.073872, 38.628304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585002, 0.235346, 0.776135,
		-0.797808, 0.005118, -0.602890,
		-0.145860, -0.971898, 0.184766,
		35.541424, 38.782303, 38.683735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936710, 39.351051, 38.625599>,  <35.643524, 39.462631, 38.554398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936710, 39.351051, 38.625599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096996, 39.032688, 38.807125>,  <35.193169, 38.841667, 38.916042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096996, 39.032688, 38.807125>,  <34.936710, 39.351051, 38.625599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096996, 39.032688, 38.807125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578316, 0.164452, 0.799065,
		-0.710618, -0.582648, -0.394391,
		0.400715, -0.795913, 0.453818,
		35.217213, 38.793915, 38.943272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408916, 39.056023, 38.955524>,  <34.936710, 39.351051, 38.625599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408916, 39.056023, 38.955524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726387, 38.913975, 39.153095>,  <34.916870, 38.828747, 39.271637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726387, 38.913975, 39.153095>,  <34.408916, 39.056023, 38.955524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726387, 38.913975, 39.153095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473668, 0.148723, 0.868055,
		-0.381720, -0.922916, -0.050169,
		0.793680, -0.355117, 0.493927,
		34.964493, 38.807438, 39.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159946, 38.621868, 39.576466>,  <34.408916, 39.056023, 38.955524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159946, 38.621868, 39.576466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539845, 38.718632, 39.655918>,  <34.767784, 38.776691, 39.703590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539845, 38.718632, 39.655918>,  <34.159946, 38.621868, 39.576466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539845, 38.718632, 39.655918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232445, 0.120093, 0.965167,
		0.209631, -0.962838, 0.170289,
		0.949749, 0.241912, 0.198631,
		34.824768, 38.791206, 39.715508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341106, 38.295162, 40.104198>,  <34.159946, 38.621868, 39.576466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341106, 38.295162, 40.104198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605110, 38.594181, 40.134041>,  <34.763512, 38.773590, 40.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605110, 38.594181, 40.134041>,  <34.341106, 38.295162, 40.104198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605110, 38.594181, 40.134041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244719, 0.120042, 0.962134,
		0.710281, -0.653275, 0.262167,
		0.660010, 0.747543, 0.074606,
		34.803112, 38.818443, 40.156422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170261, 37.572784, 40.306610>,  <34.341106, 38.295162, 40.104198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170261, 37.572784, 40.306610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776989, 37.558964, 40.234867>,  <33.541027, 37.550671, 40.191822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776989, 37.558964, 40.234867>,  <34.170261, 37.572784, 40.306610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776989, 37.558964, 40.234867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177902, 0.041393, -0.983177,
		0.041393, -0.998545, -0.034550,
		0.983177, 0.034550, 0.179357,
		33.482037, 37.548599, 40.181061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017002, 37.026104, 39.759480>,  <34.170261, 37.572784, 40.306610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017002, 37.026104, 39.759480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715710, 37.289204, 39.759045>,  <33.534935, 37.447063, 39.758785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715710, 37.289204, 39.759045>,  <34.017002, 37.026104, 39.759480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715710, 37.289204, 39.759045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084828, 0.095509, -0.991808,
		-0.652261, -0.747154, -0.127736,
		-0.753233, 0.657753, -0.001083,
		33.489738, 37.486530, 39.758720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644928, 36.778656, 39.178432>,  <34.017002, 37.026104, 39.759480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644928, 36.778656, 39.178432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502907, 37.147968, 39.237083>,  <33.417694, 37.369556, 39.272274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502907, 37.147968, 39.237083>,  <33.644928, 36.778656, 39.178432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502907, 37.147968, 39.237083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164932, 0.092522, -0.981956,
		-0.920183, -0.372827, 0.119428,
		-0.355050, 0.923276, 0.146628,
		33.396393, 37.424950, 39.281071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966560, 36.782978, 38.763588>,  <33.644928, 36.778656, 39.178432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966560, 36.782978, 38.763588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046986, 37.165279, 38.849483>,  <33.095242, 37.394661, 38.901020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046986, 37.165279, 38.849483>,  <32.966560, 36.782978, 38.763588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046986, 37.165279, 38.849483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168775, 0.249737, -0.953492,
		-0.964930, 0.155467, 0.211519,
		0.201060, 0.955752, 0.214740,
		33.107304, 37.452003, 38.913906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383663, 37.079597, 38.600540>,  <32.966560, 36.782978, 38.763588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383663, 37.079597, 38.600540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692951, 37.332993, 38.589031>,  <32.878525, 37.485031, 38.582127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692951, 37.332993, 38.589031>,  <32.383663, 37.079597, 38.600540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692951, 37.332993, 38.589031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173202, 0.167323, -0.970569,
		-0.610029, 0.755444, 0.239098,
		0.773218, 0.633488, -0.028772,
		32.924915, 37.523041, 38.580399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126896, 37.733036, 38.170521>,  <32.383663, 37.079597, 38.600540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126896, 37.733036, 38.170521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525177, 37.698429, 38.183708>,  <32.764145, 37.677666, 38.191620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525177, 37.698429, 38.183708>,  <32.126896, 37.733036, 38.170521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525177, 37.698429, 38.183708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037263, 0.048526, -0.998127,
		0.084760, 0.995067, 0.051541,
		0.995704, -0.086522, 0.032966,
		32.823887, 37.672474, 38.193600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480129, 38.294788, 37.746555>,  <32.126896, 37.733036, 38.170521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480129, 38.294788, 37.746555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772434, 38.023415, 37.776772>,  <32.947819, 37.860588, 37.794903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772434, 38.023415, 37.776772>,  <32.480129, 38.294788, 37.746555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772434, 38.023415, 37.776772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229119, 0.139528, -0.963347,
		0.643032, 0.721286, 0.257405,
		0.730763, -0.678439, 0.075539,
		32.991665, 37.819881, 37.799435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016678, 38.526363, 37.230778>,  <32.480129, 38.294788, 37.746555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016678, 38.526363, 37.230778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095711, 38.141953, 37.308113>,  <33.143131, 37.911304, 37.354515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095711, 38.141953, 37.308113>,  <33.016678, 38.526363, 37.230778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095711, 38.141953, 37.308113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055559, -0.185932, -0.980990,
		0.978710, 0.204571, 0.016657,
		0.197585, -0.961031, 0.193340,
		33.154987, 37.853642, 37.366116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366104, 38.251968, 36.604622>,  <33.016678, 38.526363, 37.230778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366104, 38.251968, 36.604622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237473, 37.913109, 36.773827>,  <33.160294, 37.709793, 36.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237473, 37.913109, 36.773827>,  <33.366104, 38.251968, 36.604622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237473, 37.913109, 36.773827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178992, -0.384297, -0.905692,
		0.929812, -0.366963, -0.028052,
		-0.321575, -0.847145, 0.423008,
		33.140999, 37.658966, 36.900730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681812, 37.778122, 36.186214>,  <33.366104, 38.251968, 36.604622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681812, 37.778122, 36.186214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371750, 37.583263, 36.347122>,  <33.185711, 37.466347, 36.443668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371750, 37.583263, 36.347122>,  <33.681812, 37.778122, 36.186214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371750, 37.583263, 36.347122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079133, -0.556855, -0.826831,
		0.626796, -0.672755, 0.393100,
		-0.775155, -0.487148, 0.402272,
		33.139202, 37.437119, 36.467804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809792, 37.098656, 35.996517>,  <33.681812, 37.778122, 36.186214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809792, 37.098656, 35.996517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427582, 37.122284, 36.112087>,  <33.198254, 37.136459, 36.181427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427582, 37.122284, 36.112087>,  <33.809792, 37.098656, 35.996517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427582, 37.122284, 36.112087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277852, -0.508604, -0.814936,
		0.098810, -0.858972, 0.502398,
		-0.955529, 0.059068, 0.288922,
		33.140923, 37.140003, 36.198765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508411, 36.385113, 35.989552>,  <33.809792, 37.098656, 35.996517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508411, 36.385113, 35.989552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202347, 36.640808, 35.958817>,  <33.018707, 36.794224, 35.940376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202347, 36.640808, 35.958817>,  <33.508411, 36.385113, 35.989552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202347, 36.640808, 35.958817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411562, -0.577394, -0.705148,
		-0.495119, -0.507931, 0.704886,
		-0.765163, 0.639236, -0.076834,
		32.972797, 36.832581, 35.935768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921371, 35.991230, 36.026165>,  <33.508411, 36.385113, 35.989552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921371, 35.991230, 36.026165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773346, 36.323883, 35.860542>,  <32.684532, 36.523476, 35.761169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773346, 36.323883, 35.860542>,  <32.921371, 35.991230, 36.026165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773346, 36.323883, 35.860542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379360, -0.542116, -0.749798,
		-0.848022, -0.120396, 0.516104,
		-0.370061, 0.831634, -0.414053,
		32.662327, 36.573372, 35.736328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298759, 35.807945, 35.630718>,  <32.921371, 35.991230, 36.026165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298759, 35.807945, 35.630718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401775, 36.159618, 35.470364>,  <32.463585, 36.370621, 35.374149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401775, 36.159618, 35.470364>,  <32.298759, 35.807945, 35.630718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401775, 36.159618, 35.470364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353950, -0.300208, -0.885773,
		-0.899106, 0.370017, 0.233871,
		0.257541, 0.879183, -0.400887,
		32.479038, 36.423374, 35.350098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108288, 35.785114, 34.898869>,  <32.298759, 35.807945, 35.630718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108288, 35.785114, 34.898869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421413, 35.859127, 35.136513>,  <32.609287, 35.903534, 35.279099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421413, 35.859127, 35.136513>,  <32.108288, 35.785114, 34.898869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421413, 35.859127, 35.136513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007665, -0.951826, 0.306541,
		0.622214, -0.244517, -0.743681,
		0.782809, 0.185034, 0.594114,
		32.656258, 35.914639, 35.314747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780678, 35.294525, 35.409813>,  <32.108288, 35.785114, 34.898869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780678, 35.294525, 35.409813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639765, 34.944702, 35.276516>,  <31.555218, 34.734810, 35.196537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639765, 34.944702, 35.276516>,  <31.780678, 35.294525, 35.409813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639765, 34.944702, 35.276516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894627, -0.210109, -0.394330,
		0.274846, -0.437044, 0.856418,
		-0.352281, -0.874555, -0.333244,
		31.534081, 34.682335, 35.176544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148182, 34.627388, 35.703888>,  <31.780678, 35.294525, 35.409813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148182, 34.627388, 35.703888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999678, 34.560757, 35.338501>,  <31.910574, 34.520779, 35.119270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999678, 34.560757, 35.338501>,  <32.148182, 34.627388, 35.703888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999678, 34.560757, 35.338501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927288, -0.117332, -0.355485,
		-0.047963, -0.979023, 0.198026,
		-0.371262, -0.166577, -0.913464,
		31.888298, 34.510784, 35.064461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951546, 34.755470, 35.874584>,  <32.148182, 34.627388, 35.703888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951546, 34.755470, 35.874584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327541, 34.657211, 35.969307>,  <33.553139, 34.598255, 36.026142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327541, 34.657211, 35.969307>,  <32.951546, 34.755470, 35.874584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327541, 34.657211, 35.969307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248308, -0.016487, 0.968541,
		-0.234019, -0.969218, -0.076494,
		0.939989, -0.245651, 0.236806,
		33.609539, 34.583515, 36.040348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020660, 34.159977, 36.254341>,  <32.951546, 34.755470, 35.874584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020660, 34.159977, 36.254341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316391, 34.412331, 36.348469>,  <33.493832, 34.563744, 36.404945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316391, 34.412331, 36.348469>,  <33.020660, 34.159977, 36.254341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316391, 34.412331, 36.348469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307135, 0.004972, 0.951653,
		0.599215, -0.775859, 0.197443,
		0.739330, 0.630886, 0.235314,
		33.538189, 34.601597, 36.419064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297474, 33.882984, 36.865559>,  <33.020660, 34.159977, 36.254341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297474, 33.882984, 36.865559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374710, 34.275436, 36.861420>,  <33.421051, 34.510906, 36.858936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374710, 34.275436, 36.861420>,  <33.297474, 33.882984, 36.865559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374710, 34.275436, 36.861420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237884, 0.057039, 0.969617,
		0.951907, -0.184766, 0.244408,
		0.193093, 0.981126, -0.010343,
		33.432636, 34.569775, 36.858318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538055, 33.937481, 37.546238>,  <33.297474, 33.882984, 36.865559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538055, 33.937481, 37.546238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453270, 34.309574, 37.426418>,  <33.402397, 34.532829, 37.354527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453270, 34.309574, 37.426418>,  <33.538055, 33.937481, 37.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453270, 34.309574, 37.426418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255163, 0.243205, 0.935812,
		0.943378, 0.274796, 0.185810,
		-0.211967, 0.930236, -0.299552,
		33.389679, 34.588646, 37.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902065, 34.399967, 37.990128>,  <33.538055, 33.937481, 37.546238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902065, 34.399967, 37.990128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610062, 34.614933, 37.821239>,  <33.434860, 34.743912, 37.719906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610062, 34.614933, 37.821239>,  <33.902065, 34.399967, 37.990128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610062, 34.614933, 37.821239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348002, 0.239411, 0.906409,
		0.588206, 0.808618, 0.012252,
		-0.730005, 0.537419, -0.422224,
		33.391060, 34.776157, 37.694572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976616, 35.101894, 38.214165>,  <33.902065, 34.399967, 37.990128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976616, 35.101894, 38.214165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598988, 35.063896, 38.087856>,  <33.372410, 35.041096, 38.012070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598988, 35.063896, 38.087856>,  <33.976616, 35.101894, 38.214165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598988, 35.063896, 38.087856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329744, 0.265929, 0.905843,
		-0.002082, 0.959300, -0.282380,
		-0.944068, -0.094998, -0.315770,
		33.315765, 35.035397, 37.993126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618568, 35.681858, 38.368744>,  <33.976616, 35.101894, 38.214165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618568, 35.681858, 38.368744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333103, 35.407185, 38.313400>,  <33.161823, 35.242378, 38.280193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333103, 35.407185, 38.313400>,  <33.618568, 35.681858, 38.368744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333103, 35.407185, 38.313400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402629, 0.240486, 0.883208,
		-0.573214, 0.686022, -0.448107,
		-0.713663, -0.686688, -0.138362,
		33.119003, 35.201180, 38.271893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034809, 36.028393, 38.544521>,  <33.618568, 35.681858, 38.368744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034809, 36.028393, 38.544521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966141, 35.635204, 38.570755>,  <32.924938, 35.399292, 38.586494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966141, 35.635204, 38.570755>,  <33.034809, 36.028393, 38.544521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966141, 35.635204, 38.570755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259130, 0.109279, 0.959640,
		-0.950463, 0.147751, -0.273477,
		-0.171673, -0.982969, 0.065579,
		32.914639, 35.340313, 38.590427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851994, 36.011711, 39.180134>,  <33.034809, 36.028393, 38.544521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851994, 36.011711, 39.180134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843292, 35.613861, 39.139652>,  <32.838074, 35.375149, 39.115364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843292, 35.613861, 39.139652>,  <32.851994, 36.011711, 39.180134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843292, 35.613861, 39.139652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075607, -0.099304, 0.992181,
		-0.996900, 0.029232, -0.073041,
		-0.021750, -0.994628, -0.101206,
		32.836769, 35.315472, 39.109291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370773, 35.769009, 39.667389>,  <32.851994, 36.011711, 39.180134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370773, 35.769009, 39.667389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592800, 35.442307, 39.604393>,  <32.726017, 35.246284, 39.566597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592800, 35.442307, 39.604393>,  <32.370773, 35.769009, 39.667389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592800, 35.442307, 39.604393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040707, -0.215779, 0.975593,
		-0.830808, -0.535111, -0.153020,
		0.555069, -0.816760, -0.157488,
		32.759319, 35.197277, 39.557148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046162, 35.220074, 40.083702>,  <32.370773, 35.769009, 39.667389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046162, 35.220074, 40.083702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412949, 35.086327, 39.996651>,  <32.633022, 35.006077, 39.944420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412949, 35.086327, 39.996651>,  <32.046162, 35.220074, 40.083702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412949, 35.086327, 39.996651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087976, -0.362596, 0.927785,
		-0.389142, -0.869894, -0.303072,
		0.916967, -0.334377, -0.217631,
		32.688038, 34.986015, 39.931362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051403, 34.428600, 40.224117>,  <32.046162, 35.220074, 40.083702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051403, 34.428600, 40.224117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423790, 34.574165, 40.212334>,  <32.647221, 34.661503, 40.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423790, 34.574165, 40.212334>,  <32.051403, 34.428600, 40.224117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423790, 34.574165, 40.212334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226881, -0.513427, 0.827597,
		0.286051, -0.777149, -0.560549,
		0.930967, 0.363913, -0.029454,
		32.703079, 34.683338, 40.203499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432728, 33.868195, 40.484222>,  <32.051403, 34.428600, 40.224117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432728, 33.868195, 40.484222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640091, 34.198009, 40.574898>,  <32.764507, 34.395901, 40.629303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640091, 34.198009, 40.574898>,  <32.432728, 33.868195, 40.484222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640091, 34.198009, 40.574898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052646, -0.295363, 0.953933,
		0.853512, -0.482591, -0.196527,
		0.518406, 0.824540, 0.226690,
		32.795612, 34.445370, 40.642906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918362, 33.655487, 40.894169>,  <32.432728, 33.868195, 40.484222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918362, 33.655487, 40.894169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922916, 34.049759, 40.961468>,  <32.925648, 34.286324, 41.001846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922916, 34.049759, 40.961468>,  <32.918362, 33.655487, 40.894169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922916, 34.049759, 40.961468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155581, -0.167957, 0.973440,
		0.987758, 0.015091, -0.155265,
		0.011388, 0.985679, 0.168249,
		32.926334, 34.345463, 41.011944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529907, 33.713715, 41.284168>,  <32.918362, 33.655487, 40.894169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529907, 33.713715, 41.284168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316582, 34.045250, 41.351818>,  <33.188587, 34.244171, 41.392406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316582, 34.045250, 41.351818>,  <33.529907, 33.713715, 41.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316582, 34.045250, 41.351818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069380, -0.156399, 0.985254,
		0.843068, 0.537182, 0.025905,
		-0.533313, 0.828839, 0.169125,
		33.156590, 34.293903, 41.402557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890553, 34.066303, 41.913422>,  <33.529907, 33.713715, 41.284168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890553, 34.066303, 41.913422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532200, 34.243374, 41.898270>,  <33.317188, 34.349617, 41.889179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532200, 34.243374, 41.898270>,  <33.890553, 34.066303, 41.913422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532200, 34.243374, 41.898270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057721, 0.200495, 0.977993,
		0.440532, 0.873977, -0.205172,
		-0.895880, 0.442680, -0.037877,
		33.263435, 34.376179, 41.886906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845791, 34.612637, 42.461235>,  <33.890553, 34.066303, 41.913422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845791, 34.612637, 42.461235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459988, 34.509808, 42.437096>,  <33.228508, 34.448109, 42.422611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459988, 34.509808, 42.437096>,  <33.845791, 34.612637, 42.461235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459988, 34.509808, 42.437096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074816, 0.046849, 0.996096,
		-0.253242, 0.965256, -0.064420,
		-0.964506, -0.257073, -0.060352,
		33.170635, 34.432686, 42.418991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576752, 34.931946, 43.038334>,  <33.845791, 34.612637, 42.461235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576752, 34.931946, 43.038334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300148, 34.663544, 42.931324>,  <33.134186, 34.502502, 42.867119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300148, 34.663544, 42.931324>,  <33.576752, 34.931946, 43.038334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300148, 34.663544, 42.931324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202129, -0.175810, 0.963449,
		-0.693508, 0.720312, -0.014054,
		-0.691513, -0.671001, -0.267521,
		33.092693, 34.462242, 42.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055679, 35.036957, 43.509869>,  <33.576752, 34.931946, 43.038334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055679, 35.036957, 43.509869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975132, 34.669106, 43.374966>,  <32.926804, 34.448395, 43.294025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975132, 34.669106, 43.374966>,  <33.055679, 35.036957, 43.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975132, 34.669106, 43.374966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039712, -0.336362, 0.940895,
		-0.978711, 0.202858, 0.031211,
		-0.201366, -0.919625, -0.337257,
		32.914722, 34.393219, 43.273788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508125, 34.786102, 43.898823>,  <33.055679, 35.036957, 43.509869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508125, 34.786102, 43.898823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663773, 34.442207, 43.766499>,  <32.757160, 34.235870, 43.687103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663773, 34.442207, 43.766499>,  <32.508125, 34.786102, 43.898823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663773, 34.442207, 43.766499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191845, -0.426869, 0.883730,
		-0.900991, -0.280409, -0.331038,
		0.389116, -0.859740, -0.330810,
		32.780506, 34.184284, 43.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022388, 34.260330, 44.063362>,  <32.508125, 34.786102, 43.898823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022388, 34.260330, 44.063362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389637, 34.101917, 44.057579>,  <32.609985, 34.006870, 44.054111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389637, 34.101917, 44.057579>,  <32.022388, 34.260330, 44.063362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389637, 34.101917, 44.057579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193223, -0.479193, 0.856177,
		-0.346001, -0.783283, -0.516480,
		0.918122, -0.396034, -0.014453,
		32.665073, 33.983109, 44.053242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858130, 33.604935, 44.316299>,  <32.022388, 34.260330, 44.063362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858130, 33.604935, 44.316299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248165, 33.636833, 44.399090>,  <32.482185, 33.655972, 44.448765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248165, 33.636833, 44.399090>,  <31.858130, 33.604935, 44.316299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248165, 33.636833, 44.399090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102775, -0.664457, 0.740225,
		0.196558, -0.743059, -0.639710,
		0.975091, 0.079751, 0.206973,
		32.540691, 33.660759, 44.461182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044712, 32.860046, 44.468380>,  <31.858130, 33.604935, 44.316299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044712, 32.860046, 44.468380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355236, 33.070202, 44.607700>,  <32.541550, 33.196297, 44.691292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355236, 33.070202, 44.607700>,  <32.044712, 32.860046, 44.468380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355236, 33.070202, 44.607700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020792, -0.573593, 0.818877,
		0.630013, -0.628457, -0.456207,
		0.776306, 0.525389, 0.348304,
		32.588127, 33.227818, 44.712193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511215, 32.393436, 44.839249>,  <32.044712, 32.860046, 44.468380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511215, 32.393436, 44.839249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642288, 32.746441, 44.974190>,  <32.720932, 32.958244, 45.055153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642288, 32.746441, 44.974190>,  <32.511215, 32.393436, 44.839249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642288, 32.746441, 44.974190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007170, -0.354731, 0.934941,
		0.944760, -0.308783, -0.109912,
		0.327683, 0.882507, 0.337350,
		32.740593, 33.011192, 45.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074635, 32.257435, 45.441525>,  <32.511215, 32.393436, 44.839249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074635, 32.257435, 45.441525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911030, 32.618866, 45.492512>,  <32.812866, 32.835724, 45.523102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911030, 32.618866, 45.492512>,  <33.074635, 32.257435, 45.441525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911030, 32.618866, 45.492512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139932, -0.200135, 0.969724,
		0.901735, 0.378794, 0.208299,
		-0.409014, 0.903582, 0.127463,
		32.788326, 32.889942, 45.530750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789467, 32.255760, 45.710754>,  <33.074635, 32.257435, 45.441525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789467, 32.255760, 45.710754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038231, 31.960760, 45.816078>,  <34.187489, 31.783760, 45.879272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038231, 31.960760, 45.816078>,  <33.789467, 32.255760, 45.710754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038231, 31.960760, 45.816078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404560, 0.014690, -0.914393,
		0.670494, 0.675191, 0.307498,
		0.621907, -0.737497, 0.263306,
		34.224804, 31.739511, 45.895069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429562, 32.523632, 45.516830>,  <33.789467, 32.255760, 45.710754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429562, 32.523632, 45.516830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509880, 32.133129, 45.549313>,  <34.558071, 31.898827, 45.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509880, 32.133129, 45.549313>,  <34.429562, 32.523632, 45.516830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509880, 32.133129, 45.549313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561849, 0.046863, -0.825911,
		0.802499, 0.211468, 0.557921,
		0.200799, -0.976261, 0.081206,
		34.570118, 31.840250, 45.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162762, 32.438644, 45.487667>,  <34.429562, 32.523632, 45.516830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162762, 32.438644, 45.487667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998367, 32.088047, 45.387383>,  <34.899731, 31.877689, 45.327213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998367, 32.088047, 45.387383>,  <35.162762, 32.438644, 45.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998367, 32.088047, 45.387383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540991, -0.013133, -0.840926,
		0.733771, -0.481239, 0.479572,
		-0.410984, -0.876491, -0.250709,
		34.875072, 31.825100, 45.312168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685829, 32.058739, 45.374348>,  <35.162762, 32.438644, 45.487667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685829, 32.058739, 45.374348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394707, 31.891815, 45.156670>,  <35.220032, 31.791660, 45.026062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394707, 31.891815, 45.156670>,  <35.685829, 32.058739, 45.374348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394707, 31.891815, 45.156670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588062, 0.028483, -0.808314,
		0.352817, -0.908318, 0.224673,
		-0.727807, -0.417309, -0.544196,
		35.176365, 31.766623, 44.993412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049812, 31.593298, 44.920349>,  <35.685829, 32.058739, 45.374348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049812, 31.593298, 44.920349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684937, 31.621655, 44.758911>,  <35.466011, 31.638668, 44.662048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684937, 31.621655, 44.758911>,  <36.049812, 31.593298, 44.920349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684937, 31.621655, 44.758911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407777, 0.059818, -0.911120,
		-0.040451, -0.995689, -0.083475,
		-0.912185, 0.070895, -0.403599,
		35.411282, 31.642921, 44.637833>
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
