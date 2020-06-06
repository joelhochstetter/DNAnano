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
	<24.048357, 35.111916, 35.388561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289137, 35.292744, 35.125263>,  <24.433605, 35.401241, 34.967285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289137, 35.292744, 35.125263>,  <24.048357, 35.111916, 35.388561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289137, 35.292744, 35.125263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455301, -0.871502, -0.182169,
		-0.656018, -0.190044, -0.730427,
		0.601948, 0.452070, -0.658248,
		24.469721, 35.428364, 34.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066628, 34.707188, 34.716438>,  <24.048357, 35.111916, 35.388561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066628, 34.707188, 34.716438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389181, 34.924843, 34.809093>,  <24.582714, 35.055435, 34.864689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389181, 34.924843, 34.809093>,  <24.066628, 34.707188, 34.716438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389181, 34.924843, 34.809093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589454, -0.771184, -0.240456,
		0.047798, 0.330443, -0.942615,
		0.806386, 0.544135, 0.231642,
		24.631098, 35.088085, 34.878586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408388, 34.551476, 34.098747>,  <24.066628, 34.707188, 34.716438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408388, 34.551476, 34.098747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651230, 34.688446, 34.385571>,  <24.796934, 34.770626, 34.557663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651230, 34.688446, 34.385571>,  <24.408388, 34.551476, 34.098747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651230, 34.688446, 34.385571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740984, -0.569876, -0.355225,
		0.286997, 0.746987, -0.599703,
		0.607104, 0.342421, 0.717058,
		24.833361, 34.791172, 34.600689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.007290, 34.747559, 33.798210>,  <24.408388, 34.551476, 34.098747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.007290, 34.747559, 33.798210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107332, 34.666763, 34.176975>,  <25.167356, 34.618286, 34.404236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107332, 34.666763, 34.176975>,  <25.007290, 34.747559, 33.798210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107332, 34.666763, 34.176975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717492, -0.618018, -0.321340,
		0.650118, 0.759772, -0.009642,
		0.250104, -0.201991, 0.946915,
		25.182364, 34.606167, 34.461048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687702, 34.925827, 34.005291>,  <25.007290, 34.747559, 33.798210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687702, 34.925827, 34.005291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597212, 34.619385, 34.245922>,  <25.542917, 34.435520, 34.390301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597212, 34.619385, 34.245922>,  <25.687702, 34.925827, 34.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597212, 34.619385, 34.245922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734859, -0.539617, -0.410848,
		0.639377, 0.349133, 0.685057,
		-0.226227, -0.766107, 0.601582,
		25.529343, 34.389553, 34.426395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363972, 34.636753, 34.357006>,  <25.687702, 34.925827, 34.005291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363972, 34.636753, 34.357006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026722, 34.446301, 34.257053>,  <25.824371, 34.332031, 34.197083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026722, 34.446301, 34.257053>,  <26.363972, 34.636753, 34.357006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026722, 34.446301, 34.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537594, -0.756328, -0.372775,
		-0.011507, -0.448633, 0.893642,
		-0.843125, -0.476127, -0.249885,
		25.773785, 34.303463, 34.182087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687826, 35.134621, 34.713531>,  <26.363972, 34.636753, 34.357006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687826, 35.134621, 34.713531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044357, 35.069431, 34.882751>,  <27.258276, 35.030319, 34.984283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044357, 35.069431, 34.882751>,  <26.687826, 35.134621, 34.713531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044357, 35.069431, 34.882751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097398, 0.842528, 0.529774,
		-0.442774, -0.513407, 0.735095,
		0.891327, -0.162973, 0.423055,
		27.311756, 35.020538, 35.009666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625307, 35.031872, 35.493000>,  <26.687826, 35.134621, 34.713531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625307, 35.031872, 35.493000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948114, 35.218922, 35.348751>,  <27.141798, 35.331150, 35.262203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948114, 35.218922, 35.348751>,  <26.625307, 35.031872, 35.493000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948114, 35.218922, 35.348751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175249, 0.772819, 0.609950,
		0.563924, -0.429042, 0.705630,
		0.807018, 0.467626, -0.360622,
		27.190220, 35.359211, 35.240566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995432, 35.261009, 36.103256>,  <26.625307, 35.031872, 35.493000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995432, 35.261009, 36.103256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134071, 35.499233, 35.813381>,  <27.217255, 35.642170, 35.639458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134071, 35.499233, 35.813381>,  <26.995432, 35.261009, 36.103256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134071, 35.499233, 35.813381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027221, 0.765867, 0.642423,
		0.937619, -0.242389, 0.249235,
		0.346597, 0.595563, -0.724689,
		27.238050, 35.677902, 35.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611057, 35.665390, 36.362381>,  <26.995432, 35.261009, 36.103256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611057, 35.665390, 36.362381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452690, 35.860527, 36.051189>,  <27.357670, 35.977612, 35.864475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452690, 35.860527, 36.051189>,  <27.611057, 35.665390, 36.362381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452690, 35.860527, 36.051189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021151, 0.851830, 0.523392,
		0.918042, 0.190765, -0.347574,
		-0.395919, 0.487847, -0.777980,
		27.333914, 36.006882, 35.817795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963936, 36.199837, 36.495777>,  <27.611057, 35.665390, 36.362381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963936, 36.199837, 36.495777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689995, 36.301685, 36.222675>,  <27.525631, 36.362793, 36.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689995, 36.301685, 36.222675>,  <27.963936, 36.199837, 36.495777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689995, 36.301685, 36.222675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016226, 0.942062, 0.335046,
		0.728502, 0.218378, -0.649304,
		-0.684851, 0.254617, -0.682751,
		27.484539, 36.378071, 36.017849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170872, 36.753349, 36.053581>,  <27.963936, 36.199837, 36.495777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170872, 36.753349, 36.053581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771786, 36.778801, 36.044464>,  <27.532335, 36.794071, 36.038994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771786, 36.778801, 36.044464>,  <28.170872, 36.753349, 36.053581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771786, 36.778801, 36.044464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060535, 0.991251, 0.117290,
		0.030060, 0.115642, -0.992836,
		-0.997713, 0.063627, -0.022797,
		27.472471, 36.797890, 36.037624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855955, 37.012264, 36.798088>,  <28.170872, 36.753349, 36.053581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855955, 37.012264, 36.798088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896587, 37.299271, 36.522449>,  <27.920967, 37.471474, 36.357067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896587, 37.299271, 36.522449>,  <27.855955, 37.012264, 36.798088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896587, 37.299271, 36.522449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575152, 0.607539, 0.547811,
		0.811715, 0.340688, 0.474394,
		0.101580, 0.717515, -0.689096,
		27.927061, 37.514526, 36.315720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045130, 37.008224, 36.875019>,  <27.855955, 37.012264, 36.798088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045130, 37.008224, 36.875019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803122, 37.163715, 36.597073>,  <26.657917, 37.257011, 36.430305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803122, 37.163715, 36.597073>,  <27.045130, 37.008224, 36.875019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803122, 37.163715, 36.597073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333761, -0.668520, -0.664594,
		-0.722881, -0.634011, 0.274724,
		-0.605018, 0.388730, -0.694869,
		26.621616, 37.280334, 36.388611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547455, 36.506409, 36.582932>,  <27.045130, 37.008224, 36.875019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547455, 36.506409, 36.582932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657719, 36.795033, 36.328888>,  <26.723877, 36.968204, 36.176460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657719, 36.795033, 36.328888>,  <26.547455, 36.506409, 36.582932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657719, 36.795033, 36.328888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313542, -0.692069, -0.650178,
		-0.908683, -0.019908, -0.417012,
		0.275657, 0.721557, -0.635113,
		26.740416, 37.011501, 36.138355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224487, 36.559471, 35.826344>,  <26.547455, 36.506409, 36.582932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224487, 36.559471, 35.826344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582697, 36.737232, 35.817032>,  <26.797623, 36.843887, 35.811443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582697, 36.737232, 35.817032>,  <26.224487, 36.559471, 35.826344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582697, 36.737232, 35.817032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335953, -0.709443, -0.619537,
		-0.291840, 0.546990, -0.784622,
		0.895525, 0.444401, -0.023281,
		26.851355, 36.870552, 35.810047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480383, 36.689484, 35.137211>,  <26.224487, 36.559471, 35.826344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480383, 36.689484, 35.137211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785675, 36.613670, 35.384293>,  <26.968851, 36.568184, 35.532543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785675, 36.613670, 35.384293>,  <26.480383, 36.689484, 35.137211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785675, 36.613670, 35.384293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284887, -0.759354, -0.584997,
		0.579930, 0.622463, -0.525567,
		0.763230, -0.189530, 0.617704,
		27.014645, 36.556812, 35.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925184, 36.579929, 34.673061>,  <26.480383, 36.689484, 35.137211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925184, 36.579929, 34.673061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038692, 36.424202, 35.023582>,  <27.106798, 36.330765, 35.233894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038692, 36.424202, 35.023582>,  <26.925184, 36.579929, 34.673061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038692, 36.424202, 35.023582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316804, -0.824486, -0.468891,
		0.905046, 0.410674, -0.110629,
		0.283773, -0.389320, 0.876301,
		27.123825, 36.307407, 35.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644463, 36.418827, 34.584293>,  <26.925184, 36.579929, 34.673061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644463, 36.418827, 34.584293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492765, 36.184887, 34.871101>,  <27.401747, 36.044521, 35.043186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492765, 36.184887, 34.871101>,  <27.644463, 36.418827, 34.584293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492765, 36.184887, 34.871101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361489, -0.806977, -0.467027,
		0.851764, 0.082080, 0.517457,
		-0.379242, -0.584851, 0.717025,
		27.378992, 36.009430, 35.086208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256634, 35.940361, 34.751656>,  <27.644463, 36.418827, 34.584293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256634, 35.940361, 34.751656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925575, 35.767906, 34.895390>,  <27.726940, 35.664433, 34.981628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925575, 35.767906, 34.895390>,  <28.256634, 35.940361, 34.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925575, 35.767906, 34.895390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259549, -0.861680, -0.436052,
		0.497632, -0.267631, 0.825067,
		-0.827645, -0.431139, 0.359337,
		27.677282, 35.638565, 35.003189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418955, 35.338318, 35.098072>,  <28.256634, 35.940361, 34.751656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418955, 35.338318, 35.098072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052418, 35.305279, 34.941360>,  <27.832495, 35.285454, 34.847332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052418, 35.305279, 34.941360>,  <28.418955, 35.338318, 35.098072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052418, 35.305279, 34.941360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318120, -0.744367, -0.587126,
		-0.243131, -0.662643, 0.708373,
		-0.916344, -0.082599, -0.391779,
		27.777515, 35.280499, 34.823826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039619, 34.701817, 35.183289>,  <28.418955, 35.338318, 35.098072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039619, 34.701817, 35.183289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924360, 34.858204, 34.833633>,  <27.855206, 34.952038, 34.623840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924360, 34.858204, 34.833633>,  <28.039619, 34.701817, 35.183289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924360, 34.858204, 34.833633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336818, -0.813140, -0.474718,
		-0.896396, -0.431213, 0.102618,
		-0.288148, 0.390972, -0.874135,
		27.837915, 34.975494, 34.571392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671637, 34.176003, 34.940369>,  <28.039619, 34.701817, 35.183289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671637, 34.176003, 34.940369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849937, 34.441170, 34.699757>,  <27.956919, 34.600269, 34.555389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849937, 34.441170, 34.699757>,  <27.671637, 34.176003, 34.940369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849937, 34.441170, 34.699757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415503, -0.748436, -0.516915,
		-0.792882, -0.019522, -0.609063,
		0.445753, 0.662920, -0.601533,
		27.983664, 34.640045, 34.519299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578903, 34.042500, 34.232323>,  <27.671637, 34.176003, 34.940369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578903, 34.042500, 34.232323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924816, 34.231525, 34.300243>,  <28.132364, 34.344940, 34.340996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924816, 34.231525, 34.300243>,  <27.578903, 34.042500, 34.232323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924816, 34.231525, 34.300243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485022, -0.698536, -0.526119,
		-0.130016, 0.537334, -0.833287,
		0.864783, 0.472567, 0.169798,
		28.184252, 34.373295, 34.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022669, 34.017979, 33.603596>,  <27.578903, 34.042500, 34.232323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022669, 34.017979, 33.603596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270214, 34.061966, 33.914700>,  <28.418741, 34.088360, 34.101364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270214, 34.061966, 33.914700>,  <28.022669, 34.017979, 33.603596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270214, 34.061966, 33.914700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602186, -0.702190, -0.379871,
		0.504362, 0.703446, -0.500782,
		0.618863, 0.109972, 0.777763,
		28.455873, 34.094959, 34.148029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702557, 34.332169, 33.465866>,  <28.022669, 34.017979, 33.603596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702557, 34.332169, 33.465866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706938, 34.064400, 33.762989>,  <28.709566, 33.903740, 33.941261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706938, 34.064400, 33.762989>,  <28.702557, 34.332169, 33.465866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706938, 34.064400, 33.762989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565372, -0.608566, -0.556779,
		0.824763, 0.426060, 0.371804,
		0.010954, -0.669418, 0.742805,
		28.710224, 33.863575, 33.985832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963293, 34.719208, 32.922592>,  <28.702557, 34.332169, 33.465866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963293, 34.719208, 32.922592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223146, 34.658863, 32.624538>,  <29.379059, 34.622658, 32.445705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223146, 34.658863, 32.624538>,  <28.963293, 34.719208, 32.922592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223146, 34.658863, 32.624538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668082, 0.354477, -0.654226,
		0.362828, 0.922815, 0.129494,
		0.649633, -0.150859, -0.745130,
		29.418036, 34.613605, 32.401001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264133, 35.351448, 32.518391>,  <28.963293, 34.719208, 32.922592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264133, 35.351448, 32.518391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245945, 35.024403, 32.288803>,  <29.235033, 34.828175, 32.151051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245945, 35.024403, 32.288803>,  <29.264133, 35.351448, 32.518391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245945, 35.024403, 32.288803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494683, 0.517602, -0.698124,
		0.867883, 0.252190, -0.427993,
		-0.045470, -0.817611, -0.573972,
		29.232304, 34.779118, 32.116611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631104, 35.432152, 31.892040>,  <29.264133, 35.351448, 32.518391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631104, 35.432152, 31.892040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343178, 35.167198, 31.808987>,  <29.170422, 35.008224, 31.759153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343178, 35.167198, 31.808987>,  <29.631104, 35.432152, 31.892040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343178, 35.167198, 31.808987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460531, 0.679496, -0.571137,
		0.519398, -0.315491, -0.794160,
		-0.719817, -0.662382, -0.207635,
		29.127234, 34.968483, 31.746696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508366, 35.350231, 31.161762>,  <29.631104, 35.432152, 31.892040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508366, 35.350231, 31.161762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177959, 35.328323, 31.386156>,  <28.979715, 35.315178, 31.520792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177959, 35.328323, 31.386156>,  <29.508366, 35.350231, 31.161762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177959, 35.328323, 31.386156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342305, 0.839460, -0.422059,
		-0.447805, -0.540654, -0.712155,
		-0.826013, -0.054774, 0.560983,
		28.930155, 35.311890, 31.554451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968496, 35.283024, 30.732998>,  <29.508366, 35.350231, 31.161762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968496, 35.283024, 30.732998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869022, 35.454170, 31.080580>,  <28.809338, 35.556858, 31.289129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869022, 35.454170, 31.080580>,  <28.968496, 35.283024, 30.732998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869022, 35.454170, 31.080580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351410, 0.796157, -0.492591,
		-0.902589, -0.427860, -0.047636,
		-0.248686, 0.427867, 0.868956,
		28.794416, 35.582531, 31.341267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525280, 35.689194, 30.489452>,  <28.968496, 35.283024, 30.732998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525280, 35.689194, 30.489452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553535, 35.828007, 30.863527>,  <28.570490, 35.911297, 31.087973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553535, 35.828007, 30.863527>,  <28.525280, 35.689194, 30.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553535, 35.828007, 30.863527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440538, 0.851998, -0.282888,
		-0.894950, -0.392003, 0.213068,
		0.070640, 0.347036, 0.935188,
		28.574728, 35.932117, 31.144083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803764, 35.881916, 30.723883>,  <28.525280, 35.689194, 30.489452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803764, 35.881916, 30.723883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064253, 36.089989, 30.944908>,  <28.220545, 36.214832, 31.077524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064253, 36.089989, 30.944908>,  <27.803764, 35.881916, 30.723883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064253, 36.089989, 30.944908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456548, 0.850162, -0.262275,
		-0.606198, -0.081473, 0.791130,
		0.651220, 0.520179, 0.552563,
		28.259619, 36.246044, 31.110678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369364, 36.259533, 31.077419>,  <27.803764, 35.881916, 30.723883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369364, 36.259533, 31.077419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705147, 36.467068, 31.142067>,  <27.906616, 36.591587, 31.180855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705147, 36.467068, 31.142067>,  <27.369364, 36.259533, 31.077419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705147, 36.467068, 31.142067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505486, 0.854694, -0.118245,
		-0.199483, 0.017566, 0.979744,
		0.839459, 0.518835, 0.161617,
		27.956984, 36.622719, 31.190552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079605, 36.812511, 31.436317>,  <27.369364, 36.259533, 31.077419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079605, 36.812511, 31.436317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437283, 36.909748, 31.285946>,  <27.651890, 36.968090, 31.195723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437283, 36.909748, 31.285946>,  <27.079605, 36.812511, 31.436317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437283, 36.909748, 31.285946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326905, 0.928272, -0.177322,
		0.305857, 0.281453, 0.909525,
		0.894195, 0.243093, -0.375927,
		27.705542, 36.982677, 31.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426937, 37.335785, 31.786673>,  <27.079605, 36.812511, 31.436317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426937, 37.335785, 31.786673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580639, 37.388798, 31.421207>,  <27.672859, 37.420605, 31.201927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580639, 37.388798, 31.421207>,  <27.426937, 37.335785, 31.786673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580639, 37.388798, 31.421207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163692, 0.983743, 0.073855,
		0.908600, 0.121181, 0.399701,
		0.384254, 0.132532, -0.913665,
		27.695915, 37.428558, 31.147108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935770, 37.851185, 31.819029>,  <27.426937, 37.335785, 31.786673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935770, 37.851185, 31.819029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803434, 37.849171, 31.441559>,  <27.724033, 37.847961, 31.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803434, 37.849171, 31.441559>,  <27.935770, 37.851185, 31.819029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803434, 37.849171, 31.441559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258542, 0.962208, 0.085506,
		0.907580, 0.272268, -0.319638,
		-0.330839, -0.005036, -0.943674,
		27.704182, 37.847660, 31.158457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188068, 38.331936, 31.433369>,  <27.935770, 37.851185, 31.819029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188068, 38.331936, 31.433369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831434, 38.263401, 31.265694>,  <27.617455, 38.222279, 31.165089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831434, 38.263401, 31.265694>,  <28.188068, 38.331936, 31.433369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831434, 38.263401, 31.265694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240588, 0.963437, 0.117924,
		0.383656, 0.205991, -0.900209,
		-0.891586, -0.171337, -0.419187,
		27.563959, 38.212002, 31.139938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681072, 38.875595, 31.240723>,  <28.188068, 38.331936, 31.433369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681072, 38.875595, 31.240723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413597, 39.163433, 31.315596>,  <28.253113, 39.336136, 31.360519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413597, 39.163433, 31.315596>,  <28.681072, 38.875595, 31.240723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413597, 39.163433, 31.315596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610697, -0.675135, 0.413812,
		0.424151, 0.162400, 0.890911,
		-0.668689, 0.719596, 0.187182,
		28.212990, 39.379311, 31.371750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108067, 39.397671, 30.903587>,  <28.681072, 38.875595, 31.240723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108067, 39.397671, 30.903587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309816, 39.141609, 30.671789>,  <29.430866, 38.987972, 30.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309816, 39.141609, 30.671789>,  <29.108067, 39.397671, 30.903587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309816, 39.141609, 30.671789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861310, -0.325370, -0.390231,
		0.061257, 0.695947, -0.715476,
		0.504374, -0.640151, -0.579494,
		29.461128, 38.949562, 30.497940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039328, 39.513695, 30.210508>,  <29.108067, 39.397671, 30.903587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039328, 39.513695, 30.210508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112289, 39.120407, 30.212147>,  <29.156067, 38.884434, 30.213131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112289, 39.120407, 30.212147>,  <29.039328, 39.513695, 30.210508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112289, 39.120407, 30.212147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942756, -0.176079, -0.283208,
		0.279176, 0.047796, -0.959050,
		0.182405, -0.983215, 0.004097,
		29.167011, 38.825443, 30.213375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412983, 39.330925, 29.957821>,  <29.039328, 39.513695, 30.210508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412983, 39.330925, 29.957821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561108, 39.009228, 30.143747>,  <28.649982, 38.816208, 30.255302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561108, 39.009228, 30.143747>,  <28.412983, 39.330925, 29.957821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561108, 39.009228, 30.143747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728921, -0.561766, -0.391271,
		0.575796, -0.193922, -0.794262,
		0.370314, -0.804247, 0.464817,
		28.672201, 38.767952, 30.283192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824905, 38.919750, 30.298544>,  <28.412983, 39.330925, 29.957821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824905, 38.919750, 30.298544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969631, 38.620777, 30.075678>,  <28.056467, 38.441395, 29.941957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969631, 38.620777, 30.075678>,  <27.824905, 38.919750, 30.298544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969631, 38.620777, 30.075678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918298, 0.182726, 0.351199,
		-0.160689, -0.638713, 0.752479,
		0.361813, -0.747434, -0.557167,
		28.078175, 38.396545, 29.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168209, 38.440777, 30.715860>,  <27.824905, 38.919750, 30.298544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168209, 38.440777, 30.715860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338974, 38.373352, 30.360483>,  <28.441433, 38.332897, 30.147257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338974, 38.373352, 30.360483>,  <28.168209, 38.440777, 30.715860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338974, 38.373352, 30.360483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875559, -0.168652, 0.452717,
		-0.226147, -0.971156, 0.075582,
		0.426912, -0.168557, -0.888445,
		28.467047, 38.322784, 30.093950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386600, 37.734253, 30.520306>,  <28.168209, 38.440777, 30.715860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386600, 37.734253, 30.520306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599451, 38.051025, 30.400511>,  <28.727161, 38.241089, 30.328634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599451, 38.051025, 30.400511>,  <28.386600, 37.734253, 30.520306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599451, 38.051025, 30.400511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571791, -0.075263, 0.816940,
		0.624417, -0.605959, -0.492866,
		0.532127, 0.791927, -0.299487,
		28.759089, 38.288605, 30.310665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055010, 37.675407, 30.844458>,  <28.386600, 37.734253, 30.520306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055010, 37.675407, 30.844458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998913, 38.067917, 30.791630>,  <28.965254, 38.303421, 30.759933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998913, 38.067917, 30.791630>,  <29.055010, 37.675407, 30.844458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998913, 38.067917, 30.791630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403759, 0.178472, 0.897288,
		0.904052, 0.072515, -0.421226,
		-0.140244, 0.981269, -0.132069,
		28.956841, 38.362297, 30.752008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120476, 37.247082, 31.458906>,  <29.055010, 37.675407, 30.844458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120476, 37.247082, 31.458906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776928, 37.057198, 31.381977>,  <28.570799, 36.943268, 31.335819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776928, 37.057198, 31.381977>,  <29.120476, 37.247082, 31.458906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776928, 37.057198, 31.381977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306066, -0.776747, 0.550444,
		-0.410689, 0.413896, 0.812418,
		-0.858870, -0.474715, -0.192322,
		28.519266, 36.914783, 31.324280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965532, 36.822292, 32.059410>,  <29.120476, 37.247082, 31.458906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965532, 36.822292, 32.059410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743656, 36.642506, 31.779327>,  <28.610531, 36.534634, 31.611277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743656, 36.642506, 31.779327>,  <28.965532, 36.822292, 32.059410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743656, 36.642506, 31.779327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080574, -0.866605, 0.492447,
		-0.828145, 0.216738, 0.516914,
		-0.554693, -0.449467, -0.700211,
		28.577248, 36.507664, 31.569263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519447, 36.401779, 32.351425>,  <28.965532, 36.822292, 32.059410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519447, 36.401779, 32.351425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545071, 36.243725, 31.984869>,  <28.560444, 36.148891, 31.764936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545071, 36.243725, 31.984869>,  <28.519447, 36.401779, 32.351425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545071, 36.243725, 31.984869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019877, -0.918595, 0.394700,
		-0.997748, -0.007069, -0.066698,
		0.064058, -0.395137, -0.916386,
		28.564287, 36.125183, 31.709953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997705, 35.922268, 32.316513>,  <28.519447, 36.401779, 32.351425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997705, 35.922268, 32.316513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269764, 35.827213, 32.039116>,  <28.432999, 35.770180, 31.872679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269764, 35.827213, 32.039116>,  <27.997705, 35.922268, 32.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269764, 35.827213, 32.039116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055095, -0.959896, 0.274890,
		-0.731003, -0.148757, -0.665963,
		0.680147, -0.237636, -0.693491,
		28.473808, 35.755924, 31.831068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803608, 35.322838, 32.206909>,  <27.997705, 35.922268, 32.316513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803608, 35.322838, 32.206909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164738, 35.308945, 32.035465>,  <28.381414, 35.300610, 31.932600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164738, 35.308945, 32.035465>,  <27.803608, 35.322838, 32.206909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164738, 35.308945, 32.035465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043227, -0.984354, 0.170815,
		-0.427834, -0.172743, -0.887196,
		0.902823, -0.034730, -0.428608,
		28.435585, 35.298527, 31.906883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660719, 34.946213, 31.638857>,  <27.803608, 35.322838, 32.206909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660719, 34.946213, 31.638857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015179, 34.939632, 31.824100>,  <28.227854, 34.935684, 31.935246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015179, 34.939632, 31.824100>,  <27.660719, 34.946213, 31.638857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015179, 34.939632, 31.824100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107492, -0.979408, 0.170894,
		0.450760, -0.201218, -0.869670,
		0.886149, -0.016451, 0.463108,
		28.281023, 34.934696, 31.963034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140694, 34.526241, 31.276855>,  <27.660719, 34.946213, 31.638857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140694, 34.526241, 31.276855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224421, 34.547752, 31.667402>,  <28.274656, 34.560661, 31.901730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224421, 34.547752, 31.667402>,  <28.140694, 34.526241, 31.276855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224421, 34.547752, 31.667402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095272, -0.994858, 0.034373,
		0.973195, 0.085826, -0.213366,
		0.209319, 0.053780, 0.976367,
		28.287216, 34.563885, 31.960312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771765, 34.134594, 31.584379>,  <28.140694, 34.526241, 31.276855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771765, 34.134594, 31.584379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476528, 34.169655, 31.851973>,  <28.299387, 34.190693, 32.012527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476528, 34.169655, 31.851973>,  <28.771765, 34.134594, 31.584379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476528, 34.169655, 31.851973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023985, -0.987490, 0.155850,
		0.674276, 0.131077, 0.726754,
		-0.738090, 0.087654, 0.668984,
		28.255100, 34.195950, 32.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369614, 33.758793, 31.049896>,  <28.771765, 34.134594, 31.584379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369614, 33.758793, 31.049896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747419, 33.723236, 30.923410>,  <28.974102, 33.701900, 30.847519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747419, 33.723236, 30.923410>,  <28.369614, 33.758793, 31.049896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747419, 33.723236, 30.923410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064442, -0.893829, 0.443753,
		-0.322088, -0.439508, -0.838505,
		0.944514, -0.088893, -0.316215,
		29.030773, 33.696568, 30.828547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486216, 33.169365, 30.689894>,  <28.369614, 33.758793, 31.049896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486216, 33.169365, 30.689894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844233, 33.257824, 30.844810>,  <29.059042, 33.310898, 30.937759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844233, 33.257824, 30.844810>,  <28.486216, 33.169365, 30.689894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844233, 33.257824, 30.844810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021007, -0.888341, 0.458703,
		0.445487, -0.402422, -0.799748,
		0.895042, 0.221147, 0.387291,
		29.112745, 33.324169, 30.960999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888931, 32.554249, 30.739193>,  <28.486216, 33.169365, 30.689894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888931, 32.554249, 30.739193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127123, 32.782291, 30.965605>,  <29.270039, 32.919117, 31.101452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127123, 32.782291, 30.965605>,  <28.888931, 32.554249, 30.739193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127123, 32.782291, 30.965605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185598, -0.783132, 0.593513,
		0.781638, -0.248371, -0.572149,
		0.595480, 0.570102, 0.566028,
		29.305767, 32.953323, 31.135412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346340, 32.384594, 31.211668>,  <28.888931, 32.554249, 30.739193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346340, 32.384594, 31.211668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632021, 32.261070, 31.462921>,  <29.803431, 32.186954, 31.613672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632021, 32.261070, 31.462921>,  <29.346340, 32.384594, 31.211668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632021, 32.261070, 31.462921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697543, 0.239861, -0.675204,
		0.057845, 0.920382, 0.386717,
		0.714204, -0.308809, 0.628132,
		29.846283, 32.168427, 31.651361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867340, 33.025108, 31.383816>,  <29.346340, 32.384594, 31.211668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867340, 33.025108, 31.383816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042414, 32.667973, 31.426291>,  <30.147457, 32.453693, 31.451775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042414, 32.667973, 31.426291>,  <29.867340, 33.025108, 31.383816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042414, 32.667973, 31.426291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697363, 0.262543, -0.666901,
		0.567555, 0.365942, 0.737542,
		0.437683, -0.892837, 0.106187,
		30.173719, 32.400120, 31.458147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570629, 33.115509, 31.637644>,  <29.867340, 33.025108, 31.383816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570629, 33.115509, 31.637644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533480, 32.791664, 31.405817>,  <30.511190, 32.597359, 31.266720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533480, 32.791664, 31.405817>,  <30.570629, 33.115509, 31.637644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533480, 32.791664, 31.405817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777567, 0.304595, -0.550101,
		0.621903, -0.501745, 0.601240,
		-0.092876, -0.809613, -0.579569,
		30.505617, 32.548779, 31.231947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235012, 32.717773, 31.533205>,  <30.570629, 33.115509, 31.637644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235012, 32.717773, 31.533205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990122, 32.658081, 31.222616>,  <30.843187, 32.622265, 31.036263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990122, 32.658081, 31.222616>,  <31.235012, 32.717773, 31.533205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990122, 32.658081, 31.222616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745598, 0.217909, -0.629761,
		0.263178, -0.964493, -0.022145,
		-0.612226, -0.149228, -0.776473,
		30.806454, 32.613312, 30.989674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421040, 32.041267, 31.196810>,  <31.235012, 32.717773, 31.533205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421040, 32.041267, 31.196810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281771, 32.339878, 30.970015>,  <31.198210, 32.519043, 30.833937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281771, 32.339878, 30.970015>,  <31.421040, 32.041267, 31.196810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281771, 32.339878, 30.970015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852843, 0.001169, -0.522165,
		-0.389147, -0.665356, -0.637076,
		-0.348171, 0.746525, -0.566990,
		31.177319, 32.563835, 30.799917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457264, 31.853359, 30.451094>,  <31.421040, 32.041267, 31.196810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457264, 31.853359, 30.451094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500593, 32.242416, 30.533298>,  <31.526590, 32.475849, 30.582621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.500593, 32.242416, 30.533298>,  <31.457264, 31.853359, 30.451094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500593, 32.242416, 30.533298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883723, 0.000465, -0.468010,
		-0.455301, 0.232310, -0.859496,
		0.108324, 0.972642, 0.205510,
		31.533091, 32.534210, 30.594952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601938, 32.426479, 29.892733>,  <31.457264, 31.853359, 30.451094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601938, 32.426479, 29.892733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810820, 32.514900, 30.222202>,  <31.936148, 32.567955, 30.419884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810820, 32.514900, 30.222202>,  <31.601938, 32.426479, 29.892733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810820, 32.514900, 30.222202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850802, -0.201459, -0.485335,
		0.058650, 0.954227, -0.293278,
		0.522203, 0.221056, 0.823674,
		31.967480, 32.581219, 30.469305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153866, 32.908909, 29.789415>,  <31.601938, 32.426479, 29.892733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153866, 32.908909, 29.789415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263844, 32.715672, 30.121927>,  <32.329830, 32.599728, 30.321434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263844, 32.715672, 30.121927>,  <32.153866, 32.908909, 29.789415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263844, 32.715672, 30.121927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938969, -0.050999, -0.340199,
		0.206743, 0.874081, 0.439591,
		0.274943, -0.483097, 0.831279,
		32.346325, 32.570744, 30.371311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588638, 33.303444, 30.442038>,  <32.153866, 32.908909, 29.789415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588638, 33.303444, 30.442038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697010, 32.923733, 30.378206>,  <32.762035, 32.695908, 30.339907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697010, 32.923733, 30.378206>,  <32.588638, 33.303444, 30.442038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697010, 32.923733, 30.378206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881603, 0.311263, -0.354812,
		0.386486, -0.044556, 0.921218,
		0.270932, -0.949279, -0.159580,
		32.778290, 32.638950, 30.330332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179871, 33.005741, 30.884951>,  <32.588638, 33.303444, 30.442038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179871, 33.005741, 30.884951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137245, 32.914490, 30.497839>,  <33.111668, 32.859737, 30.265572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137245, 32.914490, 30.497839>,  <33.179871, 33.005741, 30.884951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137245, 32.914490, 30.497839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910428, 0.368882, -0.187207,
		0.399706, -0.901044, 0.168388,
		-0.106567, -0.228133, -0.967780,
		33.105274, 32.846050, 30.207504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738007, 32.521393, 30.520689>,  <33.179871, 33.005741, 30.884951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738007, 32.521393, 30.520689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580791, 32.781368, 30.260504>,  <33.486462, 32.937351, 30.104393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580791, 32.781368, 30.260504>,  <33.738007, 32.521393, 30.520689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580791, 32.781368, 30.260504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911430, 0.181732, -0.369145,
		-0.121710, -0.737941, -0.663799,
		-0.393041, 0.649936, -0.650463,
		33.462879, 32.976349, 30.065365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943527, 32.299881, 29.846672>,  <33.738007, 32.521393, 30.520689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943527, 32.299881, 29.846672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868629, 32.692547, 29.832340>,  <33.823692, 32.928146, 29.823742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868629, 32.692547, 29.832340>,  <33.943527, 32.299881, 29.846672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868629, 32.692547, 29.832340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950167, 0.171740, -0.260168,
		-0.249244, -0.082757, -0.964898,
		-0.187242, 0.981660, -0.035828,
		33.812458, 32.987045, 29.821592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168247, 32.600937, 29.217476>,  <33.943527, 32.299881, 29.846672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168247, 32.600937, 29.217476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150127, 32.924538, 29.451899>,  <34.139256, 33.118698, 29.592552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150127, 32.924538, 29.451899>,  <34.168247, 32.600937, 29.217476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150127, 32.924538, 29.451899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812282, 0.371322, -0.449797,
		-0.581503, 0.455669, -0.673958,
		-0.045296, 0.809003, 0.586057,
		34.136539, 33.167240, 29.627716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417332, 33.084049, 28.791937>,  <34.168247, 32.600937, 29.217476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417332, 33.084049, 28.791937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420700, 33.288292, 29.135845>,  <34.422722, 33.410839, 29.342190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420700, 33.288292, 29.135845>,  <34.417332, 33.084049, 28.791937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420700, 33.288292, 29.135845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875925, 0.410995, -0.252662,
		-0.482373, 0.755222, -0.443797,
		0.008418, 0.510611, 0.859771,
		34.423225, 33.441475, 29.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416977, 33.702305, 28.567060>,  <34.417332, 33.084049, 28.791937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416977, 33.702305, 28.567060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578377, 33.675396, 28.932062>,  <34.675217, 33.659248, 29.151062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578377, 33.675396, 28.932062>,  <34.416977, 33.702305, 28.567060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578377, 33.675396, 28.932062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818782, 0.471681, -0.327281,
		-0.408393, 0.879199, 0.245407,
		0.403500, -0.067276, 0.912503,
		34.699425, 33.655212, 29.205812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651447, 34.397343, 28.668930>,  <34.416977, 33.702305, 28.567060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651447, 34.397343, 28.668930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834702, 34.165539, 28.938530>,  <34.944653, 34.026455, 29.100290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834702, 34.165539, 28.938530>,  <34.651447, 34.397343, 28.668930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834702, 34.165539, 28.938530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870780, 0.444852, -0.209403,
		-0.178479, 0.682842, 0.708429,
		0.458135, -0.579512, 0.674002,
		34.972141, 33.991684, 29.140730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079109, 34.914455, 29.011230>,  <34.651447, 34.397343, 28.668930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079109, 34.914455, 29.011230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257362, 34.571915, 29.115599>,  <35.364315, 34.366390, 29.178219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257362, 34.571915, 29.115599>,  <35.079109, 34.914455, 29.011230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257362, 34.571915, 29.115599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890238, 0.393214, -0.229912,
		0.094288, 0.334736, 0.937583,
		0.445630, -0.856350, 0.260919,
		35.391052, 34.315010, 29.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576714, 35.051903, 29.566631>,  <35.079109, 34.914455, 29.011230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576714, 35.051903, 29.566631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673332, 34.698944, 29.405119>,  <35.731304, 34.487171, 29.308212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673332, 34.698944, 29.405119>,  <35.576714, 35.051903, 29.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673332, 34.698944, 29.405119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954364, 0.291323, -0.065733,
		0.175633, -0.369475, 0.912492,
		0.241543, -0.882394, -0.403780,
		35.745796, 34.434227, 29.283985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197849, 34.907257, 29.853409>,  <35.576714, 35.051903, 29.566631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197849, 34.907257, 29.853409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184536, 34.662315, 29.537455>,  <36.176548, 34.515350, 29.347883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184536, 34.662315, 29.537455>,  <36.197849, 34.907257, 29.853409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184536, 34.662315, 29.537455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979375, 0.137609, -0.147948,
		0.199292, -0.778517, 0.595142,
		-0.033283, -0.612352, -0.789884,
		36.174549, 34.478611, 29.300489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779068, 34.487038, 30.012257>,  <36.197849, 34.907257, 29.853409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779068, 34.487038, 30.012257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702309, 34.506363, 29.620167>,  <36.656254, 34.517960, 29.384912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702309, 34.506363, 29.620167>,  <36.779068, 34.487038, 30.012257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702309, 34.506363, 29.620167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955238, 0.238339, -0.175259,
		0.225158, -0.969980, -0.091887,
		-0.191897, 0.048313, -0.980225,
		36.644741, 34.520855, 29.326099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359997, 34.276592, 29.735743>,  <36.779068, 34.487038, 30.012257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359997, 34.276592, 29.735743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203728, 34.466644, 29.420370>,  <37.109966, 34.580677, 29.231146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203728, 34.466644, 29.420370>,  <37.359997, 34.276592, 29.735743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203728, 34.466644, 29.420370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896499, 0.390804, -0.208715,
		0.208955, -0.788367, -0.578633,
		-0.390676, 0.475132, -0.788430,
		37.086525, 34.609184, 29.183842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840050, 34.146675, 29.283026>,  <37.359997, 34.276592, 29.735743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840050, 34.146675, 29.283026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626064, 34.457199, 29.149668>,  <37.497673, 34.643513, 29.069653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626064, 34.457199, 29.149668>,  <37.840050, 34.146675, 29.283026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626064, 34.457199, 29.149668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828728, 0.405379, -0.385846,
		-0.164387, -0.482706, -0.860216,
		-0.534964, 0.776314, -0.333393,
		37.465576, 34.690094, 29.049650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039516, 34.162758, 28.589060>,  <37.840050, 34.146675, 29.283026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039516, 34.162758, 28.589060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885414, 34.519081, 28.685419>,  <37.792953, 34.732876, 28.743235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885414, 34.519081, 28.685419>,  <38.039516, 34.162758, 28.589060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885414, 34.519081, 28.685419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748876, 0.454338, -0.482453,
		-0.539225, -0.005463, -0.842144,
		-0.385254, 0.890813, 0.240900,
		37.769836, 34.786324, 28.757689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102631, 34.593906, 27.918991>,  <38.039516, 34.162758, 28.589060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102631, 34.593906, 27.918991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040260, 34.869629, 28.201986>,  <38.002838, 35.035061, 28.371784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040260, 34.869629, 28.201986>,  <38.102631, 34.593906, 27.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040260, 34.869629, 28.201986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578588, 0.644252, -0.500176,
		-0.800576, 0.331354, -0.499282,
		-0.155928, 0.689307, 0.707490,
		37.993481, 35.076420, 28.414234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961712, 35.132820, 27.454559>,  <38.102631, 34.593906, 27.918991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961712, 35.132820, 27.454559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066032, 35.307827, 27.798782>,  <38.128624, 35.412830, 28.005316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066032, 35.307827, 27.798782>,  <37.961712, 35.132820, 27.454559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066032, 35.307827, 27.798782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591603, 0.631986, -0.500600,
		-0.762884, 0.639663, -0.094019,
		0.260797, 0.437521, 0.860558,
		38.144272, 35.439083, 28.056950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077106, 35.775028, 27.212240>,  <37.961712, 35.132820, 27.454559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077106, 35.775028, 27.212240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 35.773960, 27.561819>,  <38.388153, 35.773319, 27.771566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271511, 35.773960, 27.561819>,  <38.077106, 35.775028, 27.212240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271511, 35.773960, 27.561819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645525, 0.675209, -0.356917,
		-0.589144, 0.737621, 0.329885,
		0.486011, -0.002673, 0.873948,
		38.417313, 35.773159, 27.824003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134838, 36.458649, 27.424973>,  <38.077106, 35.775028, 27.212240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134838, 36.458649, 27.424973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430153, 36.275024, 27.622637>,  <38.607342, 36.164848, 27.741236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430153, 36.275024, 27.622637>,  <38.134838, 36.458649, 27.424973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430153, 36.275024, 27.622637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619134, 0.751914, -0.226492,
		-0.267592, 0.473168, 0.839349,
		0.738287, -0.459062, 0.494161,
		38.651638, 36.137306, 27.770885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461678, 36.952038, 27.774214>,  <38.134838, 36.458649, 27.424973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461678, 36.952038, 27.774214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727894, 36.654877, 27.745499>,  <38.887623, 36.476582, 27.728270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727894, 36.654877, 27.745499>,  <38.461678, 36.952038, 27.774214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727894, 36.654877, 27.745499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731568, 0.668379, -0.134453,
		0.147866, 0.036968, 0.988316,
		0.665540, -0.742902, -0.071786,
		38.927555, 36.432007, 27.723963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975632, 37.143425, 28.151527>,  <38.461678, 36.952038, 27.774214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975632, 37.143425, 28.151527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128029, 36.862965, 27.910450>,  <39.219467, 36.694691, 27.765804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128029, 36.862965, 27.910450>,  <38.975632, 37.143425, 28.151527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128029, 36.862965, 27.910450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692265, 0.648421, -0.316733,
		0.612876, -0.296553, 0.732421,
		0.380989, -0.701147, -0.602694,
		39.242325, 36.652622, 27.729641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628468, 37.243183, 28.165115>,  <38.975632, 37.143425, 28.151527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628468, 37.243183, 28.165115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655411, 37.000019, 27.848658>,  <39.671577, 36.854122, 27.658783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655411, 37.000019, 27.848658>,  <39.628468, 37.243183, 28.165115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655411, 37.000019, 27.848658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701937, 0.592389, -0.395424,
		0.709046, -0.528696, 0.466619,
		0.067361, -0.607911, -0.791143,
		39.675617, 36.817646, 27.611315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316944, 37.213696, 28.031897>,  <39.628468, 37.243183, 28.165115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316944, 37.213696, 28.031897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158527, 37.113052, 27.678661>,  <40.063477, 37.052666, 27.466721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158527, 37.113052, 27.678661>,  <40.316944, 37.213696, 28.031897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158527, 37.113052, 27.678661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702399, 0.536429, -0.467844,
		0.591426, -0.805567, -0.035722,
		-0.396043, -0.251604, -0.883089,
		40.039715, 37.037571, 27.413734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908005, 37.043037, 27.606483>,  <40.316944, 37.213696, 28.031897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908005, 37.043037, 27.606483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625023, 37.109962, 27.331818>,  <40.455235, 37.150120, 27.167019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625023, 37.109962, 27.331818>,  <40.908005, 37.043037, 27.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625023, 37.109962, 27.331818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578628, 0.695002, -0.426804,
		0.405823, -0.699269, -0.588498,
		-0.707458, 0.167315, -0.686665,
		40.412785, 37.160156, 27.125818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246101, 36.940407, 27.008692>,  <40.908005, 37.043037, 27.606483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246101, 36.940407, 27.008692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929184, 37.168865, 26.922840>,  <40.739033, 37.305939, 26.871330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929184, 37.168865, 26.922840>,  <41.246101, 36.940407, 27.008692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929184, 37.168865, 26.922840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561582, 0.545108, -0.622482,
		-0.238532, -0.613719, -0.752630,
		-0.792293, 0.571145, -0.214628,
		40.691498, 37.340210, 26.858452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254745, 37.074509, 26.266537>,  <41.246101, 36.940407, 27.008692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254745, 37.074509, 26.266537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009903, 37.361969, 26.398514>,  <40.862999, 37.534447, 26.477699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009903, 37.361969, 26.398514>,  <41.254745, 37.074509, 26.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009903, 37.361969, 26.398514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529363, 0.682344, -0.504164,
		-0.587453, -0.133943, -0.798096,
		-0.612106, 0.718655, 0.329941,
		40.826271, 37.577564, 26.497496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266781, 37.610088, 25.703245>,  <41.254745, 37.074509, 26.266537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266781, 37.610088, 25.703245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148849, 37.823059, 26.020634>,  <41.078091, 37.950844, 26.211067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.148849, 37.823059, 26.020634>,  <41.266781, 37.610088, 25.703245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148849, 37.823059, 26.020634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364026, 0.830347, -0.421911,
		-0.883493, 0.164451, -0.438630,
		-0.294831, 0.532428, 0.793470,
		41.060402, 37.982788, 26.258675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960438, 38.252747, 25.496389>,  <41.266781, 37.610088, 25.703245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960438, 38.252747, 25.496389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046131, 38.335155, 25.878313>,  <41.097549, 38.384602, 26.107468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046131, 38.335155, 25.878313>,  <40.960438, 38.252747, 25.496389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046131, 38.335155, 25.878313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401551, 0.872508, -0.278362,
		-0.890427, 0.443040, 0.104195,
		0.214236, 0.206021, 0.954808,
		41.110401, 38.396961, 26.164755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906334, 39.000069, 25.521114>,  <40.960438, 38.252747, 25.496389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906334, 39.000069, 25.521114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124222, 38.898064, 25.840677>,  <41.254955, 38.836861, 26.032415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124222, 38.898064, 25.840677>,  <40.906334, 39.000069, 25.521114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124222, 38.898064, 25.840677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588979, 0.794485, -0.147978,
		-0.596983, 0.551145, 0.582967,
		0.544716, -0.255015, 0.798907,
		41.287636, 38.821560, 26.080349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920414, 39.632812, 25.780252>,  <40.906334, 39.000069, 25.521114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920414, 39.632812, 25.780252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221458, 39.407219, 25.916193>,  <41.402084, 39.271862, 25.997757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221458, 39.407219, 25.916193>,  <40.920414, 39.632812, 25.780252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221458, 39.407219, 25.916193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630265, 0.766442, -0.123828,
		-0.190639, 0.307390, 0.932292,
		0.752611, -0.563984, 0.339851,
		41.447243, 39.238022, 26.018148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260658, 40.043083, 26.333961>,  <40.920414, 39.632812, 25.780252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260658, 40.043083, 26.333961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525974, 39.787025, 26.178904>,  <41.685162, 39.633392, 26.085869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525974, 39.787025, 26.178904>,  <41.260658, 40.043083, 26.333961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525974, 39.787025, 26.178904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596407, 0.765052, -0.242886,
		0.452048, -0.070090, 0.889235,
		0.663288, -0.640143, -0.387643,
		41.724960, 39.594982, 26.062611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904030, 40.289352, 26.512787>,  <41.260658, 40.043083, 26.333961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904030, 40.289352, 26.512787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963326, 40.057949, 26.191950>,  <41.998901, 39.919106, 25.999447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963326, 40.057949, 26.191950>,  <41.904030, 40.289352, 26.512787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963326, 40.057949, 26.191950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562506, 0.716401, -0.412744,
		0.813396, -0.389996, 0.431614,
		0.148240, -0.578510, -0.802092,
		42.007797, 39.884396, 25.951323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596390, 40.269699, 26.448381>,  <41.904030, 40.289352, 26.512787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596390, 40.269699, 26.448381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439064, 40.173489, 26.093428>,  <42.344669, 40.115761, 25.880455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439064, 40.173489, 26.093428>,  <42.596390, 40.269699, 26.448381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439064, 40.173489, 26.093428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487941, 0.763423, -0.423200,
		0.779241, -0.599442, -0.182902,
		-0.393316, -0.240529, -0.887383,
		42.321068, 40.101330, 25.827213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148888, 40.279991, 25.991343>,  <42.596390, 40.269699, 26.448381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148888, 40.279991, 25.991343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827919, 40.331619, 25.758287>,  <42.635338, 40.362595, 25.618454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827919, 40.331619, 25.758287>,  <43.148888, 40.279991, 25.991343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827919, 40.331619, 25.758287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530390, 0.601739, -0.597158,
		0.273519, -0.788195, -0.551304,
		-0.802418, 0.129072, -0.582637,
		42.587193, 40.370342, 25.583496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428516, 40.293415, 25.283171>,  <43.148888, 40.279991, 25.991343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428516, 40.293415, 25.283171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067066, 40.464565, 25.290956>,  <42.850197, 40.567257, 25.295628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067066, 40.464565, 25.290956>,  <43.428516, 40.293415, 25.283171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067066, 40.464565, 25.290956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365896, 0.794759, -0.484230,
		-0.222662, -0.430441, -0.874724,
		-0.903627, 0.427877, 0.019466,
		42.795979, 40.592930, 25.296797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436619, 40.572006, 24.627016>,  <43.428516, 40.293415, 25.283171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436619, 40.572006, 24.627016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115063, 40.751949, 24.782648>,  <42.922127, 40.859917, 24.876028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115063, 40.751949, 24.782648>,  <43.436619, 40.572006, 24.627016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115063, 40.751949, 24.782648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201869, 0.821702, -0.532968,
		-0.559467, -0.349906, -0.751374,
		-0.803894, 0.449857, 0.389080,
		42.873894, 40.886906, 24.899372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009182, 40.897991, 24.030581>,  <43.436619, 40.572006, 24.627016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009182, 40.897991, 24.030581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903847, 41.087914, 24.366488>,  <42.840645, 41.201866, 24.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903847, 41.087914, 24.366488>,  <43.009182, 40.897991, 24.030581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903847, 41.087914, 24.366488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119536, 0.879845, -0.459982,
		-0.957270, -0.020747, -0.288451,
		-0.263336, 0.474807, 0.839769,
		42.824844, 41.230354, 24.618418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424831, 41.250351, 23.894386>,  <43.009182, 40.897991, 24.030581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424831, 41.250351, 23.894386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589447, 41.432270, 24.210310>,  <42.688217, 41.541420, 24.399864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589447, 41.432270, 24.210310>,  <42.424831, 41.250351, 23.894386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589447, 41.432270, 24.210310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091538, 0.841588, -0.532306,
		-0.906784, 0.291361, 0.304715,
		0.411538, 0.454794, 0.789810,
		42.712910, 41.568707, 24.447252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014942, 41.757694, 24.051785>,  <42.424831, 41.250351, 23.894386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014942, 41.757694, 24.051785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356377, 41.877724, 24.222124>,  <42.561237, 41.949741, 24.324327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356377, 41.877724, 24.222124>,  <42.014942, 41.757694, 24.051785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356377, 41.877724, 24.222124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028018, 0.842706, -0.537644,
		-0.520199, 0.446993, 0.727729,
		0.853585, 0.300071, 0.425851,
		42.612453, 41.967747, 24.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888363, 42.380001, 24.293736>,  <42.014942, 41.757694, 24.051785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888363, 42.380001, 24.293736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286793, 42.407288, 24.316320>,  <42.525848, 42.423660, 24.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286793, 42.407288, 24.316320>,  <41.888363, 42.380001, 24.293736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286793, 42.407288, 24.316320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028952, 0.853475, -0.520329,
		-0.083682, 0.516650, 0.852098,
		0.996072, 0.068212, 0.056463,
		42.585613, 42.427750, 24.333260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073833, 42.972706, 24.550945>,  <41.888363, 42.380001, 24.293736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073833, 42.972706, 24.550945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411186, 42.882679, 24.355782>,  <42.613598, 42.828663, 24.238684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411186, 42.882679, 24.355782>,  <42.073833, 42.972706, 24.550945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411186, 42.882679, 24.355782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029316, 0.925969, -0.376460,
		0.536517, 0.303195, 0.787542,
		0.843380, -0.225065, -0.487910,
		42.664200, 42.815159, 24.209408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536999, 43.560570, 24.589678>,  <42.073833, 42.972706, 24.550945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536999, 43.560570, 24.589678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696205, 43.351501, 24.288109>,  <42.791729, 43.226063, 24.107168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696205, 43.351501, 24.288109>,  <42.536999, 43.560570, 24.589678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696205, 43.351501, 24.288109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218751, 0.852191, -0.475308,
		0.890914, 0.024261, 0.453523,
		0.398020, -0.522667, -0.753922,
		42.815613, 43.194702, 24.061932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049679, 43.927494, 24.374784>,  <42.536999, 43.560570, 24.589678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049679, 43.927494, 24.374784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986252, 43.691681, 24.057974>,  <42.948196, 43.550194, 23.867887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986252, 43.691681, 24.057974>,  <43.049679, 43.927494, 24.374784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986252, 43.691681, 24.057974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186012, 0.769974, -0.610359,
		0.969668, -0.244111, -0.012433,
		-0.158569, -0.589533, -0.792027,
		42.938683, 43.514820, 23.820366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663116, 44.033566, 23.873411>,  <43.049679, 43.927494, 24.374784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663116, 44.033566, 23.873411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359085, 43.889244, 23.657227>,  <43.176666, 43.802650, 23.527515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.359085, 43.889244, 23.657227>,  <43.663116, 44.033566, 23.873411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359085, 43.889244, 23.657227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174779, 0.687543, -0.704796,
		0.625881, -0.630164, -0.459529,
		-0.760083, -0.360802, -0.540459,
		43.131062, 43.781002, 23.495089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896538, 43.792526, 23.220539>,  <43.663116, 44.033566, 23.873411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896538, 43.792526, 23.220539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509285, 43.885700, 23.183762>,  <43.276932, 43.941605, 23.161695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509285, 43.885700, 23.183762>,  <43.896538, 43.792526, 23.220539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509285, 43.885700, 23.183762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212701, 0.571080, -0.792859,
		-0.132178, -0.787152, -0.602429,
		-0.968136, 0.232936, -0.091944,
		43.218845, 43.955582, 23.156179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858971, 43.922356, 22.531551>,  <43.896538, 43.792526, 23.220539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858971, 43.922356, 22.531551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516956, 44.062138, 22.684809>,  <43.311749, 44.146008, 22.776762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516956, 44.062138, 22.684809>,  <43.858971, 43.922356, 22.531551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516956, 44.062138, 22.684809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050274, 0.679502, -0.731949,
		-0.516127, -0.645104, -0.563430,
		-0.855035, 0.349453, 0.383141,
		43.260445, 44.166973, 22.799751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358944, 43.990711, 22.019714>,  <43.858971, 43.922356, 22.531551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358944, 43.990711, 22.019714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299335, 44.252480, 22.316236>,  <43.263573, 44.409538, 22.494150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299335, 44.252480, 22.316236>,  <43.358944, 43.990711, 22.019714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299335, 44.252480, 22.316236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087200, 0.738056, -0.669081,
		-0.984982, -0.164346, -0.052918,
		-0.149017, 0.654419, 0.741303,
		43.254631, 44.448807, 22.538628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816982, 44.509350, 21.847313>,  <43.358944, 43.990711, 22.019714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816982, 44.509350, 21.847313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078930, 44.692558, 22.087765>,  <43.236099, 44.802483, 22.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078930, 44.692558, 22.087765>,  <42.816982, 44.509350, 21.847313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078930, 44.692558, 22.087765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202331, 0.660126, -0.723392,
		-0.728150, 0.595358, 0.339627,
		0.654874, 0.458021, 0.601130,
		43.275391, 44.829964, 22.268105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707649, 43.806976, 21.525356>,  <42.816982, 44.509350, 21.847313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707649, 43.806976, 21.525356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050499, 43.926811, 21.357748>,  <43.256210, 43.998711, 21.257183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050499, 43.926811, 21.357748>,  <42.707649, 43.806976, 21.525356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050499, 43.926811, 21.357748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167833, -0.606657, -0.777045,
		-0.486994, 0.736353, -0.469703,
		0.857128, 0.299585, -0.419023,
		43.307636, 44.016685, 21.232040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671932, 44.145508, 20.957407>,  <42.707649, 43.806976, 21.525356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671932, 44.145508, 20.957407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998535, 43.914593, 20.960329>,  <43.194496, 43.776043, 20.962082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.998535, 43.914593, 20.960329>,  <42.671932, 44.145508, 20.957407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998535, 43.914593, 20.960329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433189, -0.620963, -0.653263,
		0.381657, 0.530230, -0.757096,
		0.816508, -0.577288, 0.007305,
		43.243488, 43.741405, 20.962521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533630, 44.751671, 20.625652>,  <42.671932, 44.145508, 20.957407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533630, 44.751671, 20.625652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275784, 45.046211, 20.543432>,  <42.121075, 45.222935, 20.494101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275784, 45.046211, 20.543432>,  <42.533630, 44.751671, 20.625652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275784, 45.046211, 20.543432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387454, -0.082884, 0.918156,
		0.659052, 0.671499, 0.338732,
		-0.644616, 0.736355, -0.205550,
		42.082397, 45.267117, 20.481768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540016, 45.428982, 20.985479>,  <42.533630, 44.751671, 20.625652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540016, 45.428982, 20.985479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166882, 45.339397, 20.872578>,  <41.943001, 45.285648, 20.804836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166882, 45.339397, 20.872578>,  <42.540016, 45.428982, 20.985479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166882, 45.339397, 20.872578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212371, -0.291071, 0.932833,
		-0.291071, 0.930118, 0.223958,
		-0.932833, -0.223958, -0.282252,
		41.887032, 45.272209, 20.787903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157116, 45.519981, 21.587635>,  <42.540016, 45.428982, 20.985479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157116, 45.519981, 21.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889111, 45.296188, 21.392471>,  <41.728306, 45.161911, 21.275373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889111, 45.296188, 21.392471>,  <42.157116, 45.519981, 21.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889111, 45.296188, 21.392471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, -0.306379, 0.872864,
		-0.637839, 0.770136, -0.007209,
		-0.670015, -0.559485, -0.487910,
		41.688107, 45.128342, 21.246098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508198, 45.468510, 22.019777>,  <42.157116, 45.519981, 21.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508198, 45.468510, 22.019777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490765, 45.148567, 21.780333>,  <41.480305, 44.956604, 21.636665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490765, 45.148567, 21.780333>,  <41.508198, 45.468510, 22.019777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490765, 45.148567, 21.780333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288926, -0.563487, 0.773954,
		-0.956359, 0.206683, -0.206543,
		-0.043579, -0.799853, -0.598612,
		41.477692, 44.908611, 21.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772045, 45.231247, 21.998283>,  <41.508198, 45.468510, 22.019777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772045, 45.231247, 21.998283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010323, 44.917725, 22.068476>,  <41.153290, 44.729610, 22.110590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010323, 44.917725, 22.068476>,  <40.772045, 45.231247, 21.998283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010323, 44.917725, 22.068476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504426, -0.195053, 0.841136,
		-0.625059, -0.589579, -0.511564,
		0.595698, -0.783806, 0.175479,
		41.189034, 44.682583, 22.121120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476257, 44.593327, 21.979164>,  <40.772045, 45.231247, 21.998283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476257, 44.593327, 21.979164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802151, 44.532135, 22.202881>,  <40.997688, 44.495419, 22.337111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802151, 44.532135, 22.202881>,  <40.476257, 44.593327, 21.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802151, 44.532135, 22.202881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564819, -0.427495, 0.705853,
		0.131114, -0.890980, -0.434700,
		0.814733, -0.152980, 0.559292,
		41.046570, 44.486240, 22.370668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311069, 43.949692, 22.190916>,  <40.476257, 44.593327, 21.979164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311069, 43.949692, 22.190916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575600, 44.089420, 22.456432>,  <40.734318, 44.173260, 22.615742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575600, 44.089420, 22.456432>,  <40.311069, 43.949692, 22.190916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575600, 44.089420, 22.456432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540047, -0.392415, 0.744553,
		0.520571, -0.850873, -0.070864,
		0.661328, 0.349323, 0.663791,
		40.773998, 44.194218, 22.655569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401329, 43.466984, 22.665825>,  <40.311069, 43.949692, 22.190916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401329, 43.466984, 22.665825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542828, 43.786034, 22.861235>,  <40.627728, 43.977463, 22.978481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542828, 43.786034, 22.861235>,  <40.401329, 43.466984, 22.665825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542828, 43.786034, 22.861235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573502, -0.227634, 0.786943,
		0.738889, -0.558552, 0.376913,
		0.353750, 0.797623, 0.488527,
		40.648952, 44.025322, 23.007793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498459, 43.186977, 23.354246>,  <40.401329, 43.466984, 22.665825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498459, 43.186977, 23.354246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469322, 43.585518, 23.372007>,  <40.451839, 43.824642, 23.382664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469322, 43.585518, 23.372007>,  <40.498459, 43.186977, 23.354246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469322, 43.585518, 23.372007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502641, -0.075128, 0.861225,
		0.861421, 0.040414, 0.506281,
		-0.072841, 0.996355, 0.044403,
		40.447472, 43.884426, 23.385328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767090, 43.399372, 24.074631>,  <40.498459, 43.186977, 23.354246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767090, 43.399372, 24.074631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523521, 43.678802, 23.924320>,  <40.377380, 43.846462, 23.834133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523521, 43.678802, 23.924320>,  <40.767090, 43.399372, 24.074631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523521, 43.678802, 23.924320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525277, -0.000129, 0.850931,
		0.594391, 0.715536, 0.367025,
		-0.608919, 0.698576, -0.375778,
		40.340847, 43.888374, 23.811586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541901, 43.732986, 24.642826>,  <40.767090, 43.399372, 24.074631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541901, 43.732986, 24.642826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287460, 43.866318, 24.364470>,  <40.134796, 43.946316, 24.197456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287460, 43.866318, 24.364470>,  <40.541901, 43.732986, 24.642826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287460, 43.866318, 24.364470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750267, -0.056568, 0.658711,
		0.180202, 0.941112, 0.286069,
		-0.636103, 0.333329, -0.695891,
		40.096630, 43.966316, 24.155703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134594, 44.143261, 24.941713>,  <40.541901, 43.732986, 24.642826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134594, 44.143261, 24.941713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920513, 44.025753, 24.624914>,  <39.792065, 43.955250, 24.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920513, 44.025753, 24.624914>,  <40.134594, 44.143261, 24.941713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920513, 44.025753, 24.624914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780823, -0.185682, 0.596521,
		-0.322297, 0.937670, -0.130001,
		-0.535201, -0.293765, -0.791999,
		39.759953, 43.937622, 24.387314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441475, 44.406971, 25.032602>,  <40.134594, 44.143261, 24.941713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441475, 44.406971, 25.032602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403316, 44.112888, 24.764164>,  <39.380421, 43.936440, 24.603100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403316, 44.112888, 24.764164>,  <39.441475, 44.406971, 25.032602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403316, 44.112888, 24.764164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639113, -0.471634, 0.607533,
		-0.763174, 0.486861, -0.424890,
		-0.095392, -0.735206, -0.671098,
		39.374699, 43.892326, 24.562834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771889, 44.224640, 25.103462>,  <39.441475, 44.406971, 25.032602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771889, 44.224640, 25.103462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933575, 43.912365, 24.912825>,  <39.030586, 43.725002, 24.798441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933575, 43.912365, 24.912825>,  <38.771889, 44.224640, 25.103462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933575, 43.912365, 24.912825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699161, -0.599674, 0.389313,
		-0.589733, 0.175852, -0.788220,
		0.404213, -0.780684, -0.476596,
		39.054840, 43.678162, 24.769846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208221, 43.847279, 24.840599>,  <38.771889, 44.224640, 25.103462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208221, 43.847279, 24.840599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504021, 43.578072, 24.846113>,  <38.681499, 43.416546, 24.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504021, 43.578072, 24.846113>,  <38.208221, 43.847279, 24.840599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504021, 43.578072, 24.846113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616157, -0.668489, 0.416501,
		-0.271097, -0.316496, -0.909031,
		0.739498, -0.673018, 0.013785,
		38.725868, 43.376167, 24.850248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104801, 43.265724, 24.318558>,  <38.208221, 43.847279, 24.840599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104801, 43.265724, 24.318558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344444, 43.096226, 24.590296>,  <38.488232, 42.994526, 24.753338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.344444, 43.096226, 24.590296>,  <38.104801, 43.265724, 24.318558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344444, 43.096226, 24.590296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708536, -0.675739, 0.203356,
		0.372888, -0.603171, -0.705081,
		0.599109, -0.423747, 0.679343,
		38.524178, 42.969101, 24.794098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807770, 42.680321, 24.395763>,  <38.104801, 43.265724, 24.318558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807770, 42.680321, 24.395763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069351, 42.625362, 24.693346>,  <38.226299, 42.592388, 24.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069351, 42.625362, 24.693346>,  <37.807770, 42.680321, 24.395763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069351, 42.625362, 24.693346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561105, -0.747688, 0.355140,
		0.507454, -0.649682, -0.566042,
		0.653951, -0.137392, 0.743957,
		38.265537, 42.584145, 24.916533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959873, 41.965572, 24.417669>,  <37.807770, 42.680321, 24.395763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959873, 41.965572, 24.417669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033825, 42.111290, 24.782768>,  <38.078194, 42.198719, 25.001827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033825, 42.111290, 24.782768>,  <37.959873, 41.965572, 24.417669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033825, 42.111290, 24.782768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750831, -0.546892, 0.370354,
		0.634093, -0.753789, 0.172416,
		0.184876, 0.364295, 0.912749,
		38.089287, 42.220577, 25.056593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253620, 41.431324, 24.834820>,  <37.959873, 41.965572, 24.417669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253620, 41.431324, 24.834820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104874, 41.680504, 25.110111>,  <38.015625, 41.830009, 25.275286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104874, 41.680504, 25.110111>,  <38.253620, 41.431324, 24.834820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104874, 41.680504, 25.110111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497485, -0.759673, 0.418813,
		0.783727, -0.186643, 0.592400,
		-0.371862, 0.622945, 0.688228,
		37.993317, 41.867386, 25.316580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208275, 41.045189, 25.379753>,  <38.253620, 41.431324, 24.834820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208275, 41.045189, 25.379753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976723, 41.357399, 25.474142>,  <37.837791, 41.544724, 25.530775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976723, 41.357399, 25.474142>,  <38.208275, 41.045189, 25.379753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976723, 41.357399, 25.474142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637398, -0.613622, 0.466039,
		0.508554, 0.119369, 0.852716,
		-0.578876, 0.780525, 0.235974,
		37.803059, 41.591557, 25.544935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095016, 40.955982, 26.020494>,  <38.208275, 41.045189, 25.379753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095016, 40.955982, 26.020494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798252, 41.208160, 25.929192>,  <37.620193, 41.359467, 25.874409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798252, 41.208160, 25.929192>,  <38.095016, 40.955982, 26.020494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798252, 41.208160, 25.929192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663545, -0.641481, 0.384981,
		0.096286, 0.437083, 0.894253,
		-0.741914, 0.630445, -0.228259,
		37.575676, 41.397293, 25.860714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567074, 40.839230, 26.563915>,  <38.095016, 40.955982, 26.020494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567074, 40.839230, 26.563915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376518, 40.988197, 26.245327>,  <37.262184, 41.077576, 26.054174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376518, 40.988197, 26.245327>,  <37.567074, 40.839230, 26.563915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376518, 40.988197, 26.245327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810922, -0.536193, 0.234313,
		-0.339799, 0.757497, 0.557436,
		-0.476385, 0.372418, -0.796469,
		37.233604, 41.099922, 26.006386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869762, 41.200115, 26.830217>,  <37.567074, 40.839230, 26.563915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869762, 41.200115, 26.830217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862137, 41.098877, 26.443316>,  <36.857563, 41.038136, 26.211174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862137, 41.098877, 26.443316>,  <36.869762, 41.200115, 26.830217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862137, 41.098877, 26.443316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781380, -0.599786, 0.172342,
		-0.623764, 0.759079, -0.186329,
		-0.019064, -0.253094, -0.967254,
		36.856419, 41.022949, 26.153139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175869, 41.225754, 26.694561>,  <36.869762, 41.200115, 26.830217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175869, 41.225754, 26.694561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333954, 40.997334, 26.406754>,  <36.428806, 40.860283, 26.234068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333954, 40.997334, 26.406754>,  <36.175869, 41.225754, 26.694561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333954, 40.997334, 26.406754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655056, -0.724328, 0.215059,
		-0.643977, 0.386332, -0.660334,
		0.395215, -0.571049, -0.719520,
		36.452518, 40.826019, 26.190897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557312, 40.958885, 26.302734>,  <36.175869, 41.225754, 26.694561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557312, 40.958885, 26.302734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859295, 40.706654, 26.230724>,  <36.040485, 40.555317, 26.187519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859295, 40.706654, 26.230724>,  <35.557312, 40.958885, 26.302734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859295, 40.706654, 26.230724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591559, -0.773347, 0.228020,
		-0.283005, -0.065652, -0.956869,
		0.754961, -0.630575, -0.180024,
		36.085785, 40.517483, 26.176718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212929, 40.496250, 25.979229>,  <35.557312, 40.958885, 26.302734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212929, 40.496250, 25.979229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545792, 40.292683, 26.067331>,  <35.745510, 40.170544, 26.120193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545792, 40.292683, 26.067331>,  <35.212929, 40.496250, 25.979229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545792, 40.292683, 26.067331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552488, -0.726798, 0.408071,
		-0.047590, -0.461271, -0.885982,
		0.832162, -0.508914, 0.220258,
		35.795441, 40.140007, 26.133410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035175, 39.921661, 25.768927>,  <35.212929, 40.496250, 25.979229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035175, 39.921661, 25.768927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342670, 39.863358, 26.018019>,  <35.527168, 39.828377, 26.167473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342670, 39.863358, 26.018019>,  <35.035175, 39.921661, 25.768927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342670, 39.863358, 26.018019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472235, -0.786008, 0.398982,
		0.431313, -0.600788, -0.673070,
		0.768741, -0.145761, 0.622729,
		35.573292, 39.819630, 26.204838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285400, 39.294483, 25.624269>,  <35.035175, 39.921661, 25.768927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285400, 39.294483, 25.624269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419594, 39.376255, 25.992109>,  <35.500111, 39.425320, 26.212812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419594, 39.376255, 25.992109>,  <35.285400, 39.294483, 25.624269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419594, 39.376255, 25.992109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450145, -0.822727, 0.347117,
		0.827540, -0.530403, -0.183984,
		0.335481, 0.204434, 0.919598,
		35.520237, 39.437584, 26.267988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595116, 38.624001, 25.825920>,  <35.285400, 39.294483, 25.624269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595116, 38.624001, 25.825920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548981, 38.838947, 26.160089>,  <35.521297, 38.967915, 26.360592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548981, 38.838947, 26.160089>,  <35.595116, 38.624001, 25.825920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548981, 38.838947, 26.160089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416884, -0.789571, 0.450317,
		0.901612, -0.296336, 0.315088,
		-0.115340, 0.537366, 0.835425,
		35.514378, 39.000156, 26.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845943, 38.144199, 26.380075>,  <35.595116, 38.624001, 25.825920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845943, 38.144199, 26.380075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629704, 38.427780, 26.561249>,  <35.499962, 38.597927, 26.669952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629704, 38.427780, 26.561249>,  <35.845943, 38.144199, 26.380075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629704, 38.427780, 26.561249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402230, -0.690670, 0.600987,
		0.738896, 0.142709, 0.658534,
		-0.540596, 0.708949, 0.452932,
		35.467525, 38.640465, 26.697128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066357, 37.939629, 27.024288>,  <35.845943, 38.144199, 26.380075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066357, 37.939629, 27.024288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726463, 38.150421, 27.017982>,  <35.522530, 38.276897, 27.014198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726463, 38.150421, 27.017982>,  <36.066357, 37.939629, 27.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726463, 38.150421, 27.017982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439089, -0.690823, 0.574425,
		0.291820, 0.495029, 0.818405,
		-0.849730, 0.526981, -0.015766,
		35.471542, 38.308517, 27.013252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899837, 37.957176, 27.714502>,  <36.066357, 37.939629, 27.024288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899837, 37.957176, 27.714502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569195, 38.023308, 27.499323>,  <35.370811, 38.062988, 27.370214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569195, 38.023308, 27.499323>,  <35.899837, 37.957176, 27.714502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569195, 38.023308, 27.499323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500485, -0.653097, 0.568313,
		-0.257372, 0.739006, 0.622599,
		-0.826604, 0.165333, -0.537950,
		35.321213, 38.072906, 27.337938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428299, 38.122684, 28.190628>,  <35.899837, 37.957176, 27.714502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428299, 38.122684, 28.190628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185780, 38.019836, 27.889620>,  <35.040268, 37.958126, 27.709015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185780, 38.019836, 27.889620>,  <35.428299, 38.122684, 28.190628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185780, 38.019836, 27.889620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529464, -0.575539, 0.623236,
		-0.593353, 0.776301, 0.212813,
		-0.606300, -0.257122, -0.752521,
		35.003891, 37.942699, 27.663864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765213, 38.165054, 28.494411>,  <35.428299, 38.122684, 28.190628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765213, 38.165054, 28.494411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703506, 37.960388, 28.156322>,  <34.666485, 37.837589, 27.953468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703506, 37.960388, 28.156322>,  <34.765213, 38.165054, 28.494411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703506, 37.960388, 28.156322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592708, -0.636517, 0.493501,
		-0.790507, 0.577098, -0.205078,
		-0.154262, -0.511667, -0.845222,
		34.657227, 37.806889, 27.902756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101559, 38.047188, 28.502844>,  <34.765213, 38.165054, 28.494411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101559, 38.047188, 28.502844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218430, 37.785282, 28.224012>,  <34.288551, 37.628139, 28.056713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218430, 37.785282, 28.224012>,  <34.101559, 38.047188, 28.502844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218430, 37.785282, 28.224012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797829, -0.568793, 0.199859,
		-0.527354, 0.497756, -0.688575,
		0.292176, -0.654762, -0.697080,
		34.306084, 37.588852, 28.014889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583336, 37.939617, 28.048389>,  <34.101559, 38.047188, 28.502844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583336, 37.939617, 28.048389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805614, 37.607609, 28.029343>,  <33.938980, 37.408405, 28.017914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805614, 37.607609, 28.029343>,  <33.583336, 37.939617, 28.048389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805614, 37.607609, 28.029343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750385, -0.525392, 0.401105,
		-0.357943, -0.187162, -0.914793,
		0.555697, -0.830020, -0.047617,
		33.972324, 37.358604, 28.015057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126747, 37.474304, 27.768702>,  <33.583336, 37.939617, 28.048389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126747, 37.474304, 27.768702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419556, 37.273232, 27.952639>,  <33.595242, 37.152588, 28.063000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419556, 37.273232, 27.952639>,  <33.126747, 37.474304, 27.768702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419556, 37.273232, 27.952639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681283, -0.539685, 0.494565,
		-0.000441, -0.675313, -0.737531,
		0.732021, -0.502686, 0.459841,
		33.639160, 37.122425, 28.090591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920601, 36.745621, 27.540447>,  <33.126747, 37.474304, 27.768702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920601, 36.745621, 27.540447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175030, 36.739040, 27.849028>,  <33.327686, 36.735092, 28.034176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175030, 36.739040, 27.849028>,  <32.920601, 36.745621, 27.540447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175030, 36.739040, 27.849028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678234, -0.488696, 0.548795,
		0.367979, -0.872299, -0.322002,
		0.636074, -0.016447, 0.771453,
		33.365852, 36.734108, 28.080463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863026, 36.007191, 27.782087>,  <32.920601, 36.745621, 27.540447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863026, 36.007191, 27.782087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000393, 36.241501, 28.075735>,  <33.082813, 36.382088, 28.251925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000393, 36.241501, 28.075735>,  <32.863026, 36.007191, 27.782087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000393, 36.241501, 28.075735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540028, -0.516359, 0.664638,
		0.768398, -0.624692, 0.139011,
		0.343414, 0.585776, 0.734120,
		33.103416, 36.417233, 28.295971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161922, 35.504551, 28.282906>,  <32.863026, 36.007191, 27.782087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161922, 35.504551, 28.282906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051395, 35.845058, 28.461338>,  <32.985081, 36.049362, 28.568398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051395, 35.845058, 28.461338>,  <33.161922, 35.504551, 28.282906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051395, 35.845058, 28.461338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498035, -0.523799, 0.691083,
		0.821954, -0.031204, 0.568698,
		-0.276318, 0.851270, 0.446080,
		32.968498, 36.100441, 28.595161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157543, 35.254890, 28.972193>,  <33.161922, 35.504551, 28.282906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157543, 35.254890, 28.972193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960632, 35.602985, 28.979734>,  <32.842487, 35.811844, 28.984261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960632, 35.602985, 28.979734>,  <33.157543, 35.254890, 28.972193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960632, 35.602985, 28.979734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668638, -0.391926, 0.631916,
		0.557306, 0.298469, 0.774808,
		-0.492274, 0.870236, 0.018856,
		32.812950, 35.864056, 28.985392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012806, 35.352840, 29.629822>,  <33.157543, 35.254890, 28.972193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012806, 35.352840, 29.629822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722706, 35.573292, 29.464767>,  <32.548645, 35.705563, 29.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722706, 35.573292, 29.464767>,  <33.012806, 35.352840, 29.629822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722706, 35.573292, 29.464767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672495, -0.438661, 0.596093,
		0.147516, 0.709813, 0.688770,
		-0.725251, 0.551128, -0.412636,
		32.505131, 35.738628, 29.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673668, 35.516094, 30.203257>,  <33.012806, 35.352840, 29.629822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673668, 35.516094, 30.203257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436863, 35.566723, 29.884888>,  <32.294781, 35.597099, 29.693867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436863, 35.566723, 29.884888>,  <32.673668, 35.516094, 30.203257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436863, 35.566723, 29.884888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794513, -0.257273, 0.550053,
		-0.135146, 0.958013, 0.252876,
		-0.592017, 0.126576, -0.795924,
		32.259258, 35.604694, 29.646111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033905, 35.848427, 30.513456>,  <32.673668, 35.516094, 30.203257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033905, 35.848427, 30.513456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913536, 35.745583, 30.146122>,  <31.841316, 35.683876, 29.925722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913536, 35.745583, 30.146122>,  <32.033905, 35.848427, 30.513456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913536, 35.745583, 30.146122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737384, -0.547920, 0.395030,
		-0.604741, 0.796039, -0.024710,
		-0.300920, -0.257112, -0.918336,
		31.823259, 35.668449, 29.870621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665150, 36.276463, 30.460730>,  <32.033905, 35.848427, 30.513456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665150, 36.276463, 30.460730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635281, 36.429066, 30.829268>,  <32.617359, 36.520630, 31.050390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635281, 36.429066, 30.829268>,  <32.665150, 36.276463, 30.460730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635281, 36.429066, 30.829268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327079, 0.882181, -0.338786,
		-0.942042, 0.276053, -0.190661,
		-0.074675, 0.381512, 0.921343,
		32.612877, 36.543518, 31.105671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337360, 36.887402, 30.408873>,  <32.665150, 36.276463, 30.460730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337360, 36.887402, 30.408873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541073, 36.915012, 30.752005>,  <32.663300, 36.931580, 30.957884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541073, 36.915012, 30.752005>,  <32.337360, 36.887402, 30.408873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541073, 36.915012, 30.752005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221369, 0.952730, -0.208091,
		-0.831643, 0.295873, 0.469925,
		0.509280, 0.069031, 0.857828,
		32.693855, 36.935722, 31.009354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244576, 37.581234, 30.794029>,  <32.337360, 36.887402, 30.408873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244576, 37.581234, 30.794029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586647, 37.433197, 30.939192>,  <32.791889, 37.344376, 31.026289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586647, 37.433197, 30.939192>,  <32.244576, 37.581234, 30.794029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586647, 37.433197, 30.939192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430891, 0.896748, -0.100882,
		-0.288100, 0.242645, 0.926349,
		0.855179, -0.370091, 0.362907,
		32.843201, 37.322170, 31.048063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424133, 37.905636, 31.356819>,  <32.244576, 37.581234, 30.794029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424133, 37.905636, 31.356819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770351, 37.768250, 31.211020>,  <32.978085, 37.685818, 31.123541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770351, 37.768250, 31.211020>,  <32.424133, 37.905636, 31.356819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770351, 37.768250, 31.211020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355800, 0.933902, -0.035115,
		0.352465, -0.099294, 0.930542,
		0.865549, -0.343464, -0.364497,
		33.030018, 37.665211, 31.101671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779408, 38.430763, 31.563793>,  <32.424133, 37.905636, 31.356819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779408, 38.430763, 31.563793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047661, 38.245796, 31.331783>,  <33.208611, 38.134815, 31.192577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047661, 38.245796, 31.331783>,  <32.779408, 38.430763, 31.563793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047661, 38.245796, 31.331783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542926, 0.838781, -0.040968,
		0.505456, -0.287435, 0.813570,
		0.670631, -0.462416, -0.580023,
		33.248852, 38.107071, 31.157776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437038, 38.695194, 31.757870>,  <32.779408, 38.430763, 31.563793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437038, 38.695194, 31.757870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498291, 38.558445, 31.386995>,  <33.535042, 38.476395, 31.164471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498291, 38.558445, 31.386995>,  <33.437038, 38.695194, 31.757870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498291, 38.558445, 31.386995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462310, 0.854031, -0.238541,
		0.873396, -0.392119, 0.288828,
		0.153132, -0.341869, -0.927187,
		33.544231, 38.455883, 31.108839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115509, 38.650215, 31.664427>,  <33.437038, 38.695194, 31.757870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115509, 38.650215, 31.664427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979816, 38.650780, 31.288147>,  <33.898399, 38.651119, 31.062378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979816, 38.650780, 31.288147>,  <34.115509, 38.650215, 31.664427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979816, 38.650780, 31.288147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592417, 0.777108, -0.212475,
		0.730726, -0.629366, -0.264456,
		-0.339235, 0.001408, -0.940700,
		33.878044, 38.651203, 31.005938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739906, 38.752754, 31.303469>,  <34.115509, 38.650215, 31.664427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739906, 38.752754, 31.303469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463078, 38.813889, 31.021282>,  <34.296982, 38.850567, 30.851971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463078, 38.813889, 31.021282>,  <34.739906, 38.752754, 31.303469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463078, 38.813889, 31.021282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564052, 0.724364, -0.396411,
		0.450430, -0.672263, -0.587516,
		-0.692068, 0.152834, -0.705467,
		34.255459, 38.859737, 30.809643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101170, 38.769489, 30.581570>,  <34.739906, 38.752754, 31.303469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101170, 38.769489, 30.581570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754642, 38.966568, 30.548742>,  <34.546726, 39.084816, 30.529045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754642, 38.966568, 30.548742>,  <35.101170, 38.769489, 30.581570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754642, 38.966568, 30.548742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459872, 0.722640, -0.516051,
		-0.194952, -0.484807, -0.852617,
		-0.866321, 0.492700, -0.082069,
		34.494747, 39.114380, 30.524122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127529, 39.134960, 29.884212>,  <35.101170, 38.769489, 30.581570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127529, 39.134960, 29.884212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882404, 39.324848, 30.136911>,  <34.735329, 39.438782, 30.288530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882404, 39.324848, 30.136911>,  <35.127529, 39.134960, 29.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882404, 39.324848, 30.136911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326252, 0.880122, -0.344883,
		-0.719736, -0.005241, -0.694228,
		-0.612813, 0.474718, 0.631746,
		34.698559, 39.467262, 30.326435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865898, 39.604595, 29.555571>,  <35.127529, 39.134960, 29.884212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865898, 39.604595, 29.555571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794292, 39.752747, 29.920156>,  <34.751331, 39.841637, 30.138908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794292, 39.752747, 29.920156>,  <34.865898, 39.604595, 29.555571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794292, 39.752747, 29.920156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429953, 0.862734, -0.266138,
		-0.884927, 0.344246, -0.313686,
		-0.179010, 0.370383, 0.911467,
		34.740589, 39.863861, 30.193596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609852, 40.248173, 29.439676>,  <34.865898, 39.604595, 29.555571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609852, 40.248173, 29.439676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737198, 40.234066, 29.818602>,  <34.813606, 40.225601, 30.045956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737198, 40.234066, 29.818602>,  <34.609852, 40.248173, 29.439676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737198, 40.234066, 29.818602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569495, 0.805996, -0.161389,
		-0.757839, 0.590870, 0.276683,
		0.318365, -0.035263, 0.947312,
		34.832706, 40.223488, 30.102795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476086, 40.849747, 29.621523>,  <34.609852, 40.248173, 29.439676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476086, 40.849747, 29.621523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748901, 40.730331, 29.888567>,  <34.912590, 40.658684, 30.048794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748901, 40.730331, 29.888567>,  <34.476086, 40.849747, 29.621523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748901, 40.730331, 29.888567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585068, 0.770449, -0.253188,
		-0.438774, 0.563280, 0.700138,
		0.682036, -0.298536, 0.667610,
		34.953514, 40.640770, 30.088850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667599, 41.447865, 30.050522>,  <34.476086, 40.849747, 29.621523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667599, 41.447865, 30.050522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982189, 41.210350, 30.118481>,  <35.170944, 41.067841, 30.159256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982189, 41.210350, 30.118481>,  <34.667599, 41.447865, 30.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982189, 41.210350, 30.118481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609697, 0.702533, -0.367037,
		0.098583, 0.392254, 0.914559,
		0.786480, -0.593787, 0.169898,
		35.218132, 41.032215, 30.169451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219891, 41.897427, 30.344557>,  <34.667599, 41.447865, 30.050522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219891, 41.897427, 30.344557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415493, 41.583408, 30.192465>,  <35.532856, 41.394997, 30.101210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415493, 41.583408, 30.192465>,  <35.219891, 41.897427, 30.344557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415493, 41.583408, 30.192465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565829, 0.617235, -0.546680,
		0.663860, 0.052185, 0.746034,
		0.489007, -0.785046, -0.380230,
		35.562195, 41.347893, 30.078396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896122, 42.126812, 30.342049>,  <35.219891, 41.897427, 30.344557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896122, 42.126812, 30.342049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884266, 41.817924, 30.088184>,  <35.877151, 41.632591, 29.935865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884266, 41.817924, 30.088184>,  <35.896122, 42.126812, 30.342049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884266, 41.817924, 30.088184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504760, 0.536472, -0.676325,
		0.862751, -0.340400, 0.373884,
		-0.029643, -0.772221, -0.634662,
		35.875374, 41.586258, 29.897785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500343, 41.930046, 30.187639>,  <35.896122, 42.126812, 30.342049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500343, 41.930046, 30.187639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324707, 41.774605, 29.863619>,  <36.219326, 41.681339, 29.669207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324707, 41.774605, 29.863619>,  <36.500343, 41.930046, 30.187639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324707, 41.774605, 29.863619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618800, 0.522868, -0.586255,
		0.651371, -0.758682, 0.010879,
		-0.439093, -0.388602, -0.810053,
		36.192978, 41.658024, 29.620604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072701, 41.807789, 29.679432>,  <36.500343, 41.930046, 30.187639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072701, 41.807789, 29.679432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726826, 41.807865, 29.478508>,  <36.519302, 41.807911, 29.357954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726826, 41.807865, 29.478508>,  <37.072701, 41.807789, 29.679432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726826, 41.807865, 29.478508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465480, 0.376165, -0.801142,
		0.188794, -0.926553, -0.325357,
		-0.864688, 0.000196, -0.502309,
		36.467419, 41.807922, 29.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279106, 41.772507, 28.999659>,  <37.072701, 41.807789, 29.679432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279106, 41.772507, 28.999659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902805, 41.896946, 28.945704>,  <36.677025, 41.971611, 28.913330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902805, 41.896946, 28.945704>,  <37.279106, 41.772507, 28.999659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902805, 41.896946, 28.945704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304989, 0.602481, -0.737562,
		-0.148188, -0.735006, -0.661670,
		-0.940756, 0.311100, -0.134888,
		36.620579, 41.990276, 28.905237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237667, 41.811348, 28.285883>,  <37.279106, 41.772507, 28.999659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237667, 41.811348, 28.285883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947609, 42.048920, 28.425259>,  <36.773575, 42.191463, 28.508884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947609, 42.048920, 28.425259>,  <37.237667, 41.811348, 28.285883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947609, 42.048920, 28.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183794, 0.654600, -0.733294,
		-0.663611, -0.467707, -0.583842,
		-0.725149, 0.593928, 0.348438,
		36.730064, 42.227097, 28.529789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815407, 41.988491, 27.664423>,  <37.237667, 41.811348, 28.285883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815407, 41.988491, 27.664423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761341, 42.266068, 27.947315>,  <36.728901, 42.432613, 28.117050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761341, 42.266068, 27.947315>,  <36.815407, 41.988491, 27.664423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761341, 42.266068, 27.947315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384485, 0.694583, -0.608050,
		-0.913182, 0.189735, -0.360691,
		-0.135162, 0.693942, 0.707231,
		36.720791, 42.474251, 28.159485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596310, 42.560001, 27.295473>,  <36.815407, 41.988491, 27.664423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596310, 42.560001, 27.295473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691078, 42.692009, 27.660976>,  <36.747940, 42.771214, 27.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691078, 42.692009, 27.660976>,  <36.596310, 42.560001, 27.295473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691078, 42.692009, 27.660976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405575, 0.821064, -0.401699,
		-0.882824, 0.465768, 0.060676,
		0.236917, 0.330021, 0.913759,
		36.762154, 42.791016, 27.935104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495502, 43.291775, 27.343834>,  <36.596310, 42.560001, 27.295473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495502, 43.291775, 27.343834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761986, 43.201717, 27.628222>,  <36.921875, 43.147682, 27.798853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761986, 43.201717, 27.628222>,  <36.495502, 43.291775, 27.343834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761986, 43.201717, 27.628222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651132, 0.640383, -0.407354,
		-0.363580, 0.734317, 0.573226,
		0.666211, -0.225140, 0.710967,
		36.961849, 43.134174, 27.841511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636742, 43.875690, 27.583101>,  <36.495502, 43.291775, 27.343834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636742, 43.875690, 27.583101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941242, 43.628368, 27.661283>,  <37.123943, 43.479977, 27.708193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941242, 43.628368, 27.661283>,  <36.636742, 43.875690, 27.583101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941242, 43.628368, 27.661283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639368, 0.665375, -0.385337,
		0.108204, 0.418304, 0.901839,
		0.761249, -0.618302, 0.195454,
		37.169617, 43.442879, 27.719919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120739, 44.321117, 27.791950>,  <36.636742, 43.875690, 27.583101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120739, 44.321117, 27.791950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312069, 43.989964, 27.674776>,  <37.426868, 43.791271, 27.604471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312069, 43.989964, 27.674776>,  <37.120739, 44.321117, 27.791950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312069, 43.989964, 27.674776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690536, 0.560663, -0.456964,
		0.542551, 0.016296, 0.839864,
		0.478328, -0.827884, -0.292936,
		37.455566, 43.741600, 27.586895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745411, 44.642555, 27.693169>,  <37.120739, 44.321117, 27.791950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745411, 44.642555, 27.693169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856686, 44.262878, 27.634321>,  <37.923450, 44.035072, 27.599012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856686, 44.262878, 27.634321>,  <37.745411, 44.642555, 27.693169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856686, 44.262878, 27.634321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936685, 0.301998, -0.177251,
		0.212674, -0.088494, 0.973108,
		0.278191, -0.949192, -0.147118,
		37.940144, 43.978119, 27.590185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407120, 44.491348, 28.129660>,  <37.745411, 44.642555, 27.693169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407120, 44.491348, 28.129660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378834, 44.267803, 27.799164>,  <38.361862, 44.133675, 27.600866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378834, 44.267803, 27.799164>,  <38.407120, 44.491348, 28.129660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378834, 44.267803, 27.799164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952096, 0.209237, -0.223009,
		0.297511, -0.802427, 0.517298,
		-0.070711, -0.558865, -0.826238,
		38.357620, 44.100143, 27.551292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020294, 44.154022, 28.078989>,  <38.407120, 44.491348, 28.129660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020294, 44.154022, 28.078989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897167, 44.140148, 27.698664>,  <38.823292, 44.131824, 27.470469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897167, 44.140148, 27.698664>,  <39.020294, 44.154022, 28.078989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897167, 44.140148, 27.698664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907663, 0.288952, -0.304393,
		0.285296, -0.956715, -0.057465,
		-0.307823, -0.034683, -0.950811,
		38.804821, 44.129742, 27.413420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601913, 43.846268, 27.731071>,  <39.020294, 44.154022, 28.078989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601913, 43.846268, 27.731071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382454, 44.057854, 27.472095>,  <39.250778, 44.184807, 27.316710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382454, 44.057854, 27.472095>,  <39.601913, 43.846268, 27.731071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382454, 44.057854, 27.472095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831493, 0.426001, -0.356571,
		0.087195, -0.733973, -0.673558,
		-0.548650, 0.528967, -0.647439,
		39.217857, 44.216545, 27.277864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113373, 44.015774, 27.342907>,  <39.601913, 43.846268, 27.731071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113373, 44.015774, 27.342907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815575, 44.264156, 27.244818>,  <39.636894, 44.413185, 27.185965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815575, 44.264156, 27.244818>,  <40.113373, 44.015774, 27.342907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815575, 44.264156, 27.244818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666205, 0.667038, -0.333513,
		-0.043526, -0.411667, -0.910294,
		-0.744497, 0.620959, -0.245221,
		39.592224, 44.450443, 27.171251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302692, 44.294769, 26.640379>,  <40.113373, 44.015774, 27.342907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302692, 44.294769, 26.640379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063740, 44.560143, 26.820595>,  <39.920368, 44.719368, 26.928724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063740, 44.560143, 26.820595>,  <40.302692, 44.294769, 26.640379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063740, 44.560143, 26.820595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687946, 0.712665, -0.137258,
		-0.412145, 0.227950, -0.882143,
		-0.597384, 0.663436, 0.450538,
		39.884525, 44.759174, 26.955757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292824, 44.816292, 26.195560>,  <40.302692, 44.294769, 26.640379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292824, 44.816292, 26.195560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196144, 44.981606, 26.546736>,  <40.138138, 45.080795, 26.757441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196144, 44.981606, 26.546736>,  <40.292824, 44.816292, 26.195560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196144, 44.981606, 26.546736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677078, 0.719935, -0.152505,
		-0.695088, 0.557573, -0.453834,
		-0.241698, 0.413285, 0.877939,
		40.123634, 45.105591, 26.810118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120457, 45.519070, 26.034185>,  <40.292824, 44.816292, 26.195560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120457, 45.519070, 26.034185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223343, 45.509216, 26.420601>,  <40.285072, 45.503304, 26.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223343, 45.509216, 26.420601>,  <40.120457, 45.519070, 26.034185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223343, 45.509216, 26.420601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682219, 0.712639, -0.163471,
		-0.684412, 0.701098, 0.200106,
		0.257212, -0.024634, 0.966041,
		40.300507, 45.501827, 26.710413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260307, 46.163429, 26.121939>,  <40.120457, 45.519070, 26.034185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260307, 46.163429, 26.121939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444145, 46.002548, 26.438675>,  <40.554447, 45.906021, 26.628716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444145, 46.002548, 26.438675>,  <40.260307, 46.163429, 26.121939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444145, 46.002548, 26.438675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677437, 0.735317, -0.019706,
		-0.574327, 0.545478, 0.610412,
		0.459595, -0.402198, 0.791839,
		40.582024, 45.881889, 26.676228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501617, 46.709221, 26.488083>,  <40.260307, 46.163429, 26.121939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501617, 46.709221, 26.488083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708847, 46.410275, 26.654478>,  <40.833183, 46.230907, 26.754314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708847, 46.410275, 26.654478>,  <40.501617, 46.709221, 26.488083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708847, 46.410275, 26.654478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787020, 0.606980, 0.110343,
		-0.334963, 0.270225, 0.902650,
		0.518073, -0.747365, 0.415988,
		40.864269, 46.186066, 26.779274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810802, 46.962406, 27.177097>,  <40.501617, 46.709221, 26.488083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810802, 46.962406, 27.177097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025627, 46.645779, 27.060495>,  <41.154522, 46.455803, 26.990534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025627, 46.645779, 27.060495>,  <40.810802, 46.962406, 27.177097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025627, 46.645779, 27.060495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841751, 0.525401, 0.124129,
		0.054900, -0.312040, 0.948481,
		0.537066, -0.791571, -0.291505,
		41.186749, 46.408306, 26.973043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239197, 46.954796, 27.688120>,  <40.810802, 46.962406, 27.177097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239197, 46.954796, 27.688120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379337, 46.760643, 27.367706>,  <41.463421, 46.644150, 27.175459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379337, 46.760643, 27.367706>,  <41.239197, 46.954796, 27.688120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379337, 46.760643, 27.367706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877463, 0.469219, 0.099457,
		0.327586, -0.737723, 0.590298,
		0.350351, -0.485384, -0.801034,
		41.484444, 46.615028, 27.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813004, 46.595131, 27.986320>,  <41.239197, 46.954796, 27.688120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813004, 46.595131, 27.986320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823090, 46.687878, 27.597353>,  <41.829144, 46.743526, 27.363972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823090, 46.687878, 27.597353>,  <41.813004, 46.595131, 27.986320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823090, 46.687878, 27.597353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905568, 0.406735, 0.120468,
		0.423450, -0.883632, -0.199712,
		0.025220, 0.231865, -0.972421,
		41.830654, 46.757439, 27.305626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485062, 46.516403, 27.824806>,  <41.813004, 46.595131, 27.986320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485062, 46.516403, 27.824806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836437, 46.462845, 28.008295>,  <43.047260, 46.430710, 28.118389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836437, 46.462845, 28.008295>,  <42.485062, 46.516403, 27.824806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836437, 46.462845, 28.008295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354864, -0.825679, 0.438549,
		0.320038, -0.548021, -0.772819,
		0.878434, -0.133893, 0.458722,
		43.099968, 46.422676, 28.145912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700623, 45.873005, 27.611242>,  <42.485062, 46.516403, 27.824806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700623, 45.873005, 27.611242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878380, 45.960712, 27.958675>,  <42.985035, 46.013336, 28.167135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.878380, 45.960712, 27.958675>,  <42.700623, 45.873005, 27.611242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878380, 45.960712, 27.958675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438825, -0.792005, 0.424454,
		0.780990, -0.569780, -0.255743,
		0.444395, 0.219268, 0.868582,
		43.011700, 46.026493, 28.219250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073029, 45.180927, 28.015289>,  <42.700623, 45.873005, 27.611242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073029, 45.180927, 28.015289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987263, 45.476276, 28.271048>,  <42.935802, 45.653488, 28.424503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987263, 45.476276, 28.271048>,  <43.073029, 45.180927, 28.015289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987263, 45.476276, 28.271048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347697, -0.669439, 0.656474,
		0.912762, -0.081559, 0.400268,
		-0.214413, 0.738376, 0.639396,
		42.922939, 45.697788, 28.462866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078007, 44.775837, 28.572536>,  <43.073029, 45.180927, 28.015289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078007, 44.775837, 28.572536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902134, 45.114113, 28.693527>,  <42.796608, 45.317078, 28.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902134, 45.114113, 28.693527>,  <43.078007, 44.775837, 28.572536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902134, 45.114113, 28.693527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530549, -0.516294, 0.672278,
		0.724702, 0.135113, 0.675685,
		-0.439686, 0.845686, 0.302476,
		42.770229, 45.367817, 28.784269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180553, 44.801632, 29.343540>,  <43.078007, 44.775837, 28.572536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180553, 44.801632, 29.343540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860302, 45.018471, 29.241467>,  <42.668152, 45.148575, 29.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860302, 45.018471, 29.241467>,  <43.180553, 44.801632, 29.343540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860302, 45.018471, 29.241467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561759, -0.531062, 0.634350,
		0.208360, 0.651233, 0.729714,
		-0.800633, 0.542097, -0.255183,
		42.620113, 45.181099, 29.164911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831276, 44.899715, 29.926115>,  <43.180553, 44.801632, 29.343540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831276, 44.899715, 29.926115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549107, 44.975143, 29.652819>,  <42.379807, 45.020401, 29.488840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549107, 44.975143, 29.652819>,  <42.831276, 44.899715, 29.926115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549107, 44.975143, 29.652819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664040, -0.512900, 0.544044,
		-0.247847, 0.837482, 0.487027,
		-0.705424, 0.188566, -0.683242,
		42.337479, 45.031712, 29.447845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202618, 45.048923, 30.346260>,  <42.831276, 44.899715, 29.926115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202618, 45.048923, 30.346260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081371, 44.958794, 29.975887>,  <42.008625, 44.904716, 29.753664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081371, 44.958794, 29.975887>,  <42.202618, 45.048923, 30.346260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081371, 44.958794, 29.975887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768694, -0.516466, 0.377322,
		-0.563231, 0.826131, -0.016653,
		-0.303117, -0.225321, -0.925932,
		41.990437, 44.891197, 29.698107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425243, 45.130177, 30.398611>,  <42.202618, 45.048923, 30.346260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425243, 45.130177, 30.398611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505119, 44.921974, 30.066538>,  <41.553043, 44.797054, 29.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505119, 44.921974, 30.066538>,  <41.425243, 45.130177, 30.398611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505119, 44.921974, 30.066538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840842, -0.526036, 0.127561,
		-0.503102, 0.672580, -0.542701,
		0.199685, -0.520502, -0.830183,
		41.565025, 44.765823, 29.817482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797173, 45.155861, 29.910521>,  <41.425243, 45.130177, 30.398611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797173, 45.155861, 29.910521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026165, 44.833046, 29.852613>,  <41.163559, 44.639359, 29.817869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026165, 44.833046, 29.852613>,  <40.797173, 45.155861, 29.910521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026165, 44.833046, 29.852613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813473, -0.581152, 0.022900,
		-0.102614, 0.104656, -0.989200,
		0.572479, -0.807037, -0.144769,
		41.197910, 44.590935, 29.809183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334209, 44.801239, 29.410124>,  <40.797173, 45.155861, 29.910521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334209, 44.801239, 29.410124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573399, 44.524315, 29.571684>,  <40.716911, 44.358158, 29.668619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573399, 44.524315, 29.571684>,  <40.334209, 44.801239, 29.410124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573399, 44.524315, 29.571684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794342, -0.579154, 0.183308,
		0.107013, -0.430446, -0.896250,
		0.597971, -0.692313, 0.403898,
		40.752789, 44.316620, 29.692854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006714, 44.112885, 29.168474>,  <40.334209, 44.801239, 29.410124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006714, 44.112885, 29.168474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254593, 43.995201, 29.459517>,  <40.403320, 43.924591, 29.634142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254593, 43.995201, 29.459517>,  <40.006714, 44.112885, 29.168474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254593, 43.995201, 29.459517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619777, -0.752220, 0.223699,
		0.481504, -0.589580, -0.648498,
		0.619702, -0.294212, 0.727605,
		40.440502, 43.906937, 29.677797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257153, 43.360374, 29.053478>,  <40.006714, 44.112885, 29.168474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257153, 43.360374, 29.053478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316959, 43.445908, 29.439623>,  <40.352844, 43.497227, 29.671309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316959, 43.445908, 29.439623>,  <40.257153, 43.360374, 29.053478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316959, 43.445908, 29.439623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475850, -0.840272, 0.259827,
		0.866725, -0.498214, -0.023881,
		0.149516, 0.213834, 0.965360,
		40.361813, 43.510059, 29.729231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430893, 42.727188, 29.269001>,  <40.257153, 43.360374, 29.053478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430893, 42.727188, 29.269001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 42.923363, 29.602510>,  <40.268612, 43.041069, 29.802616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 42.923363, 29.602510>,  <40.430893, 42.727188, 29.269001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329468, 42.923363, 29.602510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615698, -0.746624, 0.251931,
		0.746072, -0.449473, 0.491275,
		-0.253561, 0.490435, 0.833774,
		40.253399, 43.070492, 29.852642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421764, 42.221870, 29.780420>,  <40.430893, 42.727188, 29.269001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421764, 42.221870, 29.780420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212650, 42.522545, 29.941252>,  <40.087181, 42.702950, 30.037750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212650, 42.522545, 29.941252>,  <40.421764, 42.221870, 29.780420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212650, 42.522545, 29.941252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691760, -0.649706, 0.315199,
		0.498162, -0.113361, 0.859642,
		-0.522783, 0.751686, 0.402077,
		40.055817, 42.748051, 30.061874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336773, 41.985966, 30.406769>,  <40.421764, 42.221870, 29.780420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336773, 41.985966, 30.406769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045307, 42.251156, 30.338049>,  <39.870426, 42.410271, 30.296816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045307, 42.251156, 30.338049>,  <40.336773, 41.985966, 30.406769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045307, 42.251156, 30.338049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656296, -0.604236, 0.451856,
		0.195758, 0.442005, 0.875392,
		-0.728666, 0.662971, -0.171802,
		39.826706, 42.450047, 30.286509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989819, 41.917358, 31.035385>,  <40.336773, 41.985966, 30.406769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989819, 41.917358, 31.035385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732563, 42.098049, 30.788055>,  <39.578209, 42.206463, 30.639658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732563, 42.098049, 30.788055>,  <39.989819, 41.917358, 31.035385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732563, 42.098049, 30.788055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737800, -0.581716, 0.342429,
		-0.205005, 0.676427, 0.707403,
		-0.643136, 0.451723, -0.618323,
		39.539623, 42.233566, 30.602558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488800, 42.115364, 31.400002>,  <39.989819, 41.917358, 31.035385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488800, 42.115364, 31.400002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287189, 42.122684, 31.054604>,  <39.166225, 42.127075, 30.847364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287189, 42.122684, 31.054604>,  <39.488800, 42.115364, 31.400002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287189, 42.122684, 31.054604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795122, -0.400227, 0.455631,
		-0.337258, 0.916233, 0.216272,
		-0.504022, 0.018297, -0.863497,
		39.135983, 42.128174, 30.795555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843189, 42.276699, 31.626301>,  <39.488800, 42.115364, 31.400002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843189, 42.276699, 31.626301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779873, 42.126484, 31.261024>,  <38.741882, 42.036354, 31.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779873, 42.126484, 31.261024>,  <38.843189, 42.276699, 31.626301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779873, 42.126484, 31.261024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813872, -0.474033, 0.336014,
		-0.559067, 0.796409, -0.230602,
		-0.158291, -0.375535, -0.913191,
		38.732384, 42.013824, 30.987068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133923, 42.173107, 31.636082>,  <38.843189, 42.276699, 31.626301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133923, 42.173107, 31.636082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240829, 41.974918, 31.305489>,  <38.304974, 41.856003, 31.107132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240829, 41.974918, 31.305489>,  <38.133923, 42.173107, 31.636082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240829, 41.974918, 31.305489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811826, -0.577842, 0.083887,
		-0.519140, 0.648540, -0.556677,
		0.267267, -0.495474, -0.826483,
		38.321011, 41.826275, 31.057543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550938, 42.164803, 31.263477>,  <38.133923, 42.173107, 31.636082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550938, 42.164803, 31.263477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793129, 41.871277, 31.140240>,  <37.938442, 41.695164, 31.066298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793129, 41.871277, 31.140240>,  <37.550938, 42.164803, 31.263477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793129, 41.871277, 31.140240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734336, -0.664357, 0.139215,
		-0.306840, 0.141951, -0.941116,
		0.605475, -0.733812, -0.308092,
		37.974773, 41.651134, 31.047812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225452, 41.827263, 30.817390>,  <37.550938, 42.164803, 31.263477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225452, 41.827263, 30.817390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479649, 41.550705, 30.954863>,  <37.632168, 41.384769, 31.037346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479649, 41.550705, 30.954863>,  <37.225452, 41.827263, 30.817390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479649, 41.550705, 30.954863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771143, -0.590570, 0.237834,
		0.038530, -0.416169, -0.908471,
		0.635494, -0.691397, 0.343681,
		37.670296, 41.343285, 31.057966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148479, 41.131283, 30.476900>,  <37.225452, 41.827263, 30.817390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148479, 41.131283, 30.476900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350464, 41.063103, 30.815359>,  <37.471653, 41.022194, 31.018435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350464, 41.063103, 30.815359>,  <37.148479, 41.131283, 30.476900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350464, 41.063103, 30.815359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650339, -0.719686, 0.243127,
		0.567518, -0.673051, -0.474263,
		0.504957, -0.170453, 0.846147,
		37.501949, 41.011967, 31.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040283, 40.403278, 30.537155>,  <37.148479, 41.131283, 30.476900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040283, 40.403278, 30.537155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157207, 40.527264, 30.899035>,  <37.227360, 40.601654, 31.116163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157207, 40.527264, 30.899035>,  <37.040283, 40.403278, 30.537155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157207, 40.527264, 30.899035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510823, -0.749145, 0.421712,
		0.808465, -0.585411, -0.060646,
		0.292308, 0.309960, 0.904699,
		37.244900, 40.620251, 31.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358505, 39.759037, 30.887199>,  <37.040283, 40.403278, 30.537155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358505, 39.759037, 30.887199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261623, 40.024639, 31.170164>,  <37.203495, 40.184002, 31.339943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261623, 40.024639, 31.170164>,  <37.358505, 39.759037, 30.887199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261623, 40.024639, 31.170164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418222, -0.729355, 0.541417,
		0.875459, -0.164721, 0.454356,
		-0.242203, 0.664009, 0.707410,
		37.188961, 40.223843, 31.382387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497879, 39.431400, 31.520266>,  <37.358505, 39.759037, 30.887199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497879, 39.431400, 31.520266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239738, 39.723148, 31.611071>,  <37.084854, 39.898197, 31.665554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239738, 39.723148, 31.611071>,  <37.497879, 39.431400, 31.520266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239738, 39.723148, 31.611071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417634, -0.585724, 0.694628,
		0.639608, 0.353474, 0.682610,
		-0.645355, 0.729371, 0.227011,
		37.046131, 39.941959, 31.679174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406036, 39.350376, 32.203011>,  <37.497879, 39.431400, 31.520266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406036, 39.350376, 32.203011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094425, 39.589279, 32.126705>,  <36.907459, 39.732620, 32.080921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094425, 39.589279, 32.126705>,  <37.406036, 39.350376, 32.203011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094425, 39.589279, 32.126705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522403, -0.450066, 0.724249,
		0.346710, 0.663867, 0.662626,
		-0.779030, 0.597262, -0.190764,
		36.860718, 39.768459, 32.069477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048679, 39.468304, 32.835308>,  <37.406036, 39.350376, 32.203011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048679, 39.468304, 32.835308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769749, 39.561813, 32.564281>,  <36.602390, 39.617920, 32.401665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769749, 39.561813, 32.564281>,  <37.048679, 39.468304, 32.835308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769749, 39.561813, 32.564281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715242, -0.288412, 0.636591,
		-0.046600, 0.928531, 0.368320,
		-0.697322, 0.233773, -0.677564,
		36.560551, 39.631947, 32.361012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530773, 39.790874, 33.181431>,  <37.048679, 39.468304, 32.835308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530773, 39.790874, 33.181431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367226, 39.628185, 32.854652>,  <36.269096, 39.530571, 32.658585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367226, 39.628185, 32.854652>,  <36.530773, 39.790874, 33.181431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367226, 39.628185, 32.854652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751045, -0.358572, 0.554398,
		-0.518421, 0.840240, -0.158860,
		-0.408864, -0.406723, -0.816949,
		36.244568, 39.506168, 32.609566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830223, 39.975487, 33.180374>,  <36.530773, 39.790874, 33.181431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830223, 39.975487, 33.180374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830246, 39.660706, 32.933567>,  <35.830261, 39.471836, 32.785484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830246, 39.660706, 32.933567>,  <35.830223, 39.975487, 33.180374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830246, 39.660706, 32.933567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836807, -0.337854, 0.430823,
		-0.547498, 0.516299, -0.658545,
		0.000059, -0.786950, -0.617017,
		35.830265, 39.424622, 32.748463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130527, 39.832176, 33.184910>,  <35.830223, 39.975487, 33.180374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130527, 39.832176, 33.184910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319080, 39.529797, 33.003212>,  <35.432213, 39.348370, 32.894192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319080, 39.529797, 33.003212>,  <35.130527, 39.832176, 33.184910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319080, 39.529797, 33.003212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617606, -0.650630, 0.441863,
		-0.629569, 0.072253, -0.773577,
		0.471387, -0.755949, -0.454241,
		35.460495, 39.303013, 32.866940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553181, 39.443707, 32.868603>,  <35.130527, 39.832176, 33.184910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553181, 39.443707, 32.868603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865177, 39.195889, 32.903877>,  <35.052376, 39.047199, 32.925041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865177, 39.195889, 32.903877>,  <34.553181, 39.443707, 32.868603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865177, 39.195889, 32.903877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608658, -0.718324, 0.336967,
		-0.145420, -0.316507, -0.937377,
		0.779993, -0.619544, 0.088185,
		35.099174, 39.010025, 32.930332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421055, 38.779385, 32.615692>,  <34.553181, 39.443707, 32.868603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421055, 38.779385, 32.615692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699547, 38.689270, 32.888309>,  <34.866642, 38.635201, 33.051880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699547, 38.689270, 32.888309>,  <34.421055, 38.779385, 32.615692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699547, 38.689270, 32.888309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583598, -0.730471, 0.354719,
		0.417937, -0.644716, -0.640055,
		0.696235, -0.225284, 0.681545,
		34.908417, 38.621685, 33.092773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213398, 38.153332, 32.739044>,  <34.421055, 38.779385, 32.615692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213398, 38.153332, 32.739044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457233, 38.215946, 33.049889>,  <34.603535, 38.253513, 33.236397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457233, 38.215946, 33.049889>,  <34.213398, 38.153332, 32.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457233, 38.215946, 33.049889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589960, -0.565200, 0.576625,
		0.529485, -0.809967, -0.252189,
		0.609584, 0.156533, 0.777113,
		34.640110, 38.262905, 33.283024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395332, 37.463181, 33.066093>,  <34.213398, 38.153332, 32.739044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395332, 37.463181, 33.066093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459938, 37.740143, 33.347374>,  <34.498699, 37.906319, 33.516144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459938, 37.740143, 33.347374>,  <34.395332, 37.463181, 33.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459938, 37.740143, 33.347374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551904, -0.527338, 0.646001,
		0.818117, -0.492437, 0.296967,
		0.161512, 0.692402, 0.703203,
		34.508392, 37.947865, 33.558334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387558, 37.083416, 33.651764>,  <34.395332, 37.463181, 33.066093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387558, 37.083416, 33.651764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382450, 37.443455, 33.825966>,  <34.379383, 37.659477, 33.930485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382450, 37.443455, 33.825966>,  <34.387558, 37.083416, 33.651764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382450, 37.443455, 33.825966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431122, -0.397932, 0.809804,
		0.902203, -0.177412, 0.393134,
		-0.012771, 0.900097, 0.435502,
		34.378620, 37.713486, 33.956615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613945, 36.983734, 34.373402>,  <34.387558, 37.083416, 33.651764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613945, 36.983734, 34.373402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433437, 37.340576, 34.382397>,  <34.325130, 37.554680, 34.387794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433437, 37.340576, 34.382397>,  <34.613945, 36.983734, 34.373402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433437, 37.340576, 34.382397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605862, -0.324786, 0.726254,
		0.655199, 0.314112, 0.687058,
		-0.451272, 0.892103, 0.022491,
		34.298058, 37.608208, 34.389145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653713, 37.326336, 35.087742>,  <34.613945, 36.983734, 34.373402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653713, 37.326336, 35.087742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340919, 37.480370, 34.891697>,  <34.153244, 37.572792, 34.774071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340919, 37.480370, 34.891697>,  <34.653713, 37.326336, 35.087742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340919, 37.480370, 34.891697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619748, -0.396591, 0.677220,
		0.066415, 0.833321, 0.548785,
		-0.781985, 0.385086, -0.490110,
		34.106323, 37.595894, 34.744663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439671, 37.690182, 35.555428>,  <34.653713, 37.326336, 35.087742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439671, 37.690182, 35.555428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144909, 37.665047, 35.286198>,  <33.968052, 37.649967, 35.124660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144909, 37.665047, 35.286198>,  <34.439671, 37.690182, 35.555428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144909, 37.665047, 35.286198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589115, -0.428635, 0.684993,
		-0.331544, 0.901291, 0.278845,
		-0.736900, -0.062833, -0.673075,
		33.923840, 37.646198, 35.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828579, 38.046230, 35.779140>,  <34.439671, 37.690182, 35.555428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828579, 38.046230, 35.779140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683483, 37.779224, 35.519032>,  <33.596428, 37.619022, 35.362968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683483, 37.779224, 35.519032>,  <33.828579, 38.046230, 35.779140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683483, 37.779224, 35.519032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655033, -0.313696, 0.687406,
		-0.662838, 0.675296, -0.323452,
		-0.362737, -0.667511, -0.650270,
		33.574661, 37.578972, 35.323952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124039, 38.005650, 35.993458>,  <33.828579, 38.046230, 35.779140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124039, 38.005650, 35.993458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171452, 37.693115, 35.748360>,  <33.199902, 37.505596, 35.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171452, 37.693115, 35.748360>,  <33.124039, 38.005650, 35.993458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171452, 37.693115, 35.748360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547602, -0.566213, 0.616064,
		-0.828300, 0.262517, -0.494978,
		0.118535, -0.781337, -0.612749,
		33.207012, 37.458714, 35.564533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473557, 37.707802, 35.960922>,  <33.124039, 38.005650, 35.993458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473557, 37.707802, 35.960922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757111, 37.440067, 35.871952>,  <32.927242, 37.279427, 35.818569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757111, 37.440067, 35.871952>,  <32.473557, 37.707802, 35.960922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757111, 37.440067, 35.871952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399195, -0.640718, 0.655838,
		-0.581485, -0.376125, -0.721391,
		0.708886, -0.669336, -0.222421,
		32.969776, 37.239265, 35.805225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149017, 37.116486, 35.724773>,  <32.473557, 37.707802, 35.960922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149017, 37.116486, 35.724773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485580, 37.023521, 35.919922>,  <32.687519, 36.967743, 36.037010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485580, 37.023521, 35.919922>,  <32.149017, 37.116486, 35.724773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485580, 37.023521, 35.919922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502051, -0.670229, 0.546569,
		0.199957, -0.704824, -0.680618,
		0.841405, -0.232414, 0.487875,
		32.738003, 36.953796, 36.066284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382141, 36.391586, 35.657101>,  <32.149017, 37.116486, 35.724773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382141, 36.391586, 35.657101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422115, 36.556404, 36.019367>,  <32.446098, 36.655296, 36.236729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422115, 36.556404, 36.019367>,  <32.382141, 36.391586, 35.657101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422115, 36.556404, 36.019367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665158, -0.649275, 0.368791,
		0.739985, -0.639265, 0.209193,
		0.099931, 0.412046, 0.905667,
		32.452095, 36.680019, 36.291069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551609, 35.840431, 36.077663>,  <32.382141, 36.391586, 35.657101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551609, 35.840431, 36.077663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358898, 36.133984, 36.269211>,  <32.243271, 36.310116, 36.384140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358898, 36.133984, 36.269211>,  <32.551609, 35.840431, 36.077663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358898, 36.133984, 36.269211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555012, -0.678436, 0.481338,
		0.678123, -0.033877, 0.734167,
		-0.481779, 0.733878, 0.478865,
		32.214363, 36.354149, 36.412872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589405, 35.982277, 36.824806>,  <32.551609, 35.840431, 36.077663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589405, 35.982277, 36.824806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224037, 36.050262, 36.676872>,  <32.004818, 36.091053, 36.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224037, 36.050262, 36.676872>,  <32.589405, 35.982277, 36.824806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224037, 36.050262, 36.676872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339793, -0.818630, 0.463018,
		-0.224060, 0.548597, 0.805506,
		-0.913421, 0.169962, -0.369831,
		31.950010, 36.101250, 36.565922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035797, 36.160797, 37.210030>,  <32.589405, 35.982277, 36.824806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035797, 36.160797, 37.210030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857597, 35.938210, 36.929493>,  <31.750677, 35.804657, 36.761169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857597, 35.938210, 36.929493>,  <32.035797, 36.160797, 37.210030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857597, 35.938210, 36.929493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177707, -0.712822, 0.678457,
		-0.877469, 0.426884, 0.218673,
		-0.445498, -0.556466, -0.701340,
		31.723948, 35.771271, 36.719090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410746, 35.869183, 37.684963>,  <32.035797, 36.160797, 37.210030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410746, 35.869183, 37.684963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455864, 35.555653, 37.929226>,  <31.482935, 35.367535, 38.075783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455864, 35.555653, 37.929226>,  <31.410746, 35.869183, 37.684963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455864, 35.555653, 37.929226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975341, 0.204676, 0.082562,
		-0.189700, 0.586282, 0.787583,
		0.112795, -0.783824, 0.610653,
		31.489702, 35.320507, 38.112423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840824, 36.107590, 38.226440>,  <31.410746, 35.869183, 37.684963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840824, 36.107590, 38.226440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885910, 35.710690, 38.205540>,  <31.912962, 35.472549, 38.193001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885910, 35.710690, 38.205540>,  <31.840824, 36.107590, 38.226440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885910, 35.710690, 38.205540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993507, 0.111730, 0.021449,
		-0.015445, -0.054328, 0.998404,
		0.112717, -0.992252, -0.052250,
		31.919725, 35.413013, 38.189865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310341, 35.885227, 38.748524>,  <31.840824, 36.107590, 38.226440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310341, 35.885227, 38.748524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309902, 35.605171, 38.462921>,  <32.309639, 35.437138, 38.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309902, 35.605171, 38.462921>,  <32.310341, 35.885227, 38.748524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309902, 35.605171, 38.462921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995447, 0.067288, -0.067511,
		0.095311, -0.710828, 0.696878,
		-0.001097, -0.700140, -0.714005,
		32.309574, 35.395130, 38.248718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925552, 35.646156, 38.690193>,  <32.310341, 35.885227, 38.748524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925552, 35.646156, 38.690193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801979, 35.450787, 38.363754>,  <32.727837, 35.333565, 38.167892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801979, 35.450787, 38.363754>,  <32.925552, 35.646156, 38.690193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801979, 35.450787, 38.363754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948773, -0.218053, -0.228655,
		-0.066272, -0.844925, 0.530763,
		-0.308931, -0.488420, -0.816093,
		32.709301, 35.304260, 38.118927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765869, 36.240772, 38.151451>,  <32.925552, 35.646156, 38.690193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765869, 36.240772, 38.151451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116215, 36.196987, 38.339443>,  <33.326424, 36.170715, 38.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116215, 36.196987, 38.339443>,  <32.765869, 36.240772, 38.151451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116215, 36.196987, 38.339443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359642, 0.797436, -0.484514,
		-0.321743, 0.593392, 0.737812,
		0.875865, -0.109459, 0.469978,
		33.378975, 36.164150, 38.480438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942192, 36.883457, 38.481068>,  <32.765869, 36.240772, 38.151451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942192, 36.883457, 38.481068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290379, 36.695816, 38.421417>,  <33.499290, 36.583233, 38.385628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290379, 36.695816, 38.421417>,  <32.942192, 36.883457, 38.481068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290379, 36.695816, 38.421417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371347, 0.824685, -0.426610,
		0.323105, 0.315971, 0.892057,
		0.870462, -0.469102, -0.149125,
		33.551517, 36.555084, 38.376678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460869, 37.332809, 38.664925>,  <32.942192, 36.883457, 38.481068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460869, 37.332809, 38.664925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613834, 37.080086, 38.395233>,  <33.705612, 36.928452, 38.233418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613834, 37.080086, 38.395233>,  <33.460869, 37.332809, 38.664925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613834, 37.080086, 38.395233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502907, 0.754462, -0.421749,
		0.775142, -0.177791, 0.606255,
		0.382413, -0.631805, -0.674227,
		33.728558, 36.890545, 38.192966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575779, 37.280029, 39.450653>,  <33.460869, 37.332809, 38.664925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575779, 37.280029, 39.450653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536453, 37.645046, 39.609447>,  <33.512859, 37.864056, 39.704723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536453, 37.645046, 39.609447>,  <33.575779, 37.280029, 39.450653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536453, 37.645046, 39.609447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550698, -0.282379, 0.785489,
		0.828894, 0.295843, -0.474775,
		-0.098315, 0.912545, 0.396983,
		33.506958, 37.918808, 39.728542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214664, 37.539234, 39.672298>,  <33.575779, 37.280029, 39.450653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214664, 37.539234, 39.672298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908978, 37.688236, 39.882900>,  <33.725567, 37.777637, 40.009262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908978, 37.688236, 39.882900>,  <34.214664, 37.539234, 39.672298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908978, 37.688236, 39.882900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414677, -0.341446, 0.843479,
		0.493977, 0.862932, 0.106468,
		-0.764218, 0.372509, 0.526504,
		33.679710, 37.799988, 40.040852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331898, 37.924255, 40.321064>,  <34.214664, 37.539234, 39.672298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331898, 37.924255, 40.321064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984974, 37.727982, 40.354530>,  <33.776817, 37.610218, 40.374611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984974, 37.727982, 40.354530>,  <34.331898, 37.924255, 40.321064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984974, 37.727982, 40.354530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382843, -0.550162, 0.742127,
		-0.318118, 0.675687, 0.665017,
		-0.867313, -0.490682, 0.083666,
		33.724781, 37.580776, 40.379631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101871, 37.953518, 41.034542>,  <34.331898, 37.924255, 40.321064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101871, 37.953518, 41.034542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986465, 37.622753, 40.841476>,  <33.917221, 37.424294, 40.725636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986465, 37.622753, 40.841476>,  <34.101871, 37.953518, 41.034542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986465, 37.622753, 40.841476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452599, -0.562013, 0.692312,
		-0.843749, -0.018711, 0.536412,
		-0.288517, -0.826917, -0.482667,
		33.899910, 37.374680, 40.696678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677155, 37.438904, 41.485661>,  <34.101871, 37.953518, 41.034542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677155, 37.438904, 41.485661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902622, 37.275394, 41.198555>,  <34.037903, 37.177288, 41.026291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902622, 37.275394, 41.198555>,  <33.677155, 37.438904, 41.485661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902622, 37.275394, 41.198555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418102, -0.608222, 0.674727,
		-0.712370, -0.680420, -0.171925,
		0.563666, -0.408773, -0.717764,
		34.071720, 37.152763, 40.983227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597614, 36.737946, 41.656319>,  <33.677155, 37.438904, 41.485661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597614, 36.737946, 41.656319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926098, 36.788116, 41.433651>,  <34.123188, 36.818218, 41.300049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926098, 36.788116, 41.433651>,  <33.597614, 36.737946, 41.656319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926098, 36.788116, 41.433651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470948, -0.699841, 0.537056,
		-0.322219, -0.703199, -0.633787,
		0.821208, 0.125431, -0.556673,
		34.172459, 36.825745, 41.266647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887215, 36.030758, 41.422913>,  <33.597614, 36.737946, 41.656319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887215, 36.030758, 41.422913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197865, 36.282745, 41.423630>,  <34.384254, 36.433937, 41.424061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197865, 36.282745, 41.423630>,  <33.887215, 36.030758, 41.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197865, 36.282745, 41.423630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569699, -0.703535, 0.424831,
		0.268887, -0.328914, -0.905271,
		0.776622, 0.629964, 0.001790,
		34.430851, 36.471733, 41.424168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224003, 35.525368, 41.172104>,  <33.887215, 36.030758, 41.422913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224003, 35.525368, 41.172104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383144, 35.817101, 41.394741>,  <34.478630, 35.992138, 41.528324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383144, 35.817101, 41.394741>,  <34.224003, 35.525368, 41.172104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383144, 35.817101, 41.394741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568090, -0.672216, 0.474762,
		0.720405, 0.127305, -0.681770,
		0.397857, 0.729328, 0.556589,
		34.502502, 36.035900, 41.561718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855469, 35.258972, 41.414314>,  <34.224003, 35.525368, 41.172104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855469, 35.258972, 41.414314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768574, 35.561272, 41.661427>,  <34.716438, 35.742653, 41.809692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768574, 35.561272, 41.661427>,  <34.855469, 35.258972, 41.414314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768574, 35.561272, 41.661427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480159, -0.468293, 0.741720,
		0.849856, 0.457762, -0.261149,
		-0.217237, 0.755748, 0.617780,
		34.703403, 35.787994, 41.846760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443295, 35.752457, 41.715599>,  <34.855469, 35.258972, 41.414314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443295, 35.752457, 41.715599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172398, 35.684872, 42.002037>,  <35.009861, 35.644321, 42.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172398, 35.684872, 42.002037>,  <35.443295, 35.752457, 41.715599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172398, 35.684872, 42.002037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726963, -0.303731, 0.615851,
		0.113446, 0.937656, 0.328528,
		-0.677241, -0.168962, 0.716098,
		34.969227, 35.634182, 42.216866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532513, 36.053364, 42.418449>,  <35.443295, 35.752457, 41.715599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532513, 36.053364, 42.418449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351315, 35.699604, 42.463413>,  <35.242596, 35.487347, 42.490391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351315, 35.699604, 42.463413>,  <35.532513, 36.053364, 42.418449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351315, 35.699604, 42.463413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873369, -0.414927, 0.255073,
		-0.178945, 0.213720, 0.960366,
		-0.452996, -0.884398, 0.112407,
		35.215416, 35.434284, 42.497135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574028, 35.837559, 43.136818>,  <35.532513, 36.053364, 42.418449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574028, 35.837559, 43.136818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549118, 35.522678, 42.891399>,  <35.534172, 35.333752, 42.744148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549118, 35.522678, 42.891399>,  <35.574028, 35.837559, 43.136818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549118, 35.522678, 42.891399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762170, -0.434402, 0.479993,
		-0.644375, -0.437735, 0.627032,
		-0.062274, -0.787200, -0.613546,
		35.530437, 35.286518, 42.707336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361881, 35.551247, 43.119316>,  <35.574028, 35.837559, 43.136818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361881, 35.551247, 43.119316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532883, 35.839825, 42.901413>,  <36.635483, 36.012974, 42.770672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532883, 35.839825, 42.901413>,  <36.361881, 35.551247, 43.119316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532883, 35.839825, 42.901413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711985, -0.640021, -0.288878,
		-0.557065, -0.264363, -0.787268,
		0.427499, 0.721447, -0.544756,
		36.661133, 36.056259, 42.737988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213753, 35.368267, 42.325405>,  <36.361881, 35.551247, 43.119316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213753, 35.368267, 42.325405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529652, 35.569160, 42.466293>,  <36.719193, 35.689697, 42.550827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.529652, 35.569160, 42.466293>,  <36.213753, 35.368267, 42.325405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529652, 35.569160, 42.466293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611614, -0.600498, -0.515103,
		-0.047191, 0.622227, -0.781413,
		0.789748, 0.502231, 0.352225,
		36.766575, 35.719830, 42.571960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666782, 35.439434, 41.829746>,  <36.213753, 35.368267, 42.325405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666782, 35.439434, 41.829746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901791, 35.469376, 42.152042>,  <37.042797, 35.487339, 42.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901791, 35.469376, 42.152042>,  <36.666782, 35.439434, 41.829746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901791, 35.469376, 42.152042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650094, -0.636587, -0.414892,
		0.481869, 0.767564, -0.422667,
		0.587520, 0.074850, 0.805740,
		37.078045, 35.491829, 42.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392857, 35.568848, 41.548584>,  <36.666782, 35.439434, 41.829746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392857, 35.568848, 41.548584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420792, 35.410076, 41.914661>,  <37.437553, 35.314816, 42.134308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420792, 35.410076, 41.914661>,  <37.392857, 35.568848, 41.548584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420792, 35.410076, 41.914661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757839, -0.575476, -0.307421,
		0.648693, 0.715037, 0.260613,
		0.069841, -0.396924, 0.915190,
		37.441746, 35.291000, 42.189217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112408, 35.625748, 42.004330>,  <37.392857, 35.568848, 41.548584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112408, 35.625748, 42.004330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881660, 35.304039, 42.061420>,  <37.743210, 35.111015, 42.095673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881660, 35.304039, 42.061420>,  <38.112408, 35.625748, 42.004330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881660, 35.304039, 42.061420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615615, -0.542921, -0.571187,
		0.536876, -0.241638, 0.808316,
		-0.576872, -0.804268, 0.142725,
		37.708599, 35.062759, 42.104237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466408, 34.947021, 42.406155>,  <38.112408, 35.625748, 42.004330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466408, 34.947021, 42.406155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183784, 34.874714, 42.132481>,  <38.014210, 34.831329, 41.968277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183784, 34.874714, 42.132481>,  <38.466408, 34.947021, 42.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183784, 34.874714, 42.132481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626898, -0.608417, -0.486650,
		-0.328296, -0.772756, 0.543203,
		-0.706555, -0.180768, -0.684180,
		37.971817, 34.820484, 41.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568859, 34.116665, 42.407070>,  <38.466408, 34.947021, 42.406155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568859, 34.116665, 42.407070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343128, 33.973724, 42.109390>,  <38.207691, 33.887959, 41.930782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343128, 33.973724, 42.109390>,  <38.568859, 34.116665, 42.407070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343128, 33.973724, 42.109390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561843, 0.494238, -0.663371,
		0.604870, -0.792482, -0.078136,
		-0.564327, -0.357353, -0.744200,
		38.173832, 33.866520, 41.886131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899479, 33.786327, 41.756088>,  <38.568859, 34.116665, 42.407070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899479, 33.786327, 41.756088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551109, 33.971058, 41.688904>,  <38.342087, 34.081898, 41.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551109, 33.971058, 41.688904>,  <38.899479, 33.786327, 41.756088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551109, 33.971058, 41.688904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464419, 0.661762, -0.588546,
		-0.160662, -0.590579, -0.790825,
		-0.870921, 0.461831, -0.167956,
		38.289833, 34.109608, 41.638515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612713, 33.759010, 41.047523>,  <38.899479, 33.786327, 41.756088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612713, 33.759010, 41.047523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522411, 34.092125, 41.249714>,  <38.468231, 34.291992, 41.371029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522411, 34.092125, 41.249714>,  <38.612713, 33.759010, 41.047523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522411, 34.092125, 41.249714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706678, 0.497145, -0.503442,
		-0.670552, 0.243553, -0.700744,
		-0.225757, 0.832784, 0.505475,
		38.454685, 34.341961, 41.401356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334103, 34.436794, 40.755135>,  <38.612713, 33.759010, 41.047523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334103, 34.436794, 40.755135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564751, 34.511044, 41.073395>,  <38.703140, 34.555592, 41.264351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564751, 34.511044, 41.073395>,  <38.334103, 34.436794, 40.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564751, 34.511044, 41.073395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673042, 0.444157, -0.591387,
		-0.463165, 0.876510, 0.131180,
		0.576621, 0.185620, 0.795646,
		38.737736, 34.566730, 41.312088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496719, 35.174549, 40.856667>,  <38.334103, 34.436794, 40.755135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496719, 35.174549, 40.856667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798260, 34.954296, 41.000061>,  <38.979183, 34.822144, 41.086098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798260, 34.954296, 41.000061>,  <38.496719, 35.174549, 40.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798260, 34.954296, 41.000061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650803, 0.550744, -0.522624,
		0.090340, 0.627285, 0.773533,
		0.753853, -0.550631, 0.358485,
		39.024414, 34.789108, 41.107605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998642, 35.630131, 41.235149>,  <38.496719, 35.174549, 40.856667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998642, 35.630131, 41.235149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161560, 35.315449, 41.049591>,  <39.259312, 35.126640, 40.938255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161560, 35.315449, 41.049591>,  <38.998642, 35.630131, 41.235149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161560, 35.315449, 41.049591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526635, 0.617292, -0.584471,
		0.746167, -0.006250, 0.665729,
		0.407296, -0.786709, -0.463895,
		39.283749, 35.079437, 40.910423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686302, 35.558186, 41.433949>,  <38.998642, 35.630131, 41.235149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686302, 35.558186, 41.433949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605274, 35.458099, 41.055244>,  <39.556656, 35.398048, 40.828022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605274, 35.458099, 41.055244>,  <39.686302, 35.558186, 41.433949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605274, 35.458099, 41.055244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610576, 0.723597, -0.321875,
		0.765611, -0.643273, 0.006193,
		-0.202572, -0.250213, -0.946762,
		39.544502, 35.383034, 40.771217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303734, 35.266975, 40.885754>,  <39.686302, 35.558186, 41.433949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303734, 35.266975, 40.885754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014866, 35.450520, 40.678711>,  <39.841545, 35.560646, 40.554485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014866, 35.450520, 40.678711>,  <40.303734, 35.266975, 40.885754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014866, 35.450520, 40.678711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662829, 0.673040, -0.328138,
		0.197800, -0.580056, -0.790197,
		-0.722172, 0.458860, -0.517605,
		39.798214, 35.588177, 40.523430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456425, 35.403141, 40.092926>,  <40.303734, 35.266975, 40.885754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456425, 35.403141, 40.092926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236965, 35.680847, 40.279251>,  <40.105289, 35.847469, 40.391045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236965, 35.680847, 40.279251>,  <40.456425, 35.403141, 40.092926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236965, 35.680847, 40.279251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695523, 0.688191, -0.206497,
		-0.463930, 0.210687, -0.860453,
		-0.548650, 0.694265, 0.465810,
		40.072369, 35.889126, 40.418995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429630, 36.045547, 39.668331>,  <40.456425, 35.403141, 40.092926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429630, 36.045547, 39.668331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356369, 36.130859, 40.052200>,  <40.312412, 36.182045, 40.282520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356369, 36.130859, 40.052200>,  <40.429630, 36.045547, 39.668331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356369, 36.130859, 40.052200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579548, 0.811940, -0.069844,
		-0.794091, 0.543383, -0.272312,
		-0.183149, 0.213280, 0.959671,
		40.301426, 36.194843, 40.340103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522854, 35.477867, 39.255592>,  <40.429630, 36.045547, 39.668331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522854, 35.477867, 39.255592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408115, 35.311398, 38.910450>,  <40.339272, 35.211517, 38.703365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408115, 35.311398, 38.910450>,  <40.522854, 35.477867, 39.255592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408115, 35.311398, 38.910450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782103, -0.621868, 0.039936,
		-0.553202, -0.663385, 0.503873,
		-0.286850, -0.416173, -0.862854,
		40.322060, 35.186546, 38.651592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460007, 34.799019, 39.271980>,  <40.522854, 35.477867, 39.255592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460007, 34.799019, 39.271980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605495, 34.870277, 38.906254>,  <40.692791, 34.913033, 38.686817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605495, 34.870277, 38.906254>,  <40.460007, 34.799019, 39.271980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605495, 34.870277, 38.906254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722051, -0.674044, 0.155909,
		-0.588513, -0.716888, -0.373798,
		0.363725, 0.178146, -0.914313,
		40.714611, 34.923721, 38.631958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685486, 34.118523, 39.026470>,  <40.460007, 34.799019, 39.271980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685486, 34.118523, 39.026470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859932, 34.419258, 38.828667>,  <40.964600, 34.599701, 38.709984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859932, 34.419258, 38.828667>,  <40.685486, 34.118523, 39.026470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859932, 34.419258, 38.828667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889429, -0.443675, 0.109858,
		-0.136806, -0.487741, -0.862202,
		0.436119, 0.751839, -0.494509,
		40.990768, 34.644810, 38.680313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100433, 33.970856, 38.455044>,  <40.685486, 34.118523, 39.026470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100433, 33.970856, 38.455044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247822, 34.292259, 38.642063>,  <41.336254, 34.485100, 38.754276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247822, 34.292259, 38.642063>,  <41.100433, 33.970856, 38.455044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247822, 34.292259, 38.642063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779846, -0.540929, 0.315019,
		0.506031, 0.248540, -0.825930,
		0.368474, 0.803507, 0.467550,
		41.358364, 34.533310, 38.782330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855732, 33.966496, 38.460804>,  <41.100433, 33.970856, 38.455044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855732, 33.966496, 38.460804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740814, 34.186989, 38.774136>,  <41.671864, 34.319286, 38.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740814, 34.186989, 38.774136>,  <41.855732, 33.966496, 38.460804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740814, 34.186989, 38.774136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751543, -0.377291, 0.541142,
		0.593837, 0.744174, -0.305880,
		-0.287298, 0.551232, 0.783328,
		41.654625, 34.352360, 39.009132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487370, 34.269699, 38.702396>,  <41.855732, 33.966496, 38.460804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487370, 34.269699, 38.702396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214916, 34.242538, 38.993999>,  <42.051445, 34.226242, 39.168961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214916, 34.242538, 38.993999>,  <42.487370, 34.269699, 38.702396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214916, 34.242538, 38.993999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693865, -0.377671, 0.613119,
		0.233696, 0.923447, 0.304355,
		-0.681129, -0.067898, 0.729008,
		42.010578, 34.222168, 39.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867306, 34.492218, 37.992599>,  <42.487370, 34.269699, 38.702396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867306, 34.492218, 37.992599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159637, 34.745338, 37.890266>,  <43.335037, 34.897209, 37.828865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.159637, 34.745338, 37.890266>,  <42.867306, 34.492218, 37.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159637, 34.745338, 37.890266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261321, -0.605662, -0.751588,
		-0.630552, 0.482430, -0.608001,
		0.730832, 0.632799, -0.255832,
		43.378887, 34.935177, 37.813519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857174, 34.706532, 37.325645>,  <42.867306, 34.492218, 37.992599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857174, 34.706532, 37.325645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236549, 34.713211, 37.452248>,  <43.464176, 34.717216, 37.528210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236549, 34.713211, 37.452248>,  <42.857174, 34.706532, 37.325645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236549, 34.713211, 37.452248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266755, -0.581344, -0.768688,
		0.171165, 0.813486, -0.555826,
		0.948443, 0.016697, 0.316507,
		43.521084, 34.718220, 37.547199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507324, 34.985493, 36.818192>,  <42.857174, 34.706532, 37.325645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507324, 34.985493, 36.818192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633530, 34.707798, 37.076954>,  <43.709251, 34.541183, 37.232212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633530, 34.707798, 37.076954>,  <43.507324, 34.985493, 36.818192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633530, 34.707798, 37.076954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271362, -0.587252, -0.762560,
		0.909294, 0.416143, 0.003103,
		0.315512, -0.694233, 0.646910,
		43.728184, 34.499527, 37.271027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284275, 34.892632, 36.829697>,  <43.507324, 34.985493, 36.818192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284275, 34.892632, 36.829697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096115, 34.553829, 36.928738>,  <43.983219, 34.350548, 36.988163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096115, 34.553829, 36.928738>,  <44.284275, 34.892632, 36.829697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096115, 34.553829, 36.928738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413386, -0.459396, -0.786172,
		0.779639, -0.267461, 0.566240,
		-0.470399, -0.847006, 0.247599,
		43.954994, 34.299728, 37.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717709, 34.354240, 36.989014>,  <44.284275, 34.892632, 36.829697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717709, 34.354240, 36.989014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376690, 34.245255, 36.810612>,  <44.172077, 34.179863, 36.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376690, 34.245255, 36.810612>,  <44.717709, 34.354240, 36.989014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376690, 34.245255, 36.810612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514684, -0.289313, -0.807092,
		0.090872, -0.917638, 0.386888,
		-0.852550, -0.272467, -0.446003,
		44.120926, 34.163513, 36.676811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812069, 33.611595, 36.764904>,  <44.717709, 34.354240, 36.989014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812069, 33.611595, 36.764904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567318, 33.817741, 36.524902>,  <44.420467, 33.941429, 36.380901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567318, 33.817741, 36.524902>,  <44.812069, 33.611595, 36.764904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567318, 33.817741, 36.524902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574509, -0.231805, -0.784987,
		-0.543643, -0.825021, -0.154249,
		-0.611875, 0.515370, -0.600002,
		44.383755, 33.972351, 36.344902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583549, 33.116249, 36.177544>,  <44.812069, 33.611595, 36.764904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583549, 33.116249, 36.177544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547028, 33.478619, 36.012154>,  <44.525116, 33.696041, 35.912922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.547028, 33.478619, 36.012154>,  <44.583549, 33.116249, 36.177544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547028, 33.478619, 36.012154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279492, -0.375204, -0.883802,
		-0.955797, -0.196258, -0.218941,
		-0.091306, 0.905928, -0.413471,
		44.519634, 33.750397, 35.888111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083298, 33.118492, 35.509556>,  <44.583549, 33.116249, 36.177544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083298, 33.118492, 35.509556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381710, 33.384842, 35.512325>,  <44.560757, 33.544651, 35.513985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381710, 33.384842, 35.512325>,  <44.083298, 33.118492, 35.509556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381710, 33.384842, 35.512325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198277, -0.212200, -0.956900,
		-0.635707, 0.715249, -0.290336,
		0.746031, 0.665875, 0.006921,
		44.605518, 33.584606, 35.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058041, 33.724957, 34.983540>,  <44.083298, 33.118492, 35.509556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058041, 33.724957, 34.983540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437855, 33.623928, 35.057930>,  <44.665745, 33.563309, 35.102562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437855, 33.623928, 35.057930>,  <44.058041, 33.724957, 34.983540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437855, 33.623928, 35.057930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134132, -0.208989, -0.968675,
		0.283528, 0.944738, -0.164564,
		0.949537, -0.252574, 0.185974,
		44.722717, 33.548157, 35.113724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.533501, 34.067883, 34.661003>,  <44.058041, 33.724957, 34.983540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.533501, 34.067883, 34.661003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734959, 33.725216, 34.705662>,  <44.855835, 33.519615, 34.732456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734959, 33.725216, 34.705662>,  <44.533501, 34.067883, 34.661003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734959, 33.725216, 34.705662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082660, -0.080851, -0.993293,
		0.859947, 0.509495, 0.030092,
		0.503645, -0.856667, 0.111643,
		44.886051, 33.468216, 34.739155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120613, 34.027817, 34.165527>,  <44.533501, 34.067883, 34.661003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120613, 34.027817, 34.165527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982407, 33.669994, 34.278938>,  <44.899483, 33.455299, 34.346985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982407, 33.669994, 34.278938>,  <45.120613, 34.027817, 34.165527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982407, 33.669994, 34.278938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406417, -0.414972, -0.814017,
		0.845840, -0.166026, 0.506943,
		-0.345515, -0.894558, 0.283524,
		44.878754, 33.401627, 34.363995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731953, 33.447071, 34.273571>,  <45.120613, 34.027817, 34.165527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731953, 33.447071, 34.273571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371071, 33.319977, 34.156898>,  <45.154541, 33.243721, 34.086895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371071, 33.319977, 34.156898>,  <45.731953, 33.447071, 34.273571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371071, 33.319977, 34.156898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418992, -0.485119, -0.767531,
		0.102376, -0.814678, 0.570805,
		-0.902200, -0.317740, -0.291679,
		45.100410, 33.224655, 34.069393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716568, 32.646839, 34.177605>,  <45.731953, 33.447071, 34.273571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716568, 32.646839, 34.177605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401279, 32.799404, 33.984425>,  <45.212109, 32.890942, 33.868519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401279, 32.799404, 33.984425>,  <45.716568, 32.646839, 34.177605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401279, 32.799404, 33.984425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182346, -0.604778, -0.775238,
		-0.587755, -0.699123, 0.407151,
		-0.788222, 0.381407, -0.482943,
		45.164814, 32.913826, 33.839542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359432, 32.922470, 34.429741>,  <45.716568, 32.646839, 34.177605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359432, 32.922470, 34.429741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578342, 33.018555, 34.109043>,  <46.709690, 33.076206, 33.916626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578342, 33.018555, 34.109043>,  <46.359432, 32.922470, 34.429741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578342, 33.018555, 34.109043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535045, 0.636212, 0.555843,
		0.643602, -0.733164, 0.219651,
		0.547269, 0.240218, -0.801743,
		46.742523, 33.090618, 33.868523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111454, 32.834827, 34.556889>,  <46.359432, 32.922470, 34.429741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111454, 32.834827, 34.556889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007923, 33.115715, 34.291592>,  <46.945805, 33.284248, 34.132412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007923, 33.115715, 34.291592>,  <47.111454, 32.834827, 34.556889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007923, 33.115715, 34.291592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508995, 0.682730, 0.524217,
		0.820933, -0.201905, -0.534138,
		-0.258830, 0.702220, -0.663245,
		46.930275, 33.326382, 34.092617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763004, 33.100842, 34.269585>,  <47.111454, 32.834827, 34.556889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763004, 33.100842, 34.269585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452332, 33.352798, 34.268318>,  <47.265930, 33.503971, 34.267559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.452332, 33.352798, 34.268318>,  <47.763004, 33.100842, 34.269585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.452332, 33.352798, 34.268318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547421, 0.677458, 0.491305,
		0.311611, 0.379854, -0.870982,
		-0.776678, 0.629890, -0.003163,
		47.219330, 33.541767, 34.267368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.993561, 33.662167, 34.116138>,  <47.763004, 33.100842, 34.269585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.993561, 33.662167, 34.116138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650208, 33.763851, 34.294373>,  <47.444195, 33.824863, 34.401314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.650208, 33.763851, 34.294373>,  <47.993561, 33.662167, 34.116138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.650208, 33.763851, 34.294373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472295, 0.730693, 0.492975,
		-0.200268, 0.633612, -0.747280,
		-0.858388, 0.254210, 0.445587,
		47.392693, 33.840115, 34.428047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822399, 34.470886, 34.078197>,  <47.993561, 33.662167, 34.116138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822399, 34.470886, 34.078197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667068, 34.279564, 34.393265>,  <47.573868, 34.164772, 34.582306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.667068, 34.279564, 34.393265>,  <47.822399, 34.470886, 34.078197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.667068, 34.279564, 34.393265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313038, 0.735453, 0.600930,
		-0.866723, 0.479929, -0.135869,
		-0.388328, -0.478307, 0.787669,
		47.550571, 34.136070, 34.629566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502071, 35.063492, 34.423622>,  <47.822399, 34.470886, 34.078197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502071, 35.063492, 34.423622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.675011, 34.760864, 34.619854>,  <47.778774, 34.579288, 34.737595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.675011, 34.760864, 34.619854>,  <47.502071, 35.063492, 34.423622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.675011, 34.760864, 34.619854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488455, 0.653833, 0.577854,
		-0.757947, -0.010208, 0.652236,
		0.432352, -0.756570, 0.490585,
		47.804718, 34.533894, 34.767029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.287582, 35.234409, 35.189491>,  <47.502071, 35.063492, 34.423622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.287582, 35.234409, 35.189491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609192, 35.005470, 35.125031>,  <47.802158, 34.868107, 35.086353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609192, 35.005470, 35.125031>,  <47.287582, 35.234409, 35.189491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609192, 35.005470, 35.125031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412902, 0.342418, 0.843956,
		-0.427855, -0.745098, 0.511634,
		0.804023, -0.572345, -0.161147,
		47.850399, 34.833767, 35.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.810814, 39.358315, 30.119593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824562, 39.302040, 29.723810>,  <40.832809, 39.268276, 29.486341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.824562, 39.302040, 29.723810>,  <40.810814, 39.358315, 30.119593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824562, 39.302040, 29.723810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572855, -0.814033, 0.095847,
		-0.818936, 0.563521, -0.108576,
		0.034372, -0.140691, -0.989457,
		40.834873, 39.259834, 29.426973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112782, 39.274033, 30.007008>,  <40.810814, 39.358315, 30.119593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112782, 39.274033, 30.007008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336887, 39.123882, 29.711657>,  <40.471352, 39.033794, 29.534445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.336887, 39.123882, 29.711657>,  <40.112782, 39.274033, 30.007008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336887, 39.123882, 29.711657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535359, -0.844311, 0.023010,
		-0.632059, 0.382406, -0.673993,
		0.560261, -0.375372, -0.738379,
		40.504967, 39.011272, 29.490143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602028, 39.068153, 29.436485>,  <40.112782, 39.274033, 30.007008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602028, 39.068153, 29.436485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946117, 38.865536, 29.413099>,  <40.152573, 38.743965, 29.399067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.946117, 38.865536, 29.413099>,  <39.602028, 39.068153, 29.436485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946117, 38.865536, 29.413099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497475, -0.858880, 0.121835,
		-0.111932, -0.075720, -0.990827,
		0.860227, -0.506549, -0.058467,
		40.204185, 38.713570, 29.395559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439972, 38.411926, 28.996538>,  <39.602028, 39.068153, 29.436485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439972, 38.411926, 28.996538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.770187, 38.333878, 29.208353>,  <39.968319, 38.287048, 29.335442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.770187, 38.333878, 29.208353>,  <39.439972, 38.411926, 28.996538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770187, 38.333878, 29.208353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387545, -0.878101, 0.280618,
		0.410233, -0.436882, -0.800527,
		0.825541, -0.195121, 0.529538,
		40.017849, 38.275341, 29.367214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504749, 37.724655, 28.928202>,  <39.439972, 38.411926, 28.996538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504749, 37.724655, 28.928202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752224, 37.806282, 29.231670>,  <39.900707, 37.855259, 29.413752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752224, 37.806282, 29.231670>,  <39.504749, 37.724655, 28.928202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752224, 37.806282, 29.231670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284630, -0.841853, 0.458550,
		0.732265, -0.499641, -0.462761,
		0.618687, 0.204065, 0.758673,
		39.937832, 37.867500, 29.459272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862000, 37.072502, 29.106350>,  <39.504749, 37.724655, 28.928202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862000, 37.072502, 29.106350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.861073, 37.314144, 29.425112>,  <39.860516, 37.459129, 29.616369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.861073, 37.314144, 29.425112>,  <39.862000, 37.072502, 29.106350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861073, 37.314144, 29.425112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282390, -0.764866, 0.578995,
		0.959297, -0.223697, 0.172364,
		-0.002316, 0.604102, 0.796904,
		39.860378, 37.495377, 29.664183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194477, 36.702557, 29.575310>,  <39.862000, 37.072502, 29.106350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194477, 36.702557, 29.575310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963058, 36.976406, 29.752651>,  <39.824207, 37.140717, 29.859056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963058, 36.976406, 29.752651>,  <40.194477, 36.702557, 29.575310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963058, 36.976406, 29.752651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408971, -0.713789, 0.568549,
		0.705707, 0.147614, 0.692956,
		-0.578550, 0.684628, 0.443356,
		39.789494, 37.181793, 29.885658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232227, 36.559864, 30.286842>,  <40.194477, 36.702557, 29.575310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232227, 36.559864, 30.286842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890270, 36.763729, 30.248058>,  <39.685097, 36.886047, 30.224787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.890270, 36.763729, 30.248058>,  <40.232227, 36.559864, 30.286842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890270, 36.763729, 30.248058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431916, -0.595632, 0.677253,
		0.287418, 0.620857, 0.729333,
		-0.854892, 0.509665, -0.096962,
		39.633804, 36.916630, 30.218969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786022, 36.320126, 30.817251>,  <40.232227, 36.559864, 30.286842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786022, 36.320126, 30.817251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515347, 36.564587, 30.653015>,  <39.352940, 36.711262, 30.554474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.515347, 36.564587, 30.653015>,  <39.786022, 36.320126, 30.817251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515347, 36.564587, 30.653015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726090, -0.461528, 0.509691,
		0.122000, 0.643028, 0.756063,
		-0.676690, 0.611152, -0.410590,
		39.312340, 36.747932, 30.529839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292091, 36.520470, 31.395481>,  <39.786022, 36.320126, 30.817251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292091, 36.520470, 31.395481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086716, 36.574890, 31.056574>,  <38.963490, 36.607544, 30.853230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086716, 36.574890, 31.056574>,  <39.292091, 36.520470, 31.395481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086716, 36.574890, 31.056574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814245, -0.388927, 0.430977,
		-0.270890, 0.911167, 0.310473,
		-0.513444, 0.136053, -0.847269,
		38.932682, 36.615707, 30.802393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705475, 36.887901, 31.538303>,  <39.292091, 36.520470, 31.395481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705475, 36.887901, 31.538303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642803, 36.661549, 31.214518>,  <38.605202, 36.525738, 31.020247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642803, 36.661549, 31.214518>,  <38.705475, 36.887901, 31.538303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642803, 36.661549, 31.214518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809777, -0.395611, 0.433306,
		-0.565432, 0.723374, -0.396253,
		-0.156681, -0.565882, -0.809462,
		38.595798, 36.491783, 30.971680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893848, 37.038525, 31.439531>,  <38.705475, 36.887901, 31.538303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893848, 37.038525, 31.439531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987213, 36.698345, 31.250956>,  <38.043232, 36.494236, 31.137810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987213, 36.698345, 31.250956>,  <37.893848, 37.038525, 31.439531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987213, 36.698345, 31.250956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816932, -0.434466, 0.379291,
		-0.527393, 0.296604, -0.796168,
		0.233408, -0.850450, -0.471439,
		38.057236, 36.443211, 31.109524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310154, 36.780151, 30.988550>,  <37.893848, 37.038525, 31.439531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310154, 36.780151, 30.988550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542538, 36.473068, 31.096704>,  <37.681969, 36.288818, 31.161598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.542538, 36.473068, 31.096704>,  <37.310154, 36.780151, 30.988550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542538, 36.473068, 31.096704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805482, -0.494539, 0.326542,
		-0.116971, -0.407502, -0.905682,
		0.580962, -0.767707, 0.270388,
		37.716827, 36.242756, 31.177820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871658, 36.261658, 30.989851>,  <37.310154, 36.780151, 30.988550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871658, 36.261658, 30.989851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179825, 36.059498, 31.145302>,  <37.364723, 35.938202, 31.238573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179825, 36.059498, 31.145302>,  <36.871658, 36.261658, 30.989851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179825, 36.059498, 31.145302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634859, -0.664022, 0.395004,
		0.058422, -0.551041, -0.832431,
		0.770416, -0.505399, 0.388626,
		37.410950, 35.907879, 31.261890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725197, 35.633068, 30.833712>,  <36.871658, 36.261658, 30.989851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725197, 35.633068, 30.833712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987152, 35.612930, 31.135330>,  <37.144325, 35.600845, 31.316301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987152, 35.612930, 31.135330>,  <36.725197, 35.633068, 30.833712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987152, 35.612930, 31.135330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594602, -0.650170, 0.472999,
		0.466446, -0.758119, -0.455723,
		0.654886, -0.050346, 0.754048,
		37.183617, 35.597828, 31.361546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624111, 34.966125, 31.130520>,  <36.725197, 35.633068, 30.833712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624111, 34.966125, 31.130520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823868, 35.167274, 31.412716>,  <36.943722, 35.287964, 31.582033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823868, 35.167274, 31.412716>,  <36.624111, 34.966125, 31.130520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823868, 35.167274, 31.412716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342033, -0.633724, 0.693835,
		0.796001, -0.587800, -0.144479,
		0.499396, 0.502877, 0.705492,
		36.973686, 35.318138, 31.624363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003723, 34.456429, 31.638691>,  <36.624111, 34.966125, 31.130520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003723, 34.456429, 31.638691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949028, 34.801949, 31.832659>,  <36.916210, 35.009262, 31.949039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949028, 34.801949, 31.832659>,  <37.003723, 34.456429, 31.638691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949028, 34.801949, 31.832659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284164, -0.503146, 0.816146,
		0.948975, -0.026199, 0.314261,
		-0.136737, 0.863804, 0.484918,
		36.908009, 35.061089, 31.978134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203938, 34.235455, 32.325665>,  <37.003723, 34.456429, 31.638691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203938, 34.235455, 32.325665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006248, 34.579128, 32.378654>,  <36.887634, 34.785332, 32.410450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006248, 34.579128, 32.378654>,  <37.203938, 34.235455, 32.325665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006248, 34.579128, 32.378654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472943, -0.393594, 0.788295,
		0.729430, 0.326941, 0.600868,
		-0.494223, 0.859182, 0.132474,
		36.857983, 34.836884, 32.418396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276546, 34.365921, 32.962093>,  <37.203938, 34.235455, 32.325665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276546, 34.365921, 32.962093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956276, 34.581108, 32.856636>,  <36.764114, 34.710220, 32.793362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956276, 34.581108, 32.856636>,  <37.276546, 34.365921, 32.962093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956276, 34.581108, 32.856636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516317, -0.396426, 0.759120,
		0.303868, 0.743932, 0.595171,
		-0.800676, 0.537969, -0.263644,
		36.716072, 34.742500, 32.777542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995304, 34.459641, 33.567307>,  <37.276546, 34.365921, 32.962093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995304, 34.459641, 33.567307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708126, 34.545414, 33.302410>,  <36.535820, 34.596878, 33.143471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708126, 34.545414, 33.302410>,  <36.995304, 34.459641, 33.567307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708126, 34.545414, 33.302410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696026, -0.207494, 0.687382,
		0.009989, 0.954444, 0.298224,
		-0.717947, 0.214438, -0.662245,
		36.492741, 34.609745, 33.103737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514481, 34.988453, 33.817932>,  <36.995304, 34.459641, 33.567307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514481, 34.988453, 33.817932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319939, 34.771980, 33.543537>,  <36.203213, 34.642097, 33.378899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.319939, 34.771980, 33.543537>,  <36.514481, 34.988453, 33.817932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319939, 34.771980, 33.543537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663451, -0.282165, 0.692976,
		-0.568591, 0.792149, -0.221819,
		-0.486351, -0.541186, -0.685988,
		36.174034, 34.609623, 33.337742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894291, 35.384560, 33.691875>,  <36.514481, 34.988453, 33.817932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894291, 35.384560, 33.691875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918896, 34.985321, 33.689892>,  <35.933659, 34.745777, 33.688702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918896, 34.985321, 33.689892>,  <35.894291, 35.384560, 33.691875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918896, 34.985321, 33.689892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806407, -0.052623, 0.589014,
		-0.588153, -0.032234, -0.808107,
		0.061511, -0.998094, -0.004957,
		35.937347, 34.685894, 33.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229355, 35.711346, 33.827534>,  <35.894291, 35.384560, 33.691875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229355, 35.711346, 33.827534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216637, 35.782200, 34.221004>,  <35.209003, 35.824711, 34.457085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216637, 35.782200, 34.221004>,  <35.229355, 35.711346, 33.827534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216637, 35.782200, 34.221004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785416, 0.613102, -0.085014,
		-0.618151, 0.769889, -0.158620,
		-0.031799, 0.177134, 0.983673,
		35.207096, 35.835339, 34.516106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081303, 36.474384, 33.999691>,  <35.229355, 35.711346, 33.827534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081303, 36.474384, 33.999691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267796, 36.311817, 34.314003>,  <35.379692, 36.214275, 34.502590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.267796, 36.311817, 34.314003>,  <35.081303, 36.474384, 33.999691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267796, 36.311817, 34.314003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668534, 0.743584, -0.012070,
		-0.579390, 0.530950, 0.618384,
		0.466229, -0.406417, 0.785784,
		35.407665, 36.189892, 34.549740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324196, 37.034592, 34.325939>,  <35.081303, 36.474384, 33.999691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324196, 37.034592, 34.325939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517780, 36.725395, 34.490021>,  <35.633930, 36.539879, 34.588470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.517780, 36.725395, 34.490021>,  <35.324196, 37.034592, 34.325939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517780, 36.725395, 34.490021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854125, 0.519246, -0.029226,
		-0.190408, 0.364514, 0.911523,
		0.483958, -0.772990, 0.410209,
		35.662968, 36.493500, 34.613083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698406, 37.327972, 34.888474>,  <35.324196, 37.034592, 34.325939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698406, 37.327972, 34.888474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878906, 37.000290, 34.746899>,  <35.987206, 36.803680, 34.661953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.878906, 37.000290, 34.746899>,  <35.698406, 37.327972, 34.888474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878906, 37.000290, 34.746899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850525, 0.514870, -0.107318,
		0.270148, -0.252607, 0.929091,
		0.451251, -0.819206, -0.353939,
		36.014282, 36.754528, 34.640717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233143, 37.378559, 35.166225>,  <35.698406, 37.327972, 34.888474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233143, 37.378559, 35.166225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326786, 37.119789, 34.875935>,  <36.382973, 36.964527, 34.701759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.326786, 37.119789, 34.875935>,  <36.233143, 37.378559, 35.166225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326786, 37.119789, 34.875935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821881, 0.530440, -0.207717,
		0.519333, -0.547836, 0.655872,
		0.234106, -0.646923, -0.725731,
		36.397018, 36.925713, 34.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958153, 37.291981, 35.240154>,  <36.233143, 37.378559, 35.166225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958153, 37.291981, 35.240154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878082, 37.168526, 34.868202>,  <36.830040, 37.094452, 34.645031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.878082, 37.168526, 34.868202>,  <36.958153, 37.291981, 35.240154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878082, 37.168526, 34.868202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798237, 0.498948, -0.337443,
		0.568109, -0.809810, 0.146491,
		-0.200174, -0.308639, -0.929878,
		36.818031, 37.075935, 34.589237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550617, 37.082664, 35.021725>,  <36.958153, 37.291981, 35.240154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550617, 37.082664, 35.021725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342400, 37.146320, 34.686176>,  <37.217468, 37.184513, 34.484848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342400, 37.146320, 34.686176>,  <37.550617, 37.082664, 35.021725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342400, 37.146320, 34.686176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775195, 0.499931, -0.386189,
		0.357923, -0.851319, -0.383597,
		-0.520542, 0.159136, -0.838875,
		37.186237, 37.194061, 34.434513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954773, 36.878181, 34.358204>,  <37.550617, 37.082664, 35.021725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954773, 36.878181, 34.358204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691208, 37.144272, 34.217739>,  <37.533070, 37.303925, 34.133461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691208, 37.144272, 34.217739>,  <37.954773, 36.878181, 34.358204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691208, 37.144272, 34.217739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724817, 0.436626, -0.532914,
		-0.201182, -0.605669, -0.769864,
		-0.658912, 0.665224, -0.351158,
		37.493534, 37.343838, 34.112392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045448, 36.927406, 33.625275>,  <37.954773, 36.878181, 34.358204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045448, 36.927406, 33.625275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881031, 37.274269, 33.737766>,  <37.782379, 37.482388, 33.805260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881031, 37.274269, 33.737766>,  <38.045448, 36.927406, 33.625275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881031, 37.274269, 33.737766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686055, 0.497400, -0.530963,
		-0.600310, -0.025310, -0.799367,
		-0.411044, 0.867152, 0.281230,
		37.757717, 37.534416, 33.822136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139462, 37.313801, 33.096096>,  <38.045448, 36.927406, 33.625275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139462, 37.313801, 33.096096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049160, 37.612473, 33.346378>,  <37.994980, 37.791676, 33.496548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049160, 37.612473, 33.346378>,  <38.139462, 37.313801, 33.096096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049160, 37.612473, 33.346378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720555, 0.560237, -0.408576,
		-0.655618, 0.358619, -0.664498,
		-0.225753, 0.746678, 0.625706,
		37.981434, 37.836475, 33.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129734, 37.825222, 32.721954>,  <38.139462, 37.313801, 33.096096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129734, 37.825222, 32.721954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153736, 37.995110, 33.083286>,  <38.168137, 38.097042, 33.300087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.153736, 37.995110, 33.083286>,  <38.129734, 37.825222, 32.721954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153736, 37.995110, 33.083286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691228, 0.635198, -0.344568,
		-0.720141, 0.645087, -0.255461,
		0.060008, 0.424719, 0.903334,
		38.171738, 38.122524, 33.354286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065025, 38.693459, 32.656723>,  <38.129734, 37.825222, 32.721954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065025, 38.693459, 32.656723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274422, 38.562851, 32.971516>,  <38.400059, 38.484486, 33.160393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274422, 38.562851, 32.971516>,  <38.065025, 38.693459, 32.656723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274422, 38.562851, 32.971516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814985, 0.461285, -0.350735,
		-0.248500, 0.824986, 0.507589,
		0.523495, -0.326519, 0.786981,
		38.431469, 38.464893, 33.207611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307800, 39.254166, 32.942829>,  <38.065025, 38.693459, 32.656723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307800, 39.254166, 32.942829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545620, 38.953957, 33.058231>,  <38.688313, 38.773830, 33.127472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545620, 38.953957, 33.058231>,  <38.307800, 39.254166, 32.942829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545620, 38.953957, 33.058231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800181, 0.517074, -0.303883,
		0.078894, 0.411526, 0.907977,
		0.594547, -0.750520, 0.288501,
		38.723984, 38.728802, 33.144783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833134, 39.500992, 33.430328>,  <38.307800, 39.254166, 32.942829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833134, 39.500992, 33.430328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.997269, 39.178211, 33.260410>,  <39.095749, 38.984543, 33.158459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.997269, 39.178211, 33.260410>,  <38.833134, 39.500992, 33.430328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997269, 39.178211, 33.260410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790244, 0.547125, -0.275989,
		0.455124, -0.222440, 0.862197,
		0.410338, -0.806954, -0.424791,
		39.120369, 38.936127, 33.132973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458385, 39.341202, 33.800579>,  <38.833134, 39.500992, 33.430328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458385, 39.341202, 33.800579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508553, 39.179932, 33.437984>,  <39.538654, 39.083168, 33.220428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.508553, 39.179932, 33.437984>,  <39.458385, 39.341202, 33.800579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508553, 39.179932, 33.437984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866362, 0.489717, -0.097947,
		0.483412, -0.773062, 0.410717,
		0.125416, -0.403178, -0.906487,
		39.546177, 39.058979, 33.166039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096111, 39.202587, 33.840092>,  <39.458385, 39.341202, 33.800579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096111, 39.202587, 33.840092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009533, 39.191460, 33.449734>,  <39.957588, 39.184784, 33.215519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009533, 39.191460, 33.449734>,  <40.096111, 39.202587, 33.840092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009533, 39.191460, 33.449734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793269, 0.577671, -0.192407,
		0.569102, -0.815795, -0.102961,
		-0.216442, -0.027824, -0.975899,
		39.944599, 39.183113, 33.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819153, 39.224201, 33.515999>,  <40.096111, 39.202587, 33.840092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819153, 39.224201, 33.515999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.563347, 39.345264, 33.233318>,  <40.409863, 39.417904, 33.063709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.563347, 39.345264, 33.233318>,  <40.819153, 39.224201, 33.515999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563347, 39.345264, 33.233318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711380, 0.581500, -0.394711,
		0.291481, -0.755153, -0.587183,
		-0.639513, 0.302660, -0.706697,
		40.371494, 39.436062, 33.021309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210583, 39.368496, 32.961948>,  <40.819153, 39.224201, 33.515999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210583, 39.368496, 32.961948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.873749, 39.499500, 32.790543>,  <40.671646, 39.578102, 32.687698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.873749, 39.499500, 32.790543>,  <41.210583, 39.368496, 32.961948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873749, 39.499500, 32.790543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538802, 0.475413, -0.695467,
		-0.024055, -0.816528, -0.576804,
		-0.842089, 0.327513, -0.428511,
		40.621120, 39.597755, 32.661987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.309624, 39.205616, 32.238304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041546, 39.500008, 32.276611>,  <40.880699, 39.676643, 32.299595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041546, 39.500008, 32.276611>,  <41.309624, 39.205616, 32.238304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041546, 39.500008, 32.276611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423425, 0.485135, -0.765085,
		-0.609550, -0.472204, -0.636767,
		-0.670194, 0.735981, 0.095771,
		40.840488, 39.720802, 32.305344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099583, 39.382347, 31.578653>,  <41.309624, 39.205616, 32.238304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099583, 39.382347, 31.578653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001595, 39.713451, 31.780569>,  <40.942802, 39.912113, 31.901718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001595, 39.713451, 31.780569>,  <41.099583, 39.382347, 31.578653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001595, 39.713451, 31.780569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338515, 0.560909, -0.755506,
		-0.908515, -0.014196, -0.417612,
		-0.244967, 0.827756, 0.504788,
		40.928104, 39.961777, 31.932005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698051, 39.802380, 31.102049>,  <41.099583, 39.382347, 31.578653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698051, 39.802380, 31.102049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.882957, 40.019482, 31.382544>,  <40.993900, 40.149742, 31.550840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.882957, 40.019482, 31.382544>,  <40.698051, 39.802380, 31.102049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882957, 40.019482, 31.382544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438543, 0.547392, -0.712770,
		-0.770710, 0.637008, 0.015017,
		0.462261, 0.542754, 0.701237,
		41.021637, 40.182308, 31.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773975, 40.402626, 30.759405>,  <40.698051, 39.802380, 31.102049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773975, 40.402626, 30.759405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001656, 40.466290, 31.082064>,  <41.138264, 40.504490, 31.275660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.001656, 40.466290, 31.082064>,  <40.773975, 40.402626, 30.759405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001656, 40.466290, 31.082064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580699, 0.616724, -0.531450,
		-0.582066, 0.770920, 0.258613,
		0.569198, 0.159163, 0.806647,
		41.172417, 40.514038, 31.324059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873379, 41.055691, 30.753372>,  <40.773975, 40.402626, 30.759405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873379, 41.055691, 30.753372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168133, 40.906834, 30.979122>,  <41.344986, 40.817520, 31.114573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168133, 40.906834, 30.979122>,  <40.873379, 41.055691, 30.753372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168133, 40.906834, 30.979122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659658, 0.578407, -0.479893,
		-0.147849, 0.725917, 0.671704,
		0.736880, -0.372143, 0.564373,
		41.389198, 40.795189, 31.148434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189636, 41.607525, 30.982241>,  <40.873379, 41.055691, 30.753372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189636, 41.607525, 30.982241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463898, 41.319855, 31.027252>,  <41.628452, 41.147251, 31.054258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463898, 41.319855, 31.027252>,  <41.189636, 41.607525, 30.982241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463898, 41.319855, 31.027252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676809, 0.572927, -0.462261,
		0.267978, 0.393110, 0.879575,
		0.685651, -0.719180, 0.112528,
		41.669594, 41.104099, 31.061010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765472, 41.953598, 31.254538>,  <41.189636, 41.607525, 30.982241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765472, 41.953598, 31.254538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890507, 41.620964, 31.070902>,  <41.965527, 41.421383, 30.960720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.890507, 41.620964, 31.070902>,  <41.765472, 41.953598, 31.254538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890507, 41.620964, 31.070902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791425, 0.495271, -0.358264,
		0.525299, -0.251346, 0.812949,
		0.312582, -0.831584, -0.459087,
		41.984280, 41.371490, 30.933176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456001, 41.775917, 31.484514>,  <41.765472, 41.953598, 31.254538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456001, 41.775917, 31.484514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.424736, 41.567024, 31.144829>,  <42.405975, 41.441689, 30.941017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.424736, 41.567024, 31.144829>,  <42.456001, 41.775917, 31.484514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424736, 41.567024, 31.144829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864933, 0.388074, -0.318260,
		0.495763, -0.759389, 0.421364,
		-0.078162, -0.522234, -0.849213,
		42.401287, 41.410355, 30.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203468, 41.550846, 31.423672>,  <42.456001, 41.775917, 31.484514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203468, 41.550846, 31.423672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021091, 41.496853, 31.071787>,  <42.911663, 41.464455, 30.860657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.021091, 41.496853, 31.071787>,  <43.203468, 41.550846, 31.423672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021091, 41.496853, 31.071787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784757, 0.405299, -0.468922,
		0.419845, -0.904163, -0.078862,
		-0.455945, -0.134987, -0.879712,
		42.884308, 41.456356, 30.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759438, 41.272697, 30.964132>,  <43.203468, 41.550846, 31.423672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759438, 41.272697, 30.964132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.504444, 41.421013, 30.693981>,  <43.351448, 41.510002, 30.531891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.504444, 41.421013, 30.693981>,  <43.759438, 41.272697, 30.964132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504444, 41.421013, 30.693981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765374, 0.405373, -0.499876,
		0.088434, -0.835579, -0.542206,
		-0.637481, 0.370784, -0.675379,
		43.313198, 41.532249, 30.491367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097416, 41.438309, 30.397861>,  <43.759438, 41.272697, 30.964132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097416, 41.438309, 30.397861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771275, 41.651752, 30.308006>,  <43.575588, 41.779819, 30.254093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.771275, 41.651752, 30.308006>,  <44.097416, 41.438309, 30.397861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771275, 41.651752, 30.308006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569275, 0.668220, -0.478965,
		-0.105470, -0.518408, -0.848604,
		-0.815354, 0.533606, -0.224640,
		43.526669, 41.811836, 30.240614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114437, 41.488518, 29.651510>,  <44.097416, 41.438309, 30.397861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114437, 41.488518, 29.651510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.878944, 41.783165, 29.784649>,  <43.737648, 41.959953, 29.864532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.878944, 41.783165, 29.784649>,  <44.114437, 41.488518, 29.651510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878944, 41.783165, 29.784649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453642, 0.641904, -0.618198,
		-0.669032, -0.212959, -0.712071,
		-0.588732, 0.736619, 0.332847,
		43.702324, 42.004150, 29.884502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770390, 41.775597, 29.106514>,  <44.114437, 41.488518, 29.651510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770390, 41.775597, 29.106514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.778534, 42.074272, 29.372459>,  <43.783421, 42.253475, 29.532026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.778534, 42.074272, 29.372459>,  <43.770390, 41.775597, 29.106514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778534, 42.074272, 29.372459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405822, 0.601584, -0.688045,
		-0.913725, 0.283825, -0.290774,
		0.020359, 0.746686, 0.664865,
		43.784641, 42.298279, 29.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654797, 42.382450, 28.760710>,  <43.770390, 41.775597, 29.106514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654797, 42.382450, 28.760710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.815598, 42.511269, 29.103563>,  <43.912079, 42.588562, 29.309275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.815598, 42.511269, 29.103563>,  <43.654797, 42.382450, 28.760710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815598, 42.511269, 29.103563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540856, 0.671824, -0.506090,
		-0.738828, 0.667036, 0.095894,
		0.402004, 0.322049, 0.857133,
		43.936199, 42.607883, 29.360703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444099, 43.118481, 28.882414>,  <43.654797, 42.382450, 28.760710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444099, 43.118481, 28.882414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774849, 43.074184, 29.102964>,  <43.973297, 43.047607, 29.235294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774849, 43.074184, 29.102964>,  <43.444099, 43.118481, 28.882414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774849, 43.074184, 29.102964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456305, 0.705200, -0.542659,
		-0.328736, 0.700306, 0.633644,
		0.826873, -0.110743, 0.551377,
		44.022911, 43.040962, 29.268377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653412, 43.749695, 29.030552>,  <43.444099, 43.118481, 28.882414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653412, 43.749695, 29.030552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.990070, 43.564575, 29.141865>,  <44.192066, 43.453503, 29.208652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.990070, 43.564575, 29.141865>,  <43.653412, 43.749695, 29.030552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990070, 43.564575, 29.141865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529020, 0.603086, -0.597014,
		0.108471, 0.649693, 0.752418,
		0.841648, -0.462803, 0.278284,
		44.242565, 43.425735, 29.225349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055672, 44.226051, 29.353178>,  <43.653412, 43.749695, 29.030552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055672, 44.226051, 29.353178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296791, 43.939518, 29.212606>,  <44.441463, 43.767597, 29.128263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.296791, 43.939518, 29.212606>,  <44.055672, 44.226051, 29.353178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296791, 43.939518, 29.212606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531273, 0.688951, -0.493048,
		0.595303, 0.110504, 0.795866,
		0.602796, -0.716335, -0.351427,
		44.477631, 43.724617, 29.107178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618141, 44.575508, 29.315134>,  <44.055672, 44.226051, 29.353178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618141, 44.575508, 29.315134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.691364, 44.260395, 29.079885>,  <44.735298, 44.071327, 28.938736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.691364, 44.260395, 29.079885>,  <44.618141, 44.575508, 29.315134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691364, 44.260395, 29.079885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545914, 0.578973, -0.605614,
		0.817600, -0.210204, 0.536046,
		0.183054, -0.787784, -0.588122,
		44.746281, 44.024059, 28.903448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296032, 44.682167, 29.040140>,  <44.618141, 44.575508, 29.315134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296032, 44.682167, 29.040140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.180786, 44.386307, 28.796858>,  <45.111641, 44.208790, 28.650888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.180786, 44.386307, 28.796858>,  <45.296032, 44.682167, 29.040140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180786, 44.386307, 28.796858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555793, 0.388049, -0.735195,
		0.779798, -0.549854, 0.299290,
		-0.288111, -0.739647, -0.608206,
		45.094353, 44.164413, 28.614395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946873, 44.454300, 28.681881>,  <45.296032, 44.682167, 29.040140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946873, 44.454300, 28.681881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.615147, 44.375660, 28.472658>,  <45.416111, 44.328476, 28.347124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.615147, 44.375660, 28.472658>,  <45.946873, 44.454300, 28.681881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615147, 44.375660, 28.472658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337035, 0.570632, -0.748857,
		0.445697, -0.797325, -0.406972,
		-0.829314, -0.196600, -0.523055,
		45.366352, 44.316681, 28.315742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252037, 44.285191, 28.100510>,  <45.946873, 44.454300, 28.681881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252037, 44.285191, 28.100510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.867443, 44.377197, 28.040321>,  <45.636688, 44.432400, 28.004210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.867443, 44.377197, 28.040321>,  <46.252037, 44.285191, 28.100510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867443, 44.377197, 28.040321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258835, 0.573524, -0.777222,
		-0.092474, -0.786234, -0.610970,
		-0.961485, 0.230013, -0.150468,
		45.578999, 44.446201, 27.995180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312954, 44.299385, 27.381258>,  <46.252037, 44.285191, 28.100510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312954, 44.299385, 27.381258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.983578, 44.491024, 27.502855>,  <45.785954, 44.606007, 27.575813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.983578, 44.491024, 27.502855>,  <46.312954, 44.299385, 27.381258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.983578, 44.491024, 27.502855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083560, 0.632316, -0.770191,
		-0.561216, -0.608805, -0.560708,
		-0.823441, 0.479096, 0.303994,
		45.736546, 44.634754, 27.594053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143063, 44.799213, 26.731565>,  <46.312954, 44.299385, 27.381258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143063, 44.799213, 26.731565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.927315, 44.945229, 27.035097>,  <45.797867, 45.032837, 27.217216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.927315, 44.945229, 27.035097>,  <46.143063, 44.799213, 26.731565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927315, 44.945229, 27.035097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077655, 0.875750, -0.476479,
		-0.838478, -0.315927, -0.444009,
		-0.539373, 0.365038, 0.758830,
		45.765503, 45.054741, 27.262747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604374, 45.074207, 26.430216>,  <46.143063, 44.799213, 26.731565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604374, 45.074207, 26.430216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.647251, 45.236958, 26.793085>,  <45.672977, 45.334606, 27.010807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.647251, 45.236958, 26.793085>,  <45.604374, 45.074207, 26.430216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647251, 45.236958, 26.793085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032625, 0.913379, -0.405800,
		-0.993702, 0.013904, 0.111185,
		0.107197, 0.406872, 0.907174,
		45.679409, 45.359020, 27.065237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.050369, 44.515251, 26.084270>,  <45.604374, 45.074207, 26.430216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.050369, 44.515251, 26.084270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024410, 44.342155, 25.724598>,  <46.008835, 44.238300, 25.508795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.024410, 44.342155, 25.724598>,  <46.050369, 44.515251, 26.084270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024410, 44.342155, 25.724598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480902, -0.775981, 0.408153,
		-0.874370, 0.458905, -0.157745,
		-0.064896, -0.432736, -0.899182,
		46.004940, 44.212334, 25.454844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359383, 44.431885, 25.889637>,  <46.050369, 44.515251, 26.084270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359383, 44.431885, 25.889637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.580387, 44.148132, 25.714590>,  <45.712990, 43.977879, 25.609562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.580387, 44.148132, 25.714590>,  <45.359383, 44.431885, 25.889637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580387, 44.148132, 25.714590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616424, -0.701156, 0.358331,
		-0.561032, 0.071777, -0.824676,
		0.552507, -0.709386, -0.437617,
		45.746140, 43.935318, 25.583305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765594, 43.998657, 25.573837>,  <45.359383, 44.431885, 25.889637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765594, 43.998657, 25.573837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.096031, 43.773979, 25.592005>,  <45.294292, 43.639172, 25.602905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.096031, 43.773979, 25.592005>,  <44.765594, 43.998657, 25.573837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096031, 43.773979, 25.592005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537196, -0.760577, 0.364614,
		-0.170260, -0.325603, -0.930051,
		0.826094, -0.561699, 0.045417,
		45.343861, 43.605469, 25.605629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587345, 43.398754, 25.170488>,  <44.765594, 43.998657, 25.573837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587345, 43.398754, 25.170488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895435, 43.302242, 25.406639>,  <45.080288, 43.244335, 25.548330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.895435, 43.302242, 25.406639>,  <44.587345, 43.398754, 25.170488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895435, 43.302242, 25.406639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475645, -0.833983, 0.279703,
		0.424878, -0.496243, -0.757114,
		0.770221, -0.241278, 0.590377,
		45.126503, 43.229858, 25.583752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662365, 42.699039, 25.071138>,  <44.587345, 43.398754, 25.170488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662365, 42.699039, 25.071138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.865685, 42.773605, 25.407444>,  <44.987675, 42.818344, 25.609228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.865685, 42.773605, 25.407444>,  <44.662365, 42.699039, 25.071138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865685, 42.773605, 25.407444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542629, -0.688779, 0.480768,
		0.668723, -0.700595, -0.248950,
		0.508295, 0.186413, 0.840765,
		45.018173, 42.829529, 25.659674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850582, 42.066422, 25.315834>,  <44.662365, 42.699039, 25.071138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850582, 42.066422, 25.315834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.883896, 42.271507, 25.657639>,  <44.903885, 42.394558, 25.862720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.883896, 42.271507, 25.657639>,  <44.850582, 42.066422, 25.315834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883896, 42.271507, 25.657639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580791, -0.671828, 0.459706,
		0.809782, -0.534577, 0.241828,
		0.083281, 0.512713, 0.854512,
		44.908878, 42.425320, 25.913992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943027, 41.602970, 25.841305>,  <44.850582, 42.066422, 25.315834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943027, 41.602970, 25.841305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793617, 41.920597, 26.033110>,  <44.703972, 42.111176, 26.148193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793617, 41.920597, 26.033110>,  <44.943027, 41.602970, 25.841305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793617, 41.920597, 26.033110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542336, -0.606316, 0.581595,
		0.752565, -0.042820, 0.657125,
		-0.373521, 0.794070, 0.479514,
		44.681561, 42.158817, 26.176964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947876, 41.398666, 26.476181>,  <44.943027, 41.602970, 25.841305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947876, 41.398666, 26.476181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.705051, 41.715614, 26.500303>,  <44.559357, 41.905781, 26.514776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.705051, 41.715614, 26.500303>,  <44.947876, 41.398666, 26.476181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705051, 41.715614, 26.500303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604390, -0.509646, 0.612351,
		0.515940, 0.335284, 0.788283,
		-0.607057, 0.792367, 0.060305,
		44.522934, 41.953323, 26.518394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774918, 41.483311, 27.161610>,  <44.947876, 41.398666, 26.476181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774918, 41.483311, 27.161610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.465820, 41.651382, 26.971321>,  <44.280361, 41.752228, 26.857149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.465820, 41.651382, 26.971321>,  <44.774918, 41.483311, 27.161610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465820, 41.651382, 26.971321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628334, -0.400413, 0.666983,
		0.089770, 0.814320, 0.573433,
		-0.772747, 0.420182, -0.475720,
		44.233997, 41.777435, 26.828606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430847, 41.768112, 27.681238>,  <44.774918, 41.483311, 27.161610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430847, 41.768112, 27.681238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.161041, 41.763458, 27.385969>,  <43.999157, 41.760666, 27.208807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.161041, 41.763458, 27.385969>,  <44.430847, 41.768112, 27.681238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161041, 41.763458, 27.385969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671240, -0.406618, 0.619757,
		-0.307362, 0.913525, 0.266461,
		-0.674511, -0.011631, -0.738173,
		43.958687, 41.759968, 27.164516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872726, 42.237473, 27.898745>,  <44.430847, 41.768112, 27.681238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872726, 42.237473, 27.898745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.729206, 41.986633, 27.622190>,  <43.643093, 41.836132, 27.456259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.729206, 41.986633, 27.622190>,  <43.872726, 42.237473, 27.898745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729206, 41.986633, 27.622190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549935, -0.456480, 0.699427,
		-0.754210, 0.631173, -0.181074,
		-0.358803, -0.627093, -0.691386,
		43.621567, 41.798504, 27.414774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185238, 42.131878, 28.042767>,  <43.872726, 42.237473, 27.898745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185238, 42.131878, 28.042767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256126, 41.804161, 27.824646>,  <43.298660, 41.607533, 27.693773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256126, 41.804161, 27.824646>,  <43.185238, 42.131878, 28.042767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256126, 41.804161, 27.824646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651342, -0.513008, 0.559086,
		-0.737798, 0.256096, -0.624555,
		0.177222, -0.819291, -0.545302,
		43.309292, 41.558372, 27.661055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536606, 41.929180, 27.881777>,  <43.185238, 42.131878, 28.042767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536606, 41.929180, 27.881777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764668, 41.608498, 27.809999>,  <42.901505, 41.416088, 27.766933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.764668, 41.608498, 27.809999>,  <42.536606, 41.929180, 27.881777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764668, 41.608498, 27.809999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632069, -0.567596, 0.527563,
		-0.524800, -0.187371, -0.830348,
		0.570152, -0.801702, -0.179443,
		42.935715, 41.367989, 27.756166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059505, 41.373653, 27.594076>,  <42.536606, 41.929180, 27.881777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059505, 41.373653, 27.594076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.395035, 41.187908, 27.707731>,  <42.596352, 41.076462, 27.775925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.395035, 41.187908, 27.707731>,  <42.059505, 41.373653, 27.594076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395035, 41.187908, 27.707731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543922, -0.736693, 0.401786,
		0.022746, -0.491577, -0.870537,
		0.838828, -0.464365, 0.284136,
		42.646683, 41.048599, 27.792973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943661, 40.805969, 27.343153>,  <42.059505, 41.373653, 27.594076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943661, 40.805969, 27.343153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179924, 40.782192, 27.665047>,  <42.321682, 40.767925, 27.858183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.179924, 40.782192, 27.665047>,  <41.943661, 40.805969, 27.343153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179924, 40.782192, 27.665047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630211, -0.656814, 0.414041,
		0.503946, -0.751706, -0.425413,
		0.590654, -0.059446, 0.804732,
		42.357121, 40.764359, 27.906466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965141, 40.026009, 27.430294>,  <41.943661, 40.805969, 27.343153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965141, 40.026009, 27.430294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.121223, 40.183876, 27.763033>,  <42.214874, 40.278599, 27.962677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.121223, 40.183876, 27.763033>,  <41.965141, 40.026009, 27.430294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121223, 40.183876, 27.763033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412086, -0.733066, 0.541109,
		0.823360, -0.553939, -0.123411,
		0.390210, 0.394672, 0.831848,
		42.238285, 40.302277, 28.012587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187870, 39.454926, 27.854576>,  <41.965141, 40.026009, 27.430294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187870, 39.454926, 27.854576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117451, 39.746132, 28.119606>,  <42.075199, 39.920856, 28.278624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117451, 39.746132, 28.119606>,  <42.187870, 39.454926, 27.854576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117451, 39.746132, 28.119606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363682, -0.673567, 0.643461,
		0.914737, -0.127690, 0.383343,
		-0.176044, 0.728013, 0.662575,
		42.064636, 39.964535, 28.318378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376560, 39.156433, 28.475258>,  <42.187870, 39.454926, 27.854576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376560, 39.156433, 28.475258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.145096, 39.472111, 28.557554>,  <42.006218, 39.661518, 28.606932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.145096, 39.472111, 28.557554>,  <42.376560, 39.156433, 28.475258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145096, 39.472111, 28.557554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526762, -0.554245, 0.644464,
		0.622638, 0.264548, 0.736435,
		-0.578657, 0.789194, 0.205740,
		41.971500, 39.708870, 28.619276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325657, 39.246365, 29.278177>,  <42.376560, 39.156433, 28.475258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325657, 39.246365, 29.278177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004284, 39.422729, 29.118134>,  <41.811459, 39.528549, 29.022108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.004284, 39.422729, 29.118134>,  <42.325657, 39.246365, 29.278177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004284, 39.422729, 29.118134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592131, -0.521451, 0.614386,
		0.062255, 0.730535, 0.680031,
		-0.803434, 0.440916, -0.400110,
		41.763252, 39.555004, 28.998100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742764, 39.202370, 29.810928>,  <42.325657, 39.246365, 29.278177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742764, 39.202370, 29.810928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.504162, 39.311211, 29.508898>,  <41.361000, 39.376514, 29.327679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.504162, 39.311211, 29.508898>,  <41.742764, 39.202370, 29.810928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504162, 39.311211, 29.508898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721751, -0.593370, 0.356352,
		-0.351075, 0.757544, 0.550340,
		-0.596507, 0.272102, -0.755076,
		41.325211, 39.392841, 29.282375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.925388, 38.412289, 34.345451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710064, 38.509377, 34.022636>,  <38.580868, 38.567627, 33.828949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710064, 38.509377, 34.022636>,  <38.925388, 38.412289, 34.345451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710064, 38.509377, 34.022636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731532, -0.610045, 0.304477,
		-0.418427, 0.754277, 0.505950,
		-0.538312, 0.242718, -0.807037,
		38.548569, 38.582191, 33.780525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372314, 38.696671, 34.537136>,  <38.925388, 38.412289, 34.345451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372314, 38.696671, 34.537136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.309334, 38.534782, 34.176823>,  <38.271545, 38.437649, 33.960636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.309334, 38.534782, 34.176823>,  <38.372314, 38.696671, 34.537136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309334, 38.534782, 34.176823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758239, -0.534845, 0.372845,
		-0.632678, 0.741713, -0.222665,
		-0.157453, -0.404724, -0.900781,
		38.262096, 38.413364, 33.906590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665619, 38.851398, 34.322235>,  <38.372314, 38.696671, 34.537136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665619, 38.851398, 34.322235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755455, 38.542091, 34.085045>,  <37.809357, 38.356506, 33.942730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.755455, 38.542091, 34.085045>,  <37.665619, 38.851398, 34.322235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755455, 38.542091, 34.085045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815531, -0.482220, 0.319957,
		-0.533356, 0.411730, -0.738925,
		0.224589, -0.773267, -0.592974,
		37.822830, 38.310112, 33.907154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990398, 38.574123, 34.005123>,  <37.665619, 38.851398, 34.322235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990398, 38.574123, 34.005123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229923, 38.260262, 33.940960>,  <37.373638, 38.071945, 33.902462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229923, 38.260262, 33.940960>,  <36.990398, 38.574123, 34.005123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229923, 38.260262, 33.940960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776040, -0.617984, 0.125928,
		-0.197943, 0.049079, -0.978984,
		0.598816, -0.784657, -0.160412,
		37.409569, 38.024864, 33.892838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581982, 38.082664, 33.551167>,  <36.990398, 38.574123, 34.005123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581982, 38.082664, 33.551167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869030, 37.868103, 33.728836>,  <37.041260, 37.739365, 33.835438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.869030, 37.868103, 33.728836>,  <36.581982, 38.082664, 33.551167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869030, 37.868103, 33.728836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678139, -0.683435, 0.270269,
		0.158593, -0.495164, -0.854202,
		0.717618, -0.536404, 0.444178,
		37.084316, 37.707180, 33.862091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506638, 37.307163, 33.333549>,  <36.581982, 38.082664, 33.551167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506638, 37.307163, 33.333549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721992, 37.272072, 33.668797>,  <36.851204, 37.251015, 33.869946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721992, 37.272072, 33.668797>,  <36.506638, 37.307163, 33.333549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721992, 37.272072, 33.668797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666096, -0.653523, 0.359476,
		0.516193, -0.751805, -0.410285,
		0.538387, -0.087730, 0.838119,
		36.883507, 37.245754, 33.920231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464996, 36.587738, 33.463852>,  <36.506638, 37.307163, 33.333549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464996, 36.587738, 33.463852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608864, 36.698921, 33.820141>,  <36.695183, 36.765629, 34.033913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608864, 36.698921, 33.820141>,  <36.464996, 36.587738, 33.463852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608864, 36.698921, 33.820141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578299, -0.682750, 0.446567,
		0.732265, -0.675717, -0.084821,
		0.359665, 0.277954, 0.890720,
		36.716763, 36.782307, 34.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811512, 36.016743, 33.790226>,  <36.464996, 36.587738, 33.463852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811512, 36.016743, 33.790226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687466, 36.281769, 34.062939>,  <36.613037, 36.440784, 34.226566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687466, 36.281769, 34.062939>,  <36.811512, 36.016743, 33.790226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687466, 36.281769, 34.062939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685385, -0.652798, 0.322650,
		0.658846, -0.367228, 0.656555,
		-0.310112, 0.662570, 0.681786,
		36.594433, 36.480541, 34.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658501, 35.675831, 34.429832>,  <36.811512, 36.016743, 33.790226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658501, 35.675831, 34.429832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477913, 36.029778, 34.475754>,  <36.369560, 36.242146, 34.503307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.477913, 36.029778, 34.475754>,  <36.658501, 35.675831, 34.429832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477913, 36.029778, 34.475754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818452, -0.461916, 0.341716,
		0.355404, 0.060313, 0.932765,
		-0.451469, 0.884871, 0.114804,
		36.342472, 36.295238, 34.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391720, 35.585320, 35.147484>,  <36.658501, 35.675831, 34.429832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391720, 35.585320, 35.147484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.162838, 35.862835, 34.972557>,  <36.025509, 36.029343, 34.867603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.162838, 35.862835, 34.972557>,  <36.391720, 35.585320, 35.147484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162838, 35.862835, 34.972557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820012, -0.475697, 0.318266,
		0.012779, 0.540716, 0.841108,
		-0.572204, 0.693786, -0.437315,
		35.991177, 36.070972, 34.841362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948074, 35.881065, 35.721645>,  <36.391720, 35.585320, 35.147484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948074, 35.881065, 35.721645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809700, 35.952103, 35.353127>,  <35.726677, 35.994724, 35.132015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809700, 35.952103, 35.353127>,  <35.948074, 35.881065, 35.721645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809700, 35.952103, 35.353127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795880, -0.575560, 0.187896,
		-0.496895, 0.798243, 0.340446,
		-0.345934, 0.177590, -0.921299,
		35.705921, 36.005379, 35.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173077, 35.996475, 35.826565>,  <35.948074, 35.881065, 35.721645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173077, 35.996475, 35.826565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.215614, 35.918652, 35.436520>,  <35.241138, 35.871956, 35.202492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.215614, 35.918652, 35.436520>,  <35.173077, 35.996475, 35.826565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215614, 35.918652, 35.436520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865333, -0.501166, 0.005621,
		-0.489785, 0.843196, -0.221657,
		0.106347, -0.194560, -0.975108,
		35.247517, 35.860283, 35.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485676, 36.003117, 35.634949>,  <35.173077, 35.996475, 35.826565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485676, 36.003117, 35.634949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713959, 35.803085, 35.374424>,  <34.850929, 35.683067, 35.218109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.713959, 35.803085, 35.374424>,  <34.485676, 36.003117, 35.634949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713959, 35.803085, 35.374424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782667, -0.571248, -0.247200,
		-0.248440, 0.650840, -0.717415,
		0.570710, -0.500083, -0.651312,
		34.885170, 35.653061, 35.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027264, 36.022129, 35.038143>,  <34.485676, 36.003117, 35.634949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027264, 36.022129, 35.038143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.298153, 35.727833, 35.035454>,  <34.460686, 35.551254, 35.033840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.298153, 35.727833, 35.035454>,  <34.027264, 36.022129, 35.038143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298153, 35.727833, 35.035454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656490, -0.600100, -0.457056,
		0.332244, 0.313942, -0.889412,
		0.677226, -0.735744, -0.006720,
		34.501320, 35.507111, 35.033436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416012, 36.392521, 34.853279>,  <34.027264, 36.022129, 35.038143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416012, 36.392521, 34.853279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.346035, 36.729893, 35.056465>,  <33.304050, 36.932316, 35.178375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.346035, 36.729893, 35.056465>,  <33.416012, 36.392521, 34.853279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346035, 36.729893, 35.056465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362650, 0.534846, -0.763168,
		-0.915359, 0.050707, -0.399433,
		-0.174937, 0.843427, 0.507965,
		33.293552, 36.982922, 35.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960022, 36.900337, 34.403206>,  <33.416012, 36.392521, 34.853279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960022, 36.900337, 34.403206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.172981, 37.094139, 34.680859>,  <33.300755, 37.210419, 34.847450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.172981, 37.094139, 34.680859>,  <32.960022, 36.900337, 34.403206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172981, 37.094139, 34.680859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359203, 0.613207, -0.703527,
		-0.766504, 0.623887, 0.152433,
		0.532394, 0.484502, 0.694128,
		33.332699, 37.239491, 34.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972164, 37.566025, 34.191151>,  <32.960022, 36.900337, 34.403206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972164, 37.566025, 34.191151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250179, 37.613567, 34.474785>,  <33.416988, 37.642094, 34.644966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250179, 37.613567, 34.474785>,  <32.972164, 37.566025, 34.191151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250179, 37.613567, 34.474785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544553, 0.556941, -0.627120,
		-0.469451, 0.822004, 0.322374,
		0.695038, 0.118853, 0.709081,
		33.458691, 37.649223, 34.687508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096497, 38.288338, 34.186718>,  <32.972164, 37.566025, 34.191151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096497, 38.288338, 34.186718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402325, 38.080513, 34.339294>,  <33.585819, 37.955818, 34.430840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.402325, 38.080513, 34.339294>,  <33.096497, 38.288338, 34.186718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402325, 38.080513, 34.339294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630321, 0.479069, -0.610891,
		0.134657, 0.707497, 0.693769,
		0.764567, -0.519558, 0.381440,
		33.631695, 37.924644, 34.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566082, 38.683769, 34.304367>,  <33.096497, 38.288338, 34.186718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566082, 38.683769, 34.304367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789951, 38.353653, 34.334442>,  <33.924274, 38.155582, 34.352489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.789951, 38.353653, 34.334442>,  <33.566082, 38.683769, 34.304367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789951, 38.353653, 34.334442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676153, 0.402303, -0.617227,
		0.479143, 0.396289, 0.783184,
		0.559677, -0.825292, 0.075191,
		33.957855, 38.106064, 34.356998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260601, 38.926758, 34.347038>,  <33.566082, 38.683769, 34.304367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260601, 38.926758, 34.347038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.304325, 38.543163, 34.242424>,  <34.330559, 38.313007, 34.179657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.304325, 38.543163, 34.242424>,  <34.260601, 38.926758, 34.347038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304325, 38.543163, 34.242424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801091, 0.240760, -0.547985,
		0.588476, -0.149613, 0.794552,
		0.109311, -0.958984, -0.261535,
		34.337120, 38.255466, 34.163963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846661, 38.653976, 34.567070>,  <34.260601, 38.926758, 34.347038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846661, 38.653976, 34.567070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752350, 38.464283, 34.227776>,  <34.695763, 38.350468, 34.024197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.752350, 38.464283, 34.227776>,  <34.846661, 38.653976, 34.567070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752350, 38.464283, 34.227776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774346, 0.435722, -0.458841,
		0.587194, -0.765016, 0.264488,
		-0.235778, -0.474234, -0.848240,
		34.681618, 38.322014, 33.973305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412289, 38.548775, 34.245853>,  <34.846661, 38.653976, 34.567070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412289, 38.548775, 34.245853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173691, 38.459854, 33.937366>,  <35.030533, 38.406502, 33.752274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.173691, 38.459854, 33.937366>,  <35.412289, 38.548775, 34.245853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173691, 38.459854, 33.937366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722192, 0.270585, -0.636571,
		0.350191, -0.936678, -0.000857,
		-0.596494, -0.222302, -0.771218,
		34.994743, 38.393166, 33.706001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954205, 38.399734, 33.775391>,  <35.412289, 38.548775, 34.245853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954205, 38.399734, 33.775391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.618282, 38.471512, 33.570438>,  <35.416729, 38.514580, 33.447468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.618282, 38.471512, 33.570438>,  <35.954205, 38.399734, 33.775391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618282, 38.471512, 33.570438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522784, 0.521792, -0.674114,
		0.146388, -0.833986, -0.532014,
		-0.839802, 0.179446, -0.512379,
		35.366341, 38.525345, 33.416725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065300, 38.196114, 33.055626>,  <35.954205, 38.399734, 33.775391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065300, 38.196114, 33.055626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.771965, 38.464836, 33.013866>,  <35.595966, 38.626068, 32.988811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.771965, 38.464836, 33.013866>,  <36.065300, 38.196114, 33.055626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771965, 38.464836, 33.013866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551865, 0.498520, -0.668523,
		-0.397069, -0.547868, -0.736327,
		-0.733335, 0.671803, -0.104402,
		35.551964, 38.666378, 32.982544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970837, 38.182079, 32.368927>,  <36.065300, 38.196114, 33.055626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970837, 38.182079, 32.368927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.815773, 38.518253, 32.520393>,  <35.722733, 38.719959, 32.611271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.815773, 38.518253, 32.520393>,  <35.970837, 38.182079, 32.368927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815773, 38.518253, 32.520393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456551, 0.531918, -0.713179,
		-0.800799, -0.103594, -0.589907,
		-0.387663, 0.840435, 0.378663,
		35.699474, 38.770386, 32.633991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637913, 38.518265, 31.819532>,  <35.970837, 38.182079, 32.368927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637913, 38.518265, 31.819532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700382, 38.796417, 32.100117>,  <35.737865, 38.963310, 32.268467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700382, 38.796417, 32.100117>,  <35.637913, 38.518265, 31.819532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700382, 38.796417, 32.100117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584044, 0.507708, -0.633344,
		-0.796556, 0.508599, -0.326842,
		0.156178, 0.695384, 0.701463,
		35.747234, 39.005032, 32.310555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675858, 39.072872, 31.485254>,  <35.637913, 38.518265, 31.819532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675858, 39.072872, 31.485254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863403, 39.181984, 31.821293>,  <35.975929, 39.247452, 32.022915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.863403, 39.181984, 31.821293>,  <35.675858, 39.072872, 31.485254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863403, 39.181984, 31.821293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578035, 0.624407, -0.525350,
		-0.667863, 0.731922, 0.135088,
		0.468865, 0.272776, 0.840095,
		36.004063, 39.263817, 32.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710823, 39.712406, 31.432425>,  <35.675858, 39.072872, 31.485254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710823, 39.712406, 31.432425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986919, 39.691635, 31.721111>,  <36.152576, 39.679173, 31.894323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986919, 39.691635, 31.721111>,  <35.710823, 39.712406, 31.432425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986919, 39.691635, 31.721111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487551, 0.770385, -0.410854,
		-0.534664, 0.635461, 0.557067,
		0.690238, -0.051930, 0.721717,
		36.193989, 39.676056, 31.937626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206726, 40.275356, 31.333214>,  <35.710823, 39.712406, 31.432425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206726, 40.275356, 31.333214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.092327, 40.261776, 30.950163>,  <35.023689, 40.253628, 30.720331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.092327, 40.261776, 30.950163>,  <35.206726, 40.275356, 31.333214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092327, 40.261776, 30.950163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783756, -0.566682, 0.254161,
		-0.551301, 0.823236, 0.135457,
		-0.285996, -0.033954, -0.957629,
		35.006527, 40.251591, 30.662874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497330, 40.120377, 31.426228>,  <35.206726, 40.275356, 31.333214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497330, 40.120377, 31.426228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574665, 40.054066, 31.039417>,  <34.621067, 40.014278, 30.807331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.574665, 40.054066, 31.039417>,  <34.497330, 40.120377, 31.426228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574665, 40.054066, 31.039417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695026, -0.718813, -0.015730,
		-0.692502, 0.675149, -0.254196,
		0.193339, -0.165779, -0.967025,
		34.632668, 40.004333, 30.749310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896301, 40.117596, 31.106457>,  <34.497330, 40.120377, 31.426228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896301, 40.117596, 31.106457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.134979, 39.915848, 30.856794>,  <34.278187, 39.794800, 30.706997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.134979, 39.915848, 30.856794>,  <33.896301, 40.117596, 31.106457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134979, 39.915848, 30.856794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658374, -0.752386, -0.021422,
		-0.458800, 0.423709, -0.781008,
		0.596696, -0.504367, -0.624154,
		34.313988, 39.764538, 30.669548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405556, 39.843296, 30.582985>,  <33.896301, 40.117596, 31.106457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405556, 39.843296, 30.582985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736805, 39.619286, 30.592709>,  <33.935555, 39.484879, 30.598543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.736805, 39.619286, 30.592709>,  <33.405556, 39.843296, 30.582985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736805, 39.619286, 30.592709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559497, -0.823118, 0.097163,
		-0.034404, -0.094064, -0.994972,
		0.828118, -0.560026, 0.024310,
		33.985241, 39.451279, 30.600002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192406, 39.275745, 30.058931>,  <33.405556, 39.843296, 30.582985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192406, 39.275745, 30.058931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501526, 39.154633, 30.282036>,  <33.687000, 39.081966, 30.415899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.501526, 39.154633, 30.282036>,  <33.192406, 39.275745, 30.058931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501526, 39.154633, 30.282036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402388, -0.913388, 0.061692,
		0.490775, -0.272113, -0.827704,
		0.772802, -0.302782, 0.557764,
		33.733368, 39.063797, 30.449366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387783, 38.562756, 29.836342>,  <33.192406, 39.275745, 30.058931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387783, 38.562756, 29.836342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.563065, 38.600548, 30.193899>,  <33.668236, 38.623222, 30.408434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.563065, 38.600548, 30.193899>,  <33.387783, 38.562756, 29.836342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563065, 38.600548, 30.193899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238275, -0.946674, 0.216870,
		0.866718, -0.308027, -0.392326,
		0.438206, 0.094483, 0.893895,
		33.694527, 38.628891, 30.462067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670727, 37.943600, 29.946146>,  <33.387783, 38.562756, 29.836342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670727, 37.943600, 29.946146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655037, 38.097286, 30.315109>,  <33.645622, 38.189499, 30.536488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.655037, 38.097286, 30.315109>,  <33.670727, 37.943600, 29.946146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655037, 38.097286, 30.315109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130619, -0.917170, 0.376482,
		0.990656, -0.105718, 0.086160,
		-0.039222, 0.384218, 0.922409,
		33.643269, 38.212551, 30.591831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069134, 37.449970, 30.369469>,  <33.670727, 37.943600, 29.946146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069134, 37.449970, 30.369469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.823753, 37.650433, 30.613605>,  <33.676525, 37.770710, 30.760088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.823753, 37.650433, 30.613605>,  <34.069134, 37.449970, 30.369469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823753, 37.650433, 30.613605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319536, -0.864271, 0.388500,
		0.722202, 0.043299, 0.690325,
		-0.613449, 0.501160, 0.610343,
		33.639717, 37.800781, 30.796709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049454, 36.930027, 30.900105>,  <34.069134, 37.449970, 30.369469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049454, 36.930027, 30.900105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758698, 37.192863, 30.979977>,  <33.584244, 37.350563, 31.027901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.758698, 37.192863, 30.979977>,  <34.049454, 36.930027, 30.900105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758698, 37.192863, 30.979977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477507, -0.692546, 0.540710,
		0.493582, 0.297686, 0.817166,
		-0.726886, 0.657087, 0.199681,
		33.540630, 37.389988, 31.039881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868790, 36.851727, 31.652615>,  <34.049454, 36.930027, 30.900105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868790, 36.851727, 31.652615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554371, 37.007347, 31.460464>,  <33.365719, 37.100719, 31.345175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554371, 37.007347, 31.460464>,  <33.868790, 36.851727, 31.652615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554371, 37.007347, 31.460464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605691, -0.640046, 0.472736,
		-0.123544, 0.662555, 0.738755,
		-0.786050, 0.389054, -0.480377,
		33.318558, 37.124062, 31.316351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304821, 36.929165, 32.154854>,  <33.868790, 36.851727, 31.652615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304821, 36.929165, 32.154854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.124538, 36.924351, 31.797815>,  <33.016369, 36.921463, 31.583593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.124538, 36.924351, 31.797815>,  <33.304821, 36.929165, 32.154854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124538, 36.924351, 31.797815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649703, -0.681285, 0.337248,
		-0.612171, 0.731919, 0.299235,
		-0.450703, -0.012040, -0.892593,
		32.989326, 36.920738, 31.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522160, 36.956116, 32.313393>,  <33.304821, 36.929165, 32.154854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522160, 36.956116, 32.313393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.562416, 36.832092, 31.935242>,  <32.586571, 36.757679, 31.708351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.562416, 36.832092, 31.935242>,  <32.522160, 36.956116, 32.313393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562416, 36.832092, 31.935242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612389, -0.768182, 0.186754,
		-0.784125, 0.560142, -0.267187,
		0.100640, -0.310061, -0.945375,
		32.592609, 36.739075, 31.651628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.525505, 43.312630, 29.196692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566387, 43.047741, 28.899769>,  <36.590916, 42.888809, 28.721615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566387, 43.047741, 28.899769>,  <36.525505, 43.312630, 29.196692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566387, 43.047741, 28.899769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783237, -0.513608, 0.350353,
		-0.613265, 0.545591, -0.571171,
		0.102208, -0.662221, -0.742305,
		36.597050, 42.849075, 28.677078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828056, 42.999680, 29.116821>,  <36.525505, 43.312630, 29.196692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828056, 42.999680, 29.116821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075607, 42.755230, 28.919432>,  <36.224136, 42.608559, 28.800999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075607, 42.755230, 28.919432>,  <35.828056, 42.999680, 29.116821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075607, 42.755230, 28.919432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583330, -0.778308, 0.232301,
		-0.526040, 0.144093, -0.838164,
		0.618877, -0.611126, -0.493475,
		36.261269, 42.571892, 28.771389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418724, 42.426792, 28.765905>,  <35.828056, 42.999680, 29.116821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418724, 42.426792, 28.765905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796791, 42.300629, 28.799793>,  <36.023632, 42.224930, 28.820126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796791, 42.300629, 28.799793>,  <35.418724, 42.426792, 28.765905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796791, 42.300629, 28.799793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322574, -0.861023, 0.393174,
		-0.051068, -0.398943, -0.915553,
		0.945166, -0.315412, 0.084718,
		36.080341, 42.206005, 28.825209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416584, 41.731880, 28.589296>,  <35.418724, 42.426792, 28.765905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416584, 41.731880, 28.589296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729782, 41.764324, 28.835981>,  <35.917702, 41.783791, 28.983994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729782, 41.764324, 28.835981>,  <35.416584, 41.731880, 28.589296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729782, 41.764324, 28.835981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356317, -0.754187, 0.551579,
		0.509855, -0.651631, -0.561627,
		0.782998, 0.081108, 0.616714,
		35.964680, 41.788658, 29.020996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683125, 41.088566, 28.595291>,  <35.416584, 41.731880, 28.589296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683125, 41.088566, 28.595291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763428, 41.299381, 28.925606>,  <35.811607, 41.425869, 29.123795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763428, 41.299381, 28.925606>,  <35.683125, 41.088566, 28.595291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763428, 41.299381, 28.925606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187606, -0.806665, 0.560443,
		0.961510, -0.267435, -0.063066,
		0.200755, 0.527040, 0.825788,
		35.823654, 41.457493, 29.173342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809223, 40.586872, 28.979500>,  <35.683125, 41.088566, 28.595291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809223, 40.586872, 28.979500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816139, 40.879501, 29.252117>,  <35.820290, 41.055080, 29.415688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816139, 40.879501, 29.252117>,  <35.809223, 40.586872, 28.979500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816139, 40.879501, 29.252117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207605, -0.664165, 0.718181,
		0.978060, -0.153907, 0.140397,
		0.017286, 0.731572, 0.681545,
		35.821323, 41.098972, 29.456581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190163, 40.320866, 29.542917>,  <35.809223, 40.586872, 28.979500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190163, 40.320866, 29.542917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982876, 40.619278, 29.710194>,  <35.858501, 40.798325, 29.810560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982876, 40.619278, 29.710194>,  <36.190163, 40.320866, 29.542917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982876, 40.619278, 29.710194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322818, -0.623428, 0.712128,
		0.791982, 0.234039, 0.563906,
		-0.518220, 0.746032, 0.418192,
		35.827412, 40.843086, 29.835651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191776, 40.217487, 30.230145>,  <36.190163, 40.320866, 29.542917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191776, 40.217487, 30.230145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888210, 40.477810, 30.221136>,  <35.706070, 40.634003, 30.215731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888210, 40.477810, 30.221136>,  <36.191776, 40.217487, 30.230145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888210, 40.477810, 30.221136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546581, -0.617813, 0.565293,
		0.353984, 0.441316, 0.824583,
		-0.758910, 0.650806, -0.022519,
		35.660538, 40.673050, 30.214380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930706, 40.299385, 30.908352>,  <36.191776, 40.217487, 30.230145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930706, 40.299385, 30.908352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617321, 40.404144, 30.682928>,  <35.429291, 40.466999, 30.547674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617321, 40.404144, 30.682928>,  <35.930706, 40.299385, 30.908352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617321, 40.404144, 30.682928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561446, -0.687058, 0.461226,
		-0.266404, 0.677761, 0.685325,
		-0.783459, 0.261900, -0.563560,
		35.382282, 40.482716, 30.513861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848038, 40.384319, 31.628925>,  <35.930706, 40.299385, 30.908352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848038, 40.384319, 31.628925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166080, 40.199642, 31.786222>,  <36.356907, 40.088837, 31.880600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166080, 40.199642, 31.786222>,  <35.848038, 40.384319, 31.628925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166080, 40.199642, 31.786222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557095, 0.812287, -0.172728,
		-0.239677, 0.356410, 0.903065,
		0.795110, -0.461694, 0.393241,
		36.404613, 40.061134, 31.904194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196270, 40.869087, 32.082424>,  <35.848038, 40.384319, 31.628925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196270, 40.869087, 32.082424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474518, 40.608856, 31.960526>,  <36.641464, 40.452717, 31.887386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474518, 40.608856, 31.960526>,  <36.196270, 40.869087, 32.082424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474518, 40.608856, 31.960526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534695, 0.752147, -0.385196,
		0.479810, 0.105004, 0.871066,
		0.695617, -0.650576, -0.304743,
		36.683205, 40.413685, 31.869102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853249, 41.217216, 32.246479>,  <36.196270, 40.869087, 32.082424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853249, 41.217216, 32.246479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937523, 40.919434, 31.993055>,  <36.988087, 40.740765, 31.841002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937523, 40.919434, 31.993055>,  <36.853249, 41.217216, 32.246479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937523, 40.919434, 31.993055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743335, 0.542917, -0.390761,
		0.634875, -0.388621, 0.667762,
		0.210682, -0.744456, -0.633560,
		37.000729, 40.696098, 31.802988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567654, 41.093136, 32.344067>,  <36.853249, 41.217216, 32.246479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567654, 41.093136, 32.344067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481129, 40.952579, 31.979710>,  <37.429214, 40.868244, 31.761095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481129, 40.952579, 31.979710>,  <37.567654, 41.093136, 32.344067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481129, 40.952579, 31.979710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848853, 0.393247, -0.353277,
		0.482347, -0.849634, 0.213220,
		-0.216308, -0.351394, -0.910897,
		37.416237, 40.847160, 31.706440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249344, 40.814796, 32.055614>,  <37.567654, 41.093136, 32.344067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249344, 40.814796, 32.055614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989513, 40.886570, 31.760086>,  <37.833614, 40.929634, 31.582769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989513, 40.886570, 31.760086>,  <38.249344, 40.814796, 32.055614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989513, 40.886570, 31.760086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693210, 0.538894, -0.478595,
		0.312267, -0.823041, -0.474440,
		-0.649576, 0.179437, -0.738819,
		37.794640, 40.940403, 31.538441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593933, 40.562527, 31.436453>,  <38.249344, 40.814796, 32.055614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593933, 40.562527, 31.436453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301678, 40.805599, 31.311945>,  <38.126324, 40.951443, 31.237240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301678, 40.805599, 31.311945>,  <38.593933, 40.562527, 31.436453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301678, 40.805599, 31.311945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644282, 0.462747, -0.608905,
		-0.225982, -0.645435, -0.729620,
		-0.730638, 0.607683, -0.311270,
		38.082485, 40.987904, 31.218563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738365, 40.620972, 30.780405>,  <38.593933, 40.562527, 31.436453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738365, 40.620972, 30.780405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501198, 40.933189, 30.859598>,  <38.358898, 41.120518, 30.907114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501198, 40.933189, 30.859598>,  <38.738365, 40.620972, 30.780405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501198, 40.933189, 30.859598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585145, 0.586533, -0.559986,
		-0.553216, -0.216179, -0.804499,
		-0.592922, 0.780542, 0.197983,
		38.323322, 41.167351, 30.918993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592918, 40.954548, 30.126331>,  <38.738365, 40.620972, 30.780405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592918, 40.954548, 30.126331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526325, 41.228722, 30.409870>,  <38.486370, 41.393227, 30.579992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526325, 41.228722, 30.409870>,  <38.592918, 40.954548, 30.126331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526325, 41.228722, 30.409870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518679, 0.672263, -0.528238,
		-0.838603, 0.279719, -0.467443,
		-0.166487, 0.685434, 0.708845,
		38.476379, 41.434353, 30.622524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782284, 41.530869, 29.777149>,  <38.592918, 40.954548, 30.126331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782284, 41.530869, 29.777149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757893, 41.687813, 30.144266>,  <38.743259, 41.781979, 30.364536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757893, 41.687813, 30.144266>,  <38.782284, 41.530869, 29.777149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757893, 41.687813, 30.144266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436588, 0.837360, -0.328966,
		-0.897592, 0.380637, -0.222358,
		-0.060977, 0.392356, 0.917790,
		38.739601, 41.805519, 30.419603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613026, 42.139439, 29.639830>,  <38.782284, 41.530869, 29.777149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613026, 42.139439, 29.639830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771595, 42.131641, 30.006973>,  <38.866737, 42.126965, 30.227261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771595, 42.131641, 30.006973>,  <38.613026, 42.139439, 29.639830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771595, 42.131641, 30.006973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562713, 0.795116, -0.226150,
		-0.725397, 0.606143, 0.326174,
		0.396426, -0.019493, 0.917860,
		38.890522, 42.125793, 30.282331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650734, 42.791237, 29.845858>,  <38.613026, 42.139439, 29.639830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650734, 42.791237, 29.845858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926136, 42.629902, 30.086950>,  <39.091377, 42.533100, 30.231606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926136, 42.629902, 30.086950>,  <38.650734, 42.791237, 29.845858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926136, 42.629902, 30.086950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585196, 0.799875, -0.133210,
		-0.428380, 0.444431, 0.786748,
		0.688503, -0.403337, 0.602730,
		39.132687, 42.508900, 30.267769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902073, 43.313366, 30.301952>,  <38.650734, 42.791237, 29.845858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902073, 43.313366, 30.301952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192825, 43.039516, 30.280283>,  <39.367275, 42.875206, 30.267281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192825, 43.039516, 30.280283>,  <38.902073, 43.313366, 30.301952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192825, 43.039516, 30.280283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679291, 0.728334, -0.089966,
		0.101050, 0.028595, 0.994470,
		0.726879, -0.684625, -0.054174,
		39.410889, 42.834129, 30.264030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314899, 43.856979, 30.508789>,  <38.902073, 43.313366, 30.301952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314899, 43.856979, 30.508789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527363, 43.534695, 30.403942>,  <39.654839, 43.341324, 30.341034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527363, 43.534695, 30.403942>,  <39.314899, 43.856979, 30.508789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527363, 43.534695, 30.403942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811813, 0.572524, -0.114788,
		0.242554, -0.151819, 0.958185,
		0.531157, -0.805709, -0.262116,
		39.686710, 43.292980, 30.325308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925579, 43.752533, 30.924746>,  <39.314899, 43.856979, 30.508789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925579, 43.752533, 30.924746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031822, 43.562244, 30.589331>,  <40.095570, 43.448071, 30.388083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031822, 43.562244, 30.589331>,  <39.925579, 43.752533, 30.924746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031822, 43.562244, 30.589331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877849, 0.478895, 0.006372,
		0.398539, -0.737800, 0.544810,
		0.265608, -0.475721, -0.838535,
		40.111504, 43.419529, 30.337770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.541965, 38.562660, 26.502043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.209496, 38.757195, 26.394243>,  <42.010014, 38.873913, 26.329563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.209496, 38.757195, 26.394243>,  <42.541965, 38.562660, 26.502043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209496, 38.757195, 26.394243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555097, -0.753599, 0.352072,
		-0.031871, 0.442232, 0.896334,
		-0.831175, 0.486332, -0.269500,
		41.960144, 38.903095, 26.313393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067852, 38.715282, 27.090397>,  <42.541965, 38.562660, 26.502043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067852, 38.715282, 27.090397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.833351, 38.721725, 26.766409>,  <41.692650, 38.725594, 26.572016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.833351, 38.721725, 26.766409>,  <42.067852, 38.715282, 27.090397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833351, 38.721725, 26.766409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613384, -0.661948, 0.430795,
		-0.529218, 0.749376, 0.397949,
		-0.586249, 0.016111, -0.809971,
		41.657478, 38.726559, 26.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433773, 38.748440, 27.332430>,  <42.067852, 38.715282, 27.090397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433773, 38.748440, 27.332430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.326870, 38.628036, 26.966267>,  <41.262726, 38.555794, 26.746569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.326870, 38.628036, 26.966267>,  <41.433773, 38.748440, 27.332430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326870, 38.628036, 26.966267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683378, -0.610549, 0.400279,
		-0.679387, 0.732547, -0.042524,
		-0.267260, -0.301004, -0.915406,
		41.246693, 38.537735, 26.691645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652485, 38.562485, 27.349728>,  <41.433773, 38.748440, 27.332430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652485, 38.562485, 27.349728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769680, 38.390945, 27.007910>,  <40.839996, 38.288021, 26.802818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.769680, 38.390945, 27.007910>,  <40.652485, 38.562485, 27.349728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769680, 38.390945, 27.007910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667953, -0.731299, 0.137987,
		-0.684105, 0.530368, -0.500710,
		0.292985, -0.428849, -0.854546,
		40.857574, 38.262291, 26.751547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022255, 38.440502, 27.040802>,  <40.652485, 38.562485, 27.349728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022255, 38.440502, 27.040802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287247, 38.198380, 26.864288>,  <40.446243, 38.053108, 26.758381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.287247, 38.198380, 26.864288>,  <40.022255, 38.440502, 27.040802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287247, 38.198380, 26.864288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625049, -0.771354, 0.119697,
		-0.412838, 0.196526, -0.889350,
		0.662480, -0.605302, -0.441282,
		40.485992, 38.016788, 26.731903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644058, 38.104156, 26.587734>,  <40.022255, 38.440502, 27.040802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644058, 38.104156, 26.587734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.953232, 37.858650, 26.652063>,  <40.138737, 37.711346, 26.690660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.953232, 37.858650, 26.652063>,  <39.644058, 38.104156, 26.587734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953232, 37.858650, 26.652063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634475, -0.746074, 0.202029,
		-0.004014, -0.258192, -0.966085,
		0.772933, -0.613767, 0.160821,
		40.185112, 37.674519, 26.700310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464409, 37.499123, 26.363798>,  <39.644058, 38.104156, 26.587734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464409, 37.499123, 26.363798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766396, 37.381729, 26.598370>,  <39.947586, 37.311295, 26.739113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.766396, 37.381729, 26.598370>,  <39.464409, 37.499123, 26.363798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766396, 37.381729, 26.598370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499382, -0.836905, 0.224070,
		0.425025, -0.462017, -0.778392,
		0.754964, -0.293480, 0.586428,
		39.992886, 37.293686, 26.774298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482613, 36.816517, 26.263861>,  <39.464409, 37.499123, 26.363798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482613, 36.816517, 26.263861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647377, 36.872780, 26.623981>,  <39.746235, 36.906540, 26.840054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647377, 36.872780, 26.623981>,  <39.482613, 36.816517, 26.263861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647377, 36.872780, 26.623981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539214, -0.758836, 0.365262,
		0.734560, -0.635911, -0.236725,
		0.411909, 0.140661, 0.900303,
		39.770950, 36.914978, 26.894072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756088, 36.186825, 26.543547>,  <39.482613, 36.816517, 26.263861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756088, 36.186825, 26.543547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.673458, 36.397491, 26.873383>,  <39.623878, 36.523891, 27.071283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.673458, 36.397491, 26.873383>,  <39.756088, 36.186825, 26.543547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673458, 36.397491, 26.873383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437919, -0.803409, 0.403437,
		0.874959, -0.277763, 0.396603,
		-0.206575, 0.526671, 0.824587,
		39.611485, 36.555492, 27.120758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695587, 35.689915, 27.011669>,  <39.756088, 36.186825, 26.543547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695587, 35.689915, 27.011669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563648, 35.993843, 27.235767>,  <39.484486, 36.176201, 27.370226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563648, 35.993843, 27.235767>,  <39.695587, 35.689915, 27.011669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563648, 35.993843, 27.235767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425478, -0.649417, 0.630259,
		0.842716, -0.030483, 0.537494,
		-0.329845, 0.759821, 0.560244,
		39.464695, 36.221790, 27.403841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733845, 35.432014, 27.655691>,  <39.695587, 35.689915, 27.011669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733845, 35.432014, 27.655691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.500355, 35.753517, 27.701700>,  <39.360260, 35.946419, 27.729305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.500355, 35.753517, 27.701700>,  <39.733845, 35.432014, 27.655691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500355, 35.753517, 27.701700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645742, -0.545435, 0.534340,
		0.492219, 0.237634, 0.837407,
		-0.583728, 0.803761, 0.115023,
		39.325237, 35.994644, 27.736208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451824, 35.322956, 28.365217>,  <39.733845, 35.432014, 27.655691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451824, 35.322956, 28.365217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213413, 35.583553, 28.177469>,  <39.070366, 35.739910, 28.064821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213413, 35.583553, 28.177469>,  <39.451824, 35.322956, 28.365217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213413, 35.583553, 28.177469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776824, -0.319918, 0.542399,
		0.203208, 0.687904, 0.696775,
		-0.596029, 0.651491, -0.469370,
		39.034603, 35.778999, 28.036657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137016, 35.733551, 28.873375>,  <39.451824, 35.322956, 28.365217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137016, 35.733551, 28.873375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889008, 35.759968, 28.560656>,  <38.740200, 35.775818, 28.373024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.889008, 35.759968, 28.560656>,  <39.137016, 35.733551, 28.873375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889008, 35.759968, 28.560656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770746, -0.237578, 0.591192,
		-0.146696, 0.969121, 0.198204,
		-0.620025, 0.066039, -0.781798,
		38.702999, 35.779781, 28.326117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537727, 36.089184, 29.139727>,  <39.137016, 35.733551, 28.873375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537727, 36.089184, 29.139727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428528, 35.867680, 28.825066>,  <38.363007, 35.734776, 28.636269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428528, 35.867680, 28.825066>,  <38.537727, 36.089184, 29.139727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428528, 35.867680, 28.825066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778234, -0.353576, 0.518977,
		-0.565530, 0.753879, -0.334429,
		-0.272999, -0.553761, -0.786651,
		38.346626, 35.701550, 28.589069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345467, 36.597336, 29.600616>,  <38.537727, 36.089184, 29.139727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345467, 36.597336, 29.600616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529415, 36.605995, 29.955706>,  <38.639786, 36.611191, 30.168758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529415, 36.605995, 29.955706>,  <38.345467, 36.597336, 29.600616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529415, 36.605995, 29.955706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553746, 0.774522, -0.305747,
		-0.694177, 0.632177, 0.344195,
		0.459873, 0.021646, 0.887721,
		38.667377, 36.612488, 30.222021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348301, 37.285233, 29.864548>,  <38.345467, 36.597336, 29.600616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348301, 37.285233, 29.864548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647106, 37.120243, 30.073099>,  <38.826389, 37.021248, 30.198231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647106, 37.120243, 30.073099>,  <38.348301, 37.285233, 29.864548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647106, 37.120243, 30.073099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516069, 0.854180, -0.063638,
		-0.419102, 0.316606, 0.850949,
		0.747012, -0.412477, 0.521379,
		38.871208, 36.996498, 30.229513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634315, 37.856785, 30.243622>,  <38.348301, 37.285233, 29.864548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634315, 37.856785, 30.243622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.918736, 37.575626, 30.236155>,  <39.089386, 37.406933, 30.231674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.918736, 37.575626, 30.236155>,  <38.634315, 37.856785, 30.243622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918736, 37.575626, 30.236155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690241, 0.702815, -0.172101,
		0.134090, 0.109485, 0.984902,
		0.711046, -0.702897, -0.018669,
		39.132050, 37.364758, 30.230555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215897, 38.051159, 30.675533>,  <38.634315, 37.856785, 30.243622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215897, 38.051159, 30.675533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373585, 37.790249, 30.416574>,  <39.468197, 37.633701, 30.261198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373585, 37.790249, 30.416574>,  <39.215897, 38.051159, 30.675533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373585, 37.790249, 30.416574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694299, 0.672917, -0.255209,
		0.602113, -0.348880, 0.718153,
		0.394220, -0.652277, -0.647399,
		39.491852, 37.594566, 30.222355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901890, 38.231182, 30.744331>,  <39.215897, 38.051159, 30.675533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901890, 38.231182, 30.744331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.902672, 38.016006, 30.407139>,  <39.903141, 37.886902, 30.204823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.902672, 38.016006, 30.407139>,  <39.901890, 38.231182, 30.744331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902672, 38.016006, 30.407139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590820, 0.680743, -0.433037,
		0.806801, -0.497202, 0.319159,
		0.001958, -0.537940, -0.842981,
		39.903259, 37.854626, 30.154245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559536, 38.121773, 30.563726>,  <39.901890, 38.231182, 30.744331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559536, 38.121773, 30.563726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.381130, 38.058495, 30.211353>,  <40.274086, 38.020527, 29.999929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.381130, 38.058495, 30.211353>,  <40.559536, 38.121773, 30.563726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381130, 38.058495, 30.211353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708449, 0.539096, -0.455495,
		0.546965, -0.827255, -0.128372,
		-0.446015, -0.158194, -0.880934,
		40.247326, 38.011036, 29.947073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145069, 38.102348, 30.026596>,  <40.559536, 38.121773, 30.563726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145069, 38.102348, 30.026596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808662, 38.145142, 29.814468>,  <40.606819, 38.170818, 29.687191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.808662, 38.145142, 29.814468>,  <41.145069, 38.102348, 30.026596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808662, 38.145142, 29.814468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478108, 0.605712, -0.636023,
		0.253176, -0.788458, -0.560567,
		-0.841020, 0.106986, -0.530320,
		40.556358, 38.177238, 29.655373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396786, 38.086193, 29.360687>,  <41.145069, 38.102348, 30.026596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396786, 38.086193, 29.360687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.044811, 38.275444, 29.343384>,  <40.833626, 38.388992, 29.333002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.044811, 38.275444, 29.343384>,  <41.396786, 38.086193, 29.360687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044811, 38.275444, 29.343384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418130, 0.727975, -0.543340,
		-0.225579, -0.496190, -0.838397,
		-0.879933, 0.473125, -0.043256,
		40.780830, 38.417381, 29.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315289, 38.425488, 28.648567>,  <41.396786, 38.086193, 29.360687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315289, 38.425488, 28.648567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.060879, 38.609364, 28.896490>,  <40.908234, 38.719688, 29.045244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.060879, 38.609364, 28.896490>,  <41.315289, 38.425488, 28.648567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060879, 38.609364, 28.896490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247959, 0.882349, -0.399970,
		-0.730748, -0.100703, -0.675178,
		-0.636021, 0.459694, 0.619805,
		40.870071, 38.747272, 29.082432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031609, 38.943226, 28.207512>,  <41.315289, 38.425488, 28.648567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031609, 38.943226, 28.207512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983616, 39.037663, 28.593229>,  <40.954819, 39.094326, 28.824659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.983616, 39.037663, 28.593229>,  <41.031609, 38.943226, 28.207512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983616, 39.037663, 28.593229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485958, 0.860957, -0.150326,
		-0.865707, 0.450570, -0.218031,
		-0.119982, 0.236092, 0.964295,
		40.947620, 39.108490, 28.882517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670650, 39.648663, 28.226347>,  <41.031609, 38.943226, 28.207512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670650, 39.648663, 28.226347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.867771, 39.569984, 28.565393>,  <40.986046, 39.522778, 28.768822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.867771, 39.569984, 28.565393>,  <40.670650, 39.648663, 28.226347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867771, 39.569984, 28.565393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460471, 0.885491, -0.062230,
		-0.738316, 0.420969, 0.526949,
		0.492805, -0.196699, 0.847616,
		41.015614, 39.510975, 28.819677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791039, 40.271370, 28.507158>,  <40.670650, 39.648663, 28.226347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791039, 40.271370, 28.507158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.081383, 40.048462, 28.668442>,  <41.255589, 39.914715, 28.765213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.081383, 40.048462, 28.668442>,  <40.791039, 40.271370, 28.507158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081383, 40.048462, 28.668442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659111, 0.731162, -0.175996,
		-0.196735, 0.393509, 0.898024,
		0.725857, -0.557273, 0.403211,
		41.299141, 39.881279, 28.789406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233856, 40.684860, 29.058342>,  <40.791039, 40.271370, 28.507158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233856, 40.684860, 29.058342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461926, 40.383007, 28.928463>,  <41.598766, 40.201897, 28.850536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461926, 40.383007, 28.928463>,  <41.233856, 40.684860, 29.058342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461926, 40.383007, 28.928463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681531, 0.655189, -0.325949,
		0.458709, -0.035442, 0.887879,
		0.570176, -0.754633, -0.324696,
		41.632977, 40.156616, 28.831055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888496, 40.859871, 29.206306>,  <41.233856, 40.684860, 29.058342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888496, 40.859871, 29.206306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918804, 40.600620, 28.903206>,  <41.936989, 40.445068, 28.721346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918804, 40.600620, 28.903206>,  <41.888496, 40.859871, 29.206306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918804, 40.600620, 28.903206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647180, 0.610087, -0.457112,
		0.758562, -0.455769, 0.465681,
		0.075768, -0.648127, -0.757753,
		41.941536, 40.406181, 28.675880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217598, 40.720558, 29.831064>,  <41.888496, 40.859871, 29.206306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217598, 40.720558, 29.831064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.309582, 40.920048, 30.165346>,  <42.364773, 41.039742, 30.365915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.309582, 40.920048, 30.165346>,  <42.217598, 40.720558, 29.831064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309582, 40.920048, 30.165346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665357, -0.546110, 0.508983,
		0.710226, -0.673084, 0.206247,
		0.229955, 0.498720, 0.835703,
		42.378567, 41.069664, 30.416058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343719, 40.252853, 30.363642>,  <42.217598, 40.720558, 29.831064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343719, 40.252853, 30.363642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.253017, 40.590950, 30.557199>,  <42.198597, 40.793808, 30.673334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.253017, 40.590950, 30.557199>,  <42.343719, 40.252853, 30.363642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253017, 40.590950, 30.557199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526524, -0.524359, 0.669193,
		0.819363, -0.103041, 0.563939,
		-0.226752, 0.845240, 0.483894,
		42.184990, 40.844521, 30.702368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628834, 40.221371, 31.107464>,  <42.343719, 40.252853, 30.363642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628834, 40.221371, 31.107464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328934, 40.485481, 31.089977>,  <42.148994, 40.643948, 31.079485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328934, 40.485481, 31.089977>,  <42.628834, 40.221371, 31.107464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328934, 40.485481, 31.089977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547394, -0.581734, 0.601619,
		0.371807, 0.474990, 0.797586,
		-0.749746, 0.660280, -0.043714,
		42.104012, 40.683567, 31.076862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411739, 40.366585, 31.817205>,  <42.628834, 40.221371, 31.107464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411739, 40.366585, 31.817205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.094330, 40.488464, 31.606499>,  <41.903885, 40.561592, 31.480074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.094330, 40.488464, 31.606499>,  <42.411739, 40.366585, 31.817205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094330, 40.488464, 31.606499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607987, -0.433976, 0.664843,
		-0.026029, 0.847835, 0.529621,
		-0.793520, 0.304697, -0.526769,
		41.856274, 40.579872, 31.448467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974323, 40.485268, 32.260235>,  <42.411739, 40.366585, 31.817205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974323, 40.485268, 32.260235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.711029, 40.487362, 31.959120>,  <41.553051, 40.488617, 31.778450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.711029, 40.487362, 31.959120>,  <41.974323, 40.485268, 32.260235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711029, 40.487362, 31.959120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709387, -0.339014, 0.617931,
		-0.251974, 0.940767, 0.226864,
		-0.658239, 0.005231, -0.752791,
		41.513557, 40.488930, 31.733282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526039, 41.039845, 32.473621>,  <41.974323, 40.485268, 32.260235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526039, 41.039845, 32.473621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.397083, 40.762566, 32.215771>,  <41.319710, 40.596199, 32.061062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.397083, 40.762566, 32.215771>,  <41.526039, 41.039845, 32.473621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397083, 40.762566, 32.215771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655225, -0.328072, 0.680477,
		-0.683189, 0.641753, -0.348433,
		-0.322387, -0.693196, -0.644628,
		41.300365, 40.554607, 32.022381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744678, 41.079399, 32.569233>,  <41.526039, 41.039845, 32.473621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744678, 41.079399, 32.569233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801941, 40.732002, 32.379402>,  <40.836300, 40.523563, 32.265503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.801941, 40.732002, 32.379402>,  <40.744678, 41.079399, 32.569233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801941, 40.732002, 32.379402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665381, -0.439436, 0.603461,
		-0.732649, 0.229386, -0.640787,
		0.143159, -0.868492, -0.474581,
		40.844887, 40.471455, 32.237026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079144, 40.806343, 32.355141>,  <40.744678, 41.079399, 32.569233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079144, 40.806343, 32.355141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306072, 40.477001, 32.348953>,  <40.442230, 40.279396, 32.345242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306072, 40.477001, 32.348953>,  <40.079144, 40.806343, 32.355141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306072, 40.477001, 32.348953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759303, -0.530276, 0.377183,
		-0.318756, -0.202239, -0.926010,
		0.567321, -0.823351, -0.015468,
		40.476269, 40.229996, 32.344311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603020, 40.304821, 32.248249>,  <40.079144, 40.806343, 32.355141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603020, 40.304821, 32.248249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919750, 40.091667, 32.367615>,  <40.109787, 39.963776, 32.439232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.919750, 40.091667, 32.367615>,  <39.603020, 40.304821, 32.248249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919750, 40.091667, 32.367615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610676, -0.698424, 0.373200,
		0.009543, -0.477740, -0.878449,
		0.791823, -0.532886, 0.298410,
		40.157295, 39.931801, 32.457138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516598, 39.579178, 32.047638>,  <39.603020, 40.304821, 32.248249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516598, 39.579178, 32.047638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777111, 39.561577, 32.350662>,  <39.933418, 39.551018, 32.532478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.777111, 39.561577, 32.350662>,  <39.516598, 39.579178, 32.047638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777111, 39.561577, 32.350662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506941, -0.768094, 0.391206,
		0.564664, -0.638824, -0.522551,
		0.651280, -0.044003, 0.757561,
		39.972496, 39.548374, 32.577930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869213, 38.988358, 31.864597>,  <39.516598, 39.579178, 32.047638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869213, 38.988358, 31.864597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855598, 39.079987, 32.253723>,  <39.847427, 39.134964, 32.487198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855598, 39.079987, 32.253723>,  <39.869213, 38.988358, 31.864597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855598, 39.079987, 32.253723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436177, -0.879191, 0.191762,
		0.899217, -0.417791, 0.129843,
		-0.034040, 0.229070, 0.972814,
		39.845387, 39.148708, 32.545567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729488, 38.308727, 32.153118>,  <39.869213, 38.988358, 31.864597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729488, 38.308727, 32.153118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680164, 38.549339, 32.468830>,  <39.650570, 38.693707, 32.658257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.680164, 38.549339, 32.468830>,  <39.729488, 38.308727, 32.153118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680164, 38.549339, 32.468830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585750, -0.686137, 0.431408,
		0.801056, -0.409119, 0.436956,
		-0.123315, 0.601529, 0.789276,
		39.643169, 38.729797, 32.705612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762951, 37.903866, 32.743195>,  <39.729488, 38.308727, 32.153118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762951, 37.903866, 32.743195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552345, 38.224709, 32.855911>,  <39.425983, 38.417213, 32.923542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552345, 38.224709, 32.855911>,  <39.762951, 37.903866, 32.743195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552345, 38.224709, 32.855911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610165, -0.587328, 0.531737,
		0.592016, 0.108025, 0.798654,
		-0.526512, 0.802108, 0.281795,
		39.394390, 38.465340, 32.940449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495018, 37.718361, 33.403931>,  <39.762951, 37.903866, 32.743195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495018, 37.718361, 33.403931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263344, 38.036186, 33.331028>,  <39.124340, 38.226879, 33.287285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263344, 38.036186, 33.331028>,  <39.495018, 37.718361, 33.403931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263344, 38.036186, 33.331028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733140, -0.409945, 0.542633,
		0.356439, 0.447905, 0.819958,
		-0.579186, 0.794560, -0.182257,
		39.089588, 38.274555, 33.276352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.677238, 43.656979, 30.940357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540955, 43.616627, 30.566460>,  <40.459187, 43.592415, 30.342121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540955, 43.616627, 30.566460>,  <40.677238, 43.656979, 30.940357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540955, 43.616627, 30.566460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723051, 0.607367, -0.329094,
		0.600929, -0.787991, -0.133995,
		-0.340707, -0.100877, -0.934742,
		40.438744, 43.586365, 30.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286545, 43.618011, 30.638735>,  <40.677238, 43.656979, 30.940357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286545, 43.618011, 30.638735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.031975, 43.698551, 30.340897>,  <40.879234, 43.746876, 30.162193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.031975, 43.698551, 30.340897>,  <41.286545, 43.618011, 30.638735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031975, 43.698551, 30.340897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739060, 0.435525, -0.513914,
		0.220812, -0.877368, -0.425989,
		-0.636421, 0.201354, -0.744597,
		40.841049, 43.758957, 30.117517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557720, 43.365089, 30.026762>,  <41.286545, 43.618011, 30.638735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557720, 43.365089, 30.026762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316303, 43.672279, 29.941019>,  <41.171452, 43.856594, 29.889574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.316303, 43.672279, 29.941019>,  <41.557720, 43.365089, 30.026762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316303, 43.672279, 29.941019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756346, 0.466362, -0.458746,
		-0.252338, -0.439001, -0.862324,
		-0.603545, 0.767974, -0.214356,
		41.135239, 43.902672, 29.876713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745255, 43.492996, 29.412823>,  <41.557720, 43.365089, 30.026762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745255, 43.492996, 29.412823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576702, 43.838692, 29.522747>,  <41.475571, 44.046108, 29.588701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.576702, 43.838692, 29.522747>,  <41.745255, 43.492996, 29.412823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576702, 43.838692, 29.522747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794978, 0.497839, -0.346650,
		-0.436401, 0.072396, -0.896835,
		-0.421383, 0.864242, 0.274811,
		41.450287, 44.097965, 29.605190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761135, 44.025932, 28.752518>,  <41.745255, 43.492996, 29.412823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761135, 44.025932, 28.752518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.713493, 44.234547, 29.090467>,  <41.684910, 44.359715, 29.293238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.713493, 44.234547, 29.090467>,  <41.761135, 44.025932, 28.752518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713493, 44.234547, 29.090467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611633, 0.708847, -0.351342,
		-0.782124, 0.474907, -0.403417,
		-0.119106, 0.521536, 0.844875,
		41.677761, 44.391006, 29.343929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481281, 44.607548, 28.527157>,  <41.761135, 44.025932, 28.752518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481281, 44.607548, 28.527157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637127, 44.704548, 28.882547>,  <41.730633, 44.762749, 29.095781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.637127, 44.704548, 28.882547>,  <41.481281, 44.607548, 28.527157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637127, 44.704548, 28.882547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612294, 0.652430, -0.446577,
		-0.687965, 0.718003, 0.105714,
		0.389615, 0.242502, 0.888478,
		41.754013, 44.777298, 29.149092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454334, 45.344803, 28.526516>,  <41.481281, 44.607548, 28.527157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454334, 45.344803, 28.526516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726627, 45.228512, 28.795462>,  <41.890003, 45.158737, 28.956829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.726627, 45.228512, 28.795462>,  <41.454334, 45.344803, 28.526516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726627, 45.228512, 28.795462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629619, 0.701351, -0.334194,
		-0.374404, 0.650832, 0.660484,
		0.680736, -0.290730, 0.672366,
		41.930847, 45.141293, 28.997171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694035, 45.951088, 28.748117>,  <41.454334, 45.344803, 28.526516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694035, 45.951088, 28.748117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975727, 45.710552, 28.899086>,  <42.144741, 45.566231, 28.989668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.975727, 45.710552, 28.899086>,  <41.694035, 45.951088, 28.748117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975727, 45.710552, 28.899086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707178, 0.641250, -0.297821,
		-0.062930, 0.476639, 0.876844,
		0.704229, -0.601343, 0.377423,
		42.186996, 45.530148, 29.012312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165932, 46.405083, 29.164015>,  <41.694035, 45.951088, 28.748117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165932, 46.405083, 29.164015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353149, 46.065857, 29.064640>,  <42.465481, 45.862320, 29.005014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.353149, 46.065857, 29.064640>,  <42.165932, 46.405083, 29.164015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353149, 46.065857, 29.064640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794486, 0.526914, -0.301916,
		0.386950, -0.056071, 0.920394,
		0.468040, -0.848067, -0.248437,
		42.493561, 45.811436, 28.990108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790890, 46.473873, 29.432062>,  <42.165932, 46.405083, 29.164015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790890, 46.473873, 29.432062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.840160, 46.232639, 29.116819>,  <42.869720, 46.087898, 28.927673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.840160, 46.232639, 29.116819>,  <42.790890, 46.473873, 29.432062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840160, 46.232639, 29.116819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828191, 0.500001, -0.253180,
		0.546744, -0.621518, 0.561059,
		0.123174, -0.603088, -0.788107,
		42.877113, 46.051712, 28.880386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466347, 46.560127, 29.373878>,  <42.790890, 46.473873, 29.432062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466347, 46.560127, 29.373878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334938, 46.392551, 29.035278>,  <43.256092, 46.292004, 28.832119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334938, 46.392551, 29.035278>,  <43.466347, 46.560127, 29.373878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334938, 46.392551, 29.035278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712129, 0.478877, -0.513370,
		0.620442, -0.771469, 0.141022,
		-0.328517, -0.418942, -0.846501,
		43.236382, 46.266869, 28.781328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040028, 46.409298, 28.997320>,  <43.466347, 46.560127, 29.373878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040028, 46.409298, 28.997320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.764687, 46.386662, 28.708055>,  <43.599480, 46.373081, 28.534496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.764687, 46.386662, 28.708055>,  <44.040028, 46.409298, 28.997320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764687, 46.386662, 28.708055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638578, 0.425615, -0.641147,
		0.344068, -0.903133, -0.256841,
		-0.688357, -0.056585, -0.723162,
		43.558178, 46.369686, 28.491106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311726, 45.964542, 28.449537>,  <44.040028, 46.409298, 28.997320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311726, 45.964542, 28.449537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.075500, 46.213703, 28.244314>,  <43.933765, 46.363201, 28.121180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.075500, 46.213703, 28.244314>,  <44.311726, 45.964542, 28.449537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075500, 46.213703, 28.244314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806005, 0.423864, -0.413152,
		-0.039886, -0.657520, -0.752381,
		-0.590563, 0.622902, -0.513058,
		43.898331, 46.400574, 28.090397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512039, 46.059425, 27.744654>,  <44.311726, 45.964542, 28.449537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512039, 46.059425, 27.744654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.304523, 46.375389, 27.875431>,  <44.180012, 46.564968, 27.953897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.304523, 46.375389, 27.875431>,  <44.512039, 46.059425, 27.744654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304523, 46.375389, 27.875431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699952, 0.612045, -0.368059,
		-0.490838, 0.037898, -0.870426,
		-0.518792, 0.789914, 0.326942,
		44.148888, 46.612362, 27.973513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587582, 45.321392, 27.824877>,  <44.512039, 46.059425, 27.744654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587582, 45.321392, 27.824877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.913151, 45.107021, 27.735146>,  <45.108490, 44.978401, 27.681307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.913151, 45.107021, 27.735146>,  <44.587582, 45.321392, 27.824877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913151, 45.107021, 27.735146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380912, -0.783802, 0.490469,
		-0.438681, -0.313754, -0.842091,
		0.813919, -0.535922, -0.224327,
		45.157326, 44.946243, 27.667847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390137, 44.729420, 27.626867>,  <44.587582, 45.321392, 27.824877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390137, 44.729420, 27.626867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764709, 44.654270, 27.745390>,  <44.989452, 44.609180, 27.816504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764709, 44.654270, 27.745390>,  <44.390137, 44.729420, 27.626867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764709, 44.654270, 27.745390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312384, -0.830948, 0.460371,
		0.159721, -0.523667, -0.836816,
		0.936432, -0.187877, 0.296305,
		45.045639, 44.597908, 27.834282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378777, 44.027687, 27.595209>,  <44.390137, 44.729420, 27.626867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378777, 44.027687, 27.595209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.696136, 44.103878, 27.826460>,  <44.886551, 44.149593, 27.965210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.696136, 44.103878, 27.826460>,  <44.378777, 44.027687, 27.595209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696136, 44.103878, 27.826460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238106, -0.776976, 0.582764,
		0.560197, -0.600021, -0.571099,
		0.793401, 0.190481, 0.578128,
		44.934158, 44.161022, 27.999899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640347, 43.407818, 27.686375>,  <44.378777, 44.027687, 27.595209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640347, 43.407818, 27.686375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790440, 43.627079, 27.985367>,  <44.880497, 43.758636, 28.164762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.790440, 43.627079, 27.985367>,  <44.640347, 43.407818, 27.686375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790440, 43.627079, 27.985367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152950, -0.758734, 0.633189,
		0.914224, -0.351921, -0.200863,
		0.375234, 0.548155, 0.747480,
		44.903011, 43.791527, 28.209610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026726, 42.953510, 28.116560>,  <44.640347, 43.407818, 27.686375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026726, 42.953510, 28.116560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.934666, 43.262451, 28.353374>,  <44.879429, 43.447815, 28.495462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.934666, 43.262451, 28.353374>,  <45.026726, 42.953510, 28.116560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934666, 43.262451, 28.353374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388044, -0.630743, 0.672001,
		0.892443, -0.075076, 0.444870,
		-0.230147, 0.772352, 0.592035,
		44.865620, 43.494156, 28.530985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262569, 42.764126, 28.760559>,  <45.026726, 42.953510, 28.116560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262569, 42.764126, 28.760559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.998775, 43.048645, 28.857826>,  <44.840500, 43.219357, 28.916187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.998775, 43.048645, 28.857826>,  <45.262569, 42.764126, 28.760559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998775, 43.048645, 28.857826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249590, -0.512327, 0.821722,
		0.709073, 0.481221, 0.515405,
		-0.659485, 0.711300, 0.243169,
		44.800930, 43.262035, 28.930777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385811, 42.933208, 29.528502>,  <45.262569, 42.764126, 28.760559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385811, 42.933208, 29.528502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.015385, 43.056244, 29.441059>,  <44.793129, 43.130066, 29.388594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.015385, 43.056244, 29.441059>,  <45.385811, 42.933208, 29.528502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.015385, 43.056244, 29.441059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332322, -0.390314, 0.858613,
		0.178771, 0.867783, 0.463675,
		-0.926068, 0.307585, -0.218607,
		44.737564, 43.148518, 29.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955994, 42.958607, 30.208389>,  <45.385811, 42.933208, 29.528502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955994, 42.958607, 30.208389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.689533, 42.958847, 29.910063>,  <44.529655, 42.958992, 29.731068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.689533, 42.958847, 29.910063>,  <44.955994, 42.958607, 30.208389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689533, 42.958847, 29.910063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677243, -0.419332, 0.604568,
		-0.312378, 0.907833, 0.279748,
		-0.666154, 0.000604, -0.745814,
		44.489689, 42.959026, 29.686319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360897, 43.059437, 30.500307>,  <44.955994, 42.958607, 30.208389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360897, 43.059437, 30.500307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.219505, 42.932690, 30.148251>,  <44.134670, 42.856640, 29.937017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.219505, 42.932690, 30.148251>,  <44.360897, 43.059437, 30.500307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219505, 42.932690, 30.148251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746343, -0.471684, 0.469560,
		-0.563938, 0.822865, -0.069763,
		-0.353478, -0.316870, -0.880140,
		44.113461, 42.837627, 29.884209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705013, 43.131054, 30.566704>,  <44.360897, 43.059437, 30.500307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705013, 43.131054, 30.566704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698322, 42.897820, 30.241808>,  <43.694309, 42.757877, 30.046871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698322, 42.897820, 30.241808>,  <43.705013, 43.131054, 30.566704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698322, 42.897820, 30.241808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777413, -0.503269, 0.377292,
		-0.628768, 0.637754, -0.444882,
		-0.016724, -0.583086, -0.812238,
		43.693306, 42.722893, 29.998137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022865, 43.089130, 30.301840>,  <43.705013, 43.131054, 30.566704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022865, 43.089130, 30.301840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204342, 42.756500, 30.173687>,  <43.313229, 42.556923, 30.096794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.204342, 42.756500, 30.173687>,  <43.022865, 43.089130, 30.301840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204342, 42.756500, 30.173687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722839, -0.553662, 0.413476,
		-0.521221, 0.043996, -0.852287,
		0.453688, -0.831579, -0.320382,
		43.340446, 42.507027, 30.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498772, 42.570499, 30.187984>,  <43.022865, 43.089130, 30.301840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498772, 42.570499, 30.187984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.830322, 42.347591, 30.168344>,  <43.029251, 42.213844, 30.156561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.830322, 42.347591, 30.168344>,  <42.498772, 42.570499, 30.187984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830322, 42.347591, 30.168344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543095, -0.822621, 0.168352,
		-0.134210, -0.112876, -0.984503,
		0.828876, -0.557274, -0.049102,
		43.078983, 42.180408, 30.153614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360405, 42.040955, 29.782326>,  <42.498772, 42.570499, 30.187984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360405, 42.040955, 29.782326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666065, 41.872345, 29.977627>,  <42.849461, 41.771179, 30.094809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666065, 41.872345, 29.977627>,  <42.360405, 42.040955, 29.782326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666065, 41.872345, 29.977627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621494, -0.683784, 0.382341,
		0.172694, -0.595613, -0.784489,
		0.764148, -0.421527, 0.488255,
		42.895309, 41.745888, 30.124104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425182, 41.390305, 29.588133>,  <42.360405, 42.040955, 29.782326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425182, 41.390305, 29.588133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.555275, 41.428272, 29.964478>,  <42.633331, 41.451054, 30.190285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.555275, 41.428272, 29.964478>,  <42.425182, 41.390305, 29.588133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555275, 41.428272, 29.964478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748104, -0.582756, 0.317390,
		0.578418, -0.807085, -0.118521,
		0.325229, 0.094918, 0.940859,
		42.652843, 41.456749, 30.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617638, 40.865696, 29.159012>,  <42.425182, 41.390305, 29.588133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617638, 40.865696, 29.159012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.497025, 40.686317, 28.822449>,  <42.424656, 40.578690, 28.620510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.497025, 40.686317, 28.822449>,  <42.617638, 40.865696, 29.159012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497025, 40.686317, 28.822449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683024, 0.514133, -0.518793,
		0.665249, -0.731137, 0.151273,
		-0.301534, -0.448449, -0.841410,
		42.406563, 40.551785, 28.570026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247524, 40.674091, 28.879631>,  <42.617638, 40.865696, 29.159012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247524, 40.674091, 28.879631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.995934, 40.672798, 28.568665>,  <42.844978, 40.672020, 28.382086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.995934, 40.672798, 28.568665>,  <43.247524, 40.674091, 28.879631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995934, 40.672798, 28.568665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681427, 0.479060, -0.553316,
		0.374220, -0.877776, -0.299113,
		-0.628981, -0.003238, -0.777414,
		42.807240, 40.671825, 28.335440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678291, 40.453167, 28.377399>,  <43.247524, 40.674091, 28.879631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678291, 40.453167, 28.377399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.370613, 40.646347, 28.210018>,  <43.186008, 40.762253, 28.109589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.370613, 40.646347, 28.210018>,  <43.678291, 40.453167, 28.377399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370613, 40.646347, 28.210018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634561, 0.500071, -0.589290,
		-0.075339, -0.718812, -0.691110,
		-0.769192, 0.482947, -0.418455,
		43.139854, 40.791233, 28.084482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739742, 40.356274, 27.572176>,  <43.678291, 40.453167, 28.377399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739742, 40.356274, 27.572176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478188, 40.655685, 27.616224>,  <43.321255, 40.835335, 27.642654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478188, 40.655685, 27.616224>,  <43.739742, 40.356274, 27.572176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478188, 40.655685, 27.616224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277107, 0.372377, -0.885746,
		-0.704018, -0.548664, -0.450917,
		-0.653889, 0.748534, 0.110122,
		43.282021, 40.880245, 27.649261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456940, 40.512959, 26.941219>,  <43.739742, 40.356274, 27.572176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456940, 40.512959, 26.941219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397446, 40.843781, 27.158052>,  <43.361748, 41.042274, 27.288153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397446, 40.843781, 27.158052>,  <43.456940, 40.512959, 26.941219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397446, 40.843781, 27.158052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402353, 0.551367, -0.730826,
		-0.903322, 0.109409, -0.414777,
		-0.148735, 0.827057, 0.542083,
		43.352825, 41.091896, 27.320677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099884, 40.954048, 26.577644>,  <43.456940, 40.512959, 26.941219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099884, 40.954048, 26.577644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.257790, 41.217724, 26.833654>,  <43.352535, 41.375927, 26.987261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.257790, 41.217724, 26.833654>,  <43.099884, 40.954048, 26.577644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257790, 41.217724, 26.833654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285321, 0.574207, -0.767384,
		-0.873356, 0.485550, 0.038597,
		0.394766, 0.659187, 0.640025,
		43.376221, 41.415482, 27.025661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972050, 41.707272, 26.312040>,  <43.099884, 40.954048, 26.577644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972050, 41.707272, 26.312040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.268497, 41.748127, 26.577465>,  <43.446365, 41.772640, 26.736721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.268497, 41.748127, 26.577465>,  <42.972050, 41.707272, 26.312040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268497, 41.748127, 26.577465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532174, 0.513195, -0.673366,
		-0.409315, 0.852172, 0.325981,
		0.741115, 0.102140, 0.663563,
		43.490833, 41.778770, 26.776533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501270, 41.913193, 25.729029>,  <42.972050, 41.707272, 26.312040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501270, 41.913193, 25.729029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.605198, 41.711971, 25.399319>,  <42.667557, 41.591240, 25.201492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.605198, 41.711971, 25.399319>,  <42.501270, 41.913193, 25.729029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605198, 41.711971, 25.399319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395970, -0.834031, 0.384188,
		-0.880738, 0.226568, -0.415893,
		0.259823, -0.503050, -0.824277,
		42.683144, 41.561058, 25.152035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914822, 41.505180, 25.610901>,  <42.501270, 41.913193, 25.729029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914822, 41.505180, 25.610901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196896, 41.331127, 25.386980>,  <42.366138, 41.226696, 25.252628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.196896, 41.331127, 25.386980>,  <41.914822, 41.505180, 25.610901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196896, 41.331127, 25.386980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364296, -0.899708, 0.240444,
		-0.608282, 0.034376, -0.792976,
		0.705182, -0.435135, -0.559800,
		42.408451, 41.200588, 25.219040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569286, 41.039047, 25.217760>,  <41.914822, 41.505180, 25.610901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569286, 41.039047, 25.217760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.944595, 40.900700, 25.215954>,  <42.169781, 40.817692, 25.214870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.944595, 40.900700, 25.215954>,  <41.569286, 41.039047, 25.217760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944595, 40.900700, 25.215954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338285, -0.920273, 0.196625,
		-0.072160, -0.182961, -0.980469,
		0.938273, -0.345867, -0.004514,
		42.226078, 40.796940, 25.214600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540577, 40.489044, 24.807199>,  <41.569286, 41.039047, 25.217760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540577, 40.489044, 24.807199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864174, 40.447590, 25.038645>,  <42.058331, 40.422718, 25.177511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864174, 40.447590, 25.038645>,  <41.540577, 40.489044, 24.807199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864174, 40.447590, 25.038645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324258, -0.899703, 0.292219,
		0.490296, -0.424022, -0.761456,
		0.808992, -0.103635, 0.578613,
		42.106873, 40.416500, 25.212229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822124, 39.774998, 24.703388>,  <41.540577, 40.489044, 24.807199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822124, 39.774998, 24.703388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959160, 39.896858, 25.058876>,  <42.041382, 39.969975, 25.272169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.959160, 39.896858, 25.058876>,  <41.822124, 39.774998, 24.703388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959160, 39.896858, 25.058876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165508, -0.911598, 0.376293,
		0.924794, -0.276003, -0.261876,
		0.342584, 0.304651, 0.888720,
		42.061935, 39.988255, 25.325493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297455, 39.235317, 24.888582>,  <41.822124, 39.774998, 24.703388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297455, 39.235317, 24.888582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186855, 39.416756, 25.227474>,  <42.120495, 39.525620, 25.430809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186855, 39.416756, 25.227474>,  <42.297455, 39.235317, 24.888582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186855, 39.416756, 25.227474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199693, -0.889475, 0.411043,
		0.940038, -0.055533, 0.336520,
		-0.276500, 0.453596, 0.847230,
		42.103905, 39.552834, 25.481644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550709, 38.814804, 25.419588>,  <42.297455, 39.235317, 24.888582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550709, 38.814804, 25.419588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.264069, 39.035580, 25.590162>,  <42.092083, 39.168045, 25.692507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.264069, 39.035580, 25.590162>,  <42.550709, 38.814804, 25.419588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264069, 39.035580, 25.590162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223421, -0.760824, 0.609286,
		0.660729, 0.341342, 0.668523,
		-0.716604, 0.551935, 0.426435,
		42.049088, 39.201160, 25.718092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.816231, 46.771706, 26.014994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883011, 46.759689, 26.409197>,  <41.923080, 46.752480, 26.645718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883011, 46.759689, 26.409197>,  <41.816231, 46.771706, 26.014994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883011, 46.759689, 26.409197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501865, -0.862951, 0.058711,
		0.848680, -0.504393, -0.159150,
		0.166952, -0.030045, 0.985507,
		41.933098, 46.750675, 26.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994740, 46.035717, 26.092999>,  <41.816231, 46.771706, 26.014994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994740, 46.035717, 26.092999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844025, 46.213051, 26.418327>,  <41.753597, 46.319450, 26.613523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844025, 46.213051, 26.418327>,  <41.994740, 46.035717, 26.092999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844025, 46.213051, 26.418327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582717, -0.795971, 0.163922,
		0.720052, -0.412172, 0.558247,
		-0.376784, 0.443332, 0.813320,
		41.730988, 46.346050, 26.662323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991852, 45.491684, 26.665308>,  <41.994740, 46.035717, 26.092999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991852, 45.491684, 26.665308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.734318, 45.772430, 26.787195>,  <41.579796, 45.940880, 26.860327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.734318, 45.772430, 26.787195>,  <41.991852, 45.491684, 26.665308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734318, 45.772430, 26.787195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688109, -0.705273, 0.170574,
		0.334629, -0.099857, 0.937044,
		-0.643839, 0.701868, 0.304717,
		41.541164, 45.982990, 26.878611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645794, 45.260403, 27.249668>,  <41.991852, 45.491684, 26.665308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645794, 45.260403, 27.249668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404583, 45.543541, 27.102528>,  <41.259857, 45.713425, 27.014242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404583, 45.543541, 27.102528>,  <41.645794, 45.260403, 27.249668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404583, 45.543541, 27.102528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796910, -0.555348, 0.237746,
		-0.036000, 0.436512, 0.898978,
		-0.603024, 0.707846, -0.367853,
		41.223675, 45.755894, 26.992172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176617, 45.444103, 27.744904>,  <41.645794, 45.260403, 27.249668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176617, 45.444103, 27.744904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992485, 45.562840, 27.410242>,  <40.882008, 45.634079, 27.209446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992485, 45.562840, 27.410242>,  <41.176617, 45.444103, 27.744904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992485, 45.562840, 27.410242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852301, -0.411437, 0.322960,
		-0.248364, 0.861746, 0.442390,
		-0.460325, 0.296838, -0.836653,
		40.854389, 45.651890, 27.159246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457138, 45.736450, 27.963522>,  <41.176617, 45.444103, 27.744904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457138, 45.736450, 27.963522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.417503, 45.648613, 27.575304>,  <40.393723, 45.595909, 27.342373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.417503, 45.648613, 27.575304>,  <40.457138, 45.736450, 27.963522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417503, 45.648613, 27.575304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909616, -0.375473, 0.177817,
		-0.403462, 0.900443, -0.162545,
		-0.099082, -0.219596, -0.970546,
		40.387779, 45.582733, 27.284140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719330, 45.800694, 27.873167>,  <40.457138, 45.736450, 27.963522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719330, 45.800694, 27.873167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.824234, 45.575550, 27.559631>,  <39.887177, 45.440464, 27.371510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.824234, 45.575550, 27.559631>,  <39.719330, 45.800694, 27.873167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824234, 45.575550, 27.559631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860776, -0.503628, 0.073641,
		-0.436214, 0.655398, -0.616581,
		0.262263, -0.562861, -0.783840,
		39.902912, 45.406693, 27.324480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104061, 45.637894, 27.556698>,  <39.719330, 45.800694, 27.873167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104061, 45.637894, 27.556698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341385, 45.390980, 27.350031>,  <39.483780, 45.242832, 27.226030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.341385, 45.390980, 27.350031>,  <39.104061, 45.637894, 27.556698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341385, 45.390980, 27.350031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769436, -0.623490, -0.138668,
		-0.236538, 0.479814, -0.844884,
		0.593311, -0.617283, -0.516665,
		39.519379, 45.205795, 27.195032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737904, 45.435883, 27.035242>,  <39.104061, 45.637894, 27.556698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737904, 45.435883, 27.035242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.993332, 45.128593, 27.053370>,  <39.146587, 44.944218, 27.064245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.993332, 45.128593, 27.053370>,  <38.737904, 45.435883, 27.035242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993332, 45.128593, 27.053370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757956, -0.638038, -0.135683,
		0.133150, 0.052294, -0.989715,
		0.638571, -0.768227, 0.045318,
		39.184902, 44.898125, 27.066965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633625, 44.968899, 26.383343>,  <38.737904, 45.435883, 27.035242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633625, 44.968899, 26.383343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796040, 44.742073, 26.670000>,  <38.893486, 44.605980, 26.841995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796040, 44.742073, 26.670000>,  <38.633625, 44.968899, 26.383343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796040, 44.742073, 26.670000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767089, -0.637711, -0.069989,
		0.496700, -0.521313, -0.693917,
		0.406032, -0.567060, 0.716645,
		38.917850, 44.571957, 26.884995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469181, 44.234901, 26.159925>,  <38.633625, 44.968899, 26.383343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469181, 44.234901, 26.159925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559357, 44.213161, 26.549021>,  <38.613461, 44.200115, 26.782478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559357, 44.213161, 26.549021>,  <38.469181, 44.234901, 26.159925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559357, 44.213161, 26.549021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826366, -0.539517, 0.161369,
		0.516039, -0.840218, -0.166542,
		0.225438, -0.054352, 0.972740,
		38.626987, 44.196857, 26.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200275, 43.599861, 26.330702>,  <38.469181, 44.234901, 26.159925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200275, 43.599861, 26.330702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250801, 43.741608, 26.701315>,  <38.281116, 43.826656, 26.923683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250801, 43.741608, 26.701315>,  <38.200275, 43.599861, 26.330702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250801, 43.741608, 26.701315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820355, -0.487819, 0.298413,
		0.557730, -0.797781, 0.229091,
		0.126313, 0.354370, 0.926535,
		38.288696, 43.847919, 26.979275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361458, 42.766815, 26.214178>,  <38.200275, 43.599861, 26.330702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361458, 42.766815, 26.214178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.280521, 42.597118, 25.861116>,  <38.231960, 42.495300, 25.649281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.280521, 42.597118, 25.861116>,  <38.361458, 42.766815, 26.214178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280521, 42.597118, 25.861116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823250, 0.414453, -0.387928,
		0.530394, -0.805138, 0.265396,
		-0.202342, -0.424241, -0.882653,
		38.219818, 42.469845, 25.596321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952435, 42.557205, 25.987228>,  <38.361458, 42.766815, 26.214178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952435, 42.557205, 25.987228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750343, 42.568489, 25.642220>,  <38.629089, 42.575260, 25.435213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.750343, 42.568489, 25.642220>,  <38.952435, 42.557205, 25.987228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750343, 42.568489, 25.642220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790194, 0.416877, -0.449230,
		0.346895, -0.908525, -0.232908,
		-0.505231, 0.028207, -0.862523,
		38.598774, 42.576950, 25.383463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468811, 42.476875, 25.494936>,  <38.952435, 42.557205, 25.987228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468811, 42.476875, 25.494936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.143417, 42.611443, 25.305172>,  <38.948181, 42.692181, 25.191313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.143417, 42.611443, 25.305172>,  <39.468811, 42.476875, 25.494936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143417, 42.611443, 25.305172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574524, 0.591553, -0.565673,
		0.090339, -0.732728, -0.674498,
		-0.813487, 0.336414, -0.474410,
		38.899372, 42.712368, 25.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689140, 42.493610, 24.854355>,  <39.468811, 42.476875, 25.494936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689140, 42.493610, 24.854355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385593, 42.753876, 24.843346>,  <39.203465, 42.910034, 24.836740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385593, 42.753876, 24.843346>,  <39.689140, 42.493610, 24.854355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385593, 42.753876, 24.843346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513302, 0.571576, -0.640173,
		-0.400807, -0.499933, -0.767737,
		-0.758864, 0.650667, -0.027525,
		39.157932, 42.949078, 24.835089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608185, 42.659267, 24.159615>,  <39.689140, 42.493610, 24.854355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608185, 42.659267, 24.159615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445301, 42.973316, 24.346277>,  <39.347572, 43.161747, 24.458275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445301, 42.973316, 24.346277>,  <39.608185, 42.659267, 24.159615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445301, 42.973316, 24.346277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453846, 0.617329, -0.642595,
		-0.792596, -0.049879, -0.607704,
		-0.407205, 0.785122, 0.466655,
		39.323139, 43.208855, 24.486275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319511, 42.988274, 23.638124>,  <39.608185, 42.659267, 24.159615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319511, 42.988274, 23.638124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340828, 43.251461, 23.938587>,  <39.353619, 43.409374, 24.118864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.340828, 43.251461, 23.938587>,  <39.319511, 42.988274, 23.638124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340828, 43.251461, 23.938587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544749, 0.611281, -0.574094,
		-0.836904, 0.439785, -0.325854,
		0.053289, 0.657970, 0.751156,
		39.356815, 43.448853, 24.163935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966129, 43.717392, 23.394066>,  <39.319511, 42.988274, 23.638124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966129, 43.717392, 23.394066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246197, 43.734158, 23.679167>,  <39.414238, 43.744217, 23.850227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246197, 43.734158, 23.679167>,  <38.966129, 43.717392, 23.394066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246197, 43.734158, 23.679167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523164, 0.649215, -0.552105,
		-0.485870, 0.759449, 0.432628,
		0.700164, 0.041916, 0.712750,
		39.456245, 43.746731, 23.892992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172028, 44.475113, 23.373991>,  <38.966129, 43.717392, 23.394066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172028, 44.475113, 23.373991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454666, 44.288879, 23.587139>,  <39.624249, 44.177139, 23.715027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.454666, 44.288879, 23.587139>,  <39.172028, 44.475113, 23.373991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454666, 44.288879, 23.587139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706115, 0.512950, -0.488143,
		-0.046062, 0.721187, 0.691207,
		0.706597, -0.465587, 0.532869,
		39.666645, 44.149204, 23.747000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699818, 44.970325, 23.371273>,  <39.172028, 44.475113, 23.373991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699818, 44.970325, 23.371273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872673, 44.634186, 23.502163>,  <39.976387, 44.432503, 23.580698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872673, 44.634186, 23.502163>,  <39.699818, 44.970325, 23.371273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872673, 44.634186, 23.502163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866332, 0.286069, -0.409429,
		0.250453, 0.460417, 0.851640,
		0.432136, -0.840346, 0.327227,
		40.002316, 44.382084, 23.600330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376118, 45.158222, 23.486900>,  <39.699818, 44.970325, 23.371273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376118, 45.158222, 23.486900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401455, 44.759201, 23.474998>,  <40.416656, 44.519791, 23.467857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401455, 44.759201, 23.474998>,  <40.376118, 45.158222, 23.486900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401455, 44.759201, 23.474998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767149, 0.067738, -0.637882,
		0.638334, 0.017576, 0.769559,
		0.063340, -0.997548, -0.029756,
		40.420456, 44.459938, 23.466072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104256, 45.027016, 23.650064>,  <40.376118, 45.158222, 23.486900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104256, 45.027016, 23.650064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961113, 44.716820, 23.442003>,  <40.875229, 44.530704, 23.317167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961113, 44.716820, 23.442003>,  <41.104256, 45.027016, 23.650064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961113, 44.716820, 23.442003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796925, 0.036685, -0.602964,
		0.486673, -0.630296, 0.604878,
		-0.357856, -0.775488, -0.520152,
		40.853756, 44.484173, 23.285957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691513, 44.585857, 23.528803>,  <41.104256, 45.027016, 23.650064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691513, 44.585857, 23.528803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.412201, 44.459251, 23.271986>,  <41.244614, 44.383286, 23.117895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.412201, 44.459251, 23.271986>,  <41.691513, 44.585857, 23.528803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412201, 44.459251, 23.271986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699133, -0.109004, -0.706634,
		0.153678, -0.942303, 0.297404,
		-0.698281, -0.316519, -0.642043,
		41.202717, 44.364296, 23.079372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000771, 44.106529, 23.170527>,  <41.691513, 44.585857, 23.528803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000771, 44.106529, 23.170527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709621, 44.239227, 22.930479>,  <41.534931, 44.318848, 22.786451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709621, 44.239227, 22.930479>,  <42.000771, 44.106529, 23.170527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709621, 44.239227, 22.930479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598090, -0.120912, -0.792255,
		-0.335390, -0.935587, -0.110406,
		-0.727875, 0.331747, -0.600118,
		41.491261, 44.338753, 22.750444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939068, 43.677860, 22.401806>,  <42.000771, 44.106529, 23.170527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939068, 43.677860, 22.401806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743538, 44.018978, 22.328283>,  <41.626221, 44.223648, 22.284170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.743538, 44.018978, 22.328283>,  <41.939068, 43.677860, 22.401806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743538, 44.018978, 22.328283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517882, 0.114121, -0.847806,
		-0.702032, -0.509617, -0.497434,
		-0.488824, 0.852799, -0.183805,
		41.596889, 44.274818, 22.273142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181015, 43.191589, 22.738188>,  <41.939068, 43.677860, 22.401806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181015, 43.191589, 22.738188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464306, 43.367390, 22.959187>,  <42.634281, 43.472870, 23.091785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.464306, 43.367390, 22.959187>,  <42.181015, 43.191589, 22.738188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464306, 43.367390, 22.959187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039437, -0.805996, 0.590606,
		0.704884, -0.396493, -0.588160,
		0.708226, 0.439504, 0.552497,
		42.676773, 43.499241, 23.124935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837276, 42.728848, 22.781612>,  <42.181015, 43.191589, 22.738188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837276, 42.728848, 22.781612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.859150, 42.977329, 23.094309>,  <42.872272, 43.126419, 23.281927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.859150, 42.977329, 23.094309>,  <42.837276, 42.728848, 22.781612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859150, 42.977329, 23.094309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213895, -0.772024, 0.598521,
		0.975325, 0.134482, -0.175088,
		0.054682, 0.621203, 0.781740,
		42.875553, 43.163689, 23.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400932, 42.573456, 23.057096>,  <42.837276, 42.728848, 22.781612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400932, 42.573456, 23.057096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194202, 42.746365, 23.352671>,  <43.070164, 42.850109, 23.530016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194202, 42.746365, 23.352671>,  <43.400932, 42.573456, 23.057096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194202, 42.746365, 23.352671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197292, -0.779779, 0.594156,
		0.833045, 0.452863, 0.317728,
		-0.516829, 0.432273, 0.738937,
		43.039154, 42.876045, 23.574352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693085, 42.246872, 23.501547>,  <43.400932, 42.573456, 23.057096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693085, 42.246872, 23.501547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.403049, 42.425323, 23.711393>,  <43.229031, 42.532394, 23.837301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.403049, 42.425323, 23.711393>,  <43.693085, 42.246872, 23.501547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403049, 42.425323, 23.711393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017646, -0.749509, 0.661759,
		0.688434, 0.489089, 0.535585,
		-0.725085, 0.446127, 0.524618,
		43.185524, 42.559162, 23.868778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954361, 42.447083, 24.277357>,  <43.693085, 42.246872, 23.501547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954361, 42.447083, 24.277357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556843, 42.412296, 24.249641>,  <43.318333, 42.391426, 24.233011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556843, 42.412296, 24.249641>,  <43.954361, 42.447083, 24.277357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556843, 42.412296, 24.249641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003557, -0.597961, 0.801517,
		-0.111137, 0.796793, 0.593944,
		-0.993799, -0.086965, -0.069289,
		43.258701, 42.386208, 24.228855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681587, 42.370937, 25.002071>,  <43.954361, 42.447083, 24.277357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681587, 42.370937, 25.002071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.358700, 42.243103, 24.803572>,  <43.164967, 42.166401, 24.684473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.358700, 42.243103, 24.803572>,  <43.681587, 42.370937, 25.002071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358700, 42.243103, 24.803572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143176, -0.709612, 0.689892,
		-0.572623, 0.627945, 0.527056,
		-0.807219, -0.319586, -0.496248,
		43.116535, 42.147228, 24.654697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267548, 42.116043, 25.488214>,  <43.681587, 42.370937, 25.002071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267548, 42.116043, 25.488214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099976, 41.956337, 25.162003>,  <42.999432, 41.860512, 24.966276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.099976, 41.956337, 25.162003>,  <43.267548, 42.116043, 25.488214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099976, 41.956337, 25.162003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350925, -0.757165, 0.550956,
		-0.837468, 0.516999, 0.177084,
		-0.418926, -0.399265, -0.815530,
		42.974297, 41.836559, 24.917343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278450, 42.415565, 26.256981>,  <43.267548, 42.116043, 25.488214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278450, 42.415565, 26.256981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.573238, 42.210506, 26.433195>,  <43.750111, 42.087471, 26.538923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.573238, 42.210506, 26.433195>,  <43.278450, 42.415565, 26.256981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573238, 42.210506, 26.433195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673693, 0.504119, -0.540371,
		0.054936, 0.695022, 0.716886,
		0.736966, -0.512648, 0.440537,
		43.794327, 42.056713, 26.565357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688297, 42.942089, 26.519602>,  <43.278450, 42.415565, 26.256981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688297, 42.942089, 26.519602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930119, 42.623539, 26.512690>,  <44.075211, 42.432407, 26.508543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.930119, 42.623539, 26.512690>,  <43.688297, 42.942089, 26.519602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930119, 42.623539, 26.512690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684453, 0.530442, -0.500155,
		0.407479, 0.290543, 0.865763,
		0.604554, -0.796377, -0.017281,
		44.111485, 42.384624, 26.507505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321453, 43.222046, 26.837109>,  <43.688297, 42.942089, 26.519602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321453, 43.222046, 26.837109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.422058, 42.900150, 26.622025>,  <44.482422, 42.707012, 26.492973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.422058, 42.900150, 26.622025>,  <44.321453, 43.222046, 26.837109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422058, 42.900150, 26.622025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772645, 0.501539, -0.389202,
		0.582889, -0.317570, 0.747923,
		0.251514, -0.804741, -0.537710,
		44.497513, 42.658730, 26.460711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022438, 43.218109, 26.922676>,  <44.321453, 43.222046, 26.837109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022438, 43.218109, 26.922676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.977016, 42.958160, 26.622072>,  <44.949764, 42.802189, 26.441710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.977016, 42.958160, 26.622072>,  <45.022438, 43.218109, 26.922676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977016, 42.958160, 26.622072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810165, 0.377268, -0.448667,
		0.575098, -0.659797, 0.483664,
		-0.113558, -0.649875, -0.751510,
		44.942947, 42.763199, 26.396620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607971, 43.049850, 26.791056>,  <45.022438, 43.218109, 26.922676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607971, 43.049850, 26.791056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.429489, 42.973618, 26.441294>,  <45.322399, 42.927879, 26.231438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.429489, 42.973618, 26.441294>,  <45.607971, 43.049850, 26.791056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429489, 42.973618, 26.441294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720452, 0.503122, -0.477302,
		0.530896, -0.842939, -0.087191,
		-0.446204, -0.190581, -0.874403,
		45.295628, 42.916443, 26.178972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157078, 42.757263, 26.312990>,  <45.607971, 43.049850, 26.791056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157078, 42.757263, 26.312990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.859055, 42.910999, 26.094940>,  <45.680241, 43.003242, 25.964109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.859055, 42.910999, 26.094940>,  <46.157078, 42.757263, 26.312990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859055, 42.910999, 26.094940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661075, 0.534170, -0.526917,
		0.088672, -0.752955, -0.652070,
		-0.745062, 0.384345, -0.545126,
		45.635536, 43.026302, 25.931402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.516674, 42.833118, 25.655397>,  <46.157078, 42.757263, 26.312990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.516674, 42.833118, 25.655397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.177753, 43.044502, 25.634176>,  <45.974400, 43.171333, 25.621443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.177753, 43.044502, 25.634176>,  <46.516674, 42.833118, 25.655397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177753, 43.044502, 25.634176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419354, 0.604368, -0.677408,
		-0.325916, -0.596217, -0.733692,
		-0.847302, 0.528455, -0.053053,
		45.923561, 43.203037, 25.618261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454765, 43.072132, 24.901262>,  <46.516674, 42.833118, 25.655397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454765, 43.072132, 24.901262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.226048, 43.321995, 25.113998>,  <46.088818, 43.471912, 25.241640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.226048, 43.321995, 25.113998>,  <46.454765, 43.072132, 24.901262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226048, 43.321995, 25.113998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247768, 0.749489, -0.613903,
		-0.782088, -0.219253, -0.583324,
		-0.571795, 0.624656, 0.531842,
		46.054508, 43.509392, 25.273552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169518, 43.460365, 24.410641>,  <46.454765, 43.072132, 24.901262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169518, 43.460365, 24.410641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.124336, 43.693008, 24.732876>,  <46.097225, 43.832596, 24.926218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.124336, 43.693008, 24.732876>,  <46.169518, 43.460365, 24.410641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.124336, 43.693008, 24.732876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267135, 0.798702, -0.539179,
		-0.957016, 0.154298, -0.245586,
		-0.112956, 0.581608, 0.805589,
		46.090450, 43.867489, 24.974552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.856064, 33.657856, 32.807373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753117, 33.967762, 33.038372>,  <35.691349, 34.153706, 33.176971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753117, 33.967762, 33.038372>,  <35.856064, 33.657856, 32.807373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753117, 33.967762, 33.038372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476851, 0.621618, -0.621454,
		-0.840462, 0.115439, -0.529431,
		-0.257364, 0.774768, 0.577493,
		35.675907, 34.200191, 33.211620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532955, 34.123634, 32.309685>,  <35.856064, 33.657856, 32.807373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532955, 34.123634, 32.309685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698784, 34.285057, 32.635941>,  <35.798283, 34.381912, 32.831696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.698784, 34.285057, 32.635941>,  <35.532955, 34.123634, 32.309685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698784, 34.285057, 32.635941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559614, 0.593732, -0.578199,
		-0.717609, 0.696150, 0.020309,
		0.414572, 0.403556, 0.815643,
		35.823154, 34.406124, 32.880634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525993, 34.863564, 32.259075>,  <35.532955, 34.123634, 32.309685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525993, 34.863564, 32.259075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818340, 34.790668, 32.522175>,  <35.993748, 34.746933, 32.680035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818340, 34.790668, 32.522175>,  <35.525993, 34.863564, 32.259075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818340, 34.790668, 32.522175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567629, 0.697417, -0.437501,
		-0.378993, 0.693108, 0.613160,
		0.730863, -0.182238, 0.657745,
		36.037598, 34.735996, 32.719498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731197, 35.452778, 32.433586>,  <35.525993, 34.863564, 32.259075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731197, 35.452778, 32.433586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042038, 35.220589, 32.530884>,  <36.228542, 35.081276, 32.589260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042038, 35.220589, 32.530884>,  <35.731197, 35.452778, 32.433586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042038, 35.220589, 32.530884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617978, 0.630508, -0.469641,
		0.119248, 0.515276, 0.848688,
		0.777099, -0.580474, 0.243242,
		36.275169, 35.046448, 32.603855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195457, 35.903419, 32.629585>,  <35.731197, 35.452778, 32.433586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195457, 35.903419, 32.629585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410450, 35.573105, 32.561241>,  <36.539444, 35.374916, 32.520237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410450, 35.573105, 32.561241>,  <36.195457, 35.903419, 32.629585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410450, 35.573105, 32.561241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677044, 0.543364, -0.496354,
		0.502719, 0.151103, 0.851141,
		0.537480, -0.825786, -0.170856,
		36.571693, 35.325371, 32.509983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781963, 36.149048, 32.675068>,  <36.195457, 35.903419, 32.629585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781963, 36.149048, 32.675068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827320, 35.818634, 32.454231>,  <36.854534, 35.620384, 32.321728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.827320, 35.818634, 32.454231>,  <36.781963, 36.149048, 32.675068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827320, 35.818634, 32.454231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756350, 0.432096, -0.491149,
		0.644265, -0.361885, 0.673767,
		0.113392, -0.826034, -0.552096,
		36.861340, 35.570824, 32.288601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504784, 35.967754, 32.600929>,  <36.781963, 36.149048, 32.675068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504784, 35.967754, 32.600929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.346794, 35.755283, 32.301102>,  <37.252003, 35.627800, 32.121204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.346794, 35.755283, 32.301102>,  <37.504784, 35.967754, 32.600929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346794, 35.755283, 32.301102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817637, 0.168775, -0.550440,
		0.418889, -0.830281, 0.367648,
		-0.394970, -0.531176, -0.749567,
		37.228302, 35.595932, 32.076233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986698, 35.414612, 32.350082>,  <37.504784, 35.967754, 32.600929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986698, 35.414612, 32.350082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750015, 35.509857, 32.042011>,  <37.608006, 35.567005, 31.857168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750015, 35.509857, 32.042011>,  <37.986698, 35.414612, 32.350082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750015, 35.509857, 32.042011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794324, 0.009165, -0.607426,
		-0.137577, -0.971194, -0.194561,
		-0.591711, 0.238113, -0.770182,
		37.572502, 35.581291, 31.810957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265530, 35.022305, 31.745861>,  <37.986698, 35.414612, 32.350082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265530, 35.022305, 31.745861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028141, 35.311256, 31.603895>,  <37.885708, 35.484627, 31.518717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028141, 35.311256, 31.603895>,  <38.265530, 35.022305, 31.745861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028141, 35.311256, 31.603895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714260, 0.269449, -0.645933,
		-0.370975, -0.636844, -0.675875,
		-0.593473, 0.722376, -0.354914,
		37.850098, 35.527969, 31.497421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486626, 35.142109, 31.094957>,  <38.265530, 35.022305, 31.745861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486626, 35.142109, 31.094957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261436, 35.472187, 31.113321>,  <38.126324, 35.670235, 31.124340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261436, 35.472187, 31.113321>,  <38.486626, 35.142109, 31.094957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261436, 35.472187, 31.113321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465826, 0.362707, -0.807124,
		-0.682688, -0.433006, -0.588594,
		-0.562977, 0.825197, 0.045910,
		38.092545, 35.719746, 31.127094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448559, 35.384407, 30.358643>,  <38.486626, 35.142109, 31.094957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448559, 35.384407, 30.358643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326096, 35.702797, 30.567522>,  <38.252617, 35.893829, 30.692850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326096, 35.702797, 30.567522>,  <38.448559, 35.384407, 30.358643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326096, 35.702797, 30.567522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547394, 0.595981, -0.587509,
		-0.778862, 0.105976, -0.618178,
		-0.306160, 0.795975, 0.522197,
		38.234249, 35.941589, 30.724182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326141, 35.873108, 29.809465>,  <38.448559, 35.384407, 30.358643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326141, 35.873108, 29.809465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415646, 36.049133, 30.157322>,  <38.469349, 36.154747, 30.366035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415646, 36.049133, 30.157322>,  <38.326141, 35.873108, 29.809465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415646, 36.049133, 30.157322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656016, 0.591890, -0.468305,
		-0.720815, 0.675287, -0.156246,
		0.223760, 0.440061, 0.869642,
		38.482773, 36.181152, 30.418215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722885, 35.929588, 29.346548>,  <38.326141, 35.873108, 29.809465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722885, 35.929588, 29.346548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812317, 35.674946, 29.051321>,  <37.865974, 35.522160, 28.874184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812317, 35.674946, 29.051321>,  <37.722885, 35.929588, 29.346548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812317, 35.674946, 29.051321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837116, -0.513287, 0.189138,
		-0.499247, 0.575562, -0.647673,
		0.223581, -0.636604, -0.738069,
		37.879391, 35.483963, 28.829901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155029, 35.921623, 28.963457>,  <37.722885, 35.929588, 29.346548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155029, 35.921623, 28.963457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351154, 35.577400, 28.908270>,  <37.468830, 35.370865, 28.875156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351154, 35.577400, 28.908270>,  <37.155029, 35.921623, 28.963457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351154, 35.577400, 28.908270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858765, -0.504041, 0.092008,
		-0.148720, 0.073370, -0.986154,
		0.490311, -0.860557, -0.137969,
		37.498249, 35.319233, 28.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757927, 35.684326, 28.483662>,  <37.155029, 35.921623, 28.963457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757927, 35.684326, 28.483662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959290, 35.371376, 28.630337>,  <37.080109, 35.183605, 28.718342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.959290, 35.371376, 28.630337>,  <36.757927, 35.684326, 28.483662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959290, 35.371376, 28.630337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860891, -0.490404, 0.135538,
		0.073783, -0.383909, -0.920418,
		0.503411, -0.782380, 0.366688,
		37.110313, 35.136662, 28.740343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544048, 35.095284, 28.139000>,  <36.757927, 35.684326, 28.483662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544048, 35.095284, 28.139000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706635, 34.954052, 28.476074>,  <36.804188, 34.869312, 28.678320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.706635, 34.954052, 28.476074>,  <36.544048, 35.095284, 28.139000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706635, 34.954052, 28.476074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753398, -0.651307, 0.090507,
		0.516892, -0.671666, -0.530743,
		0.406467, -0.353078, 0.842687,
		36.828575, 34.848129, 28.728880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467976, 34.460365, 28.062286>,  <36.544048, 35.095284, 28.139000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467976, 34.460365, 28.062286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519665, 34.474213, 28.458691>,  <36.550678, 34.482521, 28.696533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519665, 34.474213, 28.458691>,  <36.467976, 34.460365, 28.062286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519665, 34.474213, 28.458691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877277, -0.461897, 0.130525,
		0.462265, -0.886257, -0.029312,
		0.129218, 0.034623, 0.991012,
		36.558430, 34.484600, 28.755995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261169, 33.727356, 28.273605>,  <36.467976, 34.460365, 28.062286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261169, 33.727356, 28.273605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243740, 33.963440, 28.596035>,  <36.233284, 34.105091, 28.789494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.243740, 33.963440, 28.596035>,  <36.261169, 33.727356, 28.273605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243740, 33.963440, 28.596035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817874, -0.484435, 0.310491,
		0.573745, -0.645740, 0.503822,
		-0.043572, 0.590205, 0.806076,
		36.230667, 34.140503, 28.837858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014259, 33.279922, 28.693962>,  <36.261169, 33.727356, 28.273605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014259, 33.279922, 28.693962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937752, 33.636383, 28.858534>,  <35.891846, 33.850258, 28.957277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937752, 33.636383, 28.858534>,  <36.014259, 33.279922, 28.693962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937752, 33.636383, 28.858534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870841, -0.347452, 0.347724,
		0.452825, -0.291778, 0.842505,
		-0.191272, 0.891147, 0.411427,
		35.880371, 33.903728, 28.981962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818882, 33.091927, 29.317701>,  <36.014259, 33.279922, 28.693962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818882, 33.091927, 29.317701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687515, 33.468826, 29.291470>,  <35.608696, 33.694965, 29.275730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.687515, 33.468826, 29.291470>,  <35.818882, 33.091927, 29.317701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687515, 33.468826, 29.291470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809409, -0.244973, 0.533710,
		0.486824, 0.228361, 0.843121,
		-0.328420, 0.942253, -0.065579,
		35.588989, 33.751503, 29.271795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738544, 33.399170, 29.990158>,  <35.818882, 33.091927, 29.317701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738544, 33.399170, 29.990158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480701, 33.563499, 29.732260>,  <35.325996, 33.662098, 29.577520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.480701, 33.563499, 29.732260>,  <35.738544, 33.399170, 29.990158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480701, 33.563499, 29.732260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757586, -0.230004, 0.610869,
		0.102666, 0.882225, 0.459498,
		-0.644611, 0.410825, -0.644748,
		35.287319, 33.686749, 29.538836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227692, 33.604607, 30.403866>,  <35.738544, 33.399170, 29.990158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227692, 33.604607, 30.403866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049946, 33.623180, 30.046009>,  <34.943298, 33.634323, 29.831295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.049946, 33.623180, 30.046009>,  <35.227692, 33.604607, 30.403866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049946, 33.623180, 30.046009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879114, -0.214711, 0.425508,
		-0.172331, 0.975573, 0.136231,
		-0.444364, 0.046434, -0.894642,
		34.916637, 33.637112, 29.777617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566177, 33.994057, 30.550034>,  <35.227692, 33.604607, 30.403866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566177, 33.994057, 30.550034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503498, 33.836380, 30.187805>,  <34.465889, 33.741772, 29.970469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.503498, 33.836380, 30.187805>,  <34.566177, 33.994057, 30.550034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503498, 33.836380, 30.187805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952519, -0.182042, 0.244068,
		-0.261062, 0.900817, -0.346952,
		-0.156701, -0.394195, -0.905569,
		34.456490, 33.718121, 29.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953232, 34.247368, 30.232355>,  <34.566177, 33.994057, 30.550034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953232, 34.247368, 30.232355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001373, 33.899910, 30.040115>,  <34.030258, 33.691437, 29.924772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.001373, 33.899910, 30.040115>,  <33.953232, 34.247368, 30.232355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001373, 33.899910, 30.040115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951372, -0.239204, 0.194094,
		-0.283560, 0.433869, -0.855191,
		0.120354, -0.868642, -0.480599,
		34.037479, 33.639317, 29.895935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364357, 34.253990, 29.918692>,  <33.953232, 34.247368, 30.232355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364357, 34.253990, 29.918692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508972, 33.884430, 29.868567>,  <33.595741, 33.662693, 29.838491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.508972, 33.884430, 29.868567>,  <33.364357, 34.253990, 29.918692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508972, 33.884430, 29.868567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924066, -0.372955, 0.083707,
		-0.124073, 0.085533, -0.988580,
		0.361536, -0.923899, -0.125312,
		33.617432, 33.607262, 29.830973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024376, 34.047165, 29.429621>,  <33.364357, 34.253990, 29.918692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024376, 34.047165, 29.429621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159718, 33.724693, 29.623775>,  <33.240921, 33.531212, 29.740269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159718, 33.724693, 29.623775>,  <33.024376, 34.047165, 29.429621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159718, 33.724693, 29.623775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921543, -0.388267, -0.002476,
		0.190455, -0.446465, -0.874297,
		0.338356, -0.806174, 0.485385,
		33.261223, 33.482841, 29.769390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507092, 34.460560, 29.445824>,  <33.024376, 34.047165, 29.429621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507092, 34.460560, 29.445824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532459, 34.450729, 29.844898>,  <32.547680, 34.444832, 30.084343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532459, 34.450729, 29.844898>,  <32.507092, 34.460560, 29.445824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532459, 34.450729, 29.844898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941204, -0.330927, -0.067985,
		0.331832, 0.943336, 0.002147,
		0.063422, -0.024580, 0.997684,
		32.551487, 34.443356, 30.144203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829479, 34.732536, 29.061954>,  <32.507092, 34.460560, 29.445824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829479, 34.732536, 29.061954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667866, 34.963615, 29.345648>,  <31.570898, 35.102264, 29.515863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.667866, 34.963615, 29.345648>,  <31.829479, 34.732536, 29.061954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667866, 34.963615, 29.345648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345173, 0.814306, -0.466650,
		-0.847119, 0.056266, -0.528416,
		-0.404036, 0.577702, 0.709236,
		31.546656, 35.136925, 29.558418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458879, 35.269958, 28.693693>,  <31.829479, 34.732536, 29.061954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458879, 35.269958, 28.693693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553839, 35.383339, 29.065348>,  <31.610815, 35.451366, 29.288342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553839, 35.383339, 29.065348>,  <31.458879, 35.269958, 28.693693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553839, 35.383339, 29.065348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580645, 0.725402, -0.369655,
		-0.778777, 0.627255, 0.007627,
		0.237400, 0.283450, 0.929138,
		31.625059, 35.468372, 29.344090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383480, 36.022884, 28.732254>,  <31.458879, 35.269958, 28.693693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383480, 36.022884, 28.732254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634647, 35.918041, 29.025379>,  <31.785347, 35.855133, 29.201254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634647, 35.918041, 29.025379>,  <31.383480, 36.022884, 28.732254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634647, 35.918041, 29.025379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648064, 0.697484, -0.305824,
		-0.430967, 0.666943, 0.607828,
		0.627918, -0.262111, 0.732814,
		31.823023, 35.839409, 29.245224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646185, 36.574230, 28.852833>,  <31.383480, 36.022884, 28.732254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646185, 36.574230, 28.852833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917498, 36.324551, 29.007910>,  <32.080284, 36.174744, 29.100956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.917498, 36.324551, 29.007910>,  <31.646185, 36.574230, 28.852833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917498, 36.324551, 29.007910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733441, 0.543044, -0.408861,
		0.044677, 0.561674, 0.826152,
		0.678283, -0.624200, 0.387693,
		32.120983, 36.137291, 29.124218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099503, 36.936203, 29.086042>,  <31.646185, 36.574230, 28.852833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099503, 36.936203, 29.086042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315624, 36.602753, 29.040176>,  <32.445297, 36.402683, 29.012657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315624, 36.602753, 29.040176>,  <32.099503, 36.936203, 29.086042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315624, 36.602753, 29.040176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693595, 0.518352, -0.500237,
		0.476447, 0.190746, 0.858262,
		0.540300, -0.833623, -0.114667,
		32.477715, 36.352665, 29.005775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754120, 37.119026, 29.329607>,  <32.099503, 36.936203, 29.086042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754120, 37.119026, 29.329607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813824, 36.795868, 29.101564>,  <32.849648, 36.601971, 28.964739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813824, 36.795868, 29.101564>,  <32.754120, 37.119026, 29.329607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813824, 36.795868, 29.101564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818475, 0.424457, -0.387215,
		0.554816, -0.408823, 0.724598,
		0.149259, -0.807898, -0.570107,
		32.858601, 36.553497, 28.930532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492928, 37.133846, 29.231525>,  <32.754120, 37.119026, 29.329607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492928, 37.133846, 29.231525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391384, 36.874123, 28.944765>,  <33.330460, 36.718288, 28.772709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391384, 36.874123, 28.944765>,  <33.492928, 37.133846, 29.231525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391384, 36.874123, 28.944765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768323, 0.314874, -0.557257,
		0.587568, -0.692276, 0.418949,
		-0.253860, -0.649314, -0.716901,
		33.315228, 36.679329, 28.729694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127430, 36.745831, 29.118801>,  <33.492928, 37.133846, 29.231525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127430, 36.745831, 29.118801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884258, 36.725086, 28.801884>,  <33.738354, 36.712639, 28.611732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884258, 36.725086, 28.801884>,  <34.127430, 36.745831, 29.118801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884258, 36.725086, 28.801884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728731, 0.359736, -0.582702,
		0.315233, -0.931612, -0.180906,
		-0.607931, -0.051855, -0.792295,
		33.701878, 36.709530, 28.564196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396336, 36.269073, 28.650742>,  <34.127430, 36.745831, 29.118801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396336, 36.269073, 28.650742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176502, 36.557362, 28.481733>,  <34.044601, 36.730335, 28.380327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.176502, 36.557362, 28.481733>,  <34.396336, 36.269073, 28.650742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176502, 36.557362, 28.481733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819355, 0.366224, -0.441064,
		-0.163145, -0.588596, -0.791794,
		-0.549583, 0.720718, -0.422522,
		34.011627, 36.773579, 28.354977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737419, 36.363884, 27.943907>,  <34.396336, 36.269073, 28.650742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737419, 36.363884, 27.943907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486374, 36.674950, 27.958523>,  <34.335747, 36.861591, 27.967293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.486374, 36.674950, 27.958523>,  <34.737419, 36.363884, 27.943907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486374, 36.674950, 27.958523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663346, 0.558739, -0.497777,
		-0.407520, -0.288174, -0.866535,
		-0.627614, 0.777667, 0.036538,
		34.298088, 36.908249, 27.969484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677059, 36.547428, 27.289480>,  <34.737419, 36.363884, 27.943907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677059, 36.547428, 27.289480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569130, 36.865608, 27.506536>,  <34.504372, 37.056515, 27.636770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569130, 36.865608, 27.506536>,  <34.677059, 36.547428, 27.289480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569130, 36.865608, 27.506536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498859, 0.597494, -0.627806,
		-0.823612, 0.101306, -0.558033,
		-0.269821, 0.795448, 0.542641,
		34.488182, 37.104244, 27.669329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444107, 37.084183, 26.819998>,  <34.677059, 36.547428, 27.289480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444107, 37.084183, 26.819998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519615, 37.293468, 27.152409>,  <34.564919, 37.419041, 27.351856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519615, 37.293468, 27.152409>,  <34.444107, 37.084183, 26.819998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519615, 37.293468, 27.152409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467049, 0.696574, -0.544655,
		-0.863847, 0.490945, -0.112878,
		0.188768, 0.523218, 0.831029,
		34.576244, 37.450436, 27.401718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392384, 37.698933, 26.568512>,  <34.444107, 37.084183, 26.819998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392384, 37.698933, 26.568512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570488, 37.773567, 26.918810>,  <34.677349, 37.818348, 27.128988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570488, 37.773567, 26.918810>,  <34.392384, 37.698933, 26.568512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570488, 37.773567, 26.918810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407628, 0.828578, -0.383793,
		-0.797234, 0.527866, 0.292875,
		0.445261, 0.186589, 0.875744,
		34.704067, 37.829544, 27.181534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206814, 38.340603, 26.699751>,  <34.392384, 37.698933, 26.568512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206814, 38.340603, 26.699751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550182, 38.258465, 26.887770>,  <34.756203, 38.209183, 27.000582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550182, 38.258465, 26.887770>,  <34.206814, 38.340603, 26.699751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550182, 38.258465, 26.887770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362657, 0.891025, -0.273047,
		-0.362755, 0.404856, 0.839345,
		0.858422, -0.205345, 0.470048,
		34.807709, 38.196861, 27.028784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360649, 38.926960, 27.113222>,  <34.206814, 38.340603, 26.699751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360649, 38.926960, 27.113222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711468, 38.737755, 27.079641>,  <34.921959, 38.624229, 27.059492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.711468, 38.737755, 27.079641>,  <34.360649, 38.926960, 27.113222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711468, 38.737755, 27.079641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405629, 0.822763, -0.398153,
		0.257406, 0.315145, 0.913469,
		0.877045, -0.473016, -0.083953,
		34.974583, 38.595848, 27.054455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803543, 39.425278, 27.407259>,  <34.360649, 38.926960, 27.113222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803543, 39.425278, 27.407259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039623, 39.177872, 27.199757>,  <35.181271, 39.029427, 27.075256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039623, 39.177872, 27.199757>,  <34.803543, 39.425278, 27.407259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039623, 39.177872, 27.199757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487783, 0.785275, -0.381328,
		0.643221, -0.027980, 0.765169,
		0.590198, -0.618515, -0.518754,
		35.216682, 38.992317, 27.044130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463299, 39.734848, 27.501545>,  <34.803543, 39.425278, 27.407259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463299, 39.734848, 27.501545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463291, 39.492580, 27.183258>,  <35.463287, 39.347221, 26.992287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463291, 39.492580, 27.183258>,  <35.463299, 39.734848, 27.501545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463291, 39.492580, 27.183258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633283, 0.615813, -0.468750,
		0.773920, -0.503923, 0.383549,
		-0.000019, -0.605670, -0.795716,
		35.463284, 39.310879, 26.944544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124687, 39.706436, 27.417366>,  <35.463299, 39.734848, 27.501545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124687, 39.706436, 27.417366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922283, 39.629856, 27.080961>,  <35.800838, 39.583908, 26.879118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.922283, 39.629856, 27.080961>,  <36.124687, 39.706436, 27.417366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922283, 39.629856, 27.080961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528294, 0.701962, -0.477656,
		0.681803, -0.686001, -0.254063,
		-0.506014, -0.191447, -0.841010,
		35.770481, 39.572422, 26.828657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580956, 39.477810, 26.962851>,  <36.124687, 39.706436, 27.417366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580956, 39.477810, 26.962851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274956, 39.613602, 26.743933>,  <36.091354, 39.695076, 26.612583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.274956, 39.613602, 26.743933>,  <36.580956, 39.477810, 26.962851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274956, 39.613602, 26.743933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639412, 0.501943, -0.582414,
		0.076993, -0.795492, -0.601053,
		-0.765000, 0.339479, -0.547293,
		36.045456, 39.715446, 26.579744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955376, 39.575806, 26.345327>,  <36.580956, 39.477810, 26.962851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955376, 39.575806, 26.345327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599384, 39.745293, 26.277912>,  <36.385788, 39.846985, 26.237463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599384, 39.745293, 26.277912>,  <36.955376, 39.575806, 26.345327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599384, 39.745293, 26.277912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428698, 0.651460, -0.625954,
		-0.155431, -0.629337, -0.761431,
		-0.889977, 0.423716, -0.168538,
		36.332390, 39.872406, 26.227350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925125, 39.647552, 25.668854>,  <36.955376, 39.575806, 26.345327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925125, 39.647552, 25.668854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691639, 39.927288, 25.833876>,  <36.551548, 40.095131, 25.932888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691639, 39.927288, 25.833876>,  <36.925125, 39.647552, 25.668854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691639, 39.927288, 25.833876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493070, 0.708988, -0.504199,
		-0.645102, -0.090891, -0.758671,
		-0.583717, 0.699338, 0.412554,
		36.516525, 40.137089, 25.957642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927456, 40.140026, 25.168495>,  <36.925125, 39.647552, 25.668854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927456, 40.140026, 25.168495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769966, 40.353222, 25.468069>,  <36.675472, 40.481140, 25.647814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769966, 40.353222, 25.468069>,  <36.927456, 40.140026, 25.168495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769966, 40.353222, 25.468069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407746, 0.831467, -0.377368,
		-0.823849, 0.156798, -0.544690,
		-0.393721, 0.532989, 0.748937,
		36.651848, 40.513119, 25.692751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589664, 40.738323, 24.880423>,  <36.927456, 40.140026, 25.168495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589664, 40.738323, 24.880423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673470, 40.812824, 25.264383>,  <36.723751, 40.857525, 25.494761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673470, 40.812824, 25.264383>,  <36.589664, 40.738323, 24.880423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673470, 40.812824, 25.264383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516502, 0.812477, -0.270382,
		-0.830259, 0.552440, 0.074022,
		0.209511, 0.186255, 0.959903,
		36.736324, 40.868702, 25.552355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584652, 41.433857, 24.975121>,  <36.589664, 40.738323, 24.880423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584652, 41.433857, 24.975121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799137, 41.331703, 25.296930>,  <36.927826, 41.270412, 25.490017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799137, 41.331703, 25.296930>,  <36.584652, 41.433857, 24.975121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799137, 41.331703, 25.296930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530503, 0.843321, -0.085881,
		-0.656540, 0.472853, 0.587677,
		0.536210, -0.255380, 0.804525,
		36.959999, 41.255089, 25.538288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671326, 42.149410, 25.316332>,  <36.584652, 41.433857, 24.975121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671326, 42.149410, 25.316332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930107, 41.935345, 25.533607>,  <37.085377, 41.806904, 25.663973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930107, 41.935345, 25.533607>,  <36.671326, 42.149410, 25.316332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930107, 41.935345, 25.533607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590110, 0.802530, 0.087840,
		-0.482933, 0.263712, 0.835004,
		0.646951, -0.535165, 0.543188,
		37.124191, 41.774796, 25.696564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868191, 42.575645, 25.876228>,  <36.671326, 42.149410, 25.316332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868191, 42.575645, 25.876228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143230, 42.299809, 25.785297>,  <37.308254, 42.134308, 25.730740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143230, 42.299809, 25.785297>,  <36.868191, 42.575645, 25.876228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143230, 42.299809, 25.785297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685107, 0.719865, -0.111458,
		0.240505, -0.079105, 0.967419,
		0.687595, -0.689591, -0.227327,
		37.349510, 42.092930, 25.717100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539665, 42.707394, 26.187540>,  <36.868191, 42.575645, 25.876228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539665, 42.707394, 26.187540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678345, 42.455910, 25.909109>,  <37.761551, 42.305019, 25.742050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.678345, 42.455910, 25.909109>,  <37.539665, 42.707394, 26.187540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678345, 42.455910, 25.909109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683979, 0.677275, -0.271057,
		0.641851, -0.382126, 0.664836,
		0.346699, -0.628712, -0.696075,
		37.782356, 42.267296, 25.700287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923183, 43.061253, 26.739189>,  <37.539665, 42.707394, 26.187540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923183, 43.061253, 26.739189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952202, 43.339615, 27.024971>,  <37.969612, 43.506634, 27.196440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952202, 43.339615, 27.024971>,  <37.923183, 43.061253, 26.739189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952202, 43.339615, 27.024971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612155, -0.534472, 0.582757,
		0.787403, -0.479634, 0.387231,
		0.072546, 0.695910, 0.714455,
		37.973965, 43.548389, 27.239307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104469, 42.646778, 27.387314>,  <37.923183, 43.061253, 26.739189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104469, 42.646778, 27.387314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938572, 43.002460, 27.464558>,  <37.839035, 43.215870, 27.510904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.938572, 43.002460, 27.464558>,  <38.104469, 42.646778, 27.387314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938572, 43.002460, 27.464558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595000, -0.425586, 0.681800,
		0.688449, 0.167873, 0.705590,
		-0.414745, 0.889210, 0.193110,
		37.814148, 43.269222, 27.522491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135849, 42.657681, 28.081730>,  <38.104469, 42.646778, 27.387314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135849, 42.657681, 28.081730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853821, 42.920403, 27.974792>,  <37.684605, 43.078037, 27.910629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.853821, 42.920403, 27.974792>,  <38.135849, 42.657681, 28.081730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853821, 42.920403, 27.974792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603632, -0.358037, 0.712346,
		0.372156, 0.663635, 0.648914,
		-0.705073, 0.656809, -0.267346,
		37.642300, 43.117447, 27.894588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875244, 42.922916, 28.683365>,  <38.135849, 42.657681, 28.081730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875244, 42.922916, 28.683365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575024, 42.995922, 28.429323>,  <37.394890, 43.039726, 28.276899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575024, 42.995922, 28.429323>,  <37.875244, 42.922916, 28.683365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575024, 42.995922, 28.429323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655613, -0.325961, 0.681118,
		-0.082704, 0.927598, 0.364311,
		-0.750554, 0.182517, -0.635103,
		37.349857, 43.050678, 28.238792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288712, 43.154526, 29.051590>,  <37.875244, 42.922916, 28.683365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288712, 43.154526, 29.051590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102337, 43.031349, 28.719790>,  <36.990513, 42.957443, 28.520710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102337, 43.031349, 28.719790>,  <37.288712, 43.154526, 29.051590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102337, 43.031349, 28.719790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703990, -0.438887, 0.558370,
		-0.536003, 0.844126, -0.012295,
		-0.465939, -0.307944, -0.829501,
		36.962555, 42.938965, 28.470940>
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
