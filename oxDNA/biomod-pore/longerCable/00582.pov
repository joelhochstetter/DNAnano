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
	<23.966347, 35.387230, 35.067257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293890, 35.157646, 35.069771>,  <24.490416, 35.019897, 35.071278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293890, 35.157646, 35.069771>,  <23.966347, 35.387230, 35.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293890, 35.157646, 35.069771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363786, 0.510477, -0.779149,
		0.443994, 0.640299, 0.626807,
		0.818859, -0.573961, 0.006284,
		24.539547, 34.985458, 35.071655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571117, 35.888107, 34.895790>,  <23.966347, 35.387230, 35.067257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571117, 35.888107, 34.895790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599487, 35.502583, 34.792999>,  <24.616508, 35.271267, 34.731327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599487, 35.502583, 34.792999>,  <24.571117, 35.888107, 34.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599487, 35.502583, 34.792999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127572, 0.264271, -0.955974,
		0.989290, 0.035019, 0.141699,
		0.070924, -0.963812, -0.256974,
		24.620764, 35.213440, 34.715908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292450, 35.585136, 34.713760>,  <24.571117, 35.888107, 34.895790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292450, 35.585136, 34.713760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951687, 35.472382, 34.537220>,  <24.747229, 35.404728, 34.431297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951687, 35.472382, 34.537220>,  <25.292450, 35.585136, 34.713760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951687, 35.472382, 34.537220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283142, 0.461046, -0.840991,
		0.440536, -0.841417, -0.312961,
		-0.851914, -0.281875, -0.441348,
		24.696114, 35.387817, 34.404816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361563, 35.040352, 34.226040>,  <25.292450, 35.585136, 34.713760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361563, 35.040352, 34.226040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059917, 35.290653, 34.146294>,  <24.878929, 35.440834, 34.098446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059917, 35.290653, 34.146294>,  <25.361563, 35.040352, 34.226040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059917, 35.290653, 34.146294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587726, 0.507553, -0.630054,
		-0.293068, -0.592305, -0.750524,
		-0.754115, 0.625751, -0.199366,
		24.833683, 35.478378, 34.086483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241661, 35.094913, 33.498013>,  <25.361563, 35.040352, 34.226040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241661, 35.094913, 33.498013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163891, 35.435806, 33.692291>,  <25.117229, 35.640343, 33.808861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163891, 35.435806, 33.692291>,  <25.241661, 35.094913, 33.498013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163891, 35.435806, 33.692291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662778, 0.479156, -0.575443,
		-0.723135, 0.210031, -0.657999,
		-0.194423, 0.852230, 0.485699,
		25.105564, 35.691475, 33.838001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974110, 35.609711, 33.091511>,  <25.241661, 35.094913, 33.498013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974110, 35.609711, 33.091511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109715, 35.820518, 33.403233>,  <25.191078, 35.947002, 33.590267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109715, 35.820518, 33.403233>,  <24.974110, 35.609711, 33.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109715, 35.820518, 33.403233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537974, 0.570959, -0.620153,
		-0.771786, 0.629486, -0.089963,
		0.339012, 0.527023, 0.779306,
		25.211418, 35.978626, 33.637024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837698, 36.250511, 32.867004>,  <24.974110, 35.609711, 33.091511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837698, 36.250511, 32.867004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121216, 36.237713, 33.148880>,  <25.291327, 36.230034, 33.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.121216, 36.237713, 33.148880>,  <24.837698, 36.250511, 32.867004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.121216, 36.237713, 33.148880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575449, 0.604018, -0.551381,
		-0.408003, 0.796329, 0.446536,
		0.708796, -0.031993, 0.704688,
		25.333855, 36.228115, 33.360287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940912, 36.915764, 33.139809>,  <24.837698, 36.250511, 32.867004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940912, 36.915764, 33.139809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262980, 36.679424, 33.160225>,  <25.456219, 36.537621, 33.172474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262980, 36.679424, 33.160225>,  <24.940912, 36.915764, 33.139809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262980, 36.679424, 33.160225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452208, 0.555996, -0.697407,
		0.383685, 0.584608, 0.714856,
		0.805167, -0.590848, 0.051037,
		25.504530, 36.502171, 33.175537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493265, 37.341408, 33.136143>,  <24.940912, 36.915764, 33.139809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493265, 37.341408, 33.136143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655012, 36.988850, 33.038467>,  <25.752060, 36.777313, 32.979862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655012, 36.988850, 33.038467>,  <25.493265, 37.341408, 33.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655012, 36.988850, 33.038467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686692, 0.468934, -0.555477,
		0.604105, 0.056931, 0.794868,
		0.404365, -0.881396, -0.244191,
		25.776321, 36.724430, 32.965210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871687, 37.268448, 33.827862>,  <25.493265, 37.341408, 33.136143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871687, 37.268448, 33.827862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269321, 37.276852, 33.785252>,  <26.507902, 37.281895, 33.759686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269321, 37.276852, 33.785252>,  <25.871687, 37.268448, 33.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269321, 37.276852, 33.785252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027268, 0.901332, 0.432269,
		0.105095, -0.432618, 0.895431,
		0.994088, 0.021013, -0.106522,
		26.567549, 37.283157, 33.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116661, 37.967930, 34.103939>,  <25.871687, 37.268448, 33.827862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116661, 37.967930, 34.103939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872381, 37.795174, 34.369423>,  <25.725813, 37.691521, 34.528713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872381, 37.795174, 34.369423>,  <26.116661, 37.967930, 34.103939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872381, 37.795174, 34.369423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784357, -0.214808, 0.581929,
		-0.108757, 0.875974, 0.469938,
		-0.610701, -0.431888, 0.663714,
		25.689171, 37.665607, 34.568539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285604, 38.052490, 34.835220>,  <26.116661, 37.967930, 34.103939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285604, 38.052490, 34.835220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066490, 37.717964, 34.844261>,  <25.935022, 37.517250, 34.849686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066490, 37.717964, 34.844261>,  <26.285604, 38.052490, 34.835220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066490, 37.717964, 34.844261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581432, -0.361136, 0.729053,
		-0.601555, 0.412506, 0.684084,
		-0.547786, -0.836313, 0.022601,
		25.902155, 37.467072, 34.851040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586733, 38.709099, 34.930679>,  <26.285604, 38.052490, 34.835220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586733, 38.709099, 34.930679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720413, 39.021976, 35.141003>,  <26.800621, 39.209705, 35.267197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720413, 39.021976, 35.141003>,  <26.586733, 38.709099, 34.930679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720413, 39.021976, 35.141003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022757, -0.551029, 0.834176,
		0.942227, -0.290748, -0.166353,
		0.334200, 0.782197, 0.525811,
		26.820673, 39.256638, 35.298744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247711, 38.588993, 35.271111>,  <26.586733, 38.709099, 34.930679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247711, 38.588993, 35.271111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975399, 38.824032, 35.446045>,  <26.812012, 38.965057, 35.551006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975399, 38.824032, 35.446045>,  <27.247711, 38.588993, 35.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975399, 38.824032, 35.446045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100999, -0.666657, 0.738491,
		0.725491, 0.458580, 0.513194,
		-0.680781, 0.587600, 0.437337,
		26.771164, 39.000313, 35.577248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777874, 38.035545, 35.205940>,  <27.247711, 38.588993, 35.271111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777874, 38.035545, 35.205940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487438, 38.211636, 34.994663>,  <27.313177, 38.317291, 34.867897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487438, 38.211636, 34.994663>,  <27.777874, 38.035545, 35.205940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487438, 38.211636, 34.994663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184032, -0.864572, -0.467598,
		-0.662513, -0.242314, 0.708774,
		-0.726092, 0.440226, -0.528197,
		27.269611, 38.343704, 34.836205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176016, 37.771954, 34.680634>,  <27.777874, 38.035545, 35.205940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176016, 37.771954, 34.680634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398773, 37.441051, 34.710350>,  <28.532427, 37.242512, 34.728180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398773, 37.441051, 34.710350>,  <28.176016, 37.771954, 34.680634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398773, 37.441051, 34.710350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664973, 0.390473, -0.636664,
		0.497675, 0.403956, 0.767554,
		0.556894, -0.827255, 0.074291,
		28.565842, 37.192875, 34.732635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943857, 37.828060, 34.729645>,  <28.176016, 37.771954, 34.680634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943857, 37.828060, 34.729645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 37.492737, 34.526718>,  <28.816069, 37.291542, 34.404961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 37.492737, 34.526718>,  <28.943857, 37.828060, 34.729645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863989, 37.492737, 34.526718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440489, 0.385687, -0.810688,
		0.875272, -0.385338, 0.292255,
		-0.199670, -0.838308, -0.507318,
		28.804089, 37.241245, 34.374523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479259, 37.753834, 34.330235>,  <28.943857, 37.828060, 34.729645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479259, 37.753834, 34.330235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207891, 37.515163, 34.158783>,  <29.045071, 37.371960, 34.055912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207891, 37.515163, 34.158783>,  <29.479259, 37.753834, 34.330235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207891, 37.515163, 34.158783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209589, 0.401993, -0.891333,
		0.704143, -0.694534, -0.147663,
		-0.678421, -0.596677, -0.428627,
		29.004366, 37.336159, 34.030193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786097, 37.386127, 33.789150>,  <29.479259, 37.753834, 34.330235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786097, 37.386127, 33.789150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397125, 37.437897, 33.711552>,  <29.163742, 37.468960, 33.664993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397125, 37.437897, 33.711552>,  <29.786097, 37.386127, 33.789150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397125, 37.437897, 33.711552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230697, 0.412118, -0.881441,
		-0.034134, -0.901891, -0.430613,
		-0.972427, 0.129428, -0.193997,
		29.105396, 37.476727, 33.653351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601759, 37.120541, 33.130291>,  <29.786097, 37.386127, 33.789150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601759, 37.120541, 33.130291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323563, 37.400295, 33.196194>,  <29.156645, 37.568150, 33.235737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323563, 37.400295, 33.196194>,  <29.601759, 37.120541, 33.130291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323563, 37.400295, 33.196194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039695, 0.266345, -0.963060,
		-0.717439, -0.663258, -0.213003,
		-0.695490, 0.699392, 0.164759,
		29.114916, 37.610111, 33.245621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991568, 36.958801, 32.666832>,  <29.601759, 37.120541, 33.130291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991568, 36.958801, 32.666832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078753, 37.338528, 32.757420>,  <29.131063, 37.566364, 32.811771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078753, 37.338528, 32.757420>,  <28.991568, 36.958801, 32.666832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078753, 37.338528, 32.757420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041408, 0.222842, -0.973975,
		-0.975079, 0.221667, 0.009261,
		0.217962, 0.949318, 0.226468,
		29.144140, 37.623322, 32.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562160, 37.398895, 32.284794>,  <28.991568, 36.958801, 32.666832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562160, 37.398895, 32.284794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910776, 37.585201, 32.346096>,  <29.119946, 37.696983, 32.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910776, 37.585201, 32.346096>,  <28.562160, 37.398895, 32.284794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910776, 37.585201, 32.346096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065880, 0.198487, -0.977887,
		-0.485884, 0.862361, 0.142304,
		0.871537, 0.465765, 0.153254,
		29.172237, 37.724930, 32.392071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617764, 38.043629, 32.026974>,  <28.562160, 37.398895, 32.284794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617764, 38.043629, 32.026974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987816, 37.891937, 32.019817>,  <29.209846, 37.800922, 32.015526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.987816, 37.891937, 32.019817>,  <28.617764, 38.043629, 32.026974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987816, 37.891937, 32.019817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037763, 0.138796, -0.989601,
		0.377769, 0.914833, 0.142725,
		0.925129, -0.379230, -0.017886,
		29.265354, 37.778168, 32.014450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112593, 38.436947, 31.625031>,  <28.617764, 38.043629, 32.026974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112593, 38.436947, 31.625031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230156, 38.054943, 31.609156>,  <29.300694, 37.825741, 31.599630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230156, 38.054943, 31.609156>,  <29.112593, 38.436947, 31.625031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230156, 38.054943, 31.609156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170300, 0.093176, -0.980977,
		0.940541, 0.281556, 0.190023,
		0.293906, -0.955010, -0.039687,
		29.318327, 37.768440, 31.597250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893778, 38.338642, 31.436678>,  <29.112593, 38.436947, 31.625031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893778, 38.338642, 31.436678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598221, 38.083122, 31.350912>,  <29.420887, 37.929810, 31.299452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598221, 38.083122, 31.350912>,  <29.893778, 38.338642, 31.436678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598221, 38.083122, 31.350912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162059, 0.140395, -0.976742,
		0.654046, -0.756455, -0.000214,
		-0.738891, -0.638800, -0.214416,
		29.376553, 37.891483, 31.286587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108152, 38.196880, 32.167252>,  <29.893778, 38.338642, 31.436678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108152, 38.196880, 32.167252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231482, 38.493935, 32.405048>,  <30.305479, 38.672169, 32.547726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231482, 38.493935, 32.405048>,  <30.108152, 38.196880, 32.167252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231482, 38.493935, 32.405048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951277, -0.238905, -0.194924,
		-0.002730, 0.625631, -0.780114,
		0.308324, 0.742637, 0.594496,
		30.323978, 38.716724, 32.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606623, 38.593857, 31.766190>,  <30.108152, 38.196880, 32.167252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606623, 38.593857, 31.766190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664185, 38.647694, 32.158348>,  <30.698721, 38.679996, 32.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664185, 38.647694, 32.158348>,  <30.606623, 38.593857, 31.766190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664185, 38.647694, 32.158348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955414, -0.277016, -0.102206,
		0.257829, 0.951392, -0.168456,
		0.143903, 0.134594, 0.980396,
		30.707355, 38.688072, 32.452465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085415, 39.244431, 31.893997>,  <30.606623, 38.593857, 31.766190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085415, 39.244431, 31.893997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096315, 38.969063, 32.183918>,  <31.102856, 38.803841, 32.357872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096315, 38.969063, 32.183918>,  <31.085415, 39.244431, 31.893997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096315, 38.969063, 32.183918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990724, 0.115166, 0.072133,
		-0.133130, 0.716113, 0.685170,
		0.027253, -0.688418, 0.724802,
		31.104492, 38.762539, 32.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538639, 39.024693, 32.543358>,  <31.085415, 39.244431, 31.893997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538639, 39.024693, 32.543358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890913, 38.895397, 32.404846>,  <32.102276, 38.817822, 32.321739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890913, 38.895397, 32.404846>,  <31.538639, 39.024693, 32.543358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890913, 38.895397, 32.404846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313635, 0.945719, -0.085133,
		0.355004, -0.033631, 0.934260,
		0.880684, -0.323239, -0.346282,
		32.155117, 38.798424, 32.300961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983772, 39.520985, 32.828747>,  <31.538639, 39.024693, 32.543358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983772, 39.520985, 32.828747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222511, 39.317841, 32.580280>,  <32.365753, 39.195953, 32.431198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222511, 39.317841, 32.580280>,  <31.983772, 39.520985, 32.828747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222511, 39.317841, 32.580280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506784, 0.838821, -0.198870,
		0.622047, -0.196103, 0.758024,
		0.596848, -0.507861, -0.621168,
		32.401566, 39.165482, 32.393929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655003, 39.296162, 33.134628>,  <31.983772, 39.520985, 32.828747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655003, 39.296162, 33.134628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 39.349091, 32.738739>,  <32.689690, 39.380848, 32.501205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676682, 39.349091, 32.738739>,  <32.655003, 39.296162, 33.134628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676682, 39.349091, 32.738739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684358, 0.716855, 0.133312,
		0.727129, -0.684551, -0.051704,
		0.054195, 0.132319, -0.989725,
		32.692940, 39.388786, 32.441822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367386, 39.267830, 32.935551>,  <32.655003, 39.296162, 33.134628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367386, 39.267830, 32.935551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151245, 39.483372, 32.677044>,  <33.021561, 39.612698, 32.521942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151245, 39.483372, 32.677044>,  <33.367386, 39.267830, 32.935551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151245, 39.483372, 32.677044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699853, 0.714212, 0.010357,
		0.467151, -0.446693, -0.763043,
		-0.540348, 0.538856, -0.646265,
		32.989140, 39.645027, 32.483166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828224, 39.554592, 32.563061>,  <33.367386, 39.267830, 32.935551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828224, 39.554592, 32.563061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504456, 39.780689, 32.499382>,  <33.310196, 39.916348, 32.461174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504456, 39.780689, 32.499382>,  <33.828224, 39.554592, 32.563061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504456, 39.780689, 32.499382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553721, 0.824919, 0.113590,
		0.195528, 0.003793, -0.980691,
		-0.809421, 0.565239, -0.159195,
		33.261631, 39.950260, 32.451622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022938, 40.077225, 32.118885>,  <33.828224, 39.554592, 32.563061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022938, 40.077225, 32.118885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721539, 40.216824, 32.341755>,  <33.540699, 40.300583, 32.475475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721539, 40.216824, 32.341755>,  <34.022938, 40.077225, 32.118885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721539, 40.216824, 32.341755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516087, 0.839004, 0.172413,
		-0.407299, 0.417463, -0.812300,
		-0.753499, 0.348994, 0.557173,
		33.495487, 40.321522, 32.508907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722504, 39.841866, 31.492556>,  <34.022938, 40.077225, 32.118885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722504, 39.841866, 31.492556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411400, 40.093029, 31.481146>,  <33.224739, 40.243729, 31.474300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411400, 40.093029, 31.481146>,  <33.722504, 39.841866, 31.492556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411400, 40.093029, 31.481146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481812, 0.624710, 0.614487,
		0.403666, 0.464180, -0.788411,
		-0.777760, 0.627913, -0.028526,
		33.178070, 40.281403, 31.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941570, 40.492592, 31.349916>,  <33.722504, 39.841866, 31.492556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941570, 40.492592, 31.349916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614330, 40.590332, 31.558146>,  <33.417984, 40.648975, 31.683083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614330, 40.590332, 31.558146>,  <33.941570, 40.492592, 31.349916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614330, 40.590332, 31.558146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468241, 0.808566, 0.356330,
		-0.333849, 0.535270, -0.775907,
		-0.818105, 0.244351, 0.520574,
		33.368900, 40.663639, 31.714317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657810, 41.093937, 31.187410>,  <33.941570, 40.492592, 31.349916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657810, 41.093937, 31.187410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569595, 41.038639, 31.573622>,  <33.516666, 41.005459, 31.805349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569595, 41.038639, 31.573622>,  <33.657810, 41.093937, 31.187410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569595, 41.038639, 31.573622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576799, 0.779782, 0.243399,
		-0.786553, 0.610597, -0.092233,
		-0.220541, -0.138246, 0.965531,
		33.503433, 40.997166, 31.863281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470535, 41.813419, 31.456898>,  <33.657810, 41.093937, 31.187410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470535, 41.813419, 31.456898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558285, 41.576813, 31.767248>,  <33.610935, 41.434849, 31.953459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558285, 41.576813, 31.767248>,  <33.470535, 41.813419, 31.456898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558285, 41.576813, 31.767248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546678, 0.733204, 0.404419,
		-0.808096, 0.335437, 0.484213,
		0.219370, -0.591518, 0.775876,
		33.624096, 41.399357, 32.000011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312489, 42.153603, 32.122375>,  <33.470535, 41.813419, 31.456898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312489, 42.153603, 32.122375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614601, 41.892078, 32.140621>,  <33.795868, 41.735165, 32.151569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614601, 41.892078, 32.140621>,  <33.312489, 42.153603, 32.122375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614601, 41.892078, 32.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565109, 0.684901, 0.459960,
		-0.331970, -0.321621, 0.886767,
		0.755280, -0.653813, 0.045615,
		33.841187, 41.695934, 32.154305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980450, 42.592712, 31.891521>,  <33.312489, 42.153603, 32.122375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980450, 42.592712, 31.891521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976799, 42.842422, 31.579062>,  <33.974609, 42.992249, 31.391584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976799, 42.842422, 31.579062>,  <33.980450, 42.592712, 31.891521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976799, 42.842422, 31.579062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370782, -0.723385, -0.582439,
		-0.928675, -0.294952, -0.224869,
		-0.009125, 0.624274, -0.781152,
		33.974060, 43.029705, 31.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016178, 42.529694, 32.663925>,  <33.980450, 42.592712, 31.891521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016178, 42.529694, 32.663925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902046, 42.280544, 32.955296>,  <33.833565, 42.131054, 33.130119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902046, 42.280544, 32.955296>,  <34.016178, 42.529694, 32.663925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902046, 42.280544, 32.955296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140271, -0.724702, -0.674634,
		0.948108, -0.294673, 0.119410,
		-0.285333, -0.622876, 0.728430,
		33.816444, 42.093681, 33.173824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368977, 41.847805, 32.585594>,  <34.016178, 42.529694, 32.663925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368977, 41.847805, 32.585594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038658, 41.783672, 32.801872>,  <33.840466, 41.745193, 32.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038658, 41.783672, 32.801872>,  <34.368977, 41.847805, 32.585594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038658, 41.783672, 32.801872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179797, -0.833861, -0.521870,
		0.534536, -0.528175, 0.659774,
		-0.825799, -0.160333, 0.540693,
		33.790916, 41.735573, 32.964081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430244, 41.184044, 32.677502>,  <34.368977, 41.847805, 32.585594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430244, 41.184044, 32.677502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063946, 41.344608, 32.670769>,  <33.844166, 41.440945, 32.666729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063946, 41.344608, 32.670769>,  <34.430244, 41.184044, 32.677502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063946, 41.344608, 32.670769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338875, -0.794241, -0.504327,
		-0.215811, -0.456130, 0.863349,
		-0.915745, 0.401406, -0.016834,
		33.789223, 41.465031, 32.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848251, 40.804005, 33.158070>,  <34.430244, 41.184044, 32.677502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848251, 40.804005, 33.158070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759472, 40.989521, 32.814991>,  <33.706203, 41.100830, 32.609146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759472, 40.989521, 32.814991>,  <33.848251, 40.804005, 33.158070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759472, 40.989521, 32.814991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532149, -0.794695, -0.292025,
		-0.817042, 0.391606, 0.423186,
		-0.221945, 0.463794, -0.857692,
		33.692890, 41.128658, 32.557682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139721, 40.775463, 33.098190>,  <33.848251, 40.804005, 33.158070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139721, 40.775463, 33.098190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256149, 40.855309, 32.723934>,  <33.326008, 40.903217, 32.499378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256149, 40.855309, 32.723934>,  <33.139721, 40.775463, 33.098190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256149, 40.855309, 32.723934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516039, -0.790763, -0.329239,
		-0.805593, 0.578661, -0.127162,
		0.291073, 0.199612, -0.935645,
		33.343472, 40.915192, 32.443241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616638, 40.874630, 32.678196>,  <33.139721, 40.775463, 33.098190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616638, 40.874630, 32.678196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911339, 40.721874, 32.454994>,  <33.088158, 40.630222, 32.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911339, 40.721874, 32.454994>,  <32.616638, 40.874630, 32.678196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911339, 40.721874, 32.454994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603215, -0.744068, -0.287219,
		-0.305505, 0.548203, -0.778551,
		0.736749, -0.381886, -0.558000,
		33.132362, 40.607307, 32.287594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310036, 40.583557, 32.189323>,  <32.616638, 40.874630, 32.678196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310036, 40.583557, 32.189323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670902, 40.417522, 32.142345>,  <32.887424, 40.317902, 32.114159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670902, 40.417522, 32.142345>,  <32.310036, 40.583557, 32.189323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670902, 40.417522, 32.142345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427056, -0.820953, -0.379025,
		0.060914, 0.392099, -0.917904,
		0.902171, -0.415084, -0.117441,
		32.941555, 40.292995, 32.107113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461449, 40.414967, 31.479551>,  <32.310036, 40.583557, 32.189323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461449, 40.414967, 31.479551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635952, 40.172073, 31.745169>,  <32.740654, 40.026337, 31.904539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635952, 40.172073, 31.745169>,  <32.461449, 40.414967, 31.479551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635952, 40.172073, 31.745169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461025, -0.784587, -0.414582,
		0.772747, -0.125277, -0.622229,
		0.436255, -0.607230, 0.664043,
		32.766830, 39.989902, 31.944382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775826, 39.779701, 31.241415>,  <32.461449, 40.414967, 31.479551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775826, 39.779701, 31.241415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746731, 39.637424, 31.614122>,  <32.729275, 39.552059, 31.837746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746731, 39.637424, 31.614122>,  <32.775826, 39.779701, 31.241415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746731, 39.637424, 31.614122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375387, -0.855778, -0.355989,
		0.924010, -0.375665, -0.071281,
		-0.072732, -0.355696, 0.931768,
		32.724911, 39.530716, 31.893652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100975, 39.117741, 31.338562>,  <32.775826, 39.779701, 31.241415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100975, 39.117741, 31.338562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831234, 39.125683, 31.633820>,  <32.669388, 39.130447, 31.810974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831234, 39.125683, 31.633820>,  <33.100975, 39.117741, 31.338562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831234, 39.125683, 31.633820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370138, -0.874069, -0.314645,
		0.638941, -0.485396, 0.596779,
		-0.674353, 0.019851, 0.738142,
		32.628929, 39.131638, 31.855263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154999, 38.442345, 31.744057>,  <33.100975, 39.117741, 31.338562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154999, 38.442345, 31.744057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776833, 38.570930, 31.765442>,  <32.549934, 38.648083, 31.778273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776833, 38.570930, 31.765442>,  <33.154999, 38.442345, 31.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776833, 38.570930, 31.765442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325864, -0.934062, -0.146085,
		0.002978, -0.155532, 0.987826,
		-0.945412, 0.321462, 0.053464,
		32.493210, 38.667370, 31.781481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272152, 37.931099, 31.169216>,  <33.154999, 38.442345, 31.744057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272152, 37.931099, 31.169216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308453, 37.678520, 30.861181>,  <33.330231, 37.526974, 30.676359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308453, 37.678520, 30.861181>,  <33.272152, 37.931099, 31.169216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308453, 37.678520, 30.861181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237855, -0.737156, 0.632475,
		-0.967052, -0.240565, 0.083298,
		0.090748, -0.631450, -0.770088,
		33.335678, 37.489086, 30.630156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101460, 37.318092, 31.417353>,  <33.272152, 37.931099, 31.169216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101460, 37.318092, 31.417353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284916, 37.219570, 31.075832>,  <33.394989, 37.160458, 30.870920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284916, 37.219570, 31.075832>,  <33.101460, 37.318092, 31.417353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284916, 37.219570, 31.075832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312375, -0.854807, 0.414399,
		-0.831905, -0.456768, -0.315112,
		0.458645, -0.246308, -0.853802,
		33.422508, 37.145676, 30.819691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736050, 36.675262, 31.220081>,  <33.101460, 37.318092, 31.417353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736050, 36.675262, 31.220081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126057, 36.672325, 31.131275>,  <33.360062, 36.670563, 31.077991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126057, 36.672325, 31.131275>,  <32.736050, 36.675262, 31.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126057, 36.672325, 31.131275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072072, -0.934933, 0.347428,
		-0.210119, -0.354749, -0.911045,
		0.975016, -0.007341, -0.222015,
		33.418560, 36.670124, 31.064671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837402, 36.066013, 30.871771>,  <32.736050, 36.675262, 31.220081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837402, 36.066013, 30.871771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170334, 36.181290, 31.061161>,  <33.370090, 36.250458, 31.174795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170334, 36.181290, 31.061161>,  <32.837402, 36.066013, 30.871771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170334, 36.181290, 31.061161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167806, -0.945132, 0.280297,
		0.528278, -0.153845, -0.835017,
		0.832324, 0.288195, 0.473476,
		33.420033, 36.267750, 31.203203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472305, 35.795322, 30.611996>,  <32.837402, 36.066013, 30.871771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472305, 35.795322, 30.611996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434612, 35.834103, 31.008324>,  <33.411995, 35.857372, 31.246120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434612, 35.834103, 31.008324>,  <33.472305, 35.795322, 30.611996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434612, 35.834103, 31.008324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259827, -0.958358, 0.118486,
		0.961046, 0.268607, 0.065121,
		-0.094236, 0.096951, 0.990818,
		33.406342, 35.863190, 31.305569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106796, 35.698906, 30.958941>,  <33.472305, 35.795322, 30.611996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106796, 35.698906, 30.958941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829624, 35.623089, 31.237198>,  <33.663319, 35.577599, 31.404152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829624, 35.623089, 31.237198>,  <34.106796, 35.698906, 30.958941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829624, 35.623089, 31.237198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451566, -0.866248, 0.213784,
		0.562078, 0.462266, 0.685841,
		-0.692934, -0.189539, 0.695642,
		33.621742, 35.566227, 31.445890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441048, 35.579273, 31.552877>,  <34.106796, 35.698906, 30.958941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441048, 35.579273, 31.552877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090282, 35.387199, 31.561302>,  <33.879822, 35.271954, 31.566357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090282, 35.387199, 31.561302>,  <34.441048, 35.579273, 31.552877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090282, 35.387199, 31.561302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469934, -0.847337, 0.247348,
		-0.100926, 0.226801, 0.968698,
		-0.876913, -0.480188, 0.021063,
		33.827209, 35.243141, 31.567621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468208, 35.040287, 32.039196>,  <34.441048, 35.579273, 31.552877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468208, 35.040287, 32.039196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175240, 34.927376, 31.791367>,  <33.999458, 34.859631, 31.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175240, 34.927376, 31.791367>,  <34.468208, 35.040287, 32.039196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175240, 34.927376, 31.791367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260058, -0.956994, 0.128580,
		-0.629223, -0.066950, 0.774336,
		-0.732426, -0.282278, -0.619573,
		33.955513, 34.842693, 31.605495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162037, 34.473785, 32.400322>,  <34.468208, 35.040287, 32.039196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162037, 34.473785, 32.400322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043465, 34.418633, 32.022301>,  <33.972321, 34.385540, 31.795488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043465, 34.418633, 32.022301>,  <34.162037, 34.473785, 32.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043465, 34.418633, 32.022301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320348, -0.946553, 0.037620,
		-0.899725, -0.291593, 0.324758,
		-0.296431, -0.137883, -0.945049,
		33.954536, 34.377266, 31.738787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896626, 33.784981, 32.326435>,  <34.162037, 34.473785, 32.400322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896626, 33.784981, 32.326435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971916, 33.880569, 31.945391>,  <34.017090, 33.937923, 31.716764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971916, 33.880569, 31.945391>,  <33.896626, 33.784981, 32.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971916, 33.880569, 31.945391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197858, -0.959286, -0.201552,
		-0.961990, -0.150545, -0.227841,
		0.188222, 0.238971, -0.952610,
		34.028381, 33.952259, 31.659607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554844, 33.278690, 31.901972>,  <33.896626, 33.784981, 32.326435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554844, 33.278690, 31.901972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851719, 33.460926, 31.705364>,  <34.029846, 33.570267, 31.587400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851719, 33.460926, 31.705364>,  <33.554844, 33.278690, 31.901972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851719, 33.460926, 31.705364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325111, -0.886082, -0.330395,
		-0.586050, 0.085418, -0.805760,
		0.742191, 0.455590, -0.491518,
		34.074375, 33.597603, 31.557909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530338, 32.969738, 31.235163>,  <33.554844, 33.278690, 31.901972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530338, 32.969738, 31.235163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902225, 33.105816, 31.291573>,  <34.125359, 33.187462, 31.325418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902225, 33.105816, 31.291573>,  <33.530338, 32.969738, 31.235163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902225, 33.105816, 31.291573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361755, -0.771959, -0.522698,
		-0.068954, 0.536979, -0.840773,
		0.929720, 0.340196, 0.141025,
		34.181141, 33.207874, 31.333879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813068, 32.969624, 30.637220>,  <33.530338, 32.969738, 31.235163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813068, 32.969624, 30.637220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108212, 32.955326, 30.906826>,  <34.285297, 32.946747, 31.068588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108212, 32.955326, 30.906826>,  <33.813068, 32.969624, 30.637220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108212, 32.955326, 30.906826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366264, -0.817580, -0.444313,
		0.566940, 0.574705, -0.590164,
		0.737855, -0.035743, 0.674013,
		34.329567, 32.944603, 31.109030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471684, 32.904358, 30.299149>,  <33.813068, 32.969624, 30.637220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471684, 32.904358, 30.299149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469646, 32.729820, 30.659056>,  <34.468426, 32.625099, 30.875000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469646, 32.729820, 30.659056>,  <34.471684, 32.904358, 30.299149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469646, 32.729820, 30.659056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498272, -0.781229, -0.376041,
		0.867006, 0.446415, 0.221394,
		-0.005089, -0.436344, 0.899766,
		34.468121, 32.598919, 30.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210793, 32.755608, 30.593075>,  <34.471684, 32.904358, 30.299149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210793, 32.755608, 30.593075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924824, 32.501160, 30.709175>,  <34.753242, 32.348492, 30.778835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924824, 32.501160, 30.709175>,  <35.210793, 32.755608, 30.593075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924824, 32.501160, 30.709175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370774, -0.696845, -0.613949,
		0.592804, -0.331307, 0.734043,
		-0.714920, -0.636115, 0.290253,
		34.710346, 32.310326, 30.796251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510109, 32.168022, 30.946278>,  <35.210793, 32.755608, 30.593075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510109, 32.168022, 30.946278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171902, 32.115551, 30.739248>,  <34.968975, 32.084068, 30.615030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171902, 32.115551, 30.739248>,  <35.510109, 32.168022, 30.946278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171902, 32.115551, 30.739248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482463, -0.602973, -0.635337,
		-0.228740, -0.786903, 0.573116,
		-0.845522, -0.131180, -0.517575,
		34.918243, 32.076199, 30.583975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445755, 31.416750, 30.743652>,  <35.510109, 32.168022, 30.946278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445755, 31.416750, 30.743652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221844, 31.629068, 30.489124>,  <35.087498, 31.756460, 30.336407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221844, 31.629068, 30.489124>,  <35.445755, 31.416750, 30.743652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221844, 31.629068, 30.489124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476351, -0.422214, -0.771249,
		-0.678039, -0.734841, -0.016499,
		-0.559779, 0.530797, -0.636320,
		35.053909, 31.788307, 30.298229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131771, 30.998653, 30.300886>,  <35.445755, 31.416750, 30.743652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131771, 30.998653, 30.300886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124420, 31.342184, 30.096111>,  <35.120010, 31.548302, 29.973246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124420, 31.342184, 30.096111>,  <35.131771, 30.998653, 30.300886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124420, 31.342184, 30.096111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435592, -0.454001, -0.777266,
		-0.899957, -0.237281, -0.365753,
		-0.018378, 0.858825, -0.511939,
		35.118908, 31.599831, 29.942530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718067, 30.849909, 29.659664>,  <35.131771, 30.998653, 30.300886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718067, 30.849909, 29.659664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965786, 31.158136, 29.599403>,  <35.114418, 31.343073, 29.563248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965786, 31.158136, 29.599403>,  <34.718067, 30.849909, 29.659664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965786, 31.158136, 29.599403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508357, -0.539744, -0.671007,
		-0.598370, 0.338968, -0.725985,
		0.619296, 0.770570, -0.150650,
		35.151573, 31.389307, 29.554209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871296, 30.823832, 28.990906>,  <34.718067, 30.849909, 29.659664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871296, 30.823832, 28.990906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147209, 31.089716, 29.105700>,  <35.312756, 31.249247, 29.174576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147209, 31.089716, 29.105700>,  <34.871296, 30.823832, 28.990906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147209, 31.089716, 29.105700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593366, -0.291869, -0.750153,
		-0.414873, 0.687728, -0.595743,
		0.689780, 0.664712, 0.286986,
		35.354145, 31.289129, 29.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961998, 31.279852, 28.380880>,  <34.871296, 30.823832, 28.990906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961998, 31.279852, 28.380880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287968, 31.257015, 28.611578>,  <35.483551, 31.243313, 28.749996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287968, 31.257015, 28.611578>,  <34.961998, 31.279852, 28.380880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287968, 31.257015, 28.611578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538330, -0.294070, -0.789762,
		0.214692, 0.954077, -0.208911,
		0.814928, -0.057092, 0.576743,
		35.532448, 31.239887, 28.784601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519161, 31.744858, 28.170366>,  <34.961998, 31.279852, 28.380880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519161, 31.744858, 28.170366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672962, 31.432396, 28.367123>,  <35.765244, 31.244919, 28.485176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672962, 31.432396, 28.367123>,  <35.519161, 31.744858, 28.170366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672962, 31.432396, 28.367123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667504, -0.132795, -0.732669,
		0.637647, 0.610054, 0.470362,
		0.384506, -0.781153, 0.491890,
		35.788315, 31.198050, 28.514690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065742, 31.724117, 27.822828>,  <35.519161, 31.744858, 28.170366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065742, 31.724117, 27.822828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132530, 31.390675, 28.033438>,  <36.172604, 31.190609, 28.159803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132530, 31.390675, 28.033438>,  <36.065742, 31.724117, 27.822828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132530, 31.390675, 28.033438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663467, -0.300034, -0.685413,
		0.729338, 0.463771, 0.502974,
		0.166965, -0.833604, 0.526523,
		36.182621, 31.140593, 28.191395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778564, 31.567854, 27.748451>,  <36.065742, 31.724117, 27.822828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778564, 31.567854, 27.748451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617577, 31.224630, 27.876045>,  <36.520985, 31.018696, 27.952602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617577, 31.224630, 27.876045>,  <36.778564, 31.567854, 27.748451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617577, 31.224630, 27.876045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649651, -0.513217, -0.560857,
		0.644958, -0.018499, 0.763994,
		-0.402470, -0.858059, 0.318986,
		36.496834, 30.967213, 27.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279526, 31.271736, 28.006435>,  <36.778564, 31.567854, 27.748451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279526, 31.271736, 28.006435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044621, 30.953117, 27.948986>,  <36.903675, 30.761946, 27.914516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044621, 30.953117, 27.948986>,  <37.279526, 31.271736, 28.006435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044621, 30.953117, 27.948986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777357, -0.505645, -0.374217,
		0.225461, -0.331411, 0.916152,
		-0.587268, -0.796549, -0.143621,
		36.868439, 30.714153, 27.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698574, 30.724813, 28.150274>,  <37.279526, 31.271736, 28.006435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698574, 30.724813, 28.150274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392651, 30.579029, 27.937769>,  <37.209099, 30.491558, 27.810265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392651, 30.579029, 27.937769>,  <37.698574, 30.724813, 28.150274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392651, 30.579029, 27.937769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644260, -0.434324, -0.629517,
		-0.001307, -0.823731, 0.566981,
		-0.764805, -0.364460, -0.531264,
		37.163208, 30.469690, 27.778389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908913, 30.057484, 27.990437>,  <37.698574, 30.724813, 28.150274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908913, 30.057484, 27.990437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645142, 30.174236, 27.713320>,  <37.486877, 30.244287, 27.547050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645142, 30.174236, 27.713320>,  <37.908913, 30.057484, 27.990437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645142, 30.174236, 27.713320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603773, -0.343424, -0.719387,
		-0.447896, -0.892673, 0.050235,
		-0.659430, 0.291880, -0.692790,
		37.447311, 30.261801, 27.505484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901413, 29.530954, 27.443056>,  <37.908913, 30.057484, 27.990437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901413, 29.530954, 27.443056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720978, 29.842413, 27.268595>,  <37.612717, 30.029287, 27.163918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720978, 29.842413, 27.268595>,  <37.901413, 29.530954, 27.443056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720978, 29.842413, 27.268595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387023, -0.269692, -0.881748,
		-0.804197, -0.566546, -0.179700,
		-0.451087, 0.778647, -0.436152,
		37.585651, 30.076008, 27.137749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570072, 29.260803, 26.837774>,  <37.901413, 29.530954, 27.443056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570072, 29.260803, 26.837774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584698, 29.656376, 26.780254>,  <37.593472, 29.893719, 26.745743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584698, 29.656376, 26.780254>,  <37.570072, 29.260803, 26.837774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584698, 29.656376, 26.780254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228529, -0.148357, -0.962167,
		-0.972851, 0.002315, -0.231423,
		0.036561, 0.988931, -0.143800,
		37.595665, 29.953054, 26.737114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310005, 29.309359, 26.193216>,  <37.570072, 29.260803, 26.837774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310005, 29.309359, 26.193216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508099, 29.650185, 26.261017>,  <37.626953, 29.854681, 26.301697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508099, 29.650185, 26.261017>,  <37.310005, 29.309359, 26.193216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508099, 29.650185, 26.261017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331339, -0.004886, -0.943499,
		-0.803095, 0.523413, -0.284742,
		0.495230, 0.852065, 0.169504,
		37.656670, 29.905804, 26.311869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078770, 29.723818, 25.747608>,  <37.310005, 29.309359, 26.193216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078770, 29.723818, 25.747608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451199, 29.843060, 25.831747>,  <37.674656, 29.914604, 25.882231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451199, 29.843060, 25.831747>,  <37.078770, 29.723818, 25.747608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451199, 29.843060, 25.831747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246415, -0.088636, -0.965103,
		-0.269058, 0.950409, -0.155984,
		0.931068, 0.298106, 0.210347,
		37.730518, 29.932491, 25.894852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278873, 30.008026, 25.125107>,  <37.078770, 29.723818, 25.747608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278873, 30.008026, 25.125107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631710, 30.032900, 25.311890>,  <37.843410, 30.047825, 25.423960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631710, 30.032900, 25.311890>,  <37.278873, 30.008026, 25.125107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631710, 30.032900, 25.311890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467591, 0.004867, -0.883932,
		-0.057240, 0.998053, -0.024784,
		0.882090, 0.062185, 0.466959,
		37.896336, 30.051556, 25.451977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674324, 30.431002, 24.791298>,  <37.278873, 30.008026, 25.125107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674324, 30.431002, 24.791298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938869, 30.209505, 24.993670>,  <38.097599, 30.076607, 25.115091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938869, 30.209505, 24.993670>,  <37.674324, 30.431002, 24.791298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938869, 30.209505, 24.993670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584080, -0.042967, -0.810558,
		0.470579, 0.831579, 0.295013,
		0.661367, -0.553743, 0.505927,
		38.137280, 30.043383, 25.145447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368614, 30.700308, 24.664631>,  <37.674324, 30.431002, 24.791298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368614, 30.700308, 24.664631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442467, 30.323992, 24.778349>,  <38.486778, 30.098202, 24.846579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442467, 30.323992, 24.778349>,  <38.368614, 30.700308, 24.664631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442467, 30.323992, 24.778349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508827, -0.155977, -0.846621,
		0.840836, 0.300972, 0.449900,
		0.184635, -0.940791, 0.284294,
		38.497856, 30.041754, 24.863638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992878, 30.666048, 24.597149>,  <38.368614, 30.700308, 24.664631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992878, 30.666048, 24.597149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864826, 30.288177, 24.568569>,  <38.787994, 30.061455, 24.551422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864826, 30.288177, 24.568569>,  <38.992878, 30.666048, 24.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864826, 30.288177, 24.568569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563980, -0.129433, -0.815582,
		0.761213, -0.301386, 0.574214,
		-0.320128, -0.944676, -0.071449,
		38.768787, 30.004774, 24.547134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638382, 30.320837, 24.384094>,  <38.992878, 30.666048, 24.597149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638382, 30.320837, 24.384094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334583, 30.076897, 24.293545>,  <39.152306, 29.930532, 24.239214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334583, 30.076897, 24.293545>,  <39.638382, 30.320837, 24.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334583, 30.076897, 24.293545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430801, -0.210792, -0.877484,
		0.487415, -0.763970, 0.422819,
		-0.759498, -0.609850, -0.226376,
		39.106735, 29.893942, 24.225632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955288, 29.678232, 24.186922>,  <39.638382, 30.320837, 24.384094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955288, 29.678232, 24.186922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592236, 29.669956, 24.019220>,  <39.374405, 29.664989, 23.918600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592236, 29.669956, 24.019220>,  <39.955288, 29.678232, 24.186922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592236, 29.669956, 24.019220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419762, -0.045431, -0.906496,
		-0.000293, -0.998753, 0.049919,
		-0.907634, -0.020688, -0.419252,
		39.319946, 29.663750, 23.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998825, 29.218300, 23.626539>,  <39.955288, 29.678232, 24.186922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998825, 29.218300, 23.626539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673527, 29.438826, 23.552050>,  <39.478348, 29.571140, 23.507355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673527, 29.438826, 23.552050>,  <39.998825, 29.218300, 23.626539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673527, 29.438826, 23.552050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224333, 0.001741, -0.974511,
		-0.536938, -0.834296, -0.125095,
		-0.813248, 0.551315, -0.186226,
		39.429554, 29.604219, 23.496181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671299, 28.842558, 23.183332>,  <39.998825, 29.218300, 23.626539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671299, 28.842558, 23.183332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514503, 29.206894, 23.131624>,  <39.420425, 29.425495, 23.100599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514503, 29.206894, 23.131624>,  <39.671299, 28.842558, 23.183332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514503, 29.206894, 23.131624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152116, -0.074412, -0.985558,
		-0.907307, -0.405992, -0.109385,
		-0.391989, 0.910842, -0.129272,
		39.396908, 29.480146, 23.092842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345352, 28.710835, 22.565720>,  <39.671299, 28.842558, 23.183332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345352, 28.710835, 22.565720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359085, 29.108707, 22.604561>,  <39.367325, 29.347431, 22.627867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359085, 29.108707, 22.604561>,  <39.345352, 28.710835, 22.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359085, 29.108707, 22.604561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298027, 0.082553, -0.950981,
		-0.953940, 0.061587, -0.293608,
		0.034330, 0.994682, 0.097105,
		39.369385, 29.407112, 22.633692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958160, 28.931313, 21.990320>,  <39.345352, 28.710835, 22.565720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958160, 28.931313, 21.990320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209454, 29.220669, 22.104877>,  <39.360229, 29.394283, 22.173613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209454, 29.220669, 22.104877>,  <38.958160, 28.931313, 21.990320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209454, 29.220669, 22.104877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350597, 0.065390, -0.934241,
		-0.694550, 0.687334, -0.212538,
		0.628238, 0.723392, 0.286394,
		39.397926, 29.437687, 22.190796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070175, 29.256554, 21.288815>,  <38.958160, 28.931313, 21.990320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070175, 29.256554, 21.288815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352215, 29.388826, 21.539726>,  <39.521439, 29.468189, 21.690273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.352215, 29.388826, 21.539726>,  <39.070175, 29.256554, 21.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352215, 29.388826, 21.539726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620999, 0.139095, -0.771371,
		-0.342329, 0.933436, -0.107276,
		0.705103, 0.330681, 0.627279,
		39.563747, 29.488031, 21.727911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506680, 29.756969, 20.845182>,  <39.070175, 29.256554, 21.288815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506680, 29.756969, 20.845182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721226, 29.669256, 21.171185>,  <39.849953, 29.616629, 21.366785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721226, 29.669256, 21.171185>,  <39.506680, 29.756969, 20.845182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721226, 29.669256, 21.171185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841497, 0.064801, -0.536361,
		0.064801, 0.973507, 0.219281,
		0.536361, -0.219281, 0.815004,
		39.882133, 29.603472, 21.415686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074036, 30.268080, 20.867048>,  <39.506680, 29.756969, 20.845182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074036, 30.268080, 20.867048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188713, 29.943829, 21.071280>,  <40.257519, 29.749277, 21.193819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188713, 29.943829, 21.071280>,  <40.074036, 30.268080, 20.867048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188713, 29.943829, 21.071280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884098, 0.018577, -0.466932,
		0.369023, 0.585267, 0.722000,
		0.286693, -0.810628, 0.510578,
		40.274719, 29.700640, 21.224453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727417, 30.409513, 20.823442>,  <40.074036, 30.268080, 20.867048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727417, 30.409513, 20.823442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717781, 30.020182, 20.914700>,  <40.712002, 29.786583, 20.969454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717781, 30.020182, 20.914700>,  <40.727417, 30.409513, 20.823442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717781, 30.020182, 20.914700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816048, -0.150968, -0.557919,
		0.577481, 0.172736, 0.797920,
		-0.024087, -0.973330, 0.228142,
		40.710556, 29.728182, 20.983143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361576, 30.191345, 21.034346>,  <40.727417, 30.409513, 20.823442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361576, 30.191345, 21.034346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180725, 29.854223, 20.917549>,  <41.072212, 29.651951, 20.847471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180725, 29.854223, 20.917549>,  <41.361576, 30.191345, 21.034346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180725, 29.854223, 20.917549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762414, -0.195271, -0.616922,
		0.462928, -0.501547, 0.730855,
		-0.452130, -0.842805, -0.291990,
		41.045086, 29.601381, 20.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937168, 29.592062, 21.054539>,  <41.361576, 30.191345, 21.034346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937168, 29.592062, 21.054539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638844, 29.464506, 20.820589>,  <41.459850, 29.387974, 20.680220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638844, 29.464506, 20.820589>,  <41.937168, 29.592062, 21.054539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638844, 29.464506, 20.820589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666096, -0.368943, -0.648226,
		-0.009073, -0.873036, 0.487571,
		-0.745811, -0.318888, -0.584873,
		41.415100, 29.368839, 20.645126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183140, 28.976498, 20.965370>,  <41.937168, 29.592062, 21.054539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183140, 28.976498, 20.965370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907494, 29.028526, 20.680218>,  <41.742107, 29.059744, 20.509127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907494, 29.028526, 20.680218>,  <42.183140, 28.976498, 20.965370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907494, 29.028526, 20.680218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619201, -0.405353, -0.672517,
		-0.376443, -0.904860, 0.198795,
		-0.689116, 0.130070, -0.712883,
		41.700760, 29.067547, 20.466352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988506, 28.357723, 20.685795>,  <42.183140, 28.976498, 20.965370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988506, 28.357723, 20.685795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939152, 28.644169, 20.410997>,  <41.909538, 28.816036, 20.246119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939152, 28.644169, 20.410997>,  <41.988506, 28.357723, 20.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939152, 28.644169, 20.410997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618967, -0.485575, -0.617330,
		-0.775664, -0.501397, -0.383335,
		-0.123390, 0.716113, -0.686992,
		41.902134, 28.859003, 20.204901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089031, 28.050533, 20.102722>,  <41.988506, 28.357723, 20.685795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089031, 28.050533, 20.102722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070709, 28.415556, 19.940170>,  <42.059715, 28.634569, 19.842638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070709, 28.415556, 19.940170>,  <42.089031, 28.050533, 20.102722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070709, 28.415556, 19.940170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459290, -0.342023, -0.819801,
		-0.887105, -0.224196, -0.403461,
		-0.045804, 0.912555, -0.406381,
		42.056969, 28.689322, 19.818256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807533, 28.048346, 19.348000>,  <42.089031, 28.050533, 20.102722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807533, 28.048346, 19.348000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020828, 28.385662, 19.374882>,  <42.148804, 28.588053, 19.391010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020828, 28.385662, 19.374882>,  <41.807533, 28.048346, 19.348000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020828, 28.385662, 19.374882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481588, -0.237286, -0.843664,
		-0.695508, 0.482239, -0.532649,
		0.533237, 0.843292, 0.067206,
		42.180798, 28.638649, 19.395044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741425, 28.458076, 18.677305>,  <41.807533, 28.048346, 19.348000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741425, 28.458076, 18.677305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077824, 28.582254, 18.854553>,  <42.279663, 28.656761, 18.960901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077824, 28.582254, 18.854553>,  <41.741425, 28.458076, 18.677305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077824, 28.582254, 18.854553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439855, 0.084606, -0.894074,
		-0.315051, 0.946819, -0.065398,
		0.840993, 0.310445, 0.443119,
		42.330120, 28.675388, 18.987490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016277, 28.926605, 18.215105>,  <41.741425, 28.458076, 18.677305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016277, 28.926605, 18.215105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341770, 28.839226, 18.430559>,  <42.537064, 28.786798, 18.559832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341770, 28.839226, 18.430559>,  <42.016277, 28.926605, 18.215105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341770, 28.839226, 18.430559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550914, -0.005585, -0.834544,
		0.185311, 0.975833, 0.115801,
		0.813729, -0.218446, 0.538634,
		42.585888, 28.773691, 18.592150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516987, 29.319664, 17.849859>,  <42.016277, 28.926605, 18.215105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516987, 29.319664, 17.849859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703209, 29.037750, 18.063974>,  <42.814941, 28.868601, 18.192444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703209, 29.037750, 18.063974>,  <42.516987, 29.319664, 17.849859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703209, 29.037750, 18.063974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664425, -0.121209, -0.737460,
		0.584634, 0.698988, 0.411848,
		0.465556, -0.704786, 0.535288,
		42.842876, 28.826315, 18.224562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191978, 29.473791, 17.857746>,  <42.516987, 29.319664, 17.849859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191978, 29.473791, 17.857746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210308, 29.087502, 17.959944>,  <43.221306, 28.855728, 18.021263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210308, 29.087502, 17.959944>,  <43.191978, 29.473791, 17.857746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210308, 29.087502, 17.959944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566428, -0.185557, -0.802950,
		0.822836, 0.181511, 0.538511,
		0.045820, -0.965724, 0.255495,
		43.224052, 28.797785, 18.036592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.894588, 29.267962, 17.850056>,  <43.191978, 29.473791, 17.857746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.894588, 29.267962, 17.850056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657509, 28.949186, 17.803419>,  <43.515259, 28.757921, 17.775438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657509, 28.949186, 17.803419>,  <43.894588, 29.267962, 17.850056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657509, 28.949186, 17.803419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458702, -0.215012, -0.862185,
		0.662041, -0.564498, 0.492995,
		-0.592702, -0.796939, -0.116590,
		43.479698, 28.710104, 17.768442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346199, 28.724600, 17.634850>,  <43.894588, 29.267962, 17.850056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346199, 28.724600, 17.634850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998302, 28.559544, 17.526575>,  <43.789562, 28.460510, 17.461611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998302, 28.559544, 17.526575>,  <44.346199, 28.724600, 17.634850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998302, 28.559544, 17.526575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415946, -0.317773, -0.852062,
		0.265581, -0.853667, 0.448018,
		-0.869745, -0.412642, -0.270685,
		43.737377, 28.435751, 17.445370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567768, 28.124420, 17.287029>,  <44.346199, 28.724600, 17.634850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567768, 28.124420, 17.287029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194340, 28.161993, 17.148684>,  <43.970284, 28.184538, 17.065676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194340, 28.161993, 17.148684>,  <44.567768, 28.124420, 17.287029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194340, 28.161993, 17.148684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329284, -0.156163, -0.931228,
		-0.141477, -0.983255, 0.114861,
		-0.933572, 0.093925, -0.345864,
		43.914268, 28.190174, 17.044924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331009, 27.437704, 16.967916>,  <44.567768, 28.124420, 17.287029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331009, 27.437704, 16.967916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188755, 27.794939, 16.857698>,  <44.103405, 28.009279, 16.791569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188755, 27.794939, 16.857698>,  <44.331009, 27.437704, 16.967916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188755, 27.794939, 16.857698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338331, -0.151808, -0.928701,
		-0.871240, -0.423500, -0.248171,
		-0.355631, 0.893086, -0.275544,
		44.082066, 28.062864, 16.775036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039341, 27.274727, 16.362909>,  <44.331009, 27.437704, 16.967916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039341, 27.274727, 16.362909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134438, 27.663155, 16.371901>,  <44.191494, 27.896212, 16.377296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134438, 27.663155, 16.371901>,  <44.039341, 27.274727, 16.362909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134438, 27.663155, 16.371901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475796, -0.096249, -0.874274,
		-0.846816, 0.218548, -0.484913,
		0.237743, 0.971068, 0.022479,
		44.205761, 27.954475, 16.378645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100964, 27.396433, 15.651346>,  <44.039341, 27.274727, 16.362909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100964, 27.396433, 15.651346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215130, 27.759693, 15.773857>,  <44.283630, 27.977650, 15.847363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215130, 27.759693, 15.773857>,  <44.100964, 27.396433, 15.651346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215130, 27.759693, 15.773857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219678, 0.249071, -0.943242,
		-0.932889, 0.336494, -0.128412,
		0.285411, 0.908149, 0.306276,
		44.300755, 28.032139, 15.865740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752331, 27.816013, 15.204335>,  <44.100964, 27.396433, 15.651346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752331, 27.816013, 15.204335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080097, 27.971266, 15.373056>,  <44.276756, 28.064417, 15.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080097, 27.971266, 15.373056>,  <43.752331, 27.816013, 15.204335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080097, 27.971266, 15.373056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400539, 0.138690, -0.905722,
		-0.410039, 0.911109, -0.041818,
		0.819412, 0.388132, 0.421803,
		44.325920, 28.087706, 15.499598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189964, 27.895468, 14.670251>,  <43.752331, 27.816013, 15.204335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189964, 27.895468, 14.670251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393570, 28.118425, 14.932614>,  <44.515732, 28.252199, 15.090033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393570, 28.118425, 14.932614>,  <44.189964, 27.895468, 14.670251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393570, 28.118425, 14.932614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736418, 0.112509, -0.667106,
		-0.445636, 0.822590, -0.353206,
		0.509015, 0.557394, 0.655908,
		44.546276, 28.285645, 15.129387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385422, 28.574600, 14.420630>,  <44.189964, 27.895468, 14.670251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385422, 28.574600, 14.420630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663979, 28.504044, 14.698889>,  <44.831112, 28.461710, 14.865844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663979, 28.504044, 14.698889>,  <44.385422, 28.574600, 14.420630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663979, 28.504044, 14.698889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701757, 0.370305, -0.608614,
		-0.150247, 0.912009, 0.381662,
		0.696393, -0.176392, 0.695646,
		44.872898, 28.451126, 14.907582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588139, 28.448143, 14.342376>,  <44.385422, 28.574600, 14.420630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588139, 28.448143, 14.342376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434692, 28.800207, 14.230554>,  <43.342625, 29.011446, 14.163460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434692, 28.800207, 14.230554>,  <43.588139, 28.448143, 14.342376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434692, 28.800207, 14.230554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686325, -0.069181, 0.723997,
		0.617894, 0.469606, 0.630616,
		-0.383620, 0.880161, -0.279556,
		43.319607, 29.064255, 14.146687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391071, 28.926094, 15.028730>,  <43.588139, 28.448143, 14.342376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391071, 28.926094, 15.028730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189690, 29.053118, 14.707311>,  <43.068863, 29.129332, 14.514459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189690, 29.053118, 14.707311>,  <43.391071, 28.926094, 15.028730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189690, 29.053118, 14.707311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832468, 0.070764, 0.549536,
		0.231371, 0.945595, 0.228730,
		-0.503452, 0.317558, -0.803550,
		43.038654, 29.148384, 14.466246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039738, 29.573503, 15.151635>,  <43.391071, 28.926094, 15.028730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039738, 29.573503, 15.151635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846451, 29.383377, 14.857541>,  <42.730476, 29.269300, 14.681085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846451, 29.383377, 14.857541>,  <43.039738, 29.573503, 15.151635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846451, 29.383377, 14.857541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845956, 0.037178, 0.531955,
		-0.225513, 0.879029, -0.420062,
		-0.483221, -0.475317, -0.735235,
		42.701485, 29.240782, 14.636971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431881, 29.988010, 14.842862>,  <43.039738, 29.573503, 15.151635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431881, 29.988010, 14.842862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390907, 29.591141, 14.871427>,  <42.366322, 29.353020, 14.888565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390907, 29.591141, 14.871427>,  <42.431881, 29.988010, 14.842862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390907, 29.591141, 14.871427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775268, 0.124610, 0.619219,
		-0.623271, 0.008069, -0.781964,
		-0.102437, -0.992173, 0.071410,
		42.360176, 29.293489, 14.892850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712940, 29.820564, 14.672628>,  <42.431881, 29.988010, 14.842862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712940, 29.820564, 14.672628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886208, 29.553627, 14.914956>,  <41.990170, 29.393465, 15.060352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.886208, 29.553627, 14.914956>,  <41.712940, 29.820564, 14.672628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886208, 29.553627, 14.914956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589256, 0.298927, 0.750613,
		-0.682013, -0.682124, -0.263751,
		0.433169, -0.667345, 0.605818,
		42.016159, 29.353424, 15.096702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214291, 29.458429, 15.064497>,  <41.712940, 29.820564, 14.672628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214291, 29.458429, 15.064497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545460, 29.437864, 15.287891>,  <41.744160, 29.425526, 15.421928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545460, 29.437864, 15.287891>,  <41.214291, 29.458429, 15.064497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545460, 29.437864, 15.287891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542344, 0.180286, 0.820585,
		-0.142877, -0.982270, 0.121378,
		0.827918, -0.051414, 0.558487,
		41.793835, 29.422440, 15.455438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010143, 29.097267, 15.547310>,  <41.214291, 29.458429, 15.064497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010143, 29.097267, 15.547310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333492, 29.285933, 15.688202>,  <41.527500, 29.399132, 15.772738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333492, 29.285933, 15.688202>,  <41.010143, 29.097267, 15.547310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333492, 29.285933, 15.688202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505330, 0.249080, 0.826197,
		0.301959, -0.845865, 0.439698,
		0.808371, 0.471669, 0.352228,
		41.576004, 29.427431, 15.793871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134380, 28.857286, 16.289038>,  <41.010143, 29.097267, 15.547310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134380, 28.857286, 16.289038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327839, 29.205877, 16.256500>,  <41.443913, 29.415031, 16.236977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327839, 29.205877, 16.256500>,  <41.134380, 28.857286, 16.289038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327839, 29.205877, 16.256500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446729, 0.325702, 0.833278,
		0.752676, -0.366672, 0.546838,
		0.483645, 0.871476, -0.081345,
		41.472931, 29.467319, 16.232098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293472, 29.077566, 17.037342>,  <41.134380, 28.857286, 16.289038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293472, 29.077566, 17.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321831, 29.409813, 16.816418>,  <41.338848, 29.609161, 16.683863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321831, 29.409813, 16.816418>,  <41.293472, 29.077566, 17.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321831, 29.409813, 16.816418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372956, 0.535620, 0.757637,
		0.925136, 0.152271, 0.347759,
		0.070900, 0.830616, -0.552312,
		41.343102, 29.658998, 16.650724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620213, 29.486572, 17.508923>,  <41.293472, 29.077566, 17.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620213, 29.486572, 17.508923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471531, 29.741850, 17.239243>,  <41.382324, 29.895016, 17.077435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471531, 29.741850, 17.239243>,  <41.620213, 29.486572, 17.508923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471531, 29.741850, 17.239243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464579, 0.500883, 0.730263,
		0.803744, 0.584660, 0.110311,
		-0.371702, 0.638192, -0.674202,
		41.360020, 29.933308, 17.036982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814209, 30.268744, 17.720745>,  <41.620213, 29.486572, 17.508923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814209, 30.268744, 17.720745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493999, 30.230389, 17.484114>,  <41.301872, 30.207376, 17.342134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493999, 30.230389, 17.484114>,  <41.814209, 30.268744, 17.720745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493999, 30.230389, 17.484114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561893, 0.463366, 0.685251,
		0.208411, 0.880964, -0.424814,
		-0.800526, -0.095886, -0.591578,
		41.253841, 30.201622, 17.306641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523926, 30.886124, 17.785196>,  <41.814209, 30.268744, 17.720745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523926, 30.886124, 17.785196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222317, 30.667097, 17.640076>,  <41.041351, 30.535681, 17.553003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222317, 30.667097, 17.640076>,  <41.523926, 30.886124, 17.785196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222317, 30.667097, 17.640076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611758, 0.384300, 0.691423,
		-0.239174, 0.743295, -0.624747,
		-0.754021, -0.547565, -0.362802,
		40.996109, 30.502829, 17.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950176, 31.319765, 17.728357>,  <41.523926, 30.886124, 17.785196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950176, 31.319765, 17.728357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777454, 30.959087, 17.719505>,  <40.673820, 30.742680, 17.714195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777454, 30.959087, 17.719505>,  <40.950176, 31.319765, 17.728357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777454, 30.959087, 17.719505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666768, 0.302587, 0.681075,
		-0.607427, 0.308844, -0.731880,
		-0.431803, -0.901697, -0.022128,
		40.647915, 30.688578, 17.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217186, 31.469360, 17.703114>,  <40.950176, 31.319765, 17.728357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217186, 31.469360, 17.703114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236076, 31.094841, 17.842319>,  <40.247410, 30.870129, 17.925842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.236076, 31.094841, 17.842319>,  <40.217186, 31.469360, 17.703114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236076, 31.094841, 17.842319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701067, 0.217109, 0.679241,
		-0.711530, -0.276057, -0.646156,
		0.047223, -0.936299, 0.348014,
		40.250244, 30.813951, 17.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506996, 31.145113, 17.700201>,  <40.217186, 31.469360, 17.703114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506996, 31.145113, 17.700201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723377, 30.952139, 17.975773>,  <39.853207, 30.836355, 18.141117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723377, 30.952139, 17.975773>,  <39.506996, 31.145113, 17.700201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723377, 30.952139, 17.975773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700183, 0.195483, 0.686680,
		-0.465953, -0.853840, -0.232045,
		0.540955, -0.482434, 0.688931,
		39.885662, 30.807409, 18.182451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014614, 30.967638, 18.214596>,  <39.506996, 31.145113, 17.700201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014614, 30.967638, 18.214596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351795, 30.885994, 18.413700>,  <39.554104, 30.837008, 18.533163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351795, 30.885994, 18.413700>,  <39.014614, 30.967638, 18.214596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351795, 30.885994, 18.413700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502840, 0.030003, 0.863859,
		-0.191257, -0.978488, -0.077344,
		0.842955, -0.204111, 0.497761,
		39.604683, 30.824760, 18.563028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908726, 30.310562, 18.751005>,  <39.014614, 30.967638, 18.214596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908726, 30.310562, 18.751005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209175, 30.539448, 18.882689>,  <39.389446, 30.676779, 18.961699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209175, 30.539448, 18.882689>,  <38.908726, 30.310562, 18.751005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209175, 30.539448, 18.882689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346104, -0.083313, 0.934490,
		0.562157, -0.815860, 0.135467,
		0.751127, 0.572216, 0.329208,
		39.434513, 30.711113, 18.981451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113087, 30.130396, 19.519258>,  <38.908726, 30.310562, 18.751005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113087, 30.130396, 19.519258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249138, 30.504009, 19.475630>,  <39.330769, 30.728178, 19.449453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249138, 30.504009, 19.475630>,  <39.113087, 30.130396, 19.519258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249138, 30.504009, 19.475630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236145, 0.197106, 0.951517,
		0.910247, -0.297880, 0.287608,
		0.340127, 0.934033, -0.109072,
		39.351177, 30.784220, 19.442907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409286, 30.368786, 20.179504>,  <39.113087, 30.130396, 19.519258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409286, 30.368786, 20.179504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375526, 30.716639, 19.984932>,  <39.355270, 30.925350, 19.868187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375526, 30.716639, 19.984932>,  <39.409286, 30.368786, 20.179504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375526, 30.716639, 19.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303991, 0.442431, 0.843709,
		0.948929, 0.219077, 0.227021,
		-0.084397, 0.869632, -0.486433,
		39.350208, 30.977528, 19.839003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772770, 30.848787, 20.488424>,  <39.409286, 30.368786, 20.179504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772770, 30.848787, 20.488424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483559, 31.049492, 20.298492>,  <39.310032, 31.169914, 20.184534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483559, 31.049492, 20.298492>,  <39.772770, 30.848787, 20.488424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483559, 31.049492, 20.298492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309241, 0.379548, 0.871959,
		0.617735, 0.777290, -0.119260,
		-0.723031, 0.501760, -0.474830,
		39.266651, 31.200020, 20.156044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603832, 31.373224, 20.950026>,  <39.772770, 30.848787, 20.488424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603832, 31.373224, 20.950026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296314, 31.415319, 20.697714>,  <39.111805, 31.440577, 20.546328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296314, 31.415319, 20.697714>,  <39.603832, 31.373224, 20.950026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296314, 31.415319, 20.697714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578286, 0.306704, 0.755988,
		0.273022, 0.945969, -0.174934,
		-0.768794, 0.105239, -0.630778,
		39.065678, 31.446892, 20.508480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276443, 31.968546, 21.157135>,  <39.603832, 31.373224, 20.950026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276443, 31.968546, 21.157135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995045, 31.818787, 20.915503>,  <38.826206, 31.728931, 20.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995045, 31.818787, 20.915503>,  <39.276443, 31.968546, 21.157135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995045, 31.818787, 20.915503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684954, 0.130496, 0.716804,
		-0.189541, 0.918040, -0.348250,
		-0.703500, -0.374399, -0.604081,
		38.783997, 31.706467, 20.734278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759396, 32.470901, 21.086845>,  <39.276443, 31.968546, 21.157135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759396, 32.470901, 21.086845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576691, 32.129414, 20.986822>,  <38.467068, 31.924520, 20.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.576691, 32.129414, 20.986822>,  <38.759396, 32.470901, 21.086845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576691, 32.129414, 20.986822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803385, 0.275160, 0.528072,
		-0.382019, 0.442099, -0.811548,
		-0.456765, -0.853719, -0.250060,
		38.439663, 31.873299, 20.911804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181400, 32.662899, 20.805265>,  <38.759396, 32.470901, 21.086845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181400, 32.662899, 20.805265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132626, 32.301434, 20.969469>,  <38.103363, 32.084553, 21.067991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132626, 32.301434, 20.969469>,  <38.181400, 32.662899, 20.805265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132626, 32.301434, 20.969469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840188, 0.314167, 0.442022,
		-0.528409, -0.291009, -0.797557,
		-0.121933, -0.903666, 0.410511,
		38.096046, 32.030334, 21.092623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430695, 32.505642, 20.840969>,  <38.181400, 32.662899, 20.805265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430695, 32.505642, 20.840969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560368, 32.224983, 21.094770>,  <37.638172, 32.056587, 21.247051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560368, 32.224983, 21.094770>,  <37.430695, 32.505642, 20.840969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560368, 32.224983, 21.094770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845939, 0.085207, 0.526428,
		-0.423433, -0.707408, -0.565932,
		0.324178, -0.701651, 0.634504,
		37.657619, 32.014488, 21.285122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863827, 32.124256, 20.886618>,  <37.430695, 32.505642, 20.840969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863827, 32.124256, 20.886618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095367, 32.065842, 21.207518>,  <37.234291, 32.030792, 21.400059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095367, 32.065842, 21.207518>,  <36.863827, 32.124256, 20.886618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095367, 32.065842, 21.207518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808481, 0.025427, 0.587972,
		-0.106269, -0.988951, -0.103356,
		0.578848, -0.146045, 0.802251,
		37.269020, 32.022030, 21.448193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471317, 31.800591, 21.298006>,  <36.863827, 32.124256, 20.886618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471317, 31.800591, 21.298006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759441, 31.917309, 21.549725>,  <36.932316, 31.987341, 21.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759441, 31.917309, 21.549725>,  <36.471317, 31.800591, 21.298006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759441, 31.917309, 21.549725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680144, 0.118915, 0.723370,
		0.136252, -0.949056, 0.284126,
		0.720306, 0.291807, 0.629292,
		36.975533, 32.004848, 21.738514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429779, 31.384174, 21.850502>,  <36.471317, 31.800591, 21.298006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429779, 31.384174, 21.850502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645847, 31.690523, 21.990017>,  <36.775490, 31.874332, 22.073727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645847, 31.690523, 21.990017>,  <36.429779, 31.384174, 21.850502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645847, 31.690523, 21.990017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642026, 0.107085, 0.759167,
		0.544077, -0.634010, 0.549556,
		0.540169, 0.765875, 0.348789,
		36.807899, 31.920286, 22.094654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343758, 31.287912, 22.523041>,  <36.429779, 31.384174, 21.850502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343758, 31.287912, 22.523041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459003, 31.669504, 22.489777>,  <36.528152, 31.898458, 22.469818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459003, 31.669504, 22.489777>,  <36.343758, 31.287912, 22.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459003, 31.669504, 22.489777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532520, 0.231795, 0.814060,
		0.795872, -0.190258, 0.574796,
		0.288116, 0.953977, -0.083163,
		36.545437, 31.955698, 22.464828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419090, 31.451950, 23.258858>,  <36.343758, 31.287912, 22.523041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419090, 31.451950, 23.258858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410896, 31.791859, 23.048155>,  <36.405979, 31.995804, 22.921734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410896, 31.791859, 23.048155>,  <36.419090, 31.451950, 23.258858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410896, 31.791859, 23.048155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356807, 0.485958, 0.797830,
		0.933954, 0.204295, 0.293248,
		-0.020486, 0.849770, -0.526756,
		36.404751, 32.046791, 22.890127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857079, 31.981720, 23.686768>,  <36.419090, 31.451950, 23.258858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857079, 31.981720, 23.686768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572639, 32.133041, 23.449707>,  <36.401978, 32.223835, 23.307470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572639, 32.133041, 23.449707>,  <36.857079, 31.981720, 23.686768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572639, 32.133041, 23.449707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377367, 0.505864, 0.775690,
		0.593245, 0.775235, -0.216959,
		-0.711094, 0.378302, -0.592649,
		36.359310, 32.246532, 23.271912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739971, 32.661465, 23.860744>,  <36.857079, 31.981720, 23.686768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739971, 32.661465, 23.860744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394562, 32.590656, 23.671856>,  <36.187317, 32.548172, 23.558523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394562, 32.590656, 23.671856>,  <36.739971, 32.661465, 23.860744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394562, 32.590656, 23.671856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499393, 0.430628, 0.751775,
		0.070273, 0.884999, -0.460260,
		-0.863521, -0.177021, -0.472224,
		36.135506, 32.537552, 23.530190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327271, 33.259449, 23.974424>,  <36.739971, 32.661465, 23.860744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327271, 33.259449, 23.974424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054234, 32.981522, 23.883833>,  <35.890411, 32.814766, 23.829477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054234, 32.981522, 23.883833>,  <36.327271, 33.259449, 23.974424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054234, 32.981522, 23.883833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579711, 0.326111, 0.746718,
		-0.444978, 0.640995, -0.625396,
		-0.682591, -0.694821, -0.226480,
		35.849457, 32.773075, 23.815889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620430, 33.572369, 24.105993>,  <36.327271, 33.259449, 23.974424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620430, 33.572369, 24.105993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572575, 33.175896, 24.083202>,  <35.543861, 32.938011, 24.069529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572575, 33.175896, 24.083202>,  <35.620430, 33.572369, 24.105993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572575, 33.175896, 24.083202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668294, 0.037955, 0.742929,
		-0.734215, 0.126957, -0.666941,
		-0.119634, -0.991182, -0.056978,
		35.536686, 32.878540, 24.066109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902977, 33.443542, 24.060667>,  <35.620430, 33.572369, 24.105993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902977, 33.443542, 24.060667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038086, 33.094631, 24.202114>,  <35.119152, 32.885284, 24.286982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038086, 33.094631, 24.202114>,  <34.902977, 33.443542, 24.060667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038086, 33.094631, 24.202114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743801, -0.017147, 0.668181,
		-0.576774, -0.488715, -0.654590,
		0.337775, -0.872275, 0.353617,
		35.139420, 32.832951, 24.308199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373589, 32.975758, 24.215441>,  <34.902977, 33.443542, 24.060667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373589, 32.975758, 24.215441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659351, 32.843384, 24.462053>,  <34.830807, 32.763958, 24.610022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659351, 32.843384, 24.462053>,  <34.373589, 32.975758, 24.215441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659351, 32.843384, 24.462053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668424, -0.062138, 0.741180,
		-0.206973, -0.941605, -0.265597,
		0.714403, -0.330936, 0.616531,
		34.873672, 32.744102, 24.647013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999916, 32.597294, 24.634443>,  <34.373589, 32.975758, 24.215441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999916, 32.597294, 24.634443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335648, 32.631168, 24.849239>,  <34.537086, 32.651493, 24.978117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335648, 32.631168, 24.849239>,  <33.999916, 32.597294, 24.634443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335648, 32.631168, 24.849239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540525, 0.024672, 0.840966,
		0.057986, -0.996101, 0.066494,
		0.839327, 0.084706, 0.536987,
		34.587444, 32.656574, 25.010336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826843, 32.297455, 25.261053>,  <33.999916, 32.597294, 24.634443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826843, 32.297455, 25.261053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159630, 32.505455, 25.338442>,  <34.359303, 32.630257, 25.384874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159630, 32.505455, 25.338442>,  <33.826843, 32.297455, 25.261053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159630, 32.505455, 25.338442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401818, 0.324251, 0.856390,
		0.382593, -0.790226, 0.478712,
		0.831965, 0.520004, 0.193471,
		34.409218, 32.661457, 25.396482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964283, 32.105858, 25.940838>,  <33.826843, 32.297455, 25.261053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964283, 32.105858, 25.940838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154160, 32.456089, 25.904974>,  <34.268085, 32.666225, 25.883455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154160, 32.456089, 25.904974>,  <33.964283, 32.105858, 25.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154160, 32.456089, 25.904974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186392, 0.199558, 0.961995,
		0.860191, -0.439937, 0.257928,
		0.474688, 0.875575, -0.089658,
		34.296566, 32.718761, 25.878077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418182, 32.063816, 26.476912>,  <33.964283, 32.105858, 25.940838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418182, 32.063816, 26.476912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395069, 32.448975, 26.371460>,  <34.381199, 32.680069, 26.308189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395069, 32.448975, 26.371460>,  <34.418182, 32.063816, 26.476912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395069, 32.448975, 26.371460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079692, 0.258778, 0.962644,
		0.995143, 0.076637, 0.061781,
		-0.057786, 0.962892, -0.263629,
		34.377731, 32.737843, 26.292372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812435, 32.323792, 27.029299>,  <34.418182, 32.063816, 26.476912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812435, 32.323792, 27.029299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582809, 32.603638, 26.859131>,  <34.445034, 32.771545, 26.757030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582809, 32.603638, 26.859131>,  <34.812435, 32.323792, 27.029299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582809, 32.603638, 26.859131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250394, 0.344674, 0.904712,
		0.779585, 0.625886, -0.022685,
		-0.574065, 0.699619, -0.425420,
		34.410591, 32.813522, 26.731504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014381, 32.923035, 27.402544>,  <34.812435, 32.323792, 27.029299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014381, 32.923035, 27.402544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657608, 32.981533, 27.231400>,  <34.443542, 33.016632, 27.128714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657608, 32.981533, 27.231400>,  <35.014381, 32.923035, 27.402544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657608, 32.981533, 27.231400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392364, 0.219964, 0.893121,
		0.224725, 0.964484, -0.138814,
		-0.891935, 0.146242, -0.427861,
		34.390026, 33.025406, 27.103041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847336, 33.554489, 27.700100>,  <35.014381, 32.923035, 27.402544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847336, 33.554489, 27.700100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508747, 33.382130, 27.575005>,  <34.305592, 33.278713, 27.499947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508747, 33.382130, 27.575005>,  <34.847336, 33.554489, 27.700100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508747, 33.382130, 27.575005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469821, 0.328157, 0.819500,
		-0.250494, 0.840619, -0.480222,
		-0.846476, -0.430898, -0.312739,
		34.254803, 33.252861, 27.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439758, 34.020008, 27.847883>,  <34.847336, 33.554489, 27.700100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439758, 34.020008, 27.847883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243210, 33.672859, 27.818642>,  <34.125278, 33.464569, 27.801096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243210, 33.672859, 27.818642>,  <34.439758, 34.020008, 27.847883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243210, 33.672859, 27.818642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464538, 0.190159, 0.864895,
		-0.736719, 0.458948, -0.496600,
		-0.491375, -0.867875, -0.073105,
		34.095798, 33.412498, 27.796711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955769, 34.261028, 27.357174>,  <34.439758, 34.020008, 27.847883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955769, 34.261028, 27.357174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000942, 34.651978, 27.285641>,  <35.028046, 34.886547, 27.242722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000942, 34.651978, 27.285641>,  <34.955769, 34.261028, 27.357174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000942, 34.651978, 27.285641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394006, -0.209280, -0.894964,
		-0.912143, 0.030610, -0.408727,
		0.112933, 0.977377, -0.178832,
		35.034821, 34.945190, 27.231991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452335, 34.520569, 26.813709>,  <34.955769, 34.261028, 27.357174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452335, 34.520569, 26.813709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766304, 34.768394, 26.816235>,  <34.954685, 34.917088, 26.817749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766304, 34.768394, 26.816235>,  <34.452335, 34.520569, 26.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766304, 34.768394, 26.816235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180268, -0.218611, -0.959017,
		-0.592789, 0.753893, -0.283280,
		0.784924, 0.619561, 0.006313,
		35.001781, 34.954262, 26.818129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484066, 34.958767, 26.215700>,  <34.452335, 34.520569, 26.813709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484066, 34.958767, 26.215700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865471, 35.022736, 26.317875>,  <35.094315, 35.061119, 26.379179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865471, 35.022736, 26.317875>,  <34.484066, 34.958767, 26.215700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865471, 35.022736, 26.317875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276939, -0.130684, -0.951959,
		-0.118860, 0.978441, -0.168897,
		0.953508, 0.159925, 0.255435,
		35.151524, 35.070713, 26.394505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723946, 35.521145, 25.776249>,  <34.484066, 34.958767, 26.215700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723946, 35.521145, 25.776249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059040, 35.350433, 25.912519>,  <35.260098, 35.248005, 25.994282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059040, 35.350433, 25.912519>,  <34.723946, 35.521145, 25.776249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059040, 35.350433, 25.912519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380820, 0.009456, -0.924601,
		0.391379, 0.904307, 0.170448,
		0.837734, -0.426779, 0.340678,
		35.310360, 35.222401, 26.014723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324833, 35.989498, 25.535408>,  <34.723946, 35.521145, 25.776249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324833, 35.989498, 25.535408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460705, 35.621323, 25.612778>,  <35.542229, 35.400417, 25.659201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460705, 35.621323, 25.612778>,  <35.324833, 35.989498, 25.535408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460705, 35.621323, 25.612778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391164, -0.048775, -0.919027,
		0.855341, 0.387836, 0.343474,
		0.339679, -0.920437, 0.193427,
		35.562607, 35.345192, 25.670805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993801, 36.129353, 25.364309>,  <35.324833, 35.989498, 25.535408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993801, 36.129353, 25.364309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924332, 35.735657, 25.377649>,  <35.882648, 35.499439, 25.385654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924332, 35.735657, 25.377649>,  <35.993801, 36.129353, 25.364309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924332, 35.735657, 25.377649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460347, -0.111077, -0.880763,
		0.870585, -0.137613, 0.472382,
		-0.173676, -0.984238, 0.033352,
		35.872231, 35.440384, 25.387655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677692, 35.808201, 25.334385>,  <35.993801, 36.129353, 25.364309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677692, 35.808201, 25.334385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406811, 35.538322, 25.216953>,  <36.244282, 35.376396, 25.146494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406811, 35.538322, 25.216953>,  <36.677692, 35.808201, 25.334385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406811, 35.538322, 25.216953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634610, -0.333635, -0.697107,
		0.372386, -0.658388, 0.654106,
		-0.677199, -0.674695, -0.293578,
		36.203651, 35.335915, 25.128880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060760, 35.265236, 25.170107>,  <36.677692, 35.808201, 25.334385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060760, 35.265236, 25.170107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732121, 35.148075, 24.974482>,  <36.534935, 35.077778, 24.857107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732121, 35.148075, 24.974482>,  <37.060760, 35.265236, 25.170107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732121, 35.148075, 24.974482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570001, -0.409307, -0.712437,
		0.008497, -0.864105, 0.503241,
		-0.821600, -0.292901, -0.489063,
		36.485641, 35.060204, 24.827763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253433, 34.580151, 24.911900>,  <37.060760, 35.265236, 25.170107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253433, 34.580151, 24.911900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938534, 34.715736, 24.705854>,  <36.749592, 34.797089, 24.582228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938534, 34.715736, 24.705854>,  <37.253433, 34.580151, 24.911900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938534, 34.715736, 24.705854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399862, -0.355295, -0.844912,
		-0.469408, -0.871132, 0.144170,
		-0.787252, 0.338961, -0.515111,
		36.702358, 34.817425, 24.551321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077385, 33.987480, 24.503248>,  <37.253433, 34.580151, 24.911900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077385, 33.987480, 24.503248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948921, 34.333927, 24.350040>,  <36.871845, 34.541794, 24.258116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948921, 34.333927, 24.350040>,  <37.077385, 33.987480, 24.503248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948921, 34.333927, 24.350040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555260, -0.155421, -0.817026,
		-0.767167, -0.475070, -0.431004,
		-0.321157, 0.866114, -0.383021,
		36.852573, 34.593761, 24.235134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898754, 33.830482, 23.752098>,  <37.077385, 33.987480, 24.503248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898754, 33.830482, 23.752098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947449, 34.226437, 23.781225>,  <36.976665, 34.464008, 23.798702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947449, 34.226437, 23.781225>,  <36.898754, 33.830482, 23.752098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947449, 34.226437, 23.781225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500915, 0.002067, -0.865494,
		-0.856893, 0.141835, -0.495598,
		0.121733, 0.989888, 0.072819,
		36.983967, 34.523403, 23.803070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896851, 34.007919, 23.091825>,  <36.898754, 33.830482, 23.752098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896851, 34.007919, 23.091825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039986, 34.343548, 23.255730>,  <37.125866, 34.544926, 23.354073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039986, 34.343548, 23.255730>,  <36.896851, 34.007919, 23.091825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039986, 34.343548, 23.255730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549810, 0.165363, -0.818758,
		-0.754757, 0.518277, -0.402157,
		0.357841, 0.839073, 0.409763,
		37.147339, 34.595268, 23.378658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797882, 34.522888, 22.626785>,  <36.896851, 34.007919, 23.091825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797882, 34.522888, 22.626785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101181, 34.640106, 22.859743>,  <37.283161, 34.710438, 22.999517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101181, 34.640106, 22.859743>,  <36.797882, 34.522888, 22.626785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101181, 34.640106, 22.859743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541954, 0.213258, -0.812900,
		-0.362416, 0.932012, 0.002886,
		0.758248, 0.293044, 0.582396,
		37.328655, 34.728020, 23.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885433, 35.238167, 22.418745>,  <36.797882, 34.522888, 22.626785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885433, 35.238167, 22.418745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224865, 35.114147, 22.590219>,  <37.428524, 35.039734, 22.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224865, 35.114147, 22.590219>,  <36.885433, 35.238167, 22.418745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224865, 35.114147, 22.590219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442678, -0.027622, -0.896255,
		0.289728, 0.950318, 0.113814,
		0.848583, -0.310054, 0.428688,
		37.479439, 35.021130, 22.718826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543369, 35.604046, 22.133173>,  <36.885433, 35.238167, 22.418745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543369, 35.604046, 22.133173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684959, 35.251690, 22.258856>,  <37.769913, 35.040276, 22.334265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684959, 35.251690, 22.258856>,  <37.543369, 35.604046, 22.133173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684959, 35.251690, 22.258856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445548, -0.136557, -0.884782,
		0.822307, 0.453185, 0.344143,
		0.353975, -0.880895, 0.314207,
		37.791153, 34.987423, 22.353119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214535, 35.682854, 21.900381>,  <37.543369, 35.604046, 22.133173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214535, 35.682854, 21.900381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147945, 35.296196, 21.978241>,  <38.107990, 35.064201, 22.024958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147945, 35.296196, 21.978241>,  <38.214535, 35.682854, 21.900381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147945, 35.296196, 21.978241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528397, -0.254122, -0.810073,
		0.832516, -0.032003, 0.553076,
		-0.166473, -0.966643, 0.194651,
		38.098003, 35.006203, 22.036636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929363, 35.405144, 21.807877>,  <38.214535, 35.682854, 21.900381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929363, 35.405144, 21.807877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661236, 35.108646, 21.793797>,  <38.500359, 34.930748, 21.785349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661236, 35.108646, 21.793797>,  <38.929363, 35.405144, 21.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661236, 35.108646, 21.793797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548248, -0.462707, -0.696654,
		0.500103, -0.486274, 0.716543,
		-0.670314, -0.741242, -0.035198,
		38.460140, 34.886272, 21.783237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337284, 34.788628, 21.771854>,  <38.929363, 35.405144, 21.807877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337284, 34.788628, 21.771854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978607, 34.700951, 21.618023>,  <38.763401, 34.648346, 21.525724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978607, 34.700951, 21.618023>,  <39.337284, 34.788628, 21.771854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978607, 34.700951, 21.618023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442644, -0.437195, -0.782896,
		0.003470, -0.872247, 0.489054,
		-0.896690, -0.219194, -0.384578,
		38.709599, 34.635193, 21.502649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486610, 34.186703, 21.438879>,  <39.337284, 34.788628, 21.771854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486610, 34.186703, 21.438879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 34.286663, 21.300045>,  <38.908096, 34.346638, 21.216745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 34.286663, 21.300045>,  <39.486610, 34.186703, 21.438879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125038, 34.286663, 21.300045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219210, -0.426130, -0.877702,
		-0.367236, -0.869463, 0.330411,
		-0.903927, 0.249895, -0.347085,
		38.853859, 34.361633, 21.195919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097855, 33.635723, 21.309761>,  <39.486610, 34.186703, 21.438879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097855, 33.635723, 21.309761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972313, 33.926964, 21.066004>,  <38.896988, 34.101707, 20.919750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972313, 33.926964, 21.066004>,  <39.097855, 33.635723, 21.309761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972313, 33.926964, 21.066004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352965, -0.506353, -0.786780,
		-0.881426, -0.462028, -0.098075,
		-0.313854, 0.728105, -0.609392,
		38.878159, 34.145393, 20.883186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805210, 33.315678, 20.664631>,  <39.097855, 33.635723, 21.309761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805210, 33.315678, 20.664631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845295, 33.684189, 20.514322>,  <38.869347, 33.905296, 20.424137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845295, 33.684189, 20.514322>,  <38.805210, 33.315678, 20.664631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845295, 33.684189, 20.514322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394459, -0.383511, -0.835058,
		-0.913433, -0.064543, -0.401839,
		0.100213, 0.921278, -0.375771,
		38.875359, 33.960571, 20.401590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513916, 33.301075, 20.057323>,  <38.805210, 33.315678, 20.664631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513916, 33.301075, 20.057323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752777, 33.620789, 20.030329>,  <38.896095, 33.812618, 20.014132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752777, 33.620789, 20.030329>,  <38.513916, 33.301075, 20.057323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752777, 33.620789, 20.030329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265664, -0.276459, -0.923576,
		-0.756857, 0.533586, -0.377429,
		0.597151, 0.799285, -0.067485,
		38.931923, 33.860573, 20.010084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501011, 33.522381, 19.364401>,  <38.513916, 33.301075, 20.057323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501011, 33.522381, 19.364401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833717, 33.711693, 19.480453>,  <39.033340, 33.825279, 19.550085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833717, 33.711693, 19.480453>,  <38.501011, 33.522381, 19.364401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833717, 33.711693, 19.480453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407971, -0.166705, -0.897646,
		-0.376473, 0.864993, -0.331745,
		0.831761, 0.473282, 0.290133,
		39.083244, 33.853676, 19.567493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914429, 33.922768, 18.773323>,  <38.501011, 33.522381, 19.364401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914429, 33.922768, 18.773323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174641, 33.849186, 19.068069>,  <39.330769, 33.805035, 19.244917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174641, 33.849186, 19.068069>,  <38.914429, 33.922768, 18.773323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174641, 33.849186, 19.068069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592407, -0.484219, -0.643883,
		0.475252, 0.855389, -0.206021,
		0.650530, -0.183958, 0.736865,
		39.369801, 33.793999, 19.289129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486847, 34.181576, 18.453623>,  <38.914429, 33.922768, 18.773323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486847, 34.181576, 18.453623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603806, 33.941940, 18.751776>,  <39.673981, 33.798161, 18.930668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603806, 33.941940, 18.751776>,  <39.486847, 34.181576, 18.453623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603806, 33.941940, 18.751776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761592, -0.325508, -0.560376,
		0.578344, 0.731530, 0.361085,
		0.292396, -0.599090, 0.745383,
		39.691525, 33.762215, 18.975391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181168, 34.226887, 18.505022>,  <39.486847, 34.181576, 18.453623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181168, 34.226887, 18.505022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123558, 33.885029, 18.704559>,  <40.088993, 33.679916, 18.824282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123558, 33.885029, 18.704559>,  <40.181168, 34.226887, 18.505022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123558, 33.885029, 18.704559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777121, -0.409771, -0.477673,
		0.612650, 0.318863, 0.723178,
		-0.144025, -0.854642, 0.498842,
		40.080349, 33.628635, 18.854212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731049, 34.019444, 18.896332>,  <40.181168, 34.226887, 18.505022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731049, 34.019444, 18.896332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538448, 33.693192, 18.768015>,  <40.422886, 33.497440, 18.691025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538448, 33.693192, 18.768015>,  <40.731049, 34.019444, 18.896332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538448, 33.693192, 18.768015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849896, -0.345114, -0.398212,
		0.214083, -0.464380, 0.859372,
		-0.481503, -0.815627, -0.320791,
		40.393997, 33.448502, 18.671778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250607, 33.534981, 18.957340>,  <40.731049, 34.019444, 18.896332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250607, 33.534981, 18.957340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960049, 33.373493, 18.734858>,  <40.785713, 33.276600, 18.601368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960049, 33.373493, 18.734858>,  <41.250607, 33.534981, 18.957340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960049, 33.373493, 18.734858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687255, -0.433885, -0.582602,
		-0.006122, -0.805453, 0.592628,
		-0.726391, -0.403719, -0.556208,
		40.742130, 33.252377, 18.567995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358940, 32.711533, 18.935135>,  <41.250607, 33.534981, 18.957340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358940, 32.711533, 18.935135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157356, 32.860950, 18.623625>,  <41.036407, 32.950603, 18.436718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157356, 32.860950, 18.623625>,  <41.358940, 32.711533, 18.935135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157356, 32.860950, 18.623625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743918, -0.270424, -0.611112,
		-0.438879, -0.887318, -0.141608,
		-0.503956, 0.373549, -0.778774,
		41.006168, 32.973015, 18.389992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574165, 32.308922, 18.438635>,  <41.358940, 32.711533, 18.935135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574165, 32.308922, 18.438635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376957, 32.590736, 18.234455>,  <41.258633, 32.759823, 18.111946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376957, 32.590736, 18.234455>,  <41.574165, 32.308922, 18.438635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376957, 32.590736, 18.234455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583547, -0.167378, -0.794643,
		-0.645291, -0.689650, -0.328607,
		-0.493024, 0.704533, -0.510451,
		41.229050, 32.802097, 18.081320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435966, 31.972227, 17.817785>,  <41.574165, 32.308922, 18.438635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435966, 31.972227, 17.817785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384460, 32.361271, 17.740379>,  <41.353558, 32.594696, 17.693935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384460, 32.361271, 17.740379>,  <41.435966, 31.972227, 17.817785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384460, 32.361271, 17.740379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650342, -0.064496, -0.756898,
		-0.748648, -0.223316, -0.624225,
		-0.128767, 0.972610, -0.193516,
		41.345829, 32.653053, 17.682325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256748, 32.019459, 17.065641>,  <41.435966, 31.972227, 17.817785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256748, 32.019459, 17.065641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411228, 32.365551, 17.193533>,  <41.503918, 32.573208, 17.270267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411228, 32.365551, 17.193533>,  <41.256748, 32.019459, 17.065641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411228, 32.365551, 17.193533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762902, -0.104776, -0.637968,
		-0.518490, 0.490303, -0.700550,
		0.386199, 0.865231, 0.319728,
		41.527088, 32.625122, 17.289452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354874, 32.546154, 16.482269>,  <41.256748, 32.019459, 17.065641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354874, 32.546154, 16.482269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609005, 32.685844, 16.757776>,  <41.761482, 32.769661, 16.923080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609005, 32.685844, 16.757776>,  <41.354874, 32.546154, 16.482269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609005, 32.685844, 16.757776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730370, 0.017974, -0.682815,
		-0.250839, 0.936865, -0.243647,
		0.635326, 0.349230, 0.688767,
		41.799603, 32.790615, 16.964407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630077, 33.159378, 16.123371>,  <41.354874, 32.546154, 16.482269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630077, 33.159378, 16.123371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881245, 33.081993, 16.424911>,  <42.031944, 33.035561, 16.605835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881245, 33.081993, 16.424911>,  <41.630077, 33.159378, 16.123371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881245, 33.081993, 16.424911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775190, 0.069265, -0.627920,
		0.069265, 0.978659, 0.193465,
		0.627920, -0.193465, 0.753849,
		42.069622, 33.023952, 16.651066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072422, 33.754131, 16.202019>,  <41.630077, 33.159378, 16.123371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072422, 33.754131, 16.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269638, 33.442348, 16.356602>,  <42.387966, 33.255280, 16.449352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269638, 33.442348, 16.356602>,  <42.072422, 33.754131, 16.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269638, 33.442348, 16.356602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791149, 0.216899, -0.571872,
		0.361929, 0.587704, 0.723610,
		0.493042, -0.779461, 0.386460,
		42.417549, 33.208511, 16.472540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732487, 33.961502, 16.173632>,  <42.072422, 33.754131, 16.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732487, 33.961502, 16.173632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785786, 33.569950, 16.235647>,  <42.817764, 33.335018, 16.272856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785786, 33.569950, 16.235647>,  <42.732487, 33.961502, 16.173632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785786, 33.569950, 16.235647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856627, 0.035080, -0.514743,
		0.498434, 0.201398, 0.843210,
		0.133248, -0.978881, 0.155038,
		42.825760, 33.276287, 16.282158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330879, 33.953762, 16.432081>,  <42.732487, 33.961502, 16.173632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330879, 33.953762, 16.432081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270058, 33.590710, 16.275574>,  <43.233566, 33.372879, 16.181669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270058, 33.590710, 16.275574>,  <43.330879, 33.953762, 16.432081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270058, 33.590710, 16.275574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873328, 0.061983, -0.483173,
		0.462793, -0.415175, 0.783232,
		-0.152054, -0.907627, -0.391270,
		43.224442, 33.318420, 16.158194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805244, 33.456772, 16.674170>,  <43.330879, 33.953762, 16.432081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805244, 33.456772, 16.674170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667809, 33.376213, 16.307262>,  <43.585346, 33.327877, 16.087118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667809, 33.376213, 16.307262>,  <43.805244, 33.456772, 16.674170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667809, 33.376213, 16.307262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930107, 0.062005, -0.362016,
		0.129785, -0.977545, 0.166020,
		-0.343593, -0.201400, -0.917269,
		43.564732, 33.315792, 16.032082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362022, 33.047607, 16.639301>,  <43.805244, 33.456772, 16.674170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362022, 33.047607, 16.639301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718456, 33.168968, 16.774307>,  <44.932316, 33.241783, 16.855310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718456, 33.168968, 16.774307>,  <44.362022, 33.047607, 16.639301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718456, 33.168968, 16.774307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428500, 0.317420, 0.845951,
		0.149528, -0.898439, 0.412855,
		0.891083, 0.303402, 0.337517,
		44.985783, 33.259991, 16.875563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410778, 32.731949, 17.320471>,  <44.362022, 33.047607, 16.639301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410778, 32.731949, 17.320471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675537, 33.030846, 17.296721>,  <44.834393, 33.210182, 17.282471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675537, 33.030846, 17.296721>,  <44.410778, 32.731949, 17.320471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675537, 33.030846, 17.296721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323676, 0.356356, 0.876495,
		0.676113, -0.560929, 0.477734,
		0.661895, 0.747241, -0.059377,
		44.874107, 33.255016, 17.278908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654163, 32.847839, 17.966017>,  <44.410778, 32.731949, 17.320471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654163, 32.847839, 17.966017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777134, 33.200005, 17.821598>,  <44.850918, 33.411304, 17.734947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.777134, 33.200005, 17.821598>,  <44.654163, 32.847839, 17.966017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777134, 33.200005, 17.821598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194964, 0.429650, 0.881697,
		0.931384, -0.200670, 0.303737,
		0.307431, 0.880416, -0.361046,
		44.869362, 33.464130, 17.713284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200264, 33.114292, 18.427950>,  <44.654163, 32.847839, 17.966017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200264, 33.114292, 18.427950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038212, 33.426384, 18.237326>,  <44.940979, 33.613640, 18.122952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.038212, 33.426384, 18.237326>,  <45.200264, 33.114292, 18.427950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038212, 33.426384, 18.237326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234083, 0.415356, 0.879025,
		0.883784, 0.467675, 0.014365,
		-0.405131, 0.780230, -0.476560,
		44.916672, 33.660454, 18.094358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423866, 33.657246, 18.791960>,  <45.200264, 33.114292, 18.427950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423866, 33.657246, 18.791960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088753, 33.767372, 18.603357>,  <44.887684, 33.833447, 18.490196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088753, 33.767372, 18.603357>,  <45.423866, 33.657246, 18.791960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088753, 33.767372, 18.603357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349807, 0.392411, 0.850675,
		0.419225, 0.877620, -0.232451,
		-0.837786, 0.275312, -0.471507,
		44.837418, 33.849964, 18.461905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342636, 34.279346, 19.141542>,  <45.423866, 33.657246, 18.791960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342636, 34.279346, 19.141542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994076, 34.206131, 18.959482>,  <44.784939, 34.162201, 18.850246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.994076, 34.206131, 18.959482>,  <45.342636, 34.279346, 19.141542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994076, 34.206131, 18.959482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490316, 0.294654, 0.820225,
		-0.016018, 0.937911, -0.346506,
		-0.871398, -0.183036, -0.455153,
		44.732658, 34.151218, 18.822937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891159, 34.865532, 19.319445>,  <45.342636, 34.279346, 19.141542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891159, 34.865532, 19.319445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647346, 34.562283, 19.226736>,  <44.501057, 34.380333, 19.171112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.647346, 34.562283, 19.226736>,  <44.891159, 34.865532, 19.319445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647346, 34.562283, 19.226736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617239, 0.270383, 0.738857,
		-0.497478, 0.593416, -0.632750,
		-0.609534, -0.758123, -0.231770,
		44.464485, 34.334846, 19.157206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301609, 35.152737, 19.335018>,  <44.891159, 34.865532, 19.319445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301609, 35.152737, 19.335018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184902, 34.772621, 19.378504>,  <44.114880, 34.544552, 19.404594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184902, 34.772621, 19.378504>,  <44.301609, 35.152737, 19.335018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184902, 34.772621, 19.378504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664472, 0.283132, 0.691602,
		-0.688004, 0.129549, -0.714050,
		-0.291767, -0.950291, 0.108714,
		44.097374, 34.487534, 19.411118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599335, 35.173260, 19.132864>,  <44.301609, 35.152737, 19.335018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599335, 35.173260, 19.132864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637138, 34.845936, 19.359644>,  <43.659821, 34.649540, 19.495712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637138, 34.845936, 19.359644>,  <43.599335, 35.173260, 19.132864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637138, 34.845936, 19.359644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828471, 0.251126, 0.500572,
		-0.552000, -0.517012, -0.654213,
		0.094512, -0.818312, 0.566951,
		43.665493, 34.600441, 19.529730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932377, 34.811440, 19.208288>,  <43.599335, 35.173260, 19.132864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932377, 34.811440, 19.208288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129070, 34.679031, 19.530436>,  <43.247086, 34.599586, 19.723724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.129070, 34.679031, 19.530436>,  <42.932377, 34.811440, 19.208288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129070, 34.679031, 19.530436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809021, 0.168343, 0.563157,
		-0.321994, -0.928487, -0.185021,
		0.491737, -0.331019, 0.805370,
		43.276592, 34.579727, 19.772047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429070, 34.453152, 19.603985>,  <42.932377, 34.811440, 19.208288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429070, 34.453152, 19.603985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717434, 34.535904, 19.868555>,  <42.890453, 34.585556, 20.027298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717434, 34.535904, 19.868555>,  <42.429070, 34.453152, 19.603985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717434, 34.535904, 19.868555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674133, -0.011994, 0.738513,
		0.160722, -0.978291, 0.130823,
		0.720911, 0.206887, 0.661426,
		42.933708, 34.597969, 20.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330090, 33.926952, 20.160711>,  <42.429070, 34.453152, 19.603985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330090, 33.926952, 20.160711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528545, 34.245140, 20.299892>,  <42.647617, 34.436054, 20.383402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528545, 34.245140, 20.299892>,  <42.330090, 33.926952, 20.160711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528545, 34.245140, 20.299892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665667, 0.091204, 0.740655,
		0.557435, -0.599088, 0.574769,
		0.496139, 0.795472, 0.347953,
		42.677387, 34.483780, 20.404278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548313, 33.823124, 20.763977>,  <42.330090, 33.926952, 20.160711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548313, 33.823124, 20.763977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548767, 34.222610, 20.784212>,  <42.549042, 34.462303, 20.796354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548767, 34.222610, 20.784212>,  <42.548313, 33.823124, 20.763977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548767, 34.222610, 20.784212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635964, -0.038318, 0.770767,
		0.771718, -0.033051, 0.635106,
		0.001139, 0.998719, 0.050590,
		42.549110, 34.522224, 20.799389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518196, 34.011719, 21.451347>,  <42.548313, 33.823124, 20.763977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518196, 34.011719, 21.451347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391476, 34.348686, 21.277006>,  <42.315445, 34.550865, 21.172401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391476, 34.348686, 21.277006>,  <42.518196, 34.011719, 21.451347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391476, 34.348686, 21.277006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625184, 0.160111, 0.763878,
		0.713290, 0.514486, 0.475943,
		-0.316800, 0.842419, -0.435854,
		42.296436, 34.601410, 21.146250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388412, 34.359531, 22.002188>,  <42.518196, 34.011719, 21.451347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388412, 34.359531, 22.002188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215160, 34.592194, 21.726776>,  <42.111210, 34.731789, 21.561529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215160, 34.592194, 21.726776>,  <42.388412, 34.359531, 22.002188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215160, 34.592194, 21.726776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617489, 0.364985, 0.696774,
		0.656584, 0.726956, 0.201078,
		-0.433133, 0.581654, -0.688531,
		42.085220, 34.766689, 21.520218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434452, 35.045742, 22.310507>,  <42.388412, 34.359531, 22.002188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434452, 35.045742, 22.310507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148296, 35.035316, 22.031210>,  <41.976604, 35.029060, 21.863632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148296, 35.035316, 22.031210>,  <42.434452, 35.045742, 22.310507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148296, 35.035316, 22.031210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676016, 0.278550, 0.682212,
		0.176712, 0.960068, -0.216892,
		-0.715385, -0.026068, -0.698244,
		41.933681, 35.027496, 21.821737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015064, 35.764328, 22.275190>,  <42.434452, 35.045742, 22.310507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015064, 35.764328, 22.275190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805569, 35.459881, 22.122143>,  <41.679871, 35.277214, 22.030313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805569, 35.459881, 22.122143>,  <42.015064, 35.764328, 22.275190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805569, 35.459881, 22.122143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766751, 0.225461, 0.601049,
		-0.371204, 0.608165, -0.701671,
		-0.523737, -0.761119, -0.382619,
		41.648449, 35.231544, 22.007357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377220, 36.052242, 22.101416>,  <42.015064, 35.764328, 22.275190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377220, 36.052242, 22.101416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320751, 35.658691, 22.145338>,  <41.286869, 35.422562, 22.171692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320751, 35.658691, 22.145338>,  <41.377220, 36.052242, 22.101416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320751, 35.658691, 22.145338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780561, 0.178843, 0.598949,
		-0.608930, -0.001157, -0.793223,
		-0.141169, -0.983877, 0.109806,
		41.278400, 35.363529, 22.178280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706955, 36.009541, 21.996786>,  <41.377220, 36.052242, 22.101416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706955, 36.009541, 21.996786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821091, 35.675648, 22.185169>,  <40.889572, 35.475311, 22.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821091, 35.675648, 22.185169>,  <40.706955, 36.009541, 21.996786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821091, 35.675648, 22.185169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737887, 0.122257, 0.663759,
		-0.611640, -0.536909, -0.581055,
		0.285341, -0.834735, 0.470955,
		40.906693, 35.425228, 22.326456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183689, 35.607128, 22.008804>,  <40.706955, 36.009541, 21.996786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183689, 35.607128, 22.008804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396755, 35.472122, 22.319250>,  <40.524593, 35.391117, 22.505518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396755, 35.472122, 22.319250>,  <40.183689, 35.607128, 22.008804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396755, 35.472122, 22.319250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836764, -0.072575, 0.542732,
		-0.126855, -0.938518, -0.321080,
		0.532666, -0.337517, 0.776111,
		40.556557, 35.370869, 22.552084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814445, 35.026489, 22.332148>,  <40.183689, 35.607128, 22.008804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814445, 35.026489, 22.332148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055561, 35.162659, 22.620800>,  <40.200230, 35.244358, 22.793991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055561, 35.162659, 22.620800>,  <39.814445, 35.026489, 22.332148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055561, 35.162659, 22.620800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775738, 0.038367, 0.629888,
		0.186741, -0.939490, 0.287206,
		0.602793, 0.340422, 0.721633,
		40.236401, 35.264786, 22.837290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408459, 35.052502, 22.873207>,  <39.814445, 35.026489, 22.332148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408459, 35.052502, 22.873207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743652, 35.189766, 23.042923>,  <39.944771, 35.272125, 23.144753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743652, 35.189766, 23.042923>,  <39.408459, 35.052502, 22.873207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743652, 35.189766, 23.042923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491246, 0.135839, 0.860363,
		0.237607, -0.929403, 0.282407,
		0.837986, 0.343160, 0.424289,
		39.995049, 35.292713, 23.170210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482925, 34.659130, 23.478853>,  <39.408459, 35.052502, 22.873207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482925, 34.659130, 23.478853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649719, 35.021961, 23.501947>,  <39.749794, 35.239658, 23.515804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649719, 35.021961, 23.501947>,  <39.482925, 34.659130, 23.478853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649719, 35.021961, 23.501947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606278, 0.230255, 0.761189,
		0.677165, -0.352407, 0.645954,
		0.416983, 0.907079, 0.057736,
		39.774815, 35.294086, 23.519268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631969, 34.767288, 24.189873>,  <39.482925, 34.659130, 23.478853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631969, 34.767288, 24.189873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632019, 35.145672, 24.060163>,  <39.632050, 35.372704, 23.982338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632019, 35.145672, 24.060163>,  <39.631969, 34.767288, 24.189873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632019, 35.145672, 24.060163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497047, 0.281440, 0.820814,
		0.867724, 0.161077, 0.470223,
		0.000125, 0.945963, -0.324275,
		39.632057, 35.429462, 23.962881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888210, 35.223835, 24.715633>,  <39.631969, 34.767288, 24.189873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888210, 35.223835, 24.715633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656696, 35.448994, 24.479614>,  <39.517788, 35.584087, 24.338003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.656696, 35.448994, 24.479614>,  <39.888210, 35.223835, 24.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656696, 35.448994, 24.479614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415821, 0.418711, 0.807325,
		0.701499, 0.712622, -0.008280,
		-0.578785, 0.562895, -0.590049,
		39.483063, 35.617863, 24.302599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921749, 35.937859, 24.980307>,  <39.888210, 35.223835, 24.715633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921749, 35.937859, 24.980307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587517, 35.951977, 24.761013>,  <39.386978, 35.960449, 24.629436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587517, 35.951977, 24.761013>,  <39.921749, 35.937859, 24.980307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587517, 35.951977, 24.761013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434667, 0.567805, 0.699044,
		0.335965, 0.822406, -0.459103,
		-0.835579, 0.035297, -0.548235,
		39.336842, 35.962566, 24.596542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676113, 36.667934, 24.939642>,  <39.921749, 35.937859, 24.980307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676113, 36.667934, 24.939642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359348, 36.434456, 24.867893>,  <39.169289, 36.294369, 24.824844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359348, 36.434456, 24.867893>,  <39.676113, 36.667934, 24.939642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359348, 36.434456, 24.867893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472898, 0.400399, 0.784887,
		-0.386312, 0.706388, -0.593109,
		-0.791916, -0.583692, -0.179371,
		39.121773, 36.259350, 24.814081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099289, 37.035736, 25.105034>,  <39.676113, 36.667934, 24.939642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099289, 37.035736, 25.105034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929333, 36.674717, 25.077112>,  <38.827358, 36.458103, 25.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929333, 36.674717, 25.077112>,  <39.099289, 37.035736, 25.105034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929333, 36.674717, 25.077112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638084, 0.243904, 0.730315,
		-0.642121, 0.354843, -0.679535,
		-0.424888, -0.902550, -0.069804,
		38.801865, 36.403954, 25.056171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415161, 37.169266, 24.968534>,  <39.099289, 37.035736, 25.105034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415161, 37.169266, 24.968534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420303, 36.801445, 25.125641>,  <38.423389, 36.580753, 25.219904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420303, 36.801445, 25.125641>,  <38.415161, 37.169266, 24.968534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420303, 36.801445, 25.125641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629694, 0.297680, 0.717546,
		-0.776737, -0.256544, -0.575209,
		0.012854, -0.919550, 0.392764,
		38.424160, 36.525581, 25.243469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722027, 36.899723, 24.874615>,  <38.415161, 37.169266, 24.968534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722027, 36.899723, 24.874615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905689, 36.731407, 25.187565>,  <38.015888, 36.630417, 25.375334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905689, 36.731407, 25.187565>,  <37.722027, 36.899723, 24.874615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905689, 36.731407, 25.187565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794598, 0.199264, 0.573505,
		-0.397225, -0.885002, -0.242867,
		0.459159, -0.420792, 0.782373,
		38.043438, 36.605171, 25.422277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188995, 36.855560, 25.398865>,  <37.722027, 36.899723, 24.874615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188995, 36.855560, 25.398865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503441, 36.782471, 25.635044>,  <37.692108, 36.738617, 25.776752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503441, 36.782471, 25.635044>,  <37.188995, 36.855560, 25.398865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503441, 36.782471, 25.635044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521139, 0.317673, 0.792148,
		-0.332317, -0.930427, 0.154502,
		0.786116, -0.182728, 0.590450,
		37.739277, 36.727654, 25.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872768, 36.518532, 25.976194>,  <37.188995, 36.855560, 25.398865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872768, 36.518532, 25.976194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222893, 36.650982, 26.117155>,  <37.432968, 36.730453, 26.201731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.222893, 36.650982, 26.117155>,  <36.872768, 36.518532, 25.976194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222893, 36.650982, 26.117155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447786, 0.279946, 0.849186,
		0.182536, -0.901102, 0.393314,
		0.875310, 0.331128, 0.352401,
		37.485485, 36.750320, 26.222876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019646, 36.180275, 26.649446>,  <36.872768, 36.518532, 25.976194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019646, 36.180275, 26.649446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237640, 36.515209, 26.666748>,  <37.368435, 36.716167, 26.677128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237640, 36.515209, 26.666748>,  <37.019646, 36.180275, 26.649446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237640, 36.515209, 26.666748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330595, 0.167191, 0.928846,
		0.770520, -0.520504, 0.367934,
		0.544983, 0.837331, 0.043252,
		37.401134, 36.766407, 26.679724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301258, 36.159348, 27.337933>,  <37.019646, 36.180275, 26.649446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301258, 36.159348, 27.337933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342731, 36.547276, 27.249660>,  <37.367615, 36.780033, 27.196697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342731, 36.547276, 27.249660>,  <37.301258, 36.159348, 27.337933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342731, 36.547276, 27.249660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237523, 0.239601, 0.941369,
		0.965833, -0.045183, 0.255196,
		0.103679, 0.969820, -0.220682,
		37.373837, 36.838223, 27.183456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667320, 36.391235, 27.916506>,  <37.301258, 36.159348, 27.337933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667320, 36.391235, 27.916506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524677, 36.712475, 27.725565>,  <37.439091, 36.905216, 27.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524677, 36.712475, 27.725565>,  <37.667320, 36.391235, 27.916506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524677, 36.712475, 27.725565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050762, 0.493533, 0.868245,
		0.932873, 0.333857, -0.135233,
		-0.356611, 0.803097, -0.477351,
		37.417694, 36.953403, 27.582359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126904, 36.980148, 28.211405>,  <37.667320, 36.391235, 27.916506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126904, 36.980148, 28.211405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805874, 37.150478, 28.044289>,  <37.613255, 37.252674, 27.944019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805874, 37.150478, 28.044289>,  <38.126904, 36.980148, 28.211405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805874, 37.150478, 28.044289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035159, 0.665362, 0.745693,
		0.595515, 0.613163, -0.519031,
		-0.802575, 0.425822, -0.417791,
		37.565102, 37.278225, 27.918951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262444, 37.730232, 28.166599>,  <38.126904, 36.980148, 28.211405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262444, 37.730232, 28.166599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866833, 37.671337, 28.161758>,  <37.629467, 37.636002, 28.158854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866833, 37.671337, 28.161758>,  <38.262444, 37.730232, 28.166599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866833, 37.671337, 28.161758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103744, 0.633876, 0.766446,
		-0.105176, 0.759291, -0.642195,
		-0.989028, -0.147235, -0.012104,
		37.570126, 37.627167, 28.158127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093403, 38.260315, 28.297916>,  <38.262444, 37.730232, 28.166599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093403, 38.260315, 28.297916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744606, 38.084564, 28.384249>,  <37.535328, 37.979115, 28.436049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744606, 38.084564, 28.384249>,  <38.093403, 38.260315, 28.297916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744606, 38.084564, 28.384249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133936, 0.638217, 0.758116,
		-0.470847, 0.632161, -0.615366,
		-0.871989, -0.439376, 0.215833,
		37.483009, 37.952751, 28.448999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672955, 38.823315, 28.432159>,  <38.093403, 38.260315, 28.297916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672955, 38.823315, 28.432159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500980, 38.496109, 28.585001>,  <37.397797, 38.299786, 28.676706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500980, 38.496109, 28.585001>,  <37.672955, 38.823315, 28.432159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500980, 38.496109, 28.585001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010136, 0.427562, 0.903929,
		-0.902801, 0.384762, -0.192117,
		-0.429940, -0.818015, 0.382103,
		37.371998, 38.250706, 28.699633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120392, 38.992561, 28.988682>,  <37.672955, 38.823315, 28.432159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120392, 38.992561, 28.988682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227707, 38.615791, 29.069485>,  <37.292095, 38.389729, 29.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227707, 38.615791, 29.069485>,  <37.120392, 38.992561, 28.988682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227707, 38.615791, 29.069485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361947, 0.292892, 0.884991,
		-0.892758, -0.164315, 0.419504,
		0.268287, -0.941921, 0.202008,
		37.308193, 38.333214, 29.130087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711758, 38.599785, 29.554523>,  <37.120392, 38.992561, 28.988682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711758, 38.599785, 29.554523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091003, 38.476627, 29.522844>,  <37.318550, 38.402733, 29.503838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091003, 38.476627, 29.522844>,  <36.711758, 38.599785, 29.554523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091003, 38.476627, 29.522844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116199, 0.103737, 0.987794,
		-0.295924, -0.945747, 0.134132,
		0.948118, -0.307897, -0.079196,
		37.375439, 38.384258, 29.499084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881630, 38.016926, 30.038708>,  <36.711758, 38.599785, 29.554523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881630, 38.016926, 30.038708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213718, 38.224522, 29.957340>,  <37.412971, 38.349079, 29.908520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213718, 38.224522, 29.957340>,  <36.881630, 38.016926, 30.038708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213718, 38.224522, 29.957340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116430, 0.195419, 0.973784,
		0.545139, -0.832141, 0.101814,
		0.830222, 0.518993, -0.203417,
		37.462784, 38.380219, 29.896315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347416, 37.933220, 30.579901>,  <36.881630, 38.016926, 30.038708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347416, 37.933220, 30.579901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457050, 38.296207, 30.452541>,  <37.522831, 38.514000, 30.376125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457050, 38.296207, 30.452541>,  <37.347416, 37.933220, 30.579901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457050, 38.296207, 30.452541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112623, 0.298510, 0.947738,
		0.955088, -0.295621, -0.020384,
		0.274087, 0.907469, -0.318397,
		37.539276, 38.568447, 30.357023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993992, 38.276257, 31.007311>,  <37.347416, 37.933220, 30.579901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993992, 38.276257, 31.007311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721523, 38.541702, 30.883619>,  <37.558041, 38.700970, 30.809404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721523, 38.541702, 30.883619>,  <37.993992, 38.276257, 31.007311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721523, 38.541702, 30.883619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020687, 0.404759, 0.914189,
		0.731829, 0.629119, -0.261984,
		-0.681174, 0.663610, -0.309229,
		37.517170, 38.740784, 30.790850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029114, 38.094913, 31.736832>,  <37.993992, 38.276257, 31.007311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029114, 38.094913, 31.736832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952511, 38.056274, 32.127522>,  <37.906548, 38.033092, 32.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952511, 38.056274, 32.127522>,  <38.029114, 38.094913, 31.736832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952511, 38.056274, 32.127522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971956, -0.119715, -0.202412,
		0.136481, -0.988098, -0.070964,
		-0.191507, -0.096599, 0.976725,
		37.895058, 38.027294, 32.420540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592884, 37.635830, 31.733559>,  <38.029114, 38.094913, 31.736832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592884, 37.635830, 31.733559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543678, 37.785072, 32.101398>,  <37.514156, 37.874619, 32.322102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543678, 37.785072, 32.101398>,  <37.592884, 37.635830, 31.733559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543678, 37.785072, 32.101398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989439, -0.117705, -0.084597,
		0.076678, -0.920293, 0.383642,
		-0.123011, 0.373104, 0.919599,
		37.506775, 37.897003, 32.377277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455097, 37.063866, 32.181793>,  <37.592884, 37.635830, 31.733559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455097, 37.063866, 32.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307522, 37.412285, 32.311508>,  <37.218975, 37.621338, 32.389336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307522, 37.412285, 32.311508>,  <37.455097, 37.063866, 32.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307522, 37.412285, 32.311508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928202, -0.363391, -0.079930,
		0.048220, -0.330493, 0.942576,
		-0.368939, 0.871046, 0.324287,
		37.196838, 37.673599, 32.408794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926250, 36.858570, 32.504139>,  <37.455097, 37.063866, 32.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926250, 36.858570, 32.504139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851795, 37.250378, 32.473408>,  <36.807121, 37.485462, 32.454971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851795, 37.250378, 32.473408>,  <36.926250, 36.858570, 32.504139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851795, 37.250378, 32.473408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978640, -0.191783, -0.074045,
		-0.087262, 0.061402, 0.994291,
		-0.186142, 0.979515, -0.076826,
		36.795952, 37.544231, 32.450359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922497, 36.616886, 31.807144>,  <36.926250, 36.858570, 32.504139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922497, 36.616886, 31.807144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972466, 36.220024, 31.808889>,  <37.002445, 35.981907, 31.809937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972466, 36.220024, 31.808889>,  <36.922497, 36.616886, 31.807144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972466, 36.220024, 31.808889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568668, 0.067998, -0.819752,
		0.813026, 0.104885, 0.572702,
		0.124922, -0.992157, 0.004361,
		37.009941, 35.922379, 31.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623707, 36.416565, 31.814049>,  <36.922497, 36.616886, 31.807144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623707, 36.416565, 31.814049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404224, 36.127621, 31.645710>,  <37.272537, 35.954254, 31.544706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404224, 36.127621, 31.645710>,  <37.623707, 36.416565, 31.814049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404224, 36.127621, 31.645710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629629, -0.025896, -0.776464,
		0.549991, -0.691028, 0.469031,
		-0.548704, -0.722364, -0.420849,
		37.239613, 35.910912, 31.519455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041553, 35.778744, 31.658680>,  <37.623707, 36.416565, 31.814049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041553, 35.778744, 31.658680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741093, 35.808605, 31.396320>,  <37.560818, 35.826523, 31.238905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741093, 35.808605, 31.396320>,  <38.041553, 35.778744, 31.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741093, 35.808605, 31.396320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639703, -0.162963, -0.751148,
		-0.162963, -0.983804, 0.074654,
		0.751148, -0.074654, 0.655899,
		37.515747, 35.831001, 31.199551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171944, 35.341980, 31.201790>,  <38.041553, 35.778744, 31.658680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171944, 35.341980, 31.201790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934132, 35.589073, 30.995901>,  <37.791443, 35.737328, 30.872368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934132, 35.589073, 30.995901>,  <38.171944, 35.341980, 31.201790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934132, 35.589073, 30.995901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565736, -0.133523, -0.813704,
		-0.571378, -0.774971, -0.270089,
		-0.594534, 0.617731, -0.514721,
		37.755772, 35.774391, 30.841484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790295, 35.094772, 30.646687>,  <38.171944, 35.341980, 31.201790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790295, 35.094772, 30.646687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857445, 35.468781, 30.521757>,  <37.897736, 35.693188, 30.446800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857445, 35.468781, 30.521757>,  <37.790295, 35.094772, 30.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857445, 35.468781, 30.521757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458245, -0.354526, -0.815060,
		-0.872829, -0.006292, -0.487986,
		0.167876, 0.935025, -0.312324,
		37.907806, 35.749287, 30.428061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788673, 34.355595, 31.075451>,  <37.790295, 35.094772, 30.646687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788673, 34.355595, 31.075451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501915, 34.093380, 30.980515>,  <37.329861, 33.936050, 30.923552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501915, 34.093380, 30.980515>,  <37.788673, 34.355595, 31.075451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501915, 34.093380, 30.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607224, 0.419836, 0.674550,
		-0.342547, 0.627702, -0.699036,
		-0.716897, -0.655537, -0.237342,
		37.286846, 33.896721, 30.909311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209671, 34.720798, 30.899626>,  <37.788673, 34.355595, 31.075451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209671, 34.720798, 30.899626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080627, 34.359901, 31.014090>,  <37.003201, 34.143364, 31.082767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080627, 34.359901, 31.014090>,  <37.209671, 34.720798, 30.899626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080627, 34.359901, 31.014090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541259, 0.423866, 0.726207,
		-0.776506, 0.079396, -0.625089,
		-0.322612, -0.902238, 0.286160,
		36.983845, 34.089230, 31.099937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544407, 34.790798, 30.927210>,  <37.209671, 34.720798, 30.899626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544407, 34.790798, 30.927210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619011, 34.472321, 31.157440>,  <36.663773, 34.281235, 31.295578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619011, 34.472321, 31.157440>,  <36.544407, 34.790798, 30.927210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619011, 34.472321, 31.157440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660233, 0.332263, 0.673568,
		-0.727533, -0.505642, -0.463704,
		0.186513, -0.796196, 0.575574,
		36.674965, 34.233463, 31.330112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930790, 34.277687, 31.094715>,  <36.544407, 34.790798, 30.927210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930790, 34.277687, 31.094715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208107, 34.345352, 31.374924>,  <36.374496, 34.385952, 31.543049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208107, 34.345352, 31.374924>,  <35.930790, 34.277687, 31.094715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208107, 34.345352, 31.374924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687553, 0.446500, 0.572633,
		-0.215913, -0.878647, 0.425865,
		0.693291, 0.169166, 0.700521,
		36.416096, 34.396103, 31.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799206, 33.887032, 31.679638>,  <35.930790, 34.277687, 31.094715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799206, 33.887032, 31.679638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980324, 34.236980, 31.748428>,  <36.088993, 34.446949, 31.789703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980324, 34.236980, 31.748428>,  <35.799206, 33.887032, 31.679638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980324, 34.236980, 31.748428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799468, 0.312974, 0.512735,
		0.394754, -0.369652, 0.841146,
		0.452791, 0.874874, 0.171978,
		36.116161, 34.499443, 31.800022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230705, 34.243980, 31.367550>,  <35.799206, 33.887032, 31.679638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230705, 34.243980, 31.367550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053040, 33.974472, 31.131330>,  <34.946442, 33.812767, 30.989599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053040, 33.974472, 31.131330>,  <35.230705, 34.243980, 31.367550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053040, 33.974472, 31.131330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879766, 0.452692, 0.145198,
		0.169507, 0.584037, -0.793831,
		-0.444162, -0.673773, -0.590551,
		34.919792, 33.772339, 30.954165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933037, 34.395451, 30.709917>,  <35.230705, 34.243980, 31.367550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933037, 34.395451, 30.709917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697548, 34.126541, 30.889456>,  <34.556255, 33.965195, 30.997179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697548, 34.126541, 30.889456>,  <34.933037, 34.395451, 30.709917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697548, 34.126541, 30.889456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760881, 0.648333, -0.026933,
		-0.272895, -0.357373, -0.893204,
		-0.588718, -0.672272, 0.448845,
		34.520931, 33.924858, 31.024109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254463, 34.482620, 30.476706>,  <34.933037, 34.395451, 30.709917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254463, 34.482620, 30.476706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214542, 34.292336, 30.826275>,  <34.190590, 34.178165, 31.036016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214542, 34.292336, 30.826275>,  <34.254463, 34.482620, 30.476706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214542, 34.292336, 30.826275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790745, 0.571040, 0.220534,
		-0.603955, -0.669039, -0.433157,
		-0.099804, -0.475709, 0.873922,
		34.184601, 34.149624, 31.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482567, 34.233322, 30.511005>,  <34.254463, 34.482620, 30.476706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482567, 34.233322, 30.511005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626545, 34.290993, 30.879713>,  <33.712933, 34.325596, 31.100937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626545, 34.290993, 30.879713>,  <33.482567, 34.233322, 30.511005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626545, 34.290993, 30.879713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522206, 0.849860, 0.070987,
		-0.773138, -0.506904, 0.381191,
		0.359943, 0.144177, 0.921767,
		33.734528, 34.334248, 31.156242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902401, 34.495754, 30.914383>,  <33.482567, 34.233322, 30.511005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902401, 34.495754, 30.914383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230495, 34.578648, 31.127647>,  <33.427353, 34.628384, 31.255606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230495, 34.578648, 31.127647>,  <32.902401, 34.495754, 30.914383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230495, 34.578648, 31.127647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357410, 0.913400, 0.194829,
		-0.446616, -0.350364, 0.823274,
		0.820239, 0.207232, 0.533162,
		33.476566, 34.640816, 31.287596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562603, 34.900745, 31.492994>,  <32.902401, 34.495754, 30.914383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562603, 34.900745, 31.492994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960392, 34.942711, 31.491648>,  <33.199066, 34.967888, 31.490841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960392, 34.942711, 31.491648>,  <32.562603, 34.900745, 31.492994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960392, 34.942711, 31.491648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101227, 0.967054, 0.233581,
		0.027759, -0.231951, 0.972331,
		0.994476, 0.104910, -0.003365,
		33.258736, 34.974182, 31.490639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767033, 35.102306, 32.177898>,  <32.562603, 34.900745, 31.492994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767033, 35.102306, 32.177898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981392, 35.237564, 31.868452>,  <33.110008, 35.318718, 31.682785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981392, 35.237564, 31.868452>,  <32.767033, 35.102306, 32.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981392, 35.237564, 31.868452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279419, 0.935691, 0.215426,
		0.796705, 0.100715, 0.595918,
		0.535898, 0.338142, -0.773611,
		33.142162, 35.339008, 31.636368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084003, 35.700485, 32.371044>,  <32.767033, 35.102306, 32.177898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084003, 35.700485, 32.371044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074444, 35.700287, 31.971159>,  <33.068710, 35.700169, 31.731228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074444, 35.700287, 31.971159>,  <33.084003, 35.700485, 32.371044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074444, 35.700287, 31.971159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444785, 0.895579, 0.010190,
		0.895319, 0.444902, -0.021618,
		-0.023894, -0.000492, -0.999714,
		33.067276, 35.700138, 31.671246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558224, 36.289810, 32.152092>,  <33.084003, 35.700485, 32.371044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558224, 36.289810, 32.152092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607029, 36.359978, 32.542854>,  <33.636314, 36.402077, 32.777309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607029, 36.359978, 32.542854>,  <33.558224, 36.289810, 32.152092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607029, 36.359978, 32.542854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449091, 0.867983, -0.211950,
		-0.885115, 0.464580, 0.027131,
		0.122017, 0.175416, 0.976904,
		33.643635, 36.412601, 32.835926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879288, 36.640701, 31.598352>,  <33.558224, 36.289810, 32.152092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879288, 36.640701, 31.598352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936554, 36.245052, 31.611835>,  <33.970913, 36.007664, 31.619926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936554, 36.245052, 31.611835>,  <33.879288, 36.640701, 31.598352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936554, 36.245052, 31.611835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167020, -0.057718, -0.984263,
		0.975504, 0.135284, -0.173467,
		0.143167, -0.989124, 0.033709,
		33.979504, 35.948315, 31.621948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930996, 37.382698, 31.392448>,  <33.879288, 36.640701, 31.598352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930996, 37.382698, 31.392448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280960, 37.273624, 31.232363>,  <34.490940, 37.208179, 31.136311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280960, 37.273624, 31.232363>,  <33.930996, 37.382698, 31.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280960, 37.273624, 31.232363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481435, 0.579254, 0.657788,
		0.052455, -0.768183, 0.638078,
		0.874911, -0.272688, -0.400215,
		34.543434, 37.191818, 31.112299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420425, 37.572319, 31.939764>,  <33.930996, 37.382698, 31.392448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420425, 37.572319, 31.939764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626598, 37.506443, 31.603382>,  <34.750301, 37.466919, 31.401552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626598, 37.506443, 31.603382>,  <34.420425, 37.572319, 31.939764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626598, 37.506443, 31.603382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752062, 0.557349, 0.351801,
		0.410767, -0.813781, 0.411135,
		0.515435, -0.164691, -0.840954,
		34.781227, 37.457035, 31.351095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071957, 37.210186, 32.046490>,  <34.420425, 37.572319, 31.939764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071957, 37.210186, 32.046490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134762, 37.410732, 31.706142>,  <35.172443, 37.531059, 31.501934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134762, 37.410732, 31.706142>,  <35.071957, 37.210186, 32.046490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134762, 37.410732, 31.706142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840779, 0.384126, 0.381493,
		0.518109, -0.775292, -0.361227,
		0.157012, 0.501367, -0.850869,
		35.181866, 37.561142, 31.450882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699051, 36.957577, 31.786427>,  <35.071957, 37.210186, 32.046490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699051, 36.957577, 31.786427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569820, 37.330002, 31.718615>,  <35.492283, 37.553455, 31.677927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569820, 37.330002, 31.718615>,  <35.699051, 36.957577, 31.786427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569820, 37.330002, 31.718615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824728, 0.364856, 0.432091,
		0.464159, -0.000218, -0.885752,
		-0.323077, 0.931064, -0.169531,
		35.472897, 37.609322, 31.667755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251312, 37.436695, 31.409260>,  <35.699051, 36.957577, 31.786427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251312, 37.436695, 31.409260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012486, 37.596214, 31.687675>,  <35.869190, 37.691925, 31.854725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012486, 37.596214, 31.687675>,  <36.251312, 37.436695, 31.409260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012486, 37.596214, 31.687675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798159, 0.382198, 0.465689,
		-0.080310, 0.833599, -0.546501,
		-0.597070, 0.398795, 0.696039,
		35.833366, 37.715855, 31.896486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305363, 38.076004, 31.414566>,  <36.251312, 37.436695, 31.409260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305363, 38.076004, 31.414566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200806, 37.989498, 31.790844>,  <36.138073, 37.937595, 32.016609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200806, 37.989498, 31.790844>,  <36.305363, 38.076004, 31.414566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200806, 37.989498, 31.790844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820726, 0.463141, 0.334530,
		-0.508019, 0.859495, 0.056429,
		-0.261392, -0.216261, 0.940694,
		36.122387, 37.924622, 32.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612949, 38.583542, 31.823889>,  <36.305363, 38.076004, 31.414566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612949, 38.583542, 31.823889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517380, 38.289516, 32.077690>,  <36.460037, 38.113102, 32.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517380, 38.289516, 32.077690>,  <36.612949, 38.583542, 31.823889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517380, 38.289516, 32.077690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875920, 0.118895, 0.467576,
		-0.419138, 0.667490, 0.615451,
		-0.238928, -0.735065, 0.634502,
		36.445702, 38.068996, 32.268040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624981, 38.830910, 32.547390>,  <36.612949, 38.583542, 31.823889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624981, 38.830910, 32.547390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687794, 38.435875, 32.545551>,  <36.725479, 38.198856, 32.544449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687794, 38.435875, 32.545551>,  <36.624981, 38.830910, 32.547390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687794, 38.435875, 32.545551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860844, 0.134594, 0.490747,
		-0.484035, -0.081018, 0.871290,
		0.157030, -0.987583, -0.004596,
		36.734901, 38.139599, 32.544174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858906, 38.732372, 33.291187>,  <36.624981, 38.830910, 32.547390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858906, 38.732372, 33.291187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933109, 38.423416, 33.048203>,  <36.977631, 38.238045, 32.902412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933109, 38.423416, 33.048203>,  <36.858906, 38.732372, 33.291187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933109, 38.423416, 33.048203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929262, -0.063083, 0.363995,
		-0.319465, -0.632013, 0.706046,
		0.185510, -0.772386, -0.607458,
		36.988762, 38.191700, 32.865967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250263, 38.311081, 33.620060>,  <36.858906, 38.732372, 33.291187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250263, 38.311081, 33.620060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311054, 38.190365, 33.243587>,  <37.347527, 38.117935, 33.017704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311054, 38.190365, 33.243587>,  <37.250263, 38.311081, 33.620060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311054, 38.190365, 33.243587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950286, -0.217219, 0.223098,
		-0.271772, -0.928298, 0.253779,
		0.151976, -0.301795, -0.941182,
		37.356647, 38.099827, 32.961231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640148, 37.726967, 33.717598>,  <37.250263, 38.311081, 33.620060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640148, 37.726967, 33.717598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707169, 37.820328, 33.334465>,  <37.747379, 37.876343, 33.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707169, 37.820328, 33.334465>,  <37.640148, 37.726967, 33.717598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707169, 37.820328, 33.334465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976849, -0.170391, 0.129354,
		-0.133016, -0.957335, -0.256548,
		0.167548, 0.233403, -0.957837,
		37.757435, 37.890350, 33.047115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241394, 37.267529, 33.741875>,  <37.640148, 37.726967, 33.717598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241394, 37.267529, 33.741875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214363, 37.483379, 33.406200>,  <38.198143, 37.612892, 33.204796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214363, 37.483379, 33.406200>,  <38.241394, 37.267529, 33.741875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214363, 37.483379, 33.406200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997073, 0.006369, -0.076197,
		-0.035774, -0.841878, -0.538481,
		-0.067578, 0.539630, -0.839186,
		38.194088, 37.645267, 33.154446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657532, 36.900330, 33.201702>,  <38.241394, 37.267529, 33.741875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657532, 36.900330, 33.201702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631260, 37.297756, 33.164799>,  <38.615498, 37.536213, 33.142658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631260, 37.297756, 33.164799>,  <38.657532, 36.900330, 33.201702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631260, 37.297756, 33.164799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996558, 0.060627, -0.056540,
		-0.050584, -0.095651, -0.994129,
		-0.065680, 0.993567, -0.092255,
		38.611557, 37.595825, 33.137123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043739, 37.236423, 32.557529>,  <38.657532, 36.900330, 33.201702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043739, 37.236423, 32.557529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007008, 37.465748, 32.883198>,  <38.984966, 37.603344, 33.078598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007008, 37.465748, 32.883198>,  <39.043739, 37.236423, 32.557529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007008, 37.465748, 32.883198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990010, 0.140415, 0.012791,
		-0.106989, 0.807214, -0.580481,
		-0.091833, 0.573314, 0.814173,
		38.979458, 37.637741, 33.127449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446751, 37.883556, 32.466362>,  <39.043739, 37.236423, 32.557529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446751, 37.883556, 32.466362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433445, 37.762760, 32.847454>,  <39.425461, 37.690281, 33.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433445, 37.762760, 32.847454>,  <39.446751, 37.883556, 32.466362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433445, 37.762760, 32.847454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944857, 0.301232, 0.128468,
		-0.325789, 0.904467, 0.275318,
		-0.033261, -0.301990, 0.952731,
		39.423466, 37.672165, 33.133274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781456, 38.511810, 32.837383>,  <39.446751, 37.883556, 32.466362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781456, 38.511810, 32.837383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825077, 38.171772, 33.043468>,  <39.851250, 37.967751, 33.167118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825077, 38.171772, 33.043468>,  <39.781456, 38.511810, 32.837383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825077, 38.171772, 33.043468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978689, 0.182545, 0.094051,
		-0.174002, 0.493977, 0.851886,
		0.109049, -0.850096, 0.515213,
		39.857792, 37.916744, 33.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355888, 38.614517, 33.374557>,  <39.781456, 38.511810, 32.837383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355888, 38.614517, 33.374557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301414, 38.239342, 33.246979>,  <40.268730, 38.014236, 33.170433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301414, 38.239342, 33.246979>,  <40.355888, 38.614517, 33.374557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301414, 38.239342, 33.246979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988327, -0.106435, -0.109004,
		0.068293, -0.330065, 0.941485,
		-0.136185, -0.937938, -0.318944,
		40.260559, 37.957962, 33.151295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850025, 38.203423, 33.669533>,  <40.355888, 38.614517, 33.374557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850025, 38.203423, 33.669533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790974, 38.023033, 33.317436>,  <40.755543, 37.914799, 33.106178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790974, 38.023033, 33.317436>,  <40.850025, 38.203423, 33.669533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790974, 38.023033, 33.317436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986140, 0.001020, -0.165912,
		0.075719, -0.892538, 0.444570,
		-0.147629, -0.450971, -0.880245,
		40.746685, 37.887741, 33.053364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360107, 37.676617, 33.522659>,  <40.850025, 38.203423, 33.669533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360107, 37.676617, 33.522659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214436, 37.791664, 33.168339>,  <41.127033, 37.860691, 32.955746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214436, 37.791664, 33.168339>,  <41.360107, 37.676617, 33.522659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214436, 37.791664, 33.168339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867572, -0.241093, -0.434963,
		-0.338665, -0.926903, -0.161729,
		-0.364177, 0.287618, -0.885806,
		41.105183, 37.877949, 32.902596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687206, 37.824295, 34.169666>,  <41.360107, 37.676617, 33.522659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687206, 37.824295, 34.169666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691326, 38.220299, 34.225918>,  <41.693798, 38.457901, 34.259666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691326, 38.220299, 34.225918>,  <41.687206, 37.824295, 34.169666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691326, 38.220299, 34.225918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772568, -0.097162, 0.627454,
		0.634849, 0.102182, -0.765850,
		0.010297, 0.990009, 0.140626,
		41.694416, 38.517303, 34.268105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366825, 38.049953, 34.202915>,  <41.687206, 37.824295, 34.169666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366825, 38.049953, 34.202915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200428, 38.389324, 34.333839>,  <42.100590, 38.592945, 34.412392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200428, 38.389324, 34.333839>,  <42.366825, 38.049953, 34.202915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200428, 38.389324, 34.333839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791489, 0.160575, 0.589713,
		0.447769, 0.504375, -0.738315,
		-0.415991, 0.848423, 0.327307,
		42.075630, 38.643852, 34.432030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817329, 38.648411, 33.998291>,  <42.366825, 38.049953, 34.202915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817329, 38.648411, 33.998291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616447, 38.684544, 34.342300>,  <42.495918, 38.706223, 34.548706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616447, 38.684544, 34.342300>,  <42.817329, 38.648411, 33.998291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616447, 38.684544, 34.342300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860853, 0.146548, 0.487295,
		-0.082016, 0.985071, -0.151359,
		-0.502201, 0.090332, 0.860020,
		42.465786, 38.711643, 34.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151852, 39.075497, 33.690315>,  <42.817329, 38.648411, 33.998291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151852, 39.075497, 33.690315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402592, 39.001049, 33.387684>,  <42.553036, 38.956379, 33.206104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402592, 39.001049, 33.387684>,  <42.151852, 39.075497, 33.690315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402592, 39.001049, 33.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197636, -0.901307, 0.385468,
		-0.753655, -0.391160, -0.528203,
		0.626853, -0.186118, -0.756581,
		42.590649, 38.945213, 33.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959068, 38.503338, 33.175163>,  <42.151852, 39.075497, 33.690315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959068, 38.503338, 33.175163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356441, 38.539982, 33.202579>,  <42.594864, 38.561970, 33.219028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356441, 38.539982, 33.202579>,  <41.959068, 38.503338, 33.175163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356441, 38.539982, 33.202579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074484, -0.972576, 0.220334,
		0.086843, -0.213783, -0.973013,
		0.993434, 0.091609, 0.068539,
		42.654472, 38.567463, 33.223141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325294, 37.855652, 32.927200>,  <41.959068, 38.503338, 33.175163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325294, 37.855652, 32.927200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597534, 38.046452, 33.149647>,  <42.760880, 38.160931, 33.283115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597534, 38.046452, 33.149647>,  <42.325294, 37.855652, 32.927200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597534, 38.046452, 33.149647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293939, -0.873042, 0.389098,
		0.671108, -0.101357, -0.734399,
		0.680599, 0.476995, 0.556113,
		42.801712, 38.189548, 33.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101727, 37.690483, 32.953251>,  <42.325294, 37.855652, 32.927200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101727, 37.690483, 32.953251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977486, 37.759590, 33.327133>,  <42.902943, 37.801052, 33.551464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977486, 37.759590, 33.327133>,  <43.101727, 37.690483, 32.953251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977486, 37.759590, 33.327133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027362, -0.984562, 0.172886,
		0.950147, 0.028123, 0.310531,
		-0.310599, 0.172764, 0.934709,
		42.884304, 37.811420, 33.607548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558640, 37.555008, 33.415867>,  <43.101727, 37.690483, 32.953251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558640, 37.555008, 33.415867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201706, 37.485325, 33.582424>,  <42.987545, 37.443516, 33.682358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201706, 37.485325, 33.582424>,  <43.558640, 37.555008, 33.415867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201706, 37.485325, 33.582424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211199, -0.976448, 0.044081,
		0.398911, 0.127278, 0.908114,
		-0.892337, -0.174208, 0.416397,
		42.934006, 37.433064, 33.707344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675682, 37.003025, 33.706268>,  <43.558640, 37.555008, 33.415867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675682, 37.003025, 33.706268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911934, 37.325577, 33.718307>,  <44.053684, 37.519108, 33.725529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911934, 37.325577, 33.718307>,  <43.675682, 37.003025, 33.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911934, 37.325577, 33.718307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692808, -0.525864, 0.493440,
		0.413725, -0.270593, -0.869259,
		0.590634, 0.806378, 0.030094,
		44.089123, 37.567490, 33.727337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420387, 36.872280, 33.465969>,  <43.675682, 37.003025, 33.706268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420387, 36.872280, 33.465969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428532, 37.166767, 33.736546>,  <44.433418, 37.343460, 33.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428532, 37.166767, 33.736546>,  <44.420387, 36.872280, 33.465969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428532, 37.166767, 33.736546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682245, -0.504807, 0.528878,
		0.730840, 0.450731, -0.512557,
		0.020361, 0.736215, 0.676442,
		44.434639, 37.387630, 33.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561401, 36.507404, 34.055672>,  <44.420387, 36.872280, 33.465969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561401, 36.507404, 34.055672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814693, 36.816433, 34.037113>,  <44.966667, 37.001850, 34.025978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814693, 36.816433, 34.037113>,  <44.561401, 36.507404, 34.055672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814693, 36.816433, 34.037113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619632, -0.470123, 0.628522,
		0.463767, -0.426747, -0.776406,
		0.633227, 0.772574, -0.046398,
		45.004662, 37.048206, 34.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240509, 36.202358, 33.950451>,  <44.561401, 36.507404, 34.055672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240509, 36.202358, 33.950451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299118, 36.574711, 34.084312>,  <45.334282, 36.798122, 34.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299118, 36.574711, 34.084312>,  <45.240509, 36.202358, 33.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299118, 36.574711, 34.084312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780306, -0.316695, 0.539284,
		0.607993, 0.182118, -0.772773,
		0.146520, 0.930880, 0.334657,
		45.343075, 36.853973, 34.184708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918533, 36.557770, 33.692879>,  <45.240509, 36.202358, 33.950451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918533, 36.557770, 33.692879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776505, 36.642693, 34.057045>,  <45.691288, 36.693645, 34.275543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776505, 36.642693, 34.057045>,  <45.918533, 36.557770, 33.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776505, 36.642693, 34.057045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796685, -0.440797, 0.413511,
		0.489099, 0.872137, -0.012629,
		-0.355072, 0.212309, 0.910411,
		45.669983, 36.706387, 34.330170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.509949, 36.755219, 34.125221>,  <45.918533, 36.557770, 33.692879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.509949, 36.755219, 34.125221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228722, 36.610455, 34.370075>,  <46.059986, 36.523594, 34.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228722, 36.610455, 34.370075>,  <46.509949, 36.755219, 34.125221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228722, 36.610455, 34.370075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695417, -0.529810, 0.485486,
		0.148613, 0.767021, 0.624174,
		-0.703071, -0.361912, 0.612136,
		46.017799, 36.501881, 34.553715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782085, 36.900074, 34.842842>,  <46.509949, 36.755219, 34.125221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782085, 36.900074, 34.842842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529377, 36.591045, 34.817562>,  <46.377750, 36.405628, 34.802395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529377, 36.591045, 34.817562>,  <46.782085, 36.900074, 34.842842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529377, 36.591045, 34.817562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682748, -0.593208, 0.426567,
		-0.367045, 0.226343, 0.902245,
		-0.631770, -0.772575, -0.063198,
		46.339848, 36.359272, 34.798603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.745426, 36.543453, 35.478371>,  <46.782085, 36.900074, 34.842842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.745426, 36.543453, 35.478371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668213, 36.271786, 35.195114>,  <46.621883, 36.108784, 35.025162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668213, 36.271786, 35.195114>,  <46.745426, 36.543453, 35.478371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668213, 36.271786, 35.195114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552855, -0.671528, 0.493356,
		-0.810610, -0.296265, 0.505112,
		-0.193033, -0.679173, -0.708140,
		46.610302, 36.068035, 34.982674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.717369, 35.889191, 35.891762>,  <46.745426, 36.543453, 35.478371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.717369, 35.889191, 35.891762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801651, 35.844578, 35.503296>,  <46.852222, 35.817810, 35.270218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.801651, 35.844578, 35.503296>,  <46.717369, 35.889191, 35.891762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.801651, 35.844578, 35.503296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730592, -0.642101, 0.232252,
		-0.649490, -0.758464, -0.053814,
		0.210708, -0.111529, -0.971166,
		46.864864, 35.811119, 35.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700657, 35.194450, 35.668678>,  <46.717369, 35.889191, 35.891762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700657, 35.194450, 35.668678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962772, 35.418610, 35.466080>,  <47.120041, 35.553104, 35.344521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962772, 35.418610, 35.466080>,  <46.700657, 35.194450, 35.668678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962772, 35.418610, 35.466080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725242, -0.654255, 0.214416,
		-0.211221, -0.507841, -0.835155,
		0.655293, 0.560400, -0.506500,
		47.159359, 35.586731, 35.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086483, 34.765541, 35.001072>,  <46.700657, 35.194450, 35.668678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086483, 34.765541, 35.001072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278709, 35.056995, 35.196274>,  <47.394047, 35.231869, 35.313396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278709, 35.056995, 35.196274>,  <47.086483, 34.765541, 35.001072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278709, 35.056995, 35.196274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761036, -0.623013, 0.180774,
		0.435751, 0.284515, -0.853916,
		0.480567, 0.728633, 0.488005,
		47.422878, 35.275585, 35.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.789135, 34.689659, 34.729137>,  <47.086483, 34.765541, 35.001072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.789135, 34.689659, 34.729137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780201, 34.845943, 35.097237>,  <47.774841, 34.939713, 35.318096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780201, 34.845943, 35.097237>,  <47.789135, 34.689659, 34.729137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780201, 34.845943, 35.097237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889786, -0.411915, 0.196483,
		0.455830, 0.823209, -0.338447,
		-0.022335, 0.390708, 0.920244,
		47.773499, 34.963158, 35.373310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<43.248863, 31.280394, 25.040979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.952332, 31.092115, 24.849613>,  <42.774414, 30.979149, 24.734793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.952332, 31.092115, 24.849613>,  <43.248863, 31.280394, 25.040979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952332, 31.092115, 24.849613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641159, 0.285986, 0.712129,
		-0.198375, 0.834660, -0.513799,
		-0.741325, -0.470696, -0.478417,
		42.729935, 30.950907, 24.706087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589733, 31.713049, 24.934166>,  <43.248863, 31.280394, 25.040979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589733, 31.713049, 24.934166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.433971, 31.347992, 24.884445>,  <42.340515, 31.128958, 24.854612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.433971, 31.347992, 24.884445>,  <42.589733, 31.713049, 24.934166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433971, 31.347992, 24.884445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745670, 0.233142, 0.624196,
		-0.540689, 0.335749, -0.771316,
		-0.389400, -0.912643, -0.124301,
		42.317150, 31.074200, 24.847155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811825, 31.865864, 24.732086>,  <42.589733, 31.713049, 24.934166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811825, 31.865864, 24.732086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865711, 31.500578, 24.885914>,  <41.898041, 31.281406, 24.978210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.865711, 31.500578, 24.885914>,  <41.811825, 31.865864, 24.732086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865711, 31.500578, 24.885914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788872, 0.136012, 0.599317,
		-0.599611, -0.384110, -0.702087,
		0.134711, -0.913214, 0.384568,
		41.906124, 31.226614, 25.001284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185688, 31.600889, 24.755230>,  <41.811825, 31.865864, 24.732086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185688, 31.600889, 24.755230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384140, 31.386244, 25.028257>,  <41.503212, 31.257458, 25.192074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.384140, 31.386244, 25.028257>,  <41.185688, 31.600889, 24.755230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384140, 31.386244, 25.028257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770443, 0.090389, 0.631069,
		-0.400336, -0.838974, -0.368584,
		0.496134, -0.536613, 0.682567,
		41.532982, 31.225260, 25.233028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690586, 31.114206, 25.012154>,  <41.185688, 31.600889, 24.755230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690586, 31.114206, 25.012154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985722, 31.127977, 25.281792>,  <41.162804, 31.136240, 25.443575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.985722, 31.127977, 25.281792>,  <40.690586, 31.114206, 25.012154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985722, 31.127977, 25.281792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674957, 0.030587, 0.737223,
		0.004748, -0.998940, 0.045792,
		0.737842, 0.034408, 0.674096,
		41.207073, 31.138306, 25.484020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486519, 30.676662, 25.460724>,  <40.690586, 31.114206, 25.012154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486519, 30.676662, 25.460724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.750389, 30.886402, 25.676088>,  <40.908710, 31.012247, 25.805307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.750389, 30.886402, 25.676088>,  <40.486519, 30.676662, 25.460724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750389, 30.886402, 25.676088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692988, 0.147125, 0.705778,
		0.290863, -0.838694, 0.460424,
		0.659672, 0.524353, 0.538412,
		40.948292, 31.043707, 25.837612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754684, 30.308542, 26.035170>,  <40.486519, 30.676662, 25.460724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754684, 30.308542, 26.035170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.779297, 30.695312, 26.134178>,  <40.794064, 30.927376, 26.193583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.779297, 30.695312, 26.134178>,  <40.754684, 30.308542, 26.035170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779297, 30.695312, 26.134178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610828, -0.159649, 0.775501,
		0.789369, -0.198908, 0.580803,
		0.061528, 0.966927, 0.247521,
		40.797756, 30.985390, 26.208435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697765, 30.282473, 26.873398>,  <40.754684, 30.308542, 26.035170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697765, 30.282473, 26.873398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639568, 30.665007, 26.772001>,  <40.604652, 30.894527, 26.711164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.639568, 30.665007, 26.772001>,  <40.697765, 30.282473, 26.873398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639568, 30.665007, 26.772001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626000, 0.109424, 0.772107,
		0.766131, 0.271018, 0.582746,
		-0.145489, 0.956334, -0.253490,
		40.595921, 30.951906, 26.695953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807266, 30.768475, 27.513416>,  <40.697765, 30.282473, 26.873398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807266, 30.768475, 27.513416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575047, 30.967180, 27.255365>,  <40.435715, 31.086403, 27.100534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575047, 30.967180, 27.255365>,  <40.807266, 30.768475, 27.513416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575047, 30.967180, 27.255365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649739, 0.194873, 0.734754,
		0.490716, 0.845726, 0.209632,
		-0.580548, 0.496762, -0.645129,
		40.400883, 31.116209, 27.061827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791409, 31.476692, 27.758680>,  <40.807266, 30.768475, 27.513416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791409, 31.476692, 27.758680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466278, 31.438879, 27.528765>,  <40.271202, 31.416191, 27.390816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.466278, 31.438879, 27.528765>,  <40.791409, 31.476692, 27.758680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466278, 31.438879, 27.528765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573305, 0.304556, 0.760636,
		0.103151, 0.947792, -0.301746,
		-0.812823, -0.094532, -0.574789,
		40.222431, 31.410519, 27.356329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404591, 32.146561, 27.755810>,  <40.791409, 31.476692, 27.758680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404591, 32.146561, 27.755810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122459, 31.893166, 27.628557>,  <39.953178, 31.741129, 27.552206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122459, 31.893166, 27.628557>,  <40.404591, 32.146561, 27.755810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122459, 31.893166, 27.628557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625098, 0.344176, 0.700568,
		-0.334306, 0.692995, -0.638747,
		-0.705331, -0.633484, -0.318129,
		39.910858, 31.703121, 27.533119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838440, 32.603905, 27.479321>,  <40.404591, 32.146561, 27.755810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838440, 32.603905, 27.479321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674698, 32.243687, 27.537903>,  <39.576454, 32.027557, 27.573051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.674698, 32.243687, 27.537903>,  <39.838440, 32.603905, 27.479321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674698, 32.243687, 27.537903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667391, 0.405005, 0.624949,
		-0.622109, 0.158082, -0.766805,
		-0.409353, -0.900545, 0.146455,
		39.551891, 31.973524, 27.581839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102451, 32.657486, 27.369816>,  <39.838440, 32.603905, 27.479321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102451, 32.657486, 27.369816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132793, 32.330105, 27.597631>,  <39.150997, 32.133675, 27.734322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132793, 32.330105, 27.597631>,  <39.102451, 32.657486, 27.369816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132793, 32.330105, 27.597631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754090, 0.326615, 0.569798,
		-0.652375, -0.472706, -0.592415,
		0.075855, -0.818457, 0.569538,
		39.155548, 32.084568, 27.768494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401249, 32.495689, 27.586613>,  <39.102451, 32.657486, 27.369816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401249, 32.495689, 27.586613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633286, 32.287212, 27.837006>,  <38.772507, 32.162128, 27.987242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633286, 32.287212, 27.837006>,  <38.401249, 32.495689, 27.586613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633286, 32.287212, 27.837006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602411, 0.242767, 0.760372,
		-0.548266, -0.818184, -0.173143,
		0.580091, -0.521190, 0.625984,
		38.807312, 32.130856, 28.024801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932449, 32.027676, 27.983263>,  <38.401249, 32.495689, 27.586613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932449, 32.027676, 27.983263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262703, 32.065804, 28.205700>,  <38.460857, 32.088680, 28.339163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.262703, 32.065804, 28.205700>,  <37.932449, 32.027676, 27.983263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262703, 32.065804, 28.205700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561741, 0.230830, 0.794459,
		-0.052637, -0.968314, 0.244126,
		0.825637, 0.095318, 0.556092,
		38.510395, 32.094398, 28.372528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896843, 31.663784, 28.607317>,  <37.932449, 32.027676, 27.983263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896843, 31.663784, 28.607317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165253, 31.948587, 28.690037>,  <38.326298, 32.119469, 28.739668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.165253, 31.948587, 28.690037>,  <37.896843, 31.663784, 28.607317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165253, 31.948587, 28.690037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603959, 0.363132, 0.709485,
		0.430066, -0.600980, 0.673696,
		0.671027, 0.712010, 0.206797,
		38.366562, 32.162189, 28.752077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894520, 31.591013, 29.393019>,  <37.896843, 31.663784, 28.607317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894520, 31.591013, 29.393019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066372, 31.933941, 29.279579>,  <38.169483, 32.139698, 29.211515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066372, 31.933941, 29.279579>,  <37.894520, 31.591013, 29.393019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066372, 31.933941, 29.279579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556271, 0.498662, 0.664754,
		0.711326, -0.127837, 0.691139,
		0.429625, 0.857318, -0.283599,
		38.195259, 32.191135, 29.194500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158230, 31.883898, 30.026096>,  <37.894520, 31.591013, 29.393019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158230, 31.883898, 30.026096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137463, 32.195736, 29.776443>,  <38.125004, 32.382839, 29.626652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137463, 32.195736, 29.776443>,  <38.158230, 31.883898, 30.026096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137463, 32.195736, 29.776443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569333, 0.490357, 0.659856,
		0.820466, 0.389594, 0.418392,
		-0.051914, 0.779594, -0.624130,
		38.121887, 32.429615, 29.589205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486740, 32.554230, 30.337578>,  <38.158230, 31.883898, 30.026096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486740, 32.554230, 30.337578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281235, 32.701969, 30.027834>,  <38.157932, 32.790611, 29.841988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281235, 32.701969, 30.027834>,  <38.486740, 32.554230, 30.337578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281235, 32.701969, 30.027834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445125, 0.656844, 0.608622,
		0.733427, 0.657372, -0.173053,
		-0.513759, 0.369350, -0.774359,
		38.127106, 32.812775, 29.795527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494122, 33.292168, 30.371849>,  <38.486740, 32.554230, 30.337578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494122, 33.292168, 30.371849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168026, 33.221565, 30.151224>,  <37.972366, 33.179203, 30.018848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.168026, 33.221565, 30.151224>,  <38.494122, 33.292168, 30.371849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168026, 33.221565, 30.151224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497437, 0.701114, 0.510878,
		0.296537, 0.690858, -0.659379,
		-0.815244, -0.176506, -0.551565,
		37.923454, 33.168613, 29.985754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223690, 33.967785, 30.043980>,  <38.494122, 33.292168, 30.371849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223690, 33.967785, 30.043980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911095, 33.718250, 30.048059>,  <37.723537, 33.568531, 30.050507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911095, 33.718250, 30.048059>,  <38.223690, 33.967785, 30.043980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911095, 33.718250, 30.048059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527176, 0.668971, 0.523988,
		-0.333704, 0.404116, -0.851664,
		-0.781491, -0.623834, 0.010198,
		37.676647, 33.531101, 30.051119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680954, 34.415817, 29.940361>,  <38.223690, 33.967785, 30.043980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680954, 34.415817, 29.940361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522812, 34.084919, 30.100039>,  <37.427925, 33.886379, 30.195847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522812, 34.084919, 30.100039>,  <37.680954, 34.415817, 29.940361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522812, 34.084919, 30.100039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559132, 0.561553, 0.609942,
		-0.728742, 0.017941, -0.684553,
		-0.395356, -0.827246, 0.399196,
		37.404205, 33.836746, 30.219797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704124, 35.175159, 29.682701>,  <37.680954, 34.415817, 29.940361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704124, 35.175159, 29.682701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908268, 35.495346, 29.808422>,  <38.030754, 35.687458, 29.883856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908268, 35.495346, 29.808422>,  <37.704124, 35.175159, 29.682701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908268, 35.495346, 29.808422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611714, -0.081026, -0.786919,
		-0.604437, 0.593872, -0.531010,
		0.510355, 0.800469, 0.314305,
		38.061375, 35.735485, 29.902714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689831, 35.684174, 29.128141>,  <37.704124, 35.175159, 29.682701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689831, 35.684174, 29.128141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996952, 35.717751, 29.382208>,  <38.181225, 35.737896, 29.534649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996952, 35.717751, 29.382208>,  <37.689831, 35.684174, 29.128141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996952, 35.717751, 29.382208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639063, -0.029727, -0.768580,
		-0.045635, 0.996027, -0.076469,
		0.767800, 0.083943, 0.635167,
		38.227291, 35.742935, 29.572758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247349, 35.959709, 28.629204>,  <37.689831, 35.684174, 29.128141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247349, 35.959709, 28.629204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461899, 35.904007, 28.962170>,  <38.590630, 35.870586, 29.161949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.461899, 35.904007, 28.962170>,  <38.247349, 35.959709, 28.629204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461899, 35.904007, 28.962170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805670, -0.209311, -0.554153,
		0.251400, 0.967883, -0.000078,
		0.536371, -0.139251, 0.832415,
		38.622810, 35.862232, 29.211895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974926, 36.233631, 28.392162>,  <38.247349, 35.959709, 28.629204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974926, 36.233631, 28.392162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991093, 36.003479, 28.718918>,  <39.000793, 35.865387, 28.914970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991093, 36.003479, 28.718918>,  <38.974926, 36.233631, 28.392162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991093, 36.003479, 28.718918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816542, -0.452170, -0.358889,
		0.575870, 0.681527, 0.451547,
		0.040416, -0.575381, 0.816887,
		39.003216, 35.830864, 28.963984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660049, 36.265205, 28.565739>,  <38.974926, 36.233631, 28.392162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660049, 36.265205, 28.565739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539886, 35.933521, 28.754276>,  <39.467789, 35.734512, 28.867399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539886, 35.933521, 28.754276>,  <39.660049, 36.265205, 28.565739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539886, 35.933521, 28.754276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853617, -0.454209, -0.255013,
		0.425547, 0.325737, 0.844278,
		-0.300411, -0.829210, 0.471342,
		39.449764, 35.684757, 28.895679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185764, 35.960003, 29.098770>,  <39.660049, 36.265205, 28.565739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185764, 35.960003, 29.098770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966320, 35.641087, 28.998085>,  <39.834652, 35.449738, 28.937674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966320, 35.641087, 28.998085>,  <40.185764, 35.960003, 29.098770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966320, 35.641087, 28.998085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832271, -0.492089, -0.255288,
		0.079674, -0.349546, 0.933525,
		-0.548613, -0.797287, -0.251710,
		39.801735, 35.401901, 28.922571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568665, 35.367931, 29.281021>,  <40.185764, 35.960003, 29.098770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568665, 35.367931, 29.281021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297993, 35.229202, 29.021231>,  <40.135590, 35.145966, 28.865356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.297993, 35.229202, 29.021231>,  <40.568665, 35.367931, 29.281021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297993, 35.229202, 29.021231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667843, -0.660502, -0.343109,
		-0.309982, -0.665923, 0.678570,
		-0.676681, -0.346820, -0.649476,
		40.094990, 35.125156, 28.826387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757229, 34.663239, 29.235632>,  <40.568665, 35.367931, 29.281021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757229, 34.663239, 29.235632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483868, 34.724369, 28.950085>,  <40.319851, 34.761047, 28.778757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483868, 34.724369, 28.950085>,  <40.757229, 34.663239, 29.235632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483868, 34.724369, 28.950085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494217, -0.622850, -0.606470,
		-0.537318, -0.767268, 0.350127,
		-0.683402, 0.152829, -0.713866,
		40.278847, 34.770218, 28.735924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821480, 34.001190, 28.868849>,  <40.757229, 34.663239, 29.235632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821480, 34.001190, 28.868849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669334, 34.303482, 28.655611>,  <40.578049, 34.484859, 28.527668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669334, 34.303482, 28.655611>,  <40.821480, 34.001190, 28.868849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669334, 34.303482, 28.655611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433221, -0.363676, -0.824657,
		-0.817096, -0.544616, -0.189072,
		-0.380361, 0.755734, -0.533097,
		40.555225, 34.530201, 28.495682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407997, 33.732651, 28.227526>,  <40.821480, 34.001190, 28.868849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407997, 33.732651, 28.227526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508427, 34.104630, 28.120070>,  <40.568684, 34.327816, 28.055595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.508427, 34.104630, 28.120070>,  <40.407997, 33.732651, 28.227526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508427, 34.104630, 28.120070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344013, -0.345139, -0.873232,
		-0.904774, 0.126832, -0.406568,
		0.251077, 0.929943, -0.268640,
		40.583748, 34.383614, 28.039478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091564, 33.889805, 27.568909>,  <40.407997, 33.732651, 28.227526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091564, 33.889805, 27.568909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419010, 34.118912, 27.585876>,  <40.615479, 34.256378, 27.596058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419010, 34.118912, 27.585876>,  <40.091564, 33.889805, 27.568909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419010, 34.118912, 27.585876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282405, -0.337106, -0.898113,
		-0.500112, 0.747191, -0.437714,
		0.818618, 0.572769, 0.042420,
		40.664597, 34.290741, 27.598602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161510, 34.073990, 26.892252>,  <40.091564, 33.889805, 27.568909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161510, 34.073990, 26.892252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514946, 34.215496, 27.014965>,  <40.727009, 34.300400, 27.088593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514946, 34.215496, 27.014965>,  <40.161510, 34.073990, 26.892252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514946, 34.215496, 27.014965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394847, -0.210708, -0.894258,
		-0.251714, 0.911292, -0.325863,
		0.883592, 0.353764, 0.306783,
		40.780025, 34.321625, 27.107000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379623, 34.482708, 26.399925>,  <40.161510, 34.073990, 26.892252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379623, 34.482708, 26.399925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.723637, 34.389801, 26.581646>,  <40.930046, 34.334057, 26.690678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.723637, 34.389801, 26.581646>,  <40.379623, 34.482708, 26.399925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723637, 34.389801, 26.581646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423493, -0.171672, -0.889484,
		0.284589, 0.957382, -0.049280,
		0.860036, -0.232267, 0.454301,
		40.981647, 34.320122, 26.717936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892036, 34.856529, 26.079426>,  <40.379623, 34.482708, 26.399925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892036, 34.856529, 26.079426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.089745, 34.557339, 26.256618>,  <41.208370, 34.377827, 26.362934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.089745, 34.557339, 26.256618>,  <40.892036, 34.856529, 26.079426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089745, 34.557339, 26.256618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618748, -0.055235, -0.783645,
		0.610614, 0.661427, 0.435505,
		0.494269, -0.747973, 0.442984,
		41.238026, 34.332947, 26.389513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554924, 34.982662, 25.894215>,  <40.892036, 34.856529, 26.079426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554924, 34.982662, 25.894215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.575283, 34.607483, 26.031422>,  <41.587498, 34.382374, 26.113747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.575283, 34.607483, 26.031422>,  <41.554924, 34.982662, 25.894215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575283, 34.607483, 26.031422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682513, -0.218077, -0.697580,
		0.729099, 0.269618, 0.629063,
		0.050896, -0.937949, 0.343018,
		41.590553, 34.326099, 26.134327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219620, 34.915783, 25.981989>,  <41.554924, 34.982662, 25.894215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219620, 34.915783, 25.981989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.074482, 34.543987, 25.955460>,  <41.987400, 34.320911, 25.939543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.074482, 34.543987, 25.955460>,  <42.219620, 34.915783, 25.981989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074482, 34.543987, 25.955460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609864, -0.183056, -0.771075,
		0.704562, -0.320230, 0.633281,
		-0.362847, -0.929486, -0.066323,
		41.965630, 34.265141, 25.935562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798706, 34.460094, 25.966393>,  <42.219620, 34.915783, 25.981989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798706, 34.460094, 25.966393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.507378, 34.244286, 25.797411>,  <42.332581, 34.114799, 25.696022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.507378, 34.244286, 25.797411>,  <42.798706, 34.460094, 25.966393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507378, 34.244286, 25.797411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663712, -0.402108, -0.630710,
		0.170409, -0.739747, 0.650950,
		-0.728318, -0.539522, -0.422456,
		42.288883, 34.082428, 25.670673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019100, 33.790848, 25.961536>,  <42.798706, 34.460094, 25.966393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019100, 33.790848, 25.961536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.743893, 33.811474, 25.671995>,  <42.578766, 33.823849, 25.498270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.743893, 33.811474, 25.671995>,  <43.019100, 33.790848, 25.961536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743893, 33.811474, 25.671995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659222, -0.372618, -0.653133,
		-0.303397, -0.926551, 0.222380,
		-0.688024, 0.051561, -0.723854,
		42.537487, 33.826942, 25.454840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.175121, 33.178810, 25.636076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.951263, 33.386620, 25.377804>,  <42.816948, 33.511303, 25.222841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.951263, 33.386620, 25.377804>,  <43.175121, 33.178810, 25.636076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951263, 33.386620, 25.377804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556663, -0.341531, -0.757286,
		-0.613945, -0.783233, -0.098064,
		-0.559640, 0.519521, -0.645678,
		42.783371, 33.542477, 25.184101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916943, 32.648396, 25.198771>,  <43.175121, 33.178810, 25.636076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916943, 32.648396, 25.198771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932720, 33.016872, 25.043926>,  <42.942184, 33.237957, 24.951019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.932720, 33.016872, 25.043926>,  <42.916943, 32.648396, 25.198771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932720, 33.016872, 25.043926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526827, -0.348360, -0.775305,
		-0.849057, -0.173362, -0.499047,
		0.039439, 0.921190, -0.387110,
		42.944553, 33.293228, 24.927794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818203, 32.563007, 24.505878>,  <42.916943, 32.648396, 25.198771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818203, 32.563007, 24.505878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.973602, 32.931568, 24.502199>,  <43.066841, 33.152706, 24.499992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.973602, 32.931568, 24.502199>,  <42.818203, 32.563007, 24.505878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973602, 32.931568, 24.502199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532639, -0.232702, -0.813723,
		-0.751908, 0.311232, -0.581180,
		0.388498, 0.921404, -0.009196,
		43.090153, 33.207989, 24.499441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718689, 32.710361, 23.903343>,  <42.818203, 32.563007, 24.505878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718689, 32.710361, 23.903343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.006218, 32.951866, 24.041197>,  <43.178734, 33.096767, 24.123909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.006218, 32.951866, 24.041197>,  <42.718689, 32.710361, 23.903343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006218, 32.951866, 24.041197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556576, -0.202750, -0.805677,
		-0.416562, 0.770951, -0.481779,
		0.718818, 0.603761, 0.344636,
		43.221863, 33.132996, 24.144587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871498, 33.032726, 23.327515>,  <42.718689, 32.710361, 23.903343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871498, 33.032726, 23.327515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177834, 33.059055, 23.583376>,  <43.361633, 33.074852, 23.736893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177834, 33.059055, 23.583376>,  <42.871498, 33.032726, 23.327515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177834, 33.059055, 23.583376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607814, -0.398784, -0.686683,
		0.209888, 0.914680, -0.345410,
		0.765839, 0.065819, 0.639655,
		43.407585, 33.078800, 23.775272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304897, 33.490768, 22.984129>,  <42.871498, 33.032726, 23.327515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304897, 33.490768, 22.984129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524208, 33.291431, 23.252769>,  <43.655792, 33.171829, 23.413954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.524208, 33.291431, 23.252769>,  <43.304897, 33.490768, 22.984129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524208, 33.291431, 23.252769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583889, -0.346822, -0.734022,
		0.598723, 0.794585, 0.100826,
		0.548274, -0.498347, 0.671599,
		43.688690, 33.141926, 23.454248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984688, 33.680027, 22.735151>,  <43.304897, 33.490768, 22.984129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984688, 33.680027, 22.735151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.038715, 33.395287, 23.010839>,  <44.071133, 33.224442, 23.176252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.038715, 33.395287, 23.010839>,  <43.984688, 33.680027, 22.735151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038715, 33.395287, 23.010839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759537, -0.372307, -0.533377,
		0.636287, 0.595529, 0.490392,
		0.135065, -0.711851, 0.689220,
		44.079235, 33.181732, 23.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637524, 33.646347, 22.837133>,  <43.984688, 33.680027, 22.735151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637524, 33.646347, 22.837133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.521038, 33.279724, 22.946766>,  <44.451145, 33.059750, 23.012547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.521038, 33.279724, 22.946766>,  <44.637524, 33.646347, 22.837133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521038, 33.279724, 22.946766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670885, -0.399903, -0.624492,
		0.681988, 0.002017, 0.731361,
		-0.291214, -0.916555, 0.274082,
		44.433674, 33.004757, 23.028990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272461, 33.273346, 22.950560>,  <44.637524, 33.646347, 22.837133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272461, 33.273346, 22.950560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.980907, 33.010620, 22.873278>,  <44.805977, 32.852985, 22.826908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.980907, 33.010620, 22.873278>,  <45.272461, 33.273346, 22.950560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980907, 33.010620, 22.873278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538269, -0.375378, -0.754558,
		0.423078, -0.653980, 0.627148,
		-0.728884, -0.656811, -0.193203,
		44.762241, 32.813576, 22.815317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619785, 32.754585, 22.699043>,  <45.272461, 33.273346, 22.950560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619785, 32.754585, 22.699043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.242180, 32.677898, 22.591644>,  <45.015617, 32.631886, 22.527205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.242180, 32.677898, 22.591644>,  <45.619785, 32.754585, 22.699043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242180, 32.677898, 22.591644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322974, -0.370936, -0.870686,
		0.067330, -0.908654, 0.412087,
		-0.944009, -0.191717, -0.268496,
		44.958977, 32.620384, 22.511095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651100, 31.934742, 22.547598>,  <45.619785, 32.754585, 22.699043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651100, 31.934742, 22.547598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.360214, 32.148834, 22.375698>,  <45.185680, 32.277290, 22.272558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.360214, 32.148834, 22.375698>,  <45.651100, 31.934742, 22.547598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360214, 32.148834, 22.375698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399661, -0.178848, -0.899046,
		-0.558056, -0.825556, -0.083849,
		-0.727217, 0.535230, -0.429750,
		45.142048, 32.309402, 22.246773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474449, 31.561739, 22.024933>,  <45.651100, 31.934742, 22.547598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474449, 31.561739, 22.024933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.375248, 31.932089, 21.910917>,  <45.315727, 32.154301, 21.842508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.375248, 31.932089, 21.910917>,  <45.474449, 31.561739, 22.024933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375248, 31.932089, 21.910917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372510, -0.180470, -0.910312,
		-0.894277, -0.331939, -0.300141,
		-0.248001, 0.925876, -0.285040,
		45.300846, 32.209850, 21.825405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403931, 31.462194, 21.372181>,  <45.474449, 31.561739, 22.024933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403931, 31.462194, 21.372181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.376705, 31.861246, 21.368126>,  <45.360371, 32.100677, 21.365692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.376705, 31.861246, 21.368126>,  <45.403931, 31.462194, 21.372181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376705, 31.861246, 21.368126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244563, 0.006833, -0.969609,
		-0.967241, -0.068479, -0.244448,
		-0.068068, 0.997629, -0.010139,
		45.356285, 32.160534, 21.365084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088589, 31.553297, 20.770353>,  <45.403931, 31.462194, 21.372181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088589, 31.553297, 20.770353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.324440, 31.862062, 20.865429>,  <45.465950, 32.047321, 20.922474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.324440, 31.862062, 20.865429>,  <45.088589, 31.553297, 20.770353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324440, 31.862062, 20.865429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372935, 0.000842, -0.927857,
		-0.716424, 0.635729, -0.287377,
		0.589624, 0.771912, 0.237689,
		45.501328, 32.093636, 20.936735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008942, 32.008251, 20.214474>,  <45.088589, 31.553297, 20.770353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008942, 32.008251, 20.214474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.355606, 32.123024, 20.377729>,  <45.563602, 32.191887, 20.475683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.355606, 32.123024, 20.377729>,  <45.008942, 32.008251, 20.214474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355606, 32.123024, 20.377729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416002, 0.035991, -0.908651,
		-0.275406, 0.957276, -0.088170,
		0.866656, 0.286927, 0.408141,
		45.615604, 32.209103, 20.500172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094513, 32.476414, 19.808577>,  <45.008942, 32.008251, 20.214474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094513, 32.476414, 19.808577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.449558, 32.419796, 19.983896>,  <45.662586, 32.385826, 20.089088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.449558, 32.419796, 19.983896>,  <45.094513, 32.476414, 19.808577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449558, 32.419796, 19.983896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454528, 0.115329, -0.883235,
		0.074473, 0.983190, 0.166705,
		0.887613, -0.141549, 0.438299,
		45.715843, 32.377331, 20.115387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542057, 32.971527, 19.471170>,  <45.094513, 32.476414, 19.808577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542057, 32.971527, 19.471170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.789211, 32.706581, 19.640635>,  <45.937504, 32.547611, 19.742313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.789211, 32.706581, 19.640635>,  <45.542057, 32.971527, 19.471170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789211, 32.706581, 19.640635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516481, -0.064360, -0.853876,
		0.592848, 0.746408, 0.302334,
		0.617882, -0.662369, 0.423661,
		45.974575, 32.507870, 19.767733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.256741, 33.196770, 19.433104>,  <45.542057, 32.971527, 19.471170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.256741, 33.196770, 19.433104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.294907, 32.803337, 19.494381>,  <46.317806, 32.567280, 19.531147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.294907, 32.803337, 19.494381>,  <46.256741, 33.196770, 19.433104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294907, 32.803337, 19.494381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596737, -0.066661, -0.799663,
		0.796744, 0.167718, 0.580577,
		0.095416, -0.983579, 0.153195,
		46.323532, 32.508263, 19.540340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925587, 33.080048, 19.322987>,  <46.256741, 33.196770, 19.433104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925587, 33.080048, 19.322987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.777992, 32.710217, 19.285040>,  <46.689434, 32.488316, 19.262272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.777992, 32.710217, 19.285040>,  <46.925587, 33.080048, 19.322987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777992, 32.710217, 19.285040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482166, -0.103163, -0.869984,
		0.794584, -0.366755, 0.483867,
		-0.368988, -0.924580, -0.094865,
		46.667297, 32.432842, 19.256580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446854, 32.761261, 18.937212>,  <46.925587, 33.080048, 19.322987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446854, 32.761261, 18.937212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.118057, 32.538860, 18.887915>,  <46.920780, 32.405418, 18.858335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.118057, 32.538860, 18.887915>,  <47.446854, 32.761261, 18.937212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118057, 32.538860, 18.887915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326313, -0.282466, -0.902071,
		0.466741, -0.781713, 0.413616,
		-0.821993, -0.556002, -0.123245,
		46.871460, 32.372059, 18.850941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.780724, 32.112106, 18.752476>,  <47.446854, 32.761261, 18.937212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.780724, 32.112106, 18.752476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.406700, 32.163464, 18.620310>,  <47.182285, 32.194279, 18.541010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.406700, 32.163464, 18.620310>,  <47.780724, 32.112106, 18.752476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406700, 32.163464, 18.620310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275778, -0.322168, -0.905624,
		-0.222720, -0.937936, 0.265841,
		-0.935063, 0.128388, -0.330416,
		47.126183, 32.201981, 18.521185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.753662, 31.585226, 18.259132>,  <47.780724, 32.112106, 18.752476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.753662, 31.585226, 18.259132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.459545, 31.837427, 18.159683>,  <47.283073, 31.988747, 18.100014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.459545, 31.837427, 18.159683>,  <47.753662, 31.585226, 18.259132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.459545, 31.837427, 18.159683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248426, -0.090577, -0.964406,
		-0.630580, -0.770885, -0.090033,
		-0.735291, 0.630502, -0.248624,
		47.238956, 32.026577, 18.085096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166004, 31.301174, 17.843840>,  <47.753662, 31.585226, 18.259132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166004, 31.301174, 17.843840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.215496, 31.683712, 17.737940>,  <47.245193, 31.913235, 17.674400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.215496, 31.683712, 17.737940>,  <47.166004, 31.301174, 17.843840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215496, 31.683712, 17.737940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243852, -0.287923, -0.926087,
		-0.961887, 0.050028, -0.268832,
		0.123733, 0.956346, -0.264750,
		47.252617, 31.970615, 17.658514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.193642, 30.602758, 18.149223>,  <47.166004, 31.301174, 17.843840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.193642, 30.602758, 18.149223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252895, 30.213558, 18.078423>,  <47.288448, 29.980038, 18.035942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252895, 30.213558, 18.078423>,  <47.193642, 30.602758, 18.149223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252895, 30.213558, 18.078423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612635, 0.050216, -0.788769,
		0.776359, 0.225281, -0.588655,
		0.148135, -0.972999, -0.177001,
		47.297337, 29.921659, 18.025322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.682152, 30.043369, 18.011213>,  <47.193642, 30.602758, 18.149223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.682152, 30.043369, 18.011213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.537815, 29.670324, 18.009342>,  <46.451214, 29.446497, 18.008219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.537815, 29.670324, 18.009342>,  <46.682152, 30.043369, 18.011213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537815, 29.670324, 18.009342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588908, 0.223963, 0.776548,
		-0.723172, 0.282969, -0.630040,
		-0.360845, -0.932614, -0.004680,
		46.429562, 29.390539, 18.007938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845966, 30.038824, 17.970699>,  <46.682152, 30.043369, 18.011213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845966, 30.038824, 17.970699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.996925, 29.699337, 18.118889>,  <46.087502, 29.495646, 18.207804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.996925, 29.699337, 18.118889>,  <45.845966, 30.038824, 17.970699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996925, 29.699337, 18.118889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652468, 0.040199, 0.756750,
		-0.657159, -0.527318, -0.538589,
		0.377397, -0.848717, 0.370475,
		46.110146, 29.444721, 18.230032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.346607, 29.665434, 17.960182>,  <45.845966, 30.038824, 17.970699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.346607, 29.665434, 17.960182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.576359, 29.525135, 18.256039>,  <45.714211, 29.440956, 18.433552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.576359, 29.525135, 18.256039>,  <45.346607, 29.665434, 17.960182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576359, 29.525135, 18.256039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775796, 0.055085, 0.628575,
		-0.261213, -0.934849, -0.240468,
		0.574376, -0.350746, 0.739641,
		45.748672, 29.419910, 18.477930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822979, 29.487741, 18.330219>,  <45.346607, 29.665434, 17.960182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822979, 29.487741, 18.330219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.135670, 29.443182, 18.575657>,  <45.323284, 29.416447, 18.722919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.135670, 29.443182, 18.575657>,  <44.822979, 29.487741, 18.330219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135670, 29.443182, 18.575657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620906, -0.047272, 0.782458,
		-0.058174, -0.992649, -0.106133,
		0.781723, -0.111417, 0.613592,
		45.370186, 29.409761, 18.759735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696831, 28.924700, 18.742189>,  <44.822979, 29.487741, 18.330219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696831, 28.924700, 18.742189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948574, 29.169151, 18.934200>,  <45.099621, 29.315823, 19.049406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.948574, 29.169151, 18.934200>,  <44.696831, 28.924700, 18.742189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948574, 29.169151, 18.934200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624889, 0.030777, 0.780107,
		0.461972, -0.790932, 0.401259,
		0.629361, 0.611130, 0.480026,
		45.137383, 29.352489, 19.078209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892094, 28.642628, 19.349466>,  <44.696831, 28.924700, 18.742189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892094, 28.642628, 19.349466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.937706, 29.037546, 19.393721>,  <44.965073, 29.274498, 19.420273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.937706, 29.037546, 19.393721>,  <44.892094, 28.642628, 19.349466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937706, 29.037546, 19.393721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446061, -0.048626, 0.893681,
		0.887708, -0.151258, 0.434851,
		0.114032, 0.987298, 0.110636,
		44.971916, 29.333735, 19.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778591, 28.679138, 19.982424>,  <44.892094, 28.642628, 19.349466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778591, 28.679138, 19.982424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.769970, 29.070896, 19.902103>,  <44.764797, 29.305950, 19.853910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.769970, 29.070896, 19.902103>,  <44.778591, 28.679138, 19.982424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769970, 29.070896, 19.902103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533789, 0.158554, 0.830620,
		0.845343, 0.125087, 0.519373,
		-0.021552, 0.979395, -0.200803,
		44.763504, 29.364714, 19.841862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108032, 28.978085, 20.557489>,  <44.778591, 28.679138, 19.982424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108032, 28.978085, 20.557489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868652, 29.237574, 20.369440>,  <44.725025, 29.393267, 20.256611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868652, 29.237574, 20.369440>,  <45.108032, 28.978085, 20.557489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868652, 29.237574, 20.369440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489805, 0.168107, 0.855471,
		0.633994, 0.742227, 0.217143,
		-0.598451, 0.648721, -0.470125,
		44.689117, 29.432190, 20.228403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764404, 29.230440, 21.155205>,  <45.108032, 28.978085, 20.557489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764404, 29.230440, 21.155205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608849, 29.455404, 20.863325>,  <44.515514, 29.590382, 20.688196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.608849, 29.455404, 20.863325>,  <44.764404, 29.230440, 21.155205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608849, 29.455404, 20.863325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667032, 0.374450, 0.644092,
		0.635479, 0.737214, 0.229525,
		-0.388888, 0.562408, -0.729701,
		44.492184, 29.624126, 20.644415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811356, 29.986286, 21.247334>,  <44.764404, 29.230440, 21.155205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811356, 29.986286, 21.247334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.485588, 29.913673, 21.026873>,  <44.290127, 29.870106, 20.894596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.485588, 29.913673, 21.026873>,  <44.811356, 29.986286, 21.247334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485588, 29.913673, 21.026873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571627, 0.414393, 0.708181,
		0.099836, 0.891810, -0.441258,
		-0.814417, -0.181533, -0.551154,
		44.241264, 29.859213, 20.861526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506424, 30.616524, 21.129000>,  <44.811356, 29.986286, 21.247334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506424, 30.616524, 21.129000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.247780, 30.312399, 21.104267>,  <44.092594, 30.129925, 21.089428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.247780, 30.312399, 21.104267>,  <44.506424, 30.616524, 21.129000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247780, 30.312399, 21.104267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613704, 0.470352, 0.634142,
		-0.453063, 0.447988, -0.770740,
		-0.646607, -0.760313, -0.061833,
		44.053799, 30.084305, 21.085716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880730, 30.985014, 21.225254>,  <44.506424, 30.616524, 21.129000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880730, 30.985014, 21.225254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774384, 30.603071, 21.278267>,  <43.710575, 30.373905, 21.310076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.774384, 30.603071, 21.278267>,  <43.880730, 30.985014, 21.225254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774384, 30.603071, 21.278267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679308, 0.283117, 0.677042,
		-0.684000, 0.089971, -0.723912,
		-0.265866, -0.954856, 0.132534,
		43.694622, 30.316614, 21.318027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192142, 31.060001, 21.298311>,  <43.880730, 30.985014, 21.225254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192142, 31.060001, 21.298311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.287170, 30.700193, 21.444969>,  <43.344189, 30.484308, 21.532963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.287170, 30.700193, 21.444969>,  <43.192142, 31.060001, 21.298311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287170, 30.700193, 21.444969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570318, 0.176375, 0.802265,
		-0.786318, -0.399699, -0.471109,
		0.237573, -0.899518, 0.366643,
		43.358440, 30.430338, 21.554962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627701, 30.709581, 21.473202>,  <43.192142, 31.060001, 21.298311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627701, 30.709581, 21.473202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911171, 30.539795, 21.698627>,  <43.081253, 30.437923, 21.833883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.911171, 30.539795, 21.698627>,  <42.627701, 30.709581, 21.473202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911171, 30.539795, 21.698627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536395, 0.194750, 0.821190,
		-0.458322, -0.884251, -0.089667,
		0.708676, -0.424466, 0.563566,
		43.123775, 30.412455, 21.867697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276173, 30.446512, 22.035580>,  <42.627701, 30.709581, 21.473202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276173, 30.446512, 22.035580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649982, 30.408129, 22.172663>,  <42.874268, 30.385099, 22.254913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.649982, 30.408129, 22.172663>,  <42.276173, 30.446512, 22.035580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649982, 30.408129, 22.172663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343752, 0.005964, 0.939041,
		-0.092155, -0.995367, -0.027413,
		0.934528, -0.095961, 0.342709,
		42.930340, 30.379341, 22.275476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311852, 29.978125, 22.622379>,  <42.276173, 30.446512, 22.035580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311852, 29.978125, 22.622379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637566, 30.204424, 22.674316>,  <42.832996, 30.340204, 22.705479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637566, 30.204424, 22.674316>,  <42.311852, 29.978125, 22.622379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637566, 30.204424, 22.674316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255194, 0.148010, 0.955494,
		0.521353, -0.811184, 0.264899,
		0.814289, 0.565751, 0.129844,
		42.881851, 30.374149, 22.713270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778889, 29.720600, 23.040115>,  <42.311852, 29.978125, 22.622379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778889, 29.720600, 23.040115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.859890, 30.111647, 23.062935>,  <42.908489, 30.346275, 23.076628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.859890, 30.111647, 23.062935>,  <42.778889, 29.720600, 23.040115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859890, 30.111647, 23.062935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272741, 0.000350, 0.962088,
		0.940535, -0.210384, 0.266707,
		0.202502, 0.977619, 0.057051,
		42.920639, 30.404932, 23.080050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089912, 29.752769, 23.631786>,  <42.778889, 29.720600, 23.040115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089912, 29.752769, 23.631786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.987225, 30.133213, 23.563103>,  <42.925613, 30.361479, 23.521893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.987225, 30.133213, 23.563103>,  <43.089912, 29.752769, 23.631786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987225, 30.133213, 23.563103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081119, 0.155835, 0.984447,
		0.963076, 0.266654, 0.037148,
		-0.256717, 0.951111, -0.171711,
		42.910210, 30.418547, 23.511589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300179, 30.078402, 24.188995>,  <43.089912, 29.752769, 23.631786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300179, 30.078402, 24.188995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049530, 30.357948, 24.051050>,  <42.899139, 30.525677, 23.968283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.049530, 30.357948, 24.051050>,  <43.300179, 30.078402, 24.188995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049530, 30.357948, 24.051050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147796, 0.327918, 0.933074,
		0.765180, 0.635655, -0.102191,
		-0.626623, 0.698866, -0.344863,
		42.861542, 30.567608, 23.947592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589375, 30.776464, 24.437891>,  <43.300179, 30.078402, 24.188995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589375, 30.776464, 24.437891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.195419, 30.805180, 24.374838>,  <42.959045, 30.822409, 24.337006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.195419, 30.805180, 24.374838>,  <43.589375, 30.776464, 24.437891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195419, 30.805180, 24.374838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135469, 0.247836, 0.959284,
		0.107931, 0.966139, -0.234365,
		-0.984885, 0.071787, -0.157631,
		42.899952, 30.826715, 24.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.959164, 34.697037, 27.470901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590508, 34.580555, 27.368305>,  <41.369316, 34.510666, 27.306747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590508, 34.580555, 27.368305>,  <41.959164, 34.697037, 27.470901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590508, 34.580555, 27.368305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364895, 0.425406, 0.828180,
		-0.132056, 0.856873, -0.498328,
		-0.921636, -0.291204, -0.256491,
		41.314018, 34.493195, 27.291357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469479, 35.236790, 27.391588>,  <41.959164, 34.697037, 27.470901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469479, 35.236790, 27.391588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229515, 34.932861, 27.491806>,  <41.085537, 34.750504, 27.551937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229515, 34.932861, 27.491806>,  <41.469479, 35.236790, 27.391588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229515, 34.932861, 27.491806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310306, 0.509616, 0.802497,
		-0.737437, 0.403683, -0.541503,
		-0.599914, -0.759823, 0.250544,
		41.049541, 34.704914, 27.566969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978703, 35.570595, 27.780231>,  <41.469479, 35.236790, 27.391588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978703, 35.570595, 27.780231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847233, 35.198059, 27.842955>,  <40.768349, 34.974537, 27.880589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847233, 35.198059, 27.842955>,  <40.978703, 35.570595, 27.780231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847233, 35.198059, 27.842955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650866, 0.343672, 0.676951,
		-0.684357, 0.120438, -0.719131,
		-0.328676, -0.931334, 0.156806,
		40.748631, 34.918659, 27.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269962, 35.550533, 27.720282>,  <40.978703, 35.570595, 27.780231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269962, 35.550533, 27.720282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366615, 35.238365, 27.950954>,  <40.424606, 35.051064, 28.089359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366615, 35.238365, 27.950954>,  <40.269962, 35.550533, 27.720282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366615, 35.238365, 27.950954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774736, 0.202692, 0.598916,
		-0.584293, -0.591493, -0.555641,
		0.241630, -0.780418, 0.576683,
		40.439106, 35.004238, 28.123959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729568, 35.206440, 27.605921>,  <40.269962, 35.550533, 27.720282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729568, 35.206440, 27.605921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909996, 35.077427, 27.938789>,  <40.018253, 35.000019, 28.138510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.909996, 35.077427, 27.938789>,  <39.729568, 35.206440, 27.605921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909996, 35.077427, 27.938789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848088, 0.135531, 0.512228,
		-0.277994, -0.936806, -0.212401,
		0.451071, -0.322531, 0.832171,
		40.045319, 34.980667, 28.188440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284702, 34.754368, 27.844316>,  <39.729568, 35.206440, 27.605921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284702, 34.754368, 27.844316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.520580, 34.861115, 28.149221>,  <39.662106, 34.925163, 28.332165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.520580, 34.861115, 28.149221>,  <39.284702, 34.754368, 27.844316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520580, 34.861115, 28.149221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807405, 0.172595, 0.564188,
		0.019003, -0.948151, 0.317251,
		0.589691, 0.266871, 0.762262,
		39.697487, 34.941177, 28.377901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021557, 34.527946, 28.466679>,  <39.284702, 34.754368, 27.844316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021557, 34.527946, 28.466679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266510, 34.804424, 28.620165>,  <39.413483, 34.970310, 28.712257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266510, 34.804424, 28.620165>,  <39.021557, 34.527946, 28.466679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266510, 34.804424, 28.620165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755803, 0.369533, 0.540562,
		0.231836, -0.621046, 0.748701,
		0.612384, 0.691192, 0.383717,
		39.450226, 35.011784, 28.735279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932590, 34.533596, 29.216986>,  <39.021557, 34.527946, 28.466679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932590, 34.533596, 29.216986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090961, 34.887150, 29.117395>,  <39.185986, 35.099281, 29.057640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.090961, 34.887150, 29.117395>,  <38.932590, 34.533596, 29.216986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090961, 34.887150, 29.117395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623632, 0.457831, 0.633620,
		0.674037, -0.095596, 0.732486,
		0.395926, 0.883885, -0.248978,
		39.209740, 35.152317, 29.042702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055786, 34.909191, 29.866508>,  <38.932590, 34.533596, 29.216986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055786, 34.909191, 29.866508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055882, 35.198273, 29.590046>,  <39.055939, 35.371723, 29.424168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.055882, 35.198273, 29.590046>,  <39.055786, 34.909191, 29.866508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055882, 35.198273, 29.590046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594182, 0.556024, 0.581193,
		0.804330, 0.410533, 0.429552,
		0.000243, 0.722703, -0.691158,
		39.055954, 35.415085, 29.382698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295452, 35.498516, 30.271671>,  <39.055786, 34.909191, 29.866508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295452, 35.498516, 30.271671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084450, 35.596542, 29.946297>,  <38.957848, 35.655357, 29.751072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084450, 35.596542, 29.946297>,  <39.295452, 35.498516, 30.271671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084450, 35.596542, 29.946297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711159, 0.396412, 0.580612,
		0.464745, 0.884759, -0.034827,
		-0.527508, 0.245069, -0.813435,
		38.926197, 35.670063, 29.702267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113480, 36.198425, 30.426193>,  <39.295452, 35.498516, 30.271671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113480, 36.198425, 30.426193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.856579, 36.058102, 30.153591>,  <38.702438, 35.973907, 29.990030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.856579, 36.058102, 30.153591>,  <39.113480, 36.198425, 30.426193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856579, 36.058102, 30.153591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747726, 0.482306, 0.456385,
		0.168593, 0.802693, -0.572067,
		-0.642248, -0.350807, -0.681507,
		38.663906, 35.952858, 29.949139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664383, 36.802368, 30.340416>,  <39.113480, 36.198425, 30.426193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664383, 36.802368, 30.340416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491463, 36.466370, 30.209259>,  <38.387711, 36.264771, 30.130564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491463, 36.466370, 30.209259>,  <38.664383, 36.802368, 30.340416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491463, 36.466370, 30.209259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819029, 0.213652, 0.532489,
		-0.377236, 0.498751, -0.780347,
		-0.432302, -0.840000, -0.327894,
		38.361771, 36.214371, 30.110891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111179, 36.924549, 29.875277>,  <38.664383, 36.802368, 30.340416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111179, 36.924549, 29.875277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068043, 36.581909, 30.077112>,  <38.042160, 36.376324, 30.198214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068043, 36.581909, 30.077112>,  <38.111179, 36.924549, 29.875277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068043, 36.581909, 30.077112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753115, 0.401717, 0.521001,
		-0.648990, -0.323826, -0.688439,
		-0.107844, -0.856598, 0.504588,
		38.035690, 36.324928, 30.228489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519688, 36.549522, 29.749176>,  <38.111179, 36.924549, 29.875277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519688, 36.549522, 29.749176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649921, 36.494091, 30.123297>,  <37.728062, 36.460835, 30.347769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649921, 36.494091, 30.123297>,  <37.519688, 36.549522, 29.749176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649921, 36.494091, 30.123297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830288, 0.431346, 0.352935,
		-0.452348, -0.891481, 0.025380,
		0.325582, -0.138576, 0.935304,
		37.747597, 36.452518, 30.403889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583206, 37.091698, 29.222754>,  <37.519688, 36.549522, 29.749176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583206, 37.091698, 29.222754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416634, 37.454418, 29.248978>,  <37.316689, 37.672050, 29.264713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416634, 37.454418, 29.248978>,  <37.583206, 37.091698, 29.222754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416634, 37.454418, 29.248978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250470, -0.045105, -0.967073,
		-0.873983, -0.419145, 0.245909,
		-0.416436, 0.906798, 0.065562,
		37.291702, 37.726460, 29.268646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843472, 37.170979, 29.274609>,  <37.583206, 37.091698, 29.222754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843472, 37.170979, 29.274609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006615, 37.485600, 29.089142>,  <37.104500, 37.674374, 28.977861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006615, 37.485600, 29.089142>,  <36.843472, 37.170979, 29.274609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006615, 37.485600, 29.089142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347395, -0.335946, -0.875475,
		-0.844374, 0.518145, 0.136226,
		0.407859, 0.786553, -0.463665,
		37.128971, 37.721565, 28.950043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421272, 37.269287, 28.726360>,  <36.843472, 37.170979, 29.274609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421272, 37.269287, 28.726360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759777, 37.464489, 28.640856>,  <36.962879, 37.581612, 28.589552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759777, 37.464489, 28.640856>,  <36.421272, 37.269287, 28.726360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759777, 37.464489, 28.640856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046987, -0.331303, -0.942354,
		-0.530694, 0.807520, -0.257438,
		0.846260, 0.488006, -0.213763,
		37.013657, 37.610889, 28.576727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278263, 37.757011, 28.137697>,  <36.421272, 37.269287, 28.726360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278263, 37.757011, 28.137697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670368, 37.679348, 28.152580>,  <36.905632, 37.632748, 28.161510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670368, 37.679348, 28.152580>,  <36.278263, 37.757011, 28.137697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670368, 37.679348, 28.152580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016542, -0.268109, -0.963247,
		0.197002, 0.943620, -0.266029,
		0.980263, -0.194163, 0.037208,
		36.964447, 37.621098, 28.163742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483776, 37.783623, 27.473818>,  <36.278263, 37.757011, 28.137697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483776, 37.783623, 27.473818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817646, 37.616364, 27.617188>,  <37.017967, 37.516006, 27.703209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.817646, 37.616364, 27.617188>,  <36.483776, 37.783623, 27.473818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817646, 37.616364, 27.617188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174373, -0.416674, -0.892175,
		0.522410, 0.807176, -0.274874,
		0.834675, -0.418150, 0.358424,
		37.068050, 37.490917, 27.724714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861641, 37.979198, 27.044298>,  <36.483776, 37.783623, 27.473818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861641, 37.979198, 27.044298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.045437, 37.668568, 27.216717>,  <37.155716, 37.482189, 27.320168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.045437, 37.668568, 27.216717>,  <36.861641, 37.979198, 27.044298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045437, 37.668568, 27.216717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334708, -0.298137, -0.893915,
		0.822703, 0.555020, 0.122935,
		0.459489, -0.776574, 0.431048,
		37.183285, 37.435596, 27.346031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537029, 38.077015, 26.760380>,  <36.861641, 37.979198, 27.044298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537029, 38.077015, 26.760380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491974, 37.696827, 26.876253>,  <37.464939, 37.468716, 26.945778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.491974, 37.696827, 26.876253>,  <37.537029, 38.077015, 26.760380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491974, 37.696827, 26.876253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479398, -0.307348, -0.822019,
		0.870339, 0.046280, 0.490274,
		-0.112641, -0.950471, 0.289683,
		37.458183, 37.411686, 26.963158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152477, 37.793919, 26.712391>,  <37.537029, 38.077015, 26.760380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152477, 37.793919, 26.712391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932854, 37.459797, 26.723679>,  <37.801079, 37.259323, 26.730452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.932854, 37.459797, 26.723679>,  <38.152477, 37.793919, 26.712391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932854, 37.459797, 26.723679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513954, -0.364069, -0.776727,
		0.659081, -0.411964, 0.629205,
		-0.549058, -0.835308, 0.028220,
		37.768135, 37.209206, 26.732145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591354, 37.247898, 26.694574>,  <38.152477, 37.793919, 26.712391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591354, 37.247898, 26.694574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256538, 37.083553, 26.550045>,  <38.055649, 36.984947, 26.463327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256538, 37.083553, 26.550045>,  <38.591354, 37.247898, 26.694574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256538, 37.083553, 26.550045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533219, -0.464540, -0.707022,
		0.122639, -0.784471, 0.607918,
		-0.837041, -0.410862, -0.361325,
		38.005424, 36.960293, 26.441648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673817, 36.538746, 26.723738>,  <38.591354, 37.247898, 26.694574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673817, 36.538746, 26.723738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418308, 36.627327, 26.429001>,  <38.265003, 36.680473, 26.252159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418308, 36.627327, 26.429001>,  <38.673817, 36.538746, 26.723738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418308, 36.627327, 26.429001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478452, -0.635668, -0.605813,
		-0.602541, -0.739519, 0.300095,
		-0.638771, 0.221446, -0.736840,
		38.226677, 36.693760, 26.207949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730690, 35.912712, 26.414583>,  <38.673817, 36.538746, 26.723738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730690, 35.912712, 26.414583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528606, 36.115562, 26.135275>,  <38.407356, 36.237274, 25.967690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.528606, 36.115562, 26.135275>,  <38.730690, 35.912712, 26.414583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528606, 36.115562, 26.135275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484719, -0.502690, -0.715786,
		-0.714008, -0.700090, 0.008151,
		-0.505212, 0.507126, -0.698272,
		38.377045, 36.267700, 25.925793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635056, 35.417385, 25.917149>,  <38.730690, 35.912712, 26.414583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635056, 35.417385, 25.917149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569584, 35.742592, 25.693645>,  <38.530300, 35.937717, 25.559544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569584, 35.742592, 25.693645>,  <38.635056, 35.417385, 25.917149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569584, 35.742592, 25.693645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486624, -0.426154, -0.762621,
		-0.858141, -0.396734, -0.325878,
		-0.163683, 0.813016, -0.558760,
		38.520477, 35.986496, 25.526018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375896, 35.208206, 25.236643>,  <38.635056, 35.417385, 25.917149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375896, 35.208206, 25.236643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505169, 35.581383, 25.173172>,  <38.582733, 35.805286, 25.135090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.505169, 35.581383, 25.173172>,  <38.375896, 35.208206, 25.236643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505169, 35.581383, 25.173172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432700, -0.294801, -0.851976,
		-0.841619, 0.206685, -0.498957,
		0.323184, 0.932938, -0.158677,
		38.602123, 35.861263, 25.125568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095650, 35.495636, 24.540174>,  <38.375896, 35.208206, 25.236643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095650, 35.495636, 24.540174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406013, 35.727280, 24.640255>,  <38.592232, 35.866268, 24.700304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406013, 35.727280, 24.640255>,  <38.095650, 35.495636, 24.540174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406013, 35.727280, 24.640255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435320, -0.204454, -0.876753,
		-0.456583, 0.789195, -0.410735,
		0.775905, 0.579111, 0.250202,
		38.638786, 35.901012, 24.715315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668434, 35.655354, 23.909647>,  <38.095650, 35.495636, 24.540174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668434, 35.655354, 23.909647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508545, 35.341766, 23.719654>,  <37.412609, 35.153614, 23.605658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508545, 35.341766, 23.719654>,  <37.668434, 35.655354, 23.909647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508545, 35.341766, 23.719654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814272, 0.065744, 0.576749,
		-0.420926, 0.617308, -0.664644,
		-0.399727, -0.783970, -0.474983,
		37.388626, 35.106575, 23.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993233, 35.816841, 23.840929>,  <37.668434, 35.655354, 23.909647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993233, 35.816841, 23.840929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981228, 35.417877, 23.814795>,  <36.974026, 35.178497, 23.799114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981228, 35.417877, 23.814795>,  <36.993233, 35.816841, 23.840929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981228, 35.417877, 23.814795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807042, -0.014387, 0.590318,
		-0.589730, 0.070447, -0.804522,
		-0.030012, -0.997412, -0.065338,
		36.972225, 35.118652, 23.795193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342964, 35.569729, 23.548069>,  <36.993233, 35.816841, 23.840929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342964, 35.569729, 23.548069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.504726, 35.297497, 23.792450>,  <36.601784, 35.134155, 23.939079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.504726, 35.297497, 23.792450>,  <36.342964, 35.569729, 23.548069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504726, 35.297497, 23.792450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829924, 0.007612, 0.557825,
		-0.384298, -0.732630, -0.561755,
		0.404403, -0.680585, 0.610952,
		36.626049, 35.093323, 23.975735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752682, 35.297050, 23.793097>,  <36.342964, 35.569729, 23.548069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752682, 35.297050, 23.793097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.039398, 35.142143, 24.025042>,  <36.211426, 35.049198, 24.164209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.039398, 35.142143, 24.025042>,  <35.752682, 35.297050, 23.793097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039398, 35.142143, 24.025042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656704, -0.095346, 0.748096,
		-0.234425, -0.917024, -0.322663,
		0.716787, -0.387267, 0.579862,
		36.254433, 35.025963, 24.199001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450226, 34.751827, 24.153955>,  <35.752682, 35.297050, 23.793097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450226, 34.751827, 24.153955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769222, 34.864780, 24.367222>,  <35.960621, 34.932552, 24.495182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769222, 34.864780, 24.367222>,  <35.450226, 34.751827, 24.153955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769222, 34.864780, 24.367222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574856, 0.087367, 0.813577,
		0.183160, -0.955315, 0.232005,
		0.797491, 0.282384, 0.533167,
		36.008469, 34.949493, 24.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296368, 34.454174, 24.740850>,  <35.450226, 34.751827, 24.153955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296368, 34.454174, 24.740850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.568840, 34.728291, 24.843893>,  <35.732323, 34.892761, 24.905718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.568840, 34.728291, 24.843893>,  <35.296368, 34.454174, 24.740850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568840, 34.728291, 24.843893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449902, 0.114249, 0.885740,
		0.577561, -0.719249, 0.386140,
		0.681184, 0.685294, 0.257605,
		35.773193, 34.933880, 24.921175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550213, 34.176933, 25.379570>,  <35.296368, 34.454174, 24.740850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550213, 34.176933, 25.379570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.712097, 34.542347, 25.395868>,  <35.809227, 34.761597, 25.405647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.712097, 34.542347, 25.395868>,  <35.550213, 34.176933, 25.379570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712097, 34.542347, 25.395868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095192, -0.002230, 0.995456,
		0.909477, -0.406751, 0.086059,
		0.404711, 0.913536, 0.040748,
		35.833511, 34.816406, 25.408092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067039, 34.191280, 26.029936>,  <35.550213, 34.176933, 25.379570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067039, 34.191280, 26.029936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.941437, 34.554714, 25.919752>,  <35.866074, 34.772774, 25.853642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.941437, 34.554714, 25.919752>,  <36.067039, 34.191280, 26.029936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941437, 34.554714, 25.919752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143500, 0.241384, 0.959761,
		0.938513, 0.340900, 0.054585,
		-0.314007, 0.908582, -0.275461,
		35.847233, 34.827290, 25.837114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368713, 34.601974, 26.522831>,  <36.067039, 34.191280, 26.029936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368713, 34.601974, 26.522831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.040657, 34.768269, 26.365589>,  <35.843822, 34.868046, 26.271244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.040657, 34.768269, 26.365589>,  <36.368713, 34.601974, 26.522831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040657, 34.768269, 26.365589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274428, 0.317041, 0.907841,
		0.502049, 0.852438, -0.145931,
		-0.820144, 0.415733, -0.393103,
		35.794613, 34.892990, 26.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342960, 35.308388, 26.749014>,  <36.368713, 34.601974, 26.522831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342960, 35.308388, 26.749014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.968796, 35.236969, 26.626951>,  <35.744297, 35.194118, 26.553715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.968796, 35.236969, 26.626951>,  <36.342960, 35.308388, 26.749014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968796, 35.236969, 26.626951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351336, 0.372934, 0.858768,
		-0.039530, 0.910516, -0.411579,
		-0.935414, -0.178550, -0.305156,
		35.688171, 35.183403, 26.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939198, 35.844307, 26.970848>,  <36.342960, 35.308388, 26.749014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939198, 35.844307, 26.970848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669529, 35.555222, 26.909952>,  <35.507729, 35.381771, 26.873415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.669529, 35.555222, 26.909952>,  <35.939198, 35.844307, 26.970848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669529, 35.555222, 26.909952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426626, 0.212800, 0.879037,
		-0.602899, 0.657568, -0.451793,
		-0.674169, -0.722717, -0.152239,
		35.467278, 35.338406, 26.864281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300518, 36.147633, 26.846542>,  <35.939198, 35.844307, 26.970848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300518, 36.147633, 26.846542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.232063, 35.786366, 27.004021>,  <35.190990, 35.569607, 27.098509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.232063, 35.786366, 27.004021>,  <35.300518, 36.147633, 26.846542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232063, 35.786366, 27.004021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491384, 0.424592, 0.760436,
		-0.853963, -0.063314, -0.516468,
		-0.171142, -0.903168, 0.393697,
		35.180721, 35.515415, 27.122129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.127354, 35.160473, 20.135479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035950, 34.776806, 20.202147>,  <38.981110, 34.546604, 20.242147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035950, 34.776806, 20.202147>,  <39.127354, 35.160473, 20.135479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035950, 34.776806, 20.202147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470319, 0.258658, 0.843739,
		-0.852400, 0.114410, -0.510221,
		-0.228505, -0.959170, 0.166671,
		38.967400, 34.489056, 20.252148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380547, 35.044376, 20.106867>,  <39.127354, 35.160473, 20.135479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380547, 35.044376, 20.106867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548611, 34.776096, 20.351364>,  <38.649448, 34.615128, 20.498062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548611, 34.776096, 20.351364>,  <38.380547, 35.044376, 20.106867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548611, 34.776096, 20.351364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693965, 0.196530, 0.692668,
		-0.584703, -0.715215, -0.382870,
		0.420162, -0.670704, 0.611246,
		38.674660, 34.574886, 20.534739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775463, 34.581631, 20.454718>,  <38.380547, 35.044376, 20.106867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775463, 34.581631, 20.454718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088955, 34.540440, 20.699720>,  <38.277050, 34.515724, 20.846722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088955, 34.540440, 20.699720>,  <37.775463, 34.581631, 20.454718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088955, 34.540440, 20.699720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585609, 0.206076, 0.783961,
		-0.206951, -0.973103, 0.101205,
		0.783730, -0.102975, 0.612505,
		38.324074, 34.509548, 20.883472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578747, 34.168385, 21.147560>,  <37.775463, 34.581631, 20.454718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578747, 34.168385, 21.147560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924763, 34.342403, 21.247517>,  <38.132370, 34.446815, 21.307491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924763, 34.342403, 21.247517>,  <37.578747, 34.168385, 21.147560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924763, 34.342403, 21.247517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353165, 0.174235, 0.919194,
		0.356353, -0.883389, 0.304363,
		0.865036, 0.435048, 0.249893,
		38.184273, 34.472919, 21.322485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660919, 33.856819, 21.780340>,  <37.578747, 34.168385, 21.147560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660919, 33.856819, 21.780340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907314, 34.171906, 21.777403>,  <38.055153, 34.360958, 21.775640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907314, 34.171906, 21.777403>,  <37.660919, 33.856819, 21.780340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907314, 34.171906, 21.777403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148378, 0.125177, 0.980977,
		0.773654, -0.603182, 0.193988,
		0.615990, 0.787720, -0.007344,
		38.092110, 34.408222, 21.775200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158081, 33.758312, 22.342031>,  <37.660919, 33.856819, 21.780340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158081, 33.758312, 22.342031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130562, 34.147648, 22.254515>,  <38.114052, 34.381248, 22.202005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130562, 34.147648, 22.254515>,  <38.158081, 33.758312, 22.342031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130562, 34.147648, 22.254515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047450, 0.215870, 0.975268,
		0.996502, 0.077474, 0.031335,
		-0.068794, 0.973344, -0.218791,
		38.109924, 34.439651, 22.188877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506012, 34.050236, 22.864700>,  <38.158081, 33.758312, 22.342031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506012, 34.050236, 22.864700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263287, 34.324650, 22.704134>,  <38.117653, 34.489300, 22.607794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263287, 34.324650, 22.704134>,  <38.506012, 34.050236, 22.864700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263287, 34.324650, 22.704134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193292, 0.362500, 0.911719,
		0.770987, 0.630831, -0.087363,
		-0.606810, 0.686037, -0.401418,
		38.081245, 34.530460, 22.583708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612274, 34.578796, 23.267191>,  <38.506012, 34.050236, 22.864700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612274, 34.578796, 23.267191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262333, 34.669582, 23.096022>,  <38.052368, 34.724052, 22.993320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262333, 34.669582, 23.096022>,  <38.612274, 34.578796, 23.267191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262333, 34.669582, 23.096022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386499, 0.205425, 0.899121,
		0.291971, 0.951992, -0.091997,
		-0.874855, 0.226961, -0.427922,
		37.999878, 34.737671, 22.967646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392387, 35.167484, 23.712364>,  <38.612274, 34.578796, 23.267191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392387, 35.167484, 23.712364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073734, 35.022137, 23.519144>,  <37.882542, 34.934929, 23.403212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073734, 35.022137, 23.519144>,  <38.392387, 35.167484, 23.712364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073734, 35.022137, 23.519144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570166, 0.186372, 0.800110,
		-0.200705, 0.912815, -0.355648,
		-0.796636, -0.363364, -0.483050,
		37.834743, 34.913128, 23.374229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285721, 35.996494, 23.841146>,  <38.392387, 35.167484, 23.712364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285721, 35.996494, 23.841146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610416, 35.975967, 24.073854>,  <38.805233, 35.963654, 24.213478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610416, 35.975967, 24.073854>,  <38.285721, 35.996494, 23.841146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610416, 35.975967, 24.073854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569200, -0.153522, -0.807739,
		0.130762, 0.986812, -0.095412,
		0.811734, -0.051313, 0.581768,
		38.853935, 35.960575, 24.248384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814369, 36.443333, 23.562635>,  <38.285721, 35.996494, 23.841146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814369, 36.443333, 23.562635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017986, 36.186287, 23.791695>,  <39.140156, 36.032059, 23.929131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017986, 36.186287, 23.791695>,  <38.814369, 36.443333, 23.562635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017986, 36.186287, 23.791695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686248, -0.098586, -0.720656,
		0.519557, 0.759823, 0.390806,
		0.509043, -0.642611, 0.572648,
		39.170700, 35.993504, 23.963490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535862, 36.562313, 23.359985>,  <38.814369, 36.443333, 23.562635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535862, 36.562313, 23.359985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551853, 36.214947, 23.557673>,  <39.561447, 36.006527, 23.676285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551853, 36.214947, 23.557673>,  <39.535862, 36.562313, 23.359985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551853, 36.214947, 23.557673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774264, -0.285727, -0.564691,
		0.631599, 0.405230, 0.660962,
		0.039975, -0.868418, 0.494220,
		39.563847, 35.954422, 23.705938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258980, 36.486126, 23.596600>,  <39.535862, 36.562313, 23.359985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258980, 36.486126, 23.596600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103756, 36.118179, 23.573742>,  <40.010624, 35.897411, 23.560028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103756, 36.118179, 23.573742>,  <40.258980, 36.486126, 23.596600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103756, 36.118179, 23.573742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785213, -0.297517, -0.543069,
		0.482548, -0.255611, 0.837741,
		-0.388057, -0.919862, -0.057143,
		39.987339, 35.842220, 23.556599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844738, 36.047874, 23.731091>,  <40.258980, 36.486126, 23.596600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844738, 36.047874, 23.731091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573421, 35.811417, 23.556520>,  <40.410633, 35.669540, 23.451778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573421, 35.811417, 23.556520>,  <40.844738, 36.047874, 23.731091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573421, 35.811417, 23.556520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716873, -0.402014, -0.569630,
		0.161284, -0.699238, 0.696459,
		-0.678293, -0.591144, -0.436426,
		40.369934, 35.634075, 23.425592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105507, 35.367069, 23.762466>,  <40.844738, 36.047874, 23.731091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105507, 35.367069, 23.762466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832199, 35.380680, 23.470716>,  <40.668217, 35.388847, 23.295666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832199, 35.380680, 23.470716>,  <41.105507, 35.367069, 23.762466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832199, 35.380680, 23.470716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681517, -0.328803, -0.653776,
		-0.262069, -0.943785, 0.201468,
		-0.683267, 0.034031, -0.729375,
		40.627220, 35.390888, 23.251904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280407, 34.679890, 23.375736>,  <41.105507, 35.367069, 23.762466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280407, 34.679890, 23.375736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055210, 34.886921, 23.118006>,  <40.920094, 35.011139, 22.963367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055210, 34.886921, 23.118006>,  <41.280407, 34.679890, 23.375736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055210, 34.886921, 23.118006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620134, -0.250809, -0.743323,
		-0.546330, -0.818051, -0.179764,
		-0.562990, 0.517578, -0.644326,
		40.886314, 35.042194, 22.924707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338501, 34.270218, 22.747765>,  <41.280407, 34.679890, 23.375736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338501, 34.270218, 22.747765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170189, 34.613632, 22.630560>,  <41.069202, 34.819683, 22.560238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170189, 34.613632, 22.630560>,  <41.338501, 34.270218, 22.747765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170189, 34.613632, 22.630560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466529, -0.072212, -0.881553,
		-0.778006, -0.507639, -0.370148,
		-0.420782, 0.858539, -0.293010,
		41.043953, 34.871193, 22.542658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966358, 34.107780, 22.158678>,  <41.338501, 34.270218, 22.747765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966358, 34.107780, 22.158678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080032, 34.491283, 22.157135>,  <41.148235, 34.721386, 22.156210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080032, 34.491283, 22.157135>,  <40.966358, 34.107780, 22.158678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080032, 34.491283, 22.157135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463244, -0.140831, -0.874970,
		-0.839430, 0.246868, -0.484162,
		0.284187, 0.958761, -0.003857,
		41.165287, 34.778912, 22.155977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917408, 34.345882, 21.385162>,  <40.966358, 34.107780, 22.158678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917408, 34.345882, 21.385162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141907, 34.618721, 21.572668>,  <41.276608, 34.782425, 21.685171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141907, 34.618721, 21.572668>,  <40.917408, 34.345882, 21.385162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141907, 34.618721, 21.572668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556398, 0.108343, -0.823822,
		-0.612716, 0.723189, -0.318711,
		0.561249, 0.682099, 0.468765,
		41.310280, 34.823349, 21.713297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981014, 34.990173, 20.926743>,  <40.917408, 34.345882, 21.385162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981014, 34.990173, 20.926743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281048, 34.989265, 21.191277>,  <41.461067, 34.988720, 21.349997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281048, 34.989265, 21.191277>,  <40.981014, 34.990173, 20.926743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281048, 34.989265, 21.191277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661122, -0.023090, -0.749923,
		0.016973, 0.999731, -0.015819,
		0.750087, -0.002270, 0.661336,
		41.506073, 34.988583, 21.389677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490265, 35.462143, 20.579599>,  <40.981014, 34.990173, 20.926743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490265, 35.462143, 20.579599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666672, 35.238560, 20.860476>,  <41.772518, 35.104412, 21.029001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666672, 35.238560, 20.860476>,  <41.490265, 35.462143, 20.579599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666672, 35.238560, 20.860476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757567, -0.187675, -0.625196,
		0.481239, 0.807681, 0.340677,
		0.441022, -0.558954, 0.702189,
		41.798977, 35.070873, 21.071133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109997, 35.739941, 20.536678>,  <41.490265, 35.462143, 20.579599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109997, 35.739941, 20.536678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161831, 35.392399, 20.727804>,  <42.192932, 35.183876, 20.842480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161831, 35.392399, 20.727804>,  <42.109997, 35.739941, 20.536678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161831, 35.392399, 20.727804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803773, -0.190138, -0.563735,
		0.580652, 0.457107, 0.673719,
		0.129587, -0.868850, 0.477814,
		42.200706, 35.131744, 20.871149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800266, 35.757652, 20.816994>,  <42.109997, 35.739941, 20.536678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800266, 35.757652, 20.816994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693951, 35.372478, 20.798634>,  <42.630161, 35.141373, 20.787617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693951, 35.372478, 20.798634>,  <42.800266, 35.757652, 20.816994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693951, 35.372478, 20.798634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722220, -0.167356, -0.671111,
		0.638557, -0.211523, 0.739935,
		-0.265788, -0.962938, -0.045900,
		42.614216, 35.083595, 20.784864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.668743, 28.744938, 21.958836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554028, 29.055523, 21.734388>,  <40.485199, 29.241875, 21.599720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.554028, 29.055523, 21.734388>,  <40.668743, 28.744938, 21.958836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554028, 29.055523, 21.734388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682016, 0.245847, 0.688777,
		0.672760, 0.580227, 0.459054,
		-0.286790, 0.776464, -0.561120,
		40.467991, 29.288462, 21.566051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665283, 29.343531, 22.435324>,  <40.668743, 28.744938, 21.958836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665283, 29.343531, 22.435324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428749, 29.414099, 22.120567>,  <40.286827, 29.456440, 21.931713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428749, 29.414099, 22.120567>,  <40.665283, 29.343531, 22.435324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428749, 29.414099, 22.120567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694176, 0.385246, 0.608034,
		0.410415, 0.905794, -0.105345,
		-0.591337, 0.176418, -0.786891,
		40.251347, 29.467024, 21.884501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475098, 29.975510, 22.497974>,  <40.665283, 29.343531, 22.435324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475098, 29.975510, 22.497974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203972, 29.806280, 22.257448>,  <40.041298, 29.704742, 22.113132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.203972, 29.806280, 22.257448>,  <40.475098, 29.975510, 22.497974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203972, 29.806280, 22.257448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732823, 0.322576, 0.599095,
		-0.059491, 0.846732, -0.528683,
		-0.677814, -0.423072, -0.601314,
		40.000629, 29.679359, 22.077053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059963, 30.510569, 22.436867>,  <40.475098, 29.975510, 22.497974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059963, 30.510569, 22.436867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848610, 30.178272, 22.366804>,  <39.721798, 29.978893, 22.324766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.848610, 30.178272, 22.366804>,  <40.059963, 30.510569, 22.436867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848610, 30.178272, 22.366804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541794, 0.171093, 0.822914,
		-0.653662, 0.529710, -0.540494,
		-0.528381, -0.830743, -0.175157,
		39.690094, 29.929049, 22.314257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389874, 30.702974, 22.685335>,  <40.059963, 30.510569, 22.436867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389874, 30.702974, 22.685335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379745, 30.303848, 22.660927>,  <39.373669, 30.064373, 22.646282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379745, 30.303848, 22.660927>,  <39.389874, 30.702974, 22.685335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379745, 30.303848, 22.660927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579816, -0.035066, 0.813993,
		-0.814354, 0.055988, -0.577661,
		-0.025318, -0.997815, -0.061019,
		39.372150, 30.004503, 22.642622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801758, 30.562284, 22.889774>,  <39.389874, 30.702974, 22.685335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801758, 30.562284, 22.889774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978836, 30.206606, 22.935982>,  <39.085083, 29.993198, 22.963707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.978836, 30.206606, 22.935982>,  <38.801758, 30.562284, 22.889774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978836, 30.206606, 22.935982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526426, -0.153448, 0.836259,
		-0.725874, -0.431023, -0.536028,
		0.442700, -0.889198, 0.115518,
		39.111645, 29.939846, 22.970636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314316, 30.176521, 23.076023>,  <38.801758, 30.562284, 22.889774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314316, 30.176521, 23.076023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654190, 30.008039, 23.202904>,  <38.858116, 29.906950, 23.279032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.654190, 30.008039, 23.202904>,  <38.314316, 30.176521, 23.076023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654190, 30.008039, 23.202904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391067, -0.099880, 0.914927,
		-0.353691, -0.901448, -0.249587,
		0.849688, -0.421207, 0.317200,
		38.909096, 29.881678, 23.298063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116573, 29.575617, 23.503778>,  <38.314316, 30.176521, 23.076023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116573, 29.575617, 23.503778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500908, 29.575647, 23.614624>,  <38.731510, 29.575665, 23.681131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500908, 29.575647, 23.614624>,  <38.116573, 29.575617, 23.503778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500908, 29.575647, 23.614624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273437, -0.162091, 0.948134,
		0.044989, -0.986776, -0.155723,
		0.960837, 0.000076, 0.277113,
		38.789158, 29.575670, 23.697758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183224, 29.043247, 23.922712>,  <38.116573, 29.575617, 23.503778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183224, 29.043247, 23.922712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471260, 29.299620, 24.029053>,  <38.644081, 29.453444, 24.092857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.471260, 29.299620, 24.029053>,  <38.183224, 29.043247, 23.922712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471260, 29.299620, 24.029053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264497, -0.100665, 0.959118,
		0.641489, -0.760971, 0.097036,
		0.720093, 0.640930, 0.265850,
		38.687286, 29.491899, 24.108809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393673, 28.734571, 24.573473>,  <38.183224, 29.043247, 23.922712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393673, 28.734571, 24.573473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495255, 29.121288, 24.562010>,  <38.556202, 29.353319, 24.555132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495255, 29.121288, 24.562010>,  <38.393673, 28.734571, 24.573473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495255, 29.121288, 24.562010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318475, 0.111558, 0.941344,
		0.913280, -0.229931, 0.336230,
		0.253954, 0.966792, -0.028656,
		38.571442, 29.411325, 24.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660450, 28.752182, 25.184317>,  <38.393673, 28.734571, 24.573473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660450, 28.752182, 25.184317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616394, 29.140530, 25.099199>,  <38.589962, 29.373539, 25.048130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616394, 29.140530, 25.099199>,  <38.660450, 28.752182, 25.184317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616394, 29.140530, 25.099199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409026, 0.150851, 0.899968,
		0.905852, 0.186158, 0.380496,
		-0.110138, 0.970870, -0.212792,
		38.583351, 29.431791, 25.035362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628723, 29.083492, 25.838207>,  <38.660450, 28.752182, 25.184317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628723, 29.083492, 25.838207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539669, 29.406563, 25.619816>,  <38.486237, 29.600405, 25.488781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.539669, 29.406563, 25.619816>,  <38.628723, 29.083492, 25.838207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539669, 29.406563, 25.619816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447898, 0.412690, 0.793142,
		0.865922, 0.421123, 0.269878,
		-0.222634, 0.807677, -0.545978,
		38.472878, 29.648867, 25.456022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988384, 29.786108, 26.036098>,  <38.628723, 29.083492, 25.838207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988384, 29.786108, 26.036098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638947, 29.864893, 25.858091>,  <38.429283, 29.912165, 25.751287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.638947, 29.864893, 25.858091>,  <38.988384, 29.786108, 26.036098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638947, 29.864893, 25.858091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355411, 0.366459, 0.859878,
		0.332445, 0.909348, -0.250134,
		-0.873592, 0.196962, -0.445019,
		38.376869, 29.923981, 25.724586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832165, 30.433661, 26.306293>,  <38.988384, 29.786108, 26.036098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832165, 30.433661, 26.306293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476608, 30.319258, 26.163141>,  <38.263275, 30.250616, 26.077250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476608, 30.319258, 26.163141>,  <38.832165, 30.433661, 26.306293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476608, 30.319258, 26.163141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452553, 0.426706, 0.783018,
		-0.071237, 0.857976, -0.508726,
		-0.888888, -0.286005, -0.357882,
		38.209942, 30.233456, 26.055777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310455, 31.114656, 26.450331>,  <38.832165, 30.433661, 26.306293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310455, 31.114656, 26.450331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557705, 31.226290, 26.744280>,  <39.706055, 31.293270, 26.920649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557705, 31.226290, 26.744280>,  <39.310455, 31.114656, 26.450331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557705, 31.226290, 26.744280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743475, 0.096041, -0.661832,
		-0.255285, 0.955451, -0.148128,
		0.618122, 0.279085, 0.734872,
		39.743141, 31.310015, 26.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654190, 31.736322, 26.223616>,  <39.310455, 31.114656, 26.450331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654190, 31.736322, 26.223616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894413, 31.564369, 26.493292>,  <40.038548, 31.461197, 26.655098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894413, 31.564369, 26.493292>,  <39.654190, 31.736322, 26.223616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894413, 31.564369, 26.493292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733840, -0.038487, -0.678231,
		0.317509, 0.902063, 0.292353,
		0.600555, -0.429884, 0.674190,
		40.074581, 31.435404, 26.695549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337009, 32.156483, 26.323910>,  <39.654190, 31.736322, 26.223616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337009, 32.156483, 26.323910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424519, 31.790289, 26.458979>,  <40.477024, 31.570572, 26.540020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.424519, 31.790289, 26.458979>,  <40.337009, 32.156483, 26.323910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424519, 31.790289, 26.458979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776999, -0.045892, -0.627826,
		0.590263, 0.399724, 0.701292,
		0.218774, -0.915486, 0.337674,
		40.490150, 31.515642, 26.560280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053242, 32.159073, 26.550138>,  <40.337009, 32.156483, 26.323910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053242, 32.159073, 26.550138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.964817, 31.779987, 26.458080>,  <40.911762, 31.552536, 26.402845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.964817, 31.779987, 26.458080>,  <41.053242, 32.159073, 26.550138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964817, 31.779987, 26.458080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876242, -0.089402, -0.473504,
		0.428173, -0.306334, 0.850192,
		-0.221060, -0.947716, -0.230143,
		40.898499, 31.495672, 26.389038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741585, 31.749462, 26.553421>,  <41.053242, 32.159073, 26.550138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741585, 31.749462, 26.553421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.496506, 31.526917, 26.328899>,  <41.349457, 31.393389, 26.194187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.496506, 31.526917, 26.328899>,  <41.741585, 31.749462, 26.553421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496506, 31.526917, 26.328899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751275, -0.189548, -0.632184,
		0.245330, -0.809031, 0.534118,
		-0.612698, -0.556364, -0.561303,
		41.312695, 31.360008, 26.160509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084976, 31.169891, 26.455585>,  <41.741585, 31.749462, 26.553421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084976, 31.169891, 26.455585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.823620, 31.186338, 26.153225>,  <41.666805, 31.196207, 25.971807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.823620, 31.186338, 26.153225>,  <42.084976, 31.169891, 26.455585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823620, 31.186338, 26.153225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739011, -0.181862, -0.648682,
		-0.164142, -0.982464, 0.088441,
		-0.653391, 0.041117, -0.755903,
		41.627602, 31.198673, 25.926455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255207, 30.522606, 26.018984>,  <42.084976, 31.169891, 26.455585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255207, 30.522606, 26.018984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.026180, 30.745893, 25.778797>,  <41.888763, 30.879866, 25.634686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.026180, 30.745893, 25.778797>,  <42.255207, 30.522606, 26.018984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026180, 30.745893, 25.778797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508254, -0.333009, -0.794219,
		-0.643310, -0.759930, -0.093049,
		-0.572565, 0.558222, -0.600465,
		41.854412, 30.913361, 25.598658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870205, 30.013342, 25.393618>,  <42.255207, 30.522606, 26.018984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870205, 30.013342, 25.393618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.905182, 30.391056, 25.266701>,  <41.926167, 30.617685, 25.190550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.905182, 30.391056, 25.266701>,  <41.870205, 30.013342, 25.393618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905182, 30.391056, 25.266701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484111, -0.318655, -0.814920,
		-0.870626, -0.082346, -0.485004,
		0.087443, 0.944287, -0.317294,
		41.931416, 30.674343, 25.171513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766792, 29.935429, 24.713972>,  <41.870205, 30.013342, 25.393618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766792, 29.935429, 24.713972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950619, 30.286509, 24.768297>,  <42.060913, 30.497156, 24.800892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950619, 30.286509, 24.768297>,  <41.766792, 29.935429, 24.713972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950619, 30.286509, 24.768297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528426, -0.147306, -0.836102,
		-0.713841, 0.456008, -0.531495,
		0.459562, 0.877700, 0.135814,
		42.088486, 30.549818, 24.809042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761719, 30.309509, 24.083256>,  <41.766792, 29.935429, 24.713972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761719, 30.309509, 24.083256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065487, 30.474134, 24.284807>,  <42.247749, 30.572910, 24.405739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.065487, 30.474134, 24.284807>,  <41.761719, 30.309509, 24.083256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065487, 30.474134, 24.284807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582191, -0.084197, -0.808680,
		-0.290397, 0.907484, -0.303549,
		0.759423, 0.411562, 0.503879,
		42.293312, 30.597603, 24.435970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692459, 30.990423, 23.913275>,  <41.761719, 30.309509, 24.083256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692459, 30.990423, 23.913275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070827, 30.962095, 24.039907>,  <42.297848, 30.945099, 24.115887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.070827, 30.962095, 24.039907>,  <41.692459, 30.990423, 23.913275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070827, 30.962095, 24.039907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323460, 0.131495, -0.937061,
		0.024733, 0.988784, 0.147290,
		0.945918, -0.070819, 0.316580,
		42.354603, 30.940849, 24.134882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995190, 31.404726, 23.492149>,  <41.692459, 30.990423, 23.913275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995190, 31.404726, 23.492149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289738, 31.169292, 23.625616>,  <42.466465, 31.028032, 23.705696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289738, 31.169292, 23.625616>,  <41.995190, 31.404726, 23.492149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289738, 31.169292, 23.625616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444922, 0.049724, -0.894188,
		0.509712, 0.806907, 0.298488,
		0.736369, -0.588582, 0.333665,
		42.510647, 30.992718, 23.725716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589844, 31.657581, 23.361383>,  <41.995190, 31.404726, 23.492149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589844, 31.657581, 23.361383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709206, 31.277487, 23.397177>,  <42.780823, 31.049431, 23.418653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.709206, 31.277487, 23.397177>,  <42.589844, 31.657581, 23.361383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709206, 31.277487, 23.397177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410037, 0.042968, -0.911056,
		0.861874, 0.308552, 0.402454,
		0.298400, -0.950237, 0.089485,
		42.798725, 30.992416, 23.424023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289368, 31.626415, 23.146990>,  <42.589844, 31.657581, 23.361383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289368, 31.626415, 23.146990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.152748, 31.252676, 23.106323>,  <43.070774, 31.028433, 23.081923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.152748, 31.252676, 23.106323>,  <43.289368, 31.626415, 23.146990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152748, 31.252676, 23.106323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534626, -0.104178, -0.838643,
		0.772993, -0.340793, 0.535109,
		-0.341551, -0.934348, -0.101668,
		43.050282, 30.972372, 23.075823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914181, 31.871178, 23.363491>,  <43.289368, 31.626415, 23.146990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914181, 31.871178, 23.363491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.089375, 32.216835, 23.264359>,  <44.194492, 32.424229, 23.204880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.089375, 32.216835, 23.264359>,  <43.914181, 31.871178, 23.363491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089375, 32.216835, 23.264359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288471, 0.396198, 0.871671,
		0.851441, -0.310289, 0.422811,
		0.437987, 0.864146, -0.247830,
		44.220772, 32.476078, 23.190010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250557, 32.106640, 23.952276>,  <43.914181, 31.871178, 23.363491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250557, 32.106640, 23.952276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.189396, 32.436607, 23.734608>,  <44.152699, 32.634590, 23.604006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.189396, 32.436607, 23.734608>,  <44.250557, 32.106640, 23.952276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189396, 32.436607, 23.734608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442550, 0.435189, 0.784066,
		0.883611, 0.360712, 0.298526,
		-0.152907, 0.824922, -0.544172,
		44.143524, 32.684086, 23.571356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452911, 32.630466, 24.427809>,  <44.250557, 32.106640, 23.952276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452911, 32.630466, 24.427809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236385, 32.792488, 24.133078>,  <44.106468, 32.889702, 23.956240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.236385, 32.792488, 24.133078>,  <44.452911, 32.630466, 24.427809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236385, 32.792488, 24.133078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584353, 0.448871, 0.676052,
		0.604575, 0.796524, -0.006288,
		-0.541314, 0.405050, -0.736827,
		44.073990, 32.914001, 23.912029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500957, 33.391216, 24.460199>,  <44.452911, 32.630466, 24.427809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500957, 33.391216, 24.460199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.167782, 33.300945, 24.258099>,  <43.967876, 33.246780, 24.136839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.167782, 33.300945, 24.258099>,  <44.500957, 33.391216, 24.460199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167782, 33.300945, 24.258099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544823, 0.494250, 0.677411,
		0.096843, 0.839515, -0.534637,
		-0.832940, -0.225679, -0.505252,
		43.917900, 33.233242, 24.106524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087048, 34.050945, 24.385241>,  <44.500957, 33.391216, 24.460199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087048, 34.050945, 24.385241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.827557, 33.753014, 24.322769>,  <43.671864, 33.574257, 24.285286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.827557, 33.753014, 24.322769>,  <44.087048, 34.050945, 24.385241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827557, 33.753014, 24.322769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651960, 0.438066, 0.618907,
		-0.392563, 0.503320, -0.769781,
		-0.648724, -0.744826, -0.156176,
		43.632938, 33.529564, 24.275917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498817, 34.396965, 24.483042>,  <44.087048, 34.050945, 24.385241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498817, 34.396965, 24.483042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.340202, 34.030384, 24.461620>,  <43.245033, 33.810436, 24.448769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.340202, 34.030384, 24.461620>,  <43.498817, 34.396965, 24.483042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340202, 34.030384, 24.461620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703270, 0.265766, 0.659378,
		-0.590057, 0.299131, -0.749902,
		-0.396538, -0.916455, -0.053553,
		43.221241, 33.755447, 24.445555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777378, 34.515652, 24.363016>,  <43.498817, 34.396965, 24.483042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777378, 34.515652, 24.363016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.807362, 34.140049, 24.497265>,  <42.825352, 33.914688, 24.577814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.807362, 34.140049, 24.497265>,  <42.777378, 34.515652, 24.363016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807362, 34.140049, 24.497265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794928, 0.146935, 0.588642,
		-0.602055, -0.310921, -0.735430,
		0.074961, -0.939009, 0.335622,
		42.829849, 33.858345, 24.597952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069649, 34.224049, 24.344584>,  <42.777378, 34.515652, 24.363016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069649, 34.224049, 24.344584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.286423, 34.003456, 24.598253>,  <42.416485, 33.871101, 24.750456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.286423, 34.003456, 24.598253>,  <42.069649, 34.224049, 24.344584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286423, 34.003456, 24.598253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666052, 0.178351, 0.724269,
		-0.512527, -0.814898, -0.270662,
		0.541932, -0.551482, 0.634174,
		42.449001, 33.838013, 24.788506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539387, 33.759480, 24.636621>,  <42.069649, 34.224049, 24.344584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539387, 33.759480, 24.636621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.848614, 33.784348, 24.889130>,  <42.034149, 33.799271, 25.040634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.848614, 33.784348, 24.889130>,  <41.539387, 33.759480, 24.636621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848614, 33.784348, 24.889130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615885, 0.311770, 0.723522,
		-0.151827, -0.948121, 0.279311,
		0.773068, 0.062174, 0.631269,
		42.080536, 33.803001, 25.078510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295101, 33.432785, 25.196802>,  <41.539387, 33.759480, 24.636621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295101, 33.432785, 25.196802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.625889, 33.614029, 25.329958>,  <41.824360, 33.722775, 25.409851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.625889, 33.614029, 25.329958>,  <41.295101, 33.432785, 25.196802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625889, 33.614029, 25.329958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401228, 0.060812, 0.913958,
		0.393883, -0.889376, 0.232091,
		0.826966, 0.453113, 0.332889,
		41.873978, 33.749962, 25.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428661, 33.077019, 25.751801>,  <41.295101, 33.432785, 25.196802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428661, 33.077019, 25.751801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576912, 33.445206, 25.801413>,  <41.665863, 33.666119, 25.831179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576912, 33.445206, 25.801413>,  <41.428661, 33.077019, 25.751801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576912, 33.445206, 25.801413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293459, -0.010643, 0.955912,
		0.881204, -0.390680, 0.266174,
		0.370623, 0.920465, 0.124028,
		41.688099, 33.721344, 25.838621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550442, 33.055447, 26.415987>,  <41.428661, 33.077019, 25.751801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550442, 33.055447, 26.415987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557819, 33.447071, 26.334904>,  <41.562244, 33.682045, 26.286253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.557819, 33.447071, 26.334904>,  <41.550442, 33.055447, 26.415987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557819, 33.447071, 26.334904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427122, 0.191026, 0.883785,
		0.904006, 0.070284, 0.421703,
		0.018440, 0.979065, -0.202709,
		41.563351, 33.740791, 26.274092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786461, 33.331856, 27.012131>,  <41.550442, 33.055447, 26.415987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786461, 33.331856, 27.012131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641338, 33.653740, 26.824165>,  <41.554264, 33.846870, 26.711386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.641338, 33.653740, 26.824165>,  <41.786461, 33.331856, 27.012131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641338, 33.653740, 26.824165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500406, 0.257157, 0.826719,
		0.786108, 0.535085, 0.309382,
		-0.362806, 0.804707, -0.469913,
		41.532497, 33.895153, 26.683191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978840, 33.940353, 27.457558>,  <41.786461, 33.331856, 27.012131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978840, 33.940353, 27.457558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675930, 34.066624, 27.228861>,  <41.494183, 34.142384, 27.091642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.675930, 34.066624, 27.228861>,  <41.978840, 33.940353, 27.457558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675930, 34.066624, 27.228861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378856, 0.500753, 0.778277,
		0.531981, 0.805976, -0.259613,
		-0.757274, 0.315672, -0.571740,
		41.448750, 34.161327, 27.057339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.470543, 35.344849, 21.016562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238533, 35.082855, 20.822836>,  <43.099327, 34.925659, 20.706600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.238533, 35.082855, 20.822836>,  <43.470543, 35.344849, 21.016562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238533, 35.082855, 20.822836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732581, -0.159432, -0.661746,
		0.356220, -0.738630, 0.572306,
		-0.580029, -0.654987, -0.484313,
		43.064526, 34.886360, 20.677542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967690, 34.841347, 20.875818>,  <43.470543, 35.344849, 21.016562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967690, 34.841347, 20.875818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.647301, 34.802040, 20.639587>,  <43.455067, 34.778458, 20.497849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.647301, 34.802040, 20.639587>,  <43.967690, 34.841347, 20.875818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647301, 34.802040, 20.639587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598661, -0.142085, -0.788300,
		-0.006450, -0.984965, 0.172634,
		-0.800977, -0.098264, -0.590576,
		43.407009, 34.772560, 20.462414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948486, 34.094616, 20.732119>,  <43.967690, 34.841347, 20.875818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948486, 34.094616, 20.732119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.739574, 34.239941, 20.423513>,  <43.614227, 34.327137, 20.238350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.739574, 34.239941, 20.423513>,  <43.948486, 34.094616, 20.732119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739574, 34.239941, 20.423513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623976, -0.453863, -0.636131,
		-0.581275, -0.813641, 0.010343,
		-0.522276, 0.363314, -0.771512,
		43.582890, 34.348934, 20.192060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920338, 33.528111, 20.293097>,  <43.948486, 34.094616, 20.732119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920338, 33.528111, 20.293097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.867722, 33.861523, 20.078463>,  <43.836151, 34.061569, 19.949682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.867722, 33.861523, 20.078463>,  <43.920338, 33.528111, 20.293097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867722, 33.861523, 20.078463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535333, -0.395846, -0.746140,
		-0.834336, -0.385396, -0.394148,
		-0.131538, 0.833532, -0.536583,
		43.828259, 34.111584, 19.917488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796761, 33.265591, 19.525206>,  <43.920338, 33.528111, 20.293097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796761, 33.265591, 19.525206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907982, 33.649445, 19.508278>,  <43.974712, 33.879757, 19.498121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907982, 33.649445, 19.508278>,  <43.796761, 33.265591, 19.525206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907982, 33.649445, 19.508278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680124, -0.227791, -0.696809,
		-0.678321, 0.164968, -0.716007,
		0.278051, 0.959634, -0.042317,
		43.991398, 33.937336, 19.495583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696381, 33.383533, 18.781725>,  <43.796761, 33.265591, 19.525206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696381, 33.383533, 18.781725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936821, 33.687580, 18.880434>,  <44.081085, 33.870007, 18.939659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.936821, 33.687580, 18.880434>,  <43.696381, 33.383533, 18.781725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936821, 33.687580, 18.880434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554359, -0.174169, -0.813849,
		-0.575641, 0.626008, -0.526072,
		0.601102, 0.760118, 0.246774,
		44.117153, 33.915615, 18.954466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578499, 33.809063, 18.303223>,  <43.696381, 33.383533, 18.781725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578499, 33.809063, 18.303223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.938034, 33.911884, 18.445219>,  <44.153755, 33.973579, 18.530416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.938034, 33.911884, 18.445219>,  <43.578499, 33.809063, 18.303223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938034, 33.911884, 18.445219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373369, -0.024872, -0.927350,
		-0.229552, 0.966076, -0.118333,
		0.898834, 0.257057, 0.354993,
		44.207684, 33.989002, 18.551718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862762, 34.292202, 17.731869>,  <43.578499, 33.809063, 18.303223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862762, 34.292202, 17.731869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187263, 34.201214, 17.947321>,  <44.381966, 34.146622, 18.076591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.187263, 34.201214, 17.947321>,  <43.862762, 34.292202, 17.731869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187263, 34.201214, 17.947321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478306, -0.271653, -0.835122,
		0.336283, 0.935128, -0.111582,
		0.811257, -0.227467, 0.538629,
		44.430641, 34.132973, 18.108910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544910, 34.654987, 17.424526>,  <43.862762, 34.292202, 17.731869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544910, 34.654987, 17.424526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.636806, 34.326221, 17.633018>,  <44.691944, 34.128963, 17.758114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.636806, 34.326221, 17.633018>,  <44.544910, 34.654987, 17.424526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636806, 34.326221, 17.633018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592026, -0.307056, -0.745133,
		0.772480, 0.479768, 0.416050,
		0.229741, -0.821912, 0.521229,
		44.705730, 34.079647, 17.789387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293446, 34.617287, 17.314297>,  <44.544910, 34.654987, 17.424526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293446, 34.617287, 17.314297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144012, 34.260944, 17.417686>,  <45.054352, 34.047138, 17.479721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.144012, 34.260944, 17.417686>,  <45.293446, 34.617287, 17.314297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.144012, 34.260944, 17.417686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426950, -0.412519, -0.804700,
		0.823498, -0.190267, 0.534462,
		-0.373584, -0.890857, 0.258474,
		45.031937, 33.993687, 17.495228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795273, 34.185013, 17.159256>,  <45.293446, 34.617287, 17.314297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795273, 34.185013, 17.159256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.509243, 33.908096, 17.198044>,  <45.337627, 33.741947, 17.221317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.509243, 33.908096, 17.198044>,  <45.795273, 34.185013, 17.159256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509243, 33.908096, 17.198044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388288, -0.508695, -0.768415,
		0.581298, -0.511818, 0.632563,
		-0.715070, -0.692294, 0.096970,
		45.294724, 33.700409, 17.227135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164612, 33.679428, 17.183517>,  <45.795273, 34.185013, 17.159256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164612, 33.679428, 17.183517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.792725, 33.555508, 17.103861>,  <45.569592, 33.481155, 17.056067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.792725, 33.555508, 17.103861>,  <46.164612, 33.679428, 17.183517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792725, 33.555508, 17.103861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329629, -0.458828, -0.825119,
		0.164250, -0.832767, 0.528697,
		-0.929713, -0.309800, -0.199141,
		45.513809, 33.462566, 17.044119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215542, 32.976166, 17.106281>,  <46.164612, 33.679428, 17.183517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215542, 32.976166, 17.106281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.900406, 33.083435, 16.884508>,  <45.711327, 33.147797, 16.751444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.900406, 33.083435, 16.884508>,  <46.215542, 32.976166, 17.106281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900406, 33.083435, 16.884508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343066, -0.556541, -0.756682,
		-0.511483, -0.786351, 0.346465,
		-0.787840, 0.268170, -0.554431,
		45.664055, 33.163887, 16.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882027, 33.043682, 17.468006>,  <46.215542, 32.976166, 17.106281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882027, 33.043682, 17.468006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.909981, 32.647438, 17.514992>,  <46.926754, 32.409691, 17.543184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.909981, 32.647438, 17.514992>,  <46.882027, 33.043682, 17.468006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909981, 32.647438, 17.514992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458965, 0.072620, 0.885481,
		-0.885701, -0.115796, -0.449583,
		0.069887, -0.990615, 0.117466,
		46.930946, 32.350254, 17.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247448, 32.812305, 17.803419>,  <46.882027, 33.043682, 17.468006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247448, 32.812305, 17.803419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.557243, 32.569897, 17.875980>,  <46.743122, 32.424454, 17.919518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.557243, 32.569897, 17.875980>,  <46.247448, 32.812305, 17.803419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557243, 32.569897, 17.875980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124497, 0.135136, 0.982974,
		-0.620217, -0.783886, 0.029213,
		0.774488, -0.606020, 0.181405,
		46.789589, 32.388092, 17.930403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890182, 32.280418, 18.143356>,  <46.247448, 32.812305, 17.803419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890182, 32.280418, 18.143356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.273666, 32.249363, 18.252785>,  <46.503757, 32.230728, 18.318441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.273666, 32.249363, 18.252785>,  <45.890182, 32.280418, 18.143356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273666, 32.249363, 18.252785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279163, -0.073596, 0.957419,
		-0.054188, -0.994262, -0.092228,
		0.958714, -0.077627, 0.273573,
		46.561279, 32.226070, 18.334856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797180, 31.742937, 18.564880>,  <45.890182, 32.280418, 18.143356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797180, 31.742937, 18.564880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.130531, 31.942373, 18.660288>,  <46.330544, 32.062035, 18.717533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.130531, 31.942373, 18.660288>,  <45.797180, 31.742937, 18.564880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.130531, 31.942373, 18.660288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161569, -0.192938, 0.967817,
		0.528563, -0.845094, -0.080233,
		0.833376, 0.498589, 0.238521,
		46.380543, 32.091949, 18.731844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971729, 31.322851, 19.092585>,  <45.797180, 31.742937, 18.564880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971729, 31.322851, 19.092585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.204281, 31.645031, 19.138632>,  <46.343811, 31.838339, 19.166260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.204281, 31.645031, 19.138632>,  <45.971729, 31.322851, 19.092585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204281, 31.645031, 19.138632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301990, 0.082235, 0.949758,
		0.755516, -0.586930, 0.291047,
		0.581376, 0.805450, 0.115117,
		46.378693, 31.886665, 19.173166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434723, 31.189211, 19.742184>,  <45.971729, 31.322851, 19.092585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434723, 31.189211, 19.742184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.419365, 31.584005, 19.679720>,  <46.410149, 31.820883, 19.642242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.419365, 31.584005, 19.679720>,  <46.434723, 31.189211, 19.742184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419365, 31.584005, 19.679720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359181, 0.132198, 0.923858,
		0.932478, 0.091562, 0.349430,
		-0.038396, 0.986985, -0.156159,
		46.407845, 31.880100, 19.632872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742844, 31.491478, 20.290150>,  <46.434723, 31.189211, 19.742184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742844, 31.491478, 20.290150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.535351, 31.799051, 20.140669>,  <46.410854, 31.983595, 20.050980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.535351, 31.799051, 20.140669>,  <46.742844, 31.491478, 20.290150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535351, 31.799051, 20.140669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203860, 0.313255, 0.927530,
		0.830274, 0.557326, -0.005742,
		-0.518736, 0.768933, -0.373704,
		46.379730, 32.029732, 20.028557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891613, 32.219837, 20.672787>,  <46.742844, 31.491478, 20.290150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891613, 32.219837, 20.672787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.528210, 32.272968, 20.514311>,  <46.310165, 32.304848, 20.419226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.528210, 32.272968, 20.514311>,  <46.891613, 32.219837, 20.672787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528210, 32.272968, 20.514311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354457, 0.257132, 0.899024,
		0.221287, 0.957204, -0.186526,
		-0.908511, 0.132827, -0.396188,
		46.255657, 32.312817, 20.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641830, 32.879864, 20.953081>,  <46.891613, 32.219837, 20.672787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641830, 32.879864, 20.953081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.329914, 32.674023, 20.810472>,  <46.142765, 32.550518, 20.724907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.329914, 32.674023, 20.810472>,  <46.641830, 32.879864, 20.953081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329914, 32.674023, 20.810472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455145, 0.074999, 0.887253,
		-0.429845, 0.854142, -0.292703,
		-0.779793, -0.514604, -0.356520,
		46.095978, 32.519642, 20.703516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162960, 33.162296, 21.338182>,  <46.641830, 32.879864, 20.953081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162960, 33.162296, 21.338182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.969643, 32.845318, 21.189344>,  <45.853653, 32.655128, 21.100042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.969643, 32.845318, 21.189344>,  <46.162960, 33.162296, 21.338182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969643, 32.845318, 21.189344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486097, -0.110589, 0.866879,
		-0.728108, 0.599828, -0.331761,
		-0.483289, -0.792450, -0.372095,
		45.824657, 32.607582, 21.077717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415958, 33.470604, 21.347939>,  <46.162960, 33.162296, 21.338182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415958, 33.470604, 21.347939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431873, 33.071159, 21.361717>,  <45.441422, 32.831493, 21.369984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.431873, 33.071159, 21.361717>,  <45.415958, 33.470604, 21.347939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431873, 33.071159, 21.361717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657133, -0.000181, 0.753775,
		-0.752724, -0.052626, -0.656229,
		0.039787, -0.998614, 0.034446,
		45.443810, 32.771576, 21.372051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748444, 33.371128, 21.606525>,  <45.415958, 33.470604, 21.347939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748444, 33.371128, 21.606525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921078, 33.012852, 21.649363>,  <45.024658, 32.797886, 21.675064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921078, 33.012852, 21.649363>,  <44.748444, 33.371128, 21.606525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921078, 33.012852, 21.649363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502150, -0.139922, 0.853386,
		-0.749389, -0.422081, -0.510161,
		0.431580, -0.895695, 0.107092,
		45.050552, 32.744144, 21.681490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184780, 32.992508, 21.785490>,  <44.748444, 33.371128, 21.606525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184780, 32.992508, 21.785490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.488075, 32.775551, 21.930197>,  <44.670052, 32.645374, 22.017021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.488075, 32.775551, 21.930197>,  <44.184780, 32.992508, 21.785490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488075, 32.775551, 21.930197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509580, -0.146911, 0.847788,
		-0.406690, -0.827178, -0.387788,
		0.758242, -0.542396, 0.361767,
		44.715549, 32.612831, 22.038727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759739, 32.406025, 22.075274>,  <44.184780, 32.992508, 21.785490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759739, 32.406025, 22.075274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.132717, 32.460995, 22.208931>,  <44.356506, 32.493977, 22.289125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.132717, 32.460995, 22.208931>,  <43.759739, 32.406025, 22.075274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132717, 32.460995, 22.208931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353289, 0.153115, 0.922899,
		0.075668, -0.978606, 0.191323,
		0.932449, 0.137426, 0.334145,
		44.412453, 32.502224, 22.309174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802494, 31.926191, 22.656906>,  <43.759739, 32.406025, 22.075274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802494, 31.926191, 22.656906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.095886, 32.195591, 22.693579>,  <44.271919, 32.357231, 22.715582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.095886, 32.195591, 22.693579>,  <43.802494, 31.926191, 22.656906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095886, 32.195591, 22.693579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310433, 0.211935, 0.926669,
		0.604682, -0.708153, 0.364527,
		0.733479, 0.673501, 0.091681,
		44.315929, 32.397640, 22.721083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884506, 31.155241, 22.848824>,  <43.802494, 31.926191, 22.656906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884506, 31.155241, 22.848824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.592068, 30.884699, 22.812960>,  <43.416603, 30.722374, 22.791441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.592068, 30.884699, 22.812960>,  <43.884506, 31.155241, 22.848824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592068, 30.884699, 22.812960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443603, -0.371387, -0.815652,
		0.518371, -0.636096, 0.571553,
		-0.731100, -0.676353, -0.089658,
		43.372738, 30.681793, 22.786062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198666, 30.447752, 22.699295>,  <43.884506, 31.155241, 22.848824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198666, 30.447752, 22.699295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.816341, 30.410471, 22.587765>,  <43.586948, 30.388102, 22.520845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.816341, 30.410471, 22.587765>,  <44.198666, 30.447752, 22.699295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816341, 30.410471, 22.587765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292081, -0.409012, -0.864522,
		-0.033466, -0.907756, 0.418161,
		-0.955808, -0.093205, -0.278826,
		43.529598, 30.382509, 22.504116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038708, 29.764511, 22.543695>,  <44.198666, 30.447752, 22.699295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038708, 29.764511, 22.543695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.764545, 29.976551, 22.344011>,  <43.600048, 30.103775, 22.224201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.764545, 29.976551, 22.344011>,  <44.038708, 29.764511, 22.543695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764545, 29.976551, 22.344011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379866, -0.324593, -0.866222,
		-0.621227, -0.783346, 0.021111,
		-0.685404, 0.530101, -0.499213,
		43.558926, 30.135582, 22.194248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777218, 29.350275, 22.105902>,  <44.038708, 29.764511, 22.543695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777218, 29.350275, 22.105902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659637, 29.690346, 21.931181>,  <43.589088, 29.894388, 21.826349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.659637, 29.690346, 21.931181>,  <43.777218, 29.350275, 22.105902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659637, 29.690346, 21.931181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282109, -0.359461, -0.889496,
		-0.913240, -0.384694, -0.134178,
		-0.293952, 0.850175, -0.436800,
		43.571453, 29.945398, 21.800140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354828, 29.131212, 21.559471>,  <43.777218, 29.350275, 22.105902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354828, 29.131212, 21.559471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.446537, 29.511166, 21.474472>,  <43.501560, 29.739138, 21.423473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.446537, 29.511166, 21.474472>,  <43.354828, 29.131212, 21.559471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446537, 29.511166, 21.474472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267447, -0.271385, -0.924566,
		-0.935899, 0.155143, -0.316264,
		0.229270, 0.949885, -0.212497,
		43.515316, 29.796131, 21.410723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128452, 29.145264, 20.926378>,  <43.354828, 29.131212, 21.559471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128452, 29.145264, 20.926378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384537, 29.450497, 20.961796>,  <43.538185, 29.633636, 20.983047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384537, 29.450497, 20.961796>,  <43.128452, 29.145264, 20.926378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384537, 29.450497, 20.961796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439745, -0.269525, -0.856727,
		-0.629886, 0.587422, -0.508113,
		0.640209, 0.763080, 0.088546,
		43.576599, 29.679420, 20.988359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157692, 29.596842, 20.183596>,  <43.128452, 29.145264, 20.926378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157692, 29.596842, 20.183596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482170, 29.648191, 20.411798>,  <43.676857, 29.679001, 20.548719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482170, 29.648191, 20.411798>,  <43.157692, 29.596842, 20.183596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482170, 29.648191, 20.411798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584555, -0.151566, -0.797072,
		-0.015853, 0.980076, -0.197991,
		0.811199, 0.128373, 0.570505,
		43.725529, 29.686703, 20.582951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929382, 29.656849, 19.491236>,  <43.157692, 29.596842, 20.183596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929382, 29.656849, 19.491236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700474, 29.329153, 19.476515>,  <42.563129, 29.132536, 19.467682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.700474, 29.329153, 19.476515>,  <42.929382, 29.656849, 19.491236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700474, 29.329153, 19.476515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656659, 0.430895, 0.618974,
		-0.491230, 0.378386, -0.784549,
		-0.572269, -0.819239, -0.036802,
		42.528793, 29.083382, 19.465475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237278, 29.901501, 19.402334>,  <42.929382, 29.656849, 19.491236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237278, 29.901501, 19.402334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173897, 29.526331, 19.525745>,  <42.135868, 29.301229, 19.599792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.173897, 29.526331, 19.525745>,  <42.237278, 29.901501, 19.402334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173897, 29.526331, 19.525745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789561, 0.307988, 0.530789,
		-0.592863, -0.159499, -0.789350,
		-0.158450, -0.937925, 0.308528,
		42.126362, 29.244953, 19.618303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527542, 29.733816, 19.298033>,  <42.237278, 29.901501, 19.402334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527542, 29.733816, 19.298033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670715, 29.492674, 19.583256>,  <41.756618, 29.347988, 19.754389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670715, 29.492674, 19.583256>,  <41.527542, 29.733816, 19.298033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670715, 29.492674, 19.583256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667319, 0.368989, 0.646940,
		-0.653120, -0.707400, -0.270221,
		0.357937, -0.602854, 0.713056,
		41.778095, 29.311817, 19.797173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882889, 29.355667, 19.489960>,  <41.527542, 29.733816, 19.298033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882889, 29.355667, 19.489960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135853, 29.269913, 19.787710>,  <41.287632, 29.218460, 19.966360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135853, 29.269913, 19.787710>,  <40.882889, 29.355667, 19.489960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135853, 29.269913, 19.787710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737881, 0.125764, 0.663111,
		-0.235778, -0.968618, -0.078658,
		0.632409, -0.214387, 0.744377,
		41.325577, 29.205597, 20.011023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524559, 28.811234, 19.920326>,  <40.882889, 29.355667, 19.489960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524559, 28.811234, 19.920326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.809231, 28.986788, 20.139740>,  <40.980034, 29.092121, 20.271387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.809231, 28.986788, 20.139740>,  <40.524559, 28.811234, 19.920326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809231, 28.986788, 20.139740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648571, 0.110455, 0.753097,
		0.269938, -0.891726, 0.363260,
		0.711681, 0.438890, 0.548532,
		41.022736, 29.118454, 20.304300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538715, 28.467487, 20.520338>,  <40.524559, 28.811234, 19.920326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538715, 28.467487, 20.520338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696278, 28.824923, 20.606447>,  <40.790813, 29.039383, 20.658113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696278, 28.824923, 20.606447>,  <40.538715, 28.467487, 20.520338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696278, 28.824923, 20.606447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581547, 0.060922, 0.811228,
		0.711787, -0.444739, 0.543660,
		0.393906, 0.893586, 0.215273,
		40.814449, 29.092999, 20.671028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635971, 28.462145, 21.264465>,  <40.538715, 28.467487, 20.520338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635971, 28.462145, 21.264465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659969, 28.854111, 21.188395>,  <40.674370, 29.089291, 21.142752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.659969, 28.854111, 21.188395>,  <40.635971, 28.462145, 21.264465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659969, 28.854111, 21.188395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532734, 0.192554, 0.824086,
		0.844153, 0.051869, 0.533587,
		0.060000, 0.979915, -0.190177,
		40.677971, 29.148085, 21.131342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.891991, 32.640987, 15.123528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.139229, 32.768562, 15.410926>,  <43.287571, 32.845108, 15.583364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.139229, 32.768562, 15.410926>,  <42.891991, 32.640987, 15.123528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139229, 32.768562, 15.410926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614579, -0.373843, 0.694647,
		0.490153, -0.870931, -0.035059,
		0.618096, 0.318937, 0.718496,
		43.324657, 32.864243, 15.626474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972515, 32.116077, 15.609646>,  <42.891991, 32.640987, 15.123528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972515, 32.116077, 15.609646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.073357, 32.450562, 15.804456>,  <43.133862, 32.651253, 15.921342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.073357, 32.450562, 15.804456>,  <42.972515, 32.116077, 15.609646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073357, 32.450562, 15.804456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640170, -0.233297, 0.731952,
		0.725688, -0.496309, 0.476502,
		0.252108, 0.836211, 0.487024,
		43.148991, 32.701424, 15.950563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981998, 31.971945, 16.373608>,  <42.972515, 32.116077, 15.609646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981998, 31.971945, 16.373608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.943092, 32.369671, 16.356281>,  <42.919750, 32.608307, 16.345886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.943092, 32.369671, 16.356281>,  <42.981998, 31.971945, 16.373608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943092, 32.369671, 16.356281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684843, -0.035282, 0.727836,
		0.722171, 0.100454, 0.684382,
		-0.097261, 0.994316, -0.043315,
		42.913914, 32.667965, 16.343287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048344, 32.191990, 17.036638>,  <42.981998, 31.971945, 16.373608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048344, 32.191990, 17.036638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.873882, 32.503922, 16.857025>,  <42.769207, 32.691082, 16.749256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.873882, 32.503922, 16.857025>,  <43.048344, 32.191990, 17.036638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873882, 32.503922, 16.857025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672553, 0.049038, 0.738423,
		0.597866, 0.624064, 0.503091,
		-0.436153, 0.779833, -0.449034,
		42.743038, 32.737873, 16.722315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907131, 32.697563, 17.588303>,  <43.048344, 32.191990, 17.036638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907131, 32.697563, 17.588303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650616, 32.793980, 17.296921>,  <42.496708, 32.851830, 17.122091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650616, 32.793980, 17.296921>,  <42.907131, 32.697563, 17.588303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650616, 32.793980, 17.296921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671632, 0.282725, 0.684818,
		0.371025, 0.928420, -0.019415,
		-0.641288, 0.241045, -0.728455,
		42.458229, 32.866295, 17.078384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685982, 33.343033, 17.720030>,  <42.907131, 32.697563, 17.588303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685982, 33.343033, 17.720030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.403168, 33.169559, 17.496595>,  <42.233479, 33.065475, 17.362535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.403168, 33.169559, 17.496595>,  <42.685982, 33.343033, 17.720030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403168, 33.169559, 17.496595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697341, 0.296295, 0.652630,
		-0.117526, 0.850959, -0.511914,
		-0.707039, -0.433680, -0.558586,
		42.191055, 33.039455, 17.329020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983700, 33.794052, 17.639568>,  <42.685982, 33.343033, 17.720030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983700, 33.794052, 17.639568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.855808, 33.427296, 17.544004>,  <41.779072, 33.207241, 17.486666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.855808, 33.427296, 17.544004>,  <41.983700, 33.794052, 17.639568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855808, 33.427296, 17.544004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893986, 0.208381, 0.396695,
		-0.313943, 0.340418, -0.886315,
		-0.319734, -0.916893, -0.238909,
		41.759888, 33.152229, 17.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303349, 33.942825, 17.533953>,  <41.983700, 33.794052, 17.639568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303349, 33.942825, 17.533953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315193, 33.544964, 17.573519>,  <41.322300, 33.306248, 17.597258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.315193, 33.544964, 17.573519>,  <41.303349, 33.942825, 17.533953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315193, 33.544964, 17.573519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918692, 0.011909, 0.394796,
		-0.393864, -0.102562, -0.913429,
		0.029613, -0.994655, 0.098914,
		41.324078, 33.246567, 17.603193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653530, 33.594265, 17.272882>,  <41.303349, 33.942825, 17.533953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653530, 33.594265, 17.272882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830978, 33.368229, 17.551125>,  <40.937447, 33.232605, 17.718071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.830978, 33.368229, 17.551125>,  <40.653530, 33.594265, 17.272882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830978, 33.368229, 17.551125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858561, -0.045358, 0.510701,
		-0.257042, -0.823779, -0.505289,
		0.443624, -0.565093, 0.695606,
		40.964066, 33.198700, 17.759806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029678, 33.225040, 17.531321>,  <40.653530, 33.594265, 17.272882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029678, 33.225040, 17.531321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.335884, 33.150894, 17.777775>,  <40.519608, 33.106407, 17.925648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.335884, 33.150894, 17.777775>,  <40.029678, 33.225040, 17.531321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335884, 33.150894, 17.777775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643409, -0.216262, 0.734340,
		-0.002877, -0.958577, -0.284820,
		0.765517, -0.185369, 0.616135,
		40.565540, 33.095284, 17.962616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824436, 32.604034, 17.906530>,  <40.029678, 33.225040, 17.531321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824436, 32.604034, 17.906530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098236, 32.820301, 18.102137>,  <40.262516, 32.950062, 18.219500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098236, 32.820301, 18.102137>,  <39.824436, 32.604034, 17.906530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098236, 32.820301, 18.102137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633972, 0.110313, 0.765447,
		0.359907, -0.833973, 0.418277,
		0.684504, 0.540667, 0.489013,
		40.303589, 32.982502, 18.248840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729767, 32.361229, 18.570774>,  <39.824436, 32.604034, 17.906530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729767, 32.361229, 18.570774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943401, 32.698814, 18.590660>,  <40.071583, 32.901367, 18.602592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.943401, 32.698814, 18.590660>,  <39.729767, 32.361229, 18.570774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943401, 32.698814, 18.590660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577755, 0.321423, 0.750258,
		0.617213, -0.429425, 0.659274,
		0.534085, 0.843967, 0.049716,
		40.103626, 32.952003, 18.605576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985691, 31.855295, 19.090837>,  <39.729767, 32.361229, 18.570774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985691, 31.855295, 19.090837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.777935, 31.541586, 19.226572>,  <39.653282, 31.353359, 19.308012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.777935, 31.541586, 19.226572>,  <39.985691, 31.855295, 19.090837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777935, 31.541586, 19.226572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642811, -0.620224, -0.449574,
		0.563055, -0.015374, 0.826277,
		-0.519388, -0.784274, 0.339337,
		39.622120, 31.306303, 19.328373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457310, 31.371527, 19.386251>,  <39.985691, 31.855295, 19.090837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457310, 31.371527, 19.386251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128941, 31.181868, 19.258961>,  <39.931919, 31.068071, 19.182587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128941, 31.181868, 19.258961>,  <40.457310, 31.371527, 19.386251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128941, 31.181868, 19.258961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497500, -0.320288, -0.806169,
		0.280320, -0.820121, 0.498821,
		-0.820923, -0.474149, -0.318227,
		39.882664, 31.039623, 19.163492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719135, 30.732487, 19.196667>,  <40.457310, 31.371527, 19.386251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719135, 30.732487, 19.196667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372730, 30.759691, 18.998520>,  <40.164886, 30.776014, 18.879631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.372730, 30.759691, 18.998520>,  <40.719135, 30.732487, 19.196667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372730, 30.759691, 18.998520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420801, -0.435989, -0.795513,
		-0.270078, -0.897378, 0.348955,
		-0.866016, 0.068010, -0.495368,
		40.112926, 30.780094, 18.849909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503563, 30.015224, 18.953348>,  <40.719135, 30.732487, 19.196667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503563, 30.015224, 18.953348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328926, 30.288507, 18.719215>,  <40.224144, 30.452478, 18.578735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328926, 30.288507, 18.719215>,  <40.503563, 30.015224, 18.953348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328926, 30.288507, 18.719215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435629, -0.408711, -0.801987,
		-0.787156, -0.605129, -0.119186,
		-0.436593, 0.683210, -0.585330,
		40.197948, 30.493471, 18.543617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487469, 29.648727, 18.415676>,  <40.503563, 30.015224, 18.953348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487469, 29.648727, 18.415676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386204, 30.004644, 18.263794>,  <40.325443, 30.218195, 18.172665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.386204, 30.004644, 18.263794>,  <40.487469, 29.648727, 18.415676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386204, 30.004644, 18.263794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414042, -0.255071, -0.873790,
		-0.874343, -0.378428, -0.303836,
		-0.253167, 0.889793, -0.379705,
		40.310253, 30.271582, 18.149883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041904, 29.574600, 17.773592>,  <40.487469, 29.648727, 18.415676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041904, 29.574600, 17.773592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242870, 29.920134, 17.758818>,  <40.363449, 30.127455, 17.749952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242870, 29.920134, 17.758818>,  <40.041904, 29.574600, 17.773592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242870, 29.920134, 17.758818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441422, -0.293000, -0.848114,
		-0.743453, 0.409804, -0.528524,
		0.502418, 0.863835, -0.036935,
		40.393597, 30.179285, 17.747738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020569, 29.789568, 17.089083>,  <40.041904, 29.574600, 17.773592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020569, 29.789568, 17.089083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326115, 30.004652, 17.231846>,  <40.509441, 30.133703, 17.317503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.326115, 30.004652, 17.231846>,  <40.020569, 29.789568, 17.089083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326115, 30.004652, 17.231846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568277, -0.298264, -0.766876,
		-0.305905, 0.788610, -0.533401,
		0.763861, 0.537711, 0.356909,
		40.555271, 30.165966, 17.338919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179844, 30.227051, 16.572834>,  <40.020569, 29.789568, 17.089083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179844, 30.227051, 16.572834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506008, 30.233269, 16.804304>,  <40.701706, 30.237000, 16.943186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506008, 30.233269, 16.804304>,  <40.179844, 30.227051, 16.572834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506008, 30.233269, 16.804304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574850, -0.139590, -0.806264,
		0.068243, 0.990087, -0.122760,
		0.815408, 0.015547, 0.578678,
		40.750629, 30.237932, 16.977907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704380, 30.522045, 16.096640>,  <40.179844, 30.227051, 16.572834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704380, 30.522045, 16.096640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.900517, 30.346285, 16.397701>,  <41.018200, 30.240828, 16.578339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.900517, 30.346285, 16.397701>,  <40.704380, 30.522045, 16.096640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900517, 30.346285, 16.397701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760482, -0.206117, -0.615778,
		0.425709, 0.874323, 0.233089,
		0.490345, -0.439402, 0.752653,
		41.047619, 30.214464, 16.623497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347569, 30.804237, 16.095226>,  <40.704380, 30.522045, 16.096640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347569, 30.804237, 16.095226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.357262, 30.433306, 16.244608>,  <41.363079, 30.210747, 16.334238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.357262, 30.433306, 16.244608>,  <41.347569, 30.804237, 16.095226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357262, 30.433306, 16.244608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787233, -0.212551, -0.578866,
		0.616179, 0.308025, 0.724875,
		0.024232, -0.927331, 0.373457,
		41.364532, 30.155106, 16.356646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057430, 30.622570, 16.021439>,  <41.347569, 30.804237, 16.095226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057430, 30.622570, 16.021439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883068, 30.271582, 16.101471>,  <41.778450, 30.060987, 16.149490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.883068, 30.271582, 16.101471>,  <42.057430, 30.622570, 16.021439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883068, 30.271582, 16.101471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723074, -0.473816, -0.502655,
		0.535866, -0.074436, 0.841015,
		-0.435903, -0.877472, 0.200080,
		41.752296, 30.008341, 16.161495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554726, 30.181791, 16.192043>,  <42.057430, 30.622570, 16.021439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554726, 30.181791, 16.192043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257030, 29.935806, 16.087791>,  <42.078411, 29.788216, 16.025240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257030, 29.935806, 16.087791>,  <42.554726, 30.181791, 16.192043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257030, 29.935806, 16.087791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625086, -0.503821, -0.596181,
		0.235317, -0.606619, 0.759368,
		-0.744240, -0.614962, -0.260631,
		42.033760, 29.751318, 16.009602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891064, 29.559246, 16.142359>,  <42.554726, 30.181791, 16.192043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891064, 29.559246, 16.142359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.551544, 29.525148, 15.933640>,  <42.347832, 29.504690, 15.808409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.551544, 29.525148, 15.933640>,  <42.891064, 29.559246, 16.142359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551544, 29.525148, 15.933640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511291, -0.383615, -0.769039,
		-0.134614, -0.919550, 0.369196,
		-0.848800, -0.085243, -0.521797,
		42.296906, 29.499575, 15.777102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575249, 28.826118, 15.948067>,  <42.891064, 29.559246, 16.142359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575249, 28.826118, 15.948067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.507183, 29.097878, 15.662560>,  <42.466343, 29.260933, 15.491257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.507183, 29.097878, 15.662560>,  <42.575249, 28.826118, 15.948067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507183, 29.097878, 15.662560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437482, -0.596951, -0.672502,
		-0.882981, -0.426692, -0.195648,
		-0.170159, 0.679399, -0.713767,
		42.456135, 29.301697, 15.448431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793171, 28.330349, 16.454884>,  <42.575249, 28.826118, 15.948067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793171, 28.330349, 16.454884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.142426, 28.257046, 16.635567>,  <43.351978, 28.213064, 16.743977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.142426, 28.257046, 16.635567>,  <42.793171, 28.330349, 16.454884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142426, 28.257046, 16.635567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436299, 0.119492, 0.891832,
		-0.217413, -0.975775, 0.024377,
		0.873141, -0.183260, 0.451709,
		43.404369, 28.202068, 16.771080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635780, 27.921761, 17.059959>,  <42.793171, 28.330349, 16.454884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635780, 27.921761, 17.059959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984985, 28.087521, 17.162813>,  <43.194508, 28.186977, 17.224525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.984985, 28.087521, 17.162813>,  <42.635780, 27.921761, 17.059959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984985, 28.087521, 17.162813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, 0.053695, 0.950678,
		0.380157, -0.908508, 0.173475,
		0.873013, 0.414403, 0.257135,
		43.246891, 28.211842, 17.239954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794369, 27.536825, 17.708887>,  <42.635780, 27.921761, 17.059959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794369, 27.536825, 17.708887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.996105, 27.882225, 17.707968>,  <43.117146, 28.089466, 17.707417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.996105, 27.882225, 17.707968>,  <42.794369, 27.536825, 17.708887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996105, 27.882225, 17.707968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282126, 0.167293, 0.944679,
		0.816115, -0.475793, 0.327989,
		0.504342, 0.863501, -0.002297,
		43.147408, 28.141275, 17.707279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037685, 27.497404, 18.348352>,  <42.794369, 27.536825, 17.708887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037685, 27.497404, 18.348352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.093758, 27.884369, 18.264006>,  <43.127399, 28.116549, 18.213398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.093758, 27.884369, 18.264006>,  <43.037685, 27.497404, 18.348352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093758, 27.884369, 18.264006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368792, 0.248660, 0.895634,
		0.918881, -0.047780, 0.391630,
		0.140176, 0.967412, -0.210869,
		43.135811, 28.174593, 18.200745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325165, 27.809120, 18.917181>,  <43.037685, 27.497404, 18.348352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325165, 27.809120, 18.917181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.190895, 28.125824, 18.713045>,  <43.110332, 28.315845, 18.590565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.190895, 28.125824, 18.713045>,  <43.325165, 27.809120, 18.917181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190895, 28.125824, 18.713045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439526, 0.347535, 0.828273,
		0.833152, 0.502333, 0.231341,
		-0.335670, 0.791758, -0.510338,
		43.090195, 28.363352, 18.559944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647312, 28.458593, 19.292755>,  <43.325165, 27.809120, 18.917181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647312, 28.458593, 19.292755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.316765, 28.544399, 19.084486>,  <43.118435, 28.595882, 18.959524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.316765, 28.544399, 19.084486>,  <43.647312, 28.458593, 19.292755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316765, 28.544399, 19.084486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424673, 0.369825, 0.826367,
		0.369825, 0.903999, -0.214513,
		-0.826367, 0.214513, -0.520675,
		43.068855, 28.608753, 18.928284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373772, 29.014137, 19.652061>,  <43.647312, 28.458593, 19.292755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373772, 29.014137, 19.652061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.057224, 28.939215, 19.419289>,  <42.867294, 28.894262, 19.279625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.057224, 28.939215, 19.419289>,  <43.373772, 29.014137, 19.652061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057224, 28.939215, 19.419289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607189, 0.351485, 0.712587,
		0.071070, 0.917265, -0.391885,
		-0.791372, -0.187305, -0.581934,
		42.819813, 28.883022, 19.244709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672523, 29.675692, 19.693644>,  <43.373772, 29.014137, 19.652061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672523, 29.675692, 19.693644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.900757, 29.707100, 20.020634>,  <44.037697, 29.725945, 20.216827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.900757, 29.707100, 20.020634>,  <43.672523, 29.675692, 19.693644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900757, 29.707100, 20.020634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811420, 0.099565, -0.575920,
		-0.126613, 0.991928, -0.006902,
		0.570584, 0.078520, 0.817477,
		44.071934, 29.730656, 20.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990005, 30.346439, 19.621763>,  <43.672523, 29.675692, 19.693644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990005, 30.346439, 19.621763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206970, 30.067162, 19.808659>,  <44.337147, 29.899595, 19.920795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.206970, 30.067162, 19.808659>,  <43.990005, 30.346439, 19.621763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206970, 30.067162, 19.808659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744821, 0.142374, -0.651899,
		0.388631, 0.701606, 0.597256,
		0.542410, -0.698196, 0.467240,
		44.369694, 29.857702, 19.948832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702961, 30.646688, 19.695518>,  <43.990005, 30.346439, 19.621763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702961, 30.646688, 19.695518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.734089, 30.248978, 19.724792>,  <44.752766, 30.010351, 19.742357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.734089, 30.248978, 19.724792>,  <44.702961, 30.646688, 19.695518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734089, 30.248978, 19.724792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803022, 0.019011, -0.595646,
		0.590847, 0.105123, 0.799906,
		0.077823, -0.994277, 0.073183,
		44.757435, 29.950695, 19.746748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413643, 30.517122, 19.701473>,  <44.702961, 30.646688, 19.695518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413643, 30.517122, 19.701473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.262283, 30.156872, 19.615978>,  <45.171467, 29.940722, 19.564680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.262283, 30.156872, 19.615978>,  <45.413643, 30.517122, 19.701473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262283, 30.156872, 19.615978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798324, -0.200666, -0.567813,
		0.468496, -0.385496, 0.794924,
		-0.378404, -0.900625, -0.213740,
		45.148762, 29.886684, 19.551857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011021, 30.147886, 19.659376>,  <45.413643, 30.517122, 19.701473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011021, 30.147886, 19.659376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.738388, 29.900793, 19.502483>,  <45.574806, 29.752537, 19.408348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.738388, 29.900793, 19.502483>,  <46.011021, 30.147886, 19.659376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738388, 29.900793, 19.502483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703576, -0.405967, -0.583243,
		0.201056, -0.673495, 0.711323,
		-0.681585, -0.617734, -0.392233,
		45.533913, 29.715473, 19.384813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355698, 29.550945, 19.521624>,  <46.011021, 30.147886, 19.659376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355698, 29.550945, 19.521624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.045147, 29.453863, 19.288958>,  <45.858818, 29.395615, 19.149359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.045147, 29.453863, 19.288958>,  <46.355698, 29.550945, 19.521624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045147, 29.453863, 19.288958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626442, -0.398691, -0.669788,
		-0.069344, -0.884387, 0.461575,
		-0.776377, -0.242704, -0.581664,
		45.812233, 29.381052, 19.114458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486786, 28.853268, 19.356924>,  <46.355698, 29.550945, 19.521624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486786, 28.853268, 19.356924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.249249, 29.029322, 19.087515>,  <46.106728, 29.134954, 18.925869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.249249, 29.029322, 19.087515>,  <46.486786, 28.853268, 19.356924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249249, 29.029322, 19.087515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616279, -0.289337, -0.732451,
		-0.517251, -0.850039, -0.099424,
		-0.593845, 0.440134, -0.673521,
		46.071095, 29.161362, 18.885458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417824, 28.336622, 18.813879>,  <46.486786, 28.853268, 19.356924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417824, 28.336622, 18.813879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.320087, 28.680101, 18.633686>,  <46.261444, 28.886189, 18.525570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.320087, 28.680101, 18.633686>,  <46.417824, 28.336622, 18.813879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320087, 28.680101, 18.633686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444294, -0.313793, -0.839129,
		-0.861916, -0.405182, -0.304841,
		-0.244343, 0.858698, -0.450483,
		46.246784, 28.937710, 18.498541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065247, 28.153219, 18.143200>,  <46.417824, 28.336622, 18.813879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065247, 28.153219, 18.143200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.235565, 28.513767, 18.111633>,  <46.337757, 28.730095, 18.092693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.235565, 28.513767, 18.111633>,  <46.065247, 28.153219, 18.143200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235565, 28.513767, 18.111633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461105, -0.291210, -0.838200,
		-0.778509, 0.320516, -0.539623,
		0.425800, 0.901369, -0.078918,
		46.363304, 28.784178, 18.087957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.760857, 32.776920, 30.721853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951557, 33.088528, 30.558962>,  <37.065979, 33.275494, 30.461227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951557, 33.088528, 30.558962>,  <36.760857, 32.776920, 30.721853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951557, 33.088528, 30.558962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489102, -0.620020, -0.613478,
		-0.730402, 0.093300, -0.676615,
		0.476752, 0.779019, -0.407230,
		37.094582, 33.322235, 30.436792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610271, 32.759884, 30.013220>,  <36.760857, 32.776920, 30.721853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610271, 32.759884, 30.013220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933701, 32.994675, 30.029531>,  <37.127758, 33.135548, 30.039318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933701, 32.994675, 30.029531>,  <36.610271, 32.759884, 30.013220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933701, 32.994675, 30.029531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461024, -0.588961, -0.663764,
		-0.365597, 0.555503, -0.746830,
		0.808576, 0.586977, 0.040778,
		37.176273, 33.170769, 30.041765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817596, 32.899128, 29.333506>,  <36.610271, 32.759884, 30.013220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817596, 32.899128, 29.333506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155785, 32.952827, 29.540257>,  <37.358696, 32.985046, 29.664307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.155785, 32.952827, 29.540257>,  <36.817596, 32.899128, 29.333506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155785, 32.952827, 29.540257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516994, -0.448263, -0.729231,
		0.133799, 0.883763, -0.448398,
		0.845467, 0.134249, 0.516877,
		37.409424, 32.993103, 29.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337429, 33.185207, 28.832855>,  <36.817596, 32.899128, 29.333506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337429, 33.185207, 28.832855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579552, 33.084255, 29.134825>,  <37.724827, 33.023682, 29.316006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579552, 33.084255, 29.134825>,  <37.337429, 33.185207, 28.832855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579552, 33.084255, 29.134825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628901, -0.429735, -0.647928,
		0.487942, 0.866967, -0.101397,
		0.605306, -0.252383, 0.754922,
		37.761143, 33.008541, 29.361301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040237, 33.460316, 28.768425>,  <37.337429, 33.185207, 28.832855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040237, 33.460316, 28.768425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063137, 33.143639, 29.011719>,  <38.076878, 32.953632, 29.157694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.063137, 33.143639, 29.011719>,  <38.040237, 33.460316, 28.768425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063137, 33.143639, 29.011719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692153, -0.407575, -0.595657,
		0.719477, 0.455089, 0.524639,
		0.057247, -0.791692, 0.608233,
		38.080311, 32.906132, 29.194189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727638, 33.339821, 28.923447>,  <38.040237, 33.460316, 28.768425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727638, 33.339821, 28.923447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559830, 32.987385, 29.010798>,  <38.459145, 32.775925, 29.063208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.559830, 32.987385, 29.010798>,  <38.727638, 33.339821, 28.923447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559830, 32.987385, 29.010798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699823, -0.467149, -0.540388,
		0.578144, -0.073876, 0.812584,
		-0.419520, -0.881087, 0.218379,
		38.433975, 32.723061, 29.076311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251820, 32.933899, 29.228109>,  <38.727638, 33.339821, 28.923447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251820, 32.933899, 29.228109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966396, 32.718166, 29.049242>,  <38.795143, 32.588726, 28.941921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966396, 32.718166, 29.049242>,  <39.251820, 32.933899, 29.228109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966396, 32.718166, 29.049242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695660, -0.469760, -0.543492,
		0.083060, -0.698889, 0.710391,
		-0.713554, -0.539333, -0.447170,
		38.752331, 32.556366, 28.915091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651508, 32.224773, 28.979969>,  <39.251820, 32.933899, 29.228109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651508, 32.224773, 28.979969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296207, 32.167400, 28.805416>,  <39.083027, 32.132977, 28.700684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.296207, 32.167400, 28.805416>,  <39.651508, 32.224773, 28.979969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296207, 32.167400, 28.805416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450429, -0.458303, -0.766207,
		-0.090095, -0.877146, 0.471697,
		-0.888255, -0.143435, -0.436382,
		39.029732, 32.124371, 28.674501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606850, 31.487362, 28.847385>,  <39.651508, 32.224773, 28.979969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606850, 31.487362, 28.847385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353264, 31.675884, 28.602123>,  <39.201111, 31.788998, 28.454966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353264, 31.675884, 28.602123>,  <39.606850, 31.487362, 28.847385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353264, 31.675884, 28.602123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362319, -0.519444, -0.773889,
		-0.683238, -0.712776, 0.158546,
		-0.633965, 0.471306, -0.613155,
		39.163074, 31.817276, 28.418177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369041, 30.981359, 28.404434>,  <39.606850, 31.487362, 28.847385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369041, 30.981359, 28.404434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297413, 31.327370, 28.216963>,  <39.254436, 31.534977, 28.104479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.297413, 31.327370, 28.216963>,  <39.369041, 30.981359, 28.404434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297413, 31.327370, 28.216963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333695, -0.394740, -0.856054,
		-0.925517, -0.309691, -0.217969,
		-0.179071, 0.865027, -0.468681,
		39.243690, 31.586878, 28.076359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018585, 30.834663, 27.799879>,  <39.369041, 30.981359, 28.404434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018585, 30.834663, 27.799879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.209690, 31.180862, 27.739672>,  <39.324352, 31.388582, 27.703547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.209690, 31.180862, 27.739672>,  <39.018585, 30.834663, 27.799879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209690, 31.180862, 27.739672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452925, -0.389491, -0.801970,
		-0.752727, 0.314981, -0.578090,
		0.477767, 0.865496, -0.150518,
		39.353020, 31.440512, 27.694517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984039, 30.891037, 27.062218>,  <39.018585, 30.834663, 27.799879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984039, 30.891037, 27.062218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268936, 31.130251, 27.209223>,  <39.439873, 31.273779, 27.297426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.268936, 31.130251, 27.209223>,  <38.984039, 30.891037, 27.062218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268936, 31.130251, 27.209223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605753, -0.259141, -0.752269,
		-0.354646, 0.758419, -0.546833,
		0.712242, 0.598035, 0.367512,
		39.482609, 31.309662, 27.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339546, 30.953459, 26.592600>,  <38.984039, 30.891037, 27.062218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339546, 30.953459, 26.592600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121075, 30.637232, 26.481833>,  <37.989990, 30.447495, 26.415371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121075, 30.637232, 26.481833>,  <38.339546, 30.953459, 26.592600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121075, 30.637232, 26.481833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691407, 0.238838, 0.681845,
		-0.472907, 0.563877, -0.677054,
		-0.546183, -0.790569, -0.276920,
		37.957218, 30.400061, 26.398756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661137, 31.230106, 26.448364>,  <38.339546, 30.953459, 26.592600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661137, 31.230106, 26.448364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640163, 30.839128, 26.530193>,  <37.627579, 30.604542, 26.579290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.640163, 30.839128, 26.530193>,  <37.661137, 31.230106, 26.448364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640163, 30.839128, 26.530193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620587, 0.192388, 0.760170,
		-0.782382, -0.087093, -0.616679,
		-0.052436, -0.977446, 0.204570,
		37.624432, 30.545895, 26.591564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874775, 31.058493, 26.579035>,  <37.661137, 31.230106, 26.448364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874775, 31.058493, 26.579035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107292, 30.786921, 26.758436>,  <37.246803, 30.623978, 26.866077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107292, 30.786921, 26.758436>,  <36.874775, 31.058493, 26.579035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107292, 30.786921, 26.758436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687093, -0.114285, 0.717525,
		-0.435891, -0.725255, -0.532920,
		0.581293, -0.678928, 0.448502,
		37.281681, 30.583242, 26.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492748, 30.514534, 26.627146>,  <36.874775, 31.058493, 26.579035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492748, 30.514534, 26.627146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782959, 30.441668, 26.892603>,  <36.957085, 30.397947, 27.051878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.782959, 30.441668, 26.892603>,  <36.492748, 30.514534, 26.627146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782959, 30.441668, 26.892603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687062, -0.136557, 0.713651,
		-0.039378, -0.973739, -0.224236,
		0.725531, -0.182166, 0.663642,
		37.000618, 30.387018, 27.091696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160378, 30.000862, 27.068094>,  <36.492748, 30.514534, 26.627146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160378, 30.000862, 27.068094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469124, 30.150229, 27.273926>,  <36.654369, 30.239847, 27.397425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469124, 30.150229, 27.273926>,  <36.160378, 30.000862, 27.068094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469124, 30.150229, 27.273926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534143, -0.058129, 0.843393,
		0.344848, -0.925841, 0.154590,
		0.771862, 0.373416, 0.514578,
		36.700684, 30.262253, 27.428299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116737, 29.709780, 27.698393>,  <36.160378, 30.000862, 27.068094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116737, 29.709780, 27.698393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346561, 30.032581, 27.752979>,  <36.484455, 30.226261, 27.785730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346561, 30.032581, 27.752979>,  <36.116737, 29.709780, 27.698393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346561, 30.032581, 27.752979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519013, 0.230326, 0.823150,
		0.632853, -0.543780, 0.551182,
		0.574564, 0.807003, 0.136466,
		36.518932, 30.274683, 27.793919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272629, 29.757387, 28.427406>,  <36.116737, 29.709780, 27.698393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272629, 29.757387, 28.427406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319660, 30.123936, 28.274338>,  <36.347881, 30.343864, 28.182497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.319660, 30.123936, 28.274338>,  <36.272629, 29.757387, 28.427406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319660, 30.123936, 28.274338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453514, 0.392367, 0.800234,
		0.883459, 0.079455, 0.461722,
		0.117582, 0.916371, -0.382673,
		36.354935, 30.398848, 28.159536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572979, 30.110731, 28.984674>,  <36.272629, 29.757387, 28.427406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572979, 30.110731, 28.984674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443165, 30.386799, 28.725958>,  <36.365276, 30.552441, 28.570728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443165, 30.386799, 28.725958>,  <36.572979, 30.110731, 28.984674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443165, 30.386799, 28.725958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510189, 0.448077, 0.734121,
		0.796482, 0.568235, 0.206700,
		-0.324536, 0.690170, -0.646793,
		36.345802, 30.593849, 28.531919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475403, 30.666277, 29.416422>,  <36.572979, 30.110731, 28.984674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475403, 30.666277, 29.416422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285927, 30.819815, 29.099363>,  <36.172241, 30.911938, 28.909128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285927, 30.819815, 29.099363>,  <36.475403, 30.666277, 29.416422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285927, 30.819815, 29.099363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545092, 0.579136, 0.606198,
		0.691734, 0.719212, -0.065099,
		-0.473686, 0.383843, -0.792645,
		36.143822, 30.934967, 28.861570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403263, 31.276159, 29.686901>,  <36.475403, 30.666277, 29.416422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403263, 31.276159, 29.686901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153881, 31.298254, 29.374937>,  <36.004253, 31.311512, 29.187759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153881, 31.298254, 29.374937>,  <36.403263, 31.276159, 29.686901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153881, 31.298254, 29.374937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554761, 0.671654, 0.491041,
		0.550953, 0.738803, -0.388099,
		-0.623451, 0.055239, -0.779909,
		35.966846, 31.314825, 29.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317654, 32.030666, 29.540567>,  <36.403263, 31.276159, 29.686901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317654, 32.030666, 29.540567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018181, 31.791119, 29.426846>,  <35.838497, 31.647390, 29.358612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018181, 31.791119, 29.426846>,  <36.317654, 32.030666, 29.540567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018181, 31.791119, 29.426846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658242, 0.620651, 0.426039,
		-0.078688, 0.506109, -0.858873,
		-0.748682, -0.598870, -0.284304,
		35.793575, 31.611458, 29.341555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858372, 32.433716, 29.225454>,  <36.317654, 32.030666, 29.540567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858372, 32.433716, 29.225454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649685, 32.110512, 29.334948>,  <35.524471, 31.916590, 29.400642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649685, 32.110512, 29.334948>,  <35.858372, 32.433716, 29.225454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649685, 32.110512, 29.334948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636980, 0.582388, 0.505055,
		-0.567507, 0.089136, -0.818529,
		-0.521721, -0.808009, 0.273731,
		35.493168, 31.868109, 29.417067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265518, 32.722515, 29.390394>,  <35.858372, 32.433716, 29.225454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265518, 32.722515, 29.390394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210888, 32.357533, 29.544678>,  <35.178112, 32.138542, 29.637247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.210888, 32.357533, 29.544678>,  <35.265518, 32.722515, 29.390394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210888, 32.357533, 29.544678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736948, 0.353777, 0.575977,
		-0.662009, -0.205585, -0.720749,
		-0.136572, -0.912457, 0.385708,
		35.169918, 32.083794, 29.660391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565712, 32.542583, 29.280262>,  <35.265518, 32.722515, 29.390394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565712, 32.542583, 29.280262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712612, 32.344509, 29.595201>,  <34.800755, 32.225666, 29.784164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712612, 32.344509, 29.595201>,  <34.565712, 32.542583, 29.280262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712612, 32.344509, 29.595201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706813, 0.401664, 0.582308,
		-0.604599, -0.770361, -0.202492,
		0.367254, -0.495187, 0.787347,
		34.822788, 32.195953, 29.831406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933598, 32.475807, 28.837070>,  <34.565712, 32.542583, 29.280262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933598, 32.475807, 28.837070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723507, 32.788754, 28.703186>,  <33.597450, 32.976521, 28.622856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723507, 32.788754, 28.703186>,  <33.933598, 32.475807, 28.837070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723507, 32.788754, 28.703186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372562, -0.142212, -0.917046,
		-0.765069, -0.606360, -0.216787,
		-0.525230, 0.782370, -0.334709,
		33.565937, 33.023464, 28.602774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544910, 32.294994, 28.228466>,  <33.933598, 32.475807, 28.837070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544910, 32.294994, 28.228466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608685, 32.687664, 28.186714>,  <33.646950, 32.923267, 28.161663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608685, 32.687664, 28.186714>,  <33.544910, 32.294994, 28.228466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608685, 32.687664, 28.186714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330784, -0.152742, -0.931263,
		-0.930140, 0.113953, -0.349075,
		0.159438, 0.981674, -0.104377,
		33.656517, 32.982166, 28.155401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368870, 32.355911, 27.602430>,  <33.544910, 32.294994, 28.228466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368870, 32.355911, 27.602430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582375, 32.688572, 27.663694>,  <33.710476, 32.888168, 27.700453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582375, 32.688572, 27.663694>,  <33.368870, 32.355911, 27.602430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582375, 32.688572, 27.663694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286319, -0.007316, -0.958107,
		-0.795688, 0.555253, -0.242022,
		0.533762, 0.831650, 0.153158,
		33.742504, 32.938068, 27.709642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142551, 32.704739, 27.056824>,  <33.368870, 32.355911, 27.602430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142551, 32.704739, 27.056824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483299, 32.869358, 27.186409>,  <33.687748, 32.968128, 27.264160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483299, 32.869358, 27.186409>,  <33.142551, 32.704739, 27.056824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483299, 32.869358, 27.186409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337870, 0.040831, -0.940307,
		-0.400209, 0.910473, -0.104267,
		0.851867, 0.411548, 0.323963,
		33.738861, 32.992821, 27.283598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267868, 33.357342, 26.598761>,  <33.142551, 32.704739, 27.056824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267868, 33.357342, 26.598761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612637, 33.216896, 26.745083>,  <33.819496, 33.132629, 26.832876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612637, 33.216896, 26.745083>,  <33.267868, 33.357342, 26.598761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612637, 33.216896, 26.745083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405304, 0.043585, -0.913143,
		0.304677, 0.935316, 0.179876,
		0.861917, -0.351118, 0.365808,
		33.871212, 33.111561, 26.854826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652306, 33.696201, 26.162857>,  <33.267868, 33.357342, 26.598761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652306, 33.696201, 26.162857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891602, 33.432854, 26.345577>,  <34.035179, 33.274845, 26.455210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.891602, 33.432854, 26.345577>,  <33.652306, 33.696201, 26.162857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891602, 33.432854, 26.345577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512698, -0.123632, -0.849621,
		0.615837, 0.742476, 0.263581,
		0.598236, -0.658365, 0.456803,
		34.071072, 33.235344, 26.482618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247002, 34.006611, 26.112488>,  <33.652306, 33.696201, 26.162857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247002, 34.006611, 26.112488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283672, 33.609222, 26.139629>,  <34.305676, 33.370789, 26.155914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283672, 33.609222, 26.139629>,  <34.247002, 34.006611, 26.112488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283672, 33.609222, 26.139629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547760, -0.006595, -0.836610,
		0.831598, 0.113864, 0.543581,
		0.091675, -0.993475, 0.067854,
		34.311176, 33.311180, 26.159986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998959, 33.899975, 25.981085>,  <34.247002, 34.006611, 26.112488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998959, 33.899975, 25.981085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800114, 33.555756, 25.936666>,  <34.680805, 33.349224, 25.910015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800114, 33.555756, 25.936666>,  <34.998959, 33.899975, 25.981085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800114, 33.555756, 25.936666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500393, -0.179773, -0.846929,
		0.708862, -0.476585, 0.519981,
		-0.497113, -0.860551, -0.111046,
		34.650978, 33.297592, 25.903353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434456, 33.366875, 25.740223>,  <34.998959, 33.899975, 25.981085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434456, 33.366875, 25.740223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117825, 33.148476, 25.630470>,  <34.927845, 33.017437, 25.564619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117825, 33.148476, 25.630470>,  <35.434456, 33.366875, 25.740223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117825, 33.148476, 25.630470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493494, -0.306401, -0.813991,
		0.360371, -0.779743, 0.511990,
		-0.791579, -0.546003, -0.274381,
		34.880352, 32.984676, 25.548157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668327, 32.721989, 25.702459>,  <35.434456, 33.366875, 25.740223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668327, 32.721989, 25.702459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335342, 32.703838, 25.481571>,  <35.135551, 32.692947, 25.349039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335342, 32.703838, 25.481571>,  <35.668327, 32.721989, 25.702459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335342, 32.703838, 25.481571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516784, -0.423053, -0.744285,
		-0.199849, -0.904968, 0.375623,
		-0.832463, -0.045372, -0.552220,
		35.085602, 32.690228, 25.315905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650158, 32.072239, 25.382826>,  <35.668327, 32.721989, 25.702459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650158, 32.072239, 25.382826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426548, 32.305222, 25.146780>,  <35.292381, 32.445011, 25.005152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.426548, 32.305222, 25.146780>,  <35.650158, 32.072239, 25.382826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426548, 32.305222, 25.146780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483491, -0.349194, -0.802683,
		-0.673594, -0.734034, -0.086405,
		-0.559024, 0.582458, -0.590114,
		35.258842, 32.479958, 24.969746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676571, 31.718782, 24.668270>,  <35.650158, 32.072239, 25.382826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676571, 31.718782, 24.668270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492775, 32.057877, 24.562281>,  <35.382496, 32.261333, 24.498686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492775, 32.057877, 24.562281>,  <35.676571, 31.718782, 24.668270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492775, 32.057877, 24.562281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535178, 0.026167, -0.844334,
		-0.708837, -0.529775, -0.465712,
		-0.459494, 0.847734, -0.264976,
		35.354927, 32.312199, 24.482788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292332, 31.557903, 24.071301>,  <35.676571, 31.718782, 24.668270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292332, 31.557903, 24.071301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328400, 31.956161, 24.061813>,  <35.350040, 32.195114, 24.056122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328400, 31.956161, 24.061813>,  <35.292332, 31.557903, 24.071301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328400, 31.956161, 24.061813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429626, -0.060372, -0.900987,
		-0.898493, 0.071056, -0.433199,
		0.090174, 0.995644, -0.023717,
		35.355453, 32.254856, 24.054699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941841, 31.891674, 23.424480>,  <35.292332, 31.557903, 24.071301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941841, 31.891674, 23.424480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226089, 32.146324, 23.544296>,  <35.396641, 32.299114, 23.616186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.226089, 32.146324, 23.544296>,  <34.941841, 31.891674, 23.424480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226089, 32.146324, 23.544296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521491, -0.190812, -0.831647,
		-0.472291, 0.747196, -0.467589,
		0.710625, 0.636623, 0.299537,
		35.439278, 32.337311, 23.634157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043961, 32.373512, 22.893164>,  <34.941841, 31.891674, 23.424480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043961, 32.373512, 22.893164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379333, 32.419014, 23.106363>,  <35.580559, 32.446316, 23.234283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.379333, 32.419014, 23.106363>,  <35.043961, 32.373512, 22.893164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379333, 32.419014, 23.106363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544441, -0.130406, -0.828600,
		-0.024748, 0.984914, -0.171268,
		0.838434, 0.113752, 0.533000,
		35.630863, 32.453140, 23.266264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505257, 32.702007, 22.439596>,  <35.043961, 32.373512, 22.893164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505257, 32.702007, 22.439596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763760, 32.557182, 22.708302>,  <35.918861, 32.470287, 22.869526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763760, 32.557182, 22.708302>,  <35.505257, 32.702007, 22.439596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763760, 32.557182, 22.708302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650572, -0.198739, -0.732979,
		0.398889, 0.910722, 0.107111,
		0.646254, -0.362060, 0.671765,
		35.957634, 32.448563, 22.909832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043045, 33.064503, 22.282270>,  <35.505257, 32.702007, 22.439596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043045, 33.064503, 22.282270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202740, 32.759029, 22.485207>,  <36.298557, 32.575745, 22.606968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202740, 32.759029, 22.485207>,  <36.043045, 33.064503, 22.282270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202740, 32.759029, 22.485207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724204, -0.076676, -0.685310,
		0.562263, 0.641017, 0.522453,
		0.399236, -0.763687, 0.507339,
		36.322510, 32.529922, 22.637409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842644, 33.227997, 22.279793>,  <36.043045, 33.064503, 22.282270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842644, 33.227997, 22.279793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780769, 32.836693, 22.335043>,  <36.743645, 32.601910, 22.368193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.780769, 32.836693, 22.335043>,  <36.842644, 33.227997, 22.279793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780769, 32.836693, 22.335043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866821, -0.201467, -0.456105,
		0.474018, 0.049178, 0.879141,
		-0.154687, -0.978260, 0.138128,
		36.734364, 32.543213, 22.376482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495220, 32.983936, 22.538830>,  <36.842644, 33.227997, 22.279793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495220, 32.983936, 22.538830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278328, 32.680214, 22.394917>,  <37.148193, 32.497982, 22.308569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278328, 32.680214, 22.394917>,  <37.495220, 32.983936, 22.538830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278328, 32.680214, 22.394917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812923, -0.365813, -0.453141,
		0.212459, -0.538182, 0.815611,
		-0.542233, -0.759303, -0.359781,
		37.115658, 32.452423, 22.286982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947220, 32.408417, 22.461519>,  <37.495220, 32.983936, 22.538830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947220, 32.408417, 22.461519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636883, 32.275753, 22.246832>,  <37.450680, 32.196156, 22.118019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636883, 32.275753, 22.246832>,  <37.947220, 32.408417, 22.461519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636883, 32.275753, 22.246832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623679, -0.531697, -0.572994,
		-0.095335, -0.779296, 0.619361,
		-0.775845, -0.331656, -0.536720,
		37.404129, 32.176254, 22.085815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139259, 31.686354, 22.461693>,  <37.947220, 32.408417, 22.461519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139259, 31.686354, 22.461693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882092, 31.788076, 22.172699>,  <37.727791, 31.849110, 21.999302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882092, 31.788076, 22.172699>,  <38.139259, 31.686354, 22.461693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882092, 31.788076, 22.172699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573851, -0.464824, -0.674265,
		-0.507300, -0.848095, 0.152908,
		-0.642916, 0.254308, -0.722486,
		37.689217, 31.864368, 21.955954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245083, 31.157064, 21.979389>,  <38.139259, 31.686354, 22.461693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245083, 31.157064, 21.979389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059471, 31.455791, 21.788836>,  <37.948105, 31.635029, 21.674503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059471, 31.455791, 21.788836>,  <38.245083, 31.157064, 21.979389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059471, 31.455791, 21.788836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462003, -0.254814, -0.849484,
		-0.755800, -0.614273, -0.226793,
		-0.464025, 0.746819, -0.476385,
		37.920265, 31.679836, 21.645920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892948, 30.800140, 21.438070>,  <38.245083, 31.157064, 21.979389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892948, 30.800140, 21.438070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962990, 31.183910, 21.349672>,  <38.005016, 31.414173, 21.296635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962990, 31.183910, 21.349672>,  <37.892948, 30.800140, 21.438070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962990, 31.183910, 21.349672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464644, -0.278421, -0.840588,
		-0.868012, 0.044508, -0.494545,
		0.175105, 0.959427, -0.220993,
		38.015522, 31.471739, 21.283375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840889, 30.728331, 20.757990>,  <37.892948, 30.800140, 21.438070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840889, 30.728331, 20.757990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013645, 31.088808, 20.772560>,  <38.117298, 31.305094, 20.781301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.013645, 31.088808, 20.772560>,  <37.840889, 30.728331, 20.757990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013645, 31.088808, 20.772560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564822, -0.238757, -0.789919,
		-0.703171, 0.361730, -0.612129,
		0.431887, 0.901192, 0.036426,
		38.143211, 31.359165, 20.783487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879345, 31.051712, 20.014997>,  <37.840889, 30.728331, 20.757990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879345, 31.051712, 20.014997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152142, 31.248470, 20.231489>,  <38.315819, 31.366526, 20.361383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.152142, 31.248470, 20.231489>,  <37.879345, 31.051712, 20.014997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152142, 31.248470, 20.231489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671629, -0.128313, -0.729692,
		-0.289485, 0.861148, -0.417879,
		0.681992, 0.491894, 0.541227,
		38.356739, 31.396038, 20.393858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047222, 31.559959, 19.694521>,  <37.879345, 31.051712, 20.014997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047222, 31.559959, 19.694521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365852, 31.511545, 19.931440>,  <38.557030, 31.482496, 20.073591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365852, 31.511545, 19.931440>,  <38.047222, 31.559959, 19.694521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365852, 31.511545, 19.931440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592995, -0.034117, -0.804483,
		0.117577, 0.992062, 0.044595,
		0.796576, -0.121034, 0.592299,
		38.604824, 31.475235, 20.109131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524250, 31.940254, 19.398081>,  <38.047222, 31.559959, 19.694521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524250, 31.940254, 19.398081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737164, 31.711153, 19.647438>,  <38.864914, 31.573692, 19.797052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737164, 31.711153, 19.647438>,  <38.524250, 31.940254, 19.398081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737164, 31.711153, 19.647438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716032, -0.088249, -0.692467,
		0.451628, 0.814963, 0.363137,
		0.532288, -0.572755, 0.623395,
		38.896851, 31.539326, 19.834457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275455, 31.944752, 19.063360>,  <38.524250, 31.940254, 19.398081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275455, 31.944752, 19.063360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.304771, 31.652754, 19.335165>,  <39.322361, 31.477554, 19.498247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.304771, 31.652754, 19.335165>,  <39.275455, 31.944752, 19.063360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304771, 31.652754, 19.335165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690055, -0.454799, -0.563012,
		0.720037, 0.510162, 0.470406,
		0.073287, -0.729995, 0.679511,
		39.326759, 31.433756, 19.539019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769352, 32.477364, 19.360212>,  <39.275455, 31.944752, 19.063360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769352, 32.477364, 19.360212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863735, 32.825989, 19.188303>,  <39.920364, 33.035164, 19.085157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863735, 32.825989, 19.188303>,  <39.769352, 32.477364, 19.360212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863735, 32.825989, 19.188303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321509, 0.487374, 0.811849,
		0.917037, -0.053385, 0.395213,
		0.235957, 0.871560, -0.429776,
		39.934521, 33.087456, 19.059370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026409, 32.921322, 19.957579>,  <39.769352, 32.477364, 19.360212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026409, 32.921322, 19.957579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933563, 33.176716, 19.664061>,  <39.877853, 33.329952, 19.487949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.933563, 33.176716, 19.664061>,  <40.026409, 32.921322, 19.957579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933563, 33.176716, 19.664061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494634, 0.572096, 0.654251,
		0.837532, 0.514823, 0.183023,
		-0.232117, 0.638485, -0.733797,
		39.863930, 33.368263, 19.443922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311218, 33.570564, 20.116566>,  <40.026409, 32.921322, 19.957579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311218, 33.570564, 20.116566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988422, 33.644634, 19.892250>,  <39.794746, 33.689075, 19.757660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.988422, 33.644634, 19.892250>,  <40.311218, 33.570564, 20.116566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988422, 33.644634, 19.892250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292175, 0.700037, 0.651599,
		0.513232, 0.689680, -0.510817,
		-0.806986, 0.185173, -0.560789,
		39.746326, 33.700188, 19.724012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140842, 34.293419, 20.190104>,  <40.311218, 33.570564, 20.116566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140842, 34.293419, 20.190104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804955, 34.123837, 20.054377>,  <39.603420, 34.022087, 19.972940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804955, 34.123837, 20.054377>,  <40.140842, 34.293419, 20.190104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804955, 34.123837, 20.054377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540661, 0.710925, 0.449745,
		0.050557, 0.561115, -0.826193,
		-0.839720, -0.423952, -0.339315,
		39.553040, 33.996651, 19.952581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801460, 34.937687, 20.057995>,  <40.140842, 34.293419, 20.190104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801460, 34.937687, 20.057995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.546913, 34.629475, 20.072531>,  <39.394184, 34.444550, 20.081253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.546913, 34.629475, 20.072531>,  <39.801460, 34.937687, 20.057995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546913, 34.629475, 20.072531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585058, 0.512823, 0.628267,
		-0.502732, 0.378550, -0.777149,
		-0.636370, -0.770527, 0.036339,
		39.356003, 34.398315, 20.083433>
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
